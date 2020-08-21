#include <ultra64.h>
#include <global.h>

LightsList sLightsList;

void Lights_InitPositionalLight(LightInfoPositional* info, s16 posX, s16 posY, s16 posZ, u8 red, u8 green, u8 blue,
                                s16 radius, u32 type) {
    info->type = type;
    info->params.posX = posX;
    info->params.posY = posY;
    info->params.posZ = posZ;
    Lights_SetPositionalLightColorAndRadius(info, red, green, blue, radius);
}

void Lights_InitType0PositionalLight(LightInfoPositional* info, s16 posX, s16 posY, s16 posZ, u8 red, u8 green, u8 blue,
                                     s16 radius) {
    Lights_InitPositionalLight(info, posX, posY, posZ, red, green, blue, radius, 0);
}

void Lights_InitType2PositionalLight(LightInfoPositional* info, s16 posX, s16 posY, s16 posZ, u8 red, u8 green, u8 blue,
                                     s16 radius) {
    Lights_InitPositionalLight(info, posX, posY, posZ, red, green, blue, radius, 2);
}

void Lights_SetPositionalLightColorAndRadius(LightInfoPositional* info, u8 red, u8 green, u8 blue, s16 radius) {
    info->params.red = red;
    info->params.green = green;
    info->params.blue = blue;
    info->params.radius = radius;
}

void Lights_InitDirectional(LightInfoDirectional* info, s8 dirX, s8 dirY, s8 dirZ, u8 red, u8 green, u8 blue) {
    info->type = 1;
    info->params.dirX = dirX;
    info->params.dirY = dirY;
    info->params.dirZ = dirZ;
    info->params.red = red;
    info->params.green = green;
    info->params.blue = blue;
}

void Lights_MapperInit(LightMapper* mapper, u8 red, u8 green, u8 blue) {
    mapper->lights.a.l.col[0] = red;
    mapper->lights.a.l.colc[0] = red;
    mapper->lights.a.l.col[1] = green;
    mapper->lights.a.l.colc[1] = green;
    mapper->lights.a.l.col[2] = blue;
    mapper->lights.a.l.colc[2] = blue;
    mapper->numLights = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_80079EFC.s")
// Lights_Draw
/*
void func_80079EFC(LightMapper* mapper, GraphicsContext* gfxCtxArg) {
    Light* light;
    s32 i;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = gfxCtxArg;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_lights.c", 339);

    gSPNumLights(gfxCtx->polyOpa.p++, mapper->numLights);
    gSPNumLights(gfxCtx->polyXlu.p++, mapper->numLights);

    for (i = 0; i < mapper->numLights; i++) {
        light = &mapper->lights.l[i];
        gSPLight(gfxCtx->polyOpa.p++, light, i);
        gSPLight(gfxCtx->polyXlu.p++, light, i);
    }
    i++;
    gSPLight(gfxCtx->polyOpa.p++, &mapper->lights.a, i);
    gSPLight(gfxCtx->polyXlu.p++, &mapper->lights.a, i);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_lights.c", 352);
}
*/


Light* Lights_MapperGetNextFreeSlot(LightMapper* mapper) {
    if (mapper->numLights >= 7) {
        return NULL;
    } else {
        return &mapper->lights.l[mapper->numLights++];
    }
}

void func_8007A0B4(LightMapper* mapper, LightInfoDirectionalParams* params, s32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A0B4.s")

void func_8007A40C(LightMapper* mapper, LightInfoDirectionalParams* params, s32 arg2) {
    Light* light = Lights_MapperGetNextFreeSlot(mapper);

    if (light != NULL) {
        light->l.col[0] = light->l.colc[0] = params->red;
        light->l.col[1] = light->l.colc[1] = params->green;
        light->l.col[2] = light->l.colc[2] = params->blue;
        light->l.dir[0] = params->dirX;
        light->l.dir[1] = params->dirY;
        light->l.dir[2] = params->dirZ;
    }
}

// Lights_UpdateAll?
void func_8007A474(LightMapper* mapper, LightNode* head, Vec3f vec) {
    LightUpdateFunc updateFuncs[] = { func_8007A0B4, func_8007A40C, func_8007A0B4 };
    LightInfo* info;

    while (head != NULL) {
        info = head->info;
        updateFuncs[info->type](mapper, &info->params, vec);
        head = head->next;
    }
}

LightNode* Lights_FindFreeSlot() {
    LightNode* ret;

    if (sLightsList.numOccupied >= 32) {
        return NULL;
    }

    ret = &sLightsList.lights[sLightsList.nextFree];

    while (ret->info != NULL) {
        sLightsList.nextFree++;

        if (sLightsList.nextFree < 32) {
            ret++;
        } else {
            sLightsList.nextFree = 0;
            ret = &sLightsList.lights[0];
        }
    }

    sLightsList.numOccupied++;

    return ret;
}

// return type must not be void to match
s32 Lights_Free(LightNode* light) {
    if (light != NULL) {
        sLightsList.numOccupied--;
        light->info = NULL;
        sLightsList.nextFree = (light - sLightsList.lights) / sizeof(LightNode);
    }
}

void func_8007A614(GlobalContext* globalCtx, LightContext* lightCtx) {
    Lights_ClearHead(globalCtx, lightCtx);
    Lights_SetAmbientColor(lightCtx, 80, 80, 80);
    func_8007A698(lightCtx, 0, 0, 0, 0x3E4, 0x3200);
    bzero(&sLightsList, sizeof(sLightsList));
}

void Lights_SetAmbientColor(LightContext* lightCtx, u8 red, u8 green, u8 blue) {
    lightCtx->ambientRed = red;
    lightCtx->ambientGreen = green;
    lightCtx->ambientBlue = blue;
}

void func_8007A698(LightContext* lightCtx, u8 arg1, u8 arg2, u8 arg3, s16 arg4, s16 arg5) {
    lightCtx->unk_07 = arg1;
    lightCtx->unk_08 = arg2;
    lightCtx->unk_09 = arg3;
    lightCtx->unk_0A = arg4;
    lightCtx->unk_0C = arg5;
}

LightMapper* Lights_CreateMapper(LightContext* lightCtx, GraphicsContext* gfxCtx) {
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

LightNode* Lights_Insert(GlobalContext* globalCtx, LightContext* lightCtx, void* info) {
    LightNode* light;

    light = Lights_FindFreeSlot();
    if (light != NULL) {
        light->info = info;
        light->prev = NULL;
        light->next = lightCtx->head;

        if (lightCtx->head != NULL) {
            lightCtx->head->prev = light;
        }

        lightCtx->head = light;
    }

    return light;
}

void Lights_Remove(GlobalContext* globalCtx, LightContext* lightCtx, LightNode* light) {
    if (light != NULL) {
        if (light->prev != NULL) {
            light->prev->next = light->next;
        } else {
            lightCtx->head = light->next;
        }

        if (light->next != NULL) {
            light->next->prev = light->prev;
        }

        Lights_Free(light);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A824.s")

LightMapper* func_8007A960(GraphicsContext* gfxCtx, u8 red, u8 green, u8 blue) {
    LightMapper* mapper;

    mapper = Graph_Alloc(gfxCtx, sizeof(LightMapper));

    mapper->lights.a.l.col[0] = mapper->lights.a.l.colc[0] = red;
    mapper->lights.a.l.col[1] = mapper->lights.a.l.colc[1] = green;
    mapper->lights.a.l.col[2] = mapper->lights.a.l.colc[2] = blue;
    mapper->numLights = 0;

    return mapper;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007ABBC.s")
