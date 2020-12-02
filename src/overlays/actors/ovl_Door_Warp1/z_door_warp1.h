#ifndef _Z_DOOR_WARP1_H_
#define _Z_DOOR_WARP1_H_

#include "ultra64.h"
#include "global.h"

struct DoorWarp1;

typedef void (*DoorWarp1ActionFunc)(struct DoorWarp1*, GlobalContext*);

typedef struct DoorWarp1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ char unk_190[0x2];
    /* 0x0192 */ u16 unk_192;
    /* 0x0194 */ f32 unk_194;
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ f32 alpha;
    /* 0x01AC */ s16 unk_1AC;
    /* 0x01AE */ s16 unk_1AE;
    /* 0x01B0 */ s16 unk_1B0;
    /* 0x01B2 */ s16 unk_1B2;
    /* 0x01B4 */ f32 unk_1B4;
    /* 0x01B8 */ s16 unk_1B8;
    /* 0x01BA */ u16 unk_1BA;
    /* 0x01BC */ f32 unk_1BC;
    /* 0x01C0 */ DoorWarp1ActionFunc actionFunc;
    /* 0x01C4 */ LightNode* unk_1C4;
    /* 0x01C8 */ LightInfo unk_1C8;
    /* 0x01D8 */ LightNode* unk_1D8;
    /* 0x01DC */ LightInfo unk_1DC;
    /* 0x01EC */ s32 unk_1EC;
} DoorWarp1; // size = 0x01F0

extern const ActorInit Door_Warp1_InitVars;

#endif
