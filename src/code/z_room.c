#include "global.h"
#include "fault.h"
#include "terminal.h"
#include "versions.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

Vec3f D_801270A0 = { 0.0f, 0.0f, 0.0f };

// unused
Gfx D_801270B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_PERSP | G_CYC_FILL | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2),
    gsSPLoadGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetScissor(G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT),
    gsSPClipRatio(FRUSTRATIO_1),
    gsSPEndDisplayList(),
};

void Room_DrawNormal(PlayState* play, Room* room, u32 flags);
void Room_DrawImage(PlayState* play, Room* room, u32 flags);
void Room_DrawCullable(PlayState* play, Room* room, u32 flags);

void (*sRoomDrawHandlers[ROOM_SHAPE_TYPE_MAX])(PlayState* play, Room* room, u32 flags) = {
    Room_DrawNormal,   // ROOM_SHAPE_TYPE_NORMAL
    Room_DrawImage,    // ROOM_SHAPE_TYPE_IMAGE
    Room_DrawCullable, // ROOM_SHAPE_TYPE_CULLABLE
};

void func_80095AA0(PlayState* play, Room* room, Input* input, s32 arg3) {
}

void Room_DrawNormal(PlayState* play, Room* room, u32 flags) {
    s32 i;
    RoomShapeNormal* roomShape;
    RoomShapeDListsEntry* entry;

    OPEN_DISPS(play->state.gfxCtx, "../z_room.c", 193);

    if (flags & ROOM_DRAW_OPA) {
        func_800342EC(&D_801270A0, play);
        gSPSegment(POLY_OPA_DISP++, 0x03, room->segment);
        func_80093C80(play);
        gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    if (flags & ROOM_DRAW_XLU) {
        func_8003435C(&D_801270A0, play);
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    roomShape = &room->roomShape->normal;
    entry = SEGMENTED_TO_VIRTUAL(roomShape->entries);
    for (i = 0; i < roomShape->numEntries; i++) {
        if ((flags & ROOM_DRAW_OPA) && (entry->opa != NULL)) {
            gSPDisplayList(POLY_OPA_DISP++, entry->opa);
        }

        if ((flags & ROOM_DRAW_XLU) && (entry->xlu != NULL)) {
            gSPDisplayList(POLY_XLU_DISP++, entry->xlu);
        }

        entry++;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 239);
}

typedef enum RoomCullableDebugMode {
    /* 0 */ ROOM_CULL_DEBUG_MODE_OFF,
    /* 1 */ ROOM_CULL_DEBUG_MODE_UP_TO_TARGET,
    /* 2 */ ROOM_CULL_DEBUG_MODE_ONLY_TARGET
} RoomCullableDebugMode;

typedef struct RoomShapeCullableEntryLinked {
    /* 0x00 */ RoomShapeCullableEntry* entry;
    /* 0x04 */ f32 boundsNearZ;
    /* 0x08 */ struct RoomShapeCullableEntryLinked* prev;
    /* 0x0C */ struct RoomShapeCullableEntryLinked* next;
} RoomShapeCullableEntryLinked; // size = 0x10

/**
 * Handle room drawing for the "cullable" type of room shape.
 *
 * Each entry referenced by the room shape struct is attached to display lists, and a position and radius indicating the
 * bounding sphere for the geometry drawn.
 * The first step Z-sorts the entries, and excludes the entries with a bounding sphere that is entirely before or
 * beyond the rendered depth range.
 * The second step draws the entries that remain, from nearest to furthest.
 */
void Room_DrawCullable(PlayState* play, Room* room, u32 flags) {
    RoomShapeCullable* roomShape;
    RoomShapeCullableEntry* roomShapeCullableEntry;
    RoomShapeCullableEntryLinked linkedEntriesBuffer[ROOM_SHAPE_CULLABLE_MAX_ENTRIES];
    RoomShapeCullableEntryLinked* head = NULL;
    RoomShapeCullableEntryLinked* tail = NULL;
    RoomShapeCullableEntryLinked* iter;
    s32 pad;
    RoomShapeCullableEntryLinked* insert;
    s32 j;
    s32 i;
    Vec3f pos;
    Vec3f projectedPos;
    f32 projectedW;
    s32 pad2;
    RoomShapeCullableEntry* roomShapeCullableEntries;
    RoomShapeCullableEntry* roomShapeCullableEntryIter;
    f32 entryBoundsNearZ;

    OPEN_DISPS(play->state.gfxCtx, "../z_room.c", 287);

    if (flags & ROOM_DRAW_OPA) {
        func_800342EC(&D_801270A0, play);
        gSPSegment(POLY_OPA_DISP++, 0x03, room->segment);
        func_80093C80(play);
        gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    if (1) {}

    if (flags & ROOM_DRAW_XLU) {
        func_8003435C(&D_801270A0, play);
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    roomShape = &room->roomShape->cullable;
    roomShapeCullableEntry = SEGMENTED_TO_VIRTUAL(roomShape->entries);
    insert = linkedEntriesBuffer;

    ASSERT(roomShape->numEntries <= ROOM_SHAPE_CULLABLE_MAX_ENTRIES, "polygon2->num <= SHAPE_SORT_MAX", "../z_room.c",
           317);

    roomShapeCullableEntries = roomShapeCullableEntry;

    // Pick and sort entries by depth
    for (i = 0; i < roomShape->numEntries; i++, roomShapeCullableEntry++) {

        // Project the entry position, to get the depth it is at.
        pos.x = roomShapeCullableEntry->boundsSphereCenter.x;
        pos.y = roomShapeCullableEntry->boundsSphereCenter.y;
        pos.z = roomShapeCullableEntry->boundsSphereCenter.z;
        SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &pos, &projectedPos, &projectedW);

        // If the entry bounding sphere isn't fully before the rendered depth range
        if (-(f32)roomShapeCullableEntry->boundsSphereRadius < projectedPos.z) {

            // Compute the depth of the nearest point in the entry's bounding sphere
            entryBoundsNearZ = projectedPos.z - roomShapeCullableEntry->boundsSphereRadius;

            // If the entry bounding sphere isn't fully beyond the rendered depth range
            if (entryBoundsNearZ < play->lightCtx.zFar) {

                // This entry will be rendered
                insert->entry = roomShapeCullableEntry;
                insert->boundsNearZ = entryBoundsNearZ;

                // Insert into the linked list, ordered by ascending depth of the nearest point in the bounding sphere
                iter = head;
                if (iter == NULL) {
                    head = tail = insert;
                    insert->prev = insert->next = NULL;
                } else {
                    do {
                        if (insert->boundsNearZ < iter->boundsNearZ) {
                            break;
                        }
                        iter = iter->next;
                    } while (iter != NULL);

                    if (iter == NULL) {
                        insert->prev = tail;
                        insert->next = NULL;
                        tail->next = insert;
                        tail = insert;
                    } else {
                        insert->prev = iter->prev;
                        if (insert->prev == NULL) {
                            head = insert;
                        } else {
                            insert->prev->next = insert;
                        }
                        iter->prev = insert;
                        insert->next = iter;
                    }
                }

                insert++;
            }
        }
    }

    // if this is real then I might not be
    R_ROOM_CULL_NUM_ENTRIES = roomShape->numEntries & 0xFFFF & 0xFFFF & 0xFFFF;

    // Draw entries, from nearest to furthest
    for (i = 1; head != NULL; head = head->next, i++) {
        Gfx* displayList;

        roomShapeCullableEntry = head->entry;

        if (R_ROOM_CULL_DEBUG_MODE != ROOM_CULL_DEBUG_MODE_OFF) {
            // Debug mode drawing

            // This loop does nothing
            roomShapeCullableEntryIter = roomShapeCullableEntries;
            for (j = 0; j < roomShape->numEntries; j++, roomShapeCullableEntryIter++) {
                if (roomShapeCullableEntry == roomShapeCullableEntryIter) {
                    break;
                }
            }

            if (((R_ROOM_CULL_DEBUG_MODE == ROOM_CULL_DEBUG_MODE_UP_TO_TARGET) && (i <= R_ROOM_CULL_DEBUG_TARGET)) ||
                ((R_ROOM_CULL_DEBUG_MODE == ROOM_CULL_DEBUG_MODE_ONLY_TARGET) && (i == R_ROOM_CULL_DEBUG_TARGET))) {
                if (flags & ROOM_DRAW_OPA) {
                    displayList = roomShapeCullableEntry->opa;
                    if (displayList != NULL) {
                        gSPDisplayList(POLY_OPA_DISP++, displayList);
                    }
                }

                if (flags & ROOM_DRAW_XLU) {
                    displayList = roomShapeCullableEntry->xlu;
                    if (displayList != NULL) {
                        gSPDisplayList(POLY_XLU_DISP++, displayList);
                    }
                }
            }
        } else {
            if (flags & ROOM_DRAW_OPA) {
                displayList = roomShapeCullableEntry->opa;
                if (displayList != NULL) {
                    gSPDisplayList(POLY_OPA_DISP++, displayList);
                }
            }

            if (flags & ROOM_DRAW_XLU) {
                displayList = roomShapeCullableEntry->xlu;
                if (displayList != NULL) {
                    gSPDisplayList(POLY_XLU_DISP++, displayList);
                }
            }
        }
    }

    R_ROOM_CULL_USED_ENTRIES = i - 1;

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 430);
}

#define JPEG_MARKER 0xFFD8FFE0

/**
 * If the data is JPEG, decode it and overwrite the initial data with the result.
 * Uses the depth frame buffer as temporary storage.
 */
s32 Room_DecodeJpeg(void* data) {
    OSTime time;

    if (*(u32*)data == JPEG_MARKER) {
        PRINTF(T("JPEGデータを展開します\n", "Expanding jpeg data\n"));
        PRINTF(T("JPEGデータアドレス %08x\n", "Jpeg data address %08x\n"), data);
        PRINTF(T("ワークバッファアドレス（Ｚバッファ）%08x\n", "Work buffer address (Z buffer) %08x\n"), gZBuffer);

        time = osGetTime();
        if (!Jpeg_Decode(data, gZBuffer, gGfxSPTaskOutputBuffer, sizeof(gGfxSPTaskOutputBuffer))) {
            time = osGetTime() - time;

            PRINTF(T("成功…だと思う。 time = %6.3f ms \n", "Success... I think. time = %6.3f ms\n"),
                   OS_CYCLES_TO_USEC(time) / 1000.0f);
            PRINTF(T("ワークバッファから元のアドレスに書き戻します。\n",
                     "Writing back to original address from work buffer.\n"));
            PRINTF(T("元のバッファのサイズが150キロバイト無いと暴走するでしょう。\n",
                     "If the original buffer size isn't at least 150kB, it will be out of control.\n"));

            bcopy(gZBuffer, data, sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]));
        } else {
            PRINTF(T("失敗！なんで〜\n", "Failure! Why is it ~\n"));
        }
    }

    return 0;
}

void Room_DrawBackground2D(Gfx** gfxP, void* tex, void* tlut, u16 width, u16 height, u8 fmt, u8 siz, u16 tlutMode,
                           u16 tlutCount, f32 offsetX, f32 offsetY) {
    Gfx* gfx = *gfxP;
    uObjBg* bg;

    Room_DecodeJpeg(SEGMENTED_TO_VIRTUAL(tex));

    bg = (uObjBg*)(gfx + 1);
    gSPBranchList(gfx, (Gfx*)(bg + 1));
    gfx = (Gfx*)(bg + 1);

    bg->b.imageX = 0;
    bg->b.imageW = width * (1 << 2);
    bg->b.frameX = offsetX * (1 << 2);
    bg->b.imageY = 0;
    bg->b.imageH = height * (1 << 2);
    bg->b.frameY = offsetY * (1 << 2);
    bg->b.imagePtr = tex;
    bg->b.imageLoad = G_BGLT_LOADTILE;
    bg->b.imageFmt = fmt;
    bg->b.imageSiz = siz;
    bg->b.imagePal = 0;
    bg->b.imageFlip = 0;

    if (fmt == G_IM_FMT_CI) {
        gDPLoadTLUT(gfx++, tlutCount, 256, tlut);
    } else {
        gDPPipeSync(gfx++);
    }

    if ((fmt == G_IM_FMT_RGBA) && !R_ROOM_BG2D_FORCE_SCALEBG) {
        bg->b.frameW = width * (1 << 2);
        bg->b.frameH = height * (1 << 2);
        guS2DInitBg(bg);
        gDPSetOtherMode(gfx++, tlutMode | G_TL_TILE | G_TD_CLAMP | G_TP_NONE | G_CYC_COPY | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
        gSPBgRectCopy(gfx++, bg);

    } else {
        bg->s.frameW = width * (1 << 2);
        bg->s.frameH = height * (1 << 2);
        bg->s.scaleW = 1 << 10;
        bg->s.scaleH = 1 << 10;
        bg->s.imageYorig = bg->b.imageY;
        gDPSetOtherMode(gfx++,
                        tlutMode | G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PIXEL | AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL |
                            GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_BL, G_BL_1MA) |
                            GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_BL, G_BL_1MA));
        gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 0, 0, 0, 1, 0, 0, 0, TEXEL0, 0, 0, 0, 1);
        gSPObjRenderMode(gfx++, G_OBJRM_ANTIALIAS | G_OBJRM_BILERP);
        gSPBgRect1Cyc(gfx++, bg);
    }

    gDPPipeSync(gfx++);

    *gfxP = gfx;
}

#if OOT_VERSION < PAL_1_0
void func_8007FF50(Gfx** gfxP, void* tex, void* tlut, u16 width, u16 height, u8 fmt, u8 siz, u16 tlutMode,
                   u16 tlutCount) {
    if (1) {}
    Room_DrawBackground2D(gfxP, tex, tlut, width, height, fmt, siz, tlutMode, tlutCount, 0.0f, 0.0f);
}
#endif

#define ROOM_IMAGE_NODRAW_BACKGROUND (1 << 0)
#define ROOM_IMAGE_NODRAW_OPA (1 << 1)
#define ROOM_IMAGE_NODRAW_XLU (1 << 2)

void Room_DrawImageSingle(PlayState* play, Room* room, u32 flags) {
    Camera* activeCam;
    Gfx* gfx;
    RoomShapeImageSingle* roomShape;
    RoomShapeDListsEntry* entry;
    u32 isFixedCamera;
    u32 drawBackground;
    u32 drawOpa;
    u32 drawXlu;

    OPEN_DISPS(play->state.gfxCtx, "../z_room.c", 628);

    activeCam = GET_ACTIVE_CAM(play);
    isFixedCamera = (activeCam->setting == CAM_SET_PREREND_FIXED);
    roomShape = &room->roomShape->image.single;
    entry = SEGMENTED_TO_VIRTUAL(roomShape->base.entry);
    drawBackground = (flags & ROOM_DRAW_OPA) && isFixedCamera && (roomShape->source != NULL) &&
                     !(R_ROOM_IMAGE_NODRAW_FLAGS & ROOM_IMAGE_NODRAW_BACKGROUND);
    drawOpa = (flags & ROOM_DRAW_OPA) && (entry->opa != NULL) && !(R_ROOM_IMAGE_NODRAW_FLAGS & ROOM_IMAGE_NODRAW_OPA);
    drawXlu = (flags & ROOM_DRAW_XLU) && (entry->xlu != NULL) && !(R_ROOM_IMAGE_NODRAW_FLAGS & ROOM_IMAGE_NODRAW_XLU);

    if (drawOpa || drawBackground) {
        gSPSegment(POLY_OPA_DISP++, 0x03, room->segment);

        if (drawOpa) {
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, entry->opa);
        }

        if (drawBackground) {
            gSPLoadUcodeL(POLY_OPA_DISP++, gspS2DEX2d_fifo);

            gfx = POLY_OPA_DISP;

#if OOT_VERSION < PAL_1_0
            if (1)
#endif
            {
                Vec3f quakeOffset;

                quakeOffset = Camera_GetQuakeOffset(activeCam);
                Room_DrawBackground2D(&gfx, roomShape->source, roomShape->tlut, roomShape->width, roomShape->height,
                                      roomShape->fmt, roomShape->siz, roomShape->tlutMode, roomShape->tlutCount,
                                      (quakeOffset.x + quakeOffset.z) * 1.2f + quakeOffset.y * 0.6f,
                                      quakeOffset.y * 2.4f + (quakeOffset.x + quakeOffset.z) * 0.3f);
            }

            POLY_OPA_DISP = gfx;

            gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData());
        }
    }

    if (drawXlu) {
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, entry->xlu);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 691);
}

RoomShapeImageMultiBgEntry* Room_GetImageMultiBgEntry(RoomShapeImageMulti* roomShapeImageMulti, PlayState* play) {
    Camera* activeCam = GET_ACTIVE_CAM(play);
    s32 bgCamIndex = activeCam->bgCamIndex;
    s16 overrideBgCamIndex;
    Player* player;
    RoomShapeImageMultiBgEntry* bgEntry;
    s32 i;

    // In mq debug vanilla scenes, overrideBgCamIndex is always -1 or the same as bgCamIndex
    overrideBgCamIndex = ((BgCamFuncData*)BgCheck_GetBgCamFuncDataImpl(&play->colCtx, bgCamIndex, BGCHECK_SCENE))
                             ->roomImageOverrideBgCamIndex;
    if (overrideBgCamIndex >= 0) {
        bgCamIndex = overrideBgCamIndex;
    }

    player = GET_PLAYER(play);
    player->actor.params = PARAMS_GET_NOSHIFT(player->actor.params, 8, 8) | bgCamIndex;

    bgEntry = SEGMENTED_TO_VIRTUAL(roomShapeImageMulti->backgrounds);
    for (i = 0; i < roomShapeImageMulti->numBackgrounds; i++) {
        if (bgEntry->bgCamIndex == bgCamIndex) {
            return bgEntry;
        }
        bgEntry++;
    }

    PRINTF(VT_COL(RED, WHITE) T("z_room.c:カメラＩＤに一致するデータが存在しません camid=%d\n",
                                "z_room.c: Data consistent with camera id does not exist camid=%d\n") VT_RST,
           bgCamIndex);
#if OOT_VERSION < NTSC_1_1
    Fault_AddHungupAndCrash("../z_room.c", 724);
#elif OOT_VERSION < PAL_1_0
    Fault_AddHungupAndCrash("../z_room.c", 727);
#elif OOT_VERSION < GC_JP
    Fault_AddHungupAndCrash("../z_room.c", 721);
#else
    LogUtils_HungupThread("../z_room.c", 726);
#endif

    return NULL;
}

void Room_DrawImageMulti(PlayState* play, Room* room, u32 flags) {
    Camera* activeCam;
    Gfx* gfx;
    RoomShapeImageMulti* roomShape;
    RoomShapeImageMultiBgEntry* bgEntry;
    RoomShapeDListsEntry* dListsEntry;
    u32 isFixedCamera;
    u32 drawBackground;
    u32 drawOpa;
    u32 drawXlu;

    OPEN_DISPS(play->state.gfxCtx, "../z_room.c", 752);

    activeCam = GET_ACTIVE_CAM(play);
    isFixedCamera = (activeCam->setting == CAM_SET_PREREND_FIXED);
    roomShape = &room->roomShape->image.multi;
    dListsEntry = SEGMENTED_TO_VIRTUAL(roomShape->base.entry);

    bgEntry = Room_GetImageMultiBgEntry(roomShape, play);

    drawBackground = (flags & ROOM_DRAW_OPA) && isFixedCamera && (bgEntry->source != NULL) &&
                     !(R_ROOM_IMAGE_NODRAW_FLAGS & ROOM_IMAGE_NODRAW_BACKGROUND);
    drawOpa =
        (flags & ROOM_DRAW_OPA) && (dListsEntry->opa != NULL) && !(R_ROOM_IMAGE_NODRAW_FLAGS & ROOM_IMAGE_NODRAW_OPA);
    drawXlu =
        (flags & ROOM_DRAW_XLU) && (dListsEntry->xlu != NULL) && !(R_ROOM_IMAGE_NODRAW_FLAGS & ROOM_IMAGE_NODRAW_XLU);

    if (drawOpa || drawBackground) {
        gSPSegment(POLY_OPA_DISP++, 0x03, room->segment);

        if (drawOpa) {
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, dListsEntry->opa);
        }

        if (drawBackground) {
            gSPLoadUcodeL(POLY_OPA_DISP++, gspS2DEX2d_fifo);

            gfx = POLY_OPA_DISP;

#if OOT_VERSION < PAL_1_0
            if (1)
#endif
            {
                Vec3f quakeOffset;

                quakeOffset = Camera_GetQuakeOffset(activeCam);
                Room_DrawBackground2D(&gfx, bgEntry->source, bgEntry->tlut, bgEntry->width, bgEntry->height,
                                      bgEntry->fmt, bgEntry->siz, bgEntry->tlutMode, bgEntry->tlutCount,
                                      (quakeOffset.x + quakeOffset.z) * 1.2f + quakeOffset.y * 0.6f,
                                      quakeOffset.y * 2.4f + (quakeOffset.x + quakeOffset.z) * 0.3f);
            }

            POLY_OPA_DISP = gfx;

            gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData());
        }
    }

    if (drawXlu) {
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, dListsEntry->xlu);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 819);
}

void Room_DrawImage(PlayState* play, Room* room, u32 flags) {
    RoomShapeImageBase* roomShape = &room->roomShape->image.base;

    if (roomShape->amountType == ROOM_SHAPE_IMAGE_AMOUNT_SINGLE) {
        Room_DrawImageSingle(play, room, flags);
    } else if (roomShape->amountType == ROOM_SHAPE_IMAGE_AMOUNT_MULTI) {
        Room_DrawImageMulti(play, room, flags);
    } else {
#if OOT_VERSION < NTSC_1_1
        Fault_AddHungupAndCrash("../z_room.c", 849);
#elif OOT_VERSION < PAL_1_0
        Fault_AddHungupAndCrash("../z_room.c", 852);
#elif OOT_VERSION < GC_JP
        Fault_AddHungupAndCrash("../z_room.c", 836);
#else
        LogUtils_HungupThread("../z_room.c", 841);
#endif
    }
}

void Room_Init(PlayState* play, Room* room) {
    room->num = -1;
    room->segment = NULL;
}

/**
 * Allocates memory for rooms and fetches the first room that the player will spawn into.
 *
 * @return u32 size of the buffer reserved for room data
 */
u32 Room_SetupFirstRoom(PlayState* play, RoomContext* roomCtx) {
    u32 roomBufferSize = 0;
    u32 roomSize;
    s32 i;
    s32 j;
    s32 frontRoom;
    s32 backRoom;
    u32 frontRoomSize;
    u32 backRoomSize;
    u32 cumulRoomSize;
    s32 pad;

    // Set roomBufferSize to the largest room
    {
        RomFile* roomList = play->roomList.romFiles;

        for (i = 0; i < play->roomList.count; i++) {
            roomSize = roomList[i].vromEnd - roomList[i].vromStart;
            PRINTF("ROOM%d size=%d\n", i, roomSize);
            if (roomBufferSize < roomSize) {
                roomBufferSize = roomSize;
            }
        }
    }

    // If there any rooms are connected, find their combined size and update roomBufferSize if larger
    if ((u32)play->transitionActors.count != 0) {
        RomFile* roomList = play->roomList.romFiles;
        TransitionActorEntry* transitionActor = &play->transitionActors.list[0];

        LOG_NUM("game_play->room_rom_address.num", play->roomList.count, "../z_room.c", 912);

        for (j = 0; j < play->transitionActors.count; j++) {
            frontRoom = transitionActor->sides[0].room;
            backRoom = transitionActor->sides[1].room;
            frontRoomSize = (frontRoom < 0) ? 0 : roomList[frontRoom].vromEnd - roomList[frontRoom].vromStart;
            backRoomSize = (backRoom < 0) ? 0 : roomList[backRoom].vromEnd - roomList[backRoom].vromStart;
            cumulRoomSize = (frontRoom != backRoom) ? frontRoomSize + backRoomSize : frontRoomSize;

            PRINTF("DOOR%d=<%d> ROOM1=<%d, %d> ROOM2=<%d, %d>\n", j, cumulRoomSize, frontRoom, frontRoomSize, backRoom,
                   backRoomSize);
            if (roomBufferSize < cumulRoomSize) {
                roomBufferSize = cumulRoomSize;
            }
            transitionActor++;
        }
    }

    PRINTF(VT_FGCOL(YELLOW));
    PRINTF(T("部屋バッファサイズ=%08x(%5.1fK)\n", "Room buffer size=%08x(%5.1fK)\n"), roomBufferSize,
           roomBufferSize / 1024.0f);
    roomCtx->bufPtrs[0] = GAME_STATE_ALLOC(&play->state, roomBufferSize, "../z_room.c", 946);
    PRINTF(T("部屋バッファ開始ポインタ=%08x\n", "Room buffer initial pointer=%08x\n"), roomCtx->bufPtrs[0]);
    roomCtx->bufPtrs[1] = (void*)((uintptr_t)roomCtx->bufPtrs[0] + roomBufferSize);
    PRINTF(T("部屋バッファ終了ポインタ=%08x\n", "Room buffer end pointer=%08x\n"), roomCtx->bufPtrs[1]);
    PRINTF(VT_RST);
    roomCtx->activeBufPage = 0;
    roomCtx->status = 0;

    frontRoom = gSaveContext.respawnFlag > 0 ? ((void)0, gSaveContext.respawn[gSaveContext.respawnFlag - 1].roomIndex)
                                             : play->spawnList[play->spawn].room;

    // Load into a room for the first time.
    // Since curRoom was initialized to `room = -1` and `segment = NULL` in Play_InitScene, the previous room
    // will also be initialized to the nulled state when this function completes.
    Room_RequestNewRoom(play, roomCtx, frontRoom);

    return roomBufferSize;
}

/**
 * Tries to create an asynchronous request to transfer room data into memory.
 * If successful, the requested room will be loaded into memory and becomes the new current room; the room that was
 * current before becomes the previous room.
 *
 * Room_RequestNewRoom will be blocked from loading new rooms until Room_ProcessRoomRequest completes room
 * initialization.
 *
 * Calling Room_RequestNewRoom outside of Room_SetupFirstRoom will allow for two rooms being initialized simultaneously.
 * This allows an actor like ACTOR_EN_HOLL to seamlessly swap the two rooms as the player moves between them. Calling
 * Room_FinishRoomChange afterward will finalize the room swap.
 *
 * @param roomNum is the id of the room to load. roomNum must NOT be the same id as curRoom.num, since this will create
 * duplicate actor instances that cannot be cleaned up by calling Room_FinishRoomChange
 * @returns bool false if the request could not be created.
 */
s32 Room_RequestNewRoom(PlayState* play, RoomContext* roomCtx, s32 roomNum) {
    if (roomCtx->status == 0) {
        u32 size;

        roomCtx->prevRoom = roomCtx->curRoom;
        roomCtx->curRoom.num = roomNum;
        roomCtx->curRoom.segment = NULL;
        roomCtx->status = 1;

        ASSERT(roomNum < play->roomList.count, "read_room_ID < game_play->room_rom_address.num", "../z_room.c", 1009);

        size = play->roomList.romFiles[roomNum].vromEnd - play->roomList.romFiles[roomNum].vromStart;
        roomCtx->roomRequestAddr = (void*)ALIGN16((uintptr_t)roomCtx->bufPtrs[roomCtx->activeBufPage] -
                                                  ((size + 8) * roomCtx->activeBufPage + 7));

        osCreateMesgQueue(&roomCtx->loadQueue, &roomCtx->loadMsg, 1);

#if PLATFORM_N64
        if ((B_80121220 != NULL) && (B_80121220->unk_08 != NULL)) {
            B_80121220->unk_08(play, roomCtx, roomNum);
        } else {
            DMA_REQUEST_ASYNC(&roomCtx->dmaRequest, roomCtx->roomRequestAddr,
                              play->roomList.romFiles[roomNum].vromStart, size, 0, &roomCtx->loadQueue, NULL,
                              "../z_room.c", 1036);
        }
#else
        DMA_REQUEST_ASYNC(&roomCtx->dmaRequest, roomCtx->roomRequestAddr, play->roomList.romFiles[roomNum].vromStart,
                          size, 0, &roomCtx->loadQueue, NULL, "../z_room.c", 1036);
#endif

        roomCtx->activeBufPage ^= 1;
        return true;
    }

    return false;
}

/**
 * Completes room initialization for the room requested by a call to Room_RequestNewRoom.
 * This function does not block the thread if the room data is still being transferred.
 *
 * @returns bool false if a dma transfer is in progress.
 */
s32 Room_ProcessRoomRequest(PlayState* play, RoomContext* roomCtx) {
    if (roomCtx->status == 1) {
        if (osRecvMesg(&roomCtx->loadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
            roomCtx->status = 0;
            roomCtx->curRoom.segment = roomCtx->roomRequestAddr;
            gSegments[3] = VIRTUAL_TO_PHYSICAL(roomCtx->curRoom.segment);

            Scene_ExecuteCommands(play, roomCtx->curRoom.segment);
            Player_SetBootData(play, GET_PLAYER(play));
            Actor_SpawnTransitionActors(play, &play->actorCtx);
        } else {
            return false;
        }
    }

    return true;
}

void Room_Draw(PlayState* play, Room* room, u32 flags) {
    if (room->segment != NULL) {
        gSegments[3] = VIRTUAL_TO_PHYSICAL(room->segment);
        ASSERT(room->roomShape->base.type < ARRAY_COUNTU(sRoomDrawHandlers),
               "this->ground_shape->polygon.type < number(Room_Draw_Proc)", "../z_room.c", 1125);
        sRoomDrawHandlers[room->roomShape->base.type](play, room, flags);
    }
}

/**
 * Finalizes a swap between two rooms.
 *
 * When a new room is created with Room_RequestNewRoom, the previous room and its actors remain in memory. This allows
 * an actor like ACTOR_EN_HOLL to seamlessly swap the two rooms as the player moves between them.
 */
void Room_FinishRoomChange(PlayState* play, RoomContext* roomCtx) {
    // Delete the previous room
    roomCtx->prevRoom.num = -1;
    roomCtx->prevRoom.segment = NULL;

    func_80031B14(play, &play->actorCtx);
    Actor_SpawnTransitionActors(play, &play->actorCtx);
    Map_InitRoomData(play, roomCtx->curRoom.num);
    if (!((play->sceneId >= SCENE_HYRULE_FIELD) && (play->sceneId <= SCENE_LON_LON_RANCH))) {
        Map_SavePlayerInitialInfo(play);
    }
    Audio_SetEnvReverb(play->roomCtx.curRoom.echo);
}
