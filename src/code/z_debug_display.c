#include "gfx.h"
#include "gfx_setupdl.h"
#include "sys_matrix.h"
#include "z64play.h"
#include "z64debug_display.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"

typedef struct DebugDispObjectInfo {
    /* 0x00 */ s16 drawType;  // indicates which draw function to use when displaying the object
    /* 0x04 */ void* drawArg; // segment address (display list or texture) passed to the draw function when called
} DebugDispObjectInfo;        // size = 0x8

typedef void (*DebugDispObject_DrawFunc)(DebugDispObject*, void*, PlayState*);

void DebugDisplay_DrawSpriteI8(DebugDispObject* dispObj, void* texture, PlayState* play);
void DebugDisplay_DrawPolygon(DebugDispObject* dispObj, void* dlist, PlayState* play);

static DebugDispObject_DrawFunc sDebugObjectDrawFuncTable[] = {
    DebugDisplay_DrawSpriteI8,
    DebugDisplay_DrawPolygon,
};

static DebugDispObjectInfo sDebugObjectInfoTable[] = {
    { 0, gDebugCircleTex }, { 0, gDebugCrossTex }, { 0, gDebugBallTex },
    { 0, gDebugCursorTex }, { 1, gDebugArrowDL },  { 1, gDebugCameraDL },
};

static Lights1 sDebugObjectLights = gdSPDefLights1(128, 128, 128, 255, 255, 255, 73, 73, 73);

static DebugDispObject* sDebugObjectListHead;

void DebugDisplay_Init(void) {
    sDebugObjectListHead = NULL;
}

DebugDispObject* DebugDisplay_AddObject(f32 posX, f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, f32 scaleX,
                                        f32 scaleY, f32 scaleZ, u8 red, u8 green, u8 blue, u8 alpha, s16 type,
                                        GraphicsContext* gfxCtx) {
    DebugDispObject* prevHead = sDebugObjectListHead;

    sDebugObjectListHead = GRAPH_ALLOC(gfxCtx, sizeof(DebugDispObject));

    sDebugObjectListHead->pos.x = posX;
    sDebugObjectListHead->pos.y = posY;
    sDebugObjectListHead->pos.z = posZ;
    sDebugObjectListHead->rot.x = rotX;
    sDebugObjectListHead->rot.y = rotY;
    sDebugObjectListHead->rot.z = rotZ;
    sDebugObjectListHead->scale.x = scaleX;
    sDebugObjectListHead->scale.y = scaleY;
    sDebugObjectListHead->scale.z = scaleZ;
    sDebugObjectListHead->color.r = red;
    sDebugObjectListHead->color.g = green;
    sDebugObjectListHead->color.b = blue;
    sDebugObjectListHead->color.a = alpha;
    sDebugObjectListHead->type = type;
    sDebugObjectListHead->next = prevHead;

    return sDebugObjectListHead;
}

void DebugDisplay_DrawObjects(PlayState* play) {
    DebugDispObject* dispObj = sDebugObjectListHead;
    DebugDispObjectInfo* objInfo;

    while (dispObj != NULL) {
        objInfo = &sDebugObjectInfoTable[dispObj->type];
        sDebugObjectDrawFuncTable[objInfo->drawType](dispObj, objInfo->drawArg, play);
        dispObj = dispObj->next;
    }
}

void DebugDisplay_DrawSpriteI8(DebugDispObject* dispObj, void* texture, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_debug_display.c", 169);

    Gfx_SetupDL_47Xlu(play->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, dispObj->color.r, dispObj->color.g, dispObj->color.b, dispObj->color.a);

    Matrix_Translate(dispObj->pos.x, dispObj->pos.y, dispObj->pos.z, MTXMODE_NEW);
    Matrix_Scale(dispObj->scale.x, dispObj->scale.y, dispObj->scale.z, MTXMODE_APPLY);
    Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
    Matrix_RotateZYX(dispObj->rot.x, dispObj->rot.y, dispObj->rot.z, MTXMODE_APPLY);

    gDPLoadTextureBlock(POLY_XLU_DISP++, texture, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_debug_display.c", 189);
    gSPDisplayList(POLY_XLU_DISP++, gDebugSpriteDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_debug_display.c", 192);
}

void DebugDisplay_DrawPolygon(DebugDispObject* dispObj, void* dlist, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_debug_display.c", 211);

    Gfx_SetupDL_4Xlu(play->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, dispObj->color.r, dispObj->color.g, dispObj->color.b, dispObj->color.a);

    gSPSetLights1(POLY_XLU_DISP++, sDebugObjectLights);

    Matrix_SetTranslateRotateYXZ(dispObj->pos.x, dispObj->pos.y, dispObj->pos.z, &dispObj->rot);
    Matrix_Scale(dispObj->scale.x, dispObj->scale.y, dispObj->scale.z, MTXMODE_APPLY);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_debug_display.c", 228);
    gSPDisplayList(POLY_XLU_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_debug_display.c", 231);
}
