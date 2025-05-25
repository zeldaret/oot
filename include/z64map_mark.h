#ifndef Z64MAP_MARK_H
#define Z64MAP_MARK_H

#include "ultra64.h"

struct PlayState;

#define MAP_MARK_NONE -1
#define MAP_MARK_CHEST 0
#define MAP_MARK_BOSS 1

typedef struct MapMarkPoint {
    /* 0x00 */ s8 chestFlag; // chest icon is only displayed if this flag is not set for the current room
    /* 0x01 */ u8 x, y; // coordinates to place the icon (top-left corner), relative to the minimap texture
} MapMarkPoint; // size = 0x3

typedef struct MapMarkIconData {
    /* 0x00 */ s8 markType; // 0 for the chest icon, 1 for the boss skull icon, -1 for none
    /* 0x01 */ u8 count; // number of icons to display
    /* 0x02 */ MapMarkPoint points[12];
} MapMarkIconData; // size = 0x26

typedef MapMarkIconData MapMarkData[3]; // size = 0x72

void MapMark_Init(struct PlayState* play);
void MapMark_ClearPointers(struct PlayState* play);
void MapMark_Draw(struct PlayState* play);

extern MapMarkData* gMapMarkDataTable[];

#endif
