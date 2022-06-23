#define MAPWIDTH 1024
#define MAPHEIGHT 160

// struct
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

#define FISHCOUNT 3

extern u16 hOff, vOff, playerhOff, screenBlock;
extern u16 life, level, paused, jumpCount;

extern int time;
extern int iq, ones, tens, hundreds;

extern OBJECT player;

// level 1
extern OBJECT fish[FISHCOUNT];
extern BLOCK block1, block2, block3;
extern OTHER guillotine;
extern OTHER winFlame;
extern OTHER bridge;
extern OTHER cloud;
extern OTHER brokenGround;


// level 2
extern BLOCK blockMain, noZuoNoDie, blankBlocksONE, blankBlocksTWO, blankBlock1, blankBlock2, blankBlock3;
extern OBJECT honey, rocket;
extern OTHER movingCloud1, movingCloud2, movingCloud3, movingCloud4;
extern u8* COLLISIONMAP;

enum {SPRITELEFT, SPRITERIGHT, SPRITEIDLE};

// prototypes
void initGame();
void updateGame();
void drawGame();

void initPlayer();
void updatePlayer();
void drawPlayer();

// level 1
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

// level 2
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