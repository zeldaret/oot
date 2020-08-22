#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x000 */ s32 numOccupied;
    /* 0x004 */ s32 searchIndex;
    /* 0x008 */ LightNode lights[32];
} LightsBuffer; // size = 0x188

LightsBuffer sLightsBuffer;

void Lights_InitPointLight(LightInfo* info, s16 x, s16 y, s16 z, u8 r, u8 g, u8 b, s16 radius, u32 type) {
    info->type = type;
    info->params.point.x = x;
    info->params.point.y = y;
    info->params.point.z = z;
    Lights_PointLightSetColorRadius(info, r, g, b, radius);
}

void Lights_InitPointLightNoGlow(LightInfo* info, s16 x, s16 y, s16 z, u8 r, u8 g, u8 b, s16 radius) {
    Lights_InitPointLight(info, x, y, z, r, g, b, radius, LIGHT_POINT_NOGLOW);
}

void Lights_InitPointLightGlow(LightInfo* info, s16 x, s16 y, s16 z, u8 r, u8 g, u8 b, s16 radius) {
    Lights_InitPointLight(info, x, y, z, r, g, b, radius, LIGHT_POINT_GLOW);
}

void Lights_PointLightSetColorRadius(LightInfo* info, u8 r, u8 g, u8 b, s16 radius) {
    info->params.point.color.r = r;
    info->params.point.color.g = g;
    info->params.point.color.b = b;
    info->params.point.radius = radius;
}

void Lights_InitDirectionalLight(LightInfo* info, s8 x, s8 y, s8 z, u8 r, u8 g, u8 b) {
    info->type = LIGHT_DIRECTIONAL;
    info->params.dir.x = x;
    info->params.dir.y = y;
    info->params.dir.z = z;
    info->params.dir.color.r = r;
    info->params.dir.color.g = g;
    info->params.dir.color.b = b;
}

void Lights_ResetCollection(LightCollection* collection, u8 r, u8 g, u8 b) {
    collection->lights.a.l.col[0] = collection->lights.a.l.colc[0] = r;
    collection->lights.a.l.col[1] = collection->lights.a.l.colc[1] = g;
    collection->lights.a.l.col[2] = collection->lights.a.l.colc[2] = b;
    collection->numLights = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_80079EFC.s")
/*
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

    gSPLight(gfxCtx->polyOpa.p++, &collection->lights.a, i + 1);
    gSPLight(gfxCtx->polyXlu.p++, &collection->lights.a, i + 1);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_lights.c", 352);
}
*/
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

                light->l.col[0] = light->l.colc[0] = params->point.color.r * scale;
                light->l.col[1] = light->l.colc[1] = params->point.color.g * scale;
                light->l.col[2] = light->l.colc[2] = params->point.color.b * scale;

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
        light->l.col[0] = light->l.colc[0] = params->dir.color.r;
        light->l.col[1] = light->l.colc[1] = params->dir.color.g;
        light->l.col[2] = light->l.colc[2] = params->dir.color.b;
        light->l.dir[0] = params->dir.x;
        light->l.dir[1] = params->dir.y;
        light->l.dir[2] = params->dir.z;
    }
}

void func_8007A474(LightCollection* collection, LightNode* head, Vec3f* vec) {
    LightUpdateFunc updateFuncs[] = { Lights_UpdatePoint, Lights_UpdateDirectional, Lights_UpdatePoint };
    LightInfo* info;

    while (head != NULL) {
        info = head->info;
        updateFuncs[info->type](collection, &info->params, vec);
        head = head->next;
    }
}

LightNode* Lights_FindSlot() {
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
s32 Lights_Free(LightNode* light) {
    if (light != NULL) {
        sLightsBuffer.numOccupied--;
        light->info = NULL;
        sLightsBuffer.searchIndex = (light - sLightsBuffer.lights) / sizeof(LightNode);
    }
}

void func_8007A614(GlobalContext* globalCtx, LightContext* lightCtx) {
    Lights_ClearHead(globalCtx, lightCtx);
    Lights_SetAmbientColor(lightCtx, 80, 80, 80);
    func_8007A698(lightCtx, 0, 0, 0, 0x3E4, 0x3200);
    bzero(&sLightsBuffer, sizeof(sLightsBuffer));
}

void Lights_SetAmbientColor(LightContext* lightCtx, u8 r, u8 g, u8 b) {
    lightCtx->ambientRed = r;
    lightCtx->ambientGreen = g;
    lightCtx->ambientBlue = b;
}

void func_8007A698(LightContext* lightCtx, u8 arg1, u8 arg2, u8 arg3, s16 arg4, s16 arg5) {
    lightCtx->unk_07 = arg1;
    lightCtx->unk_08 = arg2;
    lightCtx->unk_09 = arg3;
    lightCtx->unk_0A = arg4;
    lightCtx->unk_0C = arg5;
}

LightCollection* Lights_NewCollection(LightContext* lightCtx, GraphicsContext* gfxCtx) {
    return func_8007A960(gfxCtx, lightCtx->ambientRed, lightCtx->ambientGreen, lightCtx->ambientBlue);
}

void Lights_ClearHead(GlobalContext* globalCtx, LightContext* lightCtx) {
    lightCtx->head = NULL;
}

void Lights_RemoveAll(GlobalContext* globalCtx, LightContext* lightCtx) {
    while (lightCtx->head != NULL) {
        Lights_Remove(globalCtx, lightCtx, lightCtx->head);
        lightCtx->head = lightCtx->head->next;
    }
}

LightNode* Lights_Insert(GlobalContext* globalCtx, LightContext* lightCtx, LightInfo* info) {
    LightNode* node;

    node = Lights_FindSlot();

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

void Lights_Remove(GlobalContext* globalCtx, LightContext* lightCtx, LightNode* node) {
    if (node != NULL) {
        if (node->prev != NULL) {
            node->prev->next = node->next;
        } else {
            lightCtx->head = node->next;
        }

        if (node->next != NULL) {
            node->next->prev = node->prev;
        }

        Lights_Free(node);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A824.s")

LightCollection* func_8007A960(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b) {
    LightCollection* collection;

    collection = Graph_Alloc(gfxCtx, sizeof(LightCollection));

    collection->lights.a.l.col[0] = collection->lights.a.l.colc[0] = r;
    collection->lights.a.l.col[1] = collection->lights.a.l.colc[1] = g;
    collection->lights.a.l.col[2] = collection->lights.a.l.colc[2] = b;
    collection->numLights = 0;

    return collection;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A9B4.s")
void func_8007A9B4(GlobalContext* globalCtx) {
    Vec3f pos;      // sp9C
    Vec3f multDest; // sp88
    f32 wDest;      // sp84
    f32 wY;
    f32 wX;
    LightNode* node;
    LightInfo* info;

    node = globalCtx->lightCtx.head;

    while (node != NULL) {
        info = node->info;

        if (info->type == LIGHT_POINT_GLOW) {
            pos.x = info->params.point.x;
            pos.y = info->params.point.y;
            pos.z = info->params.point.z;
            func_8002BE04(globalCtx, &pos, &multDest, &wDest);
            info->params.point.unk_09 = false;

            if (multDest.y > 1.0f) {
                wX = multDest.x * wDest;

                if (fabsf(wX) < 1.0f) {
                    wY = multDest.y * wDest;

                    if (fabsf(wY) < 1.0f) {
                        if ((((multDest.y * wDest) * 16352.0f) + 16352.0f) <
                            (func_8006F0A0(wY, wDest,
                                           gZBuffer[(s32)((wY * -240.f) + 240.f)][(s32)((wX * 320.f) + 320.f)] * 4 >> 3))) {
                            info->params.point.unk_09 = true;
                        }
                    }
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
        s32 pad[2];
        u8* red;
        u8* green;
        u8* blue;

        info = node->info;
        params = &info->params.point;
        if ((info->type == LIGHT_POINT_GLOW) && (params->unk_09)) {
            scale = SQ(params->radius) * 0.0000026f;

            red = &params->color.r; // these pointers to colors have to be a fake match..
            green = &params->color.g;
            blue = &params->color.b;

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, *red, *green, *blue, 50);
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
