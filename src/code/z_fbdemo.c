#include <ultra64.h>
#include <global.h>

extern u16 COLOR_BUFFER_SEG[];

Gfx D_8012AFB0[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetColorImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, COLOR_BUFFER_SEG),
    gsDPSetFillColor(RGBA8(0x42, 0x11, 0x42, 0x11)),
    gsDPFillRectangle(0, 0, 319, 239),
    gsDPPipeSync(),
    gsDPSetFillColor(RGBA8(0x42, 0x3F, 0x42, 0x3F)),
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/FBDemo_InitGraphics.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/FBDemo_InitData.s")

void FBDemo_Destroy(TransitionStruct* trans) {
    osSyncPrintf("fbdemo_cleanup(%08x)\n", trans);
    osSyncPrintf("msleep(100);\n");
    Sleep_Msec(100);
    if (trans->unk_0C != NULL) {
        SystemArena_FreeDebug(trans->unk_0C, "../z_fbdemo.c", 180);
        trans->unk_0C = NULL;
    }
    if (trans->vtxFrame1 != NULL) {
        SystemArena_FreeDebug(trans->vtxFrame1, "../z_fbdemo.c", 181);
        trans->vtxFrame1 = NULL;
    }
    if (trans->vtxFrame2 != NULL) {
        SystemArena_FreeDebug(trans->vtxFrame2, "../z_fbdemo.c", 182);
        trans->vtxFrame2 = NULL;
    }
    if (trans->gfx != NULL) {
        SystemArena_FreeDebug(trans->gfx, "../z_fbdemo.c", 183);
        trans->gfx = NULL;
    }
}

TransitionStruct* FBDemo_Init(TransitionStruct* trans, s32 row, s32 col) {
    osSyncPrintf("fbdemo_init(%08x, %d, %d)\n", trans, row, col);
    bzero(trans, sizeof(*trans));
    trans->frame = 0;
    trans->row = row;
    trans->col = col;
    trans->unk_0C = SystemArena_MallocDebug(((row * 8) + 8) * (col + 1), "../z_fbdemo.c", 195);
    trans->vtxFrame1 = SystemArena_MallocDebug((row + 1) * sizeof(Vtx) * (col + 1), "../z_fbdemo.c", 196);
    trans->vtxFrame2 = SystemArena_MallocDebug((row + 1) * sizeof(Vtx) * (col + 1), "../z_fbdemo.c", 197);
    trans->gfx =
        SystemArena_MallocDebug(((trans->col * ((trans->row * 9) + 1)) + 2) * sizeof(Gfx), "../z_fbdemo.c", 198);
    if (trans->unk_0C == NULL || trans->vtxFrame1 == NULL || trans->vtxFrame2 == NULL || trans->gfx == NULL) {
        osSyncPrintf("fbdemo_init allocation error\n");
        if (trans->unk_0C != NULL) {
            SystemArena_FreeDebug(trans->unk_0C, "../z_fbdemo.c", 202);
            trans->unk_0C = NULL;
        }
        if (trans->vtxFrame1 != NULL) {
            SystemArena_FreeDebug(trans->vtxFrame1, "../z_fbdemo.c", 203);
            trans->vtxFrame1 = NULL;
        }
        if (trans->vtxFrame2 != NULL) {
            SystemArena_FreeDebug(trans->vtxFrame2, "../z_fbdemo.c", 204);
            trans->vtxFrame2 = NULL;
        }
        if (trans->gfx != NULL) {
            SystemArena_FreeDebug(trans->gfx, "../z_fbdemo.c", 205);
            trans->gfx = NULL;
        }
        return NULL;
    }
    FBDemo_InitGraphics(trans);
    FBDemo_InitData(trans);
    trans->frame = 0;
    return trans;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/FBDemo_Update.s")

void FBDemo_Draw(TransitionStruct* trans, Gfx** gfxP) {
    Gfx* gfx = *gfxP;

    gSPDisplayList(gfx++, D_8012B000);
    FBDemo_Update(trans);
    gSPMatrix(gfx++, &trans->projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &trans->modelView, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(gfx++, 10, trans->frame == 0 ? trans->vtxFrame1 : trans->vtxFrame2);
    gSPSegment(gfx++, 11, trans->zBuffer);
    gSPDisplayList(gfx++, D_8012B000);
    gSPDisplayList(gfx++, trans->gfx);
    gDPPipeSync(gfx++);
    trans->frame ^= 1;
    *gfxP = gfx;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo/FBDemo_Move.s")

void func_800B23E8(TransitionStruct* trans) {
}

s32 func_800B23F0(TransitionStruct* trans) {
    return 0;
}
