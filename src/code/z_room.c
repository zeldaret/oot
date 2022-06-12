#include "global.h"
#include "vt.h"

void Room_Draw0(PlayState* play, Room* room, u32 flags);
void Room_Draw2(PlayState* play, Room* room, u32 flags);
void Room_Draw1(PlayState* play, Room* room, u32 flags);

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

void (*sRoomDrawHandlers[MESH_HEADER_TYPE_MAX])(PlayState* play, Room* room, u32 flags) = {
    Room_Draw0,
    Room_Draw1,
    Room_Draw2,
};

void func_80095AA0(PlayState* play, Room* room, Input* arg2, UNK_TYPE arg3) {
}

void Room_Draw0(PlayState* play, Room* room, u32 flags) {
    s32 i;
    MeshHeader0* meshHeader0;
    MeshHeader01Entry* meshHeader0Entry;

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

    meshHeader0 = &room->meshHeader->meshHeader0;
    meshHeader0Entry = SEGMENTED_TO_VIRTUAL(meshHeader0->entries);
    for (i = 0; i < meshHeader0->numEntries; i++) {
        if ((flags & ROOM_DRAW_OPA) && (meshHeader0Entry->opa != NULL)) {
            gSPDisplayList(POLY_OPA_DISP++, meshHeader0Entry->opa);
        }

        if ((flags & ROOM_DRAW_XLU) && (meshHeader0Entry->xlu != NULL)) {
            gSPDisplayList(POLY_XLU_DISP++, meshHeader0Entry->xlu);
        }

        meshHeader0Entry++;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 239);
}

#define SHAPE_SORT_MAX 64

typedef struct struct_80095D04 {
    /* 0x00 */ MeshHeader2Entry* unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ struct struct_80095D04* unk_08;
    /* 0x0C */ struct struct_80095D04* unk_0C;
} struct_80095D04; // size = 0x10

void Room_Draw2(PlayState* play, Room* room, u32 flags) {
    MeshHeader2* meshHeader2;
    MeshHeader2Entry* meshHeader2Entry;
    struct_80095D04 spB8[SHAPE_SORT_MAX];
    struct_80095D04* spB4 = NULL;
    struct_80095D04* spB0 = NULL;
    struct_80095D04* iter;
    s32 pad;
    struct_80095D04* spA4;
    s32 j;
    s32 i;
    Vec3f pos;
    Vec3f projectedPos;
    f32 projectedW;
    s32 pad2;
    MeshHeader2Entry* meshHeader2Entries;
    MeshHeader2Entry* meshHeader2EntryIter;
    f32 temp_f2;

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

    meshHeader2 = &room->meshHeader->meshHeader2;
    meshHeader2Entry = SEGMENTED_TO_VIRTUAL(meshHeader2->entries);
    spA4 = spB8;

    ASSERT(meshHeader2->numEntries <= SHAPE_SORT_MAX, "polygon2->num <= SHAPE_SORT_MAX", "../z_room.c", 317);
    meshHeader2Entries = meshHeader2Entry;

    for (i = 0; i < meshHeader2->numEntries; i++, meshHeader2Entry++) {
        pos.x = meshHeader2Entry->pos.x;
        pos.y = meshHeader2Entry->pos.y;
        pos.z = meshHeader2Entry->pos.z;
        SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &pos, &projectedPos, &projectedW);
        if (-(f32)meshHeader2Entry->unk_06 < projectedPos.z) {
            temp_f2 = projectedPos.z - meshHeader2Entry->unk_06;
            if (temp_f2 < play->lightCtx.fogFar) {
                spA4->unk_00 = meshHeader2Entry;
                spA4->unk_04 = temp_f2;
                iter = spB4;
                if (iter == NULL) {
                    spB4 = spB0 = spA4;
                    spA4->unk_08 = spA4->unk_0C = NULL;
                } else {
                    do {
                        if (spA4->unk_04 < iter->unk_04) {
                            break;
                        }
                        iter = iter->unk_0C;
                    } while (iter != NULL);

                    if (iter == NULL) {
                        spA4->unk_08 = spB0;
                        spA4->unk_0C = NULL;
                        spB0->unk_0C = spA4;
                        spB0 = spA4;
                    } else {
                        spA4->unk_08 = iter->unk_08;
                        if (spA4->unk_08 == NULL) {
                            spB4 = spA4;
                        } else {
                            spA4->unk_08->unk_0C = spA4;
                        }
                        iter->unk_08 = spA4;
                        spA4->unk_0C = iter;
                    }
                }
                spA4++;
            }
        }
    }

    iREG(87) = meshHeader2->numEntries & 0xFFFF & 0xFFFF & 0xFFFF; // if this is real then I might not be

    for (i = 1; spB4 != NULL; spB4 = spB4->unk_0C, i++) {
        Gfx* displayList;

        meshHeader2Entry = spB4->unk_00;
        if (iREG(86) != 0) {
            meshHeader2EntryIter = meshHeader2Entries;
            for (j = 0; j < meshHeader2->numEntries; j++, meshHeader2EntryIter++) {
                if (meshHeader2Entry == meshHeader2EntryIter) {
                    break; // This loop does nothing?
                }
            }

            if (((iREG(86) == 1) && (iREG(89) >= i)) || ((iREG(86) == 2) && (iREG(89) == i))) {
                if (flags & ROOM_DRAW_OPA) {
                    displayList = meshHeader2Entry->opa;
                    if (displayList != NULL) {
                        gSPDisplayList(POLY_OPA_DISP++, displayList);
                    }
                }

                if (flags & ROOM_DRAW_XLU) {
                    displayList = meshHeader2Entry->xlu;
                    if (displayList != NULL) {
                        gSPDisplayList(POLY_XLU_DISP++, displayList);
                    }
                }
            }
        } else {
            if (flags & ROOM_DRAW_OPA) {
                displayList = meshHeader2Entry->opa;
                if (displayList != NULL) {
                    gSPDisplayList(POLY_OPA_DISP++, displayList);
                }
            }

            if (flags & ROOM_DRAW_XLU) {
                displayList = meshHeader2Entry->xlu;
                if (displayList != NULL) {
                    gSPDisplayList(POLY_XLU_DISP++, displayList);
                }
            }
        }
    }

    iREG(88) = i - 1;

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 430);
}

#define JPEG_MARKER 0xFFD8FFE0

s32 func_80096238(void* data) {
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
            // "If the original buffer size isn't at least 150kb, it will be out of control."
            osSyncPrintf("元のバッファのサイズが150キロバイト無いと暴走するでしょう。\n");

            bcopy(gZBuffer, data, sizeof(gZBuffer));
        } else {
            osSyncPrintf("失敗！なんで〜\n"); // "Failure! Why is it 〜"
        }
    }

    return 0;
}

void func_8009638C(Gfx** displayList, void* source, void* tlut, u16 width, u16 height, u8 fmt, u8 siz, u16 mode0,
                   u16 tlutCount, f32 frameX, f32 frameY) {
    Gfx* displayListHead;
    uObjBg* bg;

    displayListHead = *displayList;
    func_80096238(SEGMENTED_TO_VIRTUAL(source));

    bg = (uObjBg*)(displayListHead + 1);
    gSPBranchList(displayListHead, (u8*)bg + sizeof(uObjBg));
    bg->b.imageX = 0;
    bg->b.imageW = width * 4;
    bg->b.frameX = frameX * 4;
    bg->b.imageY = 0;
    bg->b.imageH = height * 4;
    bg->b.frameY = frameY * 4;
    bg->b.imagePtr = source;
    bg->b.imageLoad = G_BGLT_LOADTILE;
    bg->b.imageFmt = fmt;
    bg->b.imageSiz = siz;
    bg->b.imagePal = 0;
    bg->b.imageFlip = 0;

    displayListHead = (void*)(bg + 1);
    if (fmt == G_IM_FMT_CI) {
        gDPLoadTLUT(displayListHead++, tlutCount, 256, tlut);
    } else {
        gDPPipeSync(displayListHead++);
    }

    if ((fmt == G_IM_FMT_RGBA) && (SREG(26) == 0)) {
        bg->b.frameW = width * 4;
        bg->b.frameH = height * 4;
        guS2DInitBg(bg);
        gDPSetOtherMode(displayListHead++, mode0 | G_TL_TILE | G_TD_CLAMP | G_TP_NONE | G_CYC_COPY | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
        gSPBgRectCopy(displayListHead++, bg);

    } else {
        bg->s.frameW = width * 4;
        bg->s.frameH = height * 4;
        bg->s.scaleW = 1024;
        bg->s.scaleH = 1024;
        bg->s.imageYorig = bg->b.imageY;
        gDPSetOtherMode(displayListHead++,
                        mode0 | G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE |
                            G_TL_TILE | G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PIXEL | AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL |
                            GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_BL, G_BL_1MA) |
                            GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_BL, G_BL_1MA));
        gDPSetCombineLERP(displayListHead++, 0, 0, 0, TEXEL0, 0, 0, 0, 1, 0, 0, 0, TEXEL0, 0, 0, 0, 1);
        gSPObjRenderMode(displayListHead++, G_OBJRM_ANTIALIAS | G_OBJRM_BILERP);
        gSPBgRect1Cyc(displayListHead++, bg);
    }

    gDPPipeSync(displayListHead++);
    *displayList = displayListHead;
}

void Room_Draw1Single(PlayState* play, Room* room, u32 flags) {
    Camera* activeCam;
    Gfx* spA8;
    MeshHeader1Single* meshHeader1Single;
    MeshHeader01Entry* meshHeader1Entry;
    u32 isFixedCamera;
    u32 drawBg;
    u32 drawOpa;
    u32 drawXlu;

    OPEN_DISPS(play->state.gfxCtx, "../z_room.c", 628);

    activeCam = GET_ACTIVE_CAM(play);
    isFixedCamera = (activeCam->setting == CAM_SET_PREREND_FIXED);
    meshHeader1Single = &room->meshHeader->meshHeader1Single;
    meshHeader1Entry = SEGMENTED_TO_VIRTUAL(meshHeader1Single->base.entry);
    drawBg = (flags & ROOM_DRAW_OPA) && isFixedCamera && meshHeader1Single->source && !(SREG(25) & 1);
    drawOpa = (flags & ROOM_DRAW_OPA) && (meshHeader1Entry->opa != NULL) && !(SREG(25) & 2);
    drawXlu = (flags & ROOM_DRAW_XLU) && (meshHeader1Entry->xlu != NULL) && !(SREG(25) & 4);

    if (drawOpa || drawBg) {
        gSPSegment(POLY_OPA_DISP++, 0x03, room->segment);

        if (drawOpa) {
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, meshHeader1Entry->opa);
        }

        if (drawBg) {
            gSPLoadUcodeL(POLY_OPA_DISP++, gspS2DEX2d_fifo);

            {
                Vec3f sp60;
                spA8 = POLY_OPA_DISP;
                Camera_GetSkyboxOffset(&sp60, activeCam);
                func_8009638C(&spA8, meshHeader1Single->source, meshHeader1Single->tlut, meshHeader1Single->width,
                              meshHeader1Single->height, meshHeader1Single->fmt, meshHeader1Single->siz,
                              meshHeader1Single->mode0, meshHeader1Single->tlutCount,
                              (sp60.x + sp60.z) * 1.2f + sp60.y * 0.6f, sp60.y * 2.4f + (sp60.x + sp60.z) * 0.3f);
                POLY_OPA_DISP = spA8;
            }

            gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData());
        }
    }

    if (drawXlu) {
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPDisplayList(POLY_XLU_DISP++, meshHeader1Entry->xlu);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 691);
}

BgImage* func_80096A74(MeshHeader1Multi* meshHeader1Multi, PlayState* play) {
    Camera* activeCam = GET_ACTIVE_CAM(play);
    s32 bgCamIndex = activeCam->bgCamIndex;
    s16 jfifId;
    Player* player;
    BgImage* bgImage;
    s32 i;

    jfifId = ((BgCamFuncData*)BgCheck_GetBgCamFuncDataImpl(&play->colCtx, bgCamIndex, BGCHECK_SCENE))->jfifId;
    if (jfifId >= 0) {
        bgCamIndex = jfifId;
    }

    player = GET_PLAYER(play);
    player->actor.params = (player->actor.params & 0xFF00) | bgCamIndex;

    bgImage = SEGMENTED_TO_VIRTUAL(meshHeader1Multi->list);
    for (i = 0; i < meshHeader1Multi->count; i++) {
        if (bgImage->id == bgCamIndex) {
            return bgImage;
        }
        bgImage++;
    }

    // "z_room.c: Data consistent with camera id does not exist camid=%d"
    osSyncPrintf(VT_COL(RED, WHITE) "z_room.c:カメラＩＤに一致するデータが存在しません camid=%d\n" VT_RST, bgCamIndex);
    LogUtils_HungupThread("../z_room.c", 726);

    return NULL;
}

void Room_Draw1Multi(PlayState* play, Room* room, u32 flags) {
    Camera* activeCam;
    Gfx* gfx;
    MeshHeader1Multi* meshHeader1Multi;
    BgImage* bgImage;
    MeshHeader01Entry* meshHeader1Entry;
    u32 isFixedCamera;
    u32 drawBg;
    u32 drawOpa;
    u32 drawXlu;

    OPEN_DISPS(play->state.gfxCtx, "../z_room.c", 752);

    activeCam = GET_ACTIVE_CAM(play);
    isFixedCamera = (activeCam->setting == CAM_SET_PREREND_FIXED);
    meshHeader1Multi = &room->meshHeader->meshHeader1Multi;
    meshHeader1Entry = SEGMENTED_TO_VIRTUAL(meshHeader1Multi->base.entry);
    bgImage = func_80096A74(meshHeader1Multi, play);
    drawBg = (flags & ROOM_DRAW_OPA) && isFixedCamera && bgImage->source && !(SREG(25) & 1);
    drawOpa = (flags & ROOM_DRAW_OPA) && (meshHeader1Entry->opa != NULL) && !(SREG(25) & 2);
    drawXlu = (flags & ROOM_DRAW_XLU) && (meshHeader1Entry->xlu != NULL) && !(SREG(25) & 4);

    if (drawOpa || drawBg) {
        gSPSegment(POLY_OPA_DISP++, 0x03, room->segment);

        if (drawOpa) {
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, meshHeader1Entry->opa);
        }

        if (drawBg) {
            gSPLoadUcodeL(POLY_OPA_DISP++, gspS2DEX2d_fifo);

            {
                Vec3f skyboxOffset;

                gfx = POLY_OPA_DISP;
                Camera_GetSkyboxOffset(&skyboxOffset, activeCam);
                func_8009638C(&gfx, bgImage->source, bgImage->tlut, bgImage->width, bgImage->height, bgImage->fmt,
                              bgImage->siz, bgImage->mode0, bgImage->tlutCount,
                              (skyboxOffset.x + skyboxOffset.z) * 1.2f + skyboxOffset.y * 0.6f,
                              skyboxOffset.y * 2.4f + (skyboxOffset.x + skyboxOffset.z) * 0.3f);
                POLY_OPA_DISP = gfx;
            }

            gSPLoadUcode(POLY_OPA_DISP++, SysUcode_GetUCode(), SysUcode_GetUCodeData());
        }
    }

    if (drawXlu) {
        gSPSegment(POLY_XLU_DISP++, 0x03, room->segment);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPDisplayList(POLY_XLU_DISP++, meshHeader1Entry->xlu);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_room.c", 819);
}

void Room_Draw1(PlayState* play, Room* room, u32 flags) {
    MeshHeader1Base* meshHeader1Base = &room->meshHeader->meshHeader1Base;

    if (meshHeader1Base->format == MESH_HEADER1_FORMAT_SINGLE) {
        Room_Draw1Single(play, room, flags);
    } else if (meshHeader1Base->format == MESH_HEADER1_FORMAT_MULTI) {
        Room_Draw1Multi(play, room, flags);
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
                                             : play->setupEntranceList[play->curSpawn].room;
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
        DmaMgr_SendRequest2(&roomCtx->dmaRequest, roomCtx->unk_34, play->roomList[roomNum].vromStart, size, 0,
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
        ASSERT(room->meshHeader->base.type < ARRAY_COUNTU(sRoomDrawHandlers),
               "this->ground_shape->polygon.type < number(Room_Draw_Proc)", "../z_room.c", 1125);
        sRoomDrawHandlers[room->meshHeader->base.type](play, room, flags);
    }
}

void func_80097534(PlayState* play, RoomContext* roomCtx) {
    roomCtx->prevRoom.num = -1;
    roomCtx->prevRoom.segment = NULL;
    func_80031B14(play, &play->actorCtx);
    Actor_SpawnTransitionActors(play, &play->actorCtx);
    Map_InitRoomData(play, roomCtx->curRoom.num);
    if (!((play->sceneNum >= SCENE_SPOT00) && (play->sceneNum <= SCENE_SPOT20))) {
        Map_SavePlayerInitialInfo(play);
    }
    Audio_SetEnvReverb(play->roomCtx.curRoom.echo);
}
