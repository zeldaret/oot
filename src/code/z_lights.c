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
    mapper->ambient.l.col[0] = red;
    mapper->ambient.l.colc[0] = red;
    mapper->ambient.l.col[1] = green;
    mapper->ambient.l.colc[1] = green;
    mapper->ambient.l.col[2] = blue;
    mapper->ambient.l.colc[2] = blue;
    mapper->numLights = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_80079EFC.s")

Light* Lights_MapperGetNextFreeSlot(LightMapper* mapper) {
    if (6 < mapper->numLights) {
        return NULL;
    }

    return &mapper->lights[mapper->numLights++];
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A0B4.s")

void func_8007A40C(LightMapper* mapper, LightInfoDirectionalParams* params, GlobalContext* globalCtx) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A474.s")

LightNode* Lights_FindFreeSlot() {
    LightNode* ret;

    if (0x1F < sLightsList.numOccupied) {
        return NULL;
    }

    ret = &sLightsList.lights[sLightsList.nextFree];

    while (ret->info != NULL) {
        sLightsList.nextFree++;

        if (sLightsList.nextFree < 0x20) {
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
    func_8007A698(lightCtx, 0, 0, 0, 0x3e4, 0x3200);
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A960.s")
/*
LightMapper* func_8007A960(GraphicsContext* gfxCtx, u8 red, u8 green, u8 blue) {
    void* temp_ret;
    void* temp_v0;

    temp_v0 = Graph_Alloc(gfxCtx, 0x80);
    temp_v0->unkC = red;
    temp_v0->unk8 = red;
    temp_v0->unkD = green;
    temp_v0->unk9 = green;
    temp_v0->unk0 = 0;
    temp_v0->unkE = blue;
    temp_v0->unkA = blue;
    return temp_v0;
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007ABBC.s")
