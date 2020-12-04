#include "global.h"
#include "vt.h"

#define ANIM_INTERP 1

s32 SkelAnime_LinkAnimationLoop(GlobalContext* globalCtx, SkelAnime* skelAnime);
s32 SkelAnime_LinkAnimationStop(GlobalContext* globalCtx, SkelAnime* skelAnime);
s32 SkelAnime_LoopFullAnimation(SkelAnime* skelAnime);
s32 SkelAnime_PlayAnimationOnce(SkelAnime* skelAnime);
s32 SkelAnime_LoopPartialAnimation(SkelAnime* skelAnime);

void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src);

static u32 D_8012A480 = 0;
static u32 D_801600B0;

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
 * Copies rotation values from the rotation value table, indexed by the rotation index table.
 * Indices below limit are copied from that entry in the static rotation table. Indices above
 * limit are offsets to a rotation value array indexed by the frame count.
 */
void SkelAnime_GetFrameData(AnimationHeader* animationSeg, s32 currentFrame, s32 limbCount, Vec3s* dst) {
    AnimationHeader* animHeader = SEGMENTED_TO_VIRTUAL(animationSeg);
    JointIndex* index = SEGMENTED_TO_VIRTUAL(animHeader->jointIndexSeg);
    s16* frameDataTable = SEGMENTED_TO_VIRTUAL(animHeader->frameDataSeg);
    s16* staticFrameTable = &frameDataTable[0];
    s16* animFrameTable = &frameDataTable[currentFrame];
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

s16 SkelAnime_GetAnimLength(void* animationSeg) {
    s16* lastFrame = SEGMENTED_TO_VIRTUAL(animationSeg);

    return *lastFrame;
}

s16 SkelAnime_GetLastFrame(void* animationSeg) {
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
s16 SkelAnime_GetLimbCount2(AnimationHeader2* animationSeg) {
    AnimationHeader2* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->limbCount;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * SkelAnime_GetAnimLength
 */
s16 SkelAnime_GetAnimLength2(AnimationHeader2* animationSeg) {
    AnimationHeader2* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * SkelAnime_GetLastFrame
 */
s16 SkelAnime_GetLastFrame2(AnimationHeader2* animationSeg) {
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
    D_801600B0 <<= 1;
}

void AnimationContext_DisableQueue(GlobalContext* globalCtx) {
    D_8012A480 |= D_801600B0;
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

// The next 6 functions are coordinate with the AnimationType enum

void AnimationContext_SetLoadLinkFrameData(GlobalContext* globalCtx, LinkAnimationHeader* segment, s32 frame,
                                           s32 limbCount, Vec3s* drawTbl) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_LOADLINK);

    if (entry != NULL) {
        LinkAnimationHeader* linkAnimHeader = SEGMENTED_TO_VIRTUAL(segment);
        u32 ram = drawTbl;

        osCreateMesgQueue(&entry->data.type0.msgQueue, &entry->data.type0.msg, 1);
        DmaMgr_SendRequest2(&entry->data.type0.req, ram,
                            LINK_ANIMATION_OFFSET(linkAnimHeader->segment, ((sizeof(Vec3s) * limbCount + 2) * frame)),
                            sizeof(Vec3s) * limbCount + 2, 0, &entry->data.type0.msgQueue, NULL, "../z_skelanime.c",
                            2004);
    }
}

void AnimationContext_SetVec3sCopyAll(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_COPYALL);

    if (entry != NULL) {
        entry->data.type1.queueFlag = D_801600B0;
        entry->data.type1.vecCount = vecCount;
        entry->data.type1.dst = dst;
        entry->data.type1.src = src;
    }
}

void AnimationContext_SetVec3sInterp(GlobalContext* globalCtx, s32 limbCount, Vec3s* base, Vec3s* mod, f32 weight) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_INTERP);

    if (entry != NULL) {
        entry->data.type2.queueFlag = D_801600B0;
        entry->data.type2.limbCount = limbCount;
        entry->data.type2.base = base;
        entry->data.type2.mod = mod;
        entry->data.type2.weight = weight;
    }
}

void AnimationContext_SetVec3sCopyTrue(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* copyFlag) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_COPYTRUE);

    if (entry != NULL) {
        entry->data.type3.queueFlag = D_801600B0;
        entry->data.type3.vecCount = vecCount;
        entry->data.type3.dst = dst;
        entry->data.type3.src = src;
        entry->data.type3.copyFlag = copyFlag;
    }
}

void AnimationContext_SetVec3sCopyFalse(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* copyFlag) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_COPYFALSE);

    if (entry != NULL) {
        entry->data.type4.queueFlag = D_801600B0;
        entry->data.type4.vecCount = vecCount;
        entry->data.type4.dst = dst;
        entry->data.type4.src = src;
        entry->data.type4.copyFlag = copyFlag;
    }
}

void AnimationContext_SetAnimationType5(GlobalContext* globalCtx, Actor* actor, SkelAnime* skelAnime, f32 arg3) {
    AnimationEntry* entry = AnimationContext_AddEntry(&globalCtx->animationCtx, ANIMENTRY_TYPE5);

    if (entry != NULL) {
        entry->data.type5.actor = actor;
        entry->data.type5.skelAnime = skelAnime;
        entry->data.type5.unk_08 = arg3;
    }
}

// The next functions are callbacks to loading animations

void AnimationContext_LoadLinkFrameData(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryLoadLinkData* entry = &data->type0;

    osRecvMesg(&entry->msgQueue, NULL, OS_MESG_BLOCK);
}

void AnimationContext_Vec3sCopyAll(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryCopyAll* entry = &data->type1;

    if (!(entry->queueFlag & D_8012A480)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        s32 i;

        for (i = 0; i < entry->vecCount; i++) {
            *dst++ = *src++;
        }
    }
}

void AnimationContext_Vec3sInterp(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryInterp* entry = &data->type2;

    if (!(entry->queueFlag & D_8012A480)) {
        SkelAnime_InterpVec3s(entry->limbCount, entry->base, entry->base, entry->mod, entry->weight);
    }
}

void AnimationContext_Vec3sCopyTrue(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryCopyTrue* entry = &data->type3;

    if (!(entry->queueFlag & D_8012A480)) {
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

void AnimationContext_Vec3sCopyFalse(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryCopyFalse* entry = &data->type4;

    if (!(entry->queueFlag & D_8012A480)) {
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

void AnimationContext_AnimationType5(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimEntryType5* entry = &data->type5;
    Actor* actor = entry->actor;
    Vec3f pos;

    func_800A54FC(entry->skelAnime, &pos, actor->shape.rot.y);
    actor->posRot.pos.x += pos.x * actor->scale.x;
    actor->posRot.pos.y += pos.y * actor->scale.y * entry->unk_08;
    actor->posRot.pos.z += pos.z * actor->scale.z;
}

void AnimationContext_Update(GlobalContext* globalCtx, AnimationContext* animationCtx) {
    static AnimationEntryCallback animFuncs[] = {
        AnimationContext_LoadLinkFrameData, AnimationContext_Vec3sCopyAll,   AnimationContext_Vec3sInterp,
        AnimationContext_Vec3sCopyTrue,     AnimationContext_Vec3sCopyFalse, AnimationContext_AnimationType5,
    };
    AnimationEntry* entry;

    for (entry = animationCtx->entries; animationCtx->animationCount != 0; entry++, animationCtx->animationCount--) {
        animFuncs[entry->type](globalCtx, &entry->data);
    }

    D_801600B0 = 1;
    D_8012A480 = 0;
}

void SkelAnime_InitLinkAnimation(GlobalContext* globalCtx, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                                 LinkAnimationHeader* segment, s32 flags, Vec3s* jointTbl, Vec3s* morphTbl,
                                 s32 limbBufCount) {
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

    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, segment, 1.0f, 0.0f, 0.0f, 0, 0.0f);
}

// SkelAnime_SetNextLinkUpdateFunction
void SkelAnime_SetNextLinkUpdateFunction(SkelAnime* skelAnime) {
    if (skelAnime->mode <= ANIMMODE_LOOP_INTERP) {
        skelAnime->update = SkelAnime_LinkAnimationLoop;
    } else {
        skelAnime->update = SkelAnime_LinkAnimationStop;
    }
    skelAnime->morphWeight = 0.0f;
}

// SkelAnime_UpdateLink
s32 SkelAnime_UpdateLink(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    return skelAnime->update(globalCtx, skelAnime);
}

s32 SkelAnime_TransitionLinkToPose(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 prevMorphRate = skelAnime->morphWeight;
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->morphWeight -= skelAnime->morphRate * updateRate;

    if (skelAnime->morphWeight <= 0.0f) {
        SkelAnime_SetNextLinkUpdateFunction(skelAnime);
    }

    AnimationContext_SetVec3sInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl,
                                    1.0f - (skelAnime->morphWeight / prevMorphRate));
    return 0;
}

void SkelAnime_AnimateLinkFrame(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    AnimationContext_SetLoadLinkFrameData(globalCtx, skelAnime->animation, skelAnime->curFrame, skelAnime->limbCount,
                                          skelAnime->jointTbl);
    if (skelAnime->morphWeight != 0) {
        f32 updateRate = R_UPDATE_RATE * 0.5f;

        skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
        if (skelAnime->morphWeight <= 0.0f) {
            skelAnime->morphWeight = 0.0f;
        } else {
            AnimationContext_SetVec3sInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl,
                                            skelAnime->morphWeight);
        }
    }
}

s32 SkelAnime_LinkAnimationLoop(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    SkelAnime_AnimateLinkFrame(globalCtx, skelAnime);
    return 0;
}

s32 SkelAnime_LinkAnimationStop(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    if (skelAnime->curFrame == skelAnime->lastFrame) {
        SkelAnime_AnimateLinkFrame(globalCtx, skelAnime);
        return 1;
    }
    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if ((skelAnime->curFrame - skelAnime->lastFrame) * skelAnime->playSpeed > 0.0f) {
        skelAnime->curFrame = skelAnime->lastFrame;
    } else if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    SkelAnime_AnimateLinkFrame(globalCtx, skelAnime);
    return 0;
}

void SkelAnime_SetTransition(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 morphFrames) {
    skelAnime->morphWeight = 1.0f;
    skelAnime->morphRate = 1.0f / morphFrames;
}

void SkelAnime_ChangeLinkAnim(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                              f32 playSpeed, f32 firstFrame, f32 lastFrame, u8 animationMode, f32 morphFrames) {
    skelAnime->mode = animationMode;
    if ((morphFrames != 0.0f) && ((segment != skelAnime->animation) || (firstFrame != skelAnime->curFrame))) {
        if (morphFrames < 0) {
            SkelAnime_SetNextLinkUpdateFunction(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->morphTbl, skelAnime->jointTbl);
            morphFrames = -morphFrames;
        } else {
            skelAnime->update = SkelAnime_TransitionLinkToPose;
            AnimationContext_SetLoadLinkFrameData(globalCtx, segment, (s32)firstFrame, skelAnime->limbCount,
                                                  skelAnime->morphTbl);
        }
        skelAnime->morphWeight = 1.0f;
        skelAnime->morphRate = 1.0f / morphFrames;
    } else {
        SkelAnime_SetNextLinkUpdateFunction(skelAnime);
        AnimationContext_SetLoadLinkFrameData(globalCtx, segment, (s32)firstFrame, skelAnime->limbCount,
                                              skelAnime->jointTbl);
        skelAnime->morphWeight = 0.0f;
    }

    skelAnime->animation = segment;
    skelAnime->curFrame = 0.0f;
    skelAnime->firstFrame = firstFrame;
    skelAnime->curFrame = firstFrame;
    skelAnime->lastFrame = lastFrame;
    skelAnime->animLength = SkelAnime_GetAnimLength(segment);
    skelAnime->playSpeed = playSpeed;
}

void SkelAnime_ChangeLinkAnimDefaultStop(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, segment, 1.0f, 0.0f, SkelAnime_GetLastFrame(segment), ANIMMODE_STOP,
                             0.0f);
}

void SkelAnime_ChangeLinkAnimPlaybackStop(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                          f32 playSpeed) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, segment, playSpeed, 0.0f, SkelAnime_GetLastFrame(segment),
                             ANIMMODE_STOP, 0.0f);
}

void SkelAnime_ChangeLinkAnimDefaultRepeat(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                           LinkAnimationHeader* segment) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, segment, 1.0f, 0.0f, SkelAnime_GetLastFrame(segment), ANIMMODE_LOOP,
                             0.0f);
}

void SkelAnime_ChangeLinkAnimPlaybackRepeat(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                            LinkAnimationHeader* segment, f32 playSpeed) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, segment, playSpeed, 0.0f, SkelAnime_GetLastFrame(segment),
                             ANIMMODE_LOOP, 0.0f);
}

void AnimationContext_CopyJointToMorph(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    AnimationContext_SetVec3sCopyAll(globalCtx, skelAnime->limbCount, skelAnime->morphTbl, skelAnime->jointTbl);
}

// Unused
void AnimationContext_CopyMorphToJoint(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    AnimationContext_SetVec3sCopyAll(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl);
}

void AnimationContext_LoadToMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                  f32 frame) {
    AnimationContext_SetLoadLinkFrameData(globalCtx, segment, (s32)frame, skelAnime->limbCount, skelAnime->morphTbl);
}

void AnimationContext_LoadToJoint(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* segment,
                                  f32 frame) {
    AnimationContext_SetLoadLinkFrameData(globalCtx, segment, (s32)frame, skelAnime->limbCount, skelAnime->jointTbl);
}

void AnimationContext_InterpJointMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 frame) {
    AnimationContext_SetVec3sInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, skelAnime->morphTbl, frame);
}

void AnimationContext_BlendToJoint(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* animation1,
                                   f32 frame1, LinkAnimationHeader* animation2, f32 frame2, f32 blendWeight,
                                   Vec3s* jointTbl) {
    Vec3s* blendTbl;

    AnimationContext_SetLoadLinkFrameData(globalCtx, animation1, (s32)frame1, skelAnime->limbCount,
                                          skelAnime->jointTbl);

    blendTbl = (Vec3s*)ALIGN16((u32)jointTbl);

    AnimationContext_SetLoadLinkFrameData(globalCtx, animation2, (s32)frame2, skelAnime->limbCount, blendTbl);
    AnimationContext_SetVec3sInterp(globalCtx, skelAnime->limbCount, skelAnime->jointTbl, blendTbl, blendWeight);
}

void AnimationContext_BlendToMorph(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* animation1,
                                   f32 frame1, LinkAnimationHeader* animation2, f32 frame2, f32 blendWeight,
                                   Vec3s* jointTbl) {
    Vec3s* blendTbl;

    AnimationContext_SetLoadLinkFrameData(globalCtx, animation1, (s32)frame1, skelAnime->limbCount,
                                          skelAnime->morphTbl);

    blendTbl = (Vec3s*)ALIGN16((u32)jointTbl);

    AnimationContext_SetLoadLinkFrameData(globalCtx, animation2, (s32)frame2, skelAnime->limbCount, blendTbl);
    AnimationContext_SetVec3sInterp(globalCtx, skelAnime->limbCount, skelAnime->morphTbl, blendTbl, blendWeight);
}

// unused
void SkelAnime_SetModeStop(SkelAnime* skelAnime) {
    skelAnime->mode = ANIMMODE_STOP;
    SkelAnime_SetNextLinkUpdateFunction(skelAnime);
}

s32 SkelAnime_StopAtFrameImpl(SkelAnime* skelAnime, f32 stopFrame, f32 updateRate) {
    f32 updateSpeed = skelAnime->playSpeed * updateRate;
    f32 prevFrame = skelAnime->curFrame - updateSpeed;
    f32 curFrameDiff;
    f32 prevFrameDiff;

    if (prevFrame < 0.0f) {
        prevFrame += skelAnime->animLength;
    } else if (prevFrame >= skelAnime->animLength) {
        prevFrame -= skelAnime->animLength;
    }

    if ((stopFrame == 0.0f) && (updateSpeed > 0.0f)) {
        stopFrame = skelAnime->animLength;
    }

    curFrameDiff = prevFrame + updateSpeed - stopFrame;
    prevFrameDiff = curFrameDiff - updateSpeed;
    if ((curFrameDiff * updateSpeed >= 0.0f) && (prevFrameDiff * updateSpeed < 0.0f)) {
        return true;
    }
    return false;
}

// SkelAnime_StopAtFrameLink
s32 SkelAnime_StopLinkAtFrame(SkelAnime* skelAnime, f32 stopFrame) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    return SkelAnime_StopAtFrameImpl(skelAnime, stopFrame, updateRate);
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
        SkelAnime_ChangeAnimDefaultRepeat(skelAnime, animationSeg);
    }
}

void SkelAnime_InitFlex(GlobalContext* globalCtx, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
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
        SkelAnime_ChangeAnimDefaultRepeat(skelAnime, animationSeg);
    }
}

void SkelAnime_InitSkin(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
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
        SkelAnime_ChangeAnimDefaultRepeat(skelAnime, animationSeg);
    }
}

void SkelAnime_NextUpdateFunction(SkelAnime* skelAnime) {
    if (skelAnime->mode <= ANIMMODE_LOOP_INTERP) {
        skelAnime->update = SkelAnime_LoopFullAnimation;
    } else if (skelAnime->mode <= ANIMMODE_STOP_INTERP) {
        skelAnime->update = SkelAnime_PlayAnimationOnce;
    } else {
        skelAnime->update = SkelAnime_LoopPartialAnimation;
    }
}

s32 SkelAnime_Update(SkelAnime* skelAnime) {
    return skelAnime->update(skelAnime);
}

s32 SkelAnime_TransitionToNextPose(SkelAnime* skelAnime) {
    f32 prevMorphRate = skelAnime->morphWeight;
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
    if (skelAnime->morphWeight <= 0.0f) {
        SkelAnime_NextUpdateFunction(skelAnime);
        skelAnime->morphWeight = 0.0f;
    }
    SkelAnime_InterpVec3s(skelAnime->limbCount, skelAnime->jointTbl, skelAnime->jointTbl, skelAnime->morphTbl,
                          1.0f - (skelAnime->morphWeight / prevMorphRate));
    return 0;
}

s32 SkelAnime_TransitionToNextPoseNonuniform(SkelAnime* skelAnime) {
    s16 temp_a2 = skelAnime->morphWeight * 0x4000;
    s16 temp_a1;
    f32 sp28;
    f32 phi_f2;
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->morphWeight -= skelAnime->morphRate * updateRate;
    if (skelAnime->morphWeight <= 0.0f) {
        SkelAnime_NextUpdateFunction(skelAnime);
        skelAnime->morphWeight = 0.0f;
    }
    temp_a1 = skelAnime->morphWeight * 0x4000;
    if (skelAnime->unk_03 < 0) {
        sp28 = 1.0f - Math_Coss(temp_a2);
        phi_f2 = 1.0f - Math_Coss(temp_a1);
    } else {
        sp28 = Math_Sins(temp_a2);
        phi_f2 = Math_Sins(temp_a1);
    }
    if (phi_f2 != 0.0f) {
        phi_f2 /= sp28;
    } else {
        phi_f2 = 0.0f;
    }
    SkelAnime_InterpVec3s(skelAnime->limbCount, skelAnime->jointTbl, skelAnime->jointTbl, skelAnime->morphTbl,
                          1.0f - phi_f2);
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

s32 SkelAnime_LoopFullAnimation(SkelAnime* skelAnime) {
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

s32 SkelAnime_LoopPartialAnimation(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;
    if (skelAnime->curFrame < skelAnime->firstFrame) {
        skelAnime->curFrame = (skelAnime->curFrame - skelAnime->firstFrame) + skelAnime->lastFrame;
    } else if (skelAnime->lastFrame <= skelAnime->curFrame) {
        skelAnime->curFrame = (skelAnime->curFrame - skelAnime->lastFrame) + skelAnime->firstFrame;
    }

    SkelAnime_AnimateFrame(skelAnime);
    return 0;
}

s32 SkelAnime_PlayAnimationOnce(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    if (skelAnime->curFrame == skelAnime->lastFrame) {
        SkelAnime_GetFrameData(skelAnime->animation, (s32)skelAnime->curFrame, skelAnime->limbCount,
                               skelAnime->jointTbl);
        SkelAnime_AnimateFrame(skelAnime);
        return 1;
    }

    skelAnime->curFrame += skelAnime->playSpeed * updateRate;

    if ((skelAnime->curFrame - skelAnime->lastFrame) * skelAnime->playSpeed > 0.0f) {
        skelAnime->curFrame = skelAnime->lastFrame;
    } else if (skelAnime->curFrame < 0.0f) {
        skelAnime->curFrame += skelAnime->animLength;
    } else if (skelAnime->animLength <= skelAnime->curFrame) {
        skelAnime->curFrame -= skelAnime->animLength;
    }
    SkelAnime_AnimateFrame(skelAnime);
    return 0;
}

void SkelAnime_ChangeAnimImpl(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed, f32 firstFrame,
                              f32 lastFrame, u8 mode, f32 morphFrames, s8 unk2) {
    skelAnime->mode = mode;
    if ((morphFrames != 0.0f) && ((animationSeg != skelAnime->animation) || (firstFrame != skelAnime->curFrame))) {
        if (morphFrames < 0) {
            SkelAnime_NextUpdateFunction(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->morphTbl, skelAnime->jointTbl);
            morphFrames = -morphFrames;
        } else {
            if (unk2 != 0) {
                skelAnime->update = SkelAnime_TransitionToNextPoseNonuniform;
                skelAnime->unk_03 = unk2;
            } else {
                skelAnime->update = SkelAnime_TransitionToNextPose;
            }
            SkelAnime_GetFrameData(animationSeg, firstFrame, skelAnime->limbCount, skelAnime->morphTbl);
        }
        skelAnime->morphWeight = 1.0f;
        skelAnime->morphRate = 1.0f / morphFrames;
    } else {
        SkelAnime_NextUpdateFunction(skelAnime);
        SkelAnime_GetFrameData(animationSeg, firstFrame, skelAnime->limbCount, skelAnime->jointTbl);
        skelAnime->morphWeight = 0.0f;
    }

    skelAnime->animation = animationSeg;
    skelAnime->firstFrame = firstFrame;
    skelAnime->lastFrame = lastFrame;
    skelAnime->animLength = SkelAnime_GetAnimLength(animationSeg);
    if (skelAnime->mode >= ANIMMODE_LOOP_PARTIAL) {
        skelAnime->curFrame = 0.0f;
    } else {
        skelAnime->curFrame = firstFrame;
        if (skelAnime->mode <= ANIMMODE_LOOP_INTERP) {
            skelAnime->lastFrame = skelAnime->animLength - 1.0f;
        }
    }
    skelAnime->playSpeed = playSpeed;
}

void SkelAnime_ChangeAnim(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed, f32 firstFrame,
                          f32 lastFrame, u8 mode, f32 morphFrames) {
    SkelAnime_ChangeAnimImpl(skelAnime, animationSeg, playSpeed, firstFrame, lastFrame, mode, morphFrames, 0);
}

void SkelAnime_ChangeAnimDefaultStop(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetLastFrame(animationSeg), ANIMMODE_STOP,
                         0.0f);
}

void SkelAnime_ChangeAnimTransitionStop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 morphFrames) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetLastFrame(animationSeg), ANIMMODE_STOP,
                         morphFrames);
}

void SkelAnime_ChangeAnimPlaybackStop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, playSpeed, 0.0f, SkelAnime_GetLastFrame(animationSeg), 2, 0.0f);
}

void SkelAnime_ChangeAnimDefaultRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetLastFrame(animationSeg), ANIMMODE_LOOP,
                         0.0f);
}

void SkelAnime_ChangeAnimTransitionRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 morphFrames) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, morphFrames);
}

void SkelAnime_ChangeAnimPlaybackRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playSpeed) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, playSpeed, 0.0f, SkelAnime_GetLastFrame(animationSeg), ANIMMODE_LOOP,
                         0.0f);
}

// unused
void SkelAnime_AnimSetStop(SkelAnime* skelAnime) {
    skelAnime->mode = ANIMMODE_STOP;
    skelAnime->lastFrame = skelAnime->animLength;
    SkelAnime_NextUpdateFunction(skelAnime);
}

void SkelAnime_AnimReverse(SkelAnime* skelAnime) {
    f32 firstFrame = skelAnime->firstFrame;

    skelAnime->firstFrame = skelAnime->lastFrame;
    skelAnime->playSpeed = -skelAnime->playSpeed;
    skelAnime->lastFrame = firstFrame;
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
 * Moves `pos` backwards on the xz plane from `angle`
 */

/* If flags & 0x10, sets pos to 0. otherwise sets it to the vector difference between
 * jointTbl[0] y-rotated by angle and prevFramePos y-rotated by prevFrameRot.
 */

/*
 * If flags & 0x10,
 *      sets pos.x = pos.z = 0.
 * Otherwise,
 *      sets pos.x and pos.z to the difference between
 *      jointTbl[0] rotated by angle and prevFramePos rotated by prevFrameRot
 * Then sets prevFrameRot to angle, copies jointTbl[0].xz into prevFramePos.xz,
 *      and copies unk_3E.xz into jointTbl[0].xz
 * If ANIM_FLAG_UPDATEXZ, then
 *      if ANIM_FLAG_UPDATEY
 *
 *
 */
void func_800A54FC(SkelAnime* skelAnime, Vec3f* pos, s16 angle) {
    f32 x;
    f32 z;
    f32 sin;
    f32 cos;

    if (skelAnime->flags & ANIM_FLAG_UPDATEY) {
        pos->x = pos->z = 0.0f;
    } else {
        // `angle` rotation around y axis.
        x = skelAnime->jointTbl[0].x;
        z = skelAnime->jointTbl[0].z;
        sin = Math_Sins(angle);
        cos = Math_Coss(angle);
        pos->x = x * cos + z * sin;
        pos->z = z * cos - x * sin;
        x = skelAnime->prevFramePos.x;
        z = skelAnime->prevFramePos.z;
        // `prevFrameRot` rotation around y axis.
        sin = Math_Sins(skelAnime->prevFrameRot);
        cos = Math_Coss(skelAnime->prevFrameRot);
        pos->x -= x * cos + z * sin;
        pos->z -= z * cos - x * sin;
    }

    skelAnime->prevFrameRot = angle;
    skelAnime->prevFramePos.x = skelAnime->jointTbl[0].x;
    skelAnime->jointTbl[0].x = skelAnime->unk_3E.x;
    skelAnime->prevFramePos.z = skelAnime->jointTbl[0].z;
    skelAnime->jointTbl[0].z = skelAnime->unk_3E.z;
    if (skelAnime->flags & ANIM_FLAG_UPDATEXZ) {
        if (skelAnime->flags & ANIM_FLAG_UPDATEY) {
            pos->y = 0.0f;
        } else {
            pos->y = skelAnime->jointTbl[0].y - skelAnime->prevFramePos.y;
        }
        skelAnime->prevFramePos.y = skelAnime->jointTbl[0].y;
        skelAnime->jointTbl[0].y = skelAnime->unk_3E.y;
    } else {
        pos->y = 0.0f;
        skelAnime->prevFramePos.y = skelAnime->jointTbl[0].y;
    }
    skelAnime->flags &= ~ANIM_FLAG_UPDATEY;
}

// SkelAnime_StopAtFrame
s32 SkelAnime_StopAtFrame(SkelAnime* skelAnime, f32 stopFrame) {
    return SkelAnime_StopAtFrameImpl(skelAnime, stopFrame, 1.0f);
}

void SkelAnime_Free(SkelAnime* skelAnime, GlobalContext* globalCtx) {
    if (skelAnime->jointTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->jointTbl, "../z_skelanime.c", 3729);
    } else {
        osSyncPrintf("now_joint あきまへん！！\n"); // now_joint Akimane! !
    }

    if (skelAnime->morphTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->morphTbl, "../z_skelanime.c", 3731);
    } else {
        osSyncPrintf("morf_joint あきまへん！！\n"); // "morf_joint Akimane !!"
    }
}

void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src) {
    s32 i;

    for (i = 0; i < skelAnime->limbCount; i++) {
        *dst++ = *src++;
    }
}
