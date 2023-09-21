/*
 * File: z_bg_spot00_hanebasi.c
 * Overlay: ovl_Bg_Spot00_Hanebasi
 * Description: Hyrule Field Drawbridge and Torches
 */

#include "z_bg_spot00_hanebasi.h"
#include "assets/objects/object_spot00_objects/object_spot00_objects.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define FLAGS ACTOR_FLAG_4

typedef enum {
    /* -1 */ DT_DRAWBRIDGE = -1,
    /*  0 */ DT_CHAIN_1,
    /*  1 */ DT_CHAIN_2
} DrawbridgeType;

void BgSpot00Hanebasi_Init(Actor* thisx, PlayState* play);
void BgSpot00Hanebasi_Destroy(Actor* thisx, PlayState* play);
void BgSpot00Hanebasi_Update(Actor* thisx, PlayState* play);
void BgSpot00Hanebasi_Draw(Actor* thisx, PlayState* play);

void BgSpot00Hanebasi_DrawbridgeWait(BgSpot00Hanebasi* this, PlayState* play);
void BgSpot00Hanebasi_DrawbridgeRiseAndFall(BgSpot00Hanebasi* this, PlayState* play);
void BgSpot00Hanebasi_SetTorchLightInfo(BgSpot00Hanebasi* this, PlayState* play);

ActorInit Bg_Spot00_Hanebasi_InitVars = {
    ACTOR_BG_SPOT00_HANEBASI,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_SPOT00_OBJECTS,
    sizeof(BgSpot00Hanebasi),
    (ActorFunc)BgSpot00Hanebasi_Init,
    (ActorFunc)BgSpot00Hanebasi_Destroy,
    (ActorFunc)BgSpot00Hanebasi_Update,
    (ActorFunc)BgSpot00Hanebasi_Draw,
};

static f32 sTorchFlameScale = 0.0f;

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 550, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 5000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgSpot00Hanebasi_Init(Actor* thisx, PlayState* play) {
    BgSpot00Hanebasi* this = (BgSpot00Hanebasi*)thisx;
    s32 pad;
    Vec3f chainPos;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);

    if (this->dyna.actor.params == DT_DRAWBRIDGE) {
        CollisionHeader_GetVirtual(&gHyruleFieldCastleDrawbridgeCol, &colHeader);
    } else {
        CollisionHeader_GetVirtual(&gHyruleFieldCastleDrawbridgeChainsCol, &colHeader);
    }

    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.actor.params == DT_DRAWBRIDGE) {
        if (LINK_IS_ADULT && !IS_CUTSCENE_LAYER) {
            Actor_Kill(&this->dyna.actor);
            return;
        }

        if ((gSaveContext.sceneLayer != 6) &&
            ((gSaveContext.sceneLayer == 4) || (gSaveContext.sceneLayer == 5) || (!LINK_IS_ADULT && !IS_DAY))) {
            this->dyna.actor.shape.rot.x = -0x4000;
        } else {
            this->dyna.actor.shape.rot.x = 0;
        }

        if (gSaveContext.sceneLayer != 6) {
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY) &&
                CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE) && !GET_EVENTCHKINF(EVENTCHKINF_80)) {
                this->dyna.actor.shape.rot.x = -0x4000;
            }
        }

        chainPos.y =
            (10.0f * Math_CosS(this->dyna.actor.shape.rot.x)) - (Math_SinS(this->dyna.actor.shape.rot.x) * 400.0f);
        chainPos.z =
            (10.0f * Math_SinS(this->dyna.actor.shape.rot.x)) - (Math_CosS(this->dyna.actor.shape.rot.x) * 400.0f);
        chainPos.x =
            (158.0f * Math_CosS(this->dyna.actor.shape.rot.y)) + (Math_SinS(this->dyna.actor.shape.rot.y) * chainPos.z);
        chainPos.z = (-158.0f * Math_SinS(this->dyna.actor.shape.rot.y)) +
                     (Math_CosS(this->dyna.actor.shape.rot.y) * chainPos.z);

        if (Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_BG_SPOT00_HANEBASI,
                               this->dyna.actor.world.pos.x + chainPos.x, this->dyna.actor.world.pos.y + chainPos.y,
                               this->dyna.actor.world.pos.z + chainPos.z,
                               ((this->dyna.actor.shape.rot.x == 0) ? 0 : 0xF020), this->dyna.actor.shape.rot.y, 0,
                               DT_CHAIN_1) == NULL) {
            Actor_Kill(&this->dyna.actor);
        }

        this->actionFunc = BgSpot00Hanebasi_DrawbridgeWait;
        this->destAngle = 40;
    } else if (this->dyna.actor.params == DT_CHAIN_1) {
        if (Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_BG_SPOT00_HANEBASI,
                               this->dyna.actor.world.pos.x - (Math_CosS(this->dyna.actor.shape.rot.y) * 316.0f),
                               this->dyna.actor.world.pos.y,
                               this->dyna.actor.world.pos.z + (Math_SinS(this->dyna.actor.shape.rot.y) * 316.0f),
                               this->dyna.actor.shape.rot.x, this->dyna.actor.shape.rot.y, 0, DT_CHAIN_2) == NULL) {
            Actor_Kill(&this->dyna.actor);
            Actor_Kill(this->dyna.actor.parent);
        }

        this->actionFunc = BgSpot00Hanebasi_SetTorchLightInfo;
    } else {
        this->actionFunc = BgSpot00Hanebasi_SetTorchLightInfo;
    }

    if (this->dyna.actor.params >= DT_CHAIN_1) {
        this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
        Lights_PointGlowSetInfo(&this->lightInfo, ((this->dyna.actor.params == DT_CHAIN_1) ? 260.0f : -260.0f), 168,
                                690, 255, 255, 0, 0);
    }
}

void BgSpot00Hanebasi_Destroy(Actor* thisx, PlayState* play) {
    BgSpot00Hanebasi* this = (BgSpot00Hanebasi*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);

    if (this->dyna.actor.params >= DT_CHAIN_1) {
        LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    }
}

void BgSpot00Hanebasi_DrawbridgeWait(BgSpot00Hanebasi* this, PlayState* play) {
    BgSpot00Hanebasi* child = (BgSpot00Hanebasi*)this->dyna.actor.child;

    if (!IS_CUTSCENE_LAYER && CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY) &&
        CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE) && !GET_EVENTCHKINF(EVENTCHKINF_80)) {
        return;
    }

    if ((this->dyna.actor.shape.rot.x != 0) && (CutsceneFlags_Get(play, 0) || (!IS_CUTSCENE_LAYER && IS_DAY))) {
        this->actionFunc = BgSpot00Hanebasi_DrawbridgeRiseAndFall;
        this->destAngle = 0;
        child->destAngle = 0;
    } else if ((this->dyna.actor.shape.rot.x == 0) && !IS_CUTSCENE_LAYER && !LINK_IS_ADULT && !IS_DAY) {
        this->actionFunc = BgSpot00Hanebasi_DrawbridgeRiseAndFall;
        this->destAngle = -0x4000;
        child->destAngle = -0xFE0;
    }
}

void BgSpot00Hanebasi_DoNothing(BgSpot00Hanebasi* this, PlayState* play) {
}

void BgSpot00Hanebasi_DrawbridgeRiseAndFall(BgSpot00Hanebasi* this, PlayState* play) {
    BgSpot00Hanebasi* child;
    Actor* childsChild;
    s16 angle = 80;

    if (Math_ScaledStepToS(&this->dyna.actor.shape.rot.x, this->destAngle, 80)) {
        this->actionFunc = BgSpot00Hanebasi_DrawbridgeWait;
    }

    if (this->dyna.actor.shape.rot.x >= -0x27D8) {
        child = (BgSpot00Hanebasi*)this->dyna.actor.child;
        angle *= 0.4f;
        Math_ScaledStepToS(&child->dyna.actor.shape.rot.x, child->destAngle, angle);
        childsChild = child->dyna.actor.child;
        Math_ScaledStepToS(&childsChild->shape.rot.x, child->destAngle, angle);
    }

    if (this->destAngle < 0) {
        if (this->actionFunc == BgSpot00Hanebasi_DrawbridgeWait) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BRIDGE_CLOSE_STOP);
        } else {
            func_8002F974(&this->dyna.actor, NA_SE_EV_BRIDGE_CLOSE - SFX_FLAG);
        }
    } else {
        if (this->actionFunc == BgSpot00Hanebasi_DrawbridgeWait) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
        } else {
            func_8002F974(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN - SFX_FLAG);
        }
    }
}

void BgSpot00Hanebasi_SetTorchLightInfo(BgSpot00Hanebasi* this, PlayState* play) {
    u8 lightColor = (u8)(Rand_ZeroOne() * 127.0f) + 128; // intensity of the red and green channels

    Lights_PointGlowSetInfo(&this->lightInfo, (this->dyna.actor.params == DT_CHAIN_1) ? 260.0f : -260.0f,
                            (5000.0f * sTorchFlameScale) + 128.0f, 690, lightColor, lightColor, 0,
                            sTorchFlameScale * 37500.0f);
}

void BgSpot00Hanebasi_Update(Actor* thisx, PlayState* play) {
    BgSpot00Hanebasi* this = (BgSpot00Hanebasi*)thisx;
    s32 pad;

    this->actionFunc(this, play);

    if (this->dyna.actor.params == DT_DRAWBRIDGE) {
        if (play->sceneId == SCENE_HYRULE_FIELD) {
            if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY) &&
                CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE) && !GET_EVENTCHKINF(EVENTCHKINF_80) && LINK_IS_CHILD) {
                Player* player = GET_PLAYER(play);

                if ((player->actor.world.pos.x > -450.0f) && (player->actor.world.pos.x < 450.0f) &&
                    (player->actor.world.pos.z > 1080.0f) && (player->actor.world.pos.z < 1700.0f) &&
                    (!(Play_InCsMode(play)))) {
                    SET_EVENTCHKINF(EVENTCHKINF_80);
                    Flags_SetEventChkInf(EVENTCHKINF_82);
                    this->actionFunc = BgSpot00Hanebasi_DoNothing;
                    func_8002DF54(play, &player->actor, PLAYER_CSMODE_8);
                    play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                    gSaveContext.nextCutsceneIndex = 0xFFF1;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                } else if (Actor_IsFacingAndNearPlayer(&this->dyna.actor, 3000.0f, 0x7530)) {
                    play->envCtx.stormRequest = STORM_REQUEST_START;
                }
            }
        }

        if (gSaveContext.sceneLayer == 5) {
            u16 dayTime;
            s32 tmp;

            if (gTimeSpeed == 50) {
                tmp = CLOCK_TIME(20, 0) + 1;

                if (gSaveContext.save.dayTime > CLOCK_TIME(20, 0) + 1) {
                    tmp = CLOCK_TIME(20, 0) + 1 + 0x10000;
                }

                gTimeSpeed = (tmp - gSaveContext.save.dayTime) * (1.0f / 350.0f);
            }

            dayTime = gSaveContext.save.dayTime;

            if ((dayTime > CLOCK_TIME(4, 0)) && (dayTime < CLOCK_TIME(4, 30)) && (gSaveContext.sceneLayer == 5)) {
                gTimeSpeed = 0;
            }
        }
    }
}

void BgSpot00Hanebasi_DrawTorches(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    f32 angle;
    s32 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 633);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    if (IS_CUTSCENE_LAYER) {
        sTorchFlameScale = 0.008f;
    } else {
        sTorchFlameScale = ((thisx->shape.rot.x * -1) - 0x2000) * (1.0f / 1024000.0f);
    }

    angle = BINANG_TO_RAD((s16)(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x8000));
    gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 255, 255, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);

    for (i = 0; i < 2; i++) {
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 64, 1, 0,
                                    ((play->gameplayFrames + i) * -20) & 0x1FF, 32, 128));

        Matrix_Translate((i == 0) ? 260.0f : -260.0f, 128.0f, 690.0f, MTXMODE_NEW);
        Matrix_RotateY(angle, MTXMODE_APPLY);
        Matrix_Scale(sTorchFlameScale, sTorchFlameScale, sTorchFlameScale, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 674),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 681);
}

void BgSpot00Hanebasi_Draw(Actor* thisx, PlayState* play) {
    Vec3f basePos = { 158.0f, 10.0f, 400.0f };
    Vec3f newPos;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 698);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 702),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (thisx->params == DT_DRAWBRIDGE) {
        gSPDisplayList(POLY_OPA_DISP++, gHyruleFieldCastleDrawbridgeDL);

        Matrix_MultVec3f(&basePos, &newPos);
        thisx->child->world.pos.x = newPos.x;
        thisx->child->world.pos.y = newPos.y;
        thisx->child->world.pos.z = newPos.z;
        basePos.x *= -1.0f;

        Matrix_MultVec3f(&basePos, &newPos);
        thisx->child->child->world.pos.x = newPos.x;
        thisx->child->child->world.pos.y = newPos.y;
        thisx->child->child->world.pos.z = newPos.z;

        if (gSaveContext.sceneLayer != 12) {
            if (IS_CUTSCENE_LAYER || (!LINK_IS_ADULT && (thisx->shape.rot.x < -0x2000))) {
                BgSpot00Hanebasi_DrawTorches(thisx, play);
            } else {
                sTorchFlameScale = 0.0f;
            }
        }
    } else {
        gSPDisplayList(POLY_OPA_DISP++, gHyruleFieldCastleDrawbridgeChainsDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot00_hanebasi.c", 733);
}
