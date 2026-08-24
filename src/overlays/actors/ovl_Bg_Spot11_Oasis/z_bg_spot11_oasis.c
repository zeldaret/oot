/*
 * File: z_bg_spot11_oasis.c
 * Overlay: ovl_Bg_Spot11_Oasis
 * Description: Refilling Oasis (Desert Colossus)
 */

#include "z_bg_spot11_oasis.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "one_point_cutscene.h"
#include "sfx.h"
#include "sys_math3d.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "cutscene_flags.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_spot11_obj/object_spot11_obj.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgSpot11Oasis_Init(Actor* thisx, PlayState* play);
void BgSpot11Oasis_Update(Actor* thisx, PlayState* play);
void BgSpot11Oasis_Draw(Actor* thisx, PlayState* play);
void BgSpot11Oasis_SetupWait(BgSpot11Oasis* this);
void BgSpot11Oasis_Wait(BgSpot11Oasis* this, PlayState* play);
void BgSpot11Oasis_SetupRise(BgSpot11Oasis* this);
void BgSpot11Oasis_Rise(BgSpot11Oasis* this, PlayState* play);
void BgSpot11Oasis_SetupFull(BgSpot11Oasis* this);
void BgSpot11Oasis_Full(BgSpot11Oasis* this, PlayState* play);

ActorProfile Bg_Spot11_Oasis_Profile = {
    /**/ ACTOR_BG_SPOT11_OASIS,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT11_OBJ,
    /**/ sizeof(BgSpot11Oasis),
    /**/ BgSpot11Oasis_Init,
    /**/ Actor_Noop,
    /**/ BgSpot11Oasis_Update,
    /**/ NULL,
};

static s16 sOasisPolygon[][2] = {
    { 1260, 2040 }, { 1259, 1947 }, { 1135, 1860 }, { 1087, 1912 }, { 1173, 2044 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

static Vec3f sBubbleSpawnOffsets[] = {
    { 0.0f, -100.0f, 0.0f },   { 100.0f, -80.0f, -50.0f }, { -50.0f, -80.0f, -100.0f },
    { -75.0f, -90.0f, 90.0f }, { 30.0f, -100.0f, 40.0f },
};

void BgSpot11Oasis_SetWaterLevel(PlayState* play, s16 waterSurface) {
    WaterBox* waterBox = &play->colCtx.colHeader->waterBoxes[0];

    waterBox->ySurface = waterSurface;
}

s32 BgSpot11Oasis_IsPlayerInsideOasis(PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f sp58;
    Vec3f sp4C;
    Vec3f sp40;
    s32 i;

    sp58.x = sOasisPolygon[0][0];
    sp58.z = sOasisPolygon[0][1];
    sp58.y = 0.0f;

    sp4C.y = 0.0f;
    sp40.y = 0.0f;

    for (i = 1; i < ARRAY_COUNT(sOasisPolygon) - 1; i++) {
        sp4C.x = sOasisPolygon[i][0];
        sp4C.z = sOasisPolygon[i][1];
        sp40.x = sOasisPolygon[i + 1][0];
        sp40.z = sOasisPolygon[i + 1][1];
        if (Math3D_TriChkPointParaYSlopedY(&sp58, &sp4C, &sp40, player->actor.world.pos.z, player->actor.world.pos.x)) {
            return 1;
        }
    }
    return 0;
}

void BgSpot11Oasis_Init(Actor* thisx, PlayState* play) {
    BgSpot11Oasis* this = (BgSpot11Oasis*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    BgSpot11Oasis_SetupWait(this);
    this->actor.world.pos.y = -100.0f;
    BgSpot11Oasis_SetWaterLevel(play, -100);
}

void BgSpot11Oasis_SetupWait(BgSpot11Oasis* this) {
    this->actionFunc = BgSpot11Oasis_Wait;
}

void BgSpot11Oasis_Wait(BgSpot11Oasis* this, PlayState* play) {
    if (CutsceneFlags_Get(play, 5) && BgSpot11Oasis_IsPlayerInsideOasis(play)) {
        OnePointCutscene_Init(play, 4150, -99, &this->actor, CAM_ID_MAIN);
        BgSpot11Oasis_SetupRise(this);
    }
}

void BgSpot11Oasis_SetupRise(BgSpot11Oasis* this) {
    this->actionFunc = BgSpot11Oasis_Rise;
}

void BgSpot11Oasis_Rise(BgSpot11Oasis* this, PlayState* play) {
    if (Math_StepToF(&this->actor.world.pos.y, 0.0f, 0.7f)) {
        BgSpot11Oasis_SetupFull(this);
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ELF, this->actor.world.pos.x, this->actor.world.pos.y + 40.0f,
                    this->actor.world.pos.z, 0, 0, 0, FAIRY_SPAWNER);
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
    }
    BgSpot11Oasis_SetWaterLevel(play, this->actor.world.pos.y);
}

void BgSpot11Oasis_SetupFull(BgSpot11Oasis* this) {
    this->actionFunc = BgSpot11Oasis_Full;
}

void BgSpot11Oasis_Full(BgSpot11Oasis* this, PlayState* play) {
}

void BgSpot11Oasis_Update(Actor* thisx, PlayState* play) {
    BgSpot11Oasis* this = (BgSpot11Oasis*)thisx;
    s32 pad;
    u32 gameplayFrames;

    this->actionFunc(this, play);
    if (this->actionFunc == BgSpot11Oasis_Wait) {
        this->actor.draw = NULL;
        return;
    }
    this->actor.draw = BgSpot11Oasis_Draw;
    if (this->unk_150 && (this->actor.projectedPos.z < 400.0f) && (this->actor.projectedPos.z > -40.0f)) {
        gameplayFrames = play->gameplayFrames;
        if (gameplayFrames & 4) {
            Vec3f sp30;

            Math_Vec3f_Sum(&this->actor.world.pos, &sBubbleSpawnOffsets[this->bubbleSpawnIdx], &sp30);
            EffectSsBubble_Spawn(play, &sp30, 0.0f, 15.0f, 50.0f, (Rand_ZeroOne() * 0.12f) + 0.02f);
            if (Rand_ZeroOne() < 0.3f) {
                this->bubbleSpawnIdx = Rand_ZeroOne() * 4.9f;
            }
        }
    } else {
        this->unk_150 = 1;
    }
}

void BgSpot11Oasis_Draw(Actor* thisx, PlayState* play) {
    u32 gameplayFrames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot11_oasis.c", 327);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_spot11_oasis.c", 331);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - (gameplayFrames % 128),
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPDisplayList(POLY_XLU_DISP++, gDesertColossusOasisDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot11_oasis.c", 346);
}
