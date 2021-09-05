#ifndef _Z_DOOR_WARP1_H_
#define _Z_DOOR_WARP1_H_

#include "ultra64.h"
#include "global.h"

struct DoorWarp1;

typedef enum {
    WARP_BLUE_CRYSTAL = -2,
    WARP_DUNGEON_ADULT,
    WARP_DUNGEON_CHILD,
    WARP_CLEAR_FLAG,        // Activate on temp clear flag
    WARP_SAGES,             // Used by sages warping into chamber of sages during their cutscene
    WARP_PURPLE_CRYSTAL,
    WARP_YELLOW,            // The colored variants don't warp, they are cutscene setpieces
    WARP_BLUE_RUTO,
    WARP_DESTINATION,       // Spawning in after having taken a warp
    WARP_UNK_7,
    WARP_ORANGE,
    WARP_GREEN,
    WARP_RED
} DoorWarp1Type;

typedef enum {
    WARP_BLUE_RUTO_STATE_INITIAL,   // initial, warp doesn't work yet
    WARP_BLUE_RUTO_STATE_READY,     // set by ruto, warp can work now
    WARP_BLUE_RUTO_STATE_ENTERED,   // set by warp, player has stepped into the warp
    WARP_BLUE_RUTO_STATE_3,         // set by ruto, folding arms
    WARP_BLUE_RUTO_STATE_TALKING,   // set by warp, dialog started
    WARP_BLUE_RUTO_STATE_WARPING    // set by warp, after closing dialog
} DoorWarp1RutoState;

typedef void (*DoorWarp1ActionFunc)(struct DoorWarp1*, GlobalContext*);

typedef struct DoorWarp1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ char unk_190[0x2];
    /* 0x0192 */ u16 warpTimer;
    /* 0x0194 */ f32 unk_194;
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 lightRayAlpha;
    /* 0x01A4 */ f32 warpAlpha;
    /* 0x01A8 */ f32 crystalAlpha;
    /* 0x01AC */ s16 scale;
    /* 0x01AE */ s16 unk_1AE;
    /* 0x01B0 */ s16 unk_1B0;
    /* 0x01B2 */ s16 unk_1B2;
    /* 0x01B4 */ f32 unk_1B4;
    /* 0x01B8 */ s16 unk_1B8;
    /* 0x01BA */ u16 unk_1BA;
    /* 0x01BC */ f32 unk_1BC;
    /* 0x01C0 */ DoorWarp1ActionFunc actionFunc;
    /* 0x01C4 */ LightNode* upperLight;
    /* 0x01C8 */ LightInfo upperLightInfo;
    /* 0x01D8 */ LightNode* lowerLight;
    /* 0x01DC */ LightInfo lowerLightInfo;
    /* 0x01EC */ s32 rutoWarpState; // for state communication with En_Ru1 using DoorWarp1RutoState values
} DoorWarp1; // size = 0x01F0

#endif
