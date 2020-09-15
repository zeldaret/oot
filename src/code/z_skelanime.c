#include "global.h"
#include "vt.h"

s32 func_800A3D70(GlobalContext*, SkelAnime*);
s32 func_800A3E0C(GlobalContext*, SkelAnime*);
s32 func_800A4D9C(SkelAnime* skelAnime);
s32 func_800A4EE0(SkelAnime* skelAnime);
s32 func_800A4E38(SkelAnime* skelAnime);
void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src);
void SkelAnime_LinkAnimetionLoaded(GlobalContext* globalCtx, AnimationEntryType0* entry);
void SkelAnime_AnimationType1Loaded(GlobalContext* globalCtx, AnimationEntryType1* entry);
void SkelAnime_AnimationType2Loaded(GlobalContext* globalCtx, AnimationEntryType2* entry);
void SkelAnime_AnimationType3Loaded(GlobalContext* globalCtx, AnimationEntryType3* entry);
void SkelAnime_AnimationType4Loaded(GlobalContext* globalCtx, AnimationEntryType4* entry);
void SkelAnime_AnimationType5Loaded(GlobalContext* globalCtx, AnimationEntryType5* entry);

// .data
u32 D_8012A480 = 0;
static AnimationEntryCallback sAnimationLoadDone[] = {
    &SkelAnime_LinkAnimetionLoaded,  &SkelAnime_AnimationType1Loaded, &SkelAnime_AnimationType2Loaded,
    &SkelAnime_AnimationType3Loaded, &SkelAnime_AnimationType4Loaded, &SkelAnime_AnimationType5Loaded,
};

// .bss
u32 D_801600B0;

/*
 * Draws the limb at `limbIndex` with a level of detail display lists index by `dListIndex`
 */
void SkelAnime_LodDrawLimb(GlobalContext* globalCtx, s32 limbIndex, Skeleton* skeleton, Vec3s* limbDrawTable,
                           OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor, s32 dListIndex) {
    SkelLimbEntry* limbEntry;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 773);

    Matrix_Push();
    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList = limbEntry->displayLists[dListIndex];
    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 805),
                      G_MTX_LOAD);

            gSPDisplayList(oGfxCtx->polyOpa.p++, dList);
        }
    }

    if (1) {}

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                              postLimbDraw, actor, dListIndex);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, limbEntry->nextLimbIndex, skeleton, limbDrawTable, overrideLimbDraw,
                              postLimbDraw, actor, dListIndex);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 821);
}

/*
 * Draws the Skeleton described by `skeleton` with a level of detail display list indexed by `dListIndex`
 */
void SkelAnime_LodDraw(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable,
                       OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor, s32 dListIndex) {
    SkelLimbEntry* limbEntry;
    char pad[4];
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

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[0]);
    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];
    dList = limbEntry->displayLists[dListIndex];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 881),
                      G_MTX_LOAD);

            gSPDisplayList(oGfxCtx->polyOpa.p++, dList);
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != 0xFF) {
        SkelAnime_LodDrawLimb(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                              postLimbDraw, actor, dListIndex);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 894);
}

/*
 * Draws the limb at `limbIndex` with a level of detail display lists index by `dListIndex`, Limb matrices come
 * from a dynamic allocation from the graph arena.
 */
void SkelAnime_LodDrawLimbSV(GlobalContext* globalCtx, s32 limbIndex, Skeleton* skeleton, Vec3s* limbDrawTable,
                             OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor, s32 dListIndex,
                             Mtx** mtx) {
    SkelLimbEntry* limbEntry;
    Gfx* dList[2];
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[limbIndex]);
    limbIndex++;

    rot = limbDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;
    // Double assignment here would not work.
    dList[0] = limbEntry->displayLists[dListIndex];
    dList[1] = dList[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, limbIndex, &dList[1], &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList[1] != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 945);
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 946);
            gSPMatrix(oGfxCtx->polyOpa.p++, *mtx, G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dList[1]);
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 949);
            (*mtx)++;
        } else if (dList[0] != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 954);
            (*mtx)++;
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList[0], &rot, actor);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimbSV(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                postLimbDraw, actor, dListIndex, mtx);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimbSV(globalCtx, limbEntry->nextLimbIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                postLimbDraw, actor, dListIndex, mtx);
    }
}

/*
 * Draws the Skeleton described by `skeleton` with a level of detail display list indexed by `dListIndex`
 * Matricies for the limbs are dynamically allocted from the graph arena.  The dynamic allocation occurs
 * because the Skeleton is too large to be supported by the normal matrix stack.
 */
void SkelAnime_LodDrawSV(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable, s32 dListCount,
                         OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor, s32 dListIndex) {
    SkelLimbEntry* limbEntry;
    char pad[4];
    Gfx* dList[2];
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

    gSPSegment(oGfxCtx->polyOpa.p++, 0xD, mtx);
    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[0]);
    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    dList[0] = limbEntry->displayLists[dListIndex];
    dList[1] = dList[0];

    if ((overrideLimbDraw == 0) || (overrideLimbDraw(globalCtx, 1, &dList[1], &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList[1] != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1033);
            gSPMatrix(oGfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dList[1]);
            mtx++;
        } else if (dList[0] != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1040);
            mtx++;
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList[0], &rot, actor);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimbSV(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                postLimbDraw, actor, dListIndex, &mtx);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1053);
}

/*
 * Draws the limb of the Skeleton `skeleton` at `limbIndex`
 */
void SkelAnime_DrawLimb(GlobalContext* globalCtx, s32 limbIndex, Skeleton* skeleton, Vec3s* limbDrawTable,
                        OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor) {
    SkelLimbEntry* limbEntry;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1076);

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];
    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;
    dList = limbEntry->displayLists[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1103),
                      G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dList);
        }
    }

    if (1) {}

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                           postLimbDraw, actor);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, limbEntry->nextLimbIndex, skeleton, limbDrawTable, overrideLimbDraw, postLimbDraw,
                           actor);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1121);
}

void SkelAnime_Draw(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable,
                    OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor) {
    SkelLimbEntry* rootLimb;
    char pad[4];
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
    rootLimb = SEGMENTED_TO_VIRTUAL(skeleton->limbs[0]);

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];
    dList = rootLimb->displayLists[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1176),
                      G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, actor);
    }

    if (rootLimb->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, rootLimb->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                           postLimbDraw, actor);
    }

    Matrix_Pull();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1190);
}

void SkelAnime_DrawLimbSV(GlobalContext* globalCtx, s32 limbIndex, Skeleton* skeleton, Vec3s* limbDrawTable,
                          OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor,
                          Mtx** limbMatricies) {
    SkelLimbEntry* limbEntry;
    Gfx* dList[2];
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1214);

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList[0] = limbEntry->displayLists[0];
    dList[1] = dList[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, limbIndex, &dList[1], &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList[1] != NULL) {
            Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 1242);
            gSPMatrix(oGfxCtx->polyOpa.p++, *limbMatricies, G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dList[1]);
            (*limbMatricies)++;
        } else if (dList[0] != NULL) {
            Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 1249);
            (*limbMatricies)++;
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList[0], &rot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimbSV(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                             postLimbDraw, actor, limbMatricies);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_DrawLimbSV(globalCtx, limbEntry->nextLimbIndex, skeleton, limbDrawTable, overrideLimbDraw,
                             postLimbDraw, actor, limbMatricies);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1265);
}

void SkelAnime_DrawSV(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable, s32 dListCount,
                      OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor) {
    SkelLimbEntry* limbEntry;
    char pad[4];
    Gfx* dList[2];
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

    gSPSegment(oGfxCtx->polyOpa.p++, 0xD, mtx);

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[0]);

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    dList[0] = limbEntry->displayLists[0];
    dList[1] = dList[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, 1, &dList[1], &pos, &rot, actor) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList[1] != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1327);
            gSPMatrix(oGfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dList[1]);
            mtx++;
        } else {
            if (dList[0] != NULL) {
                Matrix_ToMtx(mtx, "../z_skelanime.c", 1334);
                mtx++;
            }
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList[0], &rot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimbSV(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                             postLimbDraw, actor, &mtx);
    }

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_skelanime.c", 1347);
}

/*
 * Copies the rotation values from the rotation value table, indexed by the rotation index table
 * When a rotation index is >= the animation limit, the output rotation value is copied from the frame's
 * rotation value list, otherwise it is copied from the initial rotation value list
 */
void SkelAnime_AnimateFrame(AnimationHeader* animationSeg, s32 currentFrame, s32 limbCount, Vec3s* dst) {
    AnimationRotationIndex* index;
    AnimationRotationValue* rotationValueTable;
    AnimationRotationValue* frameRotationValueTable;
    AnimationHeader* animationHeader;

    s32 i;
    u16 limit;

    animationHeader = SEGMENTED_TO_VIRTUAL(animationSeg);
    index = SEGMENTED_TO_VIRTUAL(animationHeader->rotationIndexSeg);
    rotationValueTable = SEGMENTED_TO_VIRTUAL(animationHeader->rotationValueSeg);
    frameRotationValueTable = &rotationValueTable[currentFrame];
    limit = animationHeader->limit;

    for (i = 0; i < limbCount; i++, dst++, index++) {
        if ((dst == NULL) || (index == NULL) || (frameRotationValueTable == NULL) || (rotationValueTable == NULL)) {
            LOG_ADDRESS("out", dst, "../z_skelanime.c", 1392);
            LOG_ADDRESS("ref_tbl", index, "../z_skelanime.c", 1393);
            LOG_ADDRESS("frame_tbl", frameRotationValueTable, "../z_skelanime.c", 1394);
            LOG_ADDRESS("tbl", rotationValueTable, "../z_skelanime.c", 1395);
        }

        dst->x = index->x >= limit ? frameRotationValueTable[index->x] : rotationValueTable[index->x];
        dst->y = index->y >= limit ? frameRotationValueTable[index->y] : rotationValueTable[index->y];
        dst->z = index->z >= limit ? frameRotationValueTable[index->z] : rotationValueTable[index->z];
    }
}

s16 SkelAnime_GetTotalFrames(GenericAnimationHeader* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);
    return animation->frameCount;
}

s16 SkelAnime_GetFrameCount(GenericAnimationHeader* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);
    // Loads an unsigned half for some reason.
    return (u16)animation->frameCount - 1;
}

/*
 * Draws the Skeleton `skeleton`'s limb at index `limbIndex`.  Appends all generated graphics commands to
 * `gfx`.  Returns a pointer to the next gfx to be appended to.
 */
Gfx* SkelAnime_Draw2Limb(GlobalContext* globalCtx, s32 limbIndex, Skeleton* skeleton, Vec3s* limbDrawTable,
                         OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, Actor* actor, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[limbIndex]);
    limbIndex++;

    rot = limbDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList = limbEntry->displayLists[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, limbIndex, &dList, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1489), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList, &rot, actor, &gfx);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, actor, gfx);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limbEntry->nextLimbIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, actor, gfx);
    }

    return gfx;
}

/*
 * Draws the Skeleton `skeleton`  Appends all generated graphics to `gfx`, and returns a pointer to the
 * next gfx to be appended to.
 */
Gfx* SkelAnime_Draw2(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable,
                     OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, Actor* actor, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    char pad[4];
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

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[0]);

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    dList = limbEntry->displayLists[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, 1, &dList, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1558), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList, &rot, actor, &gfx);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                  postLimbDraw, actor, gfx);
    }

    Matrix_Pull();

    return gfx;
}

Gfx* SkelAnime_DrawLimbSV2(GlobalContext* globalCtx, s32 limbIndex, Skeleton* skeleton, Vec3s* limbDrawTable,
                           OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, Actor* actor, Mtx** mtx,
                           Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    Gfx* dList1;
    Gfx* dList2;
    Vec3f pos;
    Vec3s rot;
    char pad[4];

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[limbIndex]);
    limbIndex++;
    rot = limbDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList1 = dList2 = limbEntry->displayLists[0];
    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, limbIndex, &dList1, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList1 != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 1623);
            gSPMatrix(gfx++, *mtx, G_MTX_LOAD);
            gSPDisplayList(gfx++, dList1);
            (*mtx)++;
        } else {
            if (dList2 != NULL) {
                Matrix_ToMtx(*mtx, "../z_skelanime.c", 1630);
                (*mtx)++;
            }
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, limbIndex, &dList2, &rot, actor, &gfx);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_DrawLimbSV2(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                    postLimbDraw, actor, mtx, gfx);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        gfx = SkelAnime_DrawLimbSV2(globalCtx, limbEntry->nextLimbIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                    postLimbDraw, actor, mtx, gfx);
    }

    return gfx;
}

/*
 * Draws the Skeleton `skeleton`  Appends all generated graphics to `gfx`, and returns a pointer to the
 * next gfx to be appended to.  Allocates matricies for display lists on the graph heap.
 */
Gfx* SkelAnime_DrawSV2(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable, s32 dListCount,
                       OverrideLimbDraw2 overrideLimbDraw, PostLimbDraw2 postLimbDraw, Actor* actor, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    char pad[4];
    Gfx* dList1;
    Gfx* dList2;
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
    limbEntry = SEGMENTED_TO_VIRTUAL(skeleton->limbs[0]);

    pos.x = limbDrawTable[0].x;
    pos.y = limbDrawTable[0].y;
    pos.z = limbDrawTable[0].z;

    rot = limbDrawTable[1];

    dList1 = dList2 = limbEntry->displayLists[0];

    if ((overrideLimbDraw == NULL) || (overrideLimbDraw(globalCtx, 1, &dList1, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_JointPosition(&pos, &rot);
        if (dList1 != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1710);
            gSPMatrix(gfx++, mtx, G_MTX_LOAD);
            gSPDisplayList(gfx++, dList1);
            mtx++;
        } else {
            if (dList2 != NULL) {
                Matrix_ToMtx(mtx, "../z_skelanime.c", 1717);
                mtx++;
            }
        }
    }
    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, 1, &dList2, &rot, actor, &gfx);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_DrawLimbSV2(globalCtx, limbEntry->firstChildIndex, skeleton, limbDrawTable, overrideLimbDraw,
                                    postLimbDraw, actor, &mtx, gfx);
    }

    Matrix_Pull();

    return gfx;
}

#ifdef NON_MATCHING
// Function is unused.  This is functionally equivilent, misplace andi which caused regalloc
s32 func_800A29BC(s32 arg0, s32 arg1, Vec3s* arg2) {
    s16* temp_t1;
    s16* temp_a3;
    AnimationHeader* temp_v0;
    s32 phi_v0;
    s32 t;

    temp_v0 = SEGMENTED_TO_VIRTUAL(arg0);
    t = temp_v0->genericHeader.unk_02;
    temp_a3 = SEGMENTED_TO_VIRTUAL(temp_v0->rotationIndexSeg);
    temp_t1 = SEGMENTED_TO_VIRTUAL(temp_v0->rotationValueSeg);

    arg2->x = arg1 < temp_a3[0] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[1]] : temp_t1[temp_a3[1]];
    arg2->y = arg1 < temp_a3[2] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[3]] : temp_t1[temp_a3[3]];
    arg2->z = arg1 < temp_a3[4] ? ((s16*)((arg1 * 2) + (u32)temp_t1))[temp_a3[5]] : temp_t1[temp_a3[5]];

    phi_v0 = 1;
    arg2++;
    temp_a3 += 6;

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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A29BC.s")
#endif

s16 func_800A2DBC(GenericAnimationHeader* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->unk_02;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * SkelAnime_GetTotalFrames
 */
s16 SkelAnime_GetTotalFrames2(GenericAnimationHeader* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount;
}

/*
 * Appears to be unused anywhere in the game.  Appears to be a clone of
 * SkelAnime_GetFrameCount
 */
s16 SkelAnime_GetFrameCount2(GenericAnimationHeader* animationSeg) {
    GenericAnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount - 1;
}

void SkelAnime_InterpolateVec3s(s32 limbCount, Vec3s* dst, Vec3s* vec2, Vec3s* vec3, f32 unkf) {
    s32 i;
    s16 dist;
    s16 temp2;

    if (unkf < 1.0f) {
        for (i = 0; i < limbCount; i++, dst++, vec2++, vec3++) {
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
        for (i = 0; i < limbCount; i++, dst++, vec3++) {
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
    u32* D_8012A480Ptr = &D_8012A480;

    *D_8012A480Ptr |= D_801600B0;
}

AnimationEntry* SkelAnime_NextEntry(AnimationContext* animationCtx, AnimationType type) {
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

void SkelAnime_LoadLinkAnimetion(GlobalContext* globalCtx, LinkAnimetionEntry* linkAnimetionSeg, s32 frame,
                                 s32 limbCount, void* ram) {
    AnimationEntry* entry;
    LinkAnimetionEntry* linkAnimetionEntry;
    char pad[4];

    entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_LINKANIMETION);

    if (entry != NULL) {
        linkAnimetionEntry = SEGMENTED_TO_VIRTUAL(linkAnimetionSeg);
        osCreateMesgQueue(&entry->types.type0.msgQueue, &entry->types.type0.msg, 1);
        DmaMgr_SendRequest2(
            &entry->types.type0.req, ram,
            LINK_ANIMETION_OFFSET(linkAnimetionEntry->animationSegAddress, ((sizeof(Vec3s) * limbCount + 2) * frame)),
            sizeof(Vec3s) * limbCount + 2, 0, &entry->types.type0.msgQueue, NULL, "../z_skelanime.c", 2004);
    }
}

void SkelAnime_LoadAnimationType1(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE1);
    if (entry != NULL) {
        entry->types.type1.unk_00 = D_801600B0;
        entry->types.type1.vecCount = vecCount;
        entry->types.type1.dst = dst;
        entry->types.type1.src = src;
    }
}

void SkelAnime_LoadAnimationType2(GlobalContext* globalCtx, s32 limbCount, Vec3s* arg2, Vec3s* arg3, f32 arg4) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE2);
    if (entry != NULL) {
        entry->types.type2.unk_00 = D_801600B0;
        entry->types.type2.limbCount = limbCount;
        entry->types.type2.unk_04 = arg2;
        entry->types.type2.unk_08 = arg3;
        entry->types.type2.unk_0C = arg4;
    }
}

void SkelAnime_LoadAnimationType3(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* index) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE3);
    if (entry != NULL) {
        entry->types.type3.unk_00 = D_801600B0;
        entry->types.type3.vecCount = vecCount;
        entry->types.type3.dst = dst;
        entry->types.type3.src = src;
        entry->types.type3.index = index;
    }
}

void SkelAnime_LoadAnimationType4(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* index) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE4);
    if (entry != NULL) {
        entry->types.type4.unk_00 = D_801600B0;
        entry->types.type4.vecCount = vecCount;
        entry->types.type4.dst = dst;
        entry->types.type4.src = src;
        entry->types.type4.index = index;
    }
}

void SkelAnime_LoadAnimationType5(GlobalContext* globalCtx, Actor* actor, SkelAnime* skelAnime, f32 arg3) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE5);
    if (entry != NULL) {
        entry->types.type5.actor = actor;
        entry->types.type5.skelAnime = skelAnime;
        entry->types.type5.unk_08 = arg3;
    }
}

/* The next functions are callbacks to loading animations */

void SkelAnime_LinkAnimetionLoaded(GlobalContext* globalCtx, AnimationEntryType0* entry) {
    osRecvMesg(&entry->msgQueue, NULL, OS_MESG_BLOCK);
}

void SkelAnime_AnimationType1Loaded(GlobalContext* globalCtx, AnimationEntryType1* entry) {
    s32 i;
    Vec3s* dst;
    Vec3s* src;
    AnimationEntryRaw* genericEntry = (AnimationEntryRaw*)entry;

    if ((genericEntry->raw[0] & D_8012A480) != 0) {
        return;
    }

    for (dst = entry->dst, src = entry->src, i = 0; i < genericEntry->raw[1]; i++) {
        *dst++ = *src++;
    }
}

void SkelAnime_AnimationType2Loaded(GlobalContext* globalCtx, AnimationEntryType2* entry) {
    if ((entry->unk_00 & D_8012A480) == 0) {
        SkelAnime_InterpolateVec3s(entry->limbCount, entry->unk_04, entry->unk_04, entry->unk_08, entry->unk_0C);
    }
}

void SkelAnime_AnimationType3Loaded(GlobalContext* globalCtx, AnimationEntryType3* entry) {
    s32 i;
    Vec3s* dst;
    Vec3s* src;
    u8* index;
    AnimationEntryRaw* rawEntry = (AnimationEntryRaw*)entry;

    if ((rawEntry->raw[0] & D_8012A480) == 0) {
        for (dst = entry->dst, src = entry->src, index = entry->index, i = 0; i < rawEntry->raw[1]; i++, dst++, src++) {
            if (*index++) {
                *dst = *src;
            }
        }
    }
}

void SkelAnime_AnimationType4Loaded(GlobalContext* globalCtx, AnimationEntryType4* entry) {
    s32 i;
    Vec3s* dst;
    Vec3s* src;
    u8* index;
    AnimationEntryRaw* rawEntry = (AnimationEntryRaw*)entry;

    if ((rawEntry->raw[0] & D_8012A480) == 0) {
        for (dst = entry->dst, src = entry->src, index = entry->index, i = 0; i < rawEntry->raw[1]; i++, dst++, src++) {
            if (*index++ < 1U) {
                *dst = *src;
            }
        }
    }
}

void SkelAnime_AnimationType5Loaded(GlobalContext* globalCtx, AnimationEntryType5* entry) {
    char pad[4];
    Actor* actor = entry->actor;
    Vec3f pos;

    func_800A54FC(entry->skelAnime, &pos, actor->shape.rot.y);
    actor->posRot.pos.x += pos.x * actor->scale.x;
    actor->posRot.pos.y += pos.y * actor->scale.y * entry->unk_08;
    actor->posRot.pos.z += pos.z * actor->scale.z;
}

void func_800A390C(GlobalContext* globalCtx, AnimationContext* animationCtx) {
    AnimationEntry* entry;

    for (entry = animationCtx->entries; animationCtx->animationCount != 0; entry++, animationCtx->animationCount--) {
        sAnimationLoadDone[entry->type](globalCtx, &entry->types);
    }

    D_801600B0 = 1;
    D_8012A480 = 0;
}

void SkelAnime_InitLinkAnimetion(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                                 LinkAnimetionEntry* linkAnimetionEntrySeg, s32 flags, Vec3s* limbDrawTbl,
                                 Vec3s* transitionDrawTbl, s32 limbBufCount) {
    char pad[8];
    SkeletonHeader* skeletonHeader;
    size_t allocSize;
    s32 limbCount;
    s32 headerCount;

    skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);
    headerCount = skeletonHeader->limbCount;
    skelAnime->initFlags = flags;
    limbCount = (flags & 2) ? headerCount : 1;

    if (flags & 1) {
        limbCount += headerCount;
    }
    if (flags & 4) {
        limbCount += headerCount;
    }

    skelAnime->limbCount = limbCount;
    skelAnime->dListCount = skeletonHeader->dListCount;

    allocSize = limbCount * sizeof(Vec3s);
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);

    if (flags & 8) {
        allocSize += 2;
    }

    if (limbDrawTbl == NULL) {
        skelAnime->limbDrawTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2364);
        skelAnime->transitionDrawTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2365);
    } else {
        if (limbBufCount != limbCount) {
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

    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimetionEntrySeg, 1.0f, 0.0f, 0.0f, 0, 0.0f);
}

void func_800A3B8C(SkelAnime* skelAnime) {
    if (skelAnime->mode < 2) {
        skelAnime->animUpdate = &func_800A3D70;
    } else {
        skelAnime->animUpdate = &func_800A3E0C;
    }
    skelAnime->transCurrentFrame = 0.0f;
}

s32 func_800A3BC0(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    return skelAnime->animUpdate(globalCtx, skelAnime);
}

s32 func_800A3BE4(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 prevUnk28 = skelAnime->transCurrentFrame;
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;

    if (skelAnime->transCurrentFrame <= 0.0f) {
        func_800A3B8C(skelAnime);
    }

    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->transitionDrawTbl,
                                 1.0f - (skelAnime->transCurrentFrame / prevUnk28));
    return 0;
}

void func_800A3C9C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate;

    SkelAnime_LoadLinkAnimetion(globalCtx, skelAnime->linkAnimetionSeg, skelAnime->animCurrentFrame,
                                skelAnime->limbCount, skelAnime->limbDrawTbl);
    if (skelAnime->transCurrentFrame != 0) {
        updateRate = R_UPDATE_RATE * 0.5f;
        skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
        if (skelAnime->transCurrentFrame <= 0.0f) {
            skelAnime->transCurrentFrame = 0.0f;
            return;
        }
        SkelAnime_LoadAnimationType2(globalCtx, skelAnime->limbCount, skelAnime->limbDrawTbl,
                                     skelAnime->transitionDrawTbl, skelAnime->transCurrentFrame);
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
    if (0.0f < ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed)) {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    } else {
        if (skelAnime->animCurrentFrame < 0.0f) {
            skelAnime->animCurrentFrame += skelAnime->totalFrames;
        } else if (skelAnime->totalFrames <= skelAnime->animCurrentFrame) {
            skelAnime->animCurrentFrame -= skelAnime->totalFrames;
        }
    }
    func_800A3C9C(globalCtx, skelAnime);
    return 0;
}

void SkelAnime_SetTransition(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 transitionRate) {
    skelAnime->transCurrentFrame = 1.0f;
    skelAnime->transitionStep = 1.0f / transitionRate;
}

void SkelAnime_ChangeLinkAnim(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimetionEntry* linkAnimetionEntrySeg,
                              f32 playbackSpeed, f32 frame, f32 frameCount, u8 animationMode, f32 transitionRate) {

    skelAnime->mode = animationMode;
    if ((transitionRate != 0.0f) &&
        ((linkAnimetionEntrySeg != skelAnime->linkAnimetionSeg) || (frame != skelAnime->animCurrentFrame))) {
        if (transitionRate < 0) {
            func_800A3B8C(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->transitionDrawTbl, skelAnime->limbDrawTbl);
            transitionRate = -transitionRate;
        } else {
            skelAnime->animUpdate = &func_800A3BE4;
            SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg, (s32)frame, skelAnime->limbCount,
                                        skelAnime->transitionDrawTbl);
        }
        skelAnime->transCurrentFrame = 1.0f;
        skelAnime->transitionStep = 1.0f / transitionRate;
    } else {
        func_800A3B8C(skelAnime);
        SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg, (s32)frame, skelAnime->limbCount,
                                    skelAnime->limbDrawTbl);
        skelAnime->transCurrentFrame = 0.0f;
    }

    skelAnime->linkAnimetionSeg = linkAnimetionEntrySeg;
    skelAnime->animCurrentFrame = 0.0f;
    skelAnime->initialFrame = frame;
    skelAnime->animCurrentFrame = frame;
    skelAnime->animFrameCount = frameCount;
    skelAnime->totalFrames = SkelAnime_GetTotalFrames(linkAnimetionEntrySeg);
    skelAnime->animPlaybackSpeed = playbackSpeed;
}

void SkelAnime_ChangeLinkAnimDefaultStop(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                         LinkAnimetionEntry* linkAnimetionEntrySeg) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimetionEntrySeg, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&linkAnimetionEntrySeg->genericHeader), 2, 0.0f);
}

void SkelAnime_ChangeLinkAnimPlaybackStop(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                          LinkAnimetionEntry* linkAnimetionEntrySeg, f32 playbackSpeed) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimetionEntrySeg, playbackSpeed, 0.0f,
                             SkelAnime_GetFrameCount(&linkAnimetionEntrySeg->genericHeader), 2, 0.0f);
}

void SkelAnime_ChangeLinkAnimDefaultRepeat(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                           LinkAnimetionEntry* linkAnimetionEntrySeg) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimetionEntrySeg, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&linkAnimetionEntrySeg->genericHeader), 0, 0.0f);
}

void SkelAnime_ChangeLinkAnimPlaybackRepeat(GlobalContext* globalCtx, SkelAnime* skelAnime,
                                            LinkAnimetionEntry* linkAnimetionEntrySeg, f32 playbackSpeed) {
    SkelAnime_ChangeLinkAnim(globalCtx, skelAnime, linkAnimetionEntrySeg, playbackSpeed, 0.0f,
                             SkelAnime_GetFrameCount(&linkAnimetionEntrySeg->genericHeader), 0, 0.0f);
}

void func_800A41FC(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    SkelAnime_LoadAnimationType1(globalCtx, skelAnime->limbCount, skelAnime->transitionDrawTbl, skelAnime->limbDrawTbl);
}

void func_800A422C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    SkelAnime_LoadAnimationType1(globalCtx, skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->transitionDrawTbl);
}

void func_800A425C(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimetionEntry* linkAnimetionEntrySeg,
                   f32 frame) {
    SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg, (s32)frame, skelAnime->limbCount,
                                skelAnime->transitionDrawTbl);
}

void func_800A42A0(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimetionEntry* linkAnimetionEntrySeg,
                   f32 frame) {
    SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg, (s32)frame, skelAnime->limbCount,
                                skelAnime->limbDrawTbl);
}

void func_800A42E4(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 frame) {
    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->transitionDrawTbl,
                                 frame);
}

void func_800A431C(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimetionEntry* linkAnimetionEntrySeg,
                   f32 transitionFrame, LinkAnimetionEntry* linkAnimetionEntrySeg2, f32 frame, f32 transitionRate,
                   Vec3s* limbDrawTbl) {
    Vec3s* alignedLimbDrawTbl;
    SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg, (s32)transitionFrame, skelAnime->limbCount,
                                skelAnime->limbDrawTbl);

    alignedLimbDrawTbl = (Vec3s*)ALIGN16((u32)limbDrawTbl);

    SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg2, (s32)frame, skelAnime->limbCount,
                                alignedLimbDrawTbl);
    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->limbCount, skelAnime->limbDrawTbl, alignedLimbDrawTbl,
                                 transitionRate);
}

void func_800A43B8(GlobalContext* globalCtx, SkelAnime* skelAnime, LinkAnimetionEntry* linkAnimetionEntrySeg,
                   f32 transitionFrame, LinkAnimetionEntry* linkAnimetionEntrySeg2, f32 frame, f32 transitionRate,
                   Vec3s* limbDrawTbl) {
    Vec3s* alignedLimbDrawTbl;

    SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg, (s32)transitionFrame, skelAnime->limbCount,
                                skelAnime->transitionDrawTbl);

    alignedLimbDrawTbl = (Vec3s*)ALIGN16((u32)limbDrawTbl);

    SkelAnime_LoadLinkAnimetion(globalCtx, linkAnimetionEntrySeg2, (s32)frame, skelAnime->limbCount,
                                alignedLimbDrawTbl);
    SkelAnime_LoadAnimationType2(globalCtx, skelAnime->limbCount, skelAnime->transitionDrawTbl, alignedLimbDrawTbl,
                                 transitionRate);
}

void SkelAnime_SetModeStop(SkelAnime* skelAnime) {
    skelAnime->mode = 2;
    func_800A3B8C(skelAnime);
}

s32 func_800A4478(SkelAnime* skelAnime, f32 arg1, f32 updateRate) {
    f32 updateSpeed;
    f32 temp_f12;
    f32 nextFrame;

    updateSpeed = skelAnime->animPlaybackSpeed * updateRate;
    nextFrame = skelAnime->animCurrentFrame - updateSpeed;
    if (nextFrame < 0.0f) {
        nextFrame += skelAnime->totalFrames;
    } else if (skelAnime->totalFrames <= nextFrame) {
        nextFrame -= skelAnime->totalFrames;
    }

    if ((arg1 == 0.0f) && (updateSpeed > 0.0f)) {
        arg1 = skelAnime->totalFrames;
    }

    temp_f12 = (nextFrame + updateSpeed) - arg1;
    if ((0.0f <= (temp_f12 * updateSpeed)) && (((temp_f12 - updateSpeed) * updateSpeed) < 0.0f)) {
        return 1;
    }
    return 0;
}

s32 func_800A4530(SkelAnime* skelAnime, f32 arg1) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    return func_800A4478(skelAnime, arg1, updateRate);
}

void SkelAnime_Init(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                    AnimationHeader* animationSeg, Vec3s* limbDrawTbl, Vec3s* transitionDrawTable, s32 limbCount) {
    SkeletonHeader* skeletonHeader;

    skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);
    skelAnime->limbCount = skeletonHeader->limbCount + 1;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);
    if (limbDrawTbl == NULL) {
        skelAnime->limbDrawTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->limbDrawTbl), "../z_skelanime.c", 2968);
        skelAnime->transitionDrawTbl = ZeldaArena_MallocDebug(
            skelAnime->limbCount * sizeof(*skelAnime->transitionDrawTbl), "../z_skelanime.c", 2969);
    } else {
        if (limbCount != skelAnime->limbCount) {
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

void SkelAnime_InitSV(GlobalContext* globalCtx, SkelAnime* skelAnime, SkeletonHeader* skeletonHeaderSeg,
                      AnimationHeader* animationSeg, Vec3s* limbDrawTbl, Vec3s* transitionDrawTable, s32 limbCount) {
    SkeletonHeader* skeletonHeader;

    skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);
    skelAnime->limbCount = skeletonHeader->limbCount + 1;
    skelAnime->dListCount = skeletonHeader->dListCount;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);

    if (limbDrawTbl == NULL) {
        skelAnime->limbDrawTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->limbDrawTbl), "../z_skelanime.c", 3047);

        skelAnime->transitionDrawTbl = ZeldaArena_MallocDebug(
            skelAnime->limbCount * sizeof(*skelAnime->transitionDrawTbl), "../z_skelanime.c", 3048);
    } else {
        if (limbCount != skelAnime->limbCount) {
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
    SkeletonHeader* skeletonHeader;

    skeletonHeader = SEGMENTED_TO_VIRTUAL(skeletonHeaderSeg);
    skelAnime->limbCount = skeletonHeader->limbCount + 1;
    skelAnime->skeleton = SEGMENTED_TO_VIRTUAL(skeletonHeader->skeletonSeg);
    skelAnime->limbDrawTbl =
        ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->limbDrawTbl), "../z_skelanime.c", 3120);
    skelAnime->transitionDrawTbl =
        ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->transitionDrawTbl), "../z_skelanime.c", 3121);
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
        skelAnime->animUpdate = &func_800A4D9C;
    } else if (skelAnime->mode < 4) {
        skelAnime->animUpdate = &func_800A4EE0;
    } else {
        skelAnime->animUpdate = &func_800A4E38;
    }
}

s32 SkelAnime_FrameUpdateMatrix(SkelAnime* skelAnime) {
    return skelAnime->animUpdate(skelAnime);
}

s32 func_800A4A20(SkelAnime* skelAnime) {
    f32 prevUnk28;
    f32 updateRate;

    prevUnk28 = skelAnime->transCurrentFrame;
    updateRate = R_UPDATE_RATE * (1.0f / 3.0f);
    skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
    if (skelAnime->transCurrentFrame <= 0.0f) {
        func_800A49B0(skelAnime);
        skelAnime->transCurrentFrame = 0.0f;
    }
    SkelAnime_InterpolateVec3s(skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl,
                               skelAnime->transitionDrawTbl, 1.0f - (skelAnime->transCurrentFrame / prevUnk28));
    return 0;
}

s32 func_800A4AD8(SkelAnime* skelAnime) {
    s16 temp_a2;
    s16 temp_a1;
    f32 sp28;
    f32 phi_f2;
    f32 updateRate;

    temp_a2 = (s16)(skelAnime->transCurrentFrame * 16384.0f);
    updateRate = R_UPDATE_RATE * (1.0f / 3.0f);
    skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
    if (skelAnime->transCurrentFrame <= 0.0f) {
        func_800A49B0(skelAnime);
        skelAnime->transCurrentFrame = 0.0f;
    }
    temp_a1 = (s16)(skelAnime->transCurrentFrame * 16384.0f);
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
    SkelAnime_InterpolateVec3s(skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl,
                               skelAnime->transitionDrawTbl, 1.0f - phi_f2);
    return 0;
}

void func_800A4C58(SkelAnime* skelAnime) {
    s32 t;
    f32 updateRate;
    char pad[4];
    Vec3s sp38[98];
    f32 temp_f10;
    f32 temp_f2;

    SkelAnime_AnimateFrame(skelAnime->animCurrentSeg, skelAnime->animCurrentFrame, skelAnime->limbCount,
                           skelAnime->limbDrawTbl);
    if (skelAnime->mode & 0x1) {
        t = (s32)skelAnime->animCurrentFrame;
        temp_f10 = t;
        temp_f2 = skelAnime->animCurrentFrame - temp_f10;
        t++;
        if (t >= (s32)skelAnime->totalFrames) {
            t = 0;
        }
        SkelAnime_AnimateFrame(skelAnime->animCurrentSeg, t, skelAnime->limbCount, sp38);
        SkelAnime_InterpolateVec3s(skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl, sp38, temp_f2);
    }
    if (skelAnime->transCurrentFrame != 0) {
        updateRate = R_UPDATE_RATE * (1.0f / 3.0f);
        skelAnime->transCurrentFrame -= skelAnime->transitionStep * updateRate;
        if (skelAnime->transCurrentFrame <= 0.0f) {
            skelAnime->transCurrentFrame = 0.0f;
            return;
        }
        SkelAnime_InterpolateVec3s(skelAnime->limbCount, skelAnime->limbDrawTbl, skelAnime->limbDrawTbl,
                                   skelAnime->transitionDrawTbl, skelAnime->transCurrentFrame);
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
    f32 updateRate;

    updateRate = R_UPDATE_RATE * (1.0f / 3.0f);
    if (skelAnime->animCurrentFrame == skelAnime->animFrameCount) {

        SkelAnime_AnimateFrame(skelAnime->animCurrentSeg, (s32)skelAnime->animCurrentFrame, skelAnime->limbCount,
                               skelAnime->limbDrawTbl);
        func_800A4C58(skelAnime);
        return 1;
    }
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (0.0f < ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed)) {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    } else {
        if (skelAnime->animCurrentFrame < 0.0f) {
            skelAnime->animCurrentFrame += skelAnime->totalFrames;
        } else {
            if (skelAnime->totalFrames <= skelAnime->animCurrentFrame) {
                skelAnime->animCurrentFrame -= skelAnime->totalFrames;
            }
        }
    }
    func_800A4C58(skelAnime);
    return 0;
}

void SkelAnime_ChangeAnimImpl(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed, f32 frame,
                              f32 frameCount, u8 animationType, f32 transitionRate, s8 unk2) {
    skelAnime->mode = animationType;
    if ((transitionRate != 0.0f) &&
        ((animationSeg != skelAnime->animCurrentSeg) || (frame != skelAnime->animCurrentFrame))) {
        if (transitionRate < 0) {
            func_800A49B0(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->transitionDrawTbl, skelAnime->limbDrawTbl);
            transitionRate = -transitionRate;
        } else {
            if (unk2 != 0) {
                skelAnime->animUpdate = &func_800A4AD8;
                skelAnime->unk_03 = unk2;
            } else {
                skelAnime->animUpdate = &func_800A4A20;
            }
            SkelAnime_AnimateFrame(animationSeg, frame, skelAnime->limbCount, skelAnime->transitionDrawTbl);
        }
        skelAnime->transCurrentFrame = 1.0f;
        skelAnime->transitionStep = 1.0f / transitionRate;
    } else {
        func_800A49B0(skelAnime);
        SkelAnime_AnimateFrame(animationSeg, frame, skelAnime->limbCount, skelAnime->limbDrawTbl);
        skelAnime->transCurrentFrame = 0.0f;
    }

    skelAnime->animCurrentSeg = animationSeg;
    skelAnime->initialFrame = frame;
    skelAnime->animFrameCount = frameCount;
    skelAnime->totalFrames = SkelAnime_GetTotalFrames(&animationSeg->genericHeader);
    if (skelAnime->mode >= 4) {
        skelAnime->animCurrentFrame = 0.0f;
    } else {
        skelAnime->animCurrentFrame = frame;
        if (skelAnime->mode < 2) {
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
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animationSeg->genericHeader), 2,
                         0.0f);
}

void SkelAnime_ChangeAnimTransitionStop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 transitionRate) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0, SkelAnime_GetFrameCount(&animationSeg->genericHeader), 2,
                         transitionRate);
}

void SkelAnime_ChangeAnimPlaybackStop(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, playbackSpeed, 0.0f,
                         SkelAnime_GetFrameCount(&animationSeg->genericHeader), 2, 0.0f);
}

void SkelAnime_ChangeAnimDefaultRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animationSeg->genericHeader), 0,
                         0.0f);
}

void SkelAnime_ChangeAnimTransitionRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 transitionRate) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, 1.0f, 0.0f, 0.0f, 0, transitionRate);
}

void SkelAnime_ChangeAnimPlaybackRepeat(SkelAnime* skelAnime, AnimationHeader* animationSeg, f32 playbackSpeed) {
    SkelAnime_ChangeAnim(skelAnime, animationSeg, playbackSpeed, 0.0f,
                         SkelAnime_GetFrameCount(&animationSeg->genericHeader), 0, 0.0f);
}

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
    for (i = 0; i < skelAnime->limbCount; i++, dst++, src++) {
        if (*index++) {
            *dst = *src;
        }
    }
}

void func_800A5490(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* arg3) {
    s32 i;
    for (i = 0; i < skelAnime->limbCount; i++, dst++, src++) {
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
        pos->z = 0.0f;
        pos->x = 0.0f;
    } else {
        // `angle` rotation around y axis.
        x = skelAnime->limbDrawTbl->x;
        z = skelAnime->limbDrawTbl->z;
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
    skelAnime->prevFramePos.x = skelAnime->limbDrawTbl->x;
    skelAnime->limbDrawTbl->x = skelAnime->unk_3E.x;
    skelAnime->prevFramePos.z = skelAnime->limbDrawTbl->z;
    skelAnime->limbDrawTbl->z = skelAnime->unk_3E.z;
    if (skelAnime->flags & ANIM_FLAG_UPDATEXZ) {
        if (skelAnime->flags & ANIM_FLAG_UPDATEY) {
            pos->y = 0.0f;
        } else {
            pos->y = skelAnime->limbDrawTbl->y - skelAnime->prevFramePos.y;
        }
        skelAnime->prevFramePos.y = skelAnime->limbDrawTbl->y;
        skelAnime->limbDrawTbl->y = skelAnime->unk_3E.y;
    } else {
        pos->y = 0.0f;
        skelAnime->prevFramePos.y = skelAnime->limbDrawTbl->y;
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
    for (i = 0; i < skelAnime->limbCount; i++) {
        *dst++ = *src++;
    }
}
