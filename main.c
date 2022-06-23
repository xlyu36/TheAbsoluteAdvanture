#include <stdlib.h>
#include <stdio.h>
#include "milestoneLib.h"
#include "game.h"
#include "interrupt.h"

#include "background1.h"
#include "background1CHEAT.h"
#include "background2.h"
#include "background2CHEAT.h"
#include "spritesheet.h"
#include "collisionMap.h"
#include "collisionMap2.h"

#include "backgroundINTRO.h"
#include "backgroundSTART.h"
#include "backgroundINSTRUCTION.h"
#include "backgroundPAUSE.h"
#include "backgroundWIN.h"
#include "backgroundLOSE.h"

#include "openingMusic.h"
#include "gameMusic.h"
#include "winMusic.h"
#include "win.h"
#include "loseMusic.h"
#include "gameOver.h"

// prototypes
void initialize();

// state prototypes
void goToIntro();
void intro();
void goToStart();
void start();
void goToInstruction();
void instruction();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// states
enum {
    INTRO,
    START,
    INSTRUCTION,
    GAME,
    PAUSE,
    WIN,
    LOSE
};

int state;

inline void haltUntilInterrupt(){
    __asm__("swi 0x04 << 15");
}

// buttons
unsigned short buttons;
unsigned short oldButtons;

// random
int seed;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (3.1415926) {
        // update buttons
        oldButtons = buttons;
        buttons = BUTTONS;

        // state machine
        switch (state) {
        case INTRO:
            intro();
            break;
        case START:
            start();
            break;
        case INSTRUCTION:
            instruction();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// sets up GBA
void initialize() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_WIDE | BG_SCREENBLOCK(28) | BG_CHARBLOCK(0) | BG_4BPP;
    REG_BG1CNT = BG_SIZE_SMALL | BG_SCREENBLOCK(27) | BG_CHARBLOCK(0) | BG_4BPP;

    buttons = BUTTONS;
    oldButtons = 0;

    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;

    shadowOAM[0].fill = 256;
    shadowOAM[3].fill = 256;

    setupSounds();
    setupInterrupts();
    //setupTimerInterrupts();

    haltUntilInterrupt();

    goToIntro();
}

void goToIntro() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    // sound
    playSoundA(openingMusic_data, openingMusic_length, 1);

    // set up background
    DMANow(3, backgroundINTROPal, PALETTE, backgroundINTROPalLen / 2);
    DMANow(3, backgroundINTROTiles, &CHARBLOCK[0], backgroundINTROTilesLen / 2);
    DMANow(3, backgroundINTROMap, &SCREENBLOCK[27], backgroundINTROMapLen / 2);
    
    waitForVBlank();
    state = INTRO;
}

void intro() {
    waitForVBlank();

    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;
    iq = 250;

    level = 0;

    // state transitions
    if (BUTTON_PRESSED(BUTTON_START)) { // go to start
        goToStart();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstruction();
    }
}

void goToStart() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
        
    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;
    
    // set up background
    DMANow(3, backgroundSTARTPal, PALETTE, backgroundSTARTPalLen / 2);
    DMANow(3, backgroundSTARTTiles, &CHARBLOCK[0], backgroundSTARTTilesLen / 2);
    DMANow(3, backgroundSTARTMap, &SCREENBLOCK[27], backgroundSTARTMapLen / 2);

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = START;
}

void start() {
    seed++;

    waitForVBlank();

    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;
    life = 1; 
    paused = 0;

    // initialize level
    if (level <= 2) {
        level = 1;
    } else {
        level = 3;
    }
    
    // state transitions
    if (BUTTON_PRESSED(BUTTON_START)) { // go to game
        srand(seed);
        initGame();
        goToGame();

        stopSound();
		playSoundA(gameMusic_data, gameMusic_length, 1);
    }
}

void goToInstruction() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    // set up background
    DMANow(3, backgroundINSTRUCTIONPal, PALETTE, backgroundINSTRUCTIONPalLen / 2);
    DMANow(3, backgroundINSTRUCTIONTiles, &CHARBLOCK[0], backgroundINSTRUCTIONTilesLen / 2);
    DMANow(3, backgroundINSTRUCTIONMap, &SCREENBLOCK[27], backgroundINSTRUCTIONMapLen / 2);
    
    waitForVBlank();
    state = INSTRUCTION;
}

void instruction() {
    waitForVBlank();

    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;

    // state transitions
    if (BUTTON_PRESSED(BUTTON_SELECT)) { // go to start
        goToStart();
    }
}

void goToGame() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_WIDE | BG_SCREENBLOCK(28) | BG_CHARBLOCK(0) | BG_4BPP;

    waitForVBlank();

    // set up background
    if (level <= 2) {
        //level 1
        DMANow(3, background1Pal, PALETTE, background1PalLen / 2);
        DMANow(3, background1Tiles, &CHARBLOCK[0], background1TilesLen / 2);
        DMANow(3, background1Map, &SCREENBLOCK[28], background1MapLen / 2);
    } else {
        DMANow(3, background2Pal, PALETTE, background2PalLen / 2);
        DMANow(3, background2Tiles, &CHARBLOCK[0], background2TilesLen / 2);
        DMANow(3, background2Map, &SCREENBLOCK[28], background2MapLen / 2);
    }
    
    // set up sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = GAME;
}

void game() {
    time++;

    updateGame();
    drawGame();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    // state transitions
    if (BUTTON_PRESSED(BUTTON_SELECT)) { // pause
        goToPause();
        paused = 1;
    }
    if (level == 1) {
        initGame();

        // inactive all objects from level 2
        blockMain.active = 0;
        honey.active = 0;
        noZuoNoDie.active = 0;
        blankBlocksONE.active = 0;
        blankBlocksTWO.active = 0;
        blankBlock1.active = 0;
        blankBlock2.active = 0;
        blankBlock3.active = 0;
        movingCloud1.active = 0;
        movingCloud2.active = 0;
        movingCloud3.active = 0;
        movingCloud4.active = 0;
        rocket.active = 0;


        goToGame();
        COLLISIONMAP = (u8*) collisionMapBitmap;
        level = 2;
    } else if (level == 3) {
        initGame();
        player.worldRow = 88;
        player.worldCol = 72;

        // inactive all objects from level 1
        fish->active = 0;
        block1.active = 0;
        block2.active = 0;
        block3.active = 0;
        guillotine.active = 0;
        brokenGround.active = 0;
        bridge.active = 0;
        cloud.active = 0;

        goToGame();
        COLLISIONMAP = (u8*) collisionMap2Bitmap;
        level = 4;
    } else if (level == 5) { // win
        goToWin();
        level = 1;
    }
    
    if (life == 0) { // lose
        goToLose();
    }
}

void goToPause() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    // set up background
    DMANow(3, backgroundPAUSEPal, PALETTE, backgroundPAUSEPalLen / 2);
    DMANow(3, backgroundPAUSETiles, &CHARBLOCK[0], backgroundPAUSETilesLen / 2);
    DMANow(3, backgroundPAUSEMap, &SCREENBLOCK[27], backgroundPAUSEMapLen / 2); 
    
    waitForVBlank();
    state = PAUSE;
}

void pause() {
    waitForVBlank();

    // state transitions
    if (BUTTON_PRESSED(BUTTON_SELECT)) { // go back to game
        goToGame();
        paused = 0;
    } else if (BUTTON_PRESSED(BUTTON_START)) { // restart the game
        goToStart();
        paused = 0;
    }
}

void goToWin() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    hideSprites();

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;

    // set up background
    DMANow(3, backgroundWINPal, PALETTE, backgroundWINPalLen / 2);
    DMANow(3, backgroundWINTiles, &CHARBLOCK[0], backgroundWINTilesLen / 2);
    DMANow(3, backgroundWINMap, &SCREENBLOCK[27], backgroundWINMapLen / 2);
    
    DMANow(3, shadowOAM, OAM, 128 * 4);


    // sprite -- time
    short time_m_1s = time_m % 10;
    short time_m_10s = time_m / 10;
    short time_s_1s = time_s % 10;
    short time_s_10s = time_s / 10;

    char y = 88;
    char x = 8;
    shadowOAM[27].attr0 = ATTR0_SQUARE | y;
    shadowOAM[27].attr1 = ATTR1_TINY | x;
    shadowOAM[27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_m_10s], 28);

    shadowOAM[28].attr0 = ATTR0_SQUARE | y;
    shadowOAM[28].attr1 = ATTR1_TINY | (x + 8);
    shadowOAM[28].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_m_1s], 28);

    shadowOAM[29].attr0 = ATTR0_SQUARE | y;
    shadowOAM[29].attr1 = ATTR1_TINY | (x + 8 + 8);
    shadowOAM[29].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 28);

    shadowOAM[30].attr0 = ATTR0_SQUARE | y;
    shadowOAM[30].attr1 = ATTR1_TINY | (x + 8 + 8 + 8);
    shadowOAM[30].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_s_10s], 28);

    shadowOAM[31].attr0 = ATTR0_SQUARE | y;
    shadowOAM[31].attr1 = ATTR1_TINY | (x + 8 + 8 + 8 + 8);
    shadowOAM[31].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[time_s_1s], 28);


    // sprite -- score
    char a = 124;
    char b = 8;
        // sign
    if (iq >= 0) {
        shadowOAM[32].attr0 = ATTR0_SQUARE | a;
        shadowOAM[32].attr1 = ATTR1_TINY | b;
        shadowOAM[32].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(12, 28);
    } else {
        shadowOAM[33].attr0 = ATTR0_SQUARE | a;
        shadowOAM[33].attr1 = ATTR1_TINY | b;
        shadowOAM[33].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(11, 28);
    }
        // hundreds
    shadowOAM[34].attr0 = ATTR0_SQUARE | a;
    shadowOAM[34].attr1 = ATTR1_TINY | (b + 8);
    shadowOAM[34].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[hundreds], 28);
        // tens
    shadowOAM[35].attr0 = ATTR0_SQUARE | a;
    shadowOAM[35].attr1 = ATTR1_TINY | (b + 8 + 8);
    shadowOAM[35].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(digit_to_sprite_tile_index[tens], 28);
        // ones
    shadowOAM[36].attr0 = ATTR0_SQUARE | a;
    shadowOAM[36].attr1 = ATTR1_TINY | (b + 8 + 8 + 8);
    shadowOAM[36].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(9, 28);

    DMANow(3, shadowOAM, OAM, 128 * 4);


    // sound
    stopSound();
    playSoundB(win_data, win_length, 0);
	playSoundA(winMusic_data, winMusic_length, 1);

    waitForVBlank();
    state = WIN;
}

void win() {
    waitForVBlank();

    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;

    // state transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToIntro();
    }
}

void goToLose() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    hideSprites();

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;

    // set up background
    DMANow(3, backgroundLOSEPal, PALETTE, backgroundLOSEPalLen / 2);
    DMANow(3, backgroundLOSETiles, &CHARBLOCK[0], backgroundLOSETilesLen / 2);
    DMANow(3, backgroundLOSEMap, &SCREENBLOCK[27], backgroundLOSEMapLen / 2);

    DMANow(3, shadowOAM, OAM, 128 * 4);
    
    // change tile at runtime to draw score
    if (iq >= 0) {
        if (hundreds == 0 && tens == 0){
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 1;
        } else if (hundreds == 0) {
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(15, 8, 32)] = tens + 2;

            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(15, 9, 32)] = tens + 8;
        } else if (tens == 0) {
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(14, 8, 32)] = hundreds + 2;

            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(14, 9, 32)] = hundreds + 8;
        } else {
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(14, 8, 32)] = hundreds + 2;
            SCREENBLOCK[27].tilemap[OFFSET(15, 8, 32)] = tens + 2;

            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(14, 9, 32)] = hundreds + 8;
            SCREENBLOCK[27].tilemap[OFFSET(15, 9, 32)] = tens + 8;
        }
    } else if (iq >= -550) {
        if (hundreds == 0 && tens == 0){
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 1;
        } else if (hundreds == 0) {
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(15, 8, 32)] = tens + 2;

            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 8;
            SCREENBLOCK[27].tilemap[OFFSET(15, 9, 32)] = tens + 8;
        } else if (tens == 0) {
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(14, 8, 32)] = hundreds + 2;

            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 8;
            SCREENBLOCK[27].tilemap[OFFSET(14, 9, 32)] = hundreds + 8;
        } else {
            SCREENBLOCK[27].tilemap[OFFSET(13, 8, 32)] = 1;
            SCREENBLOCK[27].tilemap[OFFSET(14, 8, 32)] = hundreds + 2;
            SCREENBLOCK[27].tilemap[OFFSET(15, 8, 32)] = tens + 2;

            SCREENBLOCK[27].tilemap[OFFSET(13, 9, 32)] = 8;
            SCREENBLOCK[27].tilemap[OFFSET(14, 9, 32)] = hundreds + 8;
            SCREENBLOCK[27].tilemap[OFFSET(15, 9, 32)] = tens + 8;
        }
    } else {
        shadowOAM[26].attr0 = ATTR0_WIDE | (64);
        shadowOAM[26].attr1 = ATTR1_MEDIUM | (108);
        shadowOAM[26].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(0, 30);
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
    
    for (int i = 0; i < 7; i++) {
        SCREENBLOCK[27].tilemap[OFFSET(i, 0, 32)] = 0;
        SCREENBLOCK[27].tilemap[OFFSET(i, 1, 32)] = 0;
    }
    
    // music
    stopSound();
    playSoundB(gameOver_data, gameOver_length, 0);
	playSoundA(loseMusic_data, loseMusic_length, 1);

    waitForVBlank();
    state = LOSE;
}

void lose() {
    waitForVBlank();

    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;

    // state transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
