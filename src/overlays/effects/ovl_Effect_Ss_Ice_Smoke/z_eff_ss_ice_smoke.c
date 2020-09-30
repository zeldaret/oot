/*
 * File: z_eff_ss_ice_smoke.c
 * Overlay: ovl_Effect_Ss_Ice_Smoke
 * Description: Ice Smoke
 */

#include "z_eff_ss_ice_smoke.h"

#define rObjBankIdx regs[0]
#define rAlpha regs[1]
#define rScale regs[2]

u32 EffectSsIceSmoke_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsIceSmoke_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsIceSmoke_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Ice_Smoke_InitVars = {
    EFFECT_SS_ICE_SMOKE,
    EffectSsIceSmoke_Init,
};

extern Gfx D_060030A0[];
extern Gfx D_06003158[];

u32 EffectSsIceSmoke_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsIceSmokeInitParams* initParams = (EffectSsIceSmokeInitParams*)initParamsx;
    s32 pad;
    s32 objBankIdx;
    void* oldSeg6;

    objBankIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_FZ);

    if ((objBankIdx > -1) && Object_IsLoaded(&globalCtx->objectCtx, objBankIdx)) {
        oldSeg6 = gSegments[6];
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[objBankIdx].segment);
        Math_Vec3f_Copy(&this->pos, &initParams->pos);
        Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
        Math_Vec3f_Copy(&this->accel, &initParams->accel);
        this->rObjBankIdx = objBankIdx;
        this->rAlpha = 0;
        this->rScale = initParams->scale;
        this->life = 50;
        this->draw = EffectSsIceSmoke_Draw;
        this->update = EffectSsIceSmoke_Update;
        gSegments[6] = oldSeg6;

        return 1;
    }

    osSyncPrintf("Effect_SS_Ice_Smoke_ct():バンク Object_Bank_Fzが有りません。\n");

    return 0;
}

void EffectSsIceSmoke_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    void* object;
    Mtx* mtx;
    f32 scale;
    s32 objBankIdx;

    object = globalCtx->objectCtx.status[this->rObjBankIdx].segment;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_ice_smoke.c", 155);

    objBankIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_FZ);

    if ((objBankIdx > -1) && Object_IsLoaded(&globalCtx->objectCtx, objBankIdx)) {
        gDPPipeSync(oGfxCtx->polyXlu.p++);
        func_80093D84(globalCtx->state.gfxCtx);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(object);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x06, object);
        gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_060030A0));
        gDPPipeSync(oGfxCtx->polyXlu.p++);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 195, 235, 235, this->rAlpha);
        gSPSegment(
            oGfxCtx->polyXlu.p++, 0x08,
            Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->life * 3, this->life * 15, 32, 64, 1, 0, 0, 32, 32));
        Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
        func_800D1FD4(&globalCtx->mf_11DA0);
        scale = this->rScale * 0.0001f;
        Matrix_Scale(scale, scale, 1.0f, MTXMODE_APPLY);

        mtx = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_ss_ice_smoke.c", 196);

        if (mtx != NULL) {
            gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06003158));
        }
    } else {
        this->life = -1;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_ice_smoke.c", 210);
}

void EffectSsIceSmoke_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 objBankIdx;

    objBankIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_FZ);

    if ((objBankIdx > -1) && Object_IsLoaded(&globalCtx->objectCtx, objBankIdx)) {
        if (this->rAlpha < 100) {
            this->rAlpha += 10;
        }
    } else {
        this->life = -1;
    }
}
