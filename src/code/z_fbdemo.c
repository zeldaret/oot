#include <ultra64.h>
#include <global.h>

Gfx D_8012AFB0[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetColorImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x0F000000),
    gsDPSetFillColor((GPACK_RGBA5551(65, 65, 65, 1) << 16) | GPACK_RGBA5551(65, 65, 65, 1)),
    gsDPFillRectangle(0, 0, 319, 239),
    gsDPPipeSync(),
    gsDPSetFillColor((GPACK_RGBA5551(65, 65, 255, 1) << 16) | GPACK_RGBA5551(65, 65, 255, 1)),
    gsDPFillRectangle(20, 20, 300, 220),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

Gfx D_8012B000[] = {
    gsDPPipeSync(),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_PERSP | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_AA_OPA_SURF | G_RM_AA_OPA_SURF2),
    gsSPEndDisplayList(),
};

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/TransitionUnk_InitGraphics.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/TransitionUnk_InitData.s")

void TransitionUnk_Destroy(TransitionUnk* this) {
    osSyncPrintf("fbdemo_cleanup(%08x)\n", this);
    osSyncPrintf("msleep(100);\n");
    Sleep_Msec(100);
    if (this->unk_0C != NULL) {
        SystemArena_FreeDebug(this->unk_0C, "../z_fbdemo.c", 180);
        this->unk_0C = NULL;
    }
    if (this->vtxFrame1 != NULL) {
        SystemArena_FreeDebug(this->vtxFrame1, "../z_fbdemo.c", 181);
        this->vtxFrame1 = NULL;
    }
    if (this->vtxFrame2 != NULL) {
        SystemArena_FreeDebug(this->vtxFrame2, "../z_fbdemo.c", 182);
        this->vtxFrame2 = NULL;
    }
    if (this->gfx != NULL) {
        SystemArena_FreeDebug(this->gfx, "../z_fbdemo.c", 183);
        this->gfx = NULL;
    }
}

TransitionUnk* TransitionUnk_Init(TransitionUnk* this, s32 row, s32 col) {
    osSyncPrintf("fbdemo_init(%08x, %d, %d)\n", this, row, col);
    bzero(this, sizeof(*this));
    this->frame = 0;
    this->row = row;
    this->col = col;
    this->unk_0C = SystemArena_MallocDebug(((row * 8) + 8) * (col + 1), "../z_fbdemo.c", 195);
    this->vtxFrame1 = SystemArena_MallocDebug((row + 1) * sizeof(Vtx) * (col + 1), "../z_fbdemo.c", 196);
    this->vtxFrame2 = SystemArena_MallocDebug((row + 1) * sizeof(Vtx) * (col + 1), "../z_fbdemo.c", 197);
    this->gfx = SystemArena_MallocDebug(((this->col * ((this->row * 9) + 1)) + 2) * sizeof(Gfx), "../z_fbdemo.c", 198);
    if (this->unk_0C == NULL || this->vtxFrame1 == NULL || this->vtxFrame2 == NULL || this->gfx == NULL) {
        osSyncPrintf("fbdemo_init allocation error\n");
        if (this->unk_0C != NULL) {
            SystemArena_FreeDebug(this->unk_0C, "../z_fbdemo.c", 202);
            this->unk_0C = NULL;
        }
        if (this->vtxFrame1 != NULL) {
            SystemArena_FreeDebug(this->vtxFrame1, "../z_fbdemo.c", 203);
            this->vtxFrame1 = NULL;
        }
        if (this->vtxFrame2 != NULL) {
            SystemArena_FreeDebug(this->vtxFrame2, "../z_fbdemo.c", 204);
            this->vtxFrame2 = NULL;
        }
        if (this->gfx != NULL) {
            SystemArena_FreeDebug(this->gfx, "../z_fbdemo.c", 205);
            this->gfx = NULL;
        }
        return NULL;
    }
    TransitionUnk_InitGraphics(this);
    TransitionUnk_InitData(this);
    this->frame = 0;
    return this;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/TransitionUnk_SetData.s")

void TransitionUnk_Draw(TransitionUnk* this, Gfx** gfxP) {
    Gfx* gfx = *gfxP;

    gSPDisplayList(gfx++, D_8012B000);
    TransitionUnk_SetData(this);
    gSPMatrix(gfx++, &this->projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &this->modelView, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(gfx++, 10, this->frame == 0 ? this->vtxFrame1 : this->vtxFrame2);
    gSPSegment(gfx++, 11, this->zBuffer);
    gSPDisplayList(gfx++, D_8012B000);
    gSPDisplayList(gfx++, this->gfx);
    gDPPipeSync(gfx++);
    this->frame ^= 1;
    *gfxP = gfx;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/TransitionUnk_Update.s")

void func_800B23E8(TransitionUnk* this) {
}

s32 func_800B23F0(TransitionUnk* this) {
    return 0;
}
