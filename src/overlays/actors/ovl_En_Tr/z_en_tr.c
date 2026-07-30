/*
 * File: z_en_tr.c
 * Overlay: ovl_En_Tr
 * Description: Koume and Kotake
 */

#include "z_en_tr.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_math.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "save.h"

#include "assets/objects/object_tr/object_tr.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnTr_Init(Actor* thisx, PlayState* play);
void EnTr_Destroy(Actor* thisx, PlayState* play);
void EnTr_Update(Actor* thisx, PlayState* play);
void EnTr_Draw(Actor* thisx, PlayState* play);

void func_80B22F1C(EnTr* this, PlayState* play);
void func_80B234D4(EnTr* this, PlayState* play);
void func_80B23820(EnTr* this, PlayState* play);
void func_80B23A88(EnTr* this, PlayState* play);
void func_80B24038(EnTr* this, PlayState* play, s32 cueChannel);
void EnTr_SetRotFromCue(EnTr* this, PlayState* play, s32 cueChannel);
void EnTr_SetStartPosRotFromCue(EnTr* this, PlayState* play, s32 cueChannel);

ActorProfile En_Tr_Profile = {
    /**/ ACTOR_EN_TR,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_TR,
    /**/ sizeof(EnTr),
    /**/ EnTr_Init,
    /**/ EnTr_Destroy,
    /**/ EnTr_Update,
    /**/ EnTr_Draw,
};
static AnimationHeader* D_80B24360[2] = {
    &gKotakeKoumeStandingBroomOverRightShoulderAnim,
    &gKotakeKoumeStandingBroomOverLeftShoulderAnim,
};
static AnimationHeader* D_80B24368[2] = {
    &gKotakeKoumeLookOverLeftShoulderAnim,
    &gKotakeKoumeLookOverRightShoulderAnim,
};
static AnimationHeader* D_80B24370[2] = {
    &gKotakeKoumeLookingOverLeftShoulderAnim,
    &gKotakeKoumeLookingOverRightShoulderAnim,
};
static AnimationHeader* D_80B24378[2] = {
    &gKotakeKoumeFlyAnim,
    &gKotakeKoumeFlyAnim,
};
static AnimationHeader* D_80B24380[2] = {
    &gKotakeKoumeCastMagicAnim,
    &gKotakeKoumeCastMagicAnim,
};
static f32 D_80B24388[7] = { 0.0f, 20.0f, -30.0f, 20.0f, -20.0f, -20.0f, 30.0f };
static f32 D_80B243A4[7] = { 0.0f, 30.0f, 0.0f, -30.0f, 30.0f, -30.0f, 0.0f };
static Color_RGBA8 D_80B243C0[4] = {
    { 0xFF, 0xC8, 0, 0xFF },
    { 0xFF, 0, 0, 0xFF },
    { 0xFF, 0xFF, 0xFF, 0xFF },
    { 0, 0, 0xFF, 0xFF },
};
static void* D_80B243D0[3] = {
    gKotakeKoumeEyeOpenTex,
    gKotakeKoumeEyeHalfTex,
    gKotakeKoumeEyeClosedTex,
};
static Vec3f D_80B243DC = { 2300.0f, 0.0f, -600.0f };
static Vec3f D_80B243E8 = { 0.0f, 0.0f, 0.0f };

void EnTr_SetupAction(EnTr* this, EnTrActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnTr_Init(Actor* thisx, PlayState* play) {
    EnTr* this = (EnTr*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    EnTr_SetupAction(this, func_80B22F1C);
    this->unk2D4 = 0;
    this->actor.child = NULL;
    Actor_SetScale(&this->actor, 0.01f);
    switch (this->actor.params) {
        case 0:
            SkelAnime_InitFlex(play, &this->unk14C, &gKoumeSkel, &gKotakeKoumeStandingBroomOverRightShoulderAnim,
                               this->unk190, this->unk232, KOTAKE_KOUME_LIMB_MAX);
            Animation_PlayOnce(&this->unk14C, &gKotakeKoumeStandingBroomOverRightShoulderAnim);
            this->unk2E4 = NULL;
            EnTr_SetupAction(this, func_80B23A88);
            this->cueChannel = 3;
            break;

        case 1:
            SkelAnime_InitFlex(play, &this->unk14C, &gKotakeSkel, &gKotakeKoumeStandingBroomOverLeftShoulderAnim,
                               this->unk190, this->unk232, KOTAKE_KOUME_LIMB_MAX);
            Animation_PlayOnce(&this->unk14C, &gKotakeKoumeStandingBroomOverLeftShoulderAnim);
            this->unk2E4 = NULL;
            EnTr_SetupAction(this, func_80B23A88);
            this->cueChannel = 2;
            break;

        default:
            ASSERT(0, "0", "../z_en_tr.c", 0x115);
            break;
    }
}

void EnTr_Destroy(Actor* thisx, PlayState* play) {
}

void func_80B22E6C(EnTr* this, PlayState* play) {
    if ((this->unk2D6 == 0xB) && ((this->actor.params != 0) || (gSaveContext.sceneLayer == 6))) {
        SFX_PLAY_CENTERED(NA_SE_EN_TWINROBA_SHOOT_VOICE);
    }
    if (this->unk2D6 > 0) {
        this->unk2D6--;
    } else {
        if (this->actor.child != NULL) {
            this->actor.child = NULL;
        }
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
}

void func_80B22F1C(EnTr* this, PlayState* play) {
}

void func_80B22F28(EnTr* this, PlayState* play) {
    CsCmdActorCue* temp_v0;

    if (play->csCtx.state != CS_STATE_IDLE) {
        temp_v0 = play->csCtx.actorCues[this->cueChannel];
        if (temp_v0 != NULL) {
            switch (temp_v0->id) {
                case 4:
                    Actor_SetScale(&this->actor, 0.01f);
                    EnTr_SetupAction(this, func_80B234D4);
                    this->unk2D6 = 0x18;
                    Actor_PlaySfx(&this->actor, NA_SE_EN_PO_DEAD2);
                    break;

                case 6:
                    Animation_Change(&this->unk14C, D_80B24380[this->actor.params], 1.0f, 0.0f,
                                     Animation_GetLastFrame(D_80B24380[this->actor.params]), ANIMMODE_ONCE, -5.0f);
                    EnTr_SetupAction(this, func_80B22E6C);
                    this->unk2E4 = D_80B24378[this->actor.params];
                    this->unk2D6 = 0x27;
                    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DEMO_6K, this->actor.world.pos.x,
                                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0,
                                       this->actor.params + 9);
                    Actor_PlaySfx(&this->actor, NA_SE_EN_FANTOM_MASIC1);
                    break;

                default:
                    func_80B24038(this, play, this->cueChannel);
                    EnTr_SetRotFromCue(this, play, this->cueChannel);
                    break;
            }
            Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
        }
    }
}

void func_80B230D8(EnTr* this, PlayState* play) {
    Vec3f sp34;
    CsCmdActorCue* temp_v0;

    sp34 = this->actor.world.pos;
    if (play->csCtx.state != CS_STATE_IDLE) {
        temp_v0 = play->csCtx.actorCues[this->cueChannel];
        if (temp_v0 != NULL) {
            if (temp_v0->id == 8) {
                func_80B24038(this, play, this->cueChannel);
                this->actor.world.rot.y = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
                Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.world.rot.y, 0xA, 0x400, 0x100);
                this->actor.world.rot.y = this->actor.shape.rot.y;
            } else {
                EnTr_SetStartPosRotFromCue(this, play, this->cueChannel);
                this->actor.world.pos.x += Math_SinS(this->unk2D6) * 150.0f;
                this->actor.world.pos.y += -100.0f;
                this->actor.world.pos.z += Math_CosS(this->unk2D6) * 150.0f;
                this->actor.shape.rot.y = (s16)this->unk2D6 + 0x4000;
                this->unk2D6 += 0x400;
                this->actor.velocity.x = this->actor.world.pos.x - sp34.x;
                this->actor.velocity.y = this->actor.world.pos.y - sp34.y;
                this->actor.velocity.z = this->actor.world.pos.z - sp34.z;
            }
            if (play->csCtx.curFrame < 670) {
                Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
            }
        }
    }
}

void func_80B23254(EnTr* this, PlayState* play, s32 arg2, f32 arg3, f32 arg4) {
    Vec3f sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f sp58;
    Color_RGBA8* sp54;
    Color_RGBA8* sp50;
    Vec3f sp44;
    s16 temp_s0;
    s16 sp40;

    sp44 = GET_ACTIVE_CAM(play)->eye;
    temp_s0 = Math_Vec3f_Yaw(&sp44, &this->actor.world.pos);
    sp40 = -Math_Vec3f_Pitch(&sp44, &this->actor.world.pos);
    sp64.z = 0.0f;
    sp64.x = 0.0f;
    sp70.x = arg3 * Math_SinS(temp_s0) * Math_CosS(sp40);
    sp70.y = arg3 * Math_SinS(sp40);
    sp70.z = arg3 * Math_CosS(temp_s0) * Math_CosS(sp40);
    sp64.y = 0.5f;
    sp54 = &D_80B243C0[(this->actor.params * 2) + 0];
    sp50 = &D_80B243C0[(this->actor.params * 2) + 1];
    sp58 = this->actor.world.pos;
    sp58.x -= sp70.x * 10.0f;
    sp58.y -= sp70.y * 10.0f;
    sp58.z -= sp70.z * 10.0f;
    sp7C.x = sp58.x + (D_80B24388[arg2] * arg4 * Math_CosS(temp_s0));
    sp7C.y = sp58.y + (D_80B243A4[arg2] * arg4);
    sp7C.z = sp58.z - (D_80B24388[arg2] * arg4 * Math_SinS(temp_s0));
    func_8002829C(play, &sp7C, &sp70, &sp64, sp54, sp50, 800.0f * arg4, 80.0f * arg4);
}

void func_80B234D4(EnTr* this, PlayState* play) {
    s32 temp_hi;

    if (this->unk2D6 >= 0x11) {
        this->actor.shape.rot.y = (this->actor.shape.rot.y - (this->unk2D6 * 0x28F)) + 0x3D68;
    } else if (this->unk2D6 >= 5) {
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
        this->actor.shape.rot.y = (this->actor.shape.rot.y - (this->unk2D6 * 0x28F)) + 0x3D68;
    } else if (this->unk2D6 > 0) {
        temp_hi = (this->unk2D6 * 2) % 7;
        func_80B23254(this, play, temp_hi, 5.0f, 0.2f);
        func_80B23254(this, play, (temp_hi + 1) % 7, 5.0f, 0.2f);
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
        this->actor.shape.rot.y = (this->actor.shape.rot.y - (this->unk2D6 * 0x28F)) + 0x3D68;
    } else {
        EnTr_SetupAction(this, func_80B23820);
        this->actor.draw = NULL;
    }
    if (this->unk2D6 == 4) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_BUBLE_DOWN);
    }
    if (this->unk2D6 > 0) {
        this->unk2D6--;
    }
}

void func_80B23690(EnTr* this, PlayState* play) {
    s32 temp_hi;

    if (this->unk2D6 >= 0x1F) {
        temp_hi = (this->unk2D6 * 2) % 7;
        func_80B23254(this, play, temp_hi, 5.0f, 1.0f);
        func_80B23254(this, play, (temp_hi + 1) % 7, 5.0f, 1.0f);
    } else if (this->unk2D6 == 0x1E) {
        this->actor.draw = EnTr_Draw;
        this->actor.shape.rot.y += this->unk2D6 * 0x1A6;
    } else if (this->unk2D6 > 0) {
        this->actor.shape.rot.y += this->unk2D6 * 0x1A6;
        Actor_SetScale(&this->actor, (this->actor.scale.x * 0.8f) + 0.002f);
    } else {
        EnTr_SetupAction(this, func_80B22F28);
        Actor_SetScale(&this->actor, 0.01f);
    }
    if (this->unk2D6 > 0) {
        this->unk2D6--;
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
}

void func_80B23820(EnTr* this, PlayState* play) {
    CsCmdActorCue* temp_v0;

    if (play->csCtx.state != CS_STATE_IDLE) {
        temp_v0 = play->csCtx.actorCues[this->cueChannel];
        if ((temp_v0 != NULL) && (((temp_v0->id == 3)) || (temp_v0->id == 5))) {
            Actor_PlaySfx(&this->actor, 0x390DU);
            this->unk2D6 = 0x22;
            EnTr_SetStartPosRotFromCue(this, play, this->cueChannel);
            EnTr_SetupAction(this, func_80B23690);
            Animation_PlayLoop(&this->unk14C, &gKotakeKoumeFlyAnim);
            this->unk2E4 = NULL;
            Actor_SetScale(&this->actor, 0.003f);
        }
    }
}

void func_80B238E0(EnTr* this, PlayState* play) {
    CsCmdActorCue* temp_v0;
    f32 temp_fv0;

    temp_fv0 = Animation_GetLastFrame(D_80B24378[this->actor.params]);
    if (play->csCtx.state != CS_STATE_IDLE) {
        temp_v0 = play->csCtx.actorCues[this->cueChannel];
        if ((temp_v0 != NULL) && (temp_v0->id == 3)) {
            Animation_Change(&this->unk14C, D_80B24378[this->actor.params], 1.0f, 0.0f, temp_fv0, 0U, -10.0f);
            this->unk2E4 = NULL;
            EnTr_SetupAction(this, func_80B22F28);
        }
    }
}

void func_80B239A8(EnTr* this, PlayState* play) {
    CsCmdActorCue* temp_v0;
    f32 temp_fv0;

    temp_fv0 = Animation_GetLastFrame(D_80B24368[this->actor.params]);
    if (play->csCtx.state != CS_STATE_IDLE) {
        temp_v0 = play->csCtx.actorCues[this->cueChannel];
        if ((temp_v0 != NULL) && (temp_v0->id == 2)) {
            Animation_Change(&this->unk14C, D_80B24368[this->actor.params], 1.0f, 0.0f, temp_fv0, 2U, -4.0f);
            this->unk2E4 = D_80B24370[this->actor.params];
            EnTr_SetupAction(this, func_80B238E0);
        }
    }
}

void func_80B23A88(EnTr* this, PlayState* play) {
    u32 temp_a3;
    CsCmdActorCue* temp_v1;

    temp_a3 = play->gameplayFrames;
    if (play->csCtx.state != CS_STATE_IDLE) {
        temp_v1 = play->csCtx.actorCues[this->cueChannel];
        if (temp_v1 != NULL) {
            switch (temp_v1->id) {
                case 1:
                    EnTr_SetStartPosRotFromCue(this, play, this->cueChannel);
                    EnTr_SetupAction(this, func_80B239A8);
                    break;

                case 3:
                    EnTr_SetStartPosRotFromCue(this, play, this->cueChannel);
                    EnTr_SetupAction(this, func_80B22F28);
                    Animation_PlayLoop(&this->unk14C, &gKotakeKoumeFlyAnim);
                    this->unk2E4 = NULL;
                    break;

                case 4:
                    EnTr_SetupAction(this, func_80B23820);
                    this->actor.draw = NULL;
                    break;

                case 7:
                    EnTr_SetupAction(this, func_80B230D8);
                    Animation_PlayLoop(&this->unk14C, &gKotakeKoumeFlyAnim);
                    this->unk2E4 = NULL;
                    if (this->actor.params != 0) {
                        this->unk2D6 = ((u8)temp_a3 * 0x400) + 0x8000;
                    } else {
                        this->unk2D6 = (u8)temp_a3 * 0x400;
                    }
                    break;
            }
        }
    }
}

void EnTr_Update(Actor* thisx, PlayState* play) {
    EnTr* this = (EnTr*)thisx;
    s32 pad;

    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->actionFunc(this, play);
    if (SkelAnime_Update(&this->unk14C)) {
        if (this->unk2E4 != NULL) {
            if ((this->unk2E4 == &gKotakeKoumeLookingOverLeftShoulderAnim) ||
                (this->unk2E4 == &gKotakeKoumeLookingOverRightShoulderAnim)) {
                if (this->actor.params != 0) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_LAUGH2);
                } else {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_LAUGH);
                }
                Animation_PlayLoop(&this->unk14C, this->unk2E4);
            } else if (this->unk2E4 == &gKotakeKoumeFlyAnim) {
                EnTr_SetupAction(this, func_80B22F28);
                Animation_Change(&this->unk14C, &gKotakeKoumeFlyAnim, 1.0f, 0.0f,
                                 Animation_GetLastFrame(&gKotakeKoumeFlyAnim), ANIMMODE_LOOP, -5.0f);
            } else {
                Animation_PlayLoop(&this->unk14C, this->unk2E4);
            }
            this->unk2E4 = NULL;
        } else {
            this->unk14C.curFrame = 0.0f;
        }
    }
    Actor_SetFocus(&this->actor, 0.0f);
    if (DECR(this->unk2E2) == 0) {
        this->unk2E2 = Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk2E0 = this->unk2E2;
    if (this->unk2E0 >= 3) {
        this->unk2E0 = 0;
    }
}

s32 EnTr_OverrideLimbDraw(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx) {
    Vec3f sp34;
    Vec3f sp28;
    EnTr* this = thisx;
    Actor* sp20;

    sp34 = D_80B243DC;
    sp28 = D_80B243E8;
    sp20 = this->actor.child;
    if ((sp20 != NULL) && (arg1 == KOTAKE_KOUME_LIMB_RIGHT_HAND)) {
        Matrix_MultVec3f(&sp34, &sp28);
        sp28.x -= 10.0f * Math_SinS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)));
        sp28.z -= 10.0f * Math_CosS(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)));
        sp20->world.pos = sp28;
    }
    return 0;
}

void EnTr_Draw(Actor* thisx, PlayState* play) {
    EnTr* this = (EnTr*)thisx;
    s32 pad;

    if ((play->csCtx.state == CS_STATE_IDLE) || (play->csCtx.actorCues[this->cueChannel] == NULL)) {
        this->actor.shape.shadowDraw = NULL;
    } else {
        if (1) {}
        this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
        OPEN_DISPS(play->state.gfxCtx, "../z_en_tr.c", 840);
        Gfx_SetupDL_37Opa(play->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80B243D0[this->unk2E0]));
        func_8002EBCC(&this->actor, play, 0);
        SkelAnime_DrawFlexOpa(play, this->unk14C.skeleton, this->unk14C.jointTable, this->unk14C.dListCount,
                              EnTr_OverrideLimbDraw, NULL, this);
        CLOSE_DISPS(play->state.gfxCtx, "../z_en_tr.c", 854);
    }
}

f32 func_80B23FDC(PlayState* arg0, s32 cueChannel) {
    CsCmdActorCue* temp_v0;
    f32 temp_fv0;
    f32 var_fv1;

    temp_v0 = arg0->csCtx.actorCues[cueChannel];
    temp_fv0 = Environment_LerpWeight(temp_v0->endFrame, temp_v0->startFrame, arg0->csCtx.curFrame);
    var_fv1 = temp_fv0;
    if (temp_fv0 > 1.0f) {
        var_fv1 = 1.0f;
    }
    return var_fv1;
}

void func_80B24038(EnTr* this, PlayState* play, s32 cueChannel) {
    Vec3f sp34;
    Vec3f sp28;
    f32 temp_fv0;
    f32 var_fa0;
    CsCmdActorCue* v;

    v = play->csCtx.actorCues[cueChannel];
    sp34.x = v->startPos.x;
    sp34.y = v->startPos.y;
    sp34.z = v->startPos.z;
    sp28.x = v->endPos.x;
    sp28.y = v->endPos.y;
    sp28.z = v->endPos.z;
    temp_fv0 = func_80B23FDC(play, (s32)cueChannel);
    sp34.x = ((sp28.x - sp34.x) * temp_fv0) + sp34.x;
    sp34.y = ((sp28.y - sp34.y) * temp_fv0) + sp34.y;
    sp34.z = ((sp28.z - sp34.z) * temp_fv0) + sp34.z;
    sp28.x = (sp34.x - this->actor.world.pos.x) * 0.1f;
    sp28.y = (sp34.y - this->actor.world.pos.y) * 0.1f;
    sp28.z = (sp34.z - this->actor.world.pos.z) * 0.1f;
    temp_fv0 = sqrtf(SQXYZ(sp28));
    var_fa0 = CLAMP(temp_fv0, 0.0f, 20.0f);
    if ((temp_fv0 != var_fa0) && (temp_fv0 != 0.0f)) {
        sp28.x *= var_fa0 / temp_fv0;
        sp28.y *= var_fa0 / temp_fv0;
        sp28.z *= var_fa0 / temp_fv0;
    }
    Math_StepToF(&this->actor.velocity.x, sp28.x, 1.0f);
    Math_StepToF(&this->actor.velocity.y, sp28.y, 1.0f);
    Math_StepToF(&this->actor.velocity.z, sp28.z, 1.0f);
    Actor_UpdatePos(&this->actor);
}

void EnTr_SetRotFromCue(EnTr* this, PlayState* play, s32 cueChannel) {
    s32 var_v0;
    s16 new_var;
    s32 var_v1;

    new_var = play->csCtx.actorCues[cueChannel]->rot.y;
    var_v1 = this->actor.world.rot.y - new_var;
    if (var_v1 < 0) {
        var_v1 = -var_v1;
        var_v0 = 1;
    } else {
        var_v0 = -1;
    }
    if (var_v1 >= 0x8000) {
        var_v0 = -var_v0;
        var_v1 = 0x10000 - var_v1;
    }
    var_v1 *= 0.1f;
    this->actor.world.rot.y += var_v1 * var_v0;
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void EnTr_SetStartPosRotFromCue(EnTr* this, PlayState* play, s32 cueChannel) {
    Vec3f spC;
    s16 temp_v1;

    spC.x = play->csCtx.actorCues[cueChannel]->startPos.x;
    spC.y = play->csCtx.actorCues[cueChannel]->startPos.y;
    spC.z = play->csCtx.actorCues[cueChannel]->startPos.z;
    this->actor.world.pos = spC;
    temp_v1 = play->csCtx.actorCues[cueChannel]->rot.y;
    this->actor.shape.rot.y = temp_v1;
    this->actor.world.rot.y = temp_v1;
}
