#include <ultra64.h>
#include <global.h>

s32 func_800A3D70(GlobalContext*, SkelAnime*);
s32 func_800A3E0C(GlobalContext*, SkelAnime*);
s32 func_800A4D9C(SkelAnime* skelAnime);
s32 func_800A4EE0(SkelAnime* skelAnime);
s32 func_800A4E38(SkelAnime* skelAnime);
void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src);
void func_800A3678(GlobalContext* globalCtx, AnimationEntryType0* entry);
void func_800A36A4(GlobalContext* globalCtx, AnimationEntryType1* entry);
void func_800A3714(GlobalContext* globalCtx, AnimationEntryType2* entry);
void func_800A3770(GlobalContext* globalCtx, AnimationEntryType3* entry);
void func_800A37F0(GlobalContext* globalCtx, AnimationEntryType4* entry);
void func_800A3874(GlobalContext* globalCtx, AnimationEntryType5* entry);

//.data
u32 D_8012A480 = 0;
static AnimationEntryCallback D_8012A484[] = {
    (AnimationEntryCallback)&func_800A3678, (AnimationEntryCallback)&func_800A36A4,
    (AnimationEntryCallback)&func_800A3714, (AnimationEntryCallback)&func_800A3770,
    (AnimationEntryCallback)&func_800A37F0, (AnimationEntryCallback)&func_800A3874,
};

//.bss
u32 D_801600B0;

void SkelAnime_LodDrawLimb(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                           SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                           Actor* actor, s32 dListIndex) {
    SkelLimbEntry* limbEntry;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 773);
    Matrix_Push();
    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;
    rot = actorDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList = limbEntry->displayLists[dListIndex];
    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList, &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList != NULL) {
            do {
                if (1) {
                    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 0x325),
                              G_MTX_LOAD);

                    gSPDisplayList(gfxCtx->polyOpa.p++, dList);
                }
            } while (0);
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, limbIndex, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                              appendDlistFunc, actor, dListIndex);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimb(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc,
                              appendDlistFunc, actor, dListIndex);
    }

    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x335);
}

void SkelAnime_LodDraw(GlobalContext* globalCtx, u32* limbIndex, Vec3s* actorDrawTable,
                       SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                       Actor* actor, s32 dListIndex) {
    SkelLimbEntry* limbEntry;
    char pad[4];
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    if (limbIndex == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_Lod_draw():skelがNULLです。\n");
        osSyncPrintf("\x1b[m");
        return;
    }
    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x351);
    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(*limbIndex);
    pos.x = (f32)actorDrawTable->x;
    pos.y = (f32)actorDrawTable->y;
    pos.z = (f32)actorDrawTable->z;

    rot = actorDrawTable[1];
    dList = limbEntry->displayLists[dListIndex];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &dList, &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 0x371),
                      G_MTX_LOAD);

            gSPDisplayList(gfxCtx->polyOpa.p++, dList);
        }
    }
    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, 1, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != 0xFF) {
        SkelAnime_LodDrawLimb(globalCtx, limbEntry->firstChildIndex, limbIndex, actorDrawTable, updateMtxFunc,
                              appendDlistFunc, actor, dListIndex);
    }

    Matrix_Pull();
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x37E);
}

#ifdef NON_MATCHING
void SkelAnime_LodDrawLimbSV(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                             SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                             Actor* actor, s32 dListIndex, Mtx** mtx) {
    SkelLimbEntry* limbEntry;
    Gfx* dList[2];
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Gfx* gfx[3];

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;

    rot = actorDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;
    dList[1] = dList[0] = limbEntry->displayLists[dListIndex];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList[1], &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList[1] != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 945);
            gfxCtx = globalCtx->state.gfxCtx;
            func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 946);
            gSPMatrix(gfxCtx->polyOpa.p++, *mtx, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList[1]);
            func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 949);
            (*mtx)++;
        } else if (dList[0] != 0) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 954);
            (*mtx)++;
        }
    }
    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, limbIndex, &dList[0], &rot, actor);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimbSV(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                                appendDlistFunc, actor, dListIndex, mtx);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimbSV(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc,
                                appendDlistFunc, actor, dListIndex, mtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_LodDrawLimbSV.s")
#endif

#ifdef NON_MATCHING
void SkelAnime_LodDrawSV(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable, s32 limbCount,
                         SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                         Actor* actor, s32 dListIndex) {
    SkelLimbEntry* limbEntry;
    Gfx* dList[2];
    Vec3f pos;
    Vec3s rot;
    Mtx* mtx;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    do {
        if (1) {
            mtx = Graph_Alloc(globalCtx->state.gfxCtx, limbCount * 0x40);
        }
    } while (0);

    if (limbTable == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_Lod_draw_SV():skelがNULLです。\n");
        osSyncPrintf("\x1b[m");
        return;
    }
    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1000);
    gSPSegment(gfxCtx->polyOpa.p++, 0xD, mtx);
    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = actorDrawTable->x;
    pos.y = actorDrawTable->y;
    pos.z = actorDrawTable->z;

    rot = actorDrawTable[1];

    dList[1] = dList[0] = limbEntry->displayLists[dListIndex];

    if ((updateMtxFunc == 0) || (updateMtxFunc(globalCtx, 1, &dList[1], &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList[1] != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1033);
            gSPMatrix(gfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList[1]);
            mtx++;
        } else {
            if (dList[0] != NULL) {
                Matrix_ToMtx(mtx, "../z_skelanime.c", 1040);
                mtx++;
            }
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, 1, &dList[0], &rot, actor);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_LodDrawLimbSV(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                                appendDlistFunc, actor, dListIndex, &mtx);
    }

    Matrix_Pull();

    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1053);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_LodDrawSV.s")
#endif

void SkelAnime_DrawLimb(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                        SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                        Actor* actor) {
    SkelLimbEntry* limbEntry;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x434);
    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;
    rot = actorDrawTable[limbIndex];
    pos.x = (f32)limbEntry->translation.x;
    pos.y = (f32)limbEntry->translation.y;
    pos.z = (f32)limbEntry->translation.z;
    dList = limbEntry->displayLists[0];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList, &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList != NULL) {
            do {
                if (1) {
                    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1103),
                              G_MTX_LOAD);
                    gSPDisplayList(gfxCtx->polyOpa.p++, dList);
                }
            } while (0);
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, limbIndex, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                           appendDlistFunc, actor);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc,
                           appendDlistFunc, actor);
    }

    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1121);
}

void SkelAnime_Draw(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable,
                    SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor) {
    SkelLimbEntry* rootLimb;
    char pad[4];
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    if (limbTable == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_draw():skelがNULLです。\n"); // Si2_draw (): skel is NULL.
        osSyncPrintf("\x1b[m");
        return;
    }

    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1148);
    Matrix_Push();
    rootLimb = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = (f32)actorDrawTable[0].x;
    pos.y = (f32)actorDrawTable[0].y;
    pos.z = (f32)actorDrawTable[0].z;

    rot = actorDrawTable[1];
    dList = rootLimb->displayLists[0];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &dList, &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1176),
                      G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList);
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, 1, &dList, &rot, actor);
    }

    if (rootLimb->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimb(globalCtx, rootLimb->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                           appendDlistFunc, actor);
    }

    Matrix_Pull();

    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1190);
}

#ifdef NON_MATCHING
void SkelAnime_DrawLimbSV(GlobalContext* globalCtx, u32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                          SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                          Actor* actor, Mtx** limbMatricies) {
    Gfx* limbDlist[2];
    Vec3f limbPos;
    Vec3s limbRot;
    GraphicsContext* gfxCtx;
    Gfx* sp34[3];
    SkelLimbEntry* limbEntry;

    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(sp34, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x4BE);
    Matrix_Push();
    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbRot = actorDrawTable[++limbIndex];

    limbPos.x = (f32)limbEntry->pos.x;
    limbPos.y = (f32)limbEntry->pos.y;
    limbPos.z = (f32)limbEntry->pos.z;

    limbDlist[0] = limbEntry->dList;
    limbDlist[1] = limbEntry->dList;

    if ((updateMtxFunc == NULL) ||
        (updateMtxFunc(globalCtx, limbIndex, &limbDlist[0], &limbPos, &limbRot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&limbPos, &limbRot);
        if (limbDlist[0] != NULL) {
            Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 0x4DA);
            gSPMatrix(gfxCtx->polyOpa.p++, *limbMatricies, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, &limbDlist[0]);
            (*limbMatricies)++;
        } else {
            if (&limbDlist[1] != 0) {
                Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 0x4E1);
                (*limbMatricies)++;
            }
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, limbIndex, &limbDlist[1], &limbRot, actor);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimbSV(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                             appendDlistFunc, actor, limbMatricies);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        SkelAnime_DrawLimbSV(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc,
                             appendDlistFunc, actor, limbMatricies);
    }

    func_800C6B54(sp34, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x4F1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_DrawLimbSV.s")
#endif

#ifdef NON_MATCHING
void SkelAnime_DrawSV(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable, u32 dListCount,
                      SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                      Actor* actor) {
    SkelLimbEntry* rootLimb;
    Gfx* skelDlist[2];
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Mtx* limbMatricies;
    Gfx* gfx[5];

    limbMatricies = Graph_Alloc(globalCtx->state.gfxCtx, dListCount << 6);

    if (limbTable == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_draw_SV():skelがNULLです。\n"); // Si2_draw_SV (): skel is NULL.
        osSyncPrintf("\x1b[m");
        return;
    }

    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1294);

    gSPSegment(gfxCtx->polyOpa.p++, 0xD, limbMatricies);
    Matrix_Push();
    rootLimb = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = (f32)actorDrawTable[0].x;
    pos.y = (f32)actorDrawTable[0].y;
    pos.z = (f32)actorDrawTable[0].z;

    rot = actorDrawTable[1];

    skelDlist[0] = skelDlist[1] = rootLimb->dList;

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &skelDlist[0], &pos, &rot, actor) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (skelDlist[0] != NULL) {
            Matrix_ToMtx(limbMatricies, "../z_skelanime.c", 1327);
            gSPMatrix(gfxCtx->polyOpa.p++, limbMatricies, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, skelDlist[0]);
            limbMatricies++;
        } else {
            if (skelDlist[1] != 0) {
                Matrix_ToMtx(limbMatricies, "../z_skelanime.c", 1334);
                limbMatricies++;
            }
        }
    }

    if (appendDlistFunc != 0) {
        appendDlistFunc(globalCtx, 1, &skelDlist[1], &rot, actor);
    }

    if (rootLimb->firstChildIndex != LIMB_DONE) {
        SkelAnime_DrawLimbSV(globalCtx, rootLimb->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                             appendDlistFunc, actor, &limbMatricies);
    }

    Matrix_Pull();
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1347);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_DrawSV.s")
#endif
#undef NON_MATCHING

/*
 * Copies the rotation values from the rotation value table, indexed by the rotation index table
 * When a rotation index is >= the animation limit, the output rotation value is copied from the frame's
 * rotation value list, otherwise it is copied from the initial rotation value list
 */
void SkelAnime_AnimateFrame(u32 animation, s32 currentFrame, s32 limbCount, Vec3s* dst) {
    AnimationRotationIndex* index;
    AnimationRotationValue* rotationValueTable;
    AnimationRotationValue* frameRotationValueTable;
    AnimationHeader* animationHeader;

    s32 i;
    u16 limit;

    animationHeader = SEGMENTED_TO_VIRTUAL(animation);
    index = SEGMENTED_TO_VIRTUAL(animationHeader->rotationIndexSeg);
    rotationValueTable = SEGMENTED_TO_VIRTUAL(animationHeader->rotationValueSeg);
    frameRotationValueTable = &rotationValueTable[currentFrame];
    limit = animationHeader->limit;

    for (i = 0; i < limbCount; i++, dst++, index++) {
        if ((dst == NULL) || (index == NULL) || (frameRotationValueTable == NULL) || (rotationValueTable == NULL)) {
            if (1) {} // Necessary to match.
            LogUtils_LogThreadId("../z_skelanime.c", 1392);
            osSyncPrintf("out = %08x\n", dst);
            LogUtils_LogThreadId("../z_skelanime.c", 1393);
            osSyncPrintf("ref_tbl = %08x\n", index);
            LogUtils_LogThreadId("../z_skelanime.c", 1394);
            osSyncPrintf("frame_tbl = %08x\n", frameRotationValueTable);
            LogUtils_LogThreadId("../z_skelanime.c", 1395);
            osSyncPrintf("tbl = %08x\n", rotationValueTable);
        }

        dst->x = index->x >= limit ? frameRotationValueTable[index->x] : rotationValueTable[index->x];
        dst->y = index->y >= limit ? frameRotationValueTable[index->y] : rotationValueTable[index->y];
        dst->z = index->z >= limit ? frameRotationValueTable[index->z] : rotationValueTable[index->z];
    }
}

s16 func_800A1FC8(u32 animationSeg) {
    AnimationHeader* animation = (u16*)SEGMENTED_TO_VIRTUAL(animationSeg);
    return animation->frameCount;
}

s32 SkelAnime_GetFrameCount(u32 animationSeg) {
    AnimationHeader* animation = (u16*)SEGMENTED_TO_VIRTUAL(animationSeg);

    return (s16)((u16)animation->frameCount - 1);
}

Gfx* SkelAnime_Draw2Limb(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                         SkelAnime_LimbUpdateMatrix2 updateMtxFunc, SkelAnime_LimbAppendDlist2 appendDlistFunc,
                         Actor* actor, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;

    rot = actorDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList = limbEntry->displayLists[0];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 0x5D1), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, limbIndex, &dList, &rot, actor, &gfx);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                                  appendDlistFunc, actor, gfx);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc,
                                  appendDlistFunc, actor, gfx);
    }

    return gfx;
}

#ifdef NON_MATCHING
// Some regalloc, and nonmatching stack usage
Gfx* SkelAnime_Draw2(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable,
                     SkelAnime_LimbUpdateMatrix2 updateMtxFunc, SkelAnime_LimbAppendDlist2 appendDlistFunc,
                     Actor* actor, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    Vec3f pos;
    Vec3s rot;
    Gfx* dList;

    if (limbTable == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_draw2():skelがNULLです。NULLを返します。\n");
        osSyncPrintf("\x1b[m");
        return NULL;
    }

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    rot = actorDrawTable[1];

    dList = limbEntry->displayLists[0];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &dList, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList != NULL) {
            gSPMatrix(gfx++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 0x616), G_MTX_LOAD);
            gSPDisplayList(gfx++, dList);
        }
    }

    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, 1, &dList, &rot, actor, &gfx);
    }

    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_Draw2Limb(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                                  appendDlistFunc, actor, gfx);
    }

    Matrix_Pull();

    return gfx;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_Draw2.s")
#endif

Gfx* SkelAnime_DrawLimbSV2(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                           SkelAnime_LimbUpdateMatrix2 updateMtxFunc, SkelAnime_LimbAppendDlist2 appendDlistFunc,
                           Actor* actor, Mtx** mtx, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    Gfx* dList1;
    Gfx* dList2;
    Vec3f pos;
    Vec3s rot;
    char pad[4];

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;
    rot = actorDrawTable[limbIndex];

    pos.x = limbEntry->translation.x;
    pos.y = limbEntry->translation.y;
    pos.z = limbEntry->translation.z;

    dList1 = dList2 = limbEntry->displayLists[0];
    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList1, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList1 != NULL) {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 0x657);
            gSPMatrix(gfx++, *mtx, G_MTX_LOAD);
            gSPDisplayList(gfx++, dList1);
            (*mtx)++;
        } else {
            if (dList2 != NULL) {
                Matrix_ToMtx(*mtx, "../z_skelanime.c", 0x65E);
                (*mtx)++;
            }
        }
    }
    if (appendDlistFunc != 0) {
        appendDlistFunc(globalCtx, limbIndex, &dList2, &rot, actor, &gfx);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_DrawLimbSV2(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                                    appendDlistFunc, actor, mtx, gfx);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != LIMB_DONE) {
        gfx = SkelAnime_DrawLimbSV2(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc,
                                    appendDlistFunc, actor, mtx, gfx);
    }

    return gfx;
}

Gfx* SkelAnime_DrawSV2(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable, s32 dListCount,
                       SkelAnime_LimbUpdateMatrix2 updateMtxFunc, SkelAnime_LimbAppendDlist2 appendDlistFunc,
                       Actor* actor, Gfx* gfx) {
    SkelLimbEntry* limbEntry;
    char pad[4];
    Gfx* dList1;
    Gfx* dList2;
    Vec3f pos;
    Vec3s rot;
    Mtx* mtx;

    mtx = Graph_Alloc(globalCtx->state.gfxCtx, dListCount * sizeof(*mtx));
    if (limbTable == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_draw2_SV():skelがNULLです。NULLを返します。\n");
        osSyncPrintf("\x1b[m");
        return NULL;
    }

    gSPSegment(gfx++, 0xD, mtx);
    Matrix_Push();
    limbEntry = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = actorDrawTable->x;
    pos.y = actorDrawTable->y;
    pos.z = actorDrawTable->z;

    rot = actorDrawTable[1];

    dList1 = dList2 = limbEntry->displayLists[0];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &dList1, &pos, &rot, actor, &gfx) == 0)) {
        Matrix_TranslateThenRotateZYX(&pos, &rot);
        if (dList1 != NULL) {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 0x6AE);
            gSPMatrix(gfx++, mtx, G_MTX_LOAD);
            gSPDisplayList(gfx++, dList1);
            mtx++;
        } else {
            if (dList2 != NULL) {
                Matrix_ToMtx(mtx, "../z_skelanime.c", 0x6B5);
                mtx++;
            }
        }
    }
    if (appendDlistFunc != NULL) {
        appendDlistFunc(globalCtx, 1, &dList2, &rot, actor, &gfx);
    }
    if (limbEntry->firstChildIndex != LIMB_DONE) {
        gfx = SkelAnime_DrawLimbSV2(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc,
                                    appendDlistFunc, actor, &mtx, gfx);
    }

    Matrix_Pull();

    return gfx;
}

// Seems to be some kind of rotations update, somewhat large.
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A29BC.s")

s16 func_800A2DBC(u32 animationSeg) {
    AnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->unk_02;
}

s16 func_800A2DF4(u32 animationSeg) {
    AnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return animation->frameCount;
}

s16 func_800A2E2C(u32 animationSeg) {
    AnimationHeader* animation = SEGMENTED_TO_VIRTUAL(animationSeg);

    return (s16)(animation->frameCount - 1);
}

// Very large update function
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2E70.s")

void func_800A32EC(u16* arg0) {
    *arg0 = 0;
}

void func_800A32F4(s32 arg0) {
    D_801600B0 *= 2;
}

void func_800A3310(void* arg0) {
    u32* D_8012A480Ptr = &D_8012A480;

    *D_8012A480Ptr |= D_801600B0;
}

AnimationEntry* SkelAnime_NextEntry(AnimationContext* animationCtx, AnimationType type) {
    AnimationEntry* entry;
    s16 index = animationCtx->animationCount;

    if (index >= 0x32) {
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

void func_800A336C(GlobalContext* globalCtx, u32 linkAnimetionSeg, s32 frame, s32 limbCount, void* ram) {
    AnimationEntry* entry;
    LinkAnimetionEntry* linkAnimetionEntry;
    char pad[4];

    entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE0);

    if (entry != NULL) {
        linkAnimetionEntry = SEGMENTED_TO_VIRTUAL(linkAnimetionSeg);
        osCreateMesgQueue(&entry->types.type0.msgQueue, &entry->types.type0.msg, 1);
        DmaMgr_SendRequest2(
            &entry->types.type0.req, ram,
            LINK_ANIMETION_OFFSET(linkAnimetionEntry->animationSegAddress, ((sizeof(Vec3s) * limbCount + 2) * frame)),
            sizeof(Vec3s) * limbCount + 2, 0, &entry->types.type0.msgQueue, NULL, "../z_skelanime.c", 0x7D4);
    }
}

void func_800A3478(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE1);
    if (entry != NULL) {
        entry->types.type1.unk_00 = D_801600B0;
        entry->types.type1.vecCount = vecCount;
        entry->types.type1.dst = dst;
        entry->types.type1.src = src;
    }
}

void func_800A34DC(GlobalContext* globalCtx, s32 arg1, Vec3s* arg2, Vec3s* arg3, f32 arg4) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE2);
    if (entry != NULL) {
        entry->types.type2.unk_00 = D_801600B0;
        entry->types.type2.unk_01 = arg1;
        entry->types.type2.unk_04 = arg2;
        entry->types.type2.unk_08 = arg3;
        entry->types.type2.unk_0C = arg4;
    }
}

void func_800A3548(GlobalContext* globalCtx, s32 vecCount, s32 dst, s32 src, s32 index) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE3);
    if (entry != NULL) {
        entry->types.type3.unk_00 = D_801600B0;
        entry->types.type3.vecCount = vecCount;
        entry->types.type3.dst = dst;
        entry->types.type3.src = src;
        entry->types.type3.index = index;
    }
}

void func_800A35B4(GlobalContext* globalCtx, s32 vecCount, Vec3s* dst, Vec3s* src, u8* index) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE4);
    if (entry != NULL) {
        entry->types.type4.unk_00 = D_801600B0;
        entry->types.type4.vecCount = vecCount;
        entry->types.type4.dst = dst;
        entry->types.type4.src = src;
        entry->types.type4.index = index;
    }
}

void func_800A3620(GlobalContext* globalCtx, Actor* actor, SkelAnime* skelAnime, f32 arg3) {
    AnimationEntry* entry = SkelAnime_NextEntry(&globalCtx->animationCtx, ANIMATION_TYPE5);
    if (entry != NULL) {
        entry->types.type5.actor = actor;
        entry->types.type5.skelAnime = skelAnime;
        entry->types.type5.unk_08 = arg3;
    }
}

/* The next functions are callbacks to loading animations */

void func_800A3678(GlobalContext* globalCtx, AnimationEntryType0* entry) {
    osRecvMesg(&entry->msgQueue, NULL, OS_MESG_BLOCK);
}

void func_800A36A4(GlobalContext* globalCtx, AnimationEntryType1* entry) {
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

void func_800A3714(GlobalContext* globalCtx, AnimationEntryType2* entry) {
    if ((entry->unk_00 & D_8012A480) == 0) {
        func_800A2E70(entry->unk_01, entry->unk_04, entry->unk_04, entry->unk_08, entry->unk_0C);
    }
}

void func_800A3770(GlobalContext* globalCtx, AnimationEntryType3* entry) {
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

void func_800A37F0(GlobalContext* globalCtx, AnimationEntryType4* entry) {
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

void func_800A3874(GlobalContext* globalCtx, AnimationEntryType5* entry) {
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
        D_8012A484[entry->type](globalCtx, &entry->types);
    }

    D_801600B0 = 1;
    D_8012A480 = 0;
}

void func_800A39AC(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 limbHeaderSeg, u32* animation, s32 flags,
                   Vec3s* actorDrawTbl, Vec3s* arg6, s32 limbBufCount) {
    char pad[8];
    SkelAnimeLimbHeader* limbHeader;
    size_t allocSize;
    s32 limbCount;
    s32 headerCount;

    limbHeader = SEGMENTED_TO_VIRTUAL(limbHeaderSeg);
    headerCount = limbHeader->limbCount;
    skelAnime->unk_34 = flags;
    limbCount = (flags & 2) != 0 ? headerCount : 1;

    if ((flags & 1) != 0) {
        limbCount += headerCount;
    }
    if ((flags & 4) != 0) {
        limbCount += headerCount;
    }

    skelAnime->limbCount = (u8)limbCount;
    skelAnime->dListCount = limbHeader->dListCount;

    allocSize = limbCount * sizeof(Vec3s);
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(limbHeader->limbIndexSeg);

    if ((flags & 8) != 0) {
        allocSize += 2;
    }

    if (actorDrawTbl == NULL) {
        skelAnime->actorDrawTbl = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2364);
        skelAnime->unk_24 = ZeldaArena_MallocDebug(allocSize, "../z_skelanime.c", 2365);
    } else {
        if (limbBufCount != limbCount) {
            __assert("joint_buff_num == joint_num", "../z_skelanime.c", 2369);
        }

        skelAnime->actorDrawTbl = (Vec3s*)ALIGN16((u32)actorDrawTbl);
        skelAnime->unk_24 = (Vec3s*)ALIGN16((u32)arg6);
    }

    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL)) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf(
            "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); // Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf("\x1b[m");
    }

    func_800A3F08(globalCtx, skelAnime, animation, 1.0f, 0.0f, 0.0f, 0, 0.0f);
}

void func_800A3B8C(SkelAnime* skelAnime) {
    if (skelAnime->unk_01 < 2) {
        skelAnime->animUpdate = &func_800A3D70;
    } else {
        skelAnime->animUpdate = &func_800A3E0C;
    }
    skelAnime->unk_28 = 0.0f;
}

void func_800A3BC0(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    skelAnime->animUpdate(globalCtx, skelAnime);
}

s32 func_800A3BE4(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 prevUnk28 = skelAnime->unk_28;
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->unk_28 -= skelAnime->unk_2C * updateRate;

    if (skelAnime->unk_28 <= 0.0f) {
        func_800A3B8C(skelAnime);
    }

    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24,
                  1.0f - (skelAnime->unk_28 / prevUnk28));
    return 0;
}

void func_800A3C9C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate;

    func_800A336C(globalCtx, skelAnime->animCurrent, skelAnime->animCurrentFrame, skelAnime->limbCount,
                  skelAnime->actorDrawTbl);
    if (skelAnime->unk_28 != 0) {
        updateRate = R_UPDATE_RATE * 0.5f;
        skelAnime->unk_28 -= skelAnime->unk_2C * updateRate;
        if (skelAnime->unk_28 <= 0.0f) {
            skelAnime->unk_28 = 0.0f;
            return;
        }
        func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24, skelAnime->unk_28);
    }
}

s32 func_800A3D70(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (skelAnime->animCurrentFrame < 0.0f) {
        skelAnime->animCurrentFrame += skelAnime->unk_14;
    } else {
        if (skelAnime->unk_14 <= skelAnime->animCurrentFrame) {
            skelAnime->animCurrentFrame -= skelAnime->unk_14;
        }
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
            skelAnime->animCurrentFrame += skelAnime->unk_14;
        } else {
            if (skelAnime->unk_14 <= skelAnime->animCurrentFrame) {
                skelAnime->animCurrentFrame -= skelAnime->unk_14;
            }
        }
    }
    func_800A3C9C(globalCtx, skelAnime);
    return 0;
}

void func_800A3EE8(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 arg2) {
    skelAnime->unk_28 = 1.0f;
    skelAnime->unk_2C = 1.0f / arg2;
}

#ifdef NON_MATCHING
void func_800A3F08(GlobalContext* globalCtx, SkelAnime* skelAnime, u32* animation, f32 playbackSpeed, f32 arg4,
                   f32 frameCount, u8 arg6, f32 arg7) {

    skelAnime->unk_01 = arg6;
    if ((arg7 != 0.0f) && ((animation == skelAnime->animCurrent) || (arg4 != skelAnime->animCurrentFrame))) {
        if (arg7 < 0.0f) {
            func_800A3B8C(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->unk_24, skelAnime->actorDrawTbl);
            arg7 = -arg7;
        } else {
            skelAnime->animUpdate = &func_800A3BE4;
            func_800A336C(globalCtx, animation, (s32)arg4, skelAnime->limbCount, skelAnime->unk_24);
        }
        skelAnime->unk_28 = 1.0f;
        skelAnime->unk_2C = 1.0f / arg7;
    } else {
        func_800A3B8C(skelAnime);
        func_800A336C(globalCtx, animation, (s32)arg4, skelAnime->limbCount, skelAnime->actorDrawTbl);
        skelAnime->unk_28 = 0.0f;
    }

    skelAnime->animCurrentFrame = 0.0f;
    skelAnime->unk_0C = arg4;
    skelAnime->animCurrentFrame = arg4;
    skelAnime->animFrameCount = frameCount;
    skelAnime->unk_14 = func_800A1FC8(animation);
    skelAnime->animPlaybackSpeed = playbackSpeed;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3F08.s")
#endif

void func_800A407C(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation) {
    func_800A3F08(globalCtx, skelAnime, animation, 1.0f, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 2, 0.0f);
}

void func_800A40DC(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 playbackSpeed) {
    func_800A3F08(globalCtx, skelAnime, animation, playbackSpeed, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 2,
                  0.0f);
}

void func_800A4140(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation) {
    func_800A3F08(globalCtx, skelAnime, animation, 1.0f, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 0, 0.0f);
}

void func_800A419C(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 playbackSpeed) {
    func_800A3F08(globalCtx, skelAnime, animation, playbackSpeed, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 0,
                  0.0f);
}

void func_800A41FC(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    func_800A3478(globalCtx, skelAnime->limbCount, skelAnime->unk_24, skelAnime->actorDrawTbl);
}

void func_800A422C(GlobalContext* globalCtx, SkelAnime* skelAnime) {
    func_800A3478(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24);
}

void func_800A425C(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 frame) {
    func_800A336C(globalCtx, animation, (s32)frame, skelAnime->limbCount, skelAnime->unk_24);
}

void func_800A42A0(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 frame) {
    func_800A336C(globalCtx, animation, (s32)frame, skelAnime->limbCount, skelAnime->actorDrawTbl);
}

void func_800A42E4(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 arg2) {
    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24, arg2);
}

void func_800A431C(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animationSeg, f32 frame, s32 arg4, f32 arg5,
                   f32 arg6, s32 arg7) {
    s32 alignedAddr;
    func_800A336C(globalCtx, animationSeg, (s32)frame, skelAnime->limbCount, skelAnime->actorDrawTbl);

    alignedAddr = ALIGN16(arg7);

    func_800A336C(globalCtx, arg4, (s32)arg5, skelAnime->limbCount, alignedAddr);
    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, alignedAddr, arg6);
}

void func_800A43B8(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 frame, s32 arg4, f32 arg5,
                   f32 arg6, s32 arg7) {
    s32 alignedAddr;

    func_800A336C(globalCtx, animation, (s32)frame, skelAnime->limbCount, skelAnime->unk_24);

    alignedAddr = ALIGN16(arg7);

    func_800A336C(globalCtx, arg4, (s32)arg5, skelAnime->limbCount, alignedAddr);
    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->unk_24, alignedAddr, arg6);
}

void func_800A4454(SkelAnime* skelAnime) {
    skelAnime->unk_01 = 2;
    func_800A3B8C(skelAnime);
}

s32 func_800A4478(SkelAnime* skelAnime, f32 arg1, f32 updateRate) {
    f32 updateSpeed;
    f32 temp_f12;
    f32 nextFrame;

    updateSpeed = skelAnime->animPlaybackSpeed * updateRate;
    nextFrame = skelAnime->animCurrentFrame - updateSpeed;
    if (nextFrame < 0.0f) {
        nextFrame += skelAnime->unk_14;
    } else {
        if (skelAnime->unk_14 <= nextFrame) {
            nextFrame -= skelAnime->unk_14;
        }
    }
    if (arg1 == 0.0f) {
        if (0.0f < updateSpeed) {
            arg1 = skelAnime->unk_14;
        }
    }
    temp_f12 = (nextFrame + updateSpeed) - arg1;
    if (0.0f <= (temp_f12 * updateSpeed)) {
        if (((temp_f12 - updateSpeed) * updateSpeed) < 0.0f) {
            return 1;
        }
    }
    return 0;
}

s32 func_800A4530(SkelAnime* skelAnime, f32 arg1) {
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    return func_800A4478(skelAnime, arg1, updateRate);
}

void SkelAnime_Init(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 limbHeaderSeg, u32 animation,
                    Vec3s* actorDrawTable, s32 arg5, s32 limbCount) {
    SkelAnimeLimbHeader* limbHeader;

    limbHeader = SEGMENTED_TO_VIRTUAL(limbHeaderSeg);
    skelAnime->limbCount = limbHeader->limbCount + 1;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(limbHeader->limbIndexSeg);
    if (actorDrawTable == NULL) {
        skelAnime->actorDrawTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->actorDrawTbl), "../z_skelanime.c", 2968);
        skelAnime->unk_24 =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->unk_24), "../z_skelanime.c", 2969);
    } else {
        if (limbCount != skelAnime->limbCount) {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 2973);
        }
        skelAnime->actorDrawTbl = actorDrawTable;
        skelAnime->unk_24 = arg5;
    }
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL)) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Skeleton_Info2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_ct memory allocation error
        osSyncPrintf("\x1b[m");
    }

    if (animation != 0) {
        SkelAnime_ChangeAnimationDefault(skelAnime, animation);
    }
}

void SkelAnime_InitSV(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 limbHeaderSeg, u32 animation,
                      Vec3s* actorDrawTable, s32 arg5, s32 limbCount) {
    SkelAnimeLimbHeader* limbHeader;

    limbHeader = SEGMENTED_TO_VIRTUAL(limbHeaderSeg);
    skelAnime->limbCount = limbHeader->limbCount + 1;
    skelAnime->dListCount = limbHeader->dListCount;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(limbHeader->limbIndexSeg);

    if (actorDrawTable == NULL) {
        skelAnime->actorDrawTbl =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->actorDrawTbl), "../z_skelanime.c", 3047);

        skelAnime->unk_24 =
            ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->unk_24), "../z_skelanime.c", 3048);
    } else {
        if (limbCount != skelAnime->limbCount) {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 0xBEC);
        }
        skelAnime->actorDrawTbl = actorDrawTable;
        skelAnime->unk_24 = arg5;
    }
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL)) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf(
            "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); // Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf("\x1b[m");
    }

    if (animation != 0) {
        SkelAnime_ChangeAnimationDefault(skelAnime, animation);
    }
}

void SkelAnime_InitSkin(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 limbHeaderSeg, u32 animation) {
    SkelAnimeLimbHeader* limbHeader;

    limbHeader = SEGMENTED_TO_VIRTUAL(limbHeaderSeg);
    skelAnime->limbCount = limbHeader->limbCount + 1;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(limbHeader->limbIndexSeg);
    skelAnime->actorDrawTbl =
        ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->actorDrawTbl), "../z_skelanime.c", 3120);
    skelAnime->unk_24 =
        ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->unk_24), "../z_skelanime.c", 3121);
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL)) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf(
            "Skeleton_Info2_skin2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_skin2_ct Memory allocation error
        osSyncPrintf("\x1b[m");
    }

    if (animation != 0) {
        SkelAnime_ChangeAnimationDefault(skelAnime, animation);
    }
}

void func_800A49B0(SkelAnime* skelAnime) {
    if (skelAnime->unk_01 < 2) {
        skelAnime->animUpdate = &func_800A4D9C;
        return;
    }
    if (skelAnime->unk_01 < 4) {
        skelAnime->animUpdate = &func_800A4EE0;
        return;
    }
    skelAnime->animUpdate = &func_800A4E38;
}

s32 SkelAnime_FrameUpdateMatrix(SkelAnime* skelAnime) {
    return skelAnime->animUpdate(skelAnime);
}

#ifdef NON_MATCHING
s32 func_800A4A20(SkelAnime* skelAnime) {
    f32 sp2C;
    f32 temp_f12;
    f32 phi_f0;

    temp_f12 = skelAnime->unk_28;
    skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.33333334f);
    phi_f0 = skelAnime->unk_28;
    if (skelAnime->unk_28 <= 0.0f) {
        sp2C = temp_f12;
        func_800A49B0(skelAnime);
        skelAnime->unk_28 = 0.0f;
        phi_f0 = skelAnime->unk_28;
    }
    func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, skelAnime->unk_24,
                  1.0f - (phi_f0 / temp_f12));
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4A20.s")
#endif

#ifdef NON_MATCHING
s32 func_800A4AD8(SkelAnime* skelAnime) {
    f32 sp28;
    s16 temp_a1;
    s16 temp_a2;
    f32 phi_f2;

    temp_a2 = (s16)(skelAnime->unk_28 * 16384.0f);
    skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.33333334f);
    if (skelAnime->unk_28 <= 0.0f) {
        func_800A49B0(skelAnime);
        skelAnime->unk_28 = 0.0f;
    }
    temp_a1 = (s16)(skelAnime->unk_28 * 16384.0f);
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
    func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, skelAnime->unk_24,
                  1.0f - phi_f2);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4AD8.s")
#endif

#ifdef NON_MATCHING
void func_800A4C58(SkelAnime* skelAnime) {
    char pad[6];
    f32 temp_f0;
    f32 temp_f10;
    Vec3s sp38[97];
    s32 temp_f8;
    f32 temp_f2;

    SkelAnime_AnimateFrame(skelAnime->animCurrent, (s32)skelAnime->animCurrentFrame, skelAnime->limbCount,
                           skelAnime->actorDrawTbl);
    if ((skelAnime->unk_01 & 1) != 0) {
        temp_f8 = (s32)skelAnime->animCurrentFrame;
        temp_f10 = temp_f8;
        temp_f8++;
        temp_f2 = skelAnime->animCurrentFrame - temp_f10;
        if (temp_f8 >= (s32)skelAnime->unk_14) {
            temp_f8 = 0;
        }
        SkelAnime_AnimateFrame(skelAnime->animCurrent, temp_f8, skelAnime->limbCount, sp38);
        func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, sp38, temp_f2);
    }
    if (skelAnime->unk_28 != 0) {
        skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.33333334f);
        temp_f0 = skelAnime->unk_28;
        if (temp_f0 <= 0.0f) {
            skelAnime->unk_28 = 0.0f;
            return;
        }
        func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, skelAnime->unk_24,
                      skelAnime->unk_28);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4C58.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
s32 func_800A4D9C(SkelAnime* skelAnime) {
    skelAnime->animCurrentFrame += (R_UPDATE_RATE * 0.33333334f) + skelAnime->animPlaybackSpeed;
    if (skelAnime->animCurrentFrame < 0.0f) {
        skelAnime->animCurrentFrame += skelAnime->unk_14;
    } else if (skelAnime->unk_14 <= skelAnime->animCurrentFrame) {
        skelAnime->animCurrentFrame -= skelAnime->unk_14;
    }
    func_800A4C58(skelAnime);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4D9C.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
s32 func_800A4E38(SkelAnime* skelAnime) {
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * (R_UPDATE_RATE * 0.33333334f);
    if (skelAnime->animCurrentFrame < skelAnime->unk_0C) {
        skelAnime->animCurrentFrame = (skelAnime->animCurrentFrame - skelAnime->unk_0C) + skelAnime->animFrameCount;
    } else {
        if (skelAnime->animFrameCount <= skelAnime->animCurrentFrame) {
            skelAnime->animCurrentFrame = (skelAnime->animCurrentFrame - skelAnime->animFrameCount) + skelAnime->unk_0C;
        }
    }
    func_800A4C58(skelAnime);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4E38.s")
#endif
#undef NON_MATCHING

s32 func_800A4EE0(SkelAnime* skelAnime) {
    f32 temp_f14;

    temp_f14 = (f32)R_UPDATE_RATE * 0.33333334f;
    if (skelAnime->animCurrentFrame == skelAnime->animFrameCount) {

        SkelAnime_AnimateFrame(skelAnime->animCurrent, (s32)skelAnime->animCurrentFrame, skelAnime->limbCount,
                               skelAnime->actorDrawTbl);
        func_800A4C58(skelAnime);
        return 1;
    }
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * temp_f14;
    if (0.0f < ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed)) {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    } else {
        if (skelAnime->animCurrentFrame < 0.0f) {
            skelAnime->animCurrentFrame += skelAnime->unk_14;
        } else {
            if (skelAnime->unk_14 <= skelAnime->animCurrentFrame) {
                skelAnime->animCurrentFrame -= skelAnime->unk_14;
            }
        }
    }
    func_800A4C58(skelAnime);
    return 0;
}

#ifdef NON_MATCHING
void SkelAnime_ChangeAnimationImpl(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 unk0, f32 frameCount,
                                   u8 unk1, f32 transitionRate, s8 unk2) {
    skelAnime->unk_01 = unk1;
    if ((transitionRate != 0.0f) && ((animation != skelAnime->animCurrent) || (unk0 != skelAnime->animCurrentFrame))) {
        if (transitionRate < 0.0f) {
            func_800A49B0(skelAnime);
            SkelAnime_CopyVec3s(skelAnime, skelAnime->unk_24, skelAnime->actorDrawTbl);
            transitionRate = -transitionRate;
        } else {
            if (unk2 != 0) {
                skelAnime->mtxUpdate = (void*)&func_800A4AD8;
                skelAnime->unk_03 = unk2;
            } else {
                skelAnime->mtxUpdate = (void*)&func_800A4A20;
            }
            SkelAnime_AnimateFrame(animation, (s32)unk0, skelAnime->limbCount, skelAnime->actorDrawTbl);
        }
        skelAnime->unk_28 = 1.0f;
        skelAnime->unk_2C = 1.0f / transitionRate;
    } else {
        func_800A49B0(skelAnime);
        SkelAnime_AnimateFrame(animation, (s32)unk0, skelAnime->limbCount, skelAnime->actorDrawTbl);
        skelAnime->unk_28 = 0.0f;
    }

    skelAnime->animCurrent = animation;
    skelAnime->unk_0C = unk0;
    skelAnime->animFrameCount = frameCount;
    skelAnime->unk_14 = (f32)func_800A1FC8(animation);
    if (skelAnime->unk_01 >= 4) {
        skelAnime->animCurrentFrame = 0.0f;
    } else {
        skelAnime->animCurrentFrame = unk0;
        if (skelAnime->unk_01 < 2) {
            skelAnime->animFrameCount = skelAnime->unk_14 - 1.0f;
        }
    }
    skelAnime->animPlaybackSpeed = playbackSpeed;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_ChangeAnimationImpl.s")
#endif
#undef NON_MATCHING

void SkelAnime_ChangeAnimation(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 unk0, f32 frameCount,
                               u8 unk1, f32 transitionRate) {
    SkelAnime_ChangeAnimationImpl(skelAnime, animation, playbackSpeed, unk0, frameCount, unk1, transitionRate, 0);
}

void func_800A51E8(SkelAnime* skelAnime, u32 animation) {
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 2, 0.0f);
}

void func_800A5240(SkelAnime* skelAnime, u32 animation, f32 transitionRate) {
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0, (f32)SkelAnime_GetFrameCount(animation), 2,
                              transitionRate);
}

void func_800A529C(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed) {
    SkelAnime_ChangeAnimation(skelAnime, animation, playbackSpeed, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 2,
                              0.0f);
}

void SkelAnime_ChangeAnimationDefault(SkelAnime* skelAnime, u32 animation) {
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 0, 0.0f);
}

void SkelAnime_ChangeAnimationTransitionRate(SkelAnime* skelAnime, u32 animation, f32 transitionRate) {
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0.0f, 0.0f, 0, transitionRate);
}

void SkelAnime_ChangeAnimationPlaybackSpeed(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed) {
    SkelAnime_ChangeAnimation(skelAnime, animation, playbackSpeed, 0.0f, (f32)SkelAnime_GetFrameCount(animation), 0,
                              0.0f);
}

void func_800A53DC(SkelAnime* skelAnime) {
    skelAnime->unk_01 = 2;
    skelAnime->animFrameCount = skelAnime->unk_14;
    func_800A49B0(skelAnime);
}

#ifdef NON_MATCHING
// regalloc
void func_800A5408(SkelAnime* skelAnime) {
    f32 animPlaybackSpeed = skelAnime->animPlaybackSpeed;
    f32 unk_C = skelAnime->unk_0C;
    f32 frameCount = skelAnime->animFrameCount;

    skelAnime->animFrameCount = unk_C;
    skelAnime->animPlaybackSpeed = -animPlaybackSpeed;
    skelAnime->unk_0C = frameCount;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A5408.s")
#endif

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

void func_800A54FC(SkelAnime* skelAnime, Vec3f* pos, s16 angle) {
    f32 x;
    f32 z;
    f32 sin;
    f32 cos;

    if ((skelAnime->unk_35 & 0x10) != 0) {
        pos->z = 0.0f;
        pos->x = 0.0f;
    } else {
        x = (f32)skelAnime->actorDrawTbl->x;
        z = (f32)skelAnime->actorDrawTbl->z;
        sin = Math_Sins(angle);
        cos = Math_Coss(angle);
        pos->x = x * cos + z * sin;
        pos->z = z * cos - x * sin;
        x = (f32)skelAnime->unk_38;
        z = (f32)skelAnime->unk_3C;
        sin = Math_Sins(skelAnime->unk_36);
        cos = Math_Coss(skelAnime->unk_36);
        pos->x -= x * cos + z * sin;
        pos->z -= z * cos - x * sin;
    }

    skelAnime->unk_36 = angle;
    skelAnime->unk_38 = skelAnime->actorDrawTbl->x;
    skelAnime->actorDrawTbl->x = skelAnime->unk_3E;
    skelAnime->unk_3C = skelAnime->actorDrawTbl->z;
    skelAnime->actorDrawTbl->z = skelAnime->unk_42;
    if ((skelAnime->unk_35 & 2) != 0) {
        if ((skelAnime->unk_35 & 0x10) != 0) {
            pos->y = 0.0f;
        } else {
            pos->y = (f32)(skelAnime->actorDrawTbl->y - skelAnime->unk_3A);
        }
        skelAnime->unk_3A = skelAnime->actorDrawTbl->y;
        skelAnime->actorDrawTbl->y = skelAnime->unk_40;
    } else {
        pos->y = 0.0f;
        skelAnime->unk_3A = skelAnime->actorDrawTbl->y;
    }
    skelAnime->unk_35 &= ~0x10;
}

s32 func_800A56C8(SkelAnime* skelAnime, f32 arg1) {
    return func_800A4478(skelAnime, arg1, 1.0f);
}

void SkelAnime_Free(SkelAnime* skelAnime, GlobalContext* globalCtx) {
    if (skelAnime->actorDrawTbl != NULL) {
        ZeldaArena_FreeDebug(skelAnime->actorDrawTbl, "../z_skelanime.c", 3729);
    } else {
        osSyncPrintf("now_joint あきまへん！！\n"); // now_joint Akimane! !
    }
    if (skelAnime->unk_24 != NULL) {
        ZeldaArena_FreeDebug(skelAnime->unk_24, "../z_skelanime.c", 3731);
        return;
    }
    osSyncPrintf("morf_joint あきまへん！！\n"); // "morf_joint Akimane !!"
}

void SkelAnime_CopyVec3s(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src) {
    s32 i;
    for (i = 0; i < skelAnime->limbCount; i++) {
        *dst++ = *src++;
    }
}
