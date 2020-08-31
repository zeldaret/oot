/*
 * File: z_eff_ss_kakera.c
 * Overlay: ovl_Effect_Ss_Kakera
 * Description:
 */

#include "z_eff_ss_kakera.h"

typedef enum {
    /* 0x00 */ SS_KAKERA_0,
    /* 0x01 */ SS_KAKERA_1,
    /* 0x02 */ SS_KAKERA_PITCH,
    /* 0x03 */ SS_KAKERA_YAW,
    /* 0x04 */ SS_KAKERA_4,
    /* 0x05 */ SS_KAKERA_5,
    /* 0x06 */ SS_KAKERA_6,
    /* 0x07 */ SS_KAKERA_SCALE,
    /* 0x08 */ SS_KAKERA_8,
    /* 0x09 */ SS_KAKERA_9,
    /* 0x0A */ SS_KAKERA_OBJ_ID,
    /* 0x0B */ SS_KAKERA_OBJ_BANK_IDX,
    /* 0x0C */ SS_KAKERA_COLOR_IDX
} EffectSsKakeraRegs;

u32 EffectSsKakera_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A9874(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809AA430(GlobalContext* globalCtx, u32 index, EffectSs* this);

void func_809A9BA8(EffectSs* this, GlobalContext* globalCtx);

f32 func_809A9DD8(EffectSs* this, s32 arg1);
f32 func_809A9DEC(EffectSs* this, s32 arg1);
f32 func_809A9DEC(EffectSs* this, s32 arg1);
f32 func_809A9DEC(EffectSs* this, s32 arg1);
f32 func_809A9E28(EffectSs* this, s32 arg1);
f32 func_809A9E28(EffectSs* this, s32 arg1);
f32 func_809A9E28(EffectSs* this, s32 arg1);
f32 func_809A9E68(EffectSs* this, s32 arg1);
f32 func_809A9E68(EffectSs* this, s32 arg1);
f32 func_809A9E68(EffectSs* this, s32 arg1);

EffectSsInit Effect_Ss_Kakera_InitVars = {
    EFFECT_SS_KAKERA,
    EffectSsKakera_Init,
};

// rgb
Color_RGB8 D_809AA528[] = { { 255, 255, 255 }, { 235, 170, 130 } };

s32 D_809AA530[] = {
    0x3F800000, 0x42C80000, 0x42200000, 0x40A00000, 0x42C80000,
    0x42200000, 0x40A00000, 0x42C80000, 0x42200000, 0x40A00000,
};

s32 D_809AA558[] = { 0x3D4CCCCD, 0x3F800000 };

s32 D_809AA560[] = { 0x40800000, 0x3DCCCCCD, 0x3E99999A, 0x3F666666, 0xBDCCCCCD, 0xBE99999A, 0xBF666666 };

s32 D_809AA57C[] = { 0x3DCCCCCD, 0x3F800000, 0x40C00000 };

s32 D_809AA588[] = {
    func_809A9DD8, func_809A9DEC, func_809A9DEC, func_809A9DEC, func_809A9E28,
    func_809A9E28, func_809A9E28, func_809A9E68, func_809A9E68, func_809A9E68,
};

s32 D_809AA5B0[] = { 0x41200000, 0x41A00000, 0x42200000, 0x00000000 };

u32 EffectSsKakera_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsKakeraInitParams* initParams = (EffectSsKakeraInitParams*)initParamsx;
    s32 objId;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->life = initParams->life;
    this->priority = 101;

    if (initParams->dList != NULL) {
        this->displayList = initParams->dList;
        objId = initParams->objId;

        if (objId == OBJECT_GAMEPLAY_KEEP || objId == OBJECT_GAMEPLAY_FIELD_KEEP ||
            objId == OBJECT_GAMEPLAY_DANGEON_KEEP) {
            this->regs[SS_KAKERA_OBJ_ID] = -1;
        } else {
            this->regs[SS_KAKERA_OBJ_ID] = initParams->objId;
            func_809A9BA8(this, globalCtx);
        }

    } else {
        osSyncPrintf("shape_modelがNULL\n");
        LogUtils_HungupThread("../z_eff_kakera.c", 178);
    }

    this->draw = func_809A9874;
    this->update = func_809AA430;
    this->unk_2C = initParams->unk_18;
    /* unk40 */ this->regs[SS_KAKERA_0] = initParams->unk_2C;
    /* unk42 */ this->regs[SS_KAKERA_1] = initParams->unk_24;
    /* unk44 */ this->regs[SS_KAKERA_PITCH] = Math_Rand_ZeroOne() * 32767.0f;
    /* unk46 */ this->regs[SS_KAKERA_YAW] = Math_Rand_ZeroOne() * 32767.0f;
    /* unk48 */ this->regs[SS_KAKERA_4] = initParams->unk_26;
    /* unk4A */ this->regs[SS_KAKERA_5] = initParams->unk_28;
    /* unk4C */ this->regs[SS_KAKERA_6] = initParams->unk_2A;
    /* unk4E */ this->regs[SS_KAKERA_SCALE] = initParams->scale;
    /* unk50 */ this->regs[SS_KAKERA_8] = initParams->unk_30;
    /* unk52 */ this->regs[SS_KAKERA_9] = initParams->unk_32;
    /* unk58 */ this->regs[SS_KAKERA_COLOR_IDX] = initParams->unk_38;

    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9818.s")

void func_809A9874(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;
    s32 colorIdx;

    scale = this->regs[SS_KAKERA_SCALE] * 0.00390625f;
    colorIdx = this->regs[SS_KAKERA_COLOR_IDX];

    OPEN_DISPS(gfxCtx, "../z_eff_kakera.c", 241);

    if (this->regs[SS_KAKERA_OBJ_ID] != -1) {
        if ((((this->regs[SS_KAKERA_4] >> 7) & 1) << 7) == 0x80) {
            gSPSegment(oGfxCtx->polyXlu.p++, 0x06,
                       globalCtx->objectCtx.status[this->regs[SS_KAKERA_OBJ_BANK_IDX]].segment);
        } else {
            gSPSegment(oGfxCtx->polyOpa.p++, 0x06,
                       globalCtx->objectCtx.status[this->regs[SS_KAKERA_OBJ_BANK_IDX]].segment);
        }
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->regs[SS_KAKERA_YAW] * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->regs[SS_KAKERA_PITCH] * 0.01f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    if ((((this->regs[SS_KAKERA_4] >> 7) & 1) << 7) == 0x80) {
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_kakera.c", 268),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80093D84(globalCtx->state.gfxCtx);

        if (colorIdx >= 0) {
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, D_809AA528[colorIdx].r, D_809AA528[colorIdx].g,
                            D_809AA528[colorIdx].b, 255);
        }

        gSPDisplayList(oGfxCtx->polyXlu.p++, this->displayList);
    } else {
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_kakera.c", 286),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80093D18(globalCtx->state.gfxCtx);

        if (colorIdx >= 0) {
            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, D_809AA528[colorIdx].r, D_809AA528[colorIdx].g,
                            D_809AA528[colorIdx].b, 255);
        }

        gSPDisplayList(oGfxCtx->polyOpa.p++, this->displayList);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_kakera.c", 302);
}

void func_809A9BA8(EffectSs* this, GlobalContext* globalCtx) {
    this->regs[SS_KAKERA_OBJ_BANK_IDX] = Object_GetIndex(&globalCtx->objectCtx, this->regs[SS_KAKERA_OBJ_ID]);

    if ((this->regs[SS_KAKERA_OBJ_BANK_IDX] < 0) ||
        !Object_IsLoaded(&globalCtx->objectCtx, this->regs[SS_KAKERA_OBJ_BANK_IDX])) {
        this->life = 0;
        this->draw = NULL;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9DC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9E68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9FD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA0EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA230.s")

void func_809AA430(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    switch (((this->regs[SS_KAKERA_4] >> 5) & 3) << 5) {
        case 0x20:
            this->regs[SS_KAKERA_PITCH] += 0xB;
            this->regs[SS_KAKERA_YAW] += 3;
            break;
        case 0x40:
            this->regs[SS_KAKERA_PITCH] += 0x41;
            this->regs[SS_KAKERA_YAW] += 0xB;
            break;
        case 0x60:
            this->regs[SS_KAKERA_PITCH] += 0x9B;
            this->regs[SS_KAKERA_YAW] += 0x1F;
            break;
    }

    func_809A9C10(this);

    if (func_809AA0EC(this) == 0) {
        this->life = 0;
    }

    func_809AA230(this, globalCtx);

    if (this->regs[SS_KAKERA_OBJ_ID] != -1) {
        func_809A9BA8(this, globalCtx);
    }
}
