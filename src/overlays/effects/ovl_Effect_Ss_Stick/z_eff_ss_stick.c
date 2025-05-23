/*
 * File: z_eff_ss_stick.c
 * Overlay: ovl_Effect_Ss_Stick
 * Description: Broken stick as child, broken sword as adult
 */

#include "z_eff_ss_stick.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64effect.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/object_link_boy/object_link_boy.h"
#include "assets/objects/object_link_child/object_link_child.h"

#define rObjectSlot regs[0]
#define rYaw regs[1]

u32 EffectSsStick_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsStick_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsStick_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsProfile Effect_Ss_Stick_Profile = {
    EFFECT_SS_STICK,
    EffectSsStick_Init,
};

typedef struct StickDrawInfo {
    /* 0x00 */ s16 objectId;
    /* 0x04 */ Gfx* displayList;
} StickDrawInfo;

u32 EffectSsStick_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    StickDrawInfo drawInfo[] = {
        { OBJECT_LINK_BOY, gLinkAdultBrokenGiantsKnifeBladeDL }, // adult, broken sword
        { OBJECT_LINK_CHILD, gLinkChildLinkDekuStickDL },        // child, broken stick
    };
    StickDrawInfo* ageInfoEntry = gSaveContext.save.linkAge + drawInfo;
    EffectSsStickInitParams* initParams = (EffectSsStickInitParams*)initParamsx;

    this->rObjectSlot = Object_GetSlot(&play->objectCtx, ageInfoEntry->objectId);
    this->gfx = ageInfoEntry->displayList;
    this->vec = this->pos = initParams->pos;
    this->rYaw = initParams->yaw;
    this->velocity.x = Math_SinS(initParams->yaw) * 6.0f;
    this->velocity.z = Math_CosS(initParams->yaw) * 6.0f;
    this->life = 20;
    this->draw = EffectSsStick_Draw;
    this->update = EffectSsStick_Update;
    this->velocity.y = 26.0f;
    this->accel.y = -4.0f;

    return 1;
}

void EffectSsStick_Draw(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_stick.c", 153);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);

    if (!LINK_IS_ADULT) {
        Matrix_Scale(0.01f, 0.0025f, 0.01f, MTXMODE_APPLY);
        Matrix_RotateZYX(0, this->rYaw, 0, MTXMODE_APPLY);
    } else {
        Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
        Matrix_RotateZYX(0, this->rYaw, play->state.frames * 10000, MTXMODE_APPLY);
    }

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_eff_ss_stick.c", 176);
    Gfx_SetupDL_25Opa(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x06, play->objectCtx.slots[this->rObjectSlot].segment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, gCullBackDList);
    gSPDisplayList(POLY_OPA_DISP++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_stick.c", 188);
}

void EffectSsStick_Update(PlayState* play, u32 index, EffectSs* this) {
}
