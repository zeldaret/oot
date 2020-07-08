/*
 * File: z_eff_ss_solder_srch_ball.c
 * Overlay: ovl_Effect_Ss_Solder_Srch_Ball
 * Description: Vision sphere for courtyard guards
 */

#include "z_eff_ss_solder_srch_ball.h"

u32 EffectSsSolderSrchBall_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsSolderSrchBall_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Solder_Srch_Ball_InitVars = {
    EFFECT_SS_SOLDER_SRCH_BALL,
    EffectSsSolderSrchBall_Init,
};

u32 EffectSsSolderSrchBall_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsSolderSrchBallInitParams* initParams = (EffectSsSolderSrchBallInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->update = EffectSsSolderSrchBall_Update;
    this->life = 100;
    this->regs[1] = initParams->unk_24;
    this->unk_3C = initParams->linkDetected;
    return 1;
}

void EffectSsSolderSrchBall_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    f32 playerPosDiffX;
    f32 playerPosDiffY;
    f32 playerPosDiffZ;
    s16* linkDetected;
    Player* player = PLAYER;

    linkDetected = this->unk_3C;

    playerPosDiffX = player->actor.posRot.pos.x - this->pos.x;
    playerPosDiffY = player->actor.posRot.pos.y - this->pos.y;
    playerPosDiffZ = player->actor.posRot.pos.z - this->pos.z;

    if (!func_8003E30C(&globalCtx->colCtx, &this->pos, 30.0f)) {
        if (sqrtf(SQ(playerPosDiffX) + SQ(playerPosDiffY) + SQ(playerPosDiffZ)) < 70.0f) {
            *linkDetected = true;
        }
    } else {
        if (this->life > 1) {
            this->life = 1;
        }
    }
}
