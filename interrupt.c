#include "milestoneLib.h"
#include "game.h"
#include "interrupt.h"

int time_m, time_s, time_cs;
short digit_to_sprite_tile_index[] = {9, 0, 1, 2, 3, 4, 5, 6, 7, 8};

void displayTime(){
    short time_m_1s = time_m % 10;
    short time_m_10s = time_m / 10;
    short time_s_1s = time_s % 10;
    short time_s_10s = time_s / 10;

    char y = 144;
    char x = 196;

    shadowOAM[40].attr0 = ATTR0_AFFINE | y;
    shadowOAM[40].attr1 = ATTR1_TINY | x;
    shadowOAM[40].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_m_10s], 28);

    shadowOAM[41].attr0 = ATTR0_AFFINE | y;
    shadowOAM[41].attr1 = ATTR1_TINY | (x + 8);
    shadowOAM[41].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_m_1s], 28);

    shadowOAM[42].attr0 = ATTR0_SQUARE | ATTR0_AFFINE | y;
    shadowOAM[42].attr1 = ATTR1_TINY | (x + 8 + 8);
    shadowOAM[42].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 28);

    shadowOAM[43].attr0 = ATTR0_AFFINE | y;
    shadowOAM[43].attr1 = ATTR1_TINY | (x + 8 + 8 + 8);
    shadowOAM[43].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_s_10s], 28);

    shadowOAM[44].attr0 = ATTR0_AFFINE | y;
    shadowOAM[44].attr1 = ATTR1_TINY | (x + 8 + 8 + 8 + 8);
    shadowOAM[44].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_s_1s], 28);
}

void setupSounds() {

    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;
}

void enableTimerInterrupts(void) {
    // enable timer interrupts
    REG_IE |= INT_TM2 | INT_TM3;

    REG_TM2CNT = 0;
    REG_TM2D = (65536 - 16384);
    REG_TM2CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;

    REG_TM3CNT = 0;
    REG_TM3D = (65536 - 60);
    REG_TM3CNT = TM_CASCADE | TIMER_ON | TM_IRQ;
}

void playSoundA( const signed char* sound, int length, int loops) {
    dma[1].cnt = 0;

    int ticks = PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ;

    DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM0CNT = 0;

    REG_TM0D = -ticks;
    REG_TM0CNT = TIMER_ON;

    soundA.data = sound;
    soundA.length = length;
    soundA.loops = loops;
    soundA.frequency = SOUND_FREQ;
    soundA.isPlaying = 1;
    soundA.duration = ((VBLANK_FREQ * length) / soundA.frequency);
    soundA.vBlankCount = 0;
}


void playSoundB( const signed char* sound, int length, int loops) {

    dma[2].cnt = 0;

    int ticks = PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ;

    DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM1CNT = 0;

    REG_TM1D = -ticks;
    REG_TM1CNT = TIMER_ON;

    soundB.data = sound;
    soundB.length = length;
    soundB.loops = loops;
    soundB.frequency = SOUND_FREQ;
    soundB.isPlaying = 1;
    soundB.duration = ((VBLANK_FREQ * length) / soundB.frequency);
    soundB.vBlankCount = 0;
}

void setupInterrupts() {

	REG_IME = 0;

	// interrupt handler
    REG_INTERRUPT = interruptHandler;

    enableTimerInterrupts();

    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;

    REG_IME = 1;
}

void interruptHandler() {

	REG_IME = 0;

    // timer
    if (REG_IF & INT_TM2) {
        time_s++;
        if (time_s > 59) {
        time_s = time_s - 60;
        time_m++;
        }
    }

	if(REG_IF & INT_VBLANK) {
        // timer
        displayTime();
        DMANow(3, shadowOAM, OAM, 32);

        // sound
        if (soundA.isPlaying) {

            // handle soundA
            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = TIMER_OFF;
                }
            }
        }

        if (soundB.isPlaying) {

            // handle soundB
            soundB.vBlankCount = soundB.vBlankCount + 1;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = TIMER_OFF;
                }
            }
		}
		REG_IF = INT_VBLANK;
	}

    // stop timer when start game from fresh
    if (level == 0) {
        REG_TM2CNT = TIMER_OFF;
        REG_TM3CNT = TIMER_OFF;
        time_m = 0;
        time_s = 0;
        REG_TM2CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
        REG_TM3CNT = TM_CASCADE | TIMER_ON | TM_IRQ;
    }

    // pause time when @ PAUSE, START, WIN state
    if (level == 1 || level == 3 || level == 5 || paused == 1) {
        REG_TM2CNT = TIMER_OFF;
        REG_TM3CNT = TIMER_OFF;
    } else {
        REG_TM2CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
        REG_TM3CNT = TM_CASCADE | TIMER_ON | TM_IRQ;
    }

    REG_IF = REG_IF;
	REG_IME = 1;
}

void pauseSound() {

    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;
}

void unpauseSound() {

    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
}

void stopSound() {

    soundA.isPlaying = 0;
    dma[1].cnt = 0;
    REG_TM0CNT = TIMER_OFF;

    soundB.isPlaying = 0;
    dma[2].cnt = 0;
    REG_TM1CNT = TIMER_OFF;
}