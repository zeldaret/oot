#ifndef _Z_EN_OWL_H_
#define _Z_EN_OWL_H_

#include "ultra64.h"
#include "global.h"

typedef enum {
    OWL_DEFAULT,
    OWL_OUTSIDE_KOKIRI,
    OWL_HYRULE_CASTLE,
    OWL_KAKARIKO,
    OWL_HYLIA_GERUDO,
    OWL_LAKE_HYLIA,
    OWL_ZORA_RIVER,
    OWL_HYLIA_SHORTCUT,
    OWL_DEATH_MOUNTAIN,
    OWL_DEATH_MOUNTAIN2,
    OWL_DESSERT_COLOSSUS,
    OWL_LOST_WOODS_PRESARIA,
    OWL_LOST_WOODS_POSTSARIA
} EnOwlType;

typedef enum {
    OWL_REPEAT,
    OWL_OK,
} EnOwlMessageChoice;

typedef struct EnOwl EnOwl;

typedef void (*EnOwlActionFunc)(EnOwl* this, GlobalContext* globalCtx);
typedef void (*OwlFunc)(EnOwl* this);

typedef struct EnOwl{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s drawTbl[0x15];
    /* 0x025A */ Vec3s transitionTbl[0x15];
    /* 0x02D8 */ SkelAnime skelAnime2;
    /* 0x031C */ Vec3s drawTbl2[0x10];
    /* 0x037C */ Vec3s transitionTbl2[0x10];
    /* 0x03DC */ SkelAnime* curSkelAnime;
    /* 0x03E0 */ Vec3f eye;
    /* 0x03EC */ s16 unk_3EC;
    /* 0x03EE */ s16 unk_3EE;
    /* 0x03F0 */ s16 unk_3F0;
    /* 0x03F2 */ s16 unk_3F2;
    /* 0x03F4 */ s16 curDlistIdx;
    /* 0x03F6 */ s16 nextDlistIdx;
    /* 0x03F8 */ f32 unk_3F8;
    /* 0x03FC */ u16 actionFlags;
    /* 0x03FE */ u16 unk_3FE;
    /* 0x0400 */ s16 unk_400;
    /* 0x0402 */ s16 cameraIdx;
    /* 0x0404 */ u8 unk_404;
    /* 0x0405 */ u8 unk_405;
    /* 0x0406 */ u8 unk_406;
    /* 0x0407 */ u8 unk_407;
    /* 0x0408 */ u8 unk_408;
    /* 0x0409 */ u8 unk_409;
    /* 0x040A */ u8 unk_40A;
    /* 0x040B */ u8 unk_40B;
    /* 0x040C */ EnOwlActionFunc actionFunc;
    /* 0x0410 */ OwlFunc unk_410;
}; // size = 0x0414

extern const ActorInit En_Owl_InitVars;

#endif
