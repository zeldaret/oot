#include <global.h>

#define gDPSetPrimColorMod(pkt, m, l, rgba)                                                    \
    _DW({                                                                                      \
        Gfx* _g = (Gfx*)(pkt);                                                                 \
                                                                                               \
        _g->words.w0 = (_SHIFTL(G_SETPRIMCOLOR, 24, 8) | _SHIFTL(m, 8, 8) | _SHIFTL(l, 0, 8)); \
        _g->words.w1 = (rgba);                                                                 \
    })


Gfx D_8012B030[] = {
    gsDPPipeSync(),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE | G_TD_CLAMP | G_TP_PERSP | G_CYC_1CYCLE | G_PM_1PRIMITIVE, G_AC_NONE | G_ZS_PIXEL | G_RM_AA_OPA_SURF | G_RM_AA_OPA_SURF2),
    gsSPEndDisplayList(),
};

Vtx D_8012B060[] = {
    { { { 0, 577, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { 1000, -1154, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { -1000, -1154, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { 0, -1154, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { 500, -288, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { -500, -288, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { -32000, 32000, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { 32000, 32000, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { 32000, -32000, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
    { { { -32000, -32000, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF }, }, },
};

void TransitionTriforce_Start(TransitionTriforce* triforce) {
    switch(triforce->state){
        case 1:
        case 2:
            triforce->transPos = 1.0f;
            return;
    }
    triforce->transPos = 0.03f;
}

TransitionTriforce* TransitionTriforce_Init(TransitionTriforce* triforce) {
    bzero(triforce, sizeof(*triforce));
    func_801045A4(&triforce->projection, -160.0f, 160.0f, -120.0f, 120.0f, -1000.0f, 1000.0f, 1.0f);
    triforce->transPos = 1.0f;
    triforce->state = 2;
    triforce->step = 0.015f;
    triforce->fadeDirection = 1;
    return triforce;
}

void TransitionTriforce_Destroy(TransitionTriforce* triforce) {
}

void TransitionTriforce_Move(TransitionTriforce* triforce, s32 updateRate) {
    f32 temp_f0;
    s32 i;
    for(i = updateRate; i > 0; i--){
        if(triforce->state == 1){
            triforce->transPos = CLAMP_MIN(triforce->transPos * (1.0f - triforce->step), 0.03f);
        } else if(triforce->state == 2){
            triforce->transPos = CLAMP_MIN(triforce->transPos - triforce->step, 0.03f);
        } else if (triforce->state == 3){
            triforce->transPos = CLAMP_MAX(triforce->transPos / (1.0f - triforce->step), 1.0f);
        } else if (triforce->state == 4){
            triforce->transPos = CLAMP_MAX(triforce->transPos + triforce->step, 1.0f);
        }
    }
}

void TransitionTriforce_SetColor(TransitionTriforce* triforce, u32 color) {
    triforce->color.rgba = color;
}

void TransitionTriforce_SetType(TransitionTriforce* triforce, s32 type) {
    triforce->fadeDirection = type;
}

// unused
void TransitionTriforce_SetState(TransitionTriforce* triforce, s32 state) {
    triforce->state = state;
}

#ifdef NON_MATCHING
void TransitionTriforce_Draw(TransitionTriforce* triforce, Gfx** gfxP) {
    char pad[4];
    Mtx *modelView;
    Gfx* gfx = *gfxP;
    f32 scale;
    f32 rotation;

    rotation = triforce->transPos * 360.0f;
    modelView = triforce->modelView[triforce->frame];
    scale = triforce->transPos * 0.625f;
    triforce->frame ^= 1;
    osSyncPrintf("rate=%f tx=%f ty=%f rotate=%f\n", triforce->transPos, 0.0f, 0.0f, rotation);
    guScale(&modelView[0], scale, scale, 1.0f);
    guRotate(&modelView[1], rotation, 0.0f, 0.0f, 1.0f);
    guTranslate(&modelView[2], 0.0f, 0.0f, 0.0f);
    gDPPipeSync(gfx++);
    gSPDisplayList(gfx++, D_8012B030);
    gDPSetPrimColorMod(gfx++, 0, 0, triforce->color.rgba);
    gDPSetCombineMode(gfx++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gSPMatrix(gfx++, &triforce->projection, G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &modelView[0], G_MTX_LOAD);
    gSPMatrix(gfx++, &modelView[1], G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_MUL);
    gSPMatrix(gfx++, &modelView[2], G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_MUL);
    gSPVertex(gfx++, D_8012B060, 10, 0);
    if (TransitionTriforce_IsDone(triforce) == 0) {
        switch (triforce->fadeDirection){
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
        switch(triforce->fadeDirection){
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo_triforce/TransitionTriforce_Draw.s")
#endif

#ifdef NON_MATCHING
s32 TransitionTriforce_IsDone(TransitionTriforce* triforce) {
    if(triforce->state == 1 || triforce->state == 2){
        if(triforce->transPos <= 0.03f){
            return 1;
        }
        return 0;
    }
    if(triforce->state == 3 || triforce->state == 4){
        if(triforce->transPos >= 1.0f){
            return 1;
        }
        return 0;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_fbdemo_triforce/TransitionTriforce_IsDone.s")
#endif
