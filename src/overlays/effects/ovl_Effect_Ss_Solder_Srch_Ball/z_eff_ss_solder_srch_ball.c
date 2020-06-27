#include "z_eff_ss_solder_srch_ball.h"

u32 EffSsSolderSrchBall_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, EffSsSolderSrchBallInitParams* initParams);
void EffSsSolderSrchBall_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Solder_Srch_Ball_InitVars = {
    EFFECT_SS_SOLDER_SRCH_BALL,
    EffSsSolderSrchBall_Init,

};

u32 EffSsSolderSrchBall_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, EffSsSolderSrchBallInitParams* initParams) {
    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->update = EffSsSolderSrchBall_Update;
    this->life = 100;
    this->regs[1] = initParams->unk_24;
    this->unk_3C = initParams->seenLink;
    return 1;
}

void EffSsSolderSrchBall_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    f32 playerPosDiffX;
    f32 playerPosDiffY;
    f32 playerPosDiffZ;
    s16* seenLink;
    Player* player = PLAYER;

    seenLink = this->unk_3C;

    playerPosDiffX = player->actor.posRot.pos.x - this->pos.x;
    playerPosDiffY = player->actor.posRot.pos.y - this->pos.y;
    playerPosDiffZ = player->actor.posRot.pos.z - this->pos.z;

    // if the ball does not hit a wall (something blocks it) and the ball is within 70 units of link, set seen to true
    if (!func_8003E30C(&globalCtx->colCtx, &this->pos, 30.0f)) {
        if (sqrtf(SQ(playerPosDiffX) + SQ(playerPosDiffY) + SQ(playerPosDiffZ)) < 70.0f) {
            *seenLink = true;
        }
    } else {
        if (this->life > 1) {
            this->life = 1;
        }
    }
}
