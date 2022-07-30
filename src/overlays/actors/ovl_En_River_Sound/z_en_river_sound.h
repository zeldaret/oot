#ifndef Z_EN_RIVER_SOUND_H
#define Z_EN_RIVER_SOUND_H

#include "ultra64.h"
#include "global.h"

struct EnRiverSound;

typedef struct EnRiverSound {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 playSfx;
    /* 0x014D */ u8 sfxFreqIndex;
    /* 0x014E */ s16 pathIndex;
} EnRiverSound; // size = 0x0150

typedef enum {
    /* 0x00 */ RS_RIVER_DEFAULT_LOW_FREQ,
    /* 0x01 */ RS_SMALL_WATERFALL,
    /* 0x02 */ RS_LAVA_BUBBLES_1,
    /* 0x03 */ RS_LARGE_WATERFALL,
    /* 0x04 */ RS_RIVER_DEFAULT_MEDIUM_FREQ,
    /* 0x05 */ RS_RIVER_DEFAULT_HIGH_FREQ,
    /* 0x06 */ RS_LAVA_BUBBLES_2,
    /* 0x07 */ RS_LAVA_BUBBLES_3,
    /* 0x08 */ RS_DRIPPING_WATER,
    /* 0x09 */ RS_FOUNTAIN_WATER,
    /* 0x0A */ RS_MARKET_CROWD,
    /* 0x0B */ RS_LOWER_MAIN_BGM_VOLUME,
    /* 0x0C */ RS_LOST_WOODS_SARIAS_SONG,
    /* 0x0D */ RS_GORON_CITY_SARIAS_SONG,
    /* 0x0E */ RS_SANDSTORM,
    /* 0x0F */ RS_LAKESIDE_LAB_TANK,
    /* 0x10 */ RS_CHAMBER_OF_SAGES_1,
    /* 0x11 */ RS_CHAMBER_OF_SAGES_2,
    /* 0x12 */ RS_RUMBLING,
    /* 0x13 */ RS_GREAT_FAIRY,
    /* 0x14 */ RS_TORCH_CRACKLING,
    /* 0x15 */ RS_COW_MOOING,
    /* 0xF7 */ RS_NATURE_AMBIENCE = 0xF7,
    /* 0xF8 */ RS_GANON_TOWER_0, // Ganondorf's Lair
    /* 0xF9 */ RS_GANON_TOWER_1, // Top of Ganon's Tower
    /* 0xFA */ RS_GANON_TOWER_2,
    /* 0xFB */ RS_GANON_TOWER_3,
    /* 0xFC */ RS_GANON_TOWER_4,
    /* 0xFD */ RS_GANON_TOWER_5,
    /* 0xFE */ RS_GANON_TOWER_6,
    /* 0xFF */ RS_GANON_TOWER_7 // Bottom of Ganon's Tower
} RiverSoundType;

#endif
