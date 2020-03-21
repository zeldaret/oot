#ifndef _Z_EN_WALLMAS_H_
#define _Z_EN_WALLMAS_H_

#include <ultra64.h>
#include <global.h>

typedef enum {
    WMT_TIMER,
    WMT_PROXIMITY,
    WMT_FLAG,
} WallmasType;

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ s16 timer;
    /* 0x0196 */ s16 switchFlag;
    /* 0x0198 */ UNK_PTR unkSkelAnimeStruct;
    /* 0x019C */ char unk_178[0x92];
    /* 0x022E */ u16 unk_22e;
    /* 0x0230 */ char unk_230[0x94];
    /* 0x02C4 */ f32 unk_2c4;
    /* 0x02C8 */ ColliderCylinderMain colCylinder;
} EnWallmas; // size = 0x0314

extern const ActorInit En_Wallmas_InitVars;

#endif
