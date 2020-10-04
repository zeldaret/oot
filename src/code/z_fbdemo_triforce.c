#include "global.h"

Gfx sTriforceDList[] = {
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

Vtx sTriforceVTX[] = {
    VTX(0, 577, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),        VTX(1000, -1154, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-1000, -1154, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),  VTX(0, -1154, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(500, -288, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),     VTX(-500, -288, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-32000, 32000, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF), VTX(32000, 32000, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(32000, -32000, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF), VTX(-32000, -32000, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
};

void TransitionTriforce_Start(TransitionTriforce* this) {
    switch (this->state) {
        case 1:
        case 2:
            this->transPos = 1.0f;
            return;
    }
    this->transPos = 0.03f;
}

TransitionTriforce* TransitionTriforce_Init(TransitionTriforce* this) {
    bzero(this, sizeof(*this));
    guOrtho(&this->projection, -160.0f, 160.0f, -120.0f, 120.0f, -1000.0f, 1000.0f, 1.0f);
    this->transPos = 1.0f;
    this->state = 2;
    this->step = 0.015f;
    this->fadeDirection = 1;
    return this;
}

void TransitionTriforce_Destroy(TransitionTriforce* this) {
}

void TransitionTriforce_Update(TransitionTriforce* this, s32 updateRate) {
    f32 temp_f0;
    s32 i;
    for (i = updateRate; i > 0; i--) {
        if (this->state == 1) {
            this->transPos = CLAMP_MIN(this->transPos * (1.0f - this->step), 0.03f);
        } else if (this->state == 2) {
            this->transPos = CLAMP_MIN(this->transPos - this->step, 0.03f);
        } else if (this->state == 3) {
            this->transPos = CLAMP_MAX(this->transPos / (1.0f - this->step), 1.0f);
        } else if (this->state == 4) {
            this->transPos = CLAMP_MAX(this->transPos + this->step, 1.0f);
        }
    }
}

void TransitionTriforce_SetColor(TransitionTriforce* this, u32 color) {
    this->color.rgba = color;
}

void TransitionTriforce_SetType(TransitionTriforce* this, s32 type) {
    this->fadeDirection = type;
}

// unused
void TransitionTriforce_SetState(TransitionTriforce* this, s32 state) {
    this->state = state;
}

void TransitionTriforce_Draw(TransitionTriforce* this, Gfx** gfxP) {

    Gfx* gfx = *gfxP;
    Mtx* modelView;
    f32 scale;
    char pad[4];

    char pad2[4];
    f32 rotation;

    rotation = this->transPos * 360.0f;
    modelView = this->modelView[this->frame];
    scale = this->transPos * 0.625f;
    this->frame ^= 1;
    osSyncPrintf("rate=%f tx=%f ty=%f rotate=%f\n", this->transPos, 0.0f, 0.0f, rotation);
    guScale(&modelView[0], scale, scale, 1.0f);
    guRotate(&modelView[1], rotation, 0.0f, 0.0f, 1.0f);
    guTranslate(&modelView[2], 0.0f, 0.0f, 0.0f);
    gDPPipeSync(gfx++);
    gSPDisplayList(gfx++, sTriforceDList);
    gDPSetColor(gfx++, G_SETPRIMCOLOR, this->color.rgba);
    gDPSetCombineMode(gfx++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gSPMatrix(gfx++, &this->projection, G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &modelView[0], G_MTX_LOAD);
    gSPMatrix(gfx++, &modelView[1], G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_MUL);
    gSPMatrix(gfx++, &modelView[2], G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_MUL);
    gSPVertex(gfx++, sTriforceVTX, 10, 0);
    if (!TransitionTriforce_IsDone(this)) {
        switch (this->fadeDirection) {
            case 1:
                gSP2Triangles(gfx++, 0, 4, 5, 0, 4, 1, 3, 0);
                gSP1Triangle(gfx++, 5, 3, 2, 0);
                break;
            case 2:
                gSP2Triangles(gfx++, 3, 4, 5, 0, 0, 2, 6, 0);
                gSP2Triangles(gfx++, 0, 6, 7, 0, 1, 0, 7, 0);
                gSP2Triangles(gfx++, 1, 7, 8, 0, 1, 8, 9, 0);
                gSP2Triangles(gfx++, 1, 9, 2, 0, 2, 9, 6, 0);
                break;
        }
    } else {
        switch (this->fadeDirection) {
            case 1:
                break;
            case 2:
                gSP1Quadrangle(gfx++, 6, 7, 8, 9, 0);
                break;
        }
    }
    gDPPipeSync(gfx++);
    *gfxP = gfx;
}

s32 TransitionTriforce_IsDone(TransitionTriforce* this) {
    s32 ret = 0;
    if (this->state == 1 || this->state == 2) {
        return this->transPos <= 0.03f;

    } else if (this->state == 3 || this->state == 4) {
        return this->transPos >= 1.0f;
    }
    return ret;
}
