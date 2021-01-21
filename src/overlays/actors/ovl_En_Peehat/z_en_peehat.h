#ifndef _Z_EN_PEEHAT_H_
#define _Z_EN_PEEHAT_H_

#include "ultra64.h"
#include "global.h"

#define GROUND_HOVER_HEIGHT 75.0f

#define MAX_LARVA 3
#define TYPE_GROUNDED -1
#define TYPE_FLYING 0
#define TYPE_LARVA 1

struct EnPeehat;

//params -1 = Ground Peahat
//params 0 = Spawner Peahat
//params 1 = Peahat larva

typedef void (*EnPeehatActionFunc)(struct EnPeehat*, GlobalContext*);

typedef struct EnPeehat {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[24]; //unkLength
    /* 0x0220 */ Vec3s morphTable[24]; //unkLength
    /* 0x02B0 */ s32 unk2B0;
    /* 0x02B4 */ s32 unk2B4;
    /* 0x02B8 */ EnPeehatActionFunc actionFunc;
    /* 0x02BC */ Vec3f unk2BC[2];
    /* 0x02D4 */ s32 unk2D4;
    /* 0x02D8 */ f32 xzDistMax; //max xz dist to follow Link (TYPE_GROUNDED) or spawn larva (TYPE_FLYING)
    /* 0x02DC */ f32 xzDistToRise; //xz dist needed to rise from the ground
    /* 0x02E0 */ f32 unk2E0; //rot?
    /* 0x02E4 */ f32 unk2E4;
    /* 0x02E8 */ f32 unk2E8;
    /* 0x02EC */ f32 unk2EC;
    /* 0x02F0 */ s16 unk2F0;
    /* 0x02F2 */ s16 unk2F2;
    /* 0x02F4 */ s16 unk2F4;
    /* 0x02F6 */ s16 unk2F6;
    /* 0x02F8 */ s16 unk2F8;
    /* 0x02FA */ s16 unk2FA; //larva count?
    /* 0x02FC */ s16 unk2FC; //animTimer?
    /* 0x02FE */ s16 unk_t_2FE;
    /* 0x0300 */ ColliderCylinder colCylinder;
    /* 0x034C */ ColliderJntSph colJntSph;
    /* 0x036C */ ColliderJntSphElement colJntSphItemList[1];
    /* 0x03AC */ ColliderQuad colQuad;
} EnPeehat; // size = 0x042C

extern const ActorInit En_Peehat_InitVars;

#endif
