#ifndef _Z_EFC_ERUPC_H_
#define _Z_EFC_ERUPC_H_

#include "ultra64.h"
#include "global.h"

struct EfcErupc;

typedef void (*EfcErupcActionFunc)(struct EfcErupc*, GlobalContext*);

typedef struct {
    Vec3f unk_00;
    Vec3f unk_0C;
    Vec3f unk_18;
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
    u8 unk_27;
    u8 unk_28;
    s16 unk_2A;
    char unk_2C[4];
    f32 unk_30;
    char unk_34[0x3C - 0x34];
} Unk_3C;

typedef struct {
    u8 unk0, unk1, unk2;
} Unk_03_1;

typedef struct {
    Unk_03_1 unk0[4];
} Unk_0C_1;

typedef struct EfcErupc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk14C;
    /* 0x014E */ s16 unk14E;
    /* 0x0150 */ s16 unk150;
    /* 0x0152 */ s16 unk152;
    /* 0x0154 */ s16 unk154;
    /* 0x0154 */ u16 unk156; //uncomf
    /* 0x0158 */ Unk_3C unk_158[100];
    //char unk_14C[0x177C];
    /* 0x18C8 */ EfcErupcActionFunc actionFunc;
} EfcErupc; // size = 0x18CC

extern const ActorInit Efc_Erupc_InitVars;

#endif
