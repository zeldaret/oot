#ifndef _Z_OBJECT_KANKYO_H_
#define _Z_OBJECT_KANKYO_H_

#include "ultra64.h"
#include "global.h"

struct ObjectKankyo;

typedef void (*ObjectKankyoActionFunc)(struct ObjectKankyo*, GlobalContext*);

typedef struct ObjectKankyoInner {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    Vec3f unk1C;
    /* 
    f32 unk1C;
    f32 unk20;
    f32 unk24;
     */
    f32 unk28;
    f32 unk2C;
    f32 unk30;
    f32 unk34;
    f32 unk38;
    u16 unk3C;
    u16 unk3E;
    u8 unk40;
    f32 unk44;
    u16 unk48;
    u16 unk4A;
    f32 unk4C;
    u16 unk50;
} ObjectKankyoInner; // size = 0x54

typedef struct ObjectKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjectKankyoInner unk_14C[64];
    /* 0x164C */ Vec3f unk_164C;
    ///* 0x164C */ s32 unk_164C;
    ///* 0x1650 */ s32 unk_1650;
    ///* 0x1654 */ s32 unk_1654;
    /* 0x1658 */ u8 unk_1658;
    /* 0x1659 */ u8 unk_1659;
    /* 0x165A */ u8 unk_165A;
    /* 0x165B */ u8 unk_165B;
    /* 0x165C */ ObjectKankyoActionFunc actionFunc;
} ObjectKankyo; // size = 0x1660

#endif
