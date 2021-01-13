#ifndef _Z_DOOR_KILLER_H_
#define _Z_DOOR_KILLER_H_

#include "ultra64.h"
#include "global.h"

typedef struct{
    /* 0x00 */s16 objectID;
    /* 0x04 */Gfx* texture;
} temp_struct; // size 0x8

struct DoorKiller;

typedef void (*DoorKillerActionFunc)(struct DoorKiller*, GlobalContext*);

typedef struct DoorKiller {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ u8 unk190;
    /* 0x0191 */ u8 unk191;
    /* 0x0192 */ Vec3s unk192[9]; // 9 vectors
    /* 0x0198 */ //Vec3s unk198; 19C = 198.z
    /* 0x019E */ //Vec3s unk19E; 1A0 = 19E.y, 1A2 = 19E.z
    /* 0x01A4 */ //Vec3s unk1A4;
    /* 0x01AA */ //Vec3s unk1AA;
    /* 0x01B0 */ //Vec3s unk1B0;
    /* 0x01B6 */ //Vec3s unk1B6;
    /* 0x01BC */ //Vec3s unk1BC;
    /* 0x01C2 */ //Vec3s unk1C2;
    /* 0x01C8 */ ColliderCylinder collider;
    /* 0x0214 */ Gfx* texture;
    /* 0x0218 */ u16 unk218;
    /* 0x021A */ u16 unk21A;
    /* 0x021C */ u8 bankIndex;
    /* 0x021D */ u8 unk21D;
    /* 0x021E */ char unk_21E[0x2];
    /* 0x0220 */ ColliderJntSph unk220;
    /* 0x0240 */ ColliderJntSphItem unk240;
    /* 0x0280 */ DoorKillerActionFunc actionFunc;
} DoorKiller; // size = 0x0284

extern const ActorInit Door_Killer_InitVars;

#endif
