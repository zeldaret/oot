#include "global.h"
#include "vt.h"

#define ANIM_INTERP 1

s32 LinkAnimation_Loop(GlobalContext* globalCtx, SkelAnime* skelAnime);
s32 LinkAnimation_Once(GlobalContext* globalCtx, SkelAnime* skelAnime);
s32 SkelAnime_LoopFull(SkelAnime* skelAnime);
s32 SkelAnime_Once(SkelAnime* skelAnime);
s32 SkelAnime_LoopPartial(SkelAnime* skelAnime);

void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src);

static u32 sDisableAnimQueueFlags = 0;
static u32 sAnimQueueFlags;

/*
 * Draw a limb of type `LodLimb`
 * Near or far display list is specified via `lod`
 */
void SkelAnime_DrawLimbLod(GlobalContext* globalCtx, s32 limbIndex, void** skeleton, Vec3s* jointTbl,
                           OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg, s32 lod) {
    LodLimb* limb;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 773);

    Matrix_Push();
    limb = (LodLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = jointTbl[limbIndex];

    pos.x = limb->jointPos.x;
    pos.y = limb->jointPos.y;
    pos.z = limb->jointPos.z;

    dList = limb->dLists[lod];

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 805), G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }

    if (1) {}

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, arg);
    }

    if (limb->child != LIMB_DONE) {
        SkelAnime_DrawLimbLod(globalCtx, limb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg, lod);
    }

    Matrix_Pull();

    if (limb->sibling != LIMB_DONE) {
        SkelAnime_DrawLimbLod(globalCtx, limb->sibling, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg, lod);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 821);
}

/*
 * Draw all limbs of type `LodLimb` in a given skeleton
 * Near or far display list is specified via `lod`
 */
void SkelAnime_DrawLod(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTbl, OverrideLimbDrawOpa overrideLimbDraw,
                       PostLimbDrawOpa postLimbDraw, void* arg, s32 lod) {
    LodLimb* rootLimb;
    s32 pad;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    if (skeleton == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Si2_Lod_draw():skelがNULLです。\n"); // Si2_Lod_draw (): skel is NULL.
        osSyncPrintf(VT_RST);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 849);

    Matrix_Push();

    rootLimb = (LodLimb*)SEGMENTED_TO_VIRTUAL(skeleton[0]);
    pos.x = jointTbl[0].x;
    pos.y = jointTbl[0].y;
    pos.z = jointTbl[0].z;

    rot = jointTbl[1];
    dList = rootLimb->dLists[lod];

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 881), G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, arg);
    }

    if (rootLimb->child != LIMB_DONE) {
        SkelAnime_DrawLimbLod(globalCtx, rootLimb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg, lod);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 894);
}

/*
 * Draw a limb of type `LodLimb` contained within a flexible skeleton
 * Near or far display list is specified via `lod`
 */
void SkelAnime_DrawFlexLimbLod(GlobalContext* globalCtx, s32 limbIndex, void** skeleton, Vec3s* jointTbl,
                               OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg, s32 lod,
                               Mtx** mtx) {
    LodLimb* limb;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limb = (LodLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;

    rot = jointTbl[limbIndex];

    pos.x = limb->jointPos.x;
    pos.y = limb->jointPos.y;
    pos.z = limb->jointPos.z;

    newDList = limbDList = limb->dLists[lod];

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &newDList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 945);
            {
                OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 946);
                gSPMatrix(POLY_OPA_DISP++, *mtx, G_MTX_LOAD);
                gSPDisplayList(POLY_OPA_DISP++, newDList);
                CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 949);
            }
            (*mtx)++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 954);
            (*mtx)++;
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &limbDList, &rot, arg);
    }
    if (limb->child != LIMB_DONE) {
        SkelAnime_DrawFlexLimbLod(globalCtx, limb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg, lod,
                                  mtx);
    }

    Matrix_Pull();

    if (limb->sibling != LIMB_DONE) {
        SkelAnime_DrawFlexLimbLod(globalCtx, limb->sibling, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                  lod, mtx);
    }
}

/*
 * Draws all limbs of type `LodLimb` in a given flexible skeleton
 * Limbs in a flexible skeleton have meshes that can stretch to line up with other limbs.
 * An array of matrices is dynamically allocated so each limb can access any transform to ensure its meshes line up.
 */
void SkelAnime_DrawFlexLod(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTbl, s32 dListCount,
                           OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg, s32 lod) {
    LodLimb* rootLimb;
    s32 pad;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;
    Mtx* mtx;

    mtx = Graph_Alloc(globalCtx->state.gfxCtx, dListCount * sizeof(Mtx));

    if (skeleton == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Si2_Lod_draw_SV():skelがNULLです。\n"); // Si2_Lod_draw_SV (): skel is NULL.
        osSyncPrintf(VT_RST);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1000);

    gSPSegment(POLY_OPA_DISP++, 0xD, mtx);
    Matrix_Push();

    rootLimb = (LodLimb*)SEGMENTED_TO_VIRTUAL(skeleton[0]);
    pos.x = jointTbl[0].x;
    pos.y = jointTbl[0].y;
    pos.z = jointTbl[0].z;

    rot = jointTbl[1];

    newDList = limbDList = rootLimb->dLists[lod];

    if ((overrideLimbDraw == 0) || !overrideLimbDraw(globalCtx, 1, &newDList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1033);
            gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, newDList);
            mtx++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1040);
            mtx++;
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &limbDList, &rot, arg);
    }
    if (rootLimb->child != LIMB_DONE) {
        SkelAnime_DrawFlexLimbLod(globalCtx, rootLimb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                  lod, &mtx);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1053);
}

/*
 * Draw a limb of type `StandardLimb` to the polyOpa buffer
 */
void SkelAnime_DrawLimbOpa(GlobalContext* globalCtx, s32 limbIndex, void** skeleton, Vec3s* jointTbl,
                           OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg) {
    StandardLimb* limb;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1076);
    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = jointTbl[limbIndex];
    pos.x = limb->jointPos.x;
    pos.y = limb->jointPos.y;
    pos.z = limb->jointPos.z;
    dList = limb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1103), G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }

    if (1) {}

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, arg);
    }

    if (limb->child != LIMB_DONE) {
        SkelAnime_DrawLimbOpa(globalCtx, limb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg);
    }

    Matrix_Pull();

    if (limb->sibling != LIMB_DONE) {
        SkelAnime_DrawLimbOpa(globalCtx, limb->sibling, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1121);
}

/*
 * Draw all limbs of type `StandardLimb` in a given skeleton to the polyOpa buffer
 */
void SkelAnime_DrawOpa(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTbl, OverrideLimbDrawOpa overrideLimbDraw,
                       PostLimbDrawOpa postLimbDraw, void* arg) {
    StandardLimb* rootLimb;
    s32 pad;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    if (skeleton == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Si2_draw():skelがNULLです。\n"); // Si2_draw (): skel is NULL.
        osSyncPrintf(VT_RST);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1148);

    Matrix_Push();
    rootLimb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[0]);

    pos.x = jointTbl[0].x;
    pos.y = jointTbl[0].y;
    pos.z = jointTbl[0].z;

    rot = jointTbl[1];
    dList = rootLimb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1176), G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, arg);
    }

    if (rootLimb->child != LIMB_DONE) {
        SkelAnime_DrawLimbOpa(globalCtx, rootLimb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1190);
}

/*
 * Draw a limb of type `StandardLimb` contained within a flexible skeleton to the polyOpa buffer
 */
void SkelAnime_DrawFlexLimbOpa(GlobalContext* globalCtx, s32 limbIndex, void** skeleton, Vec3s* jointTbl,
                               OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg,
                               Mtx** limbMatricies) {
    StandardLimb* limb;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1214);

    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = jointTbl[limbIndex];

    pos.x = limb->jointPos.x;
    pos.y = limb->jointPos.y;
    pos.z = limb->jointPos.z;

    newDList = limbDList = limb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &newDList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 1242);
            gSPMatrix(POLY_OPA_DISP++, *limbMatricies, G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, newDList);
            (*limbMatricies)++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 1249);
            (*limbMatricies)++;
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &limbDList, &rot, arg);
    }

    if (limb->child != LIMB_DONE) {
        SkelAnime_DrawFlexLimbOpa(globalCtx, limb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                  limbMatricies);
    }

    Matrix_Pull();

    if (limb->sibling != LIMB_DONE) {
        SkelAnime_DrawFlexLimbOpa(globalCtx, limb->sibling, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                  limbMatricies);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1265);
}

/*
 * Draw all limbs of type `StandardLimb` in a given flexible skeleton to the polyOpa buffer
 * Limbs in a flexible skeleton have meshes that can stretch to line up with other limbs.
 * An array of matrices is dynamically allocated so each limb can access any transform to ensure its meshes line up.
 */
void SkelAnime_DrawFlexOpa(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTbl, s32 dListCount,
                           OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw, void* arg) {
    StandardLimb* rootLimb;
    s32 pad;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;
    Mtx* mtx;

    mtx = Graph_Alloc(globalCtx->state.gfxCtx, dListCount * sizeof(Mtx));

    if (skeleton == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Si2_draw_SV():skelがNULLです。\n"); // Si2_draw_SV (): skel is NULL.
        osSyncPrintf(VT_RST);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1294);

    gSPSegment(POLY_OPA_DISP++, 0xD, mtx);

    Matrix_Push();

    rootLimb = SEGMENTED_TO_VIRTUAL(skeleton[0]);

    pos.x = jointTbl[0].x;
    pos.y = jointTbl[0].y;
    pos.z = jointTbl[0].z;

    rot = jointTbl[1];

    newDList = limbDList = rootLimb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &newDList, &pos, &rot, arg)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1327);
            gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, newDList);
            mtx++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1334);
            mtx++;
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &limbDList, &rot, arg);
    }

    if (rootLimb->child != LIMB_DONE) {
        SkelAnime_DrawFlexLimbOpa(globalCtx, rootLimb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                  &mtx);
    }

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1347);
}

/*
 * Copies frame data from the frame data table, indexed by the joint index table.
 * Indices below limit are copied from that entry in the static frame data table.
 * Indices above limit are offsets to a frame data array indexed by the frame.
 */
void SkelAnime_GetFrameData(AnimationHeader* animationSeg, s32 frame, s32 limbCount, Vec3s* dst) {
    AnimationHeader* animHeader = SEGMENTED_TO_VIRTUAL(animationSeg);
    JointIndex* index = SEGMENTED_TO_VIRTUAL(animHeader->jointIndexSeg);
    s16* frameDataTable = SEGMENTED_TO_VIRTUAL(animHeader->frameDataSeg);
    s16* staticFrameTable = &frameDataTable[0];
    s16* animFrameTable = &frameDataTable[frame];
    u16 limit = animHeader->limit;
    s32 i;

    for (i = 0; i < limbCount; i++, dst++, index++) {
        if ((dst == NULL) || (index == NULL) || (animFrameTable == NULL) || (staticFrameTable == NULL)) {
            LOG_ADDRESS("out", dst, "../z_skelanime.c", 1392);
            LOG_ADDRESS("ref_tbl", index, "../z_skelanime.c", 1393);
            LOG_ADDRESS("frame_tbl", animFrameTable, "../z_skelanime.c", 1394);
            LOG_ADDRESS("tbl", staticFrameTable, "../z_skelanime.c", 1395);
        }

        dst->x = (index->x >= limit) ? animFrameTable[index->x] : staticFrameTable[index->x];
        dst->y = (index->y >= limit) ? animFrameTable[index->y] : staticFrameTable[index->y];
        dst->z = (index->z >= limit) ? animFrameTable[index->z] : staticFrameTable[index->z];
    }
}

s16 Animation_Length(void* animationSeg) {
    s16* lastFrame = SEGMENTED_TO_VIRTUAL(animationSeg);

    return *lastFrame;
}

s16 Animation_LastFrame(void* animationSeg) {
    u16* lastFrame = SEGMENTED_TO_VIRTUAL(animationSeg);
    // Loads an unsigned half for some reason.
    return *lastFrame - 1;
}

/*
 * Draw a limb of type `StandardLimb` to the specified display buffer
 */
Gfx* SkelAnime_DrawLimb(GlobalContext* globalCtx, s32 limbIndex, void** skeleton, Vec3s* jointTbl,
                        OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* arg, Gfx* gfx) {
    StandardLimb* limb;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;

    rot = jointTbl[limbIndex];

    pos.x = limb->jointPos.x;
    pos.y = limb->jointPos.y;
    pos.z = limb->jointPos.z;

    dList = limb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, arg, &gfx)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1489), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, arg, &gfx);
    }

    if (limb->child != LIMB_DONE) {
        gfx = SkelAnime_DrawLimb(globalCtx, limb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg, gfx);
    }

    Matrix_Pull();

    if (limb->sibling != LIMB_DONE) {
        gfx =
            SkelAnime_DrawLimb(globalCtx, limb->sibling, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg, gfx);
    }

    return gfx;
}

/*
 * Draw all limbs of type `StandardLimb` in a given skeleton to the specified display buffer
 */
Gfx* SkelAnime_Draw(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTbl, OverrideLimbDraw overrideLimbDraw,
                    PostLimbDraw postLimbDraw, void* arg, Gfx* gfx) {
    StandardLimb* rootLimb;
    s32 pad;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    if (skeleton == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Si2_draw2():skelがNULLです。NULLを返します。\n"); // Si2_draw2 (): skel is NULL. Returns NULL.
        osSyncPrintf(VT_RST);
        return NULL;
    }

    Matrix_Push();

    rootLimb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[0]);

    pos.x = jointTbl[0].x;
    pos.y = jointTbl[0].y;
    pos.z = jointTbl[0].z;

    rot = jointTbl[1];

    dList = rootLimb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, arg, &gfx)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1558), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, arg, &gfx);
    }

    if (rootLimb->child != LIMB_DONE) {
        gfx = SkelAnime_DrawLimb(globalCtx, rootLimb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                 gfx);
    }

    Matrix_Pull();

    return gfx;
}

/*
 * Draw a limb of type `StandardLimb` contained within a flexible skeleton to the specified display buffer
 */
Gfx* SkelAnime_DrawFlexLimb(GlobalContext* globalCtx, s32 limbIndex, void** skeleton, Vec3s* jointTbl,
                            OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* arg, Mtx** mtx,
                            Gfx* gfx) {
    StandardLimb* limb;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = jointTbl[limbIndex];

    pos.x = limb->jointPos.x;
    pos.y = limb->jointPos.y;
    pos.z = limb->jointPos.z;

    newDList = limbDList = limb->dList;
    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &newDList, &pos, &rot, arg, &gfx)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 1623);
            gSPMatrix(gfx++, *mtx, G_MTX_LOAD);
            gSPDisplayList(gfx++, newDList);
            (*mtx)++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 1630);
            (*mtx)++;
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &limbDList, &rot, arg, &gfx);
    }
    if (limb->child != LIMB_DONE) {
        gfx = SkelAnime_DrawFlexLimb(globalCtx, limb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                     mtx, gfx);
    }

    Matrix_Pull();

    if (limb->sibling != LIMB_DONE) {
        gfx = SkelAnime_DrawFlexLimb(globalCtx, limb->sibling, skeleton, jointTbl, overrideLimbDraw, postLimbDraw, arg,
                                     mtx, gfx);
    }

    return gfx;
}

/*
 * Draw all limbs of type `StandardLimb` in a given flexible skeleton to the specified display buffer
 * Limbs in a flexible skeleton have meshes that can stretch to line up with other limbs.
 * An array of matrices is dynamically allocated so each limb can access any transform to ensure its meshes line up.
 */
Gfx* SkelAnime_DrawFlex(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTbl, s32 dListCount,
                        OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* arg, Gfx* gfx) {
    StandardLimb* rootLimb;
    s32 pad;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;
    Mtx* mtx;

    mtx = Graph_Alloc(globalCtx->state.gfxCtx, dListCount * sizeof(*mtx));
    if (skeleton == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf(
            "Si2_draw2_SV():skelがNULLです。NULLを返します。\n"); // Si2_draw2_SV (): skel is NULL. Returns NULL.
        osSyncPrintf(VT_RST);
        return NULL;
    }

    gSPSegment(gfx++, 0xD, mtx);
    Matrix_Push();
    rootLimb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[0]);

    pos.x = jointTbl[0].x;
    pos.y = jointTbl[0].y;
    pos.z = jointTbl[0].z;

    rot = jointTbl[1];

    newDList = limbDList = rootLimb->dList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &newDList, &pos, &rot, arg, &gfx)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1710);
            gSPMatrix(gfx++, mtx, G_MTX_LOAD);
            gSPDisplayList(gfx++, newDList);
            mtx++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1717);
            mtx++;
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &limbDList, &rot, arg, &gfx);
    }
    if (rootLimb->child != LIMB_DONE) {
        gfx = SkelAnime_DrawFlexLimb(globalCtx, rootLimb->child, skeleton, jointTbl, overrideLimbDraw, postLimbDraw,
                                     arg, &mtx, gfx);
    }

    Matrix_Pull();

    return gfx;
}

// unused
s32 SkelAnime_GetFrameData2(AnimationHeader2* animSeg2, s32 frame, Vec3s* dst) {
    AnimationHeader2* animHeader = SEGMENTED_TO_VIRTUAL(animSeg2);
    s32 limbCount = animHeader->limbCount;
    JointKey* key = SEGMENTED_TO_VIRTUAL(animHeader->jointKeySeg);
    s16* frameDataTable = SEGMENTED_TO_VIRTUAL(animHeader->frameDataSeg);
    s16* staticFrameTable = &frameDataTable[0];
    s16* animFrameTable = &frameDataTable[frame];
    s32 i;

    /*
     *Equivalent to the following, but the compiler optimizes the loop in a way I can't replicate
     */

    // for(i = 0, dst++, key++; i < limbCount + 1; i++, key++, dst++) {
    //     dst->x = frame < key->xMax ? animFrameTable[key->x] : staticFrameTable[key->x];
    //     dst->y = frame < key->yMax ? animFrameTable[key->y] : staticFrameTable[key->y];
    //     dst->z = frame < key->zMax ? animFrameTable[key->z] : staticFrameTable[key->z];
    // }

    dst->x = frame < key->xMax ? animFrameTable[key->x] : staticFrameTable[key->x];
    dst->y = frame < key->yMax ? animFrameTable[key->y] : staticFrameTable[key->y];
    dst->z = frame < key->zMax ? animFrameTable[key->z] : staticFrameTable[key->z];

    i = 1;
    dst++;
    key++;

    if (limbCount & 1) {}

    if (limbCount > 0) {
        if (limbCount & 1) {
            i++;
            dst->x = frame < key->xMax ? animFrameTable[key->x] : staticFrameTable[key->x];
            dst->y = frame < key->yMax ? animFrameTable[key->y] : staticFrameTable[key->y];
            dst->z = frame < key->zMax ? animFrameTable[key->z] : staticFrameTable[key->z];
            key++;
            dst++;
            if (limbCount + 1 == i) {
                goto ret;
            }
        }
        do {
            i += 2;
            dst->x = frame < key->xMax ? animFrameTable[key->x] : staticFrameTable[key->x];
            dst->y = frame < key->yMax ? animFrameTable[key->y] : staticFrameTable[key->y];
            dst->z = frame < key->zMax ? animFrameTable[key->z] : staticFrameTable[key->z];
            key++;
            dst++;
            dst->x = frame < key->xMax ? animFrameTable[key->x] : staticFrameTable[key->x];
            dst->y = frame < key->yMax ? animFrameTable[key->y] : staticFrameTable[key->y];
            dst->z = frame < key->zMax ? animFrameTable[key->z] : staticFrameTable[key->z];
            key++;
            dst++;
        } while (i != limbCount + 1);
    }
ret:
    return limbCount;
}

// unused
s16 Animation_LimbCount2(AnimationHeader2* animationSeg) {
    AnimationHeader2* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->limbCount;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * Animation_Length
 */
s16 Animation_Length2(AnimationHeader2* animationSeg) {
    AnimationHeader2* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * Animation_LastFrame
 */
s16 Animation_LastFrame2(AnimationHeader2* animationSeg) {
    AnimationHeader2* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount - 1;
}

/*
 * Linearly interpolates between vector arrays start and target at the given weight.
 */
void SkelAnime_InterpVec3s(s32 limbCount, Vec3s* dst, Vec3s* start, Vec3s* target, f32 weight) {
    s32 i;
    s16 diff;
    s16 base;

    if (weight < 1.0f) {
        for (i = 0; i < limbCount; i++, dst++, start++, target++) {
            base = start->x;
            diff = target->x - base;
            dst->x = (s16)(diff * weight) + base;
            base = start->y;
            diff = target->y - base;
            dst->y = (s16)(diff * weight) + base;
            base = start->z;
            diff = target->z - base;
            dst->z = (s16)(diff * weight) + base;
        }
    } else {
        for (i = 0; i < limbCount; i++, dst++, target++) {
            dst->x = target->x;
            dst->y = target->y;
            dst->z = target->z;
        }
    }
}

void AnimationContext_Reset(AnimationContext* animationCtx) {
    animationCtx->animationCount = 0;
}

void AnimationContext_SetNextQueue(GlobalContext* globalCtx) {
    sAnimQueueFlags <<= 1;
}

void AnimationContext_DisableQueue(GlobalContext* globalCtx) {
    sDisableAnimQueueFlags |= sAnimQueueFlags;
}

AnimationEntry* AnimationContext_AddEntry(AnimationContext* animationCtx, AnimationType type) {
    AnimationEntry* entry;
    s16 index = animationCtx->animationCount;

    if (index >= ANIMATION_ENTRY_MAX) {
        return NULL;
    }
    animationCtx->animationCount = index + 1;
    entry = &animationCtx->entries[index];
    entry->type = type;
    return entry;
}

/*
 * Requests loading frame data from the Link animation at segment into frameTbl
 */
void AnimationContext_SetLoadFrame(GlobalContext* globalCtx, LinkAnimationHeader* segment, s32 frame, s32 limbCount,
                                   Vec3s* frameTbl) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_LOADFRAME);

    if (entry != NULL) {
        LinkAnimationHeader* linkAnimHeader = SEGMENTED_TO_VIRTUAL(segment);
        u32 ram = frameTbl;

        osCreateMesgQueue(&entry->data.load.msgQueue, &entry->data.load.msg, 1);
        DmaMgr_SendRequest2(&entry->data.load.req, ram,
                            LINK_ANIMATION_OFFSET(linkAnimHeader->segment, ((sizeof(Vec3s) * limbCount + 2) * frame)),
                            sizeof(Vec3s) * limbCount + 2, 0, &entry->data.load.msgQueue, NULL, "../z_skelanime.c",
                            2004);
    }
}

/*
 * Requests copying all vectors from src into dst
 */
void AnimationContext_SetCopyAll(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_COPYALL);

    if (entry != NULL) {
        entry->data.copy.queueFlag = sAnimQueueFlags;
        entry->data.copy.vecCount = vecCount;
        entry->data.copy.dst = dst;
        entry->data.copy.src = src;
    }
}

/*
 * Requests interpolating between base and mod with the given weight, placing the result in base
 */
void AnimationContext_SetInterp(GlobalContext* globalCtx, s32 vecCount, Vec3s* base, Vec3s* mod, f32 weight) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_INTERP);

    if (entry != NULL) {
        entry->data.interp.queueFlag = sAnimQueueFlags;
        entry->data.interp.vecCount = vecCount;
        entry->data.interp.base = base;
        entry->data.interp.mod = mod;
        entry->data.interp.weight = weight;
    }
}

/*
 * Requests copying vectors from src to dst whose copy flag is true
 */
void AnimationContext_SetCopyTrue(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* copyFlag) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_COPYTRUE);

    if (entry != NULL) {
        entry->data.copy1.queueFlag = sAnimQueueFlags;
        entry->data.copy1.vecCount = vecCount;
        entry->data.copy1.dst = dst;
        entry->data.copy1.src = src;
        entry->data.copy1.copyFlag = copyFlag;
    }
}

/*
 * Requests copying vectors from src to dst whose copy flag is false
 */
void AnimationContext_SetCopyFalse(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* copyFlag) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_COPYFALSE);

    if (entry != NULL) {
        entry->data.copy0.queueFlag = sAnimQueueFlags;
        entry->data.copy0.vecCount = vecCount;
        entry->data.copy0.dst = dst;
        entry->data.copy0.src = src;
        entry->data.copy0.copyFlag = copyFlag;
    }
}

/*
 * Requests moving an actor according to the translation of its root limb
 */
void AnimationContext_SetMoveActor(GlobalContext* globalCtx, Actor* actor, SkelAnime* skelAnime, f32 arg3) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_MOVEACTOR);

    if (entry != NULL) {
        entry->data.move.actor = actor;
        entry->data.move.skelAnime = skelAnime;
        entry->data.move.unk_08 = arg3;
    }
}

// The next functions perform the requests set above

/*
 * Receives the request for Link's animation frame data
 */
void AnimationContext_LoadFrame(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryLoadFrame* entry = &data->load;

    osRecvMesg(&entry->msgQueue, NULL, OS_MESG_BLOCK);
}

/*
 * If the entry's queue is enabled, copies all vectors from src to dst
 */
void AnimationContext_CopyAll(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryCopyAll* entry = &data->copy;

    if (!(entry->queueFlag & sDisableAnimQueueFlags)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        s32 i;

        for (i = 0; i < entry->vecCount; i++) {
            *dst++ = *src++;
        }
    }
}

/*
 * If the entry's queue is enabled, interpolates between base and mod, placing the result in base
 */
void AnimationContext_Interp(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryInterp* entry = &data->interp;

    if (!(entry->queueFlag & sDisableAnimQueueFlags)) {
        SkelAnime_InterpVec3s(entry->vecCount, entry->base, entry->base, entry->mod, entry->weight);
    }
}

/*
 * If the entry's queue is enabled, copies all vectors from src to dst whose copy flag is true
 */
void AnimationContext_CopyTrue(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryCopyTrue* entry = &data->copy1;

    if (!(entry->queueFlag & sDisableAnimQueueFlags)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        u8* copyFlag = entry->copyFlag;
        s32 i;

        for (i = 0; i < entry->vecCount; i++, dst++, src++) {
            if (*copyFlag++) {
                *dst = *src;
            }
        }
    }
}

/*
 * If the entry's queue is enabled, copies all vectors from src to dst whose copy flag is false
 */
void AnimationContext_CopyFalse(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryCopyFalse* entry = &data->copy0;

    if (!(entry->queueFlag & sDisableAnimQueueFlags)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        u8* copyFlag = entry->copyFlag;
        s32 i;

        for (i = 0; i < entry->vecCount; i++, dst++, src++) {
            if (!(*copyFlag++)) {
                *dst = *src;
            }
        }
    }
}

/*
 * Moves an actor according to the translation of its root limb
 */
void AnimationContext_MoveActor(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryMoveActor* entry = &data->move;
    Actor* actor = entry->actor;
    Vec3f diff;

    SkelAnime_UpdateTranslation(entry->skelAnime, &diff, actor->shape.rot.y);
    actor->posRot.pos.x += diff.x * actor->scale.x;
    actor->posRot.pos.y += diff.y * actor->scale.y * entry->unk_08;
    actor->posRot.pos.z += diff.z * actor->scale.z;
}

/*
 * Performs all requests in the animation queue, then resets the queue flags.
 */
void AnimationContext_Update(GlobalContext* globalCtx, AnimationContext* animationCtx) {
    static AnimationEntryCallback animFuncs[] = {
        AnimationContext_LoadFrame, AnimationContext_CopyAll,   AnimationContext_Interp,
        AnimationContext_CopyTrue,  AnimationContext_CopyFalse, AnimationContext_MoveActor,
    };
    AnimationEntry* entry;

    for (entry = animationCtx->entries; animationCtx->animationCount != 0; entry++, animationCtx->animationCount--) {
        animFuncs[entry->type](globalCtx, &entry->data);
    }

    sAnimQueueFlags = 1;
    sDisableAnimQueueFlags = 0;
}

void SkelAnime_InitLink(GlobalContext* globalCtx, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                        LinkAnimationHeader* segment, s32 flags, Vec3s* jointTbl, Vec3s* morphTbl, s32 limbBufCount) {
    FlexSkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);
    s32 headerJointCount = skeletonHeader->sh.limbCount;
    s32 limbCount;
    size_t allocSize;

    skelAnime->initFlags = flags;
    limbCount = (flags & 2) ? headerJointCount : 1;

    if (flags & 1) {
        limbCount += headerJointCount;
    }
    if (flags & 4) {
        limbCount += headerJointCount;
    }

    skelAnime->limbCount = limbCount;
    skelAnime->dListCount = skeletonHeader->dListCount;

    allocSize = limbCount * sizeof(Vec3s);
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->sh.segment);

    if (flags & 8) {
        allocSize += 2;
    }

    if (jointTbl == NULL) {
        skelAnime->jointTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2364);
        skelAnime->morphTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2365);
    } else {
        if (limbBufCount != limbCount) {
            __assert("joint_buff_num == joint_num", "../z_skelanime.c", 2369);
        }

        skelAnime->jointTbl = (Vec3s*)ALIGN16((u32)jointTbl);
        skelAnime->morphTbl = (Vec3s*)ALIGN16((u32)morphTbl);
    }

    if ((skelAnime->jointTbl == NULL) || (skelAnime->morphTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf(
            "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); // Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf(VT_RST);
    }

    LinkAnimation_Change(globalCtx, skelAnime, segment, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, 0.0f);
}

void LinkAnimation_SetUpdateFunction(SkelAnime* skelAnime) {
    if (skelAnime->mode <= ANIMMODE_LOOP_INTERP) {
        skelAnime->update = LinkAnimation_Loop;
    } else {
        skelAnime->update = LinkAnimation_Once;
    }
    skelAnime->morphWeight = 0.0f;
}

s32 LinkAnimation_Update(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    return skelAnime->update(globalCtx, skelAnime);
}

s32 LinkAnimation_Morph(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 prevMorphWeight = skelAnime->morphWeight;
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->morphWeight -= skelAnime->morphRate * updateRate;

    if (skelAnime->morphWeight <= 0.0f) {
        LinkAnimation_SetUpdateFunction(skelAnime);
    }

    AnimationContext_SetInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl,
                               1.0f - (skelAnime->morphWeight / prevMorphWeight));
    return 0;
}

void LinkAnimation_AnimateFrame(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    AnimationContext_SetLoadFrame(globalCtx, skelAnime->animation, skelAnime->curFrame, skelAnime->limbCount,
                                  skelAnime->jointTbl);
    if (skelAnime->morphWeight != 0) {
        f32 updateRate = R_UPDATE_RATE * 0.5f;

        skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
        if (skelAnime->morphWeight <= 0.0f) {
            skelAnime->morphWeight = 0.0f;
        } else {
            AnimationContext_SetInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl,
                                       skelAnime->morphWeight);
        }
    }
}

s32 LinkAnimation_Loop(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    LinkAnimation_AnimateFrame(globalCtx, skelAnime);
    return 0;
}

s32 LinkAnimation_Once(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    if (skelAnime->curFrame == skelAnime->endFrame) {
        LinkAnimation_AnimateFrame(globalCtx, skelAnime);
        return 1;
    }
    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if ((skelAnime->curFrame - skelAnime->endFrame) * skelAnime->playSpeed > 0.0f) {
        skelAnime->curFrame = skelAnime->endFrame;
    } else if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    LinkAnimation_AnimateFrame(globalCtx, skelAnime);
    return 0;
}

void Animation_SetMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 morphFrames) {
    skelAnime->morphWeight = 1.0f;
    skelAnime->morphRate = 1.0f / morphFrames;
}

void LinkAnimation_Change(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment, f32 playSpeed,
                          f32 startFrame, f32 endFrame, u8 mode, f32 morphFrames) {
    skelAnime->mode = mode;
    if ((morphFrames != 0.0f) && ((segment != skelAnime->animation) || (startFrame != skelAnime->curFrame))) {
        if (morphFrames < 0) {
            LinkAnimation_SetUpdateFunction(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->morphTbl, skelAnime->jointTbl);
            morphFrames = -morphFrames;
        } else {
            skelAnime->update = LinkAnimation_Morph;
            AnimationContext_SetLoadFrame(globalCtx, segment, (s32)startFrame, skelAnime->limbCount,
                                          skelAnime->morphTbl);
        }
        skelAnime->morphWeight = 1.0f;
        skelAnime->morphRate = 1.0f / morphFrames;
    } else {
        LinkAnimation_SetUpdateFunction(skelAnime);
        AnimationContext_SetLoadFrame(globalCtx, segment, (s32)startFrame, skelAnime->limbCount, skelAnime->jointTbl);
        skelAnime->morphWeight = 0.0f;
    }

    skelAnime->animation = segment;
    skelAnime->curFrame = 0.0f;
    skelAnime->startFrame = startFrame;
    skelAnime->curFrame = startFrame;
    skelAnime->endFrame = endFrame;
    skelAnime->animLength = Animation_Length(segment);
    skelAnime->playSpeed = playSpeed;
}

void LinkAnimation_PlayOnce(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment) {
    LinkAnimation_Change(globalCtx, skelAnime, segment, 1.0f, 0.0f, Animation_LastFrame(segment), ANIMMODE_STOP, 0.0f);
}

void LinkAnimation_PlayOnceSetSpeed(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                    f32 playSpeed) {
    LinkAnimation_Change(globalCtx, skelAnime, segment, playSpeed, 0.0f, Animation_LastFrame(segment), ANIMMODE_STOP,
                         0.0f);
}

void LinkAnimation_PlayLoop(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment) {
    LinkAnimation_Change(globalCtx, skelAnime, segment, 1.0f, 0.0f, Animation_LastFrame(segment), ANIMMODE_LOOP, 0.0f);
}

void LinkAnimation_PlayLoopSetSpeed(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                    f32 playSpeed) {
    LinkAnimation_Change(globalCtx, skelAnime, segment, playSpeed, 0.0f, Animation_LastFrame(segment), ANIMMODE_LOOP,
                         0.0f);
}

/*
 * Requests copying jointTbl to morphTbl
 */
void AnimationContext_SetCopyJointToMorph(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    AnimationContext_SetCopyAll(globalCtx, skelAnime->limbCount, skelAnime->morphTbl, skelAnime->jointTbl);
}

/*
 * Requests copying morphTbl to jointTbl
 * unused
 */
void AnimationContext_SetCopyMorphToJoint(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    AnimationContext_SetCopyAll(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl);
}

/*
 * Requests loading frame data from the Link animation at segment into morphTbl
 */
void AnimationContext_SetLoadToMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                     f32 frame) {
    AnimationContext_SetLoadFrame(globalCtx, segment, (s32)frame, skelAnime->limbCount, skelAnime->morphTbl);
}

/*
 * Requests loading frame data from the Link animation at segment into jointTbl
 */
void AnimationContext_SetLoadToJoint(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                     f32 frame) {
    AnimationContext_SetLoadFrame(globalCtx, segment, (s32)frame, skelAnime->limbCount, skelAnime->jointTbl);
}

/*
 * Requests interpolating between jointTbl and morphTbl, placing the result in jointTbl
 */
void AnimationContext_SetInterpJointMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 weight) {
    AnimationContext_SetInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl, weight);
}

/*
 * Requests loading frame data from the Link animation segments and blending them, placing the result in jointTbl
 */
void AnimationContext_SetBlendToJoint(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* animation1,
                                      f32 frame1, LinkAnimationHeader* animation2, f32 frame2, f32 blendWeight,
                                      Vec3s* blendTbl) {
    Vec3s* alignedBlendTbl;

    AnimationContext_SetLoadFrame(globalCtx, animation1, (s32)frame1, skelAnime->limbCount, skelAnime->jointTbl);

    alignedBlendTbl = (Vec3s*)ALIGN16((u32)blendTbl);

    AnimationContext_SetLoadFrame(globalCtx, animation2, (s32)frame2, skelAnime->limbCount, alignedBlendTbl);
    AnimationContext_SetInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, alignedBlendTbl, blendWeight);
}

/*
 * Requests loading frame data from the Link animation segments and blending them, placing the result in morphTbl
 */
void AnimationContext_SetBlendToMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* animation1,
                                      f32 frame1, LinkAnimationHeader* animation2, f32 frame2, f32 blendWeight,
                                      Vec3s* blendTbl) {
    Vec3s* alignedBlendTbl;

    AnimationContext_SetLoadFrame(globalCtx, animation1, (s32)frame1, skelAnime->limbCount, skelAnime->morphTbl);

    alignedBlendTbl = (Vec3s*)ALIGN16((u32)blendTbl);

    AnimationContext_SetLoadFrame(globalCtx, animation2, (s32)frame2, skelAnime->limbCount, alignedBlendTbl);
    AnimationContext_SetInterp(globalCtx, skelAnime->limbCount, skelAnime->morphTbl, alignedBlendTbl, blendWeight);
}

// unused
void LinkAnimation_SetStop(SkelAnime* skelAnime) {
    skelAnime->mode = ANIMMODE_STOP;
    LinkAnimation_SetUpdateFunction(skelAnime);
}

s32 Animation_OnFrameImpl(SkelAnime* skelAnime, f32 frame, f32 updateRate) {
    f32 updateSpeed = skelAnime->playSpeed * updateRate;
    f32 prevFrame = skelAnime->curFrame - updateSpeed;
    f32 curFrameDiff;
    f32 prevFrameDiff;

    if (prevFrame < 0.0f) {
        prevFrame += skelAnime->animLength;
    } else if (prevFrame >= skelAnime->animLength) {
        prevFrame -= skelAnime->animLength;
    }

    if ((frame == 0.0f) && (updateSpeed > 0.0f)) {
        frame = skelAnime->animLength;
    }

    curFrameDiff = prevFrame + updateSpeed - frame;
    prevFrameDiff = curFrameDiff - updateSpeed;
    if ((curFrameDiff * updateSpeed >= 0.0f) && (prevFrameDiff * updateSpeed < 0.0f)) {
        return true;
    }
    return false;
}

s32 LinkAnimation_OnFrame(SkelAnime* skelAnime, f32 frame) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    return Animation_OnFrameImpl(skelAnime, frame, updateRate);
}

s32 SkelAnime_Init(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                   AnimationHeader* animationSeg, Vec3s* jointTbl, Vec3s* morphTbl, s32 limbCount) {
    SkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);

    skelAnime->limbCount = skeletonHeader->limbCount + 1;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->segment);
    if (jointTbl == NULL) {
        skelAnime->jointTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->jointTbl), "../z_skelanime.c", 2968);
        skelAnime->morphTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->morphTbl), "../z_skelanime.c", 2969);
    } else {
        if (limbCount != skelAnime->limbCount) {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 2973);
        }
        skelAnime->jointTbl = jointTbl;
        skelAnime->morphTbl = morphTbl;
    }
    if ((skelAnime->jointTbl == NULL) || (skelAnime->morphTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Skeleton_Info2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_ct memory allocation error
        osSyncPrintf(VT_RST);
    }

    if (animationSeg != NULL) {
        Animation_PlayLoop(skelAnime, animationSeg);
    }
}

s32 SkelAnime_InitFlex(GlobalContext* globalCtx, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                       AnimationHeader* animationSeg, Vec3s* jointTbl, Vec3s* morphTbl, s32 limbCount) {
    FlexSkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);

    skelAnime->limbCount = skeletonHeader->sh.limbCount + 1;
    skelAnime->dListCount = skeletonHeader->dListCount;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->sh.segment);

    if (jointTbl == NULL) {
        skelAnime->jointTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->jointTbl), "../z_skelanime.c", 3047);

        skelAnime->morphTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->morphTbl), "../z_skelanime.c", 3048);
    } else {
        if (limbCount != skelAnime->limbCount) {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 3052);
        }
        skelAnime->jointTbl = jointTbl;
        skelAnime->morphTbl = morphTbl;
    }
    if ((skelAnime->jointTbl == NULL) || (skelAnime->morphTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf(
            "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); // Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf(VT_RST);
    }

    if (animationSeg != NULL) {
        Animation_PlayLoop(skelAnime, animationSeg);
    }
}

s32 SkelAnime_InitSkin(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                       AnimationHeader* animationSeg) {
    SkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);

    skelAnime->limbCount = skeletonHeader->limbCount + 1;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->segment);
    skelAnime->jointTbl =
        ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->jointTbl), "../z_skelanime.c", 3120);
    skelAnime->morphTbl =
        ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->morphTbl), "../z_skelanime.c", 3121);
    if ((skelAnime->jointTbl == NULL) || (skelAnime->morphTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf(
            "Skeleton_Info2_skin2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_skin2_ct Memory allocation error
        osSyncPrintf(VT_RST);
    }

    if (animationSeg != NULL) {
        Animation_PlayLoop(skelAnime, animationSeg);
    }
}

void SkelAnime_SetUpdate(SkelAnime* skelAnime) {
    if (skelAnime->mode <= ANIMMODE_LOOP_INTERP) {
        skelAnime->update = SkelAnime_LoopFull;
    } else if (skelAnime->mode <= ANIMMODE_STOP_INTERP) {
        skelAnime->update = SkelAnime_Once;
    } else {
        skelAnime->update = SkelAnime_LoopPartial;
    }
}

s32 SkelAnime_Update(SkelAnime* skelAnime) {
    return skelAnime->update(skelAnime);
}

s32 SkelAnime_Morph(SkelAnime* skelAnime) {
    f32 prevMorphWeight = skelAnime->morphWeight;
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
    if (skelAnime->morphWeight <= 0.0f) {
        SkelAnime_SetUpdate(skelAnime);
        skelAnime->morphWeight = 0.0f;
    }
    SkelAnime_InterpVec3s(skelAnime->limbCount, skelAnime->jointTbl, skelAnime->jointTbl, skelAnime->morphTbl,
                          1.0f - (skelAnime->morphWeight / prevMorphWeight));
    return 0;
}

s32 SkelAnime_MorphTaper(SkelAnime* skelAnime) {
    s16 prevPhase = skelAnime->morphWeight * 0x4000;
    s16 curPhase;
    f32 prevWeight;
    f32 curWeight;
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
    if (skelAnime->morphWeight <= 0.0f) {
        SkelAnime_SetUpdate(skelAnime);
        skelAnime->morphWeight = 0.0f;
    }
    curPhase = skelAnime->morphWeight * 0x4000;
    if (skelAnime->taper <= ANIMTAPER_DECEL) {
        prevWeight = 1.0f - Math_Coss(prevPhase);
        curWeight = 1.0f - Math_Coss(curPhase);
    } else {
        prevWeight = Math_Sins(prevPhase);
        curWeight = Math_Sins(curPhase);
    }
    if (curWeight != 0.0f) {
        curWeight /= prevWeight;
    } else {
        curWeight = 0.0f;
    }
    SkelAnime_InterpVec3s(skelAnime->limbCount, skelAnime->jointTbl, skelAnime->jointTbl, skelAnime->morphTbl,
                          1.0f - curWeight);
    return 0;
}

void SkelAnime_AnimateFrame(SkelAnime* skelAnime) {
    Vec3s nextJointTbl[100];

    SkelAnime_GetFrameData(skelAnime->animation, skelAnime->curFrame, skelAnime->limbCount, skelAnime->jointTbl);
    if (skelAnime->mode & ANIM_INTERP) {
        s32 frame = skelAnime->curFrame;
        f32 partialFrame = skelAnime->curFrame - frame;

        if (++frame >= (s32)skelAnime->animLength) {
            frame = 0;
        }
        SkelAnime_GetFrameData(skelAnime->animation, frame, skelAnime->limbCount, nextJointTbl);
        SkelAnime_InterpVec3s(skelAnime->limbCount, skelAnime->jointTbl, skelAnime->jointTbl, nextJointTbl,
                              partialFrame);
    }
    if (skelAnime->morphWeight != 0) {
        f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

        skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
        if (skelAnime->morphWeight <= 0.0f) {
            skelAnime->morphWeight = 0.0f;
        } else {
            SkelAnime_InterpVec3s(skelAnime->limbCount, skelAnime->jointTbl, skelAnime->jointTbl, skelAnime->morphTbl,
                                  skelAnime->morphWeight);
        }
    }
}

s32 SkelAnime_LoopFull(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    SkelAnime_AnimateFrame(skelAnime);
    return 0;
}

s32 SkelAnime_LoopPartial(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if (skelAnime->curFrame < skelAnime->startFrame) {
        skelAnime->curFrame = (skelAnime->curFrame - skelAnime->startFrame) + skelAnime->endFrame;
    } else if (skelAnime->endFrame <= skelAnime->curFrame) {
        skelAnime->curFrame = (skelAnime->curFrame - skelAnime->endFrame) + skelAnime->startFrame;
    }

    SkelAnime_AnimateFrame(skelAnime);
    return 0;
}

s32 SkelAnime_Once(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    if (skelAnime->curFrame == skelAnime->endFrame) {
        SkelAnime_GetFrameData(skelAnime->animation, (s32)skelAnime->curFrame, skelAnime->limbCount,
                               skelAnime->jointTbl);
        SkelAnime_AnimateFrame(skelAnime);
        return 1;
    }

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;

    if ((skelAnime->curFrame - skelAnime->endFrame) * skelAnime->playSpeed > 0.0f) {
        skelAnime->curFrame = skelAnime->endFrame;
    } else if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    SkelAnime_AnimateFrame(skelAnime);
    return 0;
}

void Animation_ChangeImpl(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed, f32 startFrame,
                          f32 endFrame, u8 mode, f32 morphFrames, s8 taper) {
    skelAnime->mode = mode;
    if ((morphFrames != 0.0f) && ((animationSeg != skelAnime->animation) || (startFrame != skelAnime->curFrame))) {
        if (morphFrames < 0) {
            SkelAnime_SetUpdate(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->morphTbl, skelAnime->jointTbl);
            morphFrames = -morphFrames;
        } else {
            if (taper != ANIMTAPER_NONE) {
                skelAnime->update = SkelAnime_MorphTaper;
                skelAnime->taper = taper;
            } else {
                skelAnime->update = SkelAnime_Morph;
            }
            SkelAnime_GetFrameData(animationSeg, startFrame, skelAnime->limbCount, skelAnime->morphTbl);
        }
        skelAnime->morphWeight = 1.0f;
        skelAnime->morphRate = 1.0f / morphFrames;
    } else {
        SkelAnime_SetUpdate(skelAnime);
        SkelAnime_GetFrameData(animationSeg, startFrame, skelAnime->limbCount, skelAnime->jointTbl);
        skelAnime->morphWeight = 0.0f;
    }

    skelAnime->animation = animationSeg;
    skelAnime->startFrame = startFrame;
    skelAnime->endFrame = endFrame;
    skelAnime->animLength = Animation_Length(animationSeg);
    if (skelAnime->mode >= ANIMMODE_LOOP_PARTIAL) {
        skelAnime->curFrame = 0.0f;
    } else {
        skelAnime->curFrame = startFrame;
        if (skelAnime->mode <= ANIMMODE_LOOP_INTERP) {
            skelAnime->endFrame = skelAnime->animLength - 1.0f;
        }
    }
    skelAnime->playSpeed = playSpeed;
}

void Animation_Change(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed, f32 startFrame, f32 endFrame,
                      u8 mode, f32 morphFrames) {
    Animation_ChangeImpl(skelAnime, animationSeg, playSpeed, startFrame, endFrame, mode, morphFrames, ANIMTAPER_NONE);
}

void Animation_PlayOnce(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    Animation_Change(skelAnime, animationSeg, 1.0f, 0.0f, Animation_LastFrame(animationSeg), ANIMMODE_STOP, 0.0f);
}

void Animation_MorphToPlayOnce(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 morphFrames) {
    Animation_Change(skelAnime, animationSeg, 1.0f, 0.0f, Animation_LastFrame(animationSeg), ANIMMODE_STOP,
                     morphFrames);
}

void Animation_PlayOnceSetSpeed(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed) {
    Animation_Change(skelAnime, animationSeg, playSpeed, 0.0f, Animation_LastFrame(animationSeg), ANIMMODE_STOP, 0.0f);
}

void Animation_PlayLoop(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    Animation_Change(skelAnime, animationSeg, 1.0f, 0.0f, Animation_LastFrame(animationSeg), ANIMMODE_LOOP, 0.0f);
}

void Animation_MorphToLoop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 morphFrames) {
    Animation_Change(skelAnime, animationSeg, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, morphFrames);
}

void Animation_PlayLoopSetSpeed(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed) {
    Animation_Change(skelAnime, animationSeg, playSpeed, 0.0f, Animation_LastFrame(animationSeg), ANIMMODE_LOOP, 0.0f);
}

// unused
void Animation_SetStop(SkelAnime* skelAnime) {
    skelAnime->mode = ANIMMODE_STOP;
    skelAnime->endFrame = skelAnime->animLength;
    SkelAnime_SetUpdate(skelAnime);
}

void Animation_Reverse(SkelAnime* skelAnime) {
    f32 startFrame = skelAnime->startFrame;

    skelAnime->startFrame = skelAnime->endFrame;
    skelAnime->playSpeed = -skelAnime->playSpeed;
    skelAnime->endFrame = startFrame;
}

void SkelAnime_CopyVec3sTrue(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* copyFlag) {
    s32 i;

    for (i = 0; i < skelAnime->limbCount; i++, dst++, src++) {
        if (*copyFlag++) {
            *dst = *src;
        }
    }
}

// unused
void SkelAnime_CopyVec3sFalse(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* copyFlag) {
    s32 i;

    for (i = 0; i < skelAnime->limbCount; i++, dst++, src++) {
        if (!*copyFlag++) {
            *dst = *src;
        }
    }
}

/*
 * Updates translation of the root limb and calculates `pos`, the difference between
 * the old and new positions of the root limb as rotated by `angle`. Used to allow
 * animations to change an actor's position.
 */
void SkelAnime_UpdateTranslation(SkelAnime* skelAnime, Vec3f* diff, s16 angle) {
    f32 x;
    f32 z;
    f32 sin;
    f32 cos;

    if (skelAnime->flags & ANIM_FLAG_NOMOVE) {
        diff->x = diff->z = 0.0f;
    } else {
        // `angle` rotation around y axis.
        x = skelAnime->jointTbl[0].x;
        z = skelAnime->jointTbl[0].z;
        sin = Math_Sins(angle);
        cos = Math_Coss(angle);
        diff->x = x * cos + z * sin;
        diff->z = z * cos - x * sin;
        x = skelAnime->prevTrans.x;
        z = skelAnime->prevTrans.z;
        // `prevRot` rotation around y axis.
        sin = Math_Sins(skelAnime->prevRot);
        cos = Math_Coss(skelAnime->prevRot);
        diff->x -= x * cos + z * sin;
        diff->z -= z * cos - x * sin;
    }

    skelAnime->prevRot = angle;
    skelAnime->prevTrans.x = skelAnime->jointTbl[0].x;
    skelAnime->jointTbl[0].x = skelAnime->baseTrans.x;
    skelAnime->prevTrans.z = skelAnime->jointTbl[0].z;
    skelAnime->jointTbl[0].z = skelAnime->baseTrans.z;
    if (skelAnime->flags & ANIM_FLAG_UPDATEY) {
        if (skelAnime->flags & ANIM_FLAG_NOMOVE) {
            diff->y = 0.0f;
        } else {
            diff->y = skelAnime->jointTbl[0].y - skelAnime->prevTrans.y;
        }
        skelAnime->prevTrans.y = skelAnime->jointTbl[0].y;
        skelAnime->jointTbl[0].y = skelAnime->baseTrans.y;
    } else {
        diff->y = 0.0f;
        skelAnime->prevTrans.y = skelAnime->jointTbl[0].y;
    }
    skelAnime->flags &= ~ANIM_FLAG_NOMOVE;
}

s32 Animation_OnFrame(SkelAnime* skelAnime, f32 frame) {
    return Animation_OnFrameImpl(skelAnime, frame, 1.0f);
}

void SkelAnime_Free(SkelAnime* skelAnime, GlobalContext* globalCtx) {
    if (skelAnime->jointTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->jointTbl, "../z_skelanime.c", 3729);
    } else {
        osSyncPrintf("now_joint あきまへん！！\n"); // now_joint is freed! !
    }

    if (skelAnime->morphTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->morphTbl, "../z_skelanime.c", 3731);
    } else {
        osSyncPrintf("morf_joint あきまへん！！\n"); // "morf_joint is freed !!"
    }
}

void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src) {
    s32 i;

    for (i = 0; i < skelAnime->limbCount; i++) {
        *dst++ = *src++;
    }
}
