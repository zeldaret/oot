#include "global.h"
#include "vt.h"

s32 func_800A3D70(GlobalContext*, SkelAnime*);
s32 func_800A3E0C(GlobalContext*, SkelAnime*);
s32 func_800A4D9C(SkelAnime* skelAnime);
s32 func_800A4EE0(SkelAnime* skelAnime);
s32 func_800A4E38(SkelAnime* skelAnime);
void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src);

static u32 D_8012A480 = 0;
static u32 D_801600B0;

/*
 * Draws the limb at `limbIndex` with a level of detail display lists index by `dListIndex`
 */
void SkelAnime_LodDrawLimb(GlobalContext* globalCtx, s32 limbIndex, Bone** skeleton, Vec3s* limbDrawTable,
                           OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data, s32 dListIndex) {
    LodLimb* limb;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 773);

    Matrix_Push();
    limb = (LodLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];

    pos.x = limb->bone.jntPos.x;
    pos.y = limb->bone.jntPos.y;
    pos.z = limb->bone.jntPos.z;

    dList = limb->displayLists[dListIndex];
    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, data)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 805), G_MTX_LOAD);

            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }

    if (1) {}

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, data);
    }

    if (limb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, limb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                              data, dListIndex);
    }

    Matrix_Pull();

    if (limb->bone.nextBone2 != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, limb->bone.nextBone2, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                              data, dListIndex);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 821);
}

/*
 * Draws the Skeleton described by `skeleton` with a level of detail display list indexed by `dListIndex`
 */
void SkelAnime_LodDraw(GlobalContext* globalCtx, Bone** skeleton, Vec3s* limbDrawTable,
                       OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data, s32 dListIndex) {
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
    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];
    dList = rootLimb->displayLists[dListIndex];

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, data)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 881), G_MTX_LOAD);

            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, data);
    }

    if (rootLimb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, rootLimb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                              postLimbDraw, data, dListIndex);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 894);
}

/*
 * Draws the limb at `limbIndex` with a level of detail display lists index by `dListIndex`, Limb matrices come
 * from a dynamic allocation from the graph arena.
 */
void SkelAnime_LodDrawFlexLimb(GlobalContext* globalCtx, s32 limbIndex, Bone** skeleton, Vec3s* limbDrawTable,
                               OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data, s32 dListIndex,
                               Mtx** mtx) {
    LodLimb* limb;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limb = (LodLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;

    rot = limbDrawTable[limbIndex];

    pos.x = limb->bone.jntPos.x;
    pos.y = limb->bone.jntPos.y;
    pos.z = limb->bone.jntPos.z;

    newDList = limbDList = limb->displayLists[dListIndex];

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &newDList, &pos, &rot, data)) {
        Matrix_JointPosition(&pos, &rot);
        if (newDList != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 945);
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 946);
            gSPMatrix(POLY_OPA_DISP++, *mtx, G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, newDList);
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 949);
            (*mtx)++;
        } else if (limbDList != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 954);
            (*mtx)++;
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &limbDList, &rot, data);
    }
    if (limb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_LodDrawFlexLimb(globalCtx, limb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, data, dListIndex, mtx);
    }

    Matrix_Pull();

    if (limb->bone.nextBone2 != LIMB_DONE) {
        SkelAnime_LodDrawFlexLimb(globalCtx, limb->bone.nextBone2, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, data, dListIndex, mtx);
    }
}

/*
 * Draws the Skeleton described by `skeleton` with a level of detail display list indexed by `dListIndex`
 * Matricies for the limbs are dynamically allocted from the graph arena.  The dynamic allocation occurs
 * because the Skeleton is too large to be supported by the normal matrix stack.
 */
void SkelAnime_LodDrawFlex(GlobalContext* globalCtx, Bone** skeleton, Vec3s* limbDrawTable, s32 dListCount,
                           OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data, s32 dListIndex) {
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
    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    newDList = limbDList = rootLimb->displayLists[dListIndex];

    if ((overrideLimbDraw == 0) || !overrideLimbDraw(globalCtx, 1, &newDList, &pos, &rot, data)) {
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
        postLimbDraw(globalCtx, 1, &limbDList, &rot, data);
    }
    if (rootLimb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_LodDrawFlexLimb(globalCtx, rootLimb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, data, dListIndex, &mtx);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1053);
}

/*
 * Draws the limb of the Skeleton `skeleton` at `limbIndex`
 */
void SkelAnime_DrawLimb(GlobalContext* globalCtx, s32 limbIndex, Bone** skeleton, Vec3s* limbDrawTable,
                        OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data) {
    StandardLimb* limb;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1076);

    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];
    pos.x = limb->bone.jntPos.x;
    pos.y = limb->bone.jntPos.y;
    pos.z = limb->bone.jntPos.z;
    dList = limb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, data)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1103), G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }

    if (1) {}

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, data);
    }

    if (limb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, limb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                           data);
    }

    Matrix_Pull();

    if (limb->bone.nextBone2 != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, limb->bone.nextBone2, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                           data);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1121);
}

void SkelAnime_Draw(GlobalContext* globalCtx, Bone** skeleton, Vec3s* limbDrawTable, OverrideLimbDraw overrideLimbDraw,
                    PostLimbDraw postLimbDraw, void* data) {
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

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];
    dList = rootLimb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, data)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1176), G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, data);
    }

    if (rootLimb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, rootLimb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                           data);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1190);
}

void SkelAnime_DrawFlexLimb(GlobalContext* globalCtx, s32 limbIndex, Bone** skeleton, Vec3s* limbDrawTable,
                            OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data,
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
    rot = limbDrawTable[limbIndex];

    pos.x = limb->bone.jntPos.x;
    pos.y = limb->bone.jntPos.y;
    pos.z = limb->bone.jntPos.z;

    newDList = limbDList = limb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &newDList, &pos, &rot, data)) {
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
        postLimbDraw(globalCtx, limbIndex, &limbDList, &rot, data);
    }

    if (limb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_DrawFlexLimb(globalCtx, limb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                               data, limbMatricies);
    }

    Matrix_Pull();

    if (limb->bone.nextBone2 != LIMB_DONE) {
        SkelAnime_DrawFlexLimb(globalCtx, limb->bone.nextBone2, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                               data, limbMatricies);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1265);
}

void SkelAnime_DrawFlex(GlobalContext* globalCtx, Bone** skeleton, Vec3s* limbDrawTable, s32 dListCount,
                        OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, void* data) {
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

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    newDList = limbDList = rootLimb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &newDList, &pos, &rot, data)) {
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
        postLimbDraw(globalCtx, 1, &limbDList, &rot, data);
    }

    if (rootLimb->bone.nextBone1 != LIMB_DONE) {
        SkelAnime_DrawFlexLimb(globalCtx, rootLimb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                               postLimbDraw, data, &mtx);
    }

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1347);
}

/*
 * Copies the rotation values from the rotation value table, indexed by the rotation index table
 * When a rotation index is >= the animation limit, the output rotation value is copied from the frame's
 * rotation value list, otherwise it is copied from the initial rotation value list
 */
void SkelAnime_AnimateFrame(AnimationHeader* animationSeg, s32 currentFrame, s32 boneCount, Vec3s* dst) {
    AnimationHeader* animHeader = SEGMENTED_TO_VIRTUAL(animationSeg);
    AnimationRotationIndex* index = SEGMENTED_TO_VIRTUAL(animHeader->rotationIndexSeg);
    AnimationRotationValue* rotationValueTable = SEGMENTED_TO_VIRTUAL(animHeader->rotationValueSeg);
    AnimationRotationValue* frameRotationValueTable = &rotationValueTable[currentFrame];
    u16 limit = animHeader->limit;
    s32 i;

    for (i = 0; i < boneCount; i++, dst++, index++) {
        if ((dst == NULL) || (index == NULL) || (frameRotationValueTable == NULL) || (rotationValueTable == NULL)) {
            LOG_ADDRESS("out", dst, "../z_skelanime.c", 1392);
            LOG_ADDRESS("ref_tbl", index, "../z_skelanime.c", 1393);
            LOG_ADDRESS("frame_tbl", frameRotationValueTable, "../z_skelanime.c", 1394);
            LOG_ADDRESS("tbl", rotationValueTable, "../z_skelanime.c", 1395);
        }

        dst->x = (index->x >= limit) ? frameRotationValueTable[index->x] : rotationValueTable[index->x];
        dst->y = (index->y >= limit) ? frameRotationValueTable[index->y] : rotationValueTable[index->y];
        dst->z = (index->z >= limit) ? frameRotationValueTable[index->z] : rotationValueTable[index->z];
    }
}

s16 SkelAnime_GetTotalFrames(void* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount;
}

s16 SkelAnime_GetFrameCount(void* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);
    // Loads an unsigned half for some reason.
    return (u16)animation->frameCount - 1;
}

/*
 * Draws the Skeleton `skeleton`'s bone at index `limbIndex`.  Appends all generated graphics commands to
 * `gfx`.  Returns a pointer to the next gfx to be appended to.
 */
Gfx* SkelAnime_Draw2Limb(GlobalContext* globalCtx, s32 limbIndex, Bone** skeleton, Vec3s* limbDrawTable,
                         OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, void* data, Gfx* gfx) {
    StandardLimb* limb;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;

    rot = limbDrawTable[limbIndex];

    pos.x = limb->bone.jntPos.x;
    pos.y = limb->bone.jntPos.y;
    pos.z = limb->bone.jntPos.z;

    dList = limb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, data, &gfx)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1489), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, data, &gfx);
    }

    if (limb->bone.nextBone1 != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, data, gfx);
    }

    Matrix_Pull();

    if (limb->bone.nextBone2 != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limb->bone.nextBone2, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, data, gfx);
    }

    return gfx;
}

/*
 * Draws the Skeleton `skeleton`  Appends all generated graphics to `gfx`, and returns a pointer to the
 * next gfx to be appended to.
 */
Gfx* SkelAnime_Draw2(GlobalContext* globalCtx, Bone** skeleton, Vec3s* limbDrawTable,
                     OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, void* data, Gfx* gfx) {
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

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    dList = rootLimb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, data, &gfx)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1558), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, data, &gfx);
    }

    if (rootLimb->bone.nextBone1 != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, rootLimb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, data, gfx);
    }

    Matrix_Pull();

    return gfx;
}

Gfx* SkelAnime_DrawFlexLimb2(GlobalContext* globalCtx, s32 limbIndex, Bone** skeleton, Vec3s* limbDrawTable,
                             OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, void* data, Mtx** mtx,
                             Gfx* gfx) {
    StandardLimb* limb;
    Gfx* newDList;
    Gfx* limbDList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limb = (StandardLimb*)SEGMENTED_TO_VIRTUAL(skeleton[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];

    pos.x = limb->bone.jntPos.x;
    pos.y = limb->bone.jntPos.y;
    pos.z = limb->bone.jntPos.z;

    newDList = limbDList = limb->displayList;
    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, limbIndex, &newDList, &pos, &rot, data, &gfx)) {
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
        postLimbDraw(globalCtx, limbIndex, &limbDList, &rot, data, &gfx);
    }
    if (limb->bone.nextBone1 != LIMB_DONE) {
        gfx = SkelAnime_DrawFlexLimb2(globalCtx, limb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                                      postLimbDraw, data, mtx, gfx);
    }

    Matrix_Pull();

    if (limb->bone.nextBone2 != LIMB_DONE) {
        gfx = SkelAnime_DrawFlexLimb2(globalCtx, limb->bone.nextBone2, skeleton, limbDrawTable, overrideLimbDraw,
                                      postLimbDraw, data, mtx, gfx);
    }

    return gfx;
}

/*
 * Draws the Skeleton `skeleton`  Appends all generated graphics to `gfx`, and returns a pointer to the
 * next gfx to be appended to.  Allocates matricies for display lists on the graph heap.
 */
Gfx* SkelAnime_DrawFlex2(GlobalContext* globalCtx, Bone** skeleton, Vec3s* limbDrawTable, s32 dListCount,
                         OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, void* data, Gfx* gfx) {
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

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    newDList = limbDList = rootLimb->displayList;

    if ((overrideLimbDraw == NULL) || !overrideLimbDraw(globalCtx, 1, &newDList, &pos, &rot, data, &gfx)) {
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
        postLimbDraw(globalCtx, 1, &limbDList, &rot, data, &gfx);
    }
    if (rootLimb->bone.nextBone1 != LIMB_DONE) {
        gfx = SkelAnime_DrawFlexLimb2(globalCtx, rootLimb->bone.nextBone1, skeleton, limbDrawTable, overrideLimbDraw,
                                      postLimbDraw, data, &mtx, gfx);
    }

    Matrix_Pull();

    return gfx;
}

// unused
s32 func_800A29BC(s32 arg0, s32 arg1, Vec3s* arg2) {
    AnimationHeader* temp_v0 = SEGMENTED_TO_VIRTUAL(arg0);
    s32 t = temp_v0->genericHeader.unk_02;
    s16* temp_a3 = SEGMENTED_TO_VIRTUAL(temp_v0->rotationIndexSeg);
    s16* temp_t1 = SEGMENTED_TO_VIRTUAL(temp_v0->rotationValueSeg);
    s32 phi_v0;

    arg2->x = arg1 < temp_a3[0] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[1]] : temp_t1[temp_a3[1]];
    arg2->y = arg1 < temp_a3[2] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[3]] : temp_t1[temp_a3[3]];
    arg2->z = arg1 < temp_a3[4] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[5]] : temp_t1[temp_a3[5]];

    phi_v0 = 1;
    arg2++;
    temp_a3 += 6;

    if (t & 1) {}

    if (t > 0) {
        if (t & 1) {
            phi_v0++;
            arg2->x = arg1 < temp_a3[0] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[1]] : temp_t1[temp_a3[1]];
            arg2->y = arg1 < temp_a3[2] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[3]] : temp_t1[temp_a3[3]];
            arg2->z = arg1 < temp_a3[4] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[5]] : temp_t1[temp_a3[5]];
            temp_a3 += 6;
            arg2++;
            if (t + 1 == phi_v0) {
                goto ret;
            }
        }
        do {
            phi_v0 += 2;
            arg2->x = arg1 < temp_a3[0] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[1]] : temp_t1[temp_a3[1]];
            arg2->y = arg1 < temp_a3[2] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[3]] : temp_t1[temp_a3[3]];
            arg2->z = arg1 < temp_a3[4] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[5]] : temp_t1[temp_a3[5]];
            temp_a3 += 6;
            arg2++;
            arg2->x = arg1 < temp_a3[0] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[1]] : temp_t1[temp_a3[1]];
            arg2->y = arg1 < temp_a3[2] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[3]] : temp_t1[temp_a3[3]];
            arg2->z = arg1 < temp_a3[4] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[5]] : temp_t1[temp_a3[5]];
            temp_a3 += 6;
            arg2++;
        } while (phi_v0 != t + 1);
    }
ret:
    return t;
}

// unused
s16 func_800A2DBC(void* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->unk_02;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * SkelAnime_GetTotalFrames
 */
s16 SkelAnime_GetTotalFrames2(void* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * SkelAnime_GetFrameCount
 */
s16 SkelAnime_GetFrameCount2(void* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount - 1;
}

void SkelAnime_InterpolateVec3s(s32 boneCount, Vec3s* dst, Vec3s* vec2, Vec3s* vec3, f32 unkf) {
    s32 i;
    s16 dist;
    s16 temp2;

    if (unkf < 1.0f) {
        for (i = 0; i < boneCount; i++, dst++, vec2++, vec3++) {
            temp2 = vec2->x;
            dist = vec3->x - temp2;
            dst->x = (s16)(dist * unkf) + temp2;
            temp2 = vec2->y;
            dist = vec3->y - temp2;
            dst->y = (s16)(dist * unkf) + temp2;
            temp2 = vec2->z;
            dist = vec3->z - temp2;
            dst->z = (s16)(dist * unkf) + temp2;
        }
    } else {
        for (i = 0; i < boneCount; i++, dst++, vec3++) {
            dst->x = vec3->x;
            dst->y = vec3->y;
            dst->z = vec3->z;
        }
    }
}

void SkelAnime_AnimationCtxReset(AnimationContext* animationCtx) {
    animationCtx->animationCount = 0;
}

void func_800A32F4(GlobalContext* globalCtx) {
    D_801600B0 <<= 1;
}

void func_800A3310(GlobalContext* globalCtx) {
    D_8012A480 |= D_801600B0;
}

AnimationEntry* SkelAnime_AddEntry(AnimationContext* animationCtx, AnimationType type) {
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
 * The next 6 functions are coordinate with the AnimationType enum
 */

void SkelAnime_LoadLinkAnimation(GlobalContext* globalCtx, LinkAnimationHeader* linkAnimSeg, s32 frame, s32 boneCount,
                                 Vec3s* drawTbl) {
    AnimationEntry* entry = SkelAnime_AddEntry(&globalCtx->animationCtx, ANIMATION_LINK);

    if (entry != NULL) {
        LinkAnimationHeader* linkAnimHeader = SEGMENTED_TO_VIRTUAL(linkAnimSeg);
        u32 ram = drawTbl;

        osCreateMesgQueue(&entry->data.type0.msgQueue, &entry->data.type0.msg, 1);
        DmaMgr_SendRequest2(
            &entry->data.type0.req, ram,
            LINK_ANIMATION_OFFSET(linkAnimHeader->linkAnimSeg, ((sizeof(Vec3s) * boneCount + 2) * frame)),
            sizeof(Vec3s) * boneCount + 2, 0, &entry->data.type0.msgQueue, NULL, "../z_skelanime.c", 2004);
    }
}

void SkelAnime_LoadAnimationType1(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src) {
    AnimationEntry* entry = SkelAnime_AddEntry(&globalCtx->animationCtx, ANIMATION_TYPE1);

    if (entry != NULL) {
        entry->data.type1.unk_00 = D_801600B0;
        entry->data.type1.vecCount = vecCount;
        entry->data.type1.dst = dst;
        entry->data.type1.src = src;
    }
}

void SkelAnime_LoadAnimationType2(GlobalContext* globalCtx, s32 boneCount, Vec3s* arg2, Vec3s* arg3, f32 arg4) {
    AnimationEntry* entry = SkelAnime_AddEntry(&globalCtx->animationCtx, ANIMATION_TYPE2);

    if (entry != NULL) {
        entry->data.type2.unk_00 = D_801600B0;
        entry->data.type2.boneCount = boneCount;
        entry->data.type2.unk_04 = arg2;
        entry->data.type2.unk_08 = arg3;
        entry->data.type2.unk_0C = arg4;
    }
}

void SkelAnime_LoadAnimationType3(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* index) {
    AnimationEntry* entry = SkelAnime_AddEntry(&globalCtx->animationCtx, ANIMATION_TYPE3);

    if (entry != NULL) {
        entry->data.type3.unk_00 = D_801600B0;
        entry->data.type3.vecCount = vecCount;
        entry->data.type3.dst = dst;
        entry->data.type3.src = src;
        entry->data.type3.index = index;
    }
}

void SkelAnime_LoadAnimationType4(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* index) {
    AnimationEntry* entry = SkelAnime_AddEntry(&globalCtx->animationCtx, ANIMATION_TYPE4);

    if (entry != NULL) {
        entry->data.type4.unk_00 = D_801600B0;
        entry->data.type4.vecCount = vecCount;
        entry->data.type4.dst = dst;
        entry->data.type4.src = src;
        entry->data.type4.index = index;
    }
}

void SkelAnime_LoadAnimationType5(GlobalContext* globalCtx, Actor* actor, SkelAnime* skelAnime, f32 arg3) {
    AnimationEntry* entry = SkelAnime_AddEntry(&globalCtx->animationCtx, ANIMATION_TYPE5);

    if (entry != NULL) {
        entry->data.type5.actor = actor;
        entry->data.type5.skelAnime = skelAnime;
        entry->data.type5.unk_08 = arg3;
    }
}

/* The next functions are callbacks to loading animations */

void SkelAnime_LinkAnimationLoaded(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimationEntryType0* entry = &data->type0;

    osRecvMesg(&entry->msgQueue, NULL, OS_MESG_BLOCK);
}

void SkelAnime_AnimationType1Loaded(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimationEntryType1* entry = &data->type1;

    if (!(entry->unk_00 & D_8012A480)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        s32 i;

        for (i = 0; i < entry->vecCount; i++) {
            *dst++ = *src++;
        }
    }
}

void SkelAnime_AnimationType2Loaded(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimationEntryType2* entry = &data->type2;

    if (!(entry->unk_00 & D_8012A480)) {
        SkelAnime_InterpolateVec3s(entry->boneCount, entry->unk_04, entry->unk_04, entry->unk_08, entry->unk_0C);
    }
}

void SkelAnime_AnimationType3Loaded(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimationEntryType3* entry = &data->type3;

    if (!(entry->unk_00 & D_8012A480)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        u8* index = entry->index;
        s32 i;

        for (i = 0; i < entry->vecCount; i++, dst++, src++) {
            if (*index++) {
                *dst = *src;
            }
        }
    }
}

void SkelAnime_AnimationType4Loaded(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimationEntryType4* entry = &data->type4;

    if (!(entry->unk_00 & D_8012A480)) {
        Vec3s* dst = entry->dst;
        Vec3s* src = entry->src;
        u8* index = entry->index;
        s32 i;

        for (i = 0; i < entry->vecCount; i++, dst++, src++) {
            if (!(*index++)) {
                *dst = *src;
            }
        }
    }
}

void SkelAnime_AnimationType5Loaded(GlobalContext* globalCtx, AnimationEntryData* data) {
    AnimationEntryType5* entry = &data->type5;
    Actor* actor = entry->actor;
    Vec3f pos;

    func_800A54FC(entry->skelAnime, &pos, actor->shape.rot.y);
    actor->posRot.pos.x += pos.x * actor->scale.x;
    actor->posRot.pos.y += pos.y * actor->scale.y * entry->unk_08;
    actor->posRot.pos.z += pos.z * actor->scale.z;
}

void func_800A390C(GlobalContext* globalCtx, AnimationContext* animationCtx) {
    static AnimationEntryCallback sAnimationLoadDone[] = {
        SkelAnime_LinkAnimationLoaded,  SkelAnime_AnimationType1Loaded, SkelAnime_AnimationType2Loaded,
        SkelAnime_AnimationType3Loaded, SkelAnime_AnimationType4Loaded, SkelAnime_AnimationType5Loaded,
    };
    AnimationEntry* entry;

    for (entry = animationCtx->entries; animationCtx->animationCount != 0; entry++, animationCtx->animationCount--) {
        sAnimationLoadDone[entry->type](globalCtx, &entry->data);
    }

    D_801600B0 = 1;
    D_8012A480 = 0;
}

void SkelAnime_InitLinkAnimation(GlobalContext* globalCtx, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                                 LinkAnimationHeader* linkAnimSeg, s32 flags, Vec3s* limbDrawTbl,
                                 Vec3s* transitionDrawTbl, s32 limbBufCount) {
    FlexSkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);
    s32 headerBoneCount = skeletonHeader->boneCount;
    s32 boneCount;
    size_t allocSize;

    skelAnime->initFlags = flags;
    boneCount = (flags & 2) ? headerBoneCount : 1;

    if (flags & 1) {
        boneCount += headerBoneCount;
    }
    if (flags & 4) {
        boneCount += headerBoneCount;
    }

    skelAnime->boneCount = boneCount;
    skelAnime->dListCount = skeletonHeader->dListCount;

    allocSize = boneCount * sizeof(Vec3s);
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);

    if (flags & 8) {
        allocSize += 2;
    }

    if (limbDrawTbl == NULL) {
        skelAnime->limbDrawTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2364);
        skelAnime->transitionDrawTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2365);
    } else {
        if (limbBufCount != boneCount) {
            __assert("joint_buff_num == joint_num", "../z_skelanime.c", 2369);
        }

        skelAnime->limbDrawTbl = (Vec3s*)ALIGN16((u32)limbDrawTbl);
        skelAnime->transitionDrawTbl = (Vec3s*)ALIGN16((u32)transitionDrawTbl);
    }

    if ((skelAnime->limbDrawTbl == NULL) || (skelAnime->transitionDrawTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf(
            "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); // Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf(VT_RST);
    }

    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimSeg, 1.0f, 0.0f, 0.0f, 0, 0.0f);
}

void func_800A3B8C(SkelAnime* skelAnime) {
    if (skelAnime->mode < 2) {
        skelAnime->animUpdate = func_800A3D70;
    } else {
        skelAnime->animUpdate = func_800A3E0C;
    }
    skelAnime->transCurrentFrame = 0.0f;
}

s32 func_800A3BC0(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    return skelAnime->animUpdate(globalCtx, skelAnime);
}

s32 func_800A3BE4(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 transPrevFRame = skelAnime->transCurrentFrame;
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;

    if (skelAnime->transCurrentFrame <= 0.0f) {
        func_800A3B8C(skelAnime);
    }

    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->transitionDrawTbl,
                                 1.0f - (skelAnime->transCurrentFrame / transPrevFRame));
    return 0;
}

void func_800A3C9C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    SkelAnime_LoadLinkAnimation(globalCtx, skelAnime->currentAnimSeg, skelAnime->animCurrentFrame, skelAnime->boneCount,
                                skelAnime->limbDrawTbl);
    if (skelAnime->transCurrentFrame != 0) {
        f32 updateRate = R_UPDATE_RATE * 0.5f;

        skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
        if (skelAnime->transCurrentFrame <= 0.0f) {
            skelAnime->transCurrentFrame = 0.0f;
        } else {
            SkelAnime_LoadAnimationType2(globalCtx, skelAnime->boneCount, skelAnime->limbDrawTbl,
                                         skelAnime->transitionDrawTbl, skelAnime->transCurrentFrame);
        }
    }
}

s32 func_800A3D70(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (skelAnime->animCurrentFrame < 0.0f) {
        skelAnime->animCurrentFrame += skelAnime->totalFrames;
    } else if (skelAnime->totalFrames <= skelAnime->animCurrentFrame) {
        skelAnime->animCurrentFrame -= skelAnime->totalFrames;
    }
    func_800A3C9C(globalCtx, skelAnime);
    return 0;
}

s32 func_800A3E0C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    if (skelAnime->animCurrentFrame == skelAnime->animFrameCount) {
        func_800A3C9C(globalCtx, skelAnime);
        return 1;
    }
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed > 0.0f) {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    } else if (skelAnime->animCurrentFrame < 0.0f) {
        skelAnime->animCurrentFrame += skelAnime->totalFrames;
    } else if (skelAnime->totalFrames <= skelAnime->animCurrentFrame) {
        skelAnime->animCurrentFrame -= skelAnime->totalFrames;
    }
    func_800A3C9C(globalCtx, skelAnime);
    return 0;
}

void SkelAnime_SetTransition(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 transitionRate) {
    skelAnime->transCurrentFrame = 1.0f;
    skelAnime->transitionStep = 1.0f / transitionRate;
}

void SkelAnime_ChangeLinkAnim(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* linkAnimSeg,
                              f32 playbackSpeed, f32 frame, f32 frameCount, u8 animationMode, f32 transitionRate) {
    skelAnime->mode = animationMode;
    if ((transitionRate != 0.0f) &&
        ((linkAnimSeg != skelAnime->currentAnimSeg) || (frame != skelAnime->animCurrentFrame))) {
        if (transitionRate < 0) {
            func_800A3B8C(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->transitionDrawTbl, skelAnime->limbDrawTbl);
            transitionRate = -transitionRate;
        } else {
            skelAnime->animUpdate = func_800A3BE4;
            SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg, (s32)frame, skelAnime->boneCount,
                                        skelAnime->transitionDrawTbl);
        }
        skelAnime->transCurrentFrame = 1.0f;
        skelAnime->transitionStep = 1.0f / transitionRate;
    } else {
        func_800A3B8C(skelAnime);
        SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg, (s32)frame, skelAnime->boneCount, skelAnime->limbDrawTbl);
        skelAnime->transCurrentFrame = 0.0f;
    }

    skelAnime->currentAnimSeg = linkAnimSeg;
    skelAnime->animCurrentFrame = 0.0f;
    skelAnime->initialFrame = frame;
    skelAnime->animCurrentFrame = frame;
    skelAnime->animFrameCount = frameCount;
    skelAnime->totalFrames = SkelAnime_GetTotalFrames(linkAnimSeg);
    skelAnime->animPlaybackSpeed = playbackSpeed;
}

void SkelAnime_ChangeLinkAnimDefaultStop(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                         LinkAnimationHeader* linkAnimSeg) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimSeg, 1.0f, 0.0f, SkelAnime_GetFrameCount(linkAnimSeg), 2,
                             0.0f);
}

void SkelAnime_ChangeLinkAnimPlaybackStop(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                          LinkAnimationHeader* linkAnimSeg, f32 playbackSpeed) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimSeg, playbackSpeed, 0.0f,
                             SkelAnime_GetFrameCount(linkAnimSeg), 2, 0.0f);
}

void SkelAnime_ChangeLinkAnimDefaultRepeat(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                           LinkAnimationHeader* linkAnimSeg) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimSeg, 1.0f, 0.0f, SkelAnime_GetFrameCount(linkAnimSeg), 0,
                             0.0f);
}

void SkelAnime_ChangeLinkAnimPlaybackRepeat(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                            LinkAnimationHeader* linkAnimSeg, f32 playbackSpeed) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimSeg, playbackSpeed, 0.0f,
                             SkelAnime_GetFrameCount(linkAnimSeg), 0, 0.0f);
}

void func_800A41FC(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    SkelAnime_LoadAnimationType1(globalCtx, skelAnime->boneCount, skelAnime->transitionDrawTbl, skelAnime->limbDrawTbl);
}

// Unused
void func_800A422C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    SkelAnime_LoadAnimationType1(globalCtx, skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->transitionDrawTbl);
}

void func_800A425C(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* linkAnimSeg, f32 frame) {
    SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg, (s32)frame, skelAnime->boneCount, skelAnime->transitionDrawTbl);
}

void func_800A42A0(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* linkAnimSeg, f32 frame) {
    SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg, (s32)frame, skelAnime->boneCount, skelAnime->limbDrawTbl);
}

void func_800A42E4(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 frame) {
    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->transitionDrawTbl,
                                 frame);
}

void func_800A431C(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* linkAnimSeg,
                   f32 transitionFrame, LinkAnimationHeader* linkAnimSeg2, f32 frame, f32 transitionRate,
                   Vec3s* limbDrawTbl) {
    Vec3s* alignedLimbDrawTbl;

    SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg, (s32)transitionFrame, skelAnime->boneCount,
                                skelAnime->limbDrawTbl);

    alignedLimbDrawTbl = (Vec3s*)ALIGN16((u32)limbDrawTbl);

    SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg2, (s32)frame, skelAnime->boneCount, alignedLimbDrawTbl);
    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->boneCount, skelAnime->limbDrawTbl, alignedLimbDrawTbl,
                                 transitionRate);
}

void func_800A43B8(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimationHeader* linkAnimSeg,
                   f32 transitionFrame, LinkAnimationHeader* linkAnimSeg2, f32 frame, f32 transitionRate,
                   Vec3s* limbDrawTbl) {
    Vec3s* alignedLimbDrawTbl;

    SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg, (s32)transitionFrame, skelAnime->boneCount,
                                skelAnime->transitionDrawTbl);

    alignedLimbDrawTbl = (Vec3s*)ALIGN16((u32)limbDrawTbl);

    SkelAnime_LoadLinkAnimation(globalCtx, linkAnimSeg2, (s32)frame, skelAnime->boneCount, alignedLimbDrawTbl);
    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->boneCount, skelAnime->transitionDrawTbl, alignedLimbDrawTbl,
                                 transitionRate);
}

// unused
void SkelAnime_SetModeStop(SkelAnime* skelAnime) {
    skelAnime->mode = 2;
    func_800A3B8C(skelAnime);
}

s32 func_800A4478(SkelAnime* skelAnime, f32 arg1, f32 updateRate) {
    f32 updateSpeed = skelAnime->animPlaybackSpeed * updateRate;
    f32 nextFrame = skelAnime->animCurrentFrame - updateSpeed;
    f32 temp_f12;

    if (nextFrame < 0.0f) {
        nextFrame += skelAnime->totalFrames;
    } else if (skelAnime->totalFrames <= nextFrame) {
        nextFrame -= skelAnime->totalFrames;
    }

    if ((arg1 == 0.0f) && (updateSpeed > 0.0f)) {
        arg1 = skelAnime->totalFrames;
    }

    temp_f12 = nextFrame + updateSpeed - arg1;
    if ((temp_f12 * updateSpeed >= 0.0f) && (((temp_f12 - updateSpeed) * updateSpeed) < 0.0f)) {
        return 1;
    }
    return 0;
}

s32 func_800A4530(SkelAnime* skelAnime, f32 arg1) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    return func_800A4478(skelAnime, arg1, updateRate);
}

void SkelAnime_Init(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                    AnimationHeader* animationSeg, Vec3s* limbDrawTbl, Vec3s* transitionDrawTable, s32 boneCount) {
    SkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);

    skelAnime->boneCount = skeletonHeader->boneCount + 1;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);
    if (limbDrawTbl == NULL) {
        skelAnime->limbDrawTbl =
            ZeldaArena_MallocDebug(skelAnime->boneCount * sizeof(*skelAnime->limbDrawTbl), "../z_skelanime.c", 2968);
        skelAnime->transitionDrawTbl = ZeldaArena_MallocDebug(
            skelAnime->boneCount * sizeof(*skelAnime->transitionDrawTbl), "../z_skelanime.c", 2969);
    } else {
        if (boneCount != skelAnime->boneCount) {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 2973);
        }
        skelAnime->limbDrawTbl = limbDrawTbl;
        skelAnime->transitionDrawTbl = transitionDrawTable;
    }
    if ((skelAnime->limbDrawTbl == NULL) || (skelAnime->transitionDrawTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("Skeleton_Info2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_ct memory allocation error
        osSyncPrintf(VT_RST);
    }

    if (animationSeg != NULL) {
        SkelAnime_ChangeAnimDefaultRepeat(skelAnime, animationSeg);
    }
}

void SkelAnime_InitFlex(GlobalContext* globalCtx, SkelAnime* skelAnime, FlexSkeletonHeader* skeletonHeaderSeg,
                        AnimationHeader* animationSeg, Vec3s* limbDrawTbl, Vec3s* transitionDrawTable, s32 boneCount) {
    FlexSkeletonHeader* skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);

    skelAnime->boneCount = skeletonHeader->boneCount + 1;
    skelAnime->dListCount = skeletonHeader->dListCount;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);

    if (limbDrawTbl == NULL) {
        skelAnime->limbDrawTbl =
            ZeldaArena_MallocDebug(skelAnime->boneCount * sizeof(*skelAnime->limbDrawTbl), "../z_skelanime.c", 3047);

        skelAnime->transitionDrawTbl = ZeldaArena_MallocDebug(
            skelAnime->boneCount * sizeof(*skelAnime->transitionDrawTbl), "../z_skelanime.c", 3048);
    } else {
        if (boneCount != skelAnime->boneCount) {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 3052);
        }
        skelAnime->limbDrawTbl = limbDrawTbl;
        skelAnime->transitionDrawTbl = transitionDrawTable;
    }
    if ((skelAnime->limbDrawTbl == NULL) || (skelAnime->transitionDrawTbl == NULL)) {
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

    skelAnime->boneCount = skeletonHeader->boneCount + 1;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);
    skelAnime->limbDrawTbl =
        ZeldaArena_MallocDebug(skelAnime->boneCount * sizeof(*skelAnime->limbDrawTbl), "../z_skelanime.c", 3120);
    skelAnime->transitionDrawTbl =
        ZeldaArena_MallocDebug(skelAnime->boneCount * sizeof(*skelAnime->transitionDrawTbl), "../z_skelanime.c", 3121);
    if ((skelAnime->limbDrawTbl == NULL) || (skelAnime->transitionDrawTbl == NULL)) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf(
            "Skeleton_Info2_skin2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_skin2_ct Memory allocation error
        osSyncPrintf(VT_RST);
    }

    if (animationSeg != NULL) {
        SkelAnime_ChangeAnimDefaultRepeat(skelAnime, animationSeg);
    }
}

void func_800A49B0(SkelAnime* skelAnime) {
    if (skelAnime->mode < 2) {
        skelAnime->animUpdate = func_800A4D9C;
    } else if (skelAnime->mode < 4) {
        skelAnime->animUpdate = func_800A4EE0;
    } else {
        skelAnime->animUpdate = func_800A4E38;
    }
}

s32 SkelAnime_FrameUpdateMatrix(SkelAnime* skelAnime) {
    return skelAnime->animUpdate(skelAnime);
}

s32 func_800A4A20(SkelAnime* skelAnime) {
    f32 transPrevFrame = skelAnime->transCurrentFrame;
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
    if (skelAnime->transCurrentFrame <= 0.0f) {
        func_800A49B0(skelAnime);
        skelAnime->transCurrentFrame = 0.0f;
    }
    SkelAnime_InterpolateVec3s(skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl,
                               skelAnime->transitionDrawTbl, 1.0f - (skelAnime->transCurrentFrame / transPrevFrame));
    return 0;
}

s32 func_800A4AD8(SkelAnime* skelAnime) {
    s16 temp_a2 = skelAnime->transCurrentFrame * 0x4000;
    s16 temp_a1;
    f32 sp28;
    f32 phi_f2;
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
    if (skelAnime->transCurrentFrame <= 0.0f) {
        func_800A49B0(skelAnime);
        skelAnime->transCurrentFrame = 0.0f;
    }
    temp_a1 = skelAnime->transCurrentFrame * 0x4000;
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
    SkelAnime_InterpolateVec3s(skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl,
                               skelAnime->transitionDrawTbl, 1.0f - phi_f2);
    return 0;
}

void func_800A4C58(SkelAnime* skelAnime) {
    Vec3s sp38[100];

    SkelAnime_AnimateFrame(skelAnime->currentAnimSeg, skelAnime->animCurrentFrame, skelAnime->boneCount,
                           skelAnime->limbDrawTbl);
    if (skelAnime->mode & 1) {
        s32 t = skelAnime->animCurrentFrame;
        f32 sp30 = skelAnime->animCurrentFrame - t;

        if (++t >= (s32)skelAnime->totalFrames) {
            t = 0;
        }
        SkelAnime_AnimateFrame(skelAnime->currentAnimSeg, t, skelAnime->boneCount, sp38);
        SkelAnime_InterpolateVec3s(skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl, sp38, sp30);
    }
    if (skelAnime->transCurrentFrame != 0) {
        f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

        skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
        if (skelAnime->transCurrentFrame <= 0.0f) {
            skelAnime->transCurrentFrame = 0.0f;
        } else {
            SkelAnime_InterpolateVec3s(skelAnime->boneCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl,
                                       skelAnime->transitionDrawTbl, skelAnime->transCurrentFrame);
        }
    }
}

s32 func_800A4D9C(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (skelAnime->animCurrentFrame < 0.0f) {
        skelAnime->animCurrentFrame += skelAnime->totalFrames;
    } else if (skelAnime->totalFrames <= skelAnime->animCurrentFrame) {
        skelAnime->animCurrentFrame -= skelAnime->totalFrames;
    }
    func_800A4C58(skelAnime);
    return 0;
}

s32 func_800A4E38(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (skelAnime->animCurrentFrame < skelAnime->initialFrame) {
        skelAnime->animCurrentFrame =
            (skelAnime->animCurrentFrame - skelAnime->initialFrame) + skelAnime->animFrameCount;
    } else if (skelAnime->animFrameCount <= skelAnime->animCurrentFrame) {
        skelAnime->animCurrentFrame =
            (skelAnime->animCurrentFrame - skelAnime->animFrameCount) + skelAnime->initialFrame;
    }

    func_800A4C58(skelAnime);
    return 0;
}

s32 func_800A4EE0(SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * (1.0f / 3.0f);

    if (skelAnime->animCurrentFrame == skelAnime->animFrameCount) {
        SkelAnime_AnimateFrame(skelAnime->currentAnimSeg, (s32)skelAnime->animCurrentFrame, skelAnime->boneCount,
                               skelAnime->limbDrawTbl);
        func_800A4C58(skelAnime);
        return 1;
    }

    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;

    if ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed > 0.0f) {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    } else if (skelAnime->animCurrentFrame < 0.0f) {
        skelAnime->animCurrentFrame += skelAnime->totalFrames;
    } else if (skelAnime->totalFrames <= skelAnime->animCurrentFrame) {
        skelAnime->animCurrentFrame -= skelAnime->totalFrames;
    }
    func_800A4C58(skelAnime);
    return 0;
}

void SkelAnime_ChangeAnimImpl(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed, f32 frame,
                              f32 frameCount, u8 animationType, f32 transitionRate, s8 unk2) {
    skelAnime->mode = animationType;
    if ((transitionRate != 0.0f) &&
        ((animationSeg != skelAnime->currentAnimSeg) || (frame != skelAnime->animCurrentFrame))) {
        if (transitionRate < 0) {
            func_800A49B0(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->transitionDrawTbl, skelAnime->limbDrawTbl);
            transitionRate = -transitionRate;
        } else {
            if (unk2 != 0) {
                skelAnime->animUpdate = func_800A4AD8;
                skelAnime->unk_03 = unk2;
            } else {
                skelAnime->animUpdate = func_800A4A20;
            }
            SkelAnime_AnimateFrame(animationSeg, frame, skelAnime->boneCount, skelAnime->transitionDrawTbl);
        }
        skelAnime->transCurrentFrame = 1.0f;
        skelAnime->transitionStep = 1.0f / transitionRate;
    } else {
        func_800A49B0(skelAnime);
        SkelAnime_AnimateFrame(animationSeg, frame, skelAnime->boneCount, skelAnime->limbDrawTbl);
        skelAnime->transCurrentFrame = 0.0f;
    }

    skelAnime->currentAnimSeg = animationSeg;
    skelAnime->initialFrame = frame;
    skelAnime->animFrameCount = frameCount;
    skelAnime->totalFrames = SkelAnime_GetTotalFrames(animationSeg);
    if (skelAnime->mode >= 4) {
        skelAnime->animCurrentFrame = 0.0f;
    } else {
        skelAnime->animCurrentFrame = frame;
        if (skelAnime->mode <= 1) {
            skelAnime->animFrameCount = skelAnime->totalFrames - 1.0f;
        }
    }
    skelAnime->animPlaybackSpeed = playbackSpeed;
}

void SkelAnime_ChangeAnim(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed, f32 frame,
                          f32 frameCount, u8 mode, f32 transitionRate) {
    SkelAnime_ChangeAnimImpl(skelAnime, animationSeg, playbackSpeed, frame, frameCount, mode, transitionRate, 0);
}

void SkelAnime_ChangeAnimDefaultStop(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetFrameCount(animationSeg), 2, 0.0f);
}

void SkelAnime_ChangeAnimTransitionStop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 transitionRate) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0, SkelAnime_GetFrameCount(animationSeg), 2, transitionRate);
}

void SkelAnime_ChangeAnimPlaybackStop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, playbackSpeed, 0.0f, SkelAnime_GetFrameCount(animationSeg), 2, 0.0f);
}

void SkelAnime_ChangeAnimDefaultRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetFrameCount(animationSeg), 0, 0.0f);
}

void SkelAnime_ChangeAnimTransitionRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 transitionRate) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, 0.0f, 0, transitionRate);
}

void SkelAnime_ChangeAnimPlaybackRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, playbackSpeed, 0.0f, SkelAnime_GetFrameCount(animationSeg), 0, 0.0f);
}

// unused
void SkelAnime_AnimSetStop(SkelAnime* skelAnime) {
    skelAnime->mode = 2;
    skelAnime->animFrameCount = skelAnime->totalFrames;
    func_800A49B0(skelAnime);
}

void SkelAnime_AnimReverse(SkelAnime* skelAnime) {
    f32 initialFrame = skelAnime->initialFrame;

    skelAnime->initialFrame = skelAnime->animFrameCount;
    skelAnime->animPlaybackSpeed = -skelAnime->animPlaybackSpeed;
    skelAnime->animFrameCount = initialFrame;
}

void func_800A5428(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* index) {
    s32 i;

    for (i = 0; i < skelAnime->boneCount; i++, dst++, src++) {
        if (*index++) {
            *dst = *src;
        }
    }
}

// unused
void func_800A5490(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* arg3) {
    s32 i;

    for (i = 0; i < skelAnime->boneCount; i++, dst++, src++) {
        if (*arg3++ < 1U) {
            *dst = *src;
        }
    }
}

/*
 * Moves `pos` backwards on the xz plane from `angle`
 */
void func_800A54FC(SkelAnime* skelAnime, Vec3f* pos, s16 angle) {
    f32 x;
    f32 z;
    f32 sin;
    f32 cos;

    if (skelAnime->flags & 0x10) {
        pos->x = pos->z = 0.0f;
    } else {
        // `angle` rotation around y axis.
        x = skelAnime->limbDrawTbl[0].x;
        z = skelAnime->limbDrawTbl[0].z;
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
    skelAnime->prevFramePos.x = skelAnime->limbDrawTbl[0].x;
    skelAnime->limbDrawTbl[0].x = skelAnime->unk_3E.x;
    skelAnime->prevFramePos.z = skelAnime->limbDrawTbl[0].z;
    skelAnime->limbDrawTbl[0].z = skelAnime->unk_3E.z;
    if (skelAnime->flags & ANIM_FLAG_UPDATEXZ) {
        if (skelAnime->flags & ANIM_FLAG_UPDATEY) {
            pos->y = 0.0f;
        } else {
            pos->y = skelAnime->limbDrawTbl[0].y - skelAnime->prevFramePos.y;
        }
        skelAnime->prevFramePos.y = skelAnime->limbDrawTbl[0].y;
        skelAnime->limbDrawTbl[0].y = skelAnime->unk_3E.y;
    } else {
        pos->y = 0.0f;
        skelAnime->prevFramePos.y = skelAnime->limbDrawTbl[0].y;
    }
    skelAnime->flags &= ~ANIM_FLAG_UPDATEY;
}

s32 func_800A56C8(SkelAnime* skelAnime, f32 arg1) {
    return func_800A4478(skelAnime, arg1, 1.0f);
}

void SkelAnime_Free(SkelAnime* skelAnime, GlobalContext* globalCtx) {
    if (skelAnime->limbDrawTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->limbDrawTbl, "../z_skelanime.c", 3729);
    } else {
        osSyncPrintf("now_joint あきまへん！！\n"); // now_joint Akimane! !
    }

    if (skelAnime->transitionDrawTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->transitionDrawTbl, "../z_skelanime.c", 3731);
    } else {
        osSyncPrintf("morf_joint あきまへん！！\n"); // "morf_joint Akimane !!"
    }
}

void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src) {
    s32 i;

    for (i = 0; i < skelAnime->boneCount; i++) {
        *dst++ = *src++;
    }
}
