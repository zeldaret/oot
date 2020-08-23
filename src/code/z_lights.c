#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x000 */ s32 numOccupied;
    /* 0x004 */ s32 searchIndex;
    /* 0x008 */ LightNode lights[32];
} LightsBuffer; // size = 0x188

LightsBuffer sLightsBuffer;

void Lights_PointSetData(LightInfo* info, s16 x, s16 y, s16 z, u8 r, u8 g, u8 b, s16 radius, u32 type) {
    info->type = type;
    info->params.point.x = x;
    info->params.point.y = y;
    info->params.point.z = z;
    Lights_PointSetColorAndRadius(info, r, g, b, radius);
}

void Lights_PointNoGlowSetData(LightInfo* info, s16 x, s16 y, s16 z, u8 r, u8 g, u8 b, s16 radius) {
    Lights_PointSetData(info, x, y, z, r, g, b, radius, LIGHT_POINT_NOGLOW);
}

void Lights_PointGlowSetData(LightInfo* info, s16 x, s16 y, s16 z, u8 r, u8 g, u8 b, s16 radius) {
    Lights_PointSetData(info, x, y, z, r, g, b, radius, LIGHT_POINT_GLOW);
}

void Lights_PointSetColorAndRadius(LightInfo* info, u8 r, u8 g, u8 b, s16 radius) {
    info->params.point.color[0] = r;
    info->params.point.color[1] = g;
    info->params.point.color[2] = b;
    info->params.point.radius = radius;
}

void Lights_DirectionalSetData(LightInfo* info, s8 x, s8 y, s8 z, u8 r, u8 g, u8 b) {
    info->type = LIGHT_DIRECTIONAL;
    info->params.dir.x = x;
    info->params.dir.y = y;
    info->params.dir.z = z;
    info->params.dir.color[0] = r;
    info->params.dir.color[1] = g;
    info->params.dir.color[2] = b;
}

// unused
void Lights_ResetCollection(LightCollection* collection, u8 r, u8 g, u8 b) {
    collection->lights.a.l.col[0] = collection->lights.a.l.colc[0] = r;
    collection->lights.a.l.col[1] = collection->lights.a.l.colc[1] = g;
    collection->lights.a.l.col[2] = collection->lights.a.l.colc[2] = b;
    collection->numLights = 0;
}

#ifdef NON_MATCHING
// Lights_DrawCollection
//
// issues with incrementing in the loop
// adding +1 to both i's outside of the loop helps immensely, but then its not equivalent anymore
void func_80079EFC(LightCollection* collection, GraphicsContext* gfxCtxArg) {
    Light* light;
    s32 i;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = gfxCtxArg;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_lights.c", 339);

    gSPNumLights(gfxCtx->polyOpa.p++, collection->numLights);
    gSPNumLights(gfxCtx->polyXlu.p++, collection->numLights);

    for (i = 0; i < collection->numLights; i++) {
        light = &collection->lights.l[i];
        gSPLight(gfxCtx->polyOpa.p++, light, i + 1);
        gSPLight(gfxCtx->polyXlu.p++, light, i + 1);
    }

    gSPLight(gfxCtx->polyOpa.p++, &collection->lights.a, i);
    gSPLight(gfxCtx->polyXlu.p++, &collection->lights.a, i);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_lights.c", 352);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_80079EFC.s")
#endif

Light* Lights_CollectionFindSlot(LightCollection* collection) {
    if (collection->numLights >= 7) {
        return NULL;
    } else {
        return &collection->lights.l[collection->numLights++];
    }
}

void Lights_UpdatePoint(LightCollection* collection, LightParams* params, Vec3f* vec) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    f32 posDiff;
    f32 scale;
    Light* light;

    if (vec != NULL) {
        xDiff = params->point.x - vec->x;
        yDiff = params->point.y - vec->y;
        zDiff = params->point.z - vec->z;
        scale = params->point.radius;
        posDiff = SQ(xDiff) + SQ(yDiff) + SQ(zDiff);

        if (posDiff < SQ(scale)) {
            light = Lights_CollectionFindSlot(collection);

            if (light != NULL) {
                posDiff = sqrtf(posDiff);
                if (1) {}
                scale = posDiff / scale;
                scale = 1 - SQ(scale);

                light->l.col[0] = light->l.colc[0] = params->point.color[0] * scale;
                light->l.col[1] = light->l.colc[1] = params->point.color[1] * scale;
                light->l.col[2] = light->l.colc[2] = params->point.color[2] * scale;

                scale = (posDiff < 1.0f) ? 120.0f : 120.0f / posDiff;

                light->l.dir[0] = xDiff * scale;
                light->l.dir[1] = yDiff * scale;
                light->l.dir[2] = zDiff * scale;
            }
        }
    }
}

void Lights_UpdateDirectional(LightCollection* collection, LightParams* params, Vec3f* vec) {
    Light* light = Lights_CollectionFindSlot(collection);

    if (light != NULL) {
        light->l.col[0] = light->l.colc[0] = params->dir.color[0];
        light->l.col[1] = light->l.colc[1] = params->dir.color[1];
        light->l.col[2] = light->l.colc[2] = params->dir.color[2];
        light->l.dir[0] = params->dir.x;
        light->l.dir[1] = params->dir.y;
        light->l.dir[2] = params->dir.z;
    }
}

void Lights_UpdateCollection(LightCollection* collection, LightNode* head, Vec3f* vec) {
    CollectionUpdateFunc updateFuncs[] = { Lights_UpdatePoint, Lights_UpdateDirectional, Lights_UpdatePoint };
    LightInfo* info;

    while (head != NULL) {
        info = head->info;
        updateFuncs[info->type](collection, &info->params, vec);
        head = head->next;
    }
}

LightNode* Lights_FindBufSlot() {
    LightNode* node;

    if (sLightsBuffer.numOccupied >= 32) {
        return NULL;
    }

    node = &sLightsBuffer.lights[sLightsBuffer.searchIndex];

    while (node->info != NULL) {
        sLightsBuffer.searchIndex++;

        if (sLightsBuffer.searchIndex < 32) {
            node++;
        } else {
            sLightsBuffer.searchIndex = 0;
            node = &sLightsBuffer.lights[0];
        }
    }

    sLightsBuffer.numOccupied++;

    return node;
}

// return type must not be void to match
s32 Lights_FreeNode(LightNode* light) {
    if (light != NULL) {
        sLightsBuffer.numOccupied--;
        light->info = NULL;
        sLightsBuffer.searchIndex = (light - sLightsBuffer.lights) / sizeof(LightNode);
    }
}

void Lights_InitContext(GlobalContext* globalCtx, LightContext* lightCtx) {
    Lights_ClearHead(globalCtx, lightCtx);
    Lights_SetAmbientColor(lightCtx, 80, 80, 80);
    func_8007A698(lightCtx, 0, 0, 0, 0x3E4, 0x3200);
    bzero(&sLightsBuffer, sizeof(sLightsBuffer));
}

void Lights_SetAmbientColor(LightContext* lightCtx, u8 r, u8 g, u8 b) {
    lightCtx->ambient.r = r;
    lightCtx->ambient.g = g;
    lightCtx->ambient.b = b;
}

void func_8007A698(LightContext* lightCtx, u8 arg1, u8 arg2, u8 arg3, s16 numLights, s16 arg5) {
    lightCtx->unk_07 = arg1;
    lightCtx->unk_08 = arg2;
    lightCtx->unk_09 = arg3;
    lightCtx->unk_0A = numLights;
    lightCtx->unk_0C = arg5;
}

LightCollection* Lights_NewCollection(LightContext* lightCtx, GraphicsContext* gfxCtx) {
    return Lights_AllocAndSetCollection(gfxCtx, lightCtx->ambient.r, lightCtx->ambient.g, lightCtx->ambient.b);
}

void Lights_ClearHead(GlobalContext* globalCtx, LightContext* lightCtx) {
    lightCtx->head = NULL;
}

void Lights_ClearBuf(GlobalContext* globalCtx, LightContext* lightCtx) {
    while (lightCtx->head != NULL) {
        Lights_Free(globalCtx, lightCtx, lightCtx->head);
        lightCtx->head = lightCtx->head->next;
    }
}

LightNode* Lights_Insert(GlobalContext* globalCtx, LightContext* lightCtx, LightInfo* info) {
    LightNode* node;

    node = Lights_FindBufSlot();

    if (node != NULL) {
        node->info = info;
        node->prev = NULL;
        node->next = lightCtx->head;

        if (lightCtx->head != NULL) {
            lightCtx->head->prev = node;
        }

        lightCtx->head = node;
    }

    return node;
}

void Lights_Free(GlobalContext* globalCtx, LightContext* lightCtx, LightNode* node) {
    if (node != NULL) {
        if (node->prev != NULL) {
            node->prev->next = node->next;
        } else {
            lightCtx->head = node->next;
        }

        if (node->next != NULL) {
            node->next->prev = node->prev;
        }

        Lights_FreeNode(node);
    }
}

// unused
LightCollection* func_8007A824(GraphicsContext* gfxCtx, u8 ambientR, u8 ambientG, u8 ambientB, u8 numLights, u8 r, u8 g,
                               u8 b, s8 x, s8 y, s8 z) {
    LightCollection* collection;
    s32 i;

    collection = Graph_Alloc(gfxCtx, sizeof(LightCollection));

    collection->lights.a.l.col[0] = collection->lights.a.l.colc[0] = ambientR;
    collection->lights.a.l.col[1] = collection->lights.a.l.colc[1] = ambientG;
    collection->lights.a.l.col[2] = collection->lights.a.l.colc[2] = ambientB;
    collection->numLights = numLights;

    for (i = 0; i < numLights; i++) {
        collection->lights.l[i].l.col[0] = collection->lights.l[i].l.colc[0] = r;
        collection->lights.l[i].l.col[1] = collection->lights.l[i].l.colc[1] = g;
        collection->lights.l[i].l.col[2] = collection->lights.l[i].l.colc[2] = b;
        collection->lights.l[i].l.dir[0] = x;
        collection->lights.l[i].l.dir[1] = y;
        collection->lights.l[i].l.dir[2] = z;
    }

    func_80079EFC(collection, gfxCtx);

    return collection;
}

LightCollection* Lights_AllocAndSetCollection(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b) {
    LightCollection* collection;

    collection = Graph_Alloc(gfxCtx, sizeof(LightCollection));

    collection->lights.a.l.col[0] = collection->lights.a.l.colc[0] = r;
    collection->lights.a.l.col[1] = collection->lights.a.l.colc[1] = g;
    collection->lights.a.l.col[2] = collection->lights.a.l.colc[2] = b;
    collection->numLights = 0;

    return collection;
}

// Lights_GlowCheck

void func_8007A9B4(GlobalContext* globalCtx) {
    LightNode* node;
    LightPoint* params;
    Vec3f pos;
    Vec3f multDest;
    f32 wDest;
    f32 wX;
    f32 wY;
    s32 wZ;
    s32 zBuf;

    node = globalCtx->lightCtx.head;

    while (node != NULL) {
        params = &node->info->params.point;
        if (node->info->type == LIGHT_POINT_GLOW) {
            pos.x = params->x;
            pos.y = params->y;
            pos.z = params->z;
            func_8002BE04(globalCtx, &pos, &multDest, &wDest);
            params->drawGlow = false;
            wX = multDest.x * wDest;
            wY = multDest.y * wDest;

            if ((multDest.z > 1.0f) && (fabsf(wX) < 1.0f) && (fabsf(wY) < 1.0f)) {
                wZ = (s32)((multDest.z * wDest) * 16352.0f) + 16352;
                zBuf = gZBuffer[(s32)((wY * -120.0f) + 120.0f)][(s32)((wX * 160.0f) + 160.0f)] * 4;
                if (1) {}
                if (1) {}

                if (wZ < (func_8006F0A0(zBuf) >> 3)) {
                    params->drawGlow = true;
                }
            }
        }
        node = node->next;
    }
}

void Lights_DrawGlow(GlobalContext* globalCtx) {
    s32 pad;
    LightNode* node;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    node = globalCtx->lightCtx.head;

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_lights.c", 887);

    gfxCtx->polyXlu.p = func_800947AC(gfxCtx->polyXlu.p++);
    gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_NOISE);
    gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_MAGICSQ);
    gSPDisplayList(gfxCtx->polyXlu.p++, D_04015720);

    while (node != NULL) {
        LightInfo* info;
        LightPoint* params;
        f32 scale;
        s32 pad[3];
        u8* blue;

        info = node->info;
        params = &info->params.point;
        if ((info->type == LIGHT_POINT_GLOW) && (params->drawGlow)) {
            scale = SQ(params->radius) * 0.0000026f;

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, params->color[0], params->color[1], params->color[2], 50);
            Matrix_Translate(params->x, params->y, params->z, MTXMODE_NEW);
            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_lights.c", 918),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_04015760);
        }
        node = node->next;
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_lights.c", 927);
}
