#include "global.h"
#include "terminal.h"

static Gfx sFadeSetupDL[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsSPEndDisplayList(),
};

void TransitionFade_Start(void* thisx) {
    TransitionFade* this = (TransitionFade*)thisx;

    switch (this->fadeType) {
        case 0:
            break;

        case 1:
            this->fadeTimer = 0;
            this->fadeColor.a = this->fadeDirection != 0 ? 255 : 0;
            break;

        case 2:
            this->fadeColor.a = 0;
            break;
    }
    this->isDone = false;
}

void* TransitionFade_Init(void* thisx) {
    TransitionFade* this = (TransitionFade*)thisx;

    bzero(this, sizeof(TransitionFade));
    return this;
}

void TransitionFade_Destroy(void* thisx) {
}

void TransitionFade_Update(void* thisx, s32 updateRate) {
    s32 alpha;
    s16 newAlpha;
    TransitionFade* this = (TransitionFade*)thisx;

    switch (this->fadeType) {
        case 0:
            break;

        case 1:
            this->fadeTimer += updateRate;
            if (this->fadeTimer >= gSaveContext.transFadeDuration) {
                this->fadeTimer = gSaveContext.transFadeDuration;
                this->isDone = true;
            }
            if ((u32)gSaveContext.transFadeDuration == 0) {
                // "Divide by 0! Zero is included in ZCommonGet fade_speed"
                osSyncPrintf(VT_COL(RED, WHITE) "０除算! ZCommonGet fade_speed に０がはいってる" VT_RST);
            }

            alpha = (255.0f * this->fadeTimer) / ((void)0, gSaveContext.transFadeDuration);
            this->fadeColor.a = (this->fadeDirection != 0) ? 255 - alpha : alpha;
            break;

        case 2:
            newAlpha = this->fadeColor.a;
            if (R_TRANS_FADE_FLASH_ALPHA_STEP != 0) {
                if (R_TRANS_FADE_FLASH_ALPHA_STEP < 0) {
                    if (Math_StepToS(&newAlpha, 255, 255)) {
                        R_TRANS_FADE_FLASH_ALPHA_STEP = 150;
                    }
                } else {
                    Math_StepToS(&R_TRANS_FADE_FLASH_ALPHA_STEP, 20, 60);
                    if (Math_StepToS(&newAlpha, 0, R_TRANS_FADE_FLASH_ALPHA_STEP)) {
                        R_TRANS_FADE_FLASH_ALPHA_STEP = 0;
                        this->isDone = true;
                    }
                }
            }
            this->fadeColor.a = newAlpha;
            break;
    }
}

void TransitionFade_Draw(void* thisx, Gfx** gfxP) {
    TransitionFade* this = (TransitionFade*)thisx;
    Gfx* gfx;
    Color_RGBA8_u32* color = &this->fadeColor;

    if (color->a > 0) {
        gfx = *gfxP;
        gSPDisplayList(gfx++, sFadeSetupDL);
        gDPSetPrimColor(gfx++, 0, 0, color->r, color->g, color->b, color->a);
        gDPFillRectangle(gfx++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);
        gDPPipeSync(gfx++);
        *gfxP = gfx;
    }
}

s32 TransitionFade_IsDone(void* thisx) {
    TransitionFade* this = (TransitionFade*)thisx;

    return this->isDone;
}

void TransitionFade_SetColor(void* thisx, u32 color) {
    TransitionFade* this = (TransitionFade*)thisx;

    this->fadeColor.rgba = color;
}

void TransitionFade_SetType(void* thisx, s32 type) {
    TransitionFade* this = (TransitionFade*)thisx;

    if (type == TRANS_INSTANCE_TYPE_START) {
        this->fadeType = 1;
        this->fadeDirection = 1;
    } else if (type == TRANS_INSTANCE_TYPE_END) {
        this->fadeType = 1;
        this->fadeDirection = 0;
    } else if (type == TRANS_INSTANCE_TYPE_FADE_FLASH) {
        this->fadeType = 2;
    } else {
        this->fadeType = 0;
    }
}
