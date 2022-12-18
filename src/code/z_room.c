#include "global.h"
#include "terminal.h"

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
        gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
    }

    if (flags & ROOM_DRAW_XLU) {
        func_8003435C(&D_801270A0, play);
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
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

typedef enum {
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
        gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
    }

    if (1) {}

    if (flags & ROOM_DRAW_XLU) {
        func_8003435C(&D_801270A0, play);
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
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
        osSyncPrintf("JPEGデータを展開します\n");        // "Expanding jpeg data"
        osSyncPrintf("JPEGデータアドレス %08x\n", data); // "Jpeg data address %08x"
        // "Work buffer address (Z buffer) %08x"
        osSyncPrintf("ワークバッファアドレス（Ｚバッファ）%08x\n", gZBuffer);

        time = osGetTime();
        if (!Jpeg_Decode(data, gZBuffer, gGfxSPTaskOutputBuffer, sizeof(gGfxSPTaskOutputBuffer))) {
            time = osGetTime() - time;

            // "Success... I think. time = %6.3f ms"
            osSyncPrintf("成功…だと思う。 time = %6.3f ms \n", OS_CYCLES_TO_USEC(time) / 1000.0f);
            // "Writing back to original address from work buffer."
            osSyncPrintf("ワークバッファから元のアドレスに書き戻します。\n");
            // "If the original buffer size isn't at least 150kB, it will be out of control."
            osSyncPrintf("元のバッファのサイズが150キロバイト無いと暴走するでしょう。\n");

            bcopy(gZBuffer, data, sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]));
        } else {
            osSyncPrintf("失敗！なんで〜\n"); // "Failure! Why is it 〜"
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
    gSPBranchList(gfx, (u32)bg + sizeof(uObjBg));

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

    gfx = (Gfx*)((u32)bg + sizeof(uObjBg));

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
            gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, entry->opa);
        }

        if (drawBackground) {
            gSPLoadUcodeL(POLY_OPA_DISP++, gspS2DEX2d_fifo);

            {
                Vec3f quakeOffset;

                gfx = POLY_OPA_DISP;
                Camera_GetQuakeOffset(&quakeOffset, activeCam);
                Room_DrawBackground2D(&gfx, roomShape->source, roomShape->tlut, roomShape->width, roomShape->height,
                                      roomShape->fmt, roomShape->siz, roomShape->tlutMode, roomShape->tlutCount,
                                      (quakeOffset.x + quakeOffset.z) * 1.2f + quakeOffset.y * 0.6f,
                                      quakeOffset.y * 2.4f + (quakeOffset.x + quakeOffset.z) * 0.3f);
                POLY_OPA_DISP = gfx;
            }

            gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData());
        }
    }

    if (drawXlu) {
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
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
    player->actor.params = (player->actor.params & 0xFF00) | bgCamIndex;

    bgEntry = SEGMENTED_TO_VIRTUAL(roomShapeImageMulti->backgrounds);
    for (i = 0; i < roomShapeImageMulti->numBackgrounds; i++) {
        if (bgEntry->bgCamIndex == bgCamIndex) {
            return bgEntry;
        }
        bgEntry++;
    }

    // "z_room.c: Data consistent with camera id does not exist camid=%d"
    osSyncPrintf(VT_COL(RED, WHITE) "z_room.c:カメラＩＤに一致するデータが存在しません camid=%d\n" VT_RST, bgCamIndex);
    LogUtils_HungupThread("../z_room.c", 726);

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
            gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dListsEntry->opa);
        }

        if (drawBackground) {
            gSPLoadUcodeL(POLY_OPA_DISP++, gspS2DEX2d_fifo);

            {
                Vec3f quakeOffset;

                gfx = POLY_OPA_DISP;
                Camera_GetQuakeOffset(&quakeOffset, activeCam);
                Room_DrawBackground2D(&gfx, bgEntry->source, bgEntry->tlut, bgEntry->width, bgEntry->height,
                                      bgEntry->fmt, bgEntry->siz, bgEntry->tlutMode, bgEntry->tlutCount,
                                      (quakeOffset.x + quakeOffset.z) * 1.2f + quakeOffset.y * 0.6f,
                                      quakeOffset.y * 2.4f + (quakeOffset.x + quakeOffset.z) * 0.3f);
                POLY_OPA_DISP = gfx;
            }

            gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData());
        }
    }

    if (drawXlu) {
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
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
        LogUtils_HungupThread("../z_room.c", 841);
    }
}

void func_80096FD4(PlayState* play, Room* room) {
    room->num = -1;
    room->segment = NULL;
}

u32 func_80096FE8(PlayState* play, RoomContext* roomCtx) {
    u32 maxRoomSize = 0;
    RomFile* roomList = play->roomList;
    u32 roomSize;
    s32 i;
    s32 j;
    s32 frontRoom;
    s32 backRoom;
    u32 frontRoomSize;
    u32 backRoomSize;
    u32 cumulRoomSize;

    for (i = 0; i < play->numRooms; i++) {
        roomSize = roomList[i].vromEnd - roomList[i].vromStart;
        osSyncPrintf("ROOM%d size=%d\n", i, roomSize);
        if (maxRoomSize < roomSize) {
            maxRoomSize = roomSize;
        }
    }

    if (play->transiActorCtx.numActors != 0) {
        RomFile* roomList = play->roomList;
        TransitionActorEntry* transitionActor = &play->transiActorCtx.list[0];

        LOG_NUM("game_play->room_rom_address.num", play->numRooms, "../z_room.c", 912);

        for (j = 0; j < play->transiActorCtx.numActors; j++) {
            frontRoom = transitionActor->sides[0].room;
            backRoom = transitionActor->sides[1].room;
            frontRoomSize = (frontRoom < 0) ? 0 : roomList[frontRoom].vromEnd - roomList[frontRoom].vromStart;
            backRoomSize = (backRoom < 0) ? 0 : roomList[backRoom].vromEnd - roomList[backRoom].vromStart;
            cumulRoomSize = (frontRoom != backRoom) ? frontRoomSize + backRoomSize : frontRoomSize;

            osSyncPrintf("DOOR%d=<%d> ROOM1=<%d, %d> ROOM2=<%d, %d>\n", j, cumulRoomSize, frontRoom, frontRoomSize,
                         backRoom, backRoomSize);
            if (maxRoomSize < cumulRoomSize) {
                maxRoomSize = cumulRoomSize;
            }
            transitionActor++;
        }
    }

    osSyncPrintf(VT_FGCOL(YELLOW));
    // "Room buffer size=%08x(%5.1fK)"
    osSyncPrintf("部屋バッファサイズ=%08x(%5.1fK)\n", maxRoomSize, maxRoomSize / 1024.0f);
    roomCtx->bufPtrs[0] = GameState_Alloc(&play->state, maxRoomSize, "../z_room.c", 946);
    // "Room buffer initial pointer=%08x"
    osSyncPrintf("部屋バッファ開始ポインタ=%08x\n", roomCtx->bufPtrs[0]);
    roomCtx->bufPtrs[1] = (void*)((s32)roomCtx->bufPtrs[0] + maxRoomSize);
    // "Room buffer end pointer=%08x"
    osSyncPrintf("部屋バッファ終了ポインタ=%08x\n", roomCtx->bufPtrs[1]);
    osSyncPrintf(VT_RST);
    roomCtx->unk_30 = 0;
    roomCtx->status = 0;

    frontRoom = gSaveContext.respawnFlag > 0 ? ((void)0, gSaveContext.respawn[gSaveContext.respawnFlag - 1].roomIndex)
                                             : play->spawnList[play->spawn].room;
    func_8009728C(play, roomCtx, frontRoom);

    return maxRoomSize;
}

s32 func_8009728C(PlayState* play, RoomContext* roomCtx, s32 roomNum) {
    u32 size;

    if (roomCtx->status == 0) {
        roomCtx->prevRoom = roomCtx->curRoom;
        roomCtx->curRoom.num = roomNum;
        roomCtx->curRoom.segment = NULL;
        roomCtx->status = 1;

        ASSERT(roomNum < play->numRooms, "read_room_ID < game_play->room_rom_address.num", "../z_room.c", 1009);

        size = play->roomList[roomNum].vromEnd - play->roomList[roomNum].vromStart;
        roomCtx->unk_34 = (void*)ALIGN16((u32)roomCtx->bufPtrs[roomCtx->unk_30] - ((size + 8) * roomCtx->unk_30 + 7));

        osCreateMesgQueue(&roomCtx->loadQueue, &roomCtx->loadMsg, 1);
        DmaMgr_RequestAsync(&roomCtx->dmaRequest, roomCtx->unk_34, play->roomList[roomNum].vromStart, size, 0,
                            &roomCtx->loadQueue, NULL, "../z_room.c", 1036);
        roomCtx->unk_30 ^= 1;

        return 1;
    }

    return 0;
}

s32 func_800973FC(PlayState* play, RoomContext* roomCtx) {
    if (roomCtx->status == 1) {
        if (osRecvMesg(&roomCtx->loadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
            roomCtx->status = 0;
            roomCtx->curRoom.segment = roomCtx->unk_34;
            gSegments[3] = VIRTUAL_TO_PHYSICAL(roomCtx->unk_34);

            Scene_ExecuteCommands(play, roomCtx->curRoom.segment);
            Player_SetBootData(play, GET_PLAYER(play));
            Actor_SpawnTransitionActors(play, &play->actorCtx);

            return 1;
        }

        return 0;
    }

    return 1;
}

void Room_Draw(PlayState* play, Room* room, u32 flags) {
    if (room->segment != NULL) {
        gSegments[3] = VIRTUAL_TO_PHYSICAL(room->segment);
        ASSERT(room->roomShape->base.type < ARRAY_COUNTU(sRoomDrawHandlers),
               "this->ground_shape->polygon.type < number(Room_Draw_Proc)", "../z_room.c", 1125);
        sRoomDrawHandlers[room->roomShape->base.type](play, room, flags);
    }
}

void func_80097534(PlayState* play, RoomContext* roomCtx) {
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
