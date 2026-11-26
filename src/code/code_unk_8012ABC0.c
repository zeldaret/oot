#include "math.h"
#include "ultra64.h"
#include "libu64/gfxprint.h"

static void* sUnkFunctionPointers[] = {
    fmodf,           guScale,           guRotate,      guTranslate,   GfxPrint_SetPos, GfxPrint_SetColor,
    GfxPrint_Printf, GfxPrint_SetPosPx, GfxPrint_Init, GfxPrint_Open, GfxPrint_Close,  GfxPrint_Destroy,
};
