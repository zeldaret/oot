#include <ultra64.h>
#include <global.h>

s32 func_800A4478(SkelAnime*,f32,f32);
void func_800A52F8(SkelAnime* skelAnime, u32 animation);
void func_800A54FC(SkelAnime*,Vec3f*,s16);
s32 func_800A3D70(GlobalContext*,SkelAnime*);
s32 func_800A3E0C(GlobalContext*,SkelAnime*);
void func_800A34DC(GlobalContext*,u8,Vec3s*,Vec3s*,f32);
void func_800A336C(GlobalContext* globalCtx, s32 arg1, s32 arg2, s32 limbCount, void* ram);
s32 func_800A4D9C(SkelAnime* skelAnime);
s32 func_800A4EE0(SkelAnime* skelAnime);
s32 func_800A4E38(SkelAnime* skelAnime);
void func_800A1D8C(u32,s32,u8,Vec3s*);
void func_800A2E70(u8,Vec3s*,Vec3s*,Vec3s*,f32);
void func_800A49B0(SkelAnime*);

typedef struct
{
    u32 limbIndexSeg;
    u8 limbCount;
    char unk_05[3];
    u8 dListCount;
} SkelAnimeInit;

//.data
static u32 D_8012A480 = 0;
typedef void (*testfunc)(GlobalContext*,char*);
static testfunc D_8012A484[] =
{
    (testfunc)0x800A3678,
    (testfunc)0x800A36A4,
    (testfunc)0x800A3714,
    (testfunc)0x800A3770,
    (testfunc)0x800A37F0,
    (testfunc)0x800A3874,
};

//.bss
u32 D_801600B0;

// SkelAnime_LodDrawLimb
void func_800A08A0(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable , Vec3s* actorDrawTable, SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor, s32 dListIndex)
{
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

    pos.x = limbEntry->pos.x;
    pos.y = limbEntry->pos.y;
    pos.z = limbEntry->pos.z;

    dList = limbEntry->displayLists[dListIndex];
    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList, &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (dList != NULL)
        {
            do
            {
                if(1)
                {
                    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 0x325), G_MTX_LOAD);
                    gSPDisplayList(gfxCtx->polyOpa.p++, dList);
                }
            } while(0);
        }
    }

    if (appendDlistFunc != NULL)
    {
        appendDlistFunc(globalCtx, limbIndex, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != 0xFF)
    {
        func_800A08A0(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc, appendDlistFunc, actor, dListIndex);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != 0xFF)
    {
        func_800A08A0(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable, updateMtxFunc, appendDlistFunc, actor, dListIndex);
    }
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x335);
}

// SkelAnime_LodDraw
void func_800A0B40(GlobalContext* globalCtx, u32* limbIndex, Vec3s* actorDrawTable, SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor, s32 dListIndex)
{
    SkelLimbEntry* limbEntry;
    char pad[4];
    Gfx* dList;
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    if (limbIndex == NULL)
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_Lod_draw():skelがNULLです。\n");
        osSyncPrintf("\x1b[m");
        return;
    }
    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x351);
    Matrix_Push();
    
    limbEntry = SEGMENTED_TO_VIRTUAL(*limbIndex);
    pos.x = (f32) actorDrawTable->x;
    pos.y = (f32) actorDrawTable->y;
    pos.z = (f32) actorDrawTable->z;

    rot = actorDrawTable[1]; 
    dList = limbEntry->displayLists[dListIndex];

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &dList, &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (dList != NULL)
        {
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 0x371), G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList);
        }
    }
    if (appendDlistFunc != NULL)
    {
        appendDlistFunc(globalCtx, 1, &dList, &rot, actor);
    }
    if (limbEntry->firstChildIndex != 0xFF)
    {
        func_800A08A0(globalCtx, limbEntry->firstChildIndex, limbIndex, actorDrawTable, updateMtxFunc, appendDlistFunc, actor, dListIndex);
    }
    Matrix_Pull();
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x37E);
}

#ifdef NON_MATCHING
// SkelAnime_LodDrawLimbSV
void func_800A0D94(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable,
                   SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc,
                   Actor* actor, s32 dListIndex, Mtx** mtx)
{
    Gfx* dList[2];
    GraphicsContext* gfxCtx;
    SkelLimbEntry* limbEntry;
    Vec3f pos;
    Vec3s rot;
    Gfx* gfx[3];

    Matrix_Push();

    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;

    rot = actorDrawTable[limbIndex];
    pos.x = limbEntry->pos.x;
    pos.y = limbEntry->pos.y;
    pos.z = limbEntry->pos.z;
    dList[1] = dList[0] = limbEntry->displayLists[dListIndex];
    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList[1], &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (dList[1] != NULL)
        {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 945); gfxCtx = globalCtx->state.gfxCtx; 
            func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 946);
            gSPMatrix(gfxCtx->polyOpa.p++, *mtx, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList[1]);
            func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 949);
            (*mtx)++;
        }
        else if (dList[0] != 0)
        {
            Matrix_ToMtx(*mtx, "../z_skelanime.c", 954);
            (*mtx)++;
        }
    }
    if (appendDlistFunc != NULL)
    {
        appendDlistFunc(globalCtx, limbIndex, &dList[1], &rot, actor);
    }
    if (limbEntry->firstChildIndex != 0xFF)
    {
        func_800A0D94(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable,
                      updateMtxFunc, appendDlistFunc, actor, dListIndex, mtx);
    }

    Matrix_Pull();
    
    if (limbEntry->nextLimbIndex != 0xFF)
    {
        func_800A0D94(globalCtx, limbEntry->nextLimbIndex, limbTable,
                      actorDrawTable, updateMtxFunc, appendDlistFunc, actor, dListIndex, mtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A0D94.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
// SkelAnime_LodDrawSV
void func_800A106C(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable, s32 limbCount,
                   SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, 
                   Actor* actor, s32 dListIndex)
{
    SkelLimbEntry *limbEntry;
    Gfx* dList[2];
    Vec3f pos;
    Vec3s rot;
    Mtx* mtx;
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    do
    {
        if(1)
        {
            mtx = Graph_Alloc(globalCtx->state.gfxCtx, limbCount * 0x40);
        }
    } while(0);
    
    if (limbTable == NULL)
    {
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
    
    dList[0] = dList[1] = limbEntry->displayLists[dListIndex];
    
    if ((updateMtxFunc == 0) || (updateMtxFunc(globalCtx, 1, &dList[1], &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (dList[1] != NULL)
        {
            mtx = Matrix_ToMtx(mtx, "../z_skelanime.c", 1033);
            gSPMatrix(gfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList[1]);
            mtx++;
        }
        else if (dList[0] != NULL)
        {
            Matrix_ToMtx(mtx, "../z_skelanime.c", 1040);
            mtx++;
        }
    }

    if (appendDlistFunc != 0)
    {
        appendDlistFunc(globalCtx, 1, &dList[0], &rot, actor);
    }
    if (limbEntry->firstChildIndex != 0xFF)
    {
        func_800A0D94(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc, appendDlistFunc, actor, dListIndex, &mtx);
    }
    Matrix_Pull();
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1053);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A106C.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
// SkelAnime_DrawLimb
void func_800A1344(GlobalContext* globalCtx, s32 limbIndex, u32* limbTable, Vec3s* actorDrawTable, SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor)
{
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];
    SkelLimbEntry* limbEntry;
    Vec3s rot;
    Vec3f pos;
    Gfx* dList;

    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x434);
    Matrix_Push();
    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbIndex++;
    rot = actorDrawTable[limbIndex];
    pos.x = (f32) limbEntry->pos.x;
    pos.y = (f32) limbEntry->pos.y;
    pos.z = (f32) limbEntry->pos.z;
    dList = limbEntry->dList;
    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &dList, &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (dList != NULL)
        {
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_skelanime.c", 0x44F), G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList);
        }
    }

    if (appendDlistFunc != NULL)
    {
        appendDlistFunc(globalCtx, limbIndex, &dList, &rot, actor);
    }

    if (limbEntry->firstChildIndex != 0xFF)
    {
        func_800A1344(globalCtx, limbEntry->firstChildIndex, limbTable,
                      actorDrawTable, updateMtxFunc, appendDlistFunc, actor);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != 0xFF)
    {
        func_800A1344(globalCtx, limbEntry->nextLimbIndex, limbTable,
                      actorDrawTable, updateMtxFunc, appendDlistFunc, actor);
    }

    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x461);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1344.s")
#endif

#ifdef NON_MATCHING
void SkelAnime_Draw(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable, SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor)
{
    SkelLimbEntry* rootLimb;
    Vec3s rot;
    Vec3f pos;
    Gfx* dList;
    GraphicsContext* gfxCtx;
    Gfx* gfx[5];

    if (limbTable == NULL)
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_draw():skelがNULLです。\n"); // Si2_draw (): skel is NULL.
        osSyncPrintf("\x1b[m");
        return;
    }

    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1148);
    Matrix_Push();
    rootLimb = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = (f32) actorDrawTable[0].x;
    pos.y = (f32) actorDrawTable[0].y;
    pos.z = (f32) actorDrawTable[0].z;

    rot = actorDrawTable[1];
    dList = rootLimb->dList;

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &dList, &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (dList != NULL)
        {
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_skelanime.c", 1176), G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, dList);
        }
    }

    if (appendDlistFunc != NULL)
    {
        appendDlistFunc(globalCtx, 1, &dList, &rot, actor);
    }

    if (rootLimb->firstChildIndex != 0xFF)
    {
        func_800A1344(globalCtx, rootLimb->firstChildIndex, limbTable,
                      actorDrawTable, updateMtxFunc, appendDlistFunc, actor);
    }

    Matrix_Pull();
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1190);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_Draw.s")
#endif

#ifdef NON_MATCHING
// SkelAnime_Draw2Limb
void func_800A180C(GlobalContext *globalCtx, u32 limbIndex, u32* limbTable, Vec3s* actorDrawTable, SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor, Mtx** limbMatricies)
{
    Gfx* limbDlist[2];
    Vec3f limbPos;
    Vec3s limbRot;
    GraphicsContext *gfxCtx;
    Gfx* sp34[3];
    SkelLimbEntry* limbEntry;

    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(sp34, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x4BE);
    Matrix_Push();
    limbEntry = SEGMENTED_TO_VIRTUAL(limbTable[limbIndex]);
    limbRot = actorDrawTable[++limbIndex];

    limbPos.x = (f32) limbEntry->pos.x;
    limbPos.y = (f32) limbEntry->pos.y;
    limbPos.z = (f32) limbEntry->pos.z;

    limbDlist[0] = limbEntry->dList;
    limbDlist[1] = limbEntry->dList;

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, limbIndex, &limbDlist[0], &limbPos, &limbRot, actor) == 0))
    {
        func_800D1340(&limbPos, &limbRot);
        if (limbDlist[0] != NULL)
        {
            Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 0x4DA);
            gSPMatrix(gfxCtx->polyOpa.p++, *limbMatricies, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, &limbDlist[0]);
            (*limbMatricies)++;
        }
        else
        {
            if (&limbDlist[1] != 0)
            {
                Matrix_ToMtx(*limbMatricies, "../z_skelanime.c", 0x4E1);
                (*limbMatricies)++;
            }
        }
    }

    if (appendDlistFunc != NULL)
    {
        appendDlistFunc(globalCtx, limbIndex, &limbDlist[1], &limbRot, actor);
    }

    if (limbEntry->firstChildIndex != 0xFF)
    {
        func_800A180C(globalCtx, limbEntry->firstChildIndex, limbTable, actorDrawTable, updateMtxFunc, appendDlistFunc, actor, limbMatricies);
    }

    Matrix_Pull();

    if (limbEntry->nextLimbIndex != 0xFF)
    {
        func_800A180C(globalCtx, limbEntry->nextLimbIndex, limbTable, actorDrawTable,
                      updateMtxFunc, appendDlistFunc, actor, limbMatricies);
    }

    func_800C6B54(sp34, globalCtx->state.gfxCtx, "../z_skelanime.c", 0x4F1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A180C.s")
#endif

#ifdef NON_MATCHING
// SkelAnime_Draw2
void func_800A1AC8(GlobalContext* globalCtx, u32* limbTable, Vec3s* actorDrawTable, u32 dListCount, SkelAnime_LimbUpdateMatrix updateMtxFunc, SkelAnime_LimbAppendDlist appendDlistFunc, Actor* actor)
{
    SkelLimbEntry *rootLimb;
    Gfx* skelDlist[2];
    Vec3f pos;
    Vec3s rot;
    GraphicsContext* gfxCtx;
    Mtx* limbMatricies;
    Gfx *gfx[5];

    limbMatricies = Graph_Alloc(globalCtx->state.gfxCtx, dListCount << 6);

    if (limbTable == NULL)
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Si2_draw_SV():skelがNULLです。\n"); //Si2_draw_SV (): skel is NULL.
        osSyncPrintf("\x1b[m");
        return;
    }

    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1294);

    gSPSegment(gfxCtx->polyOpa.p++, 0xD, limbMatricies);
    Matrix_Push();
    rootLimb = SEGMENTED_TO_VIRTUAL(*limbTable);

    pos.x = (f32) actorDrawTable[0].x;
    pos.y = (f32) actorDrawTable[0].y;
    pos.z = (f32) actorDrawTable[0].z;

    rot = actorDrawTable[1];

    skelDlist[0] = skelDlist[1] = rootLimb->dList;

    if ((updateMtxFunc == NULL) || (updateMtxFunc(globalCtx, 1, &skelDlist[0], &pos, &rot, actor) == 0))
    {
        func_800D1340(&pos, &rot);
        if (skelDlist[0] != NULL)
        {
            Matrix_ToMtx(limbMatricies, "../z_skelanime.c", 1327);
            gSPMatrix(gfxCtx->polyOpa.p++, limbMatricies, G_MTX_LOAD);
            gSPDisplayList(gfxCtx->polyOpa.p++, skelDlist[0]);
            limbMatricies++;
        }
        else
        {
            if (skelDlist[1] != 0)
            {
                Matrix_ToMtx(limbMatricies, "../z_skelanime.c", 1334);
                limbMatricies++;
            }
        }
    }

    if (appendDlistFunc != 0)
    {
        appendDlistFunc(globalCtx, 1, &skelDlist[1], &rot, actor);
    }

    if (rootLimb->firstChildIndex != 0xFF)
    {
        func_800A180C(globalCtx, rootLimb->firstChildIndex, limbTable, actorDrawTable,
                      updateMtxFunc, appendDlistFunc, actor, &limbMatricies);
    }

    Matrix_Pull();
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_skelanime.c", 1347);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1AC8.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
typedef struct
{
    s16 animFrameCount;
    u32 rotationValuesSeg;
    u32 actorDrawTableSeg;
    s16 limit;
} AnimationHeader;

typedef struct
{
    Vec3s pos;
    Vec3s rotations[1];
} RotationIndex;

u16 func_800A1D8C(u32 animationSeg, s32 arg1, s32 arg2, Vec3s* arg3)
{
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s4;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    void *temp_v0;
    void *phi_s0;
    void *phi_s1;
    s32 phi_s4;
    u16 phi_return;
    AnimationHeader* animation;
    Vec3s* rotationValues;
    u32* limbTable;
    u32 i;

    animation = SEGMENTED_TO_VIRTUAL(animationSeg);
    rotationValues = SEGMENTED_TO_VIRTUAL(animation->rotationValuesSeg);

    phi_return = temp_v0;
    for(i = 0;i < arg2; i++){

    }
    if (arg2 > 0)
    {
        temp_s3 = (arg1 * 2) + temp_s2;
        phi_s0 = arg3;
        phi_s1 = (*(&gSegments + (((u32) (temp_v0->unk8 * 0x10) >> 0x1C) * 4)) + (temp_v0->unk8 & 0xFFFFFF)) + 0x80000000;
        phi_s4 = 0;
loop_2:
        if ((((phi_s0 == 0) || (phi_s1 == 0)) || (temp_s3 == 0)) || (temp_s2 == 0))
        {
            LogUtils_LogThreadId("../z_skelanime.c", 0x570);
            osSyncPrintf("out = %08x\n", phi_s0);
            LogUtils_LogThreadId("../z_skelanime.c", 0x571);
            osSyncPrintf("ref_tbl = %08x\n", phi_s1);
            LogUtils_LogThreadId("../z_skelanime.c", 0x572);
            osSyncPrintf("frame_tbl = %08x\n", temp_s3);
            LogUtils_LogThreadId("../z_skelanime.c", 0x573);
            osSyncPrintf("tbl = %08x\n", temp_s2);
        }
        else
        {

        }
        temp_v0_2 = phi_s1->unk0;
        temp_s4 = phi_s4 + 1;
        if (temp_v0_2 >= temp_v0->unkC)
        {
            phi_s0->unk0 = (s16) *(temp_s3 + (temp_v0_2 * 2));
        }
        else
        {
            phi_s0->unk0 = (s16) *(temp_s2 + (temp_v0_2 * 2));
        }
        temp_v0_3 = phi_s1->unk2;
        if (temp_v0_3 >= temp_v0->unkC)
        {
            phi_s0->unk2 = (s16) *(temp_s3 + (temp_v0_3 * 2));
        }
        else
        {
            phi_s0->unk2 = (s16) *(temp_s2 + (temp_v0_3 * 2));
        }
        temp_v0_4 = phi_s1->unk4;
        if (temp_v0_4 >= temp_v0->unkC)
        {
            phi_s0->unk4 = (s16) *(temp_s3 + (temp_v0_4 * 2));
        }
        else
        {
            phi_s0->unk4 = (s16) *(temp_s2 + (temp_v0_4 * 2));
        }
        phi_s0 = phi_s0 + 6;
        phi_s1 = phi_s1 + 6;
        phi_s4 = temp_s4;
        phi_return = temp_v0_4;
        if (temp_s4 != arg2)
        {
            goto loop_2;
        }
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1D8C.s")
#endif

s32 func_800A1FC8(s32 arg0)
{
    u16* virt = (u16*)SEGMENTED_TO_VIRTUAL(arg0);
    return (s16)(*virt);
}

s32 SkelAnime_GetFrameCount(u32 animation)
{
    u16* virt = (u16*)SEGMENTED_TO_VIRTUAL(animation);

    return (s16)(*virt - 1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2044.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2288.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A24A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A273C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A29BC.s")

s16 func_800A2DBC(s32 arg0)
{
    u16* virt = SEGMENTED_TO_VIRTUAL(arg0);

    return virt[1];
}

s16 func_800A2DF4(s32 arg0)
{
    u16* virt = SEGMENTED_TO_VIRTUAL(arg0);

    return *virt;
}

s32 func_800A2E2C(s32 arg0){
    s16* virt = SEGMENTED_TO_VIRTUAL(arg0);

    return (s16)(*virt - 1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2E70.s")

void func_800A32EC(u16* arg0)
{
    *arg0 = 0;
}

void func_800A32F4(s32 arg0)
{
    D_801600B0 *= 2;
}

void func_800A3310(void* arg0)
{
    u32* D_8012A480Ptr = &D_8012A480;

    *D_8012A480Ptr |= D_801600B0;
}

AnimationEntry* func_800A3334(AnimationContext* animationCtx, s32 arg1)
{
    AnimationEntry *entry;
    s16 index = animationCtx->animationCount;

    if (index >= 0x32)
    {
        return NULL;
    }
    animationCtx->animationCount = index + 1;
    entry = &animationCtx->entries[index];
    entry->unk_00 = arg1;
    return entry;
}

#ifdef NON_MATCHING
typedef struct
{
    u32 unk_00;
    u32 rom;
} anim;

void func_800A336C(GlobalContext* globalCtx, s32 arg1, s32 arg2, s32 limbCount, void* ram)
{
    s32 sp3C;
    anim *sp38;
    s32 sp30;
    OSMesgQueue temp_a0;
    s32 temp_a3;
    s32 temp_at;
    AnimationEntry* temp_ret;
    DmaRequest req;

    temp_ret = func_800A3334(&globalCtx->animationCtx, 0);
    if (temp_ret != NULL)
    {
        temp_a0 = temp_ret->msgQueue;
        sp38 = SEGMENTED_TO_VIRTUAL(arg1);
        sp3C = temp_ret;
        osCreateMesgQueue(temp_ret, &temp_ret->msg, 1);
        temp_a3 = sizeof(Vec3s) * limbCount;
        DmaMgr_SendRequest2(&req, ram, ((sp38->rom + (u32)&_link_animetionSegmentRomStart) - 0x7000000) + (temp_a3 * arg2), temp_a3, 0, &temp_ret->msgQueue, NULL, "../z_skelanime.c" , 0x7D4);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A336C.s")
#endif
#undef NON_MATCHING

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3478.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A34DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3548.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A35B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3620.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3678.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A36A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3714.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3770.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A37F0.s")

typedef struct {
    Actor* actor;
    SkelAnime* skelAnime;
    f32 unk_8;
} UNK_800A3874_A1;

void func_800A3874(s32 arg0, UNK_800A3874_A1* arg1)
{
    char pad[4];
    Actor* temp_v0 = arg1->actor;
    Vec3f pos;

    func_800A54FC(arg1->skelAnime, &pos, temp_v0->shape.rot.y);
    temp_v0->posRot.pos.x += pos.x * temp_v0->scale.x;
    temp_v0->posRot.pos.y += pos.y * temp_v0->scale.y * arg1->unk_8;
    temp_v0->posRot.pos.z += pos.z * temp_v0->scale.z;
}

void func_800A390C(GlobalContext* globalCtx, AnimationContext* animationCtx)
{
    AnimationEntry* entry;

    for(entry = animationCtx->entries; animationCtx->animationCount != 0; entry++, animationCtx->animationCount--)
    {
        D_8012A484[entry->unk_00](globalCtx, entry->unk_04);
    }

    D_801600B0 = 1;
    D_8012A480 = 0;
}

#ifdef NON_MATCHING
// some kind of init
void func_800A3F08(GlobalContext*,SkelAnime*,s32,f32,f32,f32,s8,f32);
void func_800A39AC(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 skelAnimeInitSeg, s32 arg3, s8 arg4, Vec3s* actorDrawTable, s32 arg6, s32 arg7)
{
    SkelAnimeInit* skelAnimeInit;
    u8 flag;
    size_t size;

    skelAnimeInit = SEGMENTED_TO_VIRTUAL(skelAnimeInitSeg);
    skelAnime->unk_34 = arg4;
    flag = arg4 & 2 == 0 ? 1U : skelAnimeInit->limbCount;
    if ((arg4 & 2) != 0)
    {
        flag = skelAnimeInit->limbCount;
    }
    else
    {
        flag = 1;
    }

    if((arg4 & 1) != 0)
    {
        flag += skelAnimeInit->limbCount;
    }

    if((arg4 & 4) != 0)
    {
        flag += skelAnimeInit->limbCount;
    }

    skelAnime->limbCount = flag;
    skelAnime->dListCount = skelAnimeInit->dListCount;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(skelAnimeInit->limbIndexSeg);
    size = sizeof(Vec3s);
    if ((arg4 & 8) != 0)
    {
        size += 2;
    }

    if (actorDrawTable == NULL)
    {
        skelAnime->actorDrawTbl = ZeldaArena_MallocDebug(size, "../z_skelanime.c", 2364);
        skelAnime->unk_24 = ZeldaArena_MallocDebug(size, "../z_skelanime.c", 2365);
    }
    else
    {
        if (arg7 != flag)
        {
            __assert("joint_buff_num == joint_num", "../z_skelanime.c", 2369);
        }
        skelAnime->actorDrawTbl = ALIGN16((u32)actorDrawTable);
        skelAnime->unk_24 = ALIGN16(arg6);

    }
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL))
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); //Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf("\x1b[m");
    }

    func_800A3F08(globalCtx, skelAnime, arg3, 1.0f, 0.0f, 0.0f, 0, 0.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A39AC.s")
#endif
#undef NON_MATCHING

void func_800A3B8C(SkelAnime* skelAnime)
{
    if (skelAnime->unk_01 < 2)
    {
        skelAnime->mtxUpdate = &func_800A3D70;
    }
    else
    {
        skelAnime->mtxUpdate = &func_800A3E0C;
    }
    skelAnime->unk_28 = 0.0f;
}

//SkelAnime_FrameUpdateMatrixGlobalCtx
void func_800A3BC0(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    skelAnime->mtxUpdate(globalCtx, skelAnime);
}

#ifdef NON_MATCHING
s32 func_800A3BE4(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    f32 prevUnk28 = skelAnime->unk_28;
    skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.5f);
    if (skelAnime->unk_28 <= 0.0f)
    {
        func_800A3B8C(skelAnime);
    }
    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24, 1.0f - (skelAnime->unk_28 / prevUnk28));
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3BE4.s")
#endif

void func_800A3C9C(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    f32 updateRate;

    func_800A336C(globalCtx, skelAnime->animCurrent, skelAnime->animCurrentFrame, skelAnime->limbCount, skelAnime->actorDrawTbl);
    if (skelAnime->unk_28 != 0)
    {
        updateRate = R_UPDATE_RATE * 0.5f;
        skelAnime->unk_28 -= skelAnime->unk_2C * updateRate;
        if (skelAnime->unk_28 <= 0.0f)
        {
            skelAnime->unk_28 = 0.0f;
            return;
        }
        func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24, skelAnime->unk_28);
    }
}

s32 func_800A3D70(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (skelAnime->animCurrentFrame < 0.0f)
    {
        skelAnime->animCurrentFrame += skelAnime->unk_14;
    }
    else
    {
        if (skelAnime->unk_14 <= skelAnime->animCurrentFrame){
            skelAnime->animCurrentFrame -= skelAnime->unk_14;
        }
    }
    func_800A3C9C(globalCtx, skelAnime);
    return 0;
}

// returns 1 if animation is done?
s32 func_800A3E0C(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    if (skelAnime->animCurrentFrame == skelAnime->animFrameCount)
    {
        func_800A3C9C(globalCtx, skelAnime);
        return 1;
    }
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * updateRate;
    if (0.0f < ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed))
    {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    }
    else
    {
        if (skelAnime->animCurrentFrame < 0.0f)
        {
            skelAnime->animCurrentFrame += skelAnime->unk_14;
        }
        else
        {
            if (skelAnime->unk_14 <= skelAnime->animCurrentFrame)
            {
                skelAnime->animCurrentFrame -= skelAnime->unk_14;
            }
        }
    }
    func_800A3C9C(globalCtx, skelAnime);
    return 0;
}


void func_800A3EE8(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 arg2)
{
    skelAnime->unk_28 = 1.0f;
    skelAnime->unk_2C = 1.0f / arg2;
}

s32 func_800A3BE4(GlobalContext* globalCtx, SkelAnime* skelAnime);
void func_800A3F08(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 arg4, f32 frameCount, u8 arg6, f32 arg7);
#ifdef NON_MATCHING
void func_800A3F08(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 arg4, f32 frameCount, u8 arg6, f32 arg7)
{

    skelAnime->unk_01 = arg6;
    if ((arg7 != 0.0f) &&
        ((animation == skelAnime->animCurrent) || (arg4 != skelAnime->animCurrentFrame)))
    {
        if(arg7 < 0.0f)
        {
            func_800A3B8C(skelAnime);
            func_800A5774(skelAnime, skelAnime->unk_24, skelAnime->actorDrawTbl);
            arg7 = -arg7;
        }
        else
        {
            skelAnime->mtxUpdate = &func_800A3BE4;
            func_800A336C(globalCtx, animation, (s32) arg4, skelAnime->limbCount, skelAnime->unk_24);
        }
        skelAnime->unk_28 = 1.0f;
        skelAnime->unk_2C = 1.0f / arg7;
    }
    else
    {
        func_800A3B8C(skelAnime);
        func_800A336C(globalCtx, animation, (s32) arg4, skelAnime->limbCount, skelAnime->actorDrawTbl);
        skelAnime->unk_28 = 0.0f;
    }

    skelAnime->animCurrentFrame = animation;
    skelAnime->unk_0C = arg4;
    skelAnime->animCurrentFrame = arg4;
    skelAnime->animFrameCount = frameCount;
    skelAnime->unk_14 = func_800A1FC8(animation);
    skelAnime->animPlaybackSpeed = playbackSpeed;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3F08.s")
#endif
#undef NON_MATCHING

void func_800A407C(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation)
{
    func_800A3F08(globalCtx, skelAnime, animation, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 2, 0.0f);
}

void func_800A40DC(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 playbackSpeed)
{
    func_800A3F08(globalCtx, skelAnime, animation, playbackSpeed, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 2, 0.0f);
}

void func_800A4140(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation)
{
    func_800A3F08(globalCtx, skelAnime, animation, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 0, 0.0f);
}

void func_800A419C(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 animation, f32 playbackSpeed)
{
    func_800A3F08(globalCtx, skelAnime, animation, playbackSpeed, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 0, 0.0f);
}

void func_800A3478(GlobalContext*,u8,Vec3s*,Vec3s*);
void func_800A41FC(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    func_800A3478(globalCtx, skelAnime->limbCount, skelAnime->unk_24, skelAnime->actorDrawTbl);
}

void func_800A422C(GlobalContext* globalCtx, SkelAnime* skelAnime)
{
    func_800A3478(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24);
}

void func_800A425C(GlobalContext* globalCtx, SkelAnime* skelAnime, s32 arg2, f32 arg3)
{
    func_800A336C(globalCtx, arg2, (s32) arg3, skelAnime->limbCount, skelAnime->unk_24);
}

void func_800A42A0(GlobalContext* globalCtx, SkelAnime* skelAnime, s32 arg2, f32 arg3)
{
    func_800A336C(globalCtx, arg2, (s32) arg3, skelAnime->limbCount, skelAnime->actorDrawTbl);
}

void func_800A42E4(GlobalContext* globalCtx, SkelAnime* skelAnime, f32 arg2)
{
    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->unk_24, arg2);
}

void func_800A431C(GlobalContext* globalCtx, SkelAnime* skelAnime, s32 arg2, f32 arg3, s32 arg4, f32 arg5, f32 arg6, s32 arg7)
{
    s32 alignedAddr;
    func_800A336C(globalCtx, arg2, (s32) arg3, skelAnime->limbCount, skelAnime->actorDrawTbl);

    alignedAddr = ALIGN16(arg7);

    func_800A336C(globalCtx, arg4, (s32) arg5, skelAnime->limbCount, alignedAddr);
    func_800A34DC(globalCtx, skelAnime->limbCount, skelAnime->actorDrawTbl, alignedAddr, arg6);
}

#ifdef NON_MATCHING
void func_800A43B8(s32 arg0, void *arg1, ? arg2, f32 arg3, s32 arg4, f32 arg5, f32 arg6, s32 arg7)
{
    s32 sp28;
    s32 temp_v0;

    func_800A336C(arg3, arg2, (s32) arg3, arg1->unk0, (s32) arg1->unk24);
    temp_v0 = (arg7 + 0xF) & -0x10;
    sp28 = temp_v0;
    func_800A336C(arg0, arg4, (s32) arg5, arg1->unk0, temp_v0);
    func_800A34DC(arg0, arg1->unk0, arg1->unk24, sp28, arg6);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A43B8.s")
#endif

void func_800A4454(SkelAnime* skelAnime)
{
    skelAnime->unk_01 = 2;
    func_800A3B8C(skelAnime);
}


s32 func_800A4478(SkelAnime* skelAnime, f32 arg1, f32 updateRate)
{
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;

    temp_f0 = skelAnime->animPlaybackSpeed * updateRate;
    temp_f2 = skelAnime->animCurrentFrame - temp_f0;
    if (temp_f2 < 0.0f)
    {
        temp_f2 += skelAnime->unk_14;
    }
    else
    {
        temp_f2 = temp_f2;
        if (skelAnime->unk_14 <= temp_f2)
        {
            temp_f2 = temp_f2 - skelAnime->unk_14;
        }
    }
    if (arg1 == 0.0f)
    {
        if (0.0f < temp_f0)
        {
            arg1 = skelAnime->unk_14;
        }
    }
    temp_f12 = (temp_f2 + temp_f0) - arg1;
    if (0.0f <= (temp_f12 * temp_f0))
    {
        if (((temp_f12 - temp_f0) * temp_f0) < 0.0f)
        {
            return 1;
        }
    }
    return 0;
}

s32 func_800A4530(SkelAnime* skelAnime, f32 arg1)
{
    f32 updateRate = R_UPDATE_RATE * 0.5f;

    return func_800A4478(skelAnime, arg1, updateRate);
}

void SkelAnime_Init(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 skelAnimeInitSeg, u32 animation, Vec3s* actorDrawTable, s32 arg5, s32 limbCount)
{
    SkelAnimeInit* skelAnimeInit;

    skelAnimeInit = SEGMENTED_TO_VIRTUAL(skelAnimeInitSeg);
    skelAnime->limbCount = skelAnimeInit->limbCount + 1;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(skelAnimeInit->limbIndexSeg);
    if (actorDrawTable == NULL)
    {
        skelAnime->actorDrawTbl = ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->actorDrawTbl), "../z_skelanime.c", 2968);
        skelAnime->unk_24 = ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->unk_24), "../z_skelanime.c", 2969);
    }
    else
    {
        if (limbCount != skelAnime->limbCount)
        {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 2973);
        }
        skelAnime->actorDrawTbl = actorDrawTable;
        skelAnime->unk_24 = arg5;
    }
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL))
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Skeleton_Info2_ct メモリアロケーションエラー\n"); // Skeleton_Info2_ct memory allocation error
        osSyncPrintf("\x1b[m");
    }

    if (animation != 0)
    {
        func_800A52F8(skelAnime, animation);
    }
}

// another init
void func_800A46F8(GlobalContext* globalCtx, SkelAnime* skelAnime, u32 skelAnimeInitSeg, u32 animation, Vec3s* actorDrawTable, s32 arg5, s32 limbCount)
{
    SkelAnimeInit *skelAnimeInit;

    skelAnimeInit = SEGMENTED_TO_VIRTUAL(skelAnimeInitSeg);
    skelAnime->limbCount = skelAnimeInit->limbCount + 1;
    skelAnime->dListCount = skelAnimeInit->dListCount;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(skelAnimeInit->limbIndexSeg);

    if (actorDrawTable == NULL)
    {
        skelAnime->actorDrawTbl = ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->actorDrawTbl), "../z_skelanime.c", 3047);
        skelAnime->unk_24 = ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->unk_24), "../z_skelanime.c", 3048);
    }
    else
    {
        if (limbCount != skelAnime->limbCount)
        {
            __assert("joint_buff_num == this->joint_num", "../z_skelanime.c", 0xBEC);
        }
        skelAnime->actorDrawTbl = actorDrawTable;
        skelAnime->unk_24 = arg5;
    }
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL))
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"); // Skeleton_Info_Rom_SV_ct Memory allocation error
        osSyncPrintf("\x1b[m");
    }

    if (animation != 0)
    {
        func_800A52F8(skelAnime, animation);
    }
}

// some kind of init
void func_800A487C(GlobalContext* globalCtx, SkelAnime *skelAnime, u32 skelAnimeInitSeg, u32 animation)
{
    SkelAnimeInit *skelAnimeInit;

    skelAnimeInit = SEGMENTED_TO_VIRTUAL(skelAnimeInitSeg);
    skelAnime->limbCount = skelAnimeInit->limbCount + 1;
    skelAnime->limbIndex = SEGMENTED_TO_VIRTUAL(skelAnimeInit->limbIndexSeg);
    skelAnime->actorDrawTbl = ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->actorDrawTbl), "../z_skelanime.c", 3120);
    skelAnime->unk_24 = ZeldaArena_MallocDebug(skelAnime->limbCount * sizeof(*skelAnime->unk_24), "../z_skelanime.c", 3121);
    if ((skelAnime->actorDrawTbl == NULL) || (skelAnime->unk_24 == NULL))
    {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Skeleton_Info2_skin2_ct メモリアロケーションエラー\n"); //Skeleton_Info2_skin2_ct Memory allocation error
        osSyncPrintf("\x1b[m");
    }

    if (animation != 0)
    {
        func_800A52F8(skelAnime, animation);
    }
}

void func_800A49B0(SkelAnime* skelAnime)
{
    if (skelAnime->unk_01 < 2)
    {
        skelAnime->mtxUpdate = &func_800A4D9C;
        return;
    }
    if (skelAnime->unk_01 < 4)
    {
        skelAnime->mtxUpdate = &func_800A4EE0;
        return;
    }
    skelAnime->mtxUpdate = &func_800A4E38;
}


s32 SkelAnime_FrameUpdateMatrix(SkelAnime* skelAnime){
    return skelAnime->mtxUpdate(skelAnime);
}

#ifdef NON_MATCHING
s32 func_800A4A20(SkelAnime* skelAnime)
{
    f32 sp2C;
    f32 temp_f12;
    f32 phi_f0;

    temp_f12 = skelAnime->unk_28;
    skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.33333334f);
    phi_f0 = skelAnime->unk_28;
    if (skelAnime->unk_28 <= 0.0f)
    {
        sp2C = temp_f12;
        func_800A49B0(skelAnime);
        skelAnime->unk_28 = 0.0f;
        phi_f0 = skelAnime->unk_28;
    }
    func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, skelAnime->unk_24, 1.0f - (phi_f0 / temp_f12));
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4A20.s")
#endif

#ifdef NON_MATCHING
s32 func_800A4AD8(SkelAnime* skelAnime)
{
    f32 sp28;
    s16 temp_a1;
    s16 temp_a2;
    f32 phi_f2;

    temp_a2 = (s16)(skelAnime->unk_28 * 16384.0f);
    skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.33333334f);
    if (skelAnime->unk_28 <= 0.0f)
    {
        func_800A49B0(skelAnime);
        skelAnime->unk_28 = 0.0f;
    }
    temp_a1 = (s16)(skelAnime->unk_28 * 16384.0f);
    if (skelAnime->unk_03 < 0)
    {
        sp28 = 1.0f - Math_Coss(temp_a2);
        phi_f2 = 1.0f - Math_Coss(temp_a1);
    }
    else
    {
        sp28 = Math_Sins(temp_a2);
        phi_f2 = Math_Sins(temp_a1);
    }
    if (phi_f2 != 0.0f)
    {
        phi_f2 /= sp28;
    }
    else
    {
        phi_f2 = 0.0f;
    }
    func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, skelAnime->unk_24, 1.0f - phi_f2);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4AD8.s")
#endif

#ifdef NON_MATCHING
// close
void func_800A4C58(SkelAnime* skelAnime)
{
    Vec3s sp38[98];
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_f10;
    s32 temp_f8;

    func_800A1D8C(skelAnime->animCurrent, (s32) skelAnime->animPlaybackSpeed, skelAnime->limbCount, skelAnime->actorDrawTbl);
    if ((skelAnime->unk_01 & 1) != 0)
    {
        temp_f8 = (s32) skelAnime->animCurrentFrame;
        temp_f10 = temp_f8;
        temp_f8 = temp_f8 + 1;
        temp_f2 = skelAnime->animCurrentFrame - (f32) temp_f10;
        if (temp_f8 >= (s32) skelAnime->unk_14)
        {
            temp_f8 = 0;
        }
        func_800A1D8C(skelAnime->animCurrent, temp_f8, skelAnime->limbCount, sp38);
        func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, &sp38, temp_f2);
    }
    if (0.0f != skelAnime->unk_28)
    {
        skelAnime->unk_28 -= skelAnime->unk_2C * (R_UPDATE_RATE * 0.33333334f);
        temp_f0 = skelAnime->unk_28;
        if (temp_f0 <= 0.0f)
        {
            skelAnime->unk_28 = 0.0f;
            return;
        }
        func_800A2E70(skelAnime->limbCount, skelAnime->actorDrawTbl, skelAnime->actorDrawTbl, skelAnime->unk_24, skelAnime->unk_28);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4C58.s")
#endif
#undef NON_MATCHING

#ifdef NON_MATCHING
//reg alloc
s32 func_800A4D9C(SkelAnime* skelAnime)
{
    skelAnime->animCurrentFrame += (R_UPDATE_RATE * 0.33333334f) + skelAnime->animPlaybackSpeed;
    if (skelAnime->animCurrentFrame < 0.0f)
    {
        skelAnime->animCurrentFrame += skelAnime->unk_14;
    }
    else if (skelAnime->unk_14 <= skelAnime->animCurrentFrame)
    {
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
//reg alloc
s32 func_800A4E38(SkelAnime* skelAnime)
{
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * (R_UPDATE_RATE * 0.33333334f);
    if (skelAnime->animCurrentFrame < skelAnime->unk_0C)
    {
        skelAnime->animCurrentFrame = (skelAnime->animCurrentFrame - skelAnime->unk_0C) + skelAnime->animFrameCount;
    }
    else
    {
        if (skelAnime->animFrameCount <= skelAnime->animCurrentFrame)
        {
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

s32 func_800A4EE0(SkelAnime *skelAnime)
{
    f32 temp_f14;

    temp_f14 = (f32) R_UPDATE_RATE * 0.33333334f;
    if (skelAnime->animCurrentFrame == skelAnime->animFrameCount)
    {

        func_800A1D8C(skelAnime->animCurrent, (s32)skelAnime->animCurrentFrame, skelAnime->limbCount, skelAnime->actorDrawTbl);
        func_800A4C58(skelAnime);
        return 1;
    }
    skelAnime->animCurrentFrame += skelAnime->animPlaybackSpeed * temp_f14;
    if (0.0f < ((skelAnime->animCurrentFrame - skelAnime->animFrameCount) * skelAnime->animPlaybackSpeed))
    {
        skelAnime->animCurrentFrame = skelAnime->animFrameCount;
    }
    else
    {
        if (skelAnime->animCurrentFrame < 0.0f)
        {
            skelAnime->animCurrentFrame += skelAnime->unk_14;
        }
        else
        {
            if (skelAnime->unk_14 <= skelAnime->animCurrentFrame)
            {
                skelAnime->animCurrentFrame -= skelAnime->unk_14;
            }
        }
    }
    func_800A4C58(skelAnime);
    return 0;
}

#ifdef NON_MATCHING
// close some regalloc, missing move zero fpr
s32 func_800A4AD8(SkelAnime* skelAnime);
s32 func_800A4A20(SkelAnime* skelAnime);
void func_800A1D8C(u32,s32,u8,Vec3s*);
void func_800A4FE4(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 unk0, f32 frameCount, u8 unk1, f32 transitionRate, s8 unk2)
{
    skelAnime->unk_01 = unk1;
    if ((transitionRate != 0.0f) &&
        ((animation != skelAnime->animCurrent) || (unk0 != skelAnime->animCurrentFrame)))
    {
        if (transitionRate < 0.0f)
        {
            func_800A49B0(skelAnime);
            func_800A5774(skelAnime, skelAnime->unk_24, skelAnime->actorDrawTbl);
            transitionRate = -transitionRate;
        }
        else
        {
            if (unk2 != 0)
            {
                skelAnime->mtxUpdate = (void*)&func_800A4AD8;
                skelAnime->unk_03 = unk2;
            }
            else
            {
                skelAnime->mtxUpdate = (void*)&func_800A4A20;
            }
            func_800A1D8C(animation, (s32)unk0, skelAnime->limbCount, skelAnime->actorDrawTbl);
        }
        skelAnime->unk_28 = 1.0f;
        skelAnime->unk_2C = 1.0f / transitionRate;
    }
    else
    {
        func_800A49B0(skelAnime);
        func_800A1D8C(animation, (s32)unk0, skelAnime->limbCount, skelAnime->actorDrawTbl);
        skelAnime->unk_28 = 0.0f;
    }

    skelAnime->animCurrent = animation;
    skelAnime->unk_0C = unk0;
    skelAnime->animFrameCount = frameCount;
    skelAnime->unk_14 = (f32) func_800A1FC8(animation);
    if (skelAnime->unk_01 >= 4)
    {
        skelAnime->animCurrentFrame = 0.0f;
    }
    else
    {
        skelAnime->animCurrentFrame = unk0;
        if (skelAnime->unk_01 < 2)
        {
            skelAnime->animFrameCount = skelAnime->unk_14 - 1.0f;
        }
    }
    skelAnime->animPlaybackSpeed = playbackSpeed;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4FE4.s")
#endif
#undef NON_MATCHING

void SkelAnime_ChangeAnimation(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 unk0, /* 0x10 */ f32 frameCount, /* 0x14 */ u8 unk1, /* 0x18 */ f32 transitionRate)
{
    func_800A4FE4(skelAnime, animation, playbackSpeed, unk0, frameCount, unk1, transitionRate, 0);
}

void func_800A51E8(SkelAnime* skelAnime, u32 animation)
{
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 2, 0.0f);
}

void func_800A5240(SkelAnime* skelAnime, u32 animation, f32 transitionRate)
{
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0, (f32) SkelAnime_GetFrameCount(animation), 2, transitionRate);
}

void func_800A529C(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed)
{
    SkelAnime_ChangeAnimation(skelAnime, animation, playbackSpeed, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 2, 0.0f);
}

// SkelAnime_ChangeAnimationDefault
void func_800A52F8(SkelAnime* skelAnime, u32 animation)
{
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 0, 0.0f);
}

// SkelAnime_ChangeAnimationTransitionRate
void func_800A534C(SkelAnime* skelAnime, u32 animation, f32 transitionRate)
{
    SkelAnime_ChangeAnimation(skelAnime, animation, 1.0f, 0.0f, 0.0f, 0, transitionRate);
}

//SkelAnime_ChangeAnimationPlaybackSpeed
void func_800A5384(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed)
{
    SkelAnime_ChangeAnimation(skelAnime, animation, playbackSpeed, 0.0f, (f32) SkelAnime_GetFrameCount(animation), 0, 0.0f);
}

void func_800A53DC(SkelAnime* skelAnime)
{
    skelAnime->unk_01 = 2;
    skelAnime->animFrameCount = skelAnime->unk_14;
    func_800A49B0(skelAnime);
}

#ifdef NON_MATCHING
// regalloc
void func_800A5408(SkelAnime* skelAnime)
{
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

void func_800A5428(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* arg3)
{
    s32 i;
    for(i = 0; i < skelAnime->limbCount; i++, dst++, src++)
    {
        if(*arg3++)
        {
            *dst = *src;
        }
    }
}

void func_800A5490(SkelAnime* skelAnime, Vec3s* dst, Vec3s* src, u8* arg3)
{
    s32 i;
    for(i = 0;i < skelAnime->limbCount; i++, dst++, src++)
    {
        if(*arg3++ < 1U){
            *dst = *src;
        }
    }
}

void func_800A54FC(SkelAnime* skelAnime, Vec3f* pos, s16 angle)
{
    f32 x;
    f32 z;
    f32 sin;
    f32 cos;

    if((skelAnime->unk_35 & 0x10) != 0)
    {
        pos->z = 0.0f;
        pos->x = 0.0f;
    }
    else
    {
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
    if((skelAnime->unk_35 & 2) != 0)
    {
        if((skelAnime->unk_35 & 0x10) != 0)
        {
            pos->y = 0.0f;
        }
        else
        {
            pos->y = (f32)(skelAnime->actorDrawTbl->y - skelAnime->unk_3A);
        }
        skelAnime->unk_3A = skelAnime->actorDrawTbl->y;
        skelAnime->actorDrawTbl->y = skelAnime->unk_40;
    }
    else
    {
        pos->y = 0.0f;
        skelAnime->unk_3A = skelAnime->actorDrawTbl->y;
    }
    skelAnime->unk_35 &= ~0x10;
}

s32 func_800A56C8(SkelAnime *skelAnime, f32 arg1)
{
    return func_800A4478(skelAnime, arg1, 1.0f);
}

void func_800A56F0(SkelAnime *skelAnime, s32 arg1)
{
    if (skelAnime->actorDrawTbl != NULL)
    {
        ZeldaArena_FreeDebug(skelAnime->actorDrawTbl, "../z_skelanime.c", 3729);
    }
    else
    {
        osSyncPrintf("now_joint あきまへん！！\n"); // now_joint Akimane! !
    }
    if (skelAnime->unk_24 != NULL)
    {
        ZeldaArena_FreeDebug(skelAnime->unk_24, "../z_skelanime.c", 3731);
        return;
    }
    osSyncPrintf("morf_joint あきまへん！！\n"); // "morf_joint Akimane !!"
}

s32 func_800A5774(SkelAnime* skelAnime, Vec3s *dst, Vec3s *src)
{
    s32 i;
    for(i = 0; i < skelAnime->limbCount; i++)
    {
        *dst++ = *src++;
    }
}
