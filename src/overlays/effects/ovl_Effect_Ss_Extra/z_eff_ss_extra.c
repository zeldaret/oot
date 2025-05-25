/*
 * File: z_eff_ss_extra.c
 * Overlay: ovl_Effect_Ss_Extra
 * Description: Minigame Score Points
 */

#include "z_eff_ss_extra.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "segmented_address.h"
#include "sys_matrix.h"
#include "z64effect.h"
#include "z64play.h"

#include "assets/objects/object_yabusame_point/object_yabusame_point.h"

#define rObjectSlot regs[0]
#define rTimer regs[1]
#define rScoreIdx regs[2]
#define rScale regs[3]

u32 EffectSsExtra_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsExtra_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsExtra_Update(PlayState* play, u32 index, EffectSs* this);

static s16 sScores[] = { 30, 60, 100 };

EffectSsProfile Effect_Ss_Extra_Profile = {
    EFFECT_SS_EXTRA,
    EffectSsExtra_Init,
};

u32 EffectSsExtra_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsExtraInitParams* initParams = (EffectSsExtraInitParams*)initParamsx;
    s32 pad;
    s32 objectSlot = Object_GetSlot(&play->objectCtx, OBJECT_YABUSAME_POINT);

    if ((objectSlot >= 0) && Object_IsLoaded(&play->objectCtx, objectSlot)) {
        uintptr_t oldSeg6 = gSegments[6];

        gSegments[6] = OS_K0_TO_PHYSICAL(play->objectCtx.slots[objectSlot].segment);
        this->pos = initParams->pos;
        this->velocity = initParams->velocity;
        this->accel = initParams->accel;
        this->draw = EffectSsExtra_Draw;
        this->update = EffectSsExtra_Update;
        this->life = 50;
        this->rScoreIdx = initParams->scoreIdx;
        this->rScale = initParams->scale;
        this->rTimer = 5;
        this->rObjectSlot = objectSlot;
        gSegments[6] = oldSeg6;

        return 1;
    }

    return 0;
}

static void* sTextures[] = {
    object_yabusame_point_Tex_000000,
    object_yabusame_point_Tex_000480,
    object_yabusame_point_Tex_000900,
};

void EffectSsExtra_Draw(PlayState* play, u32 index, EffectSs* this) {
    s32 pad;
    f32 scale = this->rScale / 100.0f;
    void* objectPtr = play->objectCtx.slots[this->rObjectSlot].segment;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_extra.c", 168);

    gSegments[6] = OS_K0_TO_PHYSICAL(objectPtr);
    gSPSegment(POLY_XLU_DISP++, 0x06, objectPtr);
    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_eff_ss_extra.c", 186);
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sTextures[this->rScoreIdx]));
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(object_yabusame_point_DL_000DC0));

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_extra.c", 194);
}

void EffectSsExtra_Update(PlayState* play, u32 index, EffectSs* this) {
    if (this->rTimer != 0) {
        this->rTimer--;
    } else {
        this->velocity.y = 0.0f;
    }

    if (this->rTimer == 1) {
        play->interfaceCtx.unk_23C = sScores[this->rScoreIdx];
    }
}
