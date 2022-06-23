# 1 "interrupt.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "interrupt.c"
# 1 "milestoneLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 62 "milestoneLib.h"
extern volatile unsigned short *videoBuffer;
# 83 "milestoneLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();


typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 152 "milestoneLib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 190 "milestoneLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;






typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 238 "milestoneLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 270 "milestoneLib.h"
typedef void (*ihp)(void);
# 294 "milestoneLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "interrupt.c" 2
# 1 "game.h" 1




typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int active;
    int isJumping;
    int hasJumped;
} OBJECT;

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int active;
} BLOCK;

typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int active;
    int isTouched;
    int forward;
    int backward;
} OTHER;



extern u16 hOff, vOff, playerhOff, screenBlock;
extern u16 life, level, paused, jumpCount;

extern int time;
extern int iq, ones, tens, hundreds;

extern OBJECT player;


extern OBJECT fish[3];
extern BLOCK block1, block2, block3;
extern OTHER guillotine;
extern OTHER winFlame;
extern OTHER bridge;
extern OTHER cloud;
extern OTHER brokenGround;



extern BLOCK blockMain, noZuoNoDie, blankBlocksONE, blankBlocksTWO, blankBlock1, blankBlock2, blankBlock3;
extern OBJECT honey, rocket;
extern OTHER movingCloud1, movingCloud2, movingCloud3, movingCloud4;
extern u8* COLLISIONMAP;

enum {SPRITELEFT, SPRITERIGHT, SPRITEIDLE};


void initGame();
void updateGame();
void drawGame();

void initPlayer();
void updatePlayer();
void drawPlayer();


void initFish();
void updateFish(OBJECT *);
void drawFish();

void initBlock1();
void updateBlock1();
void drawBlock1();

void initBlock2();
void updateBlock2();
void drawBlock2();

void initBlock3();
void updateBlock3();
void drawBlock3();

void initBrokenGround();
void updateBrokenGround();
void drawBrokenGround();

void initGuillotine();
void updateGuillotine();
void drawGuillotine();

void initWinFlame();
void updateWinFlame();
void drawWinFlame();

void initBridge();
void updateBridge();
void drawBridge();

void initCloud();
void updateCloud();
void drawCloud();


void initBlockMain();
void updateBlockMain();
void drawBlockMain();

void initHoney();
void updateHoney();
void drawHoney();

void initNoZuoNoDie();
void updateNoZuoNoDie();
void drawNoZuoNoDie();

void initBlankBlocksONE();
void updateBlankBlocksONE();
void drawBlankBlocksONE();

void initBlankBlocksTWO();
void updateBlankBlocksTWO();
void drawBlankBlocksTWO();

void initBlankBlock1();
void updateBlankBlock1();
void drawBlankBlock1();

void initBlankBlock2();
void updateBlankBlock2();
void drawBlankBlock2();

void initBlankBlock3();
void updateBlankBlock3();
void drawBlankBlock3();

void initMovingCloud1();
void updateMovingCloud1();
void drawMovingCloud1();

void initMovingCloud2();
void updateMovingCloud2();
void drawMovingCloud2();

void initMovingCloud3();
void updateMovingCloud3();
void drawMovingCloud3();

void initMovingCloud4();
void updateMovingCloud4(int time);
void drawMovingCloud4();

void initRocket();
void updateRocket(int time);
void drawRocket();
# 3 "interrupt.c" 2
# 1 "interrupt.h" 1
extern int time_m, time_s, time_cs;
extern short digit_to_sprite_tile_index[];

extern short time_m_1s;
extern short time_m_10s;
extern short time_s_1s;
extern short time_s_10s;
extern short time_cs_1s;
extern short time_cs_10s;

extern char y;
extern char x;

void setupSounds();
void enableTimerInterrupts();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 63 "interrupt.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 4 "interrupt.c" 2

int time_m, time_s, time_cs;
short digit_to_sprite_tile_index[] = {9, 0, 1, 2, 3, 4, 5, 6, 7, 8};

void displayTime(){
    short time_m_1s = time_m % 10;
    short time_m_10s = time_m / 10;
    short time_s_1s = time_s % 10;
    short time_s_10s = time_s / 10;

    char y = 144;
    char x = 196;

    shadowOAM[40].attr0 = (1<<8) | y;
    shadowOAM[40].attr1 = (0<<14) | x;
    shadowOAM[40].attr2 = ((0)<<12) | ((28)*32+(digit_to_sprite_tile_index[time_m_10s]));

    shadowOAM[41].attr0 = (1<<8) | y;
    shadowOAM[41].attr1 = (0<<14) | (x + 8);
    shadowOAM[41].attr2 = ((0)<<12) | ((28)*32+(digit_to_sprite_tile_index[time_m_1s]));

    shadowOAM[42].attr0 = (0<<14) | (1<<8) | y;
    shadowOAM[42].attr1 = (0<<14) | (x + 8 + 8);
    shadowOAM[42].attr2 = ((0)<<12) | ((28)*32+(10));

    shadowOAM[43].attr0 = (1<<8) | y;
    shadowOAM[43].attr1 = (0<<14) | (x + 8 + 8 + 8);
    shadowOAM[43].attr2 = ((0)<<12) | ((28)*32+(digit_to_sprite_tile_index[time_s_10s]));

    shadowOAM[44].attr0 = (1<<8) | y;
    shadowOAM[44].attr1 = (0<<14) | (x + 8 + 8 + 8 + 8);
    shadowOAM[44].attr2 = ((0)<<12) | ((28)*32+(digit_to_sprite_tile_index[time_s_1s]));
}

void setupSounds() {

    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}

void enableTimerInterrupts(void) {

    *(unsigned short*)0x4000200 |= 1<<5 | 1<<6;

    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x4000108 = (65536 - 16384);
    *(volatile unsigned short*)0x400010A = 3 | (1<<7) | (1<<6);

    *(volatile unsigned short*)0x400010E = 0;
    *(volatile unsigned short*)0x400010C = (65536 - 60);
    *(volatile unsigned short*)0x400010E = (1<<2) | (1<<7) | (1<<6);
}

void playSoundA( const signed char* sound, int length, int loops) {
    dma[1].cnt = 0;

    int ticks = (16777216) / 11025;

    DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000102 = 0;

    *(volatile unsigned short*)0x4000100 = -ticks;
    *(volatile unsigned short*)0x4000102 = (1<<7);

    soundA.data = sound;
    soundA.length = length;
    soundA.loops = loops;
    soundA.frequency = 11025;
    soundA.isPlaying = 1;
    soundA.duration = (((59.727) * length) / soundA.frequency);
    soundA.vBlankCount = 0;
}


void playSoundB( const signed char* sound, int length, int loops) {

    dma[2].cnt = 0;

    int ticks = (16777216) / 11025;

    DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000106 = 0;

    *(volatile unsigned short*)0x4000104 = -ticks;
    *(volatile unsigned short*)0x4000106 = (1<<7);

    soundB.data = sound;
    soundB.length = length;
    soundB.loops = loops;
    soundB.frequency = 11025;
    soundB.isPlaying = 1;
    soundB.duration = (((59.727) * length) / soundB.frequency);
    soundB.vBlankCount = 0;
}

void setupInterrupts() {

 *(unsigned short*)0x4000208 = 0;


    *((ihp*)0x03007FFC) = interruptHandler;

    enableTimerInterrupts();

    *(unsigned short*)0x4000200 |= 1 << 0;
    *(unsigned short*)0x4000004 |= 1 << 3;

    *(unsigned short*)0x4000208 = 1;
}

void interruptHandler() {

 *(unsigned short*)0x4000208 = 0;


    if (*(volatile unsigned short*)0x4000202 & 1<<5) {
        time_s++;
        if (time_s > 59) {
        time_s = time_s - 60;
        time_m++;
        }
    }

 if(*(volatile unsigned short*)0x4000202 & 1 << 0) {

        displayTime();
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 32);


        if (soundA.isPlaying) {


            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    *(volatile unsigned short*)0x4000102 = (0<<7);
                }
            }
        }

        if (soundB.isPlaying) {


            soundB.vBlankCount = soundB.vBlankCount + 1;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    *(volatile unsigned short*)0x4000106 = (0<<7);
                }
            }
  }
  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }


    if (level == 0) {
        *(volatile unsigned short*)0x400010A = (0<<7);
        *(volatile unsigned short*)0x400010E = (0<<7);
        time_m = 0;
        time_s = 0;
        *(volatile unsigned short*)0x400010A = 3 | (1<<7) | (1<<6);
        *(volatile unsigned short*)0x400010E = (1<<2) | (1<<7) | (1<<6);
    }


    if (level == 1 || level == 3 || level == 5 || paused == 1) {
        *(volatile unsigned short*)0x400010A = (0<<7);
        *(volatile unsigned short*)0x400010E = (0<<7);
    } else {
        *(volatile unsigned short*)0x400010A = 3 | (1<<7) | (1<<6);
        *(volatile unsigned short*)0x400010E = (1<<2) | (1<<7) | (1<<6);
    }

    *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;
 *(unsigned short*)0x4000208 = 1;
}

void pauseSound() {

    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    *(volatile unsigned short*)0x4000102 = (0<<7);
    *(volatile unsigned short*)0x4000106 = (0<<7);
}

void unpauseSound() {

    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    *(volatile unsigned short*)0x4000102 = (1<<7);
    *(volatile unsigned short*)0x4000106 = (1<<7);
}

void stopSound() {

    soundA.isPlaying = 0;
    dma[1].cnt = 0;
    *(volatile unsigned short*)0x4000102 = (0<<7);

    soundB.isPlaying = 0;
    dma[2].cnt = 0;
    *(volatile unsigned short*)0x4000106 = (0<<7);
}
