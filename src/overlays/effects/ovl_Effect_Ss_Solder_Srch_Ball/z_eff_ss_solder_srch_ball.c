/*
 * File: z_eff_ss_solder_srch_ball.c
 * Overlay: ovl_Effect_Ss_Solder_Srch_Ball
 * Description: Vision sphere for courtyard guards
 */

#include "z_eff_ss_solder_srch_ball.h"

#include "z64bgcheck.h"
#include "z64effect.h"
#include "z64play.h"
#include "z64player.h"

#define rUnused regs[1]

u32 EffectSsSolderSrchBall_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsSolderSrchBall_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsProfile Effect_Ss_Solder_Srch_Ball_Profile = {
    EFFECT_SS_SOLDER_SRCH_BALL,
    EffectSsSolderSrchBall_Init,
};

u32 EffectSsSolderSrchBall_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsSolderSrchBallInitParams* initParams = (EffectSsSolderSrchBallInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->update = EffectSsSolderSrchBall_Update;
    this->life = 100;
    this->rUnused = initParams->unused;
    this->actor = (Actor*)initParams->linkDetected; // actor field was incorrectly used as a pointer to something else
    return 1;
}

void EffectSsSolderSrchBall_Update(PlayState* play, u32 index, EffectSs* this) {
    s32 pad;
    f32 playerPosDiffX;
    f32 playerPosDiffY;
    f32 playerPosDiffZ;
    s16* linkDetected;
    Player* player = GET_PLAYER(play);

    linkDetected = (s16*)this->actor;

    playerPosDiffX = player->actor.world.pos.x - this->pos.x;
    playerPosDiffY = player->actor.world.pos.y - this->pos.y;
    playerPosDiffZ = player->actor.world.pos.z - this->pos.z;

    if (!BgCheck_SphVsFirstPoly(&play->colCtx, &this->pos, 30.0f)) {
        if (sqrtf(SQ(playerPosDiffX) + SQ(playerPosDiffY) + SQ(playerPosDiffZ)) < 70.0f) {
            *linkDetected = true;
        }
    } else {
        if (this->life > 1) {
            this->life = 1;
        }
    }
}
