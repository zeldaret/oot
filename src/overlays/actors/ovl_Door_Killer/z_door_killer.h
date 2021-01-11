#ifndef _Z_DOOR_KILLER_H_
#define _Z_DOOR_KILLER_H_

#include "ultra64.h"
#include "global.h"

typedef struct{
    /* 0x00 */s16 objectID;
    /* 0x02 */char pad[0x2];
    /* 0x04 */s32 *seg_address;
} temp_struct; // size 0x8

struct DoorKiller;

typedef struct DoorKiller {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime unk14C;
    /* 0x0190 */ u8 unk190;
    /* 0x0191 */ u8 unk191;
    /* 0x0192 */ Vec3s unk192;
    /* 0x0198 */ s16 unk198;
    /* 0x019A */ char unk19A[0x2];
    /* 0x019C */ s16 unk19C;
    /* 0x019E */ char unk19E[0x2A];
    /* 0x01C8 */ ColliderCylinder collider;
    /* 0x0214 */ s32 *unk214;
    /* 0x0218 */ u16 unk218;
    /* 0x021A */ u16 unk21A;
    /* 0x021C */ s8 unk21C;
    /* 0x021D */ u8 unk21D;
    /* 0x021E */ char unk_21E[0x2];
    /* 0x0220 */ ColliderJntSph unk220;
    /* 0x0240 */ ColliderJntSphItem unk240;
    /* 0x0280 */ void *unk280;
} DoorKiller; // size = 0x0284

extern const ActorInit Door_Killer_InitVars;

#endif
