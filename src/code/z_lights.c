#include <ultra64.h>
#include <global.h>

extern LightsList sLightsList;

void Lights_InitPositionalLight(LightInfoPositional* info, s16 posX, s16 posY, s16 posZ, u8 red, u8 green, u8 blue, s16 radius, u32 type)
{
    info->type = type;
    info->params.posX = posX;
    info->params.posY = posY;
    info->params.posZ = posZ;
    Lights_SetPositionalLightColorAndRadius(info, red, green, blue, radius);
}

void Lights_InitType0PositionalLight(LightInfoPositional* info, s16 posX, s16 posY, s16 posZ, u8 red, u8 green, u8 blue, s16 radius)
{
    Lights_InitPositionalLight(info, posX, posY, posZ, red, green, blue, radius, 0);
}

void Lights_InitType2PositionalLight(LightInfoPositional* info, s16 posX, s16 posY, s16 posZ, u8 red, u8 green, u8 blue, s16 radius)
{
    Lights_InitPositionalLight(info, posX, posY, posZ, red, green, blue, radius, 2);
}

void Lights_SetPositionalLightColorAndRadius(LightInfoPositional* info, u8 red, u8 green, u8 blue, s16 radius)
{
    info->params.red = red;
    info->params.green = green;
    info->params.blue = blue;
    info->params.radius = radius;
}

void Lights_InitDirectional(LightInfoDirectional* info, s8 dirX, s8 dirY, s8 dirZ, u8 red, u8 green, u8 blue)
{
    info->type = 1;
    info->params.dirX = dirX;
    info->params.dirY = dirY;
    info->params.dirZ = dirZ;
    info->params.red = red;
    info->params.green = green;
    info->params.blue = blue;
}

void Lights_MapperInit(LightMapper* mapper, u8 red, u8 green, u8 blue)
{
    mapper->ambient.l.col[0] = red;
    mapper->ambient.l.colc[0] = red;
    mapper->ambient.l.col[1] = green;
    mapper->ambient.l.colc[1] = green;
    mapper->ambient.l.col[2] = blue;
    mapper->ambient.l.colc[2] = blue;
    mapper->numLights = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_80079EFC.s")

Light* Lights_MapperGetNextFreeSlot(LightMapper* mapper)
{
    if (6 < mapper->numLights)
        return NULL;

    return &mapper->lights[mapper->numLights++];
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A084.s")

void func_8007A40C(LightMapper* mapper, LightInfoDirectionalParams* params, GlobalContext* globalCtx)
{
    Light* light = Lights_MapperGetNextFreeSlot(mapper);

    if (light != NULL)
    {
        light->l.col[0] = light->l.colc[0] = params->red;
        light->l.col[1] = light->l.colc[1] = params->green;
        light->l.col[2] = light->l.colc[2] = params->blue;
        light->l.dir[0] = params->dirX;
        light->l.dir[1] = params->dirY;
        light->l.dir[2] = params->dirZ;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A474.s")

z_Light* Lights_FindFreeSlot()
{
    z_Light* ret;

    if (0x1F < sLightsList.numOccupied)
        return NULL;

    ret = &sLightsList.lights[sLightsList.nextFree];

    while (ret->info != NULL)
    {
        sLightsList.nextFree++;

        if (sLightsList.nextFree < 0x20)
        {
            ret++;
        }
        else
        {
            sLightsList.nextFree = 0;
            ret = &sLightsList.lights[0];
        }
    }

    sLightsList.numOccupied++;

    return ret;
}

#ifdef NON_MATCHING
// single ordering difference
void Lights_Free(z_Light* light)
{
    if (light != NULL)
    {
        sLightsList.numOccupied--;
        light->info = NULL;
        sLightsList.nextFree = (light - sLightsList.lights) / sizeof(z_Light); //! @bug Due to pointer arithmetic, the division is unnecessary
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/Lights_Free.s")
#endif

void func_8007A614(GlobalContext* globalCtx, LightingContext* lightCtx)
{
    Lights_ClearHead(globalCtx, lightCtx);
    Lights_SetAmbientColor(lightCtx, 0x50, 0x50, 0x50);
    func_8007A698(lightCtx, 0, 0, 0, 0x3e4, 0x3200);
    bzero(&sLightsList, sizeof(sLightsList));
}

void Lights_SetAmbientColor(LightingContext* lightCtx, u8 red, u8 green, u8 blue)
{
    lightCtx->ambientRed = red;
    lightCtx->ambientGreen = green;
    lightCtx->ambientBlue = blue;
}

void func_8007A698(LightingContext* lightCtx, u8 arg1, u8 arg2, u8 arg3, s16 arg4, s16 arg5)
{
    lightCtx->unk_07 = arg1;
    lightCtx->unk_08 = arg2;
    lightCtx->unk_09 = arg3;
    lightCtx->unk_0A = arg4;
    lightCtx->unk_0C = arg5;
}

LightMapper* Lights_CreateMapper(LightingContext* lightCtx, GraphicsContext* gfxCtx)
{
    return func_8007A960(gfxCtx, lightCtx->ambientRed, lightCtx->ambientGreen, lightCtx->ambientBlue);
}

void Lights_ClearHead(GlobalContext* globalCtx, LightingContext* lightCtx)
{
    lightCtx->lightsHead = NULL;
}

void Lights_RemoveAll(GlobalContext* globalCtx, LightingContext* lightCtx)
{
    while (lightCtx->lightsHead != NULL)
    {
        Lights_Remove(globalCtx, lightCtx, lightCtx->lightsHead);
        lightCtx->lightsHead = lightCtx->lightsHead->next;
    }
}

z_Light* Lights_Insert(GlobalContext* globalCtx, LightingContext* lightCtx, LightInfo* info)
{
    z_Light* light;

    light = Lights_FindFreeSlot();
    if (light != NULL)
    {
        light->info = info;
        light->prev = NULL;
        light->next = lightCtx->lightsHead;

        if (lightCtx->lightsHead != NULL)
            lightCtx->lightsHead->prev = light;

        lightCtx->lightsHead = light;
    }

    return light;
}

void Lights_Remove(GlobalContext* globalCtx, LightingContext* lightCtx, z_Light* light)
{
    if (light != NULL)
    {
        if (light->prev != NULL)
            light->prev->next = light->next;
        else
            lightCtx->lightsHead = light->next;

        if (light->next != NULL)
            light->next->prev = light->prev;

        Lights_Free(light);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A824.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A960.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007A9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_lights/func_8007ABBC.s")

