/*
 * File: z_en_stream.c
 * Overlay: ovl_En_Stream
 * Description: Water Vortex
 */

#include "z_en_stream.h"
#include "assets/objects/object_stream/object_stream.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnStream_Init(Actor* thisx, PlayState* play);
void EnStream_Destroy(Actor* thisx, PlayState* play);
void EnStream_Update(Actor* thisx, PlayState* play);
void EnStream_Draw(Actor* thisx, PlayState* play);
void EnStream_WaitForPlayer(EnStream* this, PlayState* play);

ActorProfile En_Stream_Profile = {
    /**/ ACTOR_EN_STREAM,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_STREAM,
    /**/ sizeof(EnStream),
    /**/ EnStream_Init,
    /**/ EnStream_Destroy,
    /**/ EnStream_Update,
    /**/ EnStream_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 20, ICHAIN_STOP),
};

void EnStream_SetupAction(EnStream* this, EnStreamActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnStream_Init(Actor* thisx, PlayState* play) {
    EnStream* this = (EnStream*)thisx;

    this->unk_150 = PARAMS_GET_U(thisx->params, 0, 8);
    Actor_ProcessInitChain(thisx, sInitChain);
    if ((this->unk_150 != 0) && (this->unk_150 == 1)) {
        thisx->scale.y = 0.01f;
    }
    EnStream_SetupAction(this, EnStream_WaitForPlayer);
}

void EnStream_Destroy(Actor* thisx, PlayState* play) {
}

// Checks if the player is in range of the vortex
s32 func_80B0B81C(Vec3f* vortexPosRot, Vec3f* playerPosRot, Vec3f* posDifference, f32 vortexYScale) {
    s32 ret = 0;
    f32 smallConstant = 28.0f;
    f32 upperBounds = 160 * vortexYScale * 50.0f;
    f32 lowerBounds = 0 * vortexYScale * 50.0f;
    f32 xzDist;
    f32 range;

    posDifference->x = playerPosRot->x - vortexPosRot->x;
    posDifference->y = playerPosRot->y - vortexPosRot->y;
    posDifference->z = playerPosRot->z - vortexPosRot->z;
    xzDist = sqrtf(SQ(posDifference->x) + SQ(posDifference->z));

    if (lowerBounds <= posDifference->y && posDifference->y <= upperBounds) {
        posDifference->y -= lowerBounds;

        range = ((75.0f - smallConstant) * (posDifference->y / (upperBounds - lowerBounds))) + 28.0f;
        if (xzDist <= range) {
            ret = 1;
        }
    }

    if ((posDifference->y <= lowerBounds) && (xzDist <= 28.0f)) {
        ret = 2;
    }

    return ret;
}

void EnStream_SuckPlayer(EnStream* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad48;
    Vec3f posDifference;
    f32 xzDist;
    f32 yDistWithOffset;
    s32 pad30;
    s32 pad2C;

    if (func_80B0B81C(&this->actor.world.pos, &player->actor.world.pos, &posDifference, this->actor.scale.y) != 0) {
        xzDist = sqrtf(SQ(posDifference.x) + SQ(posDifference.z));
        yDistWithOffset = player->actor.world.pos.y - (this->actor.world.pos.y - 90.0f);
        player->pushedYaw = RAD_TO_BINANG(Math_FAtan2F(-posDifference.x, -posDifference.z));
        if (xzDist > 3.0f) {
            Math_SmoothStepToF(&player->pushedSpeed, 3.0f, 0.5f, xzDist, 0.0f);
        } else {
            player->pushedSpeed = 0.0f;
            Math_SmoothStepToF(&player->actor.world.pos.x, this->actor.world.pos.x, 0.5f, 3.0f, 0.0f);
            Math_SmoothStepToF(&player->actor.world.pos.z, this->actor.world.pos.z, 0.5f, 3.0f, 0.0f);
        }
        if (yDistWithOffset > 0.0f) {
            Math_SmoothStepToF(&player->actor.velocity.y, -3.0f, 0.7f, yDistWithOffset, 0.0f);
            if (posDifference.y < -70.0f) {
                player->stateFlags2 |= PLAYER_STATE2_31;
            }
        }
    } else {
        EnStream_SetupAction(this, EnStream_WaitForPlayer);
    }
}

void EnStream_WaitForPlayer(EnStream* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 pad;
    Vec3f temp;

    if (func_80B0B81C(&this->actor.world.pos, &player->actor.world.pos, &temp, this->actor.scale.y) != 0) {
        EnStream_SetupAction(this, EnStream_SuckPlayer);
    }
}

void EnStream_Update(Actor* thisx, PlayState* play) {
    EnStream* this = (EnStream*)thisx;

    this->actionFunc(this, play);
    Actor_PlaySfx_FlaggedCentered2(thisx, NA_SE_EV_WHIRLPOOL - SFX_FLAG);
}

void EnStream_Draw(Actor* thisx, PlayState* play) {
    u32 multipliedFrames;
    u32 frames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_stream.c", 295);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_stream.c", 299);
    multipliedFrames = frames * 20;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, frames * 30, -multipliedFrames, 0x40, 0x40, 1,
                                multipliedFrames, -multipliedFrames, 0x40, 0x40));
    gSPDisplayList(POLY_XLU_DISP++, object_stream_DL_000950);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_stream.c", 310);
}
