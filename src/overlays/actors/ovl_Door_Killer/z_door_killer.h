#ifndef _Z_DOOR_KILLER_H_
#define _Z_DOOR_KILLER_H_

#include "ultra64.h"
#include "global.h"

typedef struct{
    /* 0x00 */ s16 objectId;
    /* 0x04 */ Gfx* texture;
} DoorKillerTextureEntry; // size 0x8

struct DoorKiller;

typedef void (*DoorKillerActionFunc)(struct DoorKiller*, GlobalContext*);

typedef struct DoorKiller {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ u8 unused;
    /* 0x0191 */ u8 unkCond;
    /* 0x0192 */ Vec3s unk192[9]; // 9 vectors
    /* 0x01C8 */ ColliderCylinder colliderCylinder;
    /* 0x0214 */ Gfx* texture;
    /* 0x0218 */ u16 unkFlag;
    /* 0x021A */ u16 timer;
    /* 0x021C */ u8 doorObjBankIndex;
    /* 0x021D */ u8 textureEntryIndex;
    /* 0x021E */ char unk_21E[0x2];
    /* 0x0220 */ ColliderJntSph colliderJntSph;
    /* 0x0240 */ ColliderJntSphItem colliderJntSphItems[1];
    /* 0x0280 */ DoorKillerActionFunc actionFunc;
} DoorKiller; // size = 0x0284

extern const ActorInit Door_Killer_InitVars;

#endif
