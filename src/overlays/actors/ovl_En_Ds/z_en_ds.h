#ifndef _Z_EN_DS_H_
#define _Z_EN_DS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable;
    /* 0x0196 */ char unk_194[0x1E];
    /* 0x01B4 */ Vec3s unk_1B4;
    /* 0x01BA */ char unk_1B8[0x1E];
    /* 0x01D8 */ Vec3s unk_1D8;
    /* 0x01DE */ Vec3s unk_1DE;
    /* 0x01E4 */ float unk_1E4;
    /* 0x01E8 */ u16 unk_1E8;
    /* 0x01EA */ u16 brewTimer;
    /* 0x01EC */ ActorFunc actionFunc;
} EnDs; // size = 0x01F0

extern const ActorInit En_Ds_InitVars;

#endif
