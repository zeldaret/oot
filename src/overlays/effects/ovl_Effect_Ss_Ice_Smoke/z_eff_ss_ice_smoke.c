/*
 * File: z_eff_ss_ice_smoke.c
 * Overlay: ovl_Effect_Ss_Ice_Smoke
 * Description: Ice Smoke
 */

#include "z_eff_ss_ice_smoke.h"
#include "assets/objects/object_fz/object_fz.h"

#define rObjectSlot regs[0]
#define rAlpha regs[1]
#define rScale regs[2]

u32 EffectSsIceSmoke_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsIceSmoke_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsIceSmoke_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Ice_Smoke_InitVars = {
    EFFECT_SS_ICE_SMOKE,
    EffectSsIceSmoke_Init,
};

u32 EffectSsIceSmoke_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsIceSmokeInitParams* initParams = (EffectSsIceSmokeInitParams*)initParamsx;
    s32 pad;
    s32 objectSlot;
    uintptr_t prevSeg6;

    objectSlot = Object_GetSlot(&play->objectCtx, OBJECT_FZ);

    if ((objectSlot >= 0) && Object_IsLoaded(&play->objectCtx, objectSlot)) {
        prevSeg6 = gSegments[6];
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[objectSlot].segment);
        Math_Vec3f_Copy(&this->pos, &initParams->pos);
        Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
        Math_Vec3f_Copy(&this->accel, &initParams->accel);
        this->rObjectSlot = objectSlot;
        this->rAlpha = 0;
        this->rScale = initParams->scale;
        this->life = 50;
        this->draw = EffectSsIceSmoke_Draw;
        this->update = EffectSsIceSmoke_Update;
        gSegments[6] = prevSeg6;

        return 1;
    }

    osSyncPrintf("Effect_SS_Ice_Smoke_ct():バンク Object_Bank_Fzが有りません。\n");

    return 0;
}

void EffectSsIceSmoke_Draw(PlayState* play, u32 index, EffectSs* this) {
    s32 pad;
    void* objectPtr;
    Mtx* mtx;
    f32 scale;
    s32 objectSlot;

    objectPtr = play->objectCtx.slots[this->rObjectSlot].segment;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_ice_smoke.c", 155);

    objectSlot = Object_GetSlot(&play->objectCtx, OBJECT_FZ);

    if ((objectSlot >= 0) && Object_IsLoaded(&play->objectCtx, objectSlot)) {
        gDPPipeSync(POLY_XLU_DISP++);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(objectPtr);
        gSPSegment(POLY_XLU_DISP++, 0x06, objectPtr);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gFreezardSteamStartDL));
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 235, 235, this->rAlpha);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, this->life * 3, this->life * 15, 32, 64, 1, 0,
                                    0, 32, 32));
        Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
        Matrix_ReplaceRotation(&play->billboardMtxF);
        scale = this->rScale * 0.0001f;
        Matrix_Scale(scale, scale, 1.0f, MTXMODE_APPLY);

        mtx = Matrix_NewMtx(play->state.gfxCtx, "../z_eff_ss_ice_smoke.c", 196);

        if (mtx != NULL) {
            gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gFreezardSteamDL));
        }
    } else {
        this->life = -1;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_ice_smoke.c", 210);
}

void EffectSsIceSmoke_Update(PlayState* play, u32 index, EffectSs* this) {
    s32 objectSlot;

    objectSlot = Object_GetSlot(&play->objectCtx, OBJECT_FZ);

    if ((objectSlot >= 0) && Object_IsLoaded(&play->objectCtx, objectSlot)) {
        if (this->rAlpha < 100) {
            this->rAlpha += 10;
        }
    } else {
        this->life = -1;
    }
}
