#ifndef _Z_BG_GANON_OTYUKA_H_
#define _Z_BG_GANON_OTYUKA_H_

#include "ultra64.h"
#include "global.h"

#define SIDE_WEST 1
#define SIDE_EAST 2
#define SIDE_NORTH 4
#define SIDE_SOUTH 8
#define SIDE_ALL (SIDE_WEST | SIDE_EAST | SIDE_NORTH | SIDE_SOUTH)

typedef enum { FLASH_NONE, FLASH_GROW, FLASH_SHRINK } FlashState;

struct BgGanonOtyuka;

typedef void (*BgGanonOtyukaActionFunc)(struct BgGanonOtyuka*, GlobalContext*);

typedef struct BgGanonOtyuka {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgGanonOtyukaActionFunc actionFunc;
    /* 0x0168 */ s16 dropTimer;
    /* 0x016A */ u8 isFalling;
    /* 0x016B */ u8 tiltSides;
    /* 0x016C */ u8 visibleSides;
    /* 0x016D */ u8 flashTimer;
    /* 0x016E */ u8 flashState;
    /* 0x0170 */ f32 flashHeight;
    /* 0x0174 */ f32 flashPrimColorR;
    /* 0x0178 */ f32 flashPrimColorG;
    /* 0x017C */ f32 flashPrimColorB;
    /* 0x0180 */ f32 flashEnvColorR;
    /* 0x0184 */ f32 flashEnvColorG;
    /* 0x0188 */ f32 flashEnvColorB;
} BgGanonOtyuka; // size = 0x018C

extern const ActorInit Bg_Ganon_Otyuka_InitVars;

#endif
