/*
 * File: z_bg_menkuri_eye.c
 * Overlay: ovl_Bg_Menkuri_Eye
 * Description: Eye platform eye switches
 */

#include "z_bg_menkuri_eye.h"
#include "assets/objects/object_menkuri_objects/object_menkuri_objects.h"

#define FLAGS ACTOR_FLAG_DRAW_CULLING_DISABLED

void BgMenkuriEye_Init(Actor* thisx, PlayState* play);
void BgMenkuriEye_Destroy(Actor* thisx, PlayState* play);
void BgMenkuriEye_Update(Actor* thisx, PlayState* play);
void BgMenkuriEye_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Menkuri_Eye_Profile = {
    /**/ ACTOR_BG_MENKURI_EYE,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MENKURI_OBJECTS,
    /**/ sizeof(BgMenkuriEye),
    /**/ BgMenkuriEye_Init,
    /**/ BgMenkuriEye_Destroy,
    /**/ BgMenkuriEye_Update,
    /**/ BgMenkuriEye_Draw,
};

static s32 sNumEyesShot;

static ColliderJntSphElementInit sJntSphElementsInit[1] = {
    {
        {
            ELEM_MATERIAL_UNK4,
            { 0x00000000, 0x00, 0x00 },
            { 0x0001F820, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { 1, { { 0, 0, 0 }, 14 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMenkuriEye_Init(Actor* thisx, PlayState* play) {
    BgMenkuriEye* this = (BgMenkuriEye*)thisx;
    ColliderJntSphElement* colliderList;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderItems);
    this->collider.elements[0].dim.worldSphere.center.x = this->actor.world.pos.x;
    this->collider.elements[0].dim.worldSphere.center.y = this->actor.world.pos.y;
    this->collider.elements[0].dim.worldSphere.center.z = this->actor.world.pos.z;
    colliderList = this->collider.elements;
    colliderList->dim.worldSphere.radius = colliderList->dim.modelSphere.radius;
    if (!Flags_GetSwitch(play, this->actor.params)) {
        sNumEyesShot = 0;
    }
    this->framesUntilDisable = -1;
}

void BgMenkuriEye_Destroy(Actor* thisx, PlayState* play) {
    BgMenkuriEye* this = (BgMenkuriEye*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

void BgMenkuriEye_Update(Actor* thisx, PlayState* play) {
    BgMenkuriEye* this = (BgMenkuriEye*)thisx;

    if (!Flags_GetSwitch(play, this->actor.params)) {
        if (this->framesUntilDisable != -1) {
            if (this->framesUntilDisable != 0) {
                this->framesUntilDisable--;
            }
            if (this->framesUntilDisable == 0) {
                this->framesUntilDisable = -1;
                sNumEyesShot--;
            }
        }
    }
    if ((this->collider.base.acFlags & AC_HIT) &&
        (ABS((s16)(this->collider.base.ac->world.rot.y - this->actor.shape.rot.y)) > 0x5000)) {
        this->collider.base.acFlags &= ~AC_HIT;
        if (this->framesUntilDisable == -1) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_AMOS_DAMAGE);
            sNumEyesShot++;
            sNumEyesShot = CLAMP_MAX(sNumEyesShot, 4);
        }
        this->framesUntilDisable = 416;
        if (sNumEyesShot == 4) {
            Flags_SetSwitch(play, this->actor.params);
            Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        }
    }
    if (this->framesUntilDisable == -1) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
    Actor_SetFocus(&this->actor, 0.0f);
}

void BgMenkuriEye_Draw(Actor* thisx, PlayState* play) {
    BgMenkuriEye* this = (BgMenkuriEye*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_menkuri_eye.c", 292);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    if (Flags_GetSwitch(play, this->actor.params)) {
        gDPSetEnvColor(POLY_XLU_DISP++, 200, 0, 0, 255);
    } else if (this->framesUntilDisable == -1) {
        gDPSetEnvColor(POLY_XLU_DISP++, 200, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 200, 0, 0, 255);
    }
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_RotateZYX(this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, MTXMODE_APPLY);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_menkuri_eye.c", 331);

    gSPDisplayList(POLY_XLU_DISP++, gGTGEyeStatueEyeDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_menkuri_eye.c", 335);
}
