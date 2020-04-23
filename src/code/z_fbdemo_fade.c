#include <global.h>
#include <vt.h>

static Gfx sRCPSetupFade[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsSPEndDisplayList(),
};

void TransitionFade_Start(TransitionFade* fade) {
    switch (fade->fadeType) {
        case 0:
            break;
        case 1:
            fade->fadeTimer = 0;
            fade->fadeColor.a = fade->fadeDirection != 0 ? 0xFF : 0;
            break;
        case 2:
            fade->fadeColor.a = 0;
            break;
    }
    fade->isDone = 0;
}

TransitionFade* TransitionFade_Init(TransitionFade* fade) {
    bzero(fade, sizeof(*fade));
    return fade;
}

void TransitionFade_Destroy(TransitionFade* fade) {
}

#ifdef NON_MATCHING
void TransitionFade_Move(TransitionFade* fade, s32 updateRate) {
    char pad[2];
    s16 newAlpha;
    s32 alpha;

    switch (fade->fadeType) {
        case 0:
            break;
        case 1:
            fade->fadeTimer += updateRate;
            if (fade->fadeTimer >= gSaveContext.fadeDuration) {
                fade->fadeTimer = gSaveContext.fadeDuration;
                fade->isDone = 1;
            }
            if (gSaveContext.fadeDuration == 0) {
                // Divide by 0! Zero is included in ZCommonGet fade_speed
                osSyncPrintf(VT_COL(RED, WHITE) "０除算! ZCommonGet fade_speed に０がはいってる" VT_RST);
            }
            alpha = (fade->fadeTimer * 255.0f) / gSaveContext.fadeDuration;
            fade->fadeColor.a = fade->fadeDirection != 0 ? 0xFF - alpha : alpha;
            break;
        case 2:
            newAlpha = fade->fadeColor.a;
            if (iREG(50) != 0) {
                if (iREG(50) < 0) {
                    if (Math_ApproxS(&newAlpha, 0xFF, 0xFF) != 0) {
                        iREG(50) = 0x96;
                    }
                } else {
                    Math_ApproxS(&iREG(50), 0x14, 0x3C);
                    if (Math_ApproxS(&newAlpha, 0, iREG(50)) != 0) {
                        iREG(50) = 0;
                        fade->isDone = 1;
                    }
                }
            }
            fade->fadeColor.a = newAlpha;
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo_fade/TransitionFade_Move.s")
#endif

void TransitionFade_Draw(TransitionFade* fade, Gfx** gfxP) {
    Gfx* gfx;
    Color_RGBA8* color;
    if (fade->fadeColor.a > 0) {
        color = &fade->fadeColor;
        gfx = *gfxP;
        gSPDisplayList(gfx++, sRCPSetupFade);
        gDPSetPrimColor(gfx++, 0, 0, color->r, color->g, color->b, color->a);
        gDPFillRectangle(gfx++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);
        gDPPipeSync(gfx++);
        *gfxP = gfx;
    }
}

s32 TransitionFade_IsDone(TransitionFade* fade) {
    return fade->isDone;
}

void TransitionFade_SetColor(TransitionFade* fade, u32 color) {
    fade->fadeColor.rgba = color;
}

void TransitionFade_SetType(TransitionFade* fade, s32 type) {
    if (type == 1) {
        fade->fadeType = 1;
        fade->fadeDirection = 1;
    } else if (type == 2) {
        fade->fadeType = 1;
        fade->fadeDirection = 0;
    } else if (type == 3) {
        fade->fadeType = 2;
    } else {
        fade->fadeType = 0;
    }
}
