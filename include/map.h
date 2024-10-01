#ifndef MAP_H
#define MAP_H

#include "ultra64.h"

struct PlayState;

typedef enum FloorID {
    /*  1 */ F_8F = 1,
    /*  2 */ F_7F,
    /*  3 */ F_6F,
    /*  4 */ F_5F,
    /*  5 */ F_4F,
    /*  6 */ F_3F,
    /*  7 */ F_2F,
    /*  8 */ F_1F,
    /*  9 */ F_B1,
    /* 10 */ F_B2,
    /* 11 */ F_B3,
    /* 12 */ F_B4,
    /* 13 */ F_B5,
    /* 14 */ F_B6,
    /* 15 */ F_B7,
    /* 16 */ F_B8
} FloorID;

// All arrays pointed in this struct are indexed by "map indices"
// In dungeons, the map index corresponds to the dungeon index (which also indexes keys, items, etc)
// In overworld areas, the map index corresponds to the overworld area index (spot 00, 01, etc)
typedef struct MapData {
    /* 0x00 */ s16 (*floorTexIndexOffset)[8]; // dungeon texture index offset by floor
    /* 0x04 */ s16* bossFloor; // floor the boss is on
    /* 0x08 */ s16 (*roomPalette)[32]; // map palette by room
    /* 0x0C */ s16* maxPaletteCount; // max number of palettes in a same floor
    /* 0x10 */ s16 (*paletteRoom)[8][14]; // room by palette by floor
    /* 0x14 */ s16 (*roomCompassOffsetX)[44]; // dungeon compass icon X offset by room
    /* 0x18 */ s16 (*roomCompassOffsetY)[44]; // dungeon compass icon Y offset by room
    /* 0x1C */ u8* dgnMinimapCount; // number of room minimaps
    /* 0x20 */ u16* dgnMinimapTexIndexOffset; // dungeon minimap texture index offset
    /* 0x24 */ u16* owMinimapTexSize;
    /* 0x28 */ u16* owMinimapTexOffset;
    /* 0x2C */ s16* owMinimapPosX;
    /* 0x30 */ s16* owMinimapPosY;
    /* 0x34 */ s16 (*owCompassInfo)[4]; // [X scale, Y scale, X offset, Y offset]
    /* 0x38 */ s16* dgnTexIndexBase; // dungeon texture index base
    /* 0x3C */ s16 (*dgnCompassInfo)[4]; // [X scale, Y scale, X offset, Y offset]
    /* 0x40 */ s16* owMinimapWidth;
    /* 0x44 */ s16* owMinimapHeight;
    /* 0x48 */ s16* owEntranceIconPosX; // "dungeon entrance" icon X pos
    /* 0x4C */ s16* owEntranceIconPosY; // "dungeon entrance" icon Y pos
    /* 0x50 */ u16* owEntranceFlag; // flag in inf_table[26] based on which entrance icons are shown (0xFFFF = always shown)
    /* 0x54 */ f32 (*floorCoordY)[8]; // Y coordinate of each floor
    /* 0x58 */ u16* switchEntryCount; // number of "room switch" entries, which correspond to the next 3 arrays
    /* 0x5C */ u8 (*switchFromRoom)[51]; // room to come from
    /* 0x60 */ u8 (*switchFromFloor)[51]; // floor to come from
    /* 0x64 */ u8 (*switchToRoom)[51]; // room to go to
    /* 0x68 */ u8 (*floorID)[8];
    /* 0x6C */ s16* skullFloorIconY; // dungeon big skull icon Y pos
} MapData; // size = 0x70

// TODO get these properties from the textures themselves
#define MAP_I_TEX_WIDTH 96
#define MAP_I_TEX_HEIGHT 85
#define MAP_I_TEX_SIZE ((MAP_I_TEX_WIDTH * MAP_I_TEX_HEIGHT) / 2) // 96x85 I4 texture

#define MAP_48x85_TEX_WIDTH 48
#define MAP_48x85_TEX_HEIGHT 85
#define MAP_48x85_TEX_SIZE ((MAP_48x85_TEX_WIDTH * MAP_48x85_TEX_HEIGHT) / 2) // 48x85 CI4 texture

void Map_SavePlayerInitialInfo(struct PlayState* play);
void Map_SetFloorPalettesData(struct PlayState* play, s16 floor);
void Map_InitData(struct PlayState* play, s16 room);
void Map_InitRoomData(struct PlayState* play, s16 room);
void Map_Destroy(struct PlayState* play);
void Map_Init(struct PlayState* play);
void Minimap_Draw(struct PlayState* play);
void Map_Update(struct PlayState* play);

#endif
