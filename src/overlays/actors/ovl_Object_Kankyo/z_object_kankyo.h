#ifndef _Z_OBJECT_KANKYO_H_
#define _Z_OBJECT_KANKYO_H_

#include "ultra64.h"
#include "global.h"

struct ObjectKankyo;

typedef void (*ObjectKankyoActionFunc)(struct ObjectKankyo*, GlobalContext*);

typedef struct ObjectKankyoInner {
    u8 state;
    Vec3f pos;     // relative to home
    Vec3f lastPos;
    Vec3f home;
    Vec3f unk28;
    f32 unk34;
    f32 unk38;
    u16 unk3C;
    u16 unk3E;
    u8 alpha;
    f32 size;
    u16 unk48;
    u16 unk4A;
    f32 unk4C;
    u16 timer;
} ObjectKankyoInner; // size = 0x54

typedef struct ObjectKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjectKankyoInner effects[64];
    /* 0x164C */ Vec3f lastEyePos;
    /* 0x1658 */ u8 unk_1658;
    /* 0x1659 */ u8 unk_1659;
#ifdef DEBUG_OVL
    u8 id; 
#endif
    /* 0x165C */ ObjectKankyoActionFunc actionFunc;
} ObjectKankyo; // size = 0x1660

#endif
