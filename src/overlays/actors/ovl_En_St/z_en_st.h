#ifndef _Z_EN_ST_H_
#define _Z_EN_ST_H_

#include <ultra64.h>
#include <global.h>

struct EnSt;

typedef void (*EnStFunc)(struct EnSt* this, GlobalContext* globalCtx);

typedef struct EnSt {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnStFunc actionFunc;
    /* 0x0194 */ ColliderCylinder colCylinder[6];
    /* 0x035C */ ColliderJntSph colSph;
    /* 0x037C */ ColliderJntSphItem colSphItems[1];
    /* 0x03BC */ s16 unk_3BC;
    /* 0x03BE */ s16 unk_3BE;
    /* 0x03C0 */ s16 unk_3C0;
    /* 0x03C2 */ s16 unk_3C2;
    /* 0x03C4 */ s16 unk_3C4;
    /* 0x03C6 */ s16 unk_3C6;
    /* 0x03C8 */ s16 unk_3C8;
    /* 0x03CA */ s16 unk_3CA;
    /* 0x03CC */ s16 unk_3CC;
    /* 0x03CE */ s16 unk_3CE;
    /* 0x03D0 */ s16 unk_3D0;
    /* 0x03D2 */ s16 unk_3D2;
    /* 0x03D4 */ s16 unk_3D4;
    /* 0x03D6 */ s16 unk_3D6;
    /* 0x03D8 */ s16 unk_3D8;
    /* 0x03DA */ s16 unk_3DA;
    /* 0x03DC */ u8 unk_3DC;
    /* 0x03DD */ u8 unk_3DD;
    /* 0x03DE */ u8 unk_3DE;
    /* 0x03DF */ u8 unk_3DF;
    /* 0x03DD */ char unk_3E0[4];
    /* 0x03E4 */ Vec3f unk_3E4;
    /* 0x03F0 */ Vec3f unk_3F0;
    /* 0x03FC */ char unk_3FC[0x8];
    /* 0x0404 */ s32 blurIdx;
    /* 0x0408 */ f32 unk_408;
    /* 0x040C */ f32 unk_40C;
    /* 0x0410 */ s16 unk_410;
    /* 0x0412 */ Vec3s limbDrawTable[30];
    /* 0x04C6 */ Vec3s transDrawTable[30];
} EnSt; // size = 0x057C

extern const ActorInit En_St_InitVars;

#endif
