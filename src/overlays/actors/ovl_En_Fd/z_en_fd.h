#ifndef _Z_EN_FD_H_
#define _Z_EN_FD_H_

#include <ultra64.h>
#include <global.h>

struct EnFd;

typedef void (*EnFdActionFunc)(struct EnFd* this, GlobalContext* globalCtx);

typedef struct {
    /* 0x0000 */ u8 unk_00;
    /* 0x0001 */ u8 unk_01;
    /* 0x0002 */ u8 unk_02;
    /* 0x0003 */ u8 unk_03;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ Color_RGBA8_n unk_0C;
    /* 0x0010 */ char unk_10[4];
    /* 0x0014 */ Vec3f unk_14;
    /* 0x0020 */ Vec3f unk_20;
    /* 0x002C */ Vec3f unk_2C;
} EnFdPart; // size = 0x38

typedef struct EnFd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnFdActionFunc actionFunc;
    /* 0x0194 */ ColliderJntSph collider;
    /* 0x01B4 */ ColliderJntSphItem colSphs[12];
    /* 0x04B4 */ u8 unk_4B4;
    /* 0x04B5 */ u8 unk_4B5;
    /* 0x04B6 */ s16 unk_4B6;
    /* 0x04B8 */ s16 unk_4B8;
    /* 0x04BA */ s16 unk_4BA;
    /* 0x04BC */ s16 unk_4BC;
    /* 0x04BE */ s16 unk_4BE;
    /* 0x04C0 */ s16 unk_4C0;
    /* 0x04C2 */ s16 unk_4C2;
    /* 0x04C4 */ s16 unk_4C4;
    /* 0x04C6 */ s16 unk_4C6;
    /* 0x04C8 */ f32 unk_4C8;
    /* 0x04CC */ f32 unk_4CC;
    /* 0x04D0 */ Vec3f unk_4D0;
    /* 0x04DC */ Vec3s limbDrawTable[27];
    /* 0x057E */ Vec3s transDrawTable[27];
    /* 0x0620 */ EnFdPart particles[0xC8];
} EnFd; // size = 0x31E0

extern const ActorInit En_Fd_InitVars;

#endif
