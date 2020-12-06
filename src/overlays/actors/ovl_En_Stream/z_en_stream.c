/*
 * File: z_en_stream.c
 * Overlay: ovl_En_Stream
 * Description: Water Vortex
 */

#include "z_en_stream.h"

#define FLAGS 0x00000010

#define THIS ((EnStream*)thisx)

void EnStream_Init(Actor* thisx, GlobalContext* globalCtx);
void EnStream_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnStream_Update(Actor* thisx, GlobalContext* globalCtx);
void EnStream_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B0BAC8(EnStream* this, GlobalContext* globalCtx);
void func_80B0B934(EnStream* this, GlobalContext* globalCtx);
s32 func_80B0B81C(PosRot* vortexPosRot, PosRot* playerPosRot, Vec3f* v, f32 vortexYScale);

extern UNK_TYPE D_06000950;

const ActorInit En_Stream_InitVars = {
    ACTOR_EN_STREAM,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_STREAM,
    sizeof(EnStream),
    (ActorFunc)EnStream_Init,
    (ActorFunc)EnStream_Destroy,
    (ActorFunc)EnStream_Update,
    (ActorFunc)EnStream_Draw,
};

// sInitChain
InitChainEntry D_80B0BCC0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 20, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B7A0.s")
void func_80B0B7A0(EnStream* this, EnStreamActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Init.s")
void EnStream_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnStream* this = THIS;

    this->unk_150 = (s32)(thisx->params & 0xFF);
    Actor_ProcessInitChain(thisx, &D_80B0BCC0);
    if ((this->unk_150 != 0) && (this->unk_150 == 1)) {
        thisx->scale.y = 0.01f;
    }
    func_80B0B7A0(this, &func_80B0BAC8);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Destroy.s")
void EnStream_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

#ifdef NONMATCHING
// regalloc differences
s32 func_80B0B81C(PosRot *vortexPosRot, PosRot *playerPosRot, Vec3f *v, f32 vortexYScale) {
    s32 ret = 0;
    f32 smallConstant = 28;
    f32 lowerBounds = 0 * vortexYScale * 50;
    f32 upperBounds = 160 * vortexYScale * 50;
    f32 xzDist;

    v->x = playerPosRot->pos.x - vortexPosRot->pos.x;
    v->y = playerPosRot->pos.y - vortexPosRot->pos.y;
    v->z = playerPosRot->pos.z - vortexPosRot->pos.z;
    xzDist = sqrtf(SQ(v->x) + SQ(v->z));
    if (lowerBounds <= v->y && v->y <= upperBounds) {
        v->y = v->y - lowerBounds;
        if (xzDist <= (((75 - smallConstant) * (v->y / (upperBounds - lowerBounds))) + smallConstant)) {
            ret = 1;
        }
    }
    if ((v->y <= lowerBounds) && (xzDist <= 28)) {
        ret = 2;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B81C.s")
#endif

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B934.s")
void func_80B0B934(EnStream* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad48;
    Vec3f sp3C;
    f32 sp38;
    f32 sp34;
    s32 pad30;
    s32 pad2C;

    if (func_80B0B81C(&this->actor.posRot, &player->actor.posRot, &sp3C, this->actor.scale.y) != 0) {
        sp38 = sqrtf(SQ(sp3C.x) + SQ(sp3C.z));
        sp34 = player->actor.posRot.pos.y - (this->actor.posRot.pos.y - 90.0f);
        player->windDirection = Math_atan2f(-sp3C.x, -sp3C.z) * 10430.378f;
        if (3.0f < sp38) {
            Math_SmoothScaleMaxMinF(&player->windSpeed, 3.0f, 0.5f, sp38, 0.0f);
        } else {
            player->windSpeed = 0.0f;
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 0.5f, 3.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 0.5f, 3.0f, 0.0f);
        }
        if (0.0f < sp34) {
            Math_SmoothScaleMaxMinF(&player->actor.velocity.y, -3.0f, 0.7f, sp34, 0.0f);
            if (sp3C.y < -70.0f) {
                player->stateFlags2 |= 0x80000000;
            }
        }
    } else {
        func_80B0B7A0(this, &func_80B0BAC8);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0BAC8.s")
void func_80B0BAC8(EnStream* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 pad;
    Vec3f sp1C;

    if (func_80B0B81C(&this->actor.posRot, &player->actor.posRot, &sp1C, this->actor.scale.y) != 0) {
        func_80B0B7A0(this, &func_80B0B934);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Update.s")
void EnStream_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnStream* this = THIS;

    this->actionFunc(this, globalCtx);
    func_8002F948(thisx, NA_SE_EV_WHIRLPOOL - SFX_FLAG);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/EnStream_Draw.s")
