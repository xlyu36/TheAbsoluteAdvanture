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

#include "jump.h"

// variables
u16 hOff;
u16 vOff;
u16 playerhOff;
u16 screenBlock;

u16 life = 1;
u16 level = 0;
u16 paused = 0;
u16 jumpCount;

int time;

int iq = 250;
int ones;
int tens;
int hundreds;

OBJECT player;

// level 1
OBJECT fish[FISHCOUNT];
BLOCK block1;
BLOCK block2;
BLOCK block3;
OTHER guillotine;
OTHER brokenGround;
OTHER bridge;
OTHER cloud;
OTHER winFlame;

// level 2
BLOCK blockMain;
BLOCK noZuoNoDie;
BLOCK blankBlocksONE;
BLOCK blankBlocksTWO;
BLOCK blankBlock1;
BLOCK blankBlock2;
BLOCK blankBlock3;
OBJECT honey;
OTHER movingCloud1;
OTHER movingCloud2;
OTHER movingCloud3;
OTHER movingCloud4;
OBJECT rocket;


// collision map
u8* COLLISIONMAP;

// initialize the game
void initGame() {
    hOff = 0;
    vOff = 0;
    playerhOff = 0;
    screenBlock = 28;
    jumpCount = 0;

    // initialize time counter
    time = 0;

    //IQ
    if (iq > 0) {
        ones = 0;
        tens = (iq / 10) % 10;
        hundreds = (iq / 10) / 10;
    } else {
        ones = 0;
        tens = (-iq / 10) % 10;
        hundreds = (-iq / 10) / 10;
    }


    initPlayer();

    // level 1
    initBlock1();
    initBlock2();
    initBlock3();
    initGuillotine();
    initBrokenGround();
    initBridge();
    initFish();
    initCloud();
    initWinFlame();

    // level 2
    initBlockMain();
    initHoney();
    initNoZuoNoDie();
    initBlankBlocksONE();
    initBlankBlocksTWO();
    initBlankBlock1();
    initBlankBlock2();
    initBlankBlock3();
    initMovingCloud1();
    initMovingCloud2();
    initMovingCloud3();
    initMovingCloud4();
    initRocket();

}

void updateGame() {

    if (BUTTON_PRESSED(BUTTON_A)) {
        if (level <= 2) {
            DMANow(3, background1CHEATPal, PALETTE, background1CHEATPalLen / 2);
            DMANow(3, background1CHEATTiles, &CHARBLOCK[0], background1CHEATTilesLen / 2);
            DMANow(3, background1CHEATMap, &SCREENBLOCK[28], background1CHEATMapLen / 2);
        } else {
            DMANow(3, background2CHEATPal, PALETTE, background2CHEATPalLen / 2);
            DMANow(3, background2CHEATTiles, &CHARBLOCK[0], background2CHEATTilesLen / 2);
            DMANow(3, background2CHEATMap, &SCREENBLOCK[28], background2CHEATMapLen / 2);
        }
    }

    updatePlayer();

    // level 1
    updateBlock1();
    updateBlock2();
    updateBlock3();
    updateGuillotine();
    updateBrokenGround();
    updateBridge();
    for (int i = 0; i < FISHCOUNT; i++) {
        updateFish(&fish[i]);
    }
    updateCloud();
    updateWinFlame();

    // level 2
    updateBlockMain();
    updateHoney();
    updateNoZuoNoDie();
    updateBlankBlocksONE();
    updateBlankBlocksTWO();
    updateBlankBlock1();
    updateBlankBlock2();
    updateBlankBlock3();
    updateMovingCloud1();
    updateMovingCloud2();
    updateMovingCloud3();
    updateMovingCloud4(time);
    updateRocket(time);
}

void drawGame() {
    drawPlayer();

    // level 1
    drawBlock1();
    drawBlock2();
    drawBlock3();
    drawGuillotine();
    drawBrokenGround();
    drawBridge();
    for (int i = 0; i < FISHCOUNT; i++) {
        drawFish();
    }
    drawCloud();
    drawWinFlame();

    // level 2
    drawBlockMain();
    drawHoney();
    drawNoZuoNoDie();
    drawBlankBlocksONE();
    drawBlankBlocksTWO();
    drawBlankBlock1();
    drawBlankBlock2();
    drawBlankBlock3();
    drawMovingCloud1();
    drawMovingCloud2();
    drawMovingCloud3();
    drawMovingCloud4();
    drawRocket();

}

// player
void initPlayer() {
    player.worldRow = 88;
    player.worldCol = 10;
    player.rdel = 2;
    player.cdel = 1;
    player.width = 16;
    player.height = 24;
    player.aniCounter = 0;
    player.aniState = SPRITERIGHT;
    player.curFrame = 0;
    player.numFrames = 3;
    player.isJumping = 0;
    player.hasJumped = 0; // player has not jumped
}
void updatePlayer() {
    // store prev anistate and clear it
    if (player.aniState != SPRITEIDLE) {
        player.prevAniState = player.aniState;
        player.aniState = SPRITEIDLE;
    }
    if (player.aniCounter % 5 == 0) {
        player.curFrame++;
        if (player.curFrame == player.numFrames) {
            player.curFrame = 0;
        }
    }

    // player walks left
    if(BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = SPRITELEFT;
        if (player.worldCol > 0 
                && COLLISIONMAP[OFFSET(player.worldCol - 1, player.worldRow, MAPWIDTH)] != 0 // top-left corner
                && COLLISIONMAP[OFFSET(player.worldCol - 1, player.worldRow + player.height / 2, MAPWIDTH)] != 0 // middle-left corner
                && COLLISIONMAP[OFFSET(player.worldCol - 1, player.worldRow + player.height - 1, MAPWIDTH)] != 0) { // bottom-left corner
            player.worldCol -= player.cdel;
        }
        if (screenBlock >= 28 && hOff > 0 && (player.worldCol - playerhOff) < (SCREENWIDTH / 2)) {
            hOff -= player.cdel;
            playerhOff -= player.cdel;
        }
    }

    // player walks right
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = SPRITERIGHT;

        if ((player.worldCol + player.width) < MAPWIDTH
                && COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow, MAPWIDTH)] != 0 // top-right corner
                && COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow + player.height / 2, MAPWIDTH)] != 0 // middle-right corner
                && COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow + player.height - 1, MAPWIDTH)] != 0) { // bottom-right corner
                //&& COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow + player.height - 1, MAPWIDTH)]) {
                //&& collisionCheck(collisionMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, player.cdel, 0)) {
            player.worldCol += player.cdel;
        }
        if (screenBlock < 31 && (hOff < (MAPWIDTH - SCREENWIDTH)) && (player.worldCol - playerhOff) > (SCREENWIDTH / 2)) {
            hOff += player.cdel;
            playerhOff += player.cdel;
        }
    }

    // player jumps
    if (BUTTON_PRESSED(BUTTON_UP)
            && COLLISIONMAP[OFFSET(player.worldCol + player.width / 2, player.worldRow + player.height, MAPWIDTH)] != 1) {
        player.isJumping = 1; // player is jumping
    }
    if (player.isJumping) { // isJumping == 1
        if ((jumpCount < 35 && player.worldRow > 0)
                && COLLISIONMAP[OFFSET(player.worldCol, player.worldRow - 1, MAPWIDTH)] != 0 // left-top corner
                && COLLISIONMAP[OFFSET(player.worldCol + player.width - 1, player.worldRow - 1, MAPWIDTH)] != 0 // right-top corner
                && COLLISIONMAP[OFFSET(player.worldCol + player.width / 2, player.worldRow - 1, MAPWIDTH)] != 0) { // middle-top corner
            player.worldRow -= player.rdel;
            jumpCount++;
        } else {
            player.isJumping = 0;
            jumpCount = 0;
        }
    } else { // isJumping == 0
        if (COLLISIONMAP[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] != 0 // left-bottom corner
                && COLLISIONMAP[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height - 1 + player.rdel, MAPWIDTH)] != 0 // middle-bottom corner
                && COLLISIONMAP[OFFSET(player.worldCol+ player.width / 2, player.worldRow + player.height - 1 + player.rdel, MAPWIDTH)] != 0) { // right-bottom corner
            player.worldRow += player.rdel;
        } else {
            player.hasJumped = 0;
        }
        if (player.worldRow > 135) {
            life = 0;
            iq -= 50;
        }
    }

    // check if player's state has chanegd
    if (player.aniState == SPRITEIDLE) {
        player.curFrame = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }

// ????????????????????????????????????????????????????????????????????????????????????????????????
    // when hOff > 256, increment screenBlock & reset hOff
    if (hOff > 256) {
        screenBlock++;
        hOff -= 256;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_4BPP;
    } else if (hOff < 0) {
        screenBlock--;
        hOff += 256;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_4BPP;
    }
// ????????????????????????????????????????????????????????????????????????????????????????????????

    if (playerhOff > 512) {
        playerhOff -= 512;
    } else if (playerhOff < 0) {
        playerhOff += 512;
    }

    REG_BG0HOFF = hOff;

    // player & grass collision
    if (COLLISIONMAP[OFFSET(player.worldCol - 1, player.worldRow, MAPWIDTH)] == 2 // top-left corner
            || COLLISIONMAP[OFFSET(player.worldCol - 1, player.worldRow + player.height / 2, MAPWIDTH)] == 2 // middle-left corner
            || COLLISIONMAP[OFFSET(player.worldCol - 1, player.worldRow + player.height - 1, MAPWIDTH)] == 2 // bottom-left corner
            || COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow, MAPWIDTH)] == 2 // top-right corner
            || COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow + player.height / 2, MAPWIDTH)] == 2 // middle-right corner
            || COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow + player.height - 1, MAPWIDTH)] == 2 // bottom-right corner
            || COLLISIONMAP[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, MAPWIDTH)] == 2 // left-bottom corner
            || COLLISIONMAP[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height - 1 + player.rdel, MAPWIDTH)] == 2 // middle-bottom corner
            || COLLISIONMAP[OFFSET(player.worldCol+ player.width / 2, player.worldRow + player.height - 1 + player.rdel, MAPWIDTH)] == 2) { // right-bottom corner
        life = 0; // player die
        iq -= 50;
    }
}
void drawPlayer() {
    shadowOAM[0].attr0 = ATTR0_TALL | ((player.worldRow - vOff) & ROWMASK);
    shadowOAM[0].attr1 = ATTR1_MEDIUM | ((player.worldCol - playerhOff) & COLMASK);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 4);
}


// ------------------------------------------------- LEVEL 1 -------------------------------------------------
// block 
void initBlock1() {
    block1.worldCol = 296;
    block1.worldRow = 56;
    block1.width = 16;
    block1.height = 16;
    block1.active = 1;
}
void updateBlock1() {
    // player & block1 collision from bottom
    if (block1.active 
            && player.worldCol <= (block1.worldCol + 16) && player.worldCol >= (block1.worldCol - 16) && (block1.worldRow + block1.height) == player.worldRow) {
            //COLLISIONMAP[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 2) {
        block1.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }

    // player & block1 collision from top
    if (block1.active 
            && player.worldCol <= (block1.worldCol + 16) && player.worldCol >= (block1.worldCol - 16) && (block1.worldRow - player.height) == player.worldRow) {
            //&& collision(player.worldCol, player.worldRow, player.width, player.height, block.worldCol, block.worldRow, block.width, block.height)) {
        block1.active = 0;
    }
}
void drawBlock1() {
    if (block1.active) {
        shadowOAM[1].attr0 = ATTR0_SQUARE | ((block1.worldRow - vOff) & ROWMASK);
	    shadowOAM[1].attr1 = ATTR1_SMALL | ((block1.worldCol - playerhOff) & COLMASK);
	    shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);
    } else {
        shadowOAM[1].attr0 = ATTR0_HIDE;
    }
}

// guillotine
void initGuillotine() {
    guillotine.worldCol = 404;
    guillotine.worldRow = 26;
    guillotine.cdel = 0;
    guillotine.rdel = 2;
    guillotine.width = 64;
    guillotine.height = 16;
    guillotine.active = 0;
}
void updateGuillotine() {
    // if player is under guillotine, make it active
    if (COLLISIONMAP[OFFSET(player.worldCol + player.width, player.worldRow, MAPWIDTH)] == 3) {
        guillotine.active = 1;
    }
    // fire guillotine if player is under it
    if (guillotine.active && guillotine.worldRow < 96) {
        guillotine.worldRow += guillotine.rdel;
    } else {
        guillotine.active = 0;
    }

    // player & guillotine collision
    if (guillotine.active
            && collision(player.worldCol, player.worldRow, player.width, player.height, guillotine.worldCol, guillotine.worldRow, guillotine.width, guillotine.height)) {
        life = 0; //die
        iq -= 50;
    }
}
void drawGuillotine() {
    shadowOAM[2].attr0 = ATTR0_WIDE | ((guillotine.worldRow - vOff) & ROWMASK);
    shadowOAM[2].attr1 = ATTR1_LARGE | ((guillotine.worldCol - playerhOff) & COLMASK);
    shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 0);
    if (screenBlock > 29 || level > 2) { // hide sprite after used
        shadowOAM[2].attr0 = ATTR0_HIDE;
    }
}

// broken ground 1
void initBrokenGround() {
    brokenGround.worldRow = 112;
    brokenGround.worldCol = 568;
    brokenGround.width = 32;
    brokenGround.height = 64;
    brokenGround.active = 1;
}
void updateBrokenGround() {
    // player & broken ground 1 collision
    if (collision(player.worldCol, player.worldRow + 8, player.width, player.height, brokenGround.worldCol, brokenGround.worldRow, brokenGround.width, brokenGround.height)) {
        brokenGround.active = 0;
    }
}
void drawBrokenGround() {
    if (brokenGround.active && screenBlock == 29) {
        shadowOAM[3].attr0 = ATTR0_TALL | ((brokenGround.worldRow - vOff) & ROWMASK);
        shadowOAM[3].attr1 = ATTR1_LARGE | ((brokenGround.worldCol - playerhOff) & COLMASK);
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 0);
    } else {
        shadowOAM[3].attr0 = ATTR0_HIDE;
    }
}

// bridge
void initBridge() {
    bridge.worldRow = 88;
    bridge.worldCol = 656;
    bridge.width = 32;
    bridge.height = 32;
    bridge.active = 1;
}
void updateBridge() {
    // player & bridge collision
    if (collision(player.worldCol - 8, player.worldRow, player.width, player.height, bridge.worldCol, bridge.worldRow, bridge.width, bridge.height)) {
        bridge.active = 0;
    }
}
void drawBridge() {
    if (bridge.active && (screenBlock == 29 || screenBlock == 30)) {
        shadowOAM[4].attr0 = ATTR0_SQUARE | ((bridge.worldRow - vOff) & ROWMASK);
        shadowOAM[4].attr1 = ATTR1_MEDIUM | ((bridge.worldCol - playerhOff) & COLMASK);
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 0);
    } else {
        shadowOAM[4].attr0 = ATTR0_HIDE;
    }
}

// fish
void initFish() {
    for (int i = 0; i < FISHCOUNT; i++) {
        fish[i].worldRow = 160;
        fish[i].worldCol = 632 + i*16;
        fish[i].rdel = 2;
        fish[i].cdel = 0;
        fish[i].width = 8;
        fish[i].height = 16;
        fish[i].aniCounter = 0;
        fish[i].curFrame = 0;
        fish[i].numFrames = 2;
        fish[i].active = 0;
        fish[i].isJumping = 1;
    }
}
void updateFish(OBJECT* f) {
    if (f->active) {
        if (f->aniCounter % 20 == 0) {
            f->curFrame++;
            if (f->curFrame == f->numFrames) {
                f->curFrame = 0;
            }
        }
        f->aniCounter++;
    }

    if (COLLISIONMAP[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height - 1, MAPWIDTH)] == 4) {
        f->active = 1;
    }

    // fire fish
    if (f->active && f->isJumping) {
        if (f->worldRow > 19) {
            f->worldRow -= f->rdel;
        } else {
            f->isJumping = 0; // fish stops jumping, starts falling
        }
    } else if (f->active && !f->isJumping) {
        f->worldRow += f->rdel;
        if (f->worldRow > 159) {
            f->active = 0;
        }
    }    

    // player & fish collision
    if (collision(player.worldCol, player.worldRow, player.width, player.height, f->worldCol, f->worldRow, f->width, f->height)) {
        f->active = 0;
        life = 0; // die
        iq -= 50;
    }

}
void drawFish() {
    for (int i = 0; i < FISHCOUNT ; i++) {
        if (fish[i].active) {
            shadowOAM[i + 5].attr0 = ATTR0_TALL | ((fish[i].worldRow - vOff) & ROWMASK);
            shadowOAM[i + 5].attr1 = ATTR1_TINY| ((fish[i].worldCol - playerhOff) & COLMASK);
            shadowOAM[i + 5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(22, fish[i].curFrame * 2);
        } else {
            shadowOAM[i + 5].attr0 = ATTR0_HIDE;
        }  
    }
}

// block 2
void initBlock2() {
    block2.worldCol = 800;
    block2.worldRow = 56;
    block2.width = 16;
    block2.height = 16;
    block2.active = 0;
}
void updateBlock2() {
    if (level < 3
            && collision(player.worldCol, player.worldRow - 2, player.width, player.height + 4, block2.worldCol, block2.worldRow, block2.width, block2.height)) {
        block2.active = 1;
    }
    // sound
    if (block2.active 
            && player.worldCol <= (block2.worldCol + 16) && player.worldCol >= (block2.worldCol - 16) && (block2.worldRow + block2.height) == player.worldRow) {
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlock2() {
    if (block2.active) {
        shadowOAM[8].attr0 = ATTR0_SQUARE | ((block2.worldRow - vOff) & ROWMASK);
	    shadowOAM[8].attr1 = ATTR1_SMALL | ((block2.worldCol - playerhOff) & COLMASK);
	    shadowOAM[8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);
    } else {
        shadowOAM[8].attr0 = ATTR0_HIDE;
    }
}

// block 3
void initBlock3() {
    block3.worldCol = 816;
    block3.worldRow = 56;
    block3.width = 16;
    block3.height = 16;
    block3.active = 0;
}
void updateBlock3() {
    if (level < 3
            && collision(player.worldCol, player.worldRow - 2, player.width, player.height + 4, block3.worldCol, block3.worldRow, block3.width, block3.height)) {
        block3.active = 1;
    }
    // sound
    if (block3.active 
            && player.worldCol <= (block3.worldCol + 16) && player.worldCol >= (block3.worldCol - 16) && (block3.worldRow + block3.height) == player.worldRow) {
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlock3() {
    if (block3.active) {
        shadowOAM[9].attr0 = ATTR0_SQUARE | ((block3.worldRow - vOff) & ROWMASK);
	    shadowOAM[9].attr1 = ATTR1_SMALL | ((block3.worldCol - playerhOff) & COLMASK);
	    shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);
    } else {
        shadowOAM[9].attr0 = ATTR0_HIDE;
    }
}

// cloud
void initCloud() {
    cloud.worldRow = -4;
    cloud.worldCol = 832;
    cloud.width = 64;
    cloud.height = 32;
    cloud.active = 0;
}
void updateCloud() {
    if (level < 3
            && collision(player.worldCol, player.worldRow - 2, player.width, player.height + 4, cloud.worldCol, cloud.worldRow, cloud.width, cloud.height)) {
        cloud.active = 1;
        playSoundB(jump_data, jump_length, 0);
    }
    if (cloud.active && player.worldCol > 840) {
        player.cdel = 0;
    } else {
        player.cdel = 1;
    }
}
void drawCloud() {
    if (cloud.active) {
        shadowOAM[10].attr0 = ATTR0_WIDE | ((cloud.worldRow - vOff) & ROWMASK);
	    shadowOAM[10].attr1 = ATTR1_LARGE | ((cloud.worldCol - playerhOff) & COLMASK);
	    shadowOAM[10].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(0, 12);
    } else {
        shadowOAM[10].attr0 = ATTR0_HIDE;
    }
}

// winning flame
void initWinFlame() {
    winFlame.worldRow = 80;
    winFlame.worldCol = 960;
    winFlame.width = 16;
    winFlame.height = 32;
}
void updateWinFlame() {
    if (collision(player.worldCol, player.worldRow, player.width, player.height, winFlame.worldCol, winFlame.worldRow, winFlame.width, winFlame.height)) {
        level++;
    }
}
void drawWinFlame() {
    if (screenBlock > 29) {
        shadowOAM[11].attr0 = ATTR0_TALL | ((winFlame.worldRow - vOff) & ROWMASK);
	    shadowOAM[11].attr1 = ATTR1_MEDIUM | ((winFlame.worldCol - playerhOff) & COLMASK);
	    shadowOAM[11].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(24, 0);
    } else {
        shadowOAM[11].attr0 = ATTR0_HIDE;
    }
}


// ------------------------------------------------- LEVEL 2 -------------------------------------------------
// the middle mystery block 
void initBlockMain() {
    blockMain.worldCol = 128;
    blockMain.worldRow = 56;
    blockMain.width = 16;
    blockMain.height = 16;
    blockMain.active = 1;
}
void updateBlockMain() {
    if (blockMain.active 
            && player.worldCol <= (blockMain.worldCol + 8) && player.worldCol >= (blockMain.worldCol - 8) && (blockMain.worldRow + blockMain.height) == player.worldRow) {
        // a line of blocks appear
        noZuoNoDie.active = 1;
        blankBlocksONE.active = 1;
        blankBlocksTWO.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }
    // flower comes out
    if (blockMain.active 
            && player.worldCol <= (blockMain.worldCol + 16) && player.worldCol >= (blockMain.worldCol - 20) && (blockMain.worldRow - player.height) == player.worldRow) {
        honey.active = 1;
    }
    // sound
    if (blockMain.active 
            && player.worldCol <= (blockMain.worldCol + 16) && player.worldCol >= (blockMain.worldCol - 16) && (blockMain.worldRow + blockMain.height) == player.worldRow) {
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlockMain() {
    if (blockMain.active && screenBlock < 29) {
        shadowOAM[12].attr0 = ATTR0_SQUARE | ((blockMain.worldRow - vOff) & ROWMASK);
	    shadowOAM[12].attr1 = ATTR1_SMALL | ((blockMain.worldCol - playerhOff) & COLMASK);
	    shadowOAM[12].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);

        // draw big chimney
        shadowOAM[16].attr0 = ATTR0_SQUARE | ((56 - vOff) & ROWMASK);
        shadowOAM[16].attr1 = ATTR1_LARGE | ((192 - playerhOff) & COLMASK);
        shadowOAM[16].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 20);
    } else {
        shadowOAM[12].attr0 = ATTR0_HIDE;
        shadowOAM[16].attr0 = ATTR0_HIDE;
    }
}

// honey
void initHoney() {
    honey.worldCol = 128;
    honey.worldRow = 56;
    honey.rdel = 1;
    honey.cdel = 0;
    honey.width = 16;
    honey.height = 16;
    honey.aniCounter = 0;
    honey.curFrame = 0;
    honey.numFrames = 2;
    honey.active = 0;
}
void updateHoney() {
    if (honey.active) {
        if (honey.aniCounter % 20 == 0) {
            honey.curFrame++;
            if (honey.curFrame == honey.numFrames) {
                honey.curFrame = 0;
            }
        }
        honey.aniCounter++;
    }
    

    // flower moves up and stops
    if (honey.aniCounter < 200) {
        if (honey.active && (honey.worldRow > 40)) {
            honey.worldRow -= honey.rdel;
        }
    } else {
        if (honey.worldRow < 56) {
            honey.worldRow += honey.rdel;
        }
    }

    // flower & player collision
    if (honey.active
            && collision(player.worldCol, player.worldRow, player.width, player.height, honey.worldCol, honey.worldRow, honey.width, honey.height)) {
        life = 0; //die
        iq -= 50;
    }
}
void drawHoney() {
    if (honey.active && screenBlock < 29) {
        shadowOAM[13].attr0 = ATTR0_SQUARE | ((honey.worldRow - vOff) & ROWMASK);
        shadowOAM[13].attr1 = ATTR1_SMALL | ((honey.worldCol - playerhOff) & COLMASK);
        shadowOAM[13].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(26 + honey.curFrame * 2, 0);
    } else {
        shadowOAM[13].attr0 = ATTR0_HIDE;
    }
    
}

// no zuo no die x 4
void initNoZuoNoDie() {
    noZuoNoDie.worldCol = 32;
    noZuoNoDie.worldRow = 56;
    noZuoNoDie.width = 64;
    noZuoNoDie.height = 16;
    noZuoNoDie.active = 0;
}
void updateNoZuoNoDie() {
    if (noZuoNoDie.active 
            && player.worldCol <= (noZuoNoDie.worldCol + 64) && player.worldCol >= (noZuoNoDie.worldCol - 16) && (noZuoNoDie.worldRow + noZuoNoDie.height) == player.worldRow) {
        noZuoNoDie.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }

}
void drawNoZuoNoDie() {
    if (noZuoNoDie.active) {
        shadowOAM[14].attr0 = ATTR0_WIDE | ((noZuoNoDie.worldRow - vOff) & ROWMASK);
        shadowOAM[14].attr1 = ATTR1_LARGE | ((noZuoNoDie.worldCol - playerhOff) & COLMASK);
        shadowOAM[14].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 16);
    } else {
        shadowOAM[14].attr0 = ATTR0_HIDE;
    }
}

// 2 blank block on left
void initBlankBlocksONE() {
    blankBlocksONE.worldCol = 0;
    blankBlocksONE.worldRow = 56;
    blankBlocksONE.width = 32;
    blankBlocksONE.height = 16;
    blankBlocksONE.active = 0;
}
void updateBlankBlocksONE() {
    if (blankBlocksONE.active 
            && player.worldCol <= (blankBlocksONE.worldCol + 64) && player.worldCol >= (blankBlocksONE.worldCol - 16) && (blankBlocksONE.worldRow + blankBlocksONE.height) == player.worldRow) {
        blankBlocksONE.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlankBlocksONE() {
    if (blankBlocksONE.active) {
        shadowOAM[15].attr0 = ATTR0_WIDE | ((blankBlocksONE.worldRow - vOff) & ROWMASK);
        shadowOAM[15].attr1 = ATTR1_MEDIUM | ((blankBlocksONE.worldCol - playerhOff) & COLMASK);
        shadowOAM[15].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 16);
    } else {
        shadowOAM[15].attr0 = ATTR0_HIDE;
    }
}

// 2 blank block on right
void initBlankBlocksTWO() {
    blankBlocksTWO.worldCol = 96;
    blankBlocksTWO.worldRow = 56;
    blankBlocksTWO.width = 32;
    blankBlocksTWO.height = 16;
    blankBlocksTWO.active = 0;
}
void updateBlankBlocksTWO() {
    if (blankBlocksTWO.active 
            && player.worldCol <= (blankBlocksTWO.worldCol + 64) && player.worldCol >= (blankBlocksTWO.worldCol - 16) && (blankBlocksTWO.worldRow + blankBlocksTWO.height) == player.worldRow) {
        blankBlocksTWO.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlankBlocksTWO() {
    if (blankBlocksTWO.active) {
        shadowOAM[23].attr0 = ATTR0_WIDE | ((blankBlocksTWO.worldRow - vOff) & ROWMASK);
        shadowOAM[23].attr1 = ATTR1_MEDIUM | ((blankBlocksTWO.worldCol - playerhOff) & COLMASK);
        shadowOAM[23].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 16);
    } else {
        shadowOAM[23].attr0 = ATTR0_HIDE;
    }
}

// blank block 1
void initBlankBlock1() {
    blankBlock1.worldCol = 144;
    blankBlock1.worldRow = 56;
    blankBlock1.width = 16;
    blankBlock1.height = 16;
    blankBlock1.active = 0;
}
void updateBlankBlock1() {
    if (level > 2
            && collision(player.worldCol, player.worldRow - 2, player.width, player.height + 4, blankBlock1.worldCol, blankBlock1.worldRow, blankBlock1.width, blankBlock1.height)) {
        blankBlock1.active = 1;
    }
    // sound
    if (blankBlock1.active 
            && player.worldCol <= (blankBlock1.worldCol + 16) && player.worldCol >= (blankBlock1.worldCol - 16) && (blankBlock1.worldRow + blankBlock1.height) == player.worldRow) {
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlankBlock1() {
    if (blankBlock1.active && screenBlock < 29) {
        shadowOAM[17].attr0 = ATTR0_SQUARE | ((blankBlock1.worldRow - vOff) & ROWMASK);
	    shadowOAM[17].attr1 = ATTR1_SMALL | ((blankBlock1.worldCol - playerhOff) & COLMASK);
	    shadowOAM[17].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4,0);
    } else {
        shadowOAM[17].attr0 = ATTR0_HIDE;
    }
}

// blank block 2
void initBlankBlock2() {
    blankBlock2.worldCol = 160;
    blankBlock2.worldRow = 56;
    blankBlock2.width = 16;
    blankBlock2.height = 16;
    blankBlock2.active = 0;
}
void updateBlankBlock2() {
    if (level > 2
            && player.worldCol <= (blankBlock2.worldCol + 8) && player.worldCol >= (blankBlock2.worldCol - 8) && (blankBlock2.worldRow + blankBlock2.height) == player.worldRow) {
        blankBlock2.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlankBlock2() {
    if (blankBlock2.active && screenBlock < 29) {
        shadowOAM[18].attr0 = ATTR0_SQUARE | ((blankBlock2.worldRow - vOff) & ROWMASK);
	    shadowOAM[18].attr1 = ATTR1_SMALL | ((blankBlock2.worldCol - playerhOff) & COLMASK);
	    shadowOAM[18].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 16);
    } else {
        shadowOAM[18].attr0 = ATTR0_HIDE;
    }
}

// blank block 3
void initBlankBlock3() {
    blankBlock3.worldCol = 176;
    blankBlock3.worldRow = 56;
    blankBlock3.width = 16;
    blankBlock3.height = 16;
    blankBlock3.active = 0;
}
void updateBlankBlock3() {
    if (level > 2
            && player.worldCol <= (blankBlock3.worldCol + 8) && player.worldCol >= (blankBlock3.worldCol - 8) && (blankBlock3.worldRow + blankBlock3.height) == player.worldRow) {
        blankBlock3.active = 1;
        player.isJumping = 0;
        playSoundB(jump_data, jump_length, 0);
    }
}
void drawBlankBlock3() {
    if (blankBlock3.active && screenBlock < 29) {
        shadowOAM[24].attr0 = ATTR0_SQUARE | ((blankBlock3.worldRow - vOff) & ROWMASK);
	    shadowOAM[24].attr1 = ATTR1_SMALL | ((blankBlock3.worldCol - playerhOff) & COLMASK);
	    shadowOAM[24].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 16);
    } else {
        shadowOAM[24].attr0 = ATTR0_HIDE;
    }
}

// moving cloud 1
void initMovingCloud1() {
    movingCloud1.worldRow = 72;
    movingCloud1.worldCol = 296;
    movingCloud1.width = 32;
    movingCloud1.height = 16;
    movingCloud1.cdel = 2;
    movingCloud1.active = 1;
    movingCloud1.isTouched = 0;
}
void updateMovingCloud1() {
    if (level > 2
            && collision(player.worldCol, player.worldRow, player.width, player.height, movingCloud1.worldCol, movingCloud1.worldRow - 2, movingCloud1.width, movingCloud1.height)) {
        movingCloud1.isTouched = 1;
    }
    // if player touched the cloud, cloud moves
    if (movingCloud1.isTouched && movingCloud1.worldCol < 320) {
        movingCloud1.worldCol += movingCloud1.cdel;
    }

    // player jumps on cloud
    if (movingCloud1.active 
            && player.worldCol <= (movingCloud1.worldCol + 32) && player.worldCol >= (movingCloud1.worldCol - 16) && (movingCloud1.worldRow - player.height) == player.worldRow) {
        player.rdel = 0;
        if (BUTTON_PRESSED(BUTTON_UP)) {
            player.rdel = 2;
        }
    } else {
        player.rdel = 2;
    }
}
void drawMovingCloud1() {
    if (movingCloud1.active && screenBlock < 30) {
        shadowOAM[19].attr0 = ATTR0_WIDE | ((movingCloud1.worldRow - vOff) & ROWMASK);
        shadowOAM[19].attr1 = ATTR1_MEDIUM | ((movingCloud1.worldCol - playerhOff) & COLMASK);
        shadowOAM[19].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 4);
    } else {
        shadowOAM[19].attr0 = ATTR0_HIDE;
    }
}

// moving cloud 2
void initMovingCloud2() {
    movingCloud2.worldRow = 32;
    movingCloud2.worldCol = 360;
    movingCloud2.width = 32;
    movingCloud2.height = 16;
    movingCloud2.rdel = 1;
    movingCloud2.active = 1;
    movingCloud2.isTouched = 0;
}
void updateMovingCloud2() {
    if (level > 2
            && collision(player.worldCol, player.worldRow, player.width, player.height, movingCloud2.worldCol, movingCloud2.worldRow - 2, movingCloud2.width, movingCloud2.height)) {
        movingCloud2.isTouched = 1;
    }
    // if player touched the cloud, cloud moves
    if (movingCloud2.isTouched && movingCloud2.worldRow < 96) {
        movingCloud2.worldRow += movingCloud2.rdel;
        //player.worldRow -= movingCloud2.rdel;
    }

    // player jumps on cloud
    if (movingCloud2.active 
            && player.worldCol <= (movingCloud2.worldCol + 32) && player.worldCol >= (movingCloud2.worldCol - 16) && (movingCloud2.worldRow - player.height) == player.worldRow) {
        player.rdel = 1;
        if (BUTTON_PRESSED(BUTTON_UP)) {
            player.rdel = 2;
        } else if (movingCloud2.worldRow >= 96) {
            player.rdel = 0;
        }
    }
}
void drawMovingCloud2() {
    if (movingCloud2.active && screenBlock < 30) {
        shadowOAM[20].attr0 = ATTR0_WIDE | ((movingCloud2.worldRow - vOff) & ROWMASK);
        shadowOAM[20].attr1 = ATTR1_MEDIUM | ((movingCloud2.worldCol - playerhOff) & COLMASK);
        shadowOAM[20].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 4);
    } else {
        shadowOAM[20].attr0 = ATTR0_HIDE;
    }
}

// moving cloud 3
void initMovingCloud3() {
    movingCloud3.worldRow = 56;
    movingCloud3.worldCol = 392;
    movingCloud3.width = 32;
    movingCloud3.height = 16;
    movingCloud3.active = 1;
    movingCloud3.isTouched = 0;
}
void updateMovingCloud3() {
    if (movingCloud3.active 
            && player.worldCol <= (movingCloud3.worldCol + 32) && player.worldCol >= (movingCloud3.worldCol - 16) && (movingCloud3.worldRow - player.height) == player.worldRow) {
        movingCloud3.active = 0;
    }
}
void drawMovingCloud3() {
    if (movingCloud3.active && screenBlock < 30) {
        shadowOAM[21].attr0 = ATTR0_WIDE | ((movingCloud3.worldRow - vOff) & ROWMASK);
        shadowOAM[21].attr1 = ATTR1_MEDIUM | ((movingCloud3.worldCol - playerhOff) & COLMASK);
        shadowOAM[21].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 4);
    } else {
        shadowOAM[21].attr0 = ATTR0_HIDE;
    }
}

// moving cloud 4
void initMovingCloud4() {
    movingCloud4.worldRow = 72;
    movingCloud4.worldCol = 440;
    movingCloud4.width = 32;
    movingCloud4.height = 16;
    movingCloud4.cdel = 1;
    movingCloud4.active = 1;
    movingCloud4.isTouched = 0;
    movingCloud4.forward = 1;
    movingCloud4.backward = 0;

}
void updateMovingCloud4(int time) {
    if (level > 2
            && collision(player.worldCol, player.worldRow, player.width, player.height, movingCloud4.worldCol, movingCloud4.worldRow - 2, movingCloud4.width, movingCloud4.height)) {
        movingCloud4.isTouched = 1;
    }
    // if player touched the cloud, cloud moves
    if (movingCloud4.forward) {
        if (movingCloud4.isTouched && movingCloud4.worldCol < 525) {
            // makes cloud moves slower
            if (time % 2 == 0) {
                movingCloud4.worldCol += movingCloud4.cdel;
                time = 0;
            }
            if (movingCloud4.worldCol == 524) {
                movingCloud4.forward = 0;
                movingCloud4.backward = 1;
            }
        }
    } else if (movingCloud4.backward) {
        if (movingCloud4.worldCol > 468) {
            movingCloud4.worldCol -= movingCloud4.cdel;
        }
    }
        



    // player jumps on cloud
    if (movingCloud4.active 
            && player.worldCol <= (movingCloud4.worldCol + 32) && player.worldCol >= (movingCloud4.worldCol - 16) && (movingCloud4.worldRow - player.height) == player.worldRow) {
        player.rdel = 0;
        if (BUTTON_PRESSED(BUTTON_UP)) {
            player.rdel = 2;
        }
    }
}
void drawMovingCloud4() {
    if (movingCloud4.active && screenBlock < 30) {
        shadowOAM[22].attr0 = ATTR0_WIDE | ((movingCloud4.worldRow - vOff) & ROWMASK);
        shadowOAM[22].attr1 = ATTR1_MEDIUM | ((movingCloud4.worldCol - playerhOff) & COLMASK);
        shadowOAM[22].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 4);
    } else {
        shadowOAM[22].attr0 = ATTR0_HIDE;
    }
}

// rocket
void initRocket() {
    rocket.worldRow = 88;
    rocket.worldCol = 400;
    rocket.rdel = 1;
    rocket.cdel = 1;
    rocket.width = 32;
    rocket.height = 16;
    rocket.active = 0;
}
void updateRocket(int time) {
    // activate rocket
    if (level > 2
            && player.worldCol > 540) {
        rocket.active = 1;
    }

    // stands on rocket
    if (rocket.active) {
        // make rocket moves slower
        if (time % 2 == 0) {
            rocket.worldCol += rocket.cdel;
            time = 0;
        }
        if (player.worldCol <= (rocket.worldCol + 32) && player.worldCol >= (rocket.worldCol - 16) && (rocket.worldRow - 20) == player.worldRow) {
            player.rdel = 0;
            if (BUTTON_PRESSED(BUTTON_UP)) {
                player.rdel = 2;
            }
        } else if ((player.worldCol + 16 == rocket.worldCol + 32)
                        && (rocket.worldRow + rocket.height / 2) >= player.worldRow && (rocket.worldRow + rocket.height / 2) <= (player.worldRow + 24)) {
            life--; // die
            iq -= 50;
        }
    }
}
void drawRocket() {
    if (rocket.active && screenBlock > 28) {
        shadowOAM[25].attr0 = ATTR0_WIDE | ((rocket.worldRow - vOff) & ROWMASK);
        shadowOAM[25].attr1 = ATTR1_MEDIUM | ((rocket.worldCol - playerhOff) & COLMASK);
        shadowOAM[25].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(8, 4);
    } else {
        shadowOAM[25].attr0 = ATTR0_HIDE;
    }
}

