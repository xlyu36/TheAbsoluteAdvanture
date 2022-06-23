
//{{BLOCK(backgroundWIN)

//======================================================================
//
//	backgroundWIN, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 216 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6912 + 2048 = 9472
//
//	Time-stamp: 2022-04-26, 15:05:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKGROUNDWIN_H
#define GRIT_BACKGROUNDWIN_H

#define backgroundWINTilesLen 6912
extern const unsigned short backgroundWINTiles[3456];

#define backgroundWINMapLen 2048
extern const unsigned short backgroundWINMap[1024];

#define backgroundWINPalLen 512
extern const unsigned short backgroundWINPal[256];

#endif // GRIT_BACKGROUNDWIN_H

//}}BLOCK(backgroundWIN)
