#include "global.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

// original name: "spark"
void EffectSpark_Init(void* thisx, void* initParamsx) {
    EffectSpark* this = (EffectSpark*)thisx;
    EffectSparkInit* initParams = (EffectSparkInit*)initParamsx;
    EffectSparkElement* elem;
    f32 velocityNorm;
    s32 i;

    if ((this != NULL) && (initParams != NULL)) {
        if ((initParams->uDiv == 0) || (initParams->vDiv == 0)) {
            PRINTF("spark():u_div,v_div 0では困る。\n"); // "u_div,v_div 0 is not good."
            return;
        }

        this->position = initParams->position;
        this->speed = initParams->speed;
        this->gravity = initParams->gravity;
        this->uDiv = initParams->uDiv;
        this->vDiv = initParams->vDiv;
        this->colourStart[0].r = initParams->colourStart[0].r;
        this->colourStart[0].g = initParams->colourStart[0].g;
        this->colourStart[0].b = initParams->colourStart[0].b;
        this->colourStart[0].a = initParams->colourStart[0].a;
        this->colourStart[1].r = initParams->colourStart[1].r;
        this->colourStart[1].g = initParams->colourStart[1].g;
        this->colourStart[1].b = initParams->colourStart[1].b;
        this->colourStart[1].a = initParams->colourStart[1].a;
        this->colourStart[2].r = initParams->colourStart[2].r;
        this->colourStart[2].g = initParams->colourStart[2].g;
        this->colourStart[2].b = initParams->colourStart[2].b;
        this->colourStart[2].a = initParams->colourStart[2].a;
        this->colourStart[3].r = initParams->colourStart[3].r;
        this->colourStart[3].g = initParams->colourStart[3].g;
        this->colourStart[3].b = initParams->colourStart[3].b;
        this->colourStart[3].a = initParams->colourStart[3].a;
        this->colourEnd[0].r = initParams->colourEnd[0].r;
        this->colourEnd[0].g = initParams->colourEnd[0].g;
        this->colourEnd[0].b = initParams->colourEnd[0].b;
        this->colourEnd[0].a = initParams->colourEnd[0].a;
        this->colourEnd[1].r = initParams->colourEnd[1].r;
        this->colourEnd[1].g = initParams->colourEnd[1].g;
        this->colourEnd[1].b = initParams->colourEnd[1].b;
        this->colourEnd[1].a = initParams->colourEnd[1].a;
        this->colourEnd[2].r = initParams->colourEnd[2].r;
        this->colourEnd[2].g = initParams->colourEnd[2].g;
        this->colourEnd[2].b = initParams->colourEnd[2].b;
        this->colourEnd[2].a = initParams->colourEnd[2].a;
        this->colourEnd[3].r = initParams->colourEnd[3].r;
        this->colourEnd[3].g = initParams->colourEnd[3].g;
        this->colourEnd[3].b = initParams->colourEnd[3].b;
        this->colourEnd[3].a = initParams->colourEnd[3].a;
        this->duration = initParams->duration;

        this->numElements = (this->uDiv * this->vDiv) + 2;
        if (this->numElements > ARRAY_COUNT(this->elements)) {
            PRINTF("table_sizeオーバー\n"); // "over table_size"
            return;
        }

        for (i = 0; i < this->numElements; i++) {
            elem = &this->elements[i];

            elem->position.x = this->position.x;
            elem->position.y = this->position.y;
            elem->position.z = this->position.z;
            elem->velocity.x = Rand_ZeroOne() - 0.5f;
            elem->velocity.y = Rand_ZeroOne() - 0.5f;
            elem->velocity.z = Rand_ZeroOne() - 0.5f;

            velocityNorm = sqrtf(SQ(elem->velocity.x) + SQ(elem->velocity.y) + SQ(elem->velocity.z));

            if (!(fabsf(velocityNorm) < 0.008f)) {
                elem->velocity.x *= this->speed * (1.0f / velocityNorm);
                elem->velocity.y *= this->speed * (1.0f / velocityNorm);
                elem->velocity.z *= this->speed * (1.0f / velocityNorm);
            } else {
                elem->velocity.x = elem->velocity.z = 0.0f;
                elem->velocity.y = this->speed;
            }

            elem->unkVelocity.x = 30000.0f - Rand_ZeroOne() * 15000.0f;
            elem->unkVelocity.y = 30000.0f - Rand_ZeroOne() * 15000.0f;
            elem->unkVelocity.z = 30000.0f - Rand_ZeroOne() * 15000.0f;
            elem->unkPosition.x = Rand_ZeroOne() * 65534.0f;
            elem->unkPosition.y = Rand_ZeroOne() * 65534.0f;
            elem->unkPosition.z = Rand_ZeroOne() * 65534.0f;
        }

        this->timer = 0;
    }
}

void EffectSpark_Destroy(void* thisx) {
}

// original name: "EffectSparkInfo_proc"
s32 EffectSpark_Update(void* thisx) {
    EffectSpark* this = (EffectSpark*)thisx;
    EffectSparkElement* elem;
    s32 i;

    if (this == NULL) {
        PRINTF("EffectSparkInfo_proc():Spark Pointer is NULL\n");
    }

    for (i = 0; i < this->numElements; i++) {
        elem = &this->elements[i];

        elem->position.x += elem->velocity.x;
        elem->position.y += elem->velocity.y;
        elem->position.z += elem->velocity.z;
        elem->velocity.y += this->gravity;
        elem->unkPosition.x += elem->unkVelocity.x;
        elem->unkPosition.y += elem->unkVelocity.y;
        elem->unkPosition.z += elem->unkVelocity.z;
    }

    this->timer++;

    if (this->duration < this->timer) {
        return 1;
    } else {
        return 0;
    }
}

// original name: "EffectSparkInfo_disp"
void EffectSpark_Draw(void* thisx, GraphicsContext* gfxCtx) {
    Vtx* vertices;
    EffectSpark* this = (EffectSpark*)thisx;
    PlayState* play = Effect_GetPlayState();
    s32 i;
    s32 j;
    u8 sp1D3;
    u8 sp1D2;
    u8 sp1D1;
    u8 sp1D0;
    u8 sp1CF;
    u8 sp1CE;
    u8 sp1CD;
    u8 sp1CC;
    u8 sp1CB;
    u8 sp1CA;
    u8 sp1C9;
    u8 sp1C8;
    u8 sp1C7;
    u8 sp1C6;
    u8 sp1C5;
    u8 sp1C4;
    f32 ratio;

    OPEN_DISPS(gfxCtx, "../z_eff_spark.c", 293);

    if (this != NULL) {
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_38);
        gDPSetCycleType(POLY_XLU_DISP++, G_CYC_2CYCLE);
        gDPPipeSync(POLY_XLU_DISP++);

        gSPTexture(POLY_XLU_DISP++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
        gDPLoadTextureBlock(POLY_XLU_DISP++, gUnknownCircle6Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);

        gDPSetCombineMode(POLY_XLU_DISP++, G_CC_SHADEDECALA, G_CC_PASS2);
        gDPSetRenderMode(POLY_XLU_DISP++, G_RM_PASS, G_RM_ZB_CLD_SURF2);
        gSPClearGeometryMode(POLY_XLU_DISP++, G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR);
        gSPSetGeometryMode(POLY_XLU_DISP++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
        gDPPipeSync(POLY_XLU_DISP++);

        vertices = GRAPH_ALLOC(gfxCtx, this->numElements * sizeof(Vtx[4]));
        if (vertices == NULL) {
            // "Memory Allocation Failure graph_malloc"
            PRINTF("EffectSparkInfo_disp():メモリー確保失敗 graph_malloc\n");
            goto end;
        }

        j = 0;

        ratio = (f32)this->timer / (f32)this->duration;
        sp1D3 = this->colourStart[0].r + ((f32)this->colourEnd[0].r - (f32)this->colourStart[0].r) * ratio;
        sp1D2 = this->colourStart[0].g + ((f32)this->colourEnd[0].g - (f32)this->colourStart[0].g) * ratio;
        sp1D1 = this->colourStart[0].b + ((f32)this->colourEnd[0].b - (f32)this->colourStart[0].b) * ratio;
        sp1D0 = this->colourStart[0].a + ((f32)this->colourEnd[0].a - (f32)this->colourStart[0].a) * ratio;
        sp1CF = this->colourStart[1].r + ((f32)this->colourEnd[1].r - (f32)this->colourStart[1].r) * ratio;
        sp1CE = this->colourStart[1].g + ((f32)this->colourEnd[1].g - (f32)this->colourStart[1].g) * ratio;
        sp1CD = this->colourStart[1].b + ((f32)this->colourEnd[1].b - (f32)this->colourStart[1].b) * ratio;
        sp1CC = this->colourStart[1].a + ((f32)this->colourEnd[1].a - (f32)this->colourStart[1].a) * ratio;
        sp1CB = this->colourStart[2].r + ((f32)this->colourEnd[2].r - (f32)this->colourStart[2].r) * ratio;
        sp1CA = this->colourStart[2].g + ((f32)this->colourEnd[2].g - (f32)this->colourStart[2].g) * ratio;
        sp1C9 = this->colourStart[2].b + ((f32)this->colourEnd[2].b - (f32)this->colourStart[2].b) * ratio;
        sp1C8 = this->colourStart[2].a + ((f32)this->colourEnd[2].a - (f32)this->colourStart[2].a) * ratio;
        sp1C7 = this->colourStart[3].r + ((f32)this->colourEnd[3].r - (f32)this->colourStart[3].r) * ratio;
        sp1C6 = this->colourStart[3].g + ((f32)this->colourEnd[3].g - (f32)this->colourStart[3].g) * ratio;
        sp1C5 = this->colourStart[3].b + ((f32)this->colourEnd[3].b - (f32)this->colourStart[3].b) * ratio;
        sp1C4 = this->colourStart[3].a + ((f32)this->colourEnd[3].a - (f32)this->colourStart[3].a) * ratio;

        for (i = 0; i < this->numElements; i++) {
            MtxF sp12C;
            MtxF spEC;
            MtxF spAC;
            MtxF sp6C;
            EffectSparkElement* elem = &this->elements[i];
            Mtx* mtx;
            f32 temp;

            SkinMatrix_SetTranslate(&spEC, elem->position.x, elem->position.y, elem->position.z);
            temp = ((Rand_ZeroOne() * 2.5f) + 1.5f) / 64.0f;
            SkinMatrix_SetScale(&spAC, temp, temp, 1.0f);
            SkinMatrix_MtxFMtxFMult(&spEC, &play->billboardMtxF, &sp6C);
            SkinMatrix_MtxFMtxFMult(&sp6C, &spAC, &sp12C);

            vertices[j].v.ob[0] = -32;
            vertices[j].v.ob[1] = -32;
            vertices[j].v.ob[2] = 0;
            vertices[j].v.cn[0] = sp1D3;
            vertices[j].v.cn[1] = sp1D2;
            vertices[j].v.cn[2] = sp1D1;
            vertices[j].v.cn[3] = sp1D0;
            vertices[j].v.tc[0] = 0;
            vertices[j].v.tc[1] = 1024;
            vertices[j].v.flag = 0;

            vertices[j + 1].v.ob[0] = 32;
            vertices[j + 1].v.ob[1] = 32;
            vertices[j + 1].v.ob[2] = 0;
            vertices[j + 1].v.cn[0] = sp1CF;
            vertices[j + 1].v.cn[1] = sp1CE;
            vertices[j + 1].v.cn[2] = sp1CD;
            vertices[j + 1].v.cn[3] = sp1CC;
            vertices[j + 1].v.tc[0] = 1024;
            vertices[j + 1].v.tc[1] = 0;
            vertices[j + 1].v.flag = 0;

            vertices[j + 2].v.ob[0] = -32;
            vertices[j + 2].v.ob[1] = 32;
            vertices[j + 2].v.ob[2] = 0;
            vertices[j + 2].v.cn[0] = sp1CB;
            vertices[j + 2].v.cn[1] = sp1CA;
            vertices[j + 2].v.cn[2] = sp1C9;
            vertices[j + 2].v.cn[3] = sp1C8;
            vertices[j + 2].v.tc[0] = 0;
            vertices[j + 2].v.tc[1] = 0;
            vertices[j + 2].v.flag = 0;

            vertices[j + 3].v.ob[0] = 32;
            vertices[j + 3].v.ob[1] = -32;
            vertices[j + 3].v.ob[2] = 0;
            vertices[j + 3].v.cn[0] = sp1C7;
            vertices[j + 3].v.cn[1] = sp1C6;
            vertices[j + 3].v.cn[2] = sp1C5;
            vertices[j + 3].v.cn[3] = sp1C4;
            vertices[j + 3].v.tc[0] = 1024;
            vertices[j + 3].v.tc[1] = 1024;
            vertices[j + 3].v.flag = 0;

            j += 4;

            mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &sp12C);
            if (mtx == NULL) {
                goto end;
            }

            gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPVertex(POLY_XLU_DISP++, &vertices[4 * i], 4, 0);
            gSP2Triangles(POLY_XLU_DISP++, 2, 0, 3, 0, 2, 3, 1, 0);
        }

        gDPPipeSync(POLY_XLU_DISP++);
    }

end:
    CLOSE_DISPS(gfxCtx, "../z_eff_spark.c", 498);
}
