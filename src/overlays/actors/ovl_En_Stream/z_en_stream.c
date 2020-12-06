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
void EnStream_WaitForPlayer(EnStream* this, GlobalContext* globalCtx);
void EnStream_SuckPlayer(EnStream* this, GlobalContext* globalCtx);
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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 20, ICHAIN_STOP),
};

void EnStream_SetupAction(EnStream* this, EnStreamActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnStream_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnStream* this = THIS;

    this->unk_150 = thisx->params & 0xFF;
    Actor_ProcessInitChain(thisx, sInitChain);
    if ((this->unk_150 != 0) && (this->unk_150 == 1)) {
        thisx->scale.y = 0.01f;
    }
    EnStream_SetupAction(this, &EnStream_WaitForPlayer);
}

void EnStream_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

#ifdef NONMATCHING
// regalloc differences
s32 EnStream_PlayerInRange(PosRot* vortexPosRot, PosRot* playerPosRot, Vec3f* posRotDifference, f32 vortexYScale) {
    s32 ret = 0;
    f32 smallConstant = 28;
    f32 lowerBounds = 0 * vortexYScale * 50;
    f32 upperBounds = 160 * vortexYScale * 50;
    f32 xzDist;

    posRotDifference->x = playerPosRot->pos.x - vortexPosRot->pos.x;
    posRotDifference->y = playerPosRot->pos.y - vortexPosRot->pos.y;
    posRotDifference->z = playerPosRot->pos.z - vortexPosRot->pos.z;
    xzDist = sqrtf(SQ(posRotDifference->x) + SQ(posRotDifference->z));
    if (lowerBounds <= posRotDifference->y && posRotDifference->y <= upperBounds) {
        posRotDifference->y = posRotDifference->y - lowerBounds;
        if (xzDist <= (((75 - smallConstant) * (posRotDifference->y / (upperBounds - lowerBounds))) + 28)) {
            ret = 1;
        }
    }
    if ((posRotDifference->y <= lowerBounds) && (xzDist <= 28)) {
        ret = 2;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Stream/func_80B0B81C.s")
#endif

void EnStream_SuckPlayer(EnStream* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad48;
    Vec3f posRotDifference;
    f32 xzDist;
    f32 yDistWithOffset;
    s32 pad30;
    s32 pad2C;

    if (func_80B0B81C(&this->actor.posRot, &player->actor.posRot, &posRotDifference, this->actor.scale.y) != 0) {
        xzDist = sqrtf(SQ(posRotDifference.x) + SQ(posRotDifference.z));
        yDistWithOffset = player->actor.posRot.pos.y - (this->actor.posRot.pos.y - 90.0f);
        player->windDirection = Math_atan2f(-posRotDifference.x, -posRotDifference.z) * 10430.378f;
        if (3.0f < xzDist) {
            Math_SmoothScaleMaxMinF(&player->windSpeed, 3.0f, 0.5f, xzDist, 0.0f);
        } else {
            player->windSpeed = 0.0f;
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 0.5f, 3.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 0.5f, 3.0f, 0.0f);
        }
        if (0.0f < yDistWithOffset) {
            Math_SmoothScaleMaxMinF(&player->actor.velocity.y, -3.0f, 0.7f, yDistWithOffset, 0.0f);
            if (posRotDifference.y < -70.0f) {
                player->stateFlags2 |= 0x80000000;
            }
        }
    } else {
        EnStream_SetupAction(this, &EnStream_WaitForPlayer);
    }
}

void EnStream_WaitForPlayer(EnStream* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 pad;
    Vec3f temp;

    if (func_80B0B81C(&this->actor.posRot, &player->actor.posRot, &temp, this->actor.scale.y) != 0) {
        EnStream_SetupAction(this, &EnStream_SuckPlayer);
    }
}

void EnStream_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnStream* this = THIS;

    this->actionFunc(this, globalCtx);
    func_8002F948(thisx, NA_SE_EV_WHIRLPOOL - SFX_FLAG);
}

void EnStream_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 multipliedFrames;
    u32 frames = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_stream.c", 295);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_stream.c", 299),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    multipliedFrames = frames * 20;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, frames * 30, -multipliedFrames, 0x40, 0x40, 1,
                                multipliedFrames, -multipliedFrames, 0x40, 0x40));
    gSPDisplayList(POLY_XLU_DISP++, &D_06000950);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_stream.c", 310);
}
