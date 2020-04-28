#include <ultra64.h>
#include <global.h>
#include <vt.h>

#define SS_NULL 0xFFFF

typedef struct {
    u16 unk_00; // original name: short_slist_node_size
    u16 unk_02; // theory for fixing pointer warnings: perhaps these first two are part of another substruct?
    s32 unk_04;
    s32 unk_08;
} substruct_8003880C;

typedef struct {
    char unk_00[4];
    Vec3f unk_04;
    s32 unk_10[3];
    s32 unk_1C[3];
    Vec3f unk_28;
    Vec3f unk_34;
} struct_8003ADC8;

extern Vec3f D_8015BC80[3];
extern Vec3f D_8015BCA8[3];

extern s16 D_8015BD08[4];
extern Vec3f D_8015BD10[3];
extern Vec3f D_8015BD34[3];

// original name: T_BGCheck_PosErrorCheck
s32 func_80038600(Vec3f* pos, char* file, s32 line) {
    if ((pos->x >= 32760.0f) || (pos->x <= -32760.0f) || (pos->y >= 32760.0f) || (pos->y <= -32760.0f) ||
        (pos->z >= 32760.0f) || (pos->z <= -32760.0f)) {
        osSyncPrintf(VT_FGCOL(RED));
        // "Translates to: Position is invalid."
        osSyncPrintf("T_BGCheck_PosErrorCheck():位置が妥当ではありません。pos (%f,%f,%f) file:%s line:%d\n", pos->x,
                     pos->y, pos->z, file, line);
        osSyncPrintf(VT_RST);
        return true;
    }
    return false;
}

//mzxOK
//Set SSLink_s
void func_80038708(SSLink_s* arg0, s16* arg1, u16 arg2) {
    arg0->unk_00 = *arg1;
    arg0->unk_02 = arg2;
}

//mzxOK
//Set SS_NULL
void func_8003871C(u16* arg0) {
    *arg0 = SS_NULL;
}

u16 func_8003E4DC(PolyLinksList_s*);
u16 func_80038878(DynaList_s*);

//mzxOK
//Set static PolyLinksList_s
void func_80038728(PolyLinksList_s* arg0, u16* arg1, s16* arg2) {
    u16 newNode = func_8003E4DC(arg0); 

    func_80038708(&arg0->tbl[newNode], arg2, *arg1);
    *arg1 = newNode;
}

//mzxOK
//Set dynamic DynaList_s
void func_80038780(DynaList_s* arg0, u16* arg1, s16* arg2) {
    u16 newNode = func_80038878(arg0); 

    if (!(newNode != SS_NULL)) {
        __assert("new_node != SS_NULL", "../z_bgcheck.c", 1776);
    }

    func_80038708(&arg0->tbl[newNode], arg2, *arg1);
    *arg1 = newNode;
}

//mzxOK
//Init DynaList_s
void func_800387FC(GlobalContext* globalCtx, DynaList_s* arg1) {
    arg1->tbl = NULL;
    arg1->count = 0;
}

//mzxOK
//Initialize DynaList tbl
void func_8003880C(GlobalContext* globalCtx, DynaList_s* arg1, s32 max) {
    arg1->tbl = THA_AllocEndAlign(&globalCtx->state.tha, max * 4, -2);

    if (!(arg1->tbl != NULL)) {
        __assert("psst->tbl != NULL", "../z_bgcheck.c", 1811);
    }

    arg1->max = max;
    arg1->count = 0;
}

//mzxOK
//Reset DynaList_s count
void func_80038870(DynaList_s* arg0) {
    arg0->count = 0;
}

//mzx
//Get next DynaList_s item
u16 func_80038878(DynaList_s* arg0) {
    u16 var = arg0->count++;

    if (arg0->max <= var) {
        return SS_NULL;
    }

    return var;
}

// original name: T_BGCheck_Vec3sToVec3f
void func_800388A8(Vec3s* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

// original name: T_BGCheck_Vec3fToVec3s
void func_800388E8(Vec3s* dst, Vec3f* src) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

#ifdef NON_MATCHING
s16 func_80038924(CollisionPoly* poly, Vec3s* vtxList) {
    //Vec3s* temp1;
    //Vec3s* temp2;
    //Vec3s* temp3;
    s32 a, b, c;
    s16 min;

    if (poly->norm.y == 0x7FFF || poly->norm.y == -0x7FFF) {
        return vtxList[poly->vIA].y;
    }

    //temp1 = &vtxList[poly->vIA];
    //temp2 = &vtxList[poly->vIB];
    //temp3 = &vtxList[poly->vIC];

    a = poly->vIA;
    b = poly->vIB;
    c = poly->vIC;

    //min = temp1->y;
    min = vtxList[a].y;

    //if (min > temp2->y) {
    if (min > vtxList[b].y) {
        //min = temp2->y;
        min = vtxList[b].y;
    }
    //if (min < temp3->y) {
    if (min < vtxList[c].y) {
        return min;
    }
    //return temp3->y;
    return vtxList[c].y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038924.s")
#endif

void func_800389D4(CollisionPoly* arg0, f32* arg1, f32* arg2, f32* arg3) {
    *arg1 = arg0->norm.x * (1.0f / 32767);
    *arg2 = arg0->norm.y * (1.0f / 32767);
    *arg3 = arg0->norm.z * (1.0f / 32767);
}

// Regalloc, stack
#ifdef NON_MATCHING
void func_80038A28(CollisionPoly* arg0, f32 arg1, f32 arg2, f32 arg3, MtxF* arg4) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 phi_f2;
    f32 phi_f14;
    f32 phi_f12;

    if (arg0 != NULL) {
        func_800389D4(arg0, &sp3C, &sp38, &sp34);

        phi_f2 = sqrtf(1.0f - (sp3C * sp3C));
        if (!(fabsf(phi_f2) < 0.008f)) {
            phi_f14 = sp38 * (1.0f / phi_f2);
            phi_f12 = -(sp34 * (1.0f / phi_f2));
        } else {
            phi_f14 = sqrtf(1.0f - (sp38 * sp38));
            if (!(fabsf(phi_f14) < 0.008f)) {
                phi_f12 = sp3C * (1.0f / phi_f14);
                phi_f2 = -(sp34 * (1.0f / phi_f14));
            } else {
                phi_f12 = 0.0f;
                phi_f2 = 0.0f;
            }
        }
        arg4->xx = phi_f2;
        arg4->xy = (-sp3C) * phi_f14;
        arg4->xz = sp3C * phi_f12;
        arg4->yx = sp3C;
        arg4->yy = sp38;
        arg4->yz = sp34;
        arg4->zx = 0.0f;
        arg4->zy = phi_f12;
        arg4->zz = phi_f14;
        arg4->xw = 0.0f;
        arg4->yw = 0.0f;
        arg4->zw = 0.0f;
        arg4->wx = arg1;
        arg4->wy = arg2;
        arg4->wz = arg3;
        arg4->ww = 1.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80038A28.s")
#endif

//mzxOk
//Calculate point distance from plane
f32 func_80038B7C(CollisionPoly* poly, Vec3f* point) {
    return (poly->norm.x * point->x + poly->norm.y * point->y + poly->norm.z * point->z) * (1.0f / 32767) + poly->dist;
}

void func_80038BE0(CollisionPoly* arg0, Vec3s arg1[], Vec3f arg2[]) {
    func_800388A8(&arg1[arg0->vIA], &arg2[0]);
    func_800388A8(&arg1[arg0->vIB], &arg2[1]);
    func_800388A8(&arg1[arg0->vIC], &arg2[2]);
}

// original name: T_Polygon_GetVertex_bg_ai
void func_80038C78(CollisionPoly* arg0, s32 arg1, s32 arg2, Vec3f arg3[]) {
    s32 phi_a1;

    if ((arg0 == NULL) || (arg1 > 50) || (arg3 == NULL)) {
        osSyncPrintf(VT_COL(RED, WHITE));
        // translates to: "Argument not appropriate. Processing terminated."
        osSyncPrintf("T_Polygon_GetVertex_bg_ai(): Error %d %d %d 引数が適切ではありません。処理を終了します。\n",
                     arg0 == NULL, arg1 > 50, arg3 == NULL);
        osSyncPrintf(VT_RST);

        if (arg3 != NULL) {
            arg3[2].z = 0.0f;
            arg3[1].z = 0.0f;
            arg3[1].y = 0.0f;
            arg3[1].x = 0.0f;
            arg3[0].z = 0.0f;
            arg3[0].y = 0.0f;
            arg3[0].x = 0.0f;
        }
    } else {
        if (arg1 == 50) {
            phi_a1 = *(s32*)(*(s32*)arg2 + 0x10); // unknown struct (arg2->unk_00->unk_10)
        } else {
            phi_a1 = *(s32*)(arg2 + 0x1444); // arg2->unk_1444
        }

        func_80038BE0(arg0, (Vec3s*)phi_a1, arg3);
    }
}

//mzxOK
extern Vec3f D_8015BC30[3];
void func_80038D48(CollisionPoly* arg0, Vec3s* arg1, f32 arg2, f32 arg3, s32 arg4, f32 arg5) {
    f32 nA, nB, nC;
    Vec3s* vA, * vB, * vC;

    vA = &arg1[arg0->vIA];
    Math_Vec3s_ToVec3f(&D_8015BC30[0], vA);
    vB = &arg1[arg0->vIB];
    Math_Vec3s_ToVec3f(&D_8015BC30[1], vB);
    vC = &arg1[arg0->vIC];
    Math_Vec3s_ToVec3f(&D_8015BC30[2], vC);

    nA = arg0->norm.x * (1.0f / 32767);
    nB = arg0->norm.y * (1.0f / 32767);
    nC = arg0->norm.z * (1.0f / 32767);

    func_800CCF98(&D_8015BC30[0], &D_8015BC30[1], &D_8015BC30[2], nA, nB,
        nC, arg0->dist, arg3, arg2, arg4, arg5);
}

extern Vec3f D_8015BC58[3];
void func_80038E78(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4, f32 arg5) {
    f32 sp44, sp40, sp3C;

    func_80038BE0(arg0, arg1, D_8015BC58);
    func_800389D4(arg0, &sp44, &sp40, &sp3C);
    func_800CD044(&D_8015BC58[0], &D_8015BC58[1], &D_8015BC58[2], sp44, sp40, sp3C, arg0->dist, arg3, arg2, arg4, arg5);
}

void func_80038F20(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4) {
    func_80038D48(arg0, arg1, arg2, arg3, arg4, 1.0f);
}

void func_80038F60(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4) {
    f32 sp3C, sp38, sp34;

    func_80038BE0(arg0, arg1, D_8015BC80);
    func_800389D4(arg0, &sp3C, &sp38, &sp34);
    func_800CD6B0(&D_8015BC80[0], &D_8015BC80[1], &D_8015BC80[2], sp3C, sp38, sp34, arg0->dist, arg2, arg3, arg4);
}

void func_80039000(CollisionPoly* arg0, Vec3s arg1[], f32 arg2, f32 arg3, s32 arg4) {
    f32 sp3C, sp38, sp34;

    func_80038BE0(arg0, arg1, D_8015BCA8);
    func_800389D4(arg0, &sp3C, &sp38, &sp34);
    func_800CDD60(&D_8015BCA8[0], &D_8015BCA8[1], &D_8015BCA8[2], sp3C, sp38, sp34, arg0->dist, arg2, arg3, arg4);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800390A0.s")

#ifdef NON_MATCHING
// ordering, pointer optimization
void func_8003937C(CollisionPoly* arg0, Vec3s arg1[], Vec3f* arg2, f32 arg3) {
    Vec3f sp1C;

    func_80038BE0(arg0, arg1, D_8015BD10);
    func_800389D4(arg0, &D_8015BD34[0], &D_8015BD34[1], &D_8015BD34[2]);
    D_8015BD34[1].x = arg0->dist;
    D_8015BD08[0] = arg2->x;
    D_8015BD08[1] = arg2->y;
    D_8015BD08[2] = arg2->z;
    D_8015BD08[3] = arg3;
    func_800CE934(&D_8015BD08, D_8015BD10, &sp1C);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003937C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039448.s")
//void func_80039448(CollisionContext* arg0, u16* arg1, CollisionPoly* polyList, Vec3s* vtxList, s16 index) {
//    void* sp24;
//    s32 temp_ret;
//    s32 temp_ret_2;
//    s32 temp_ret_3;
//    u16 temp_v1;
//    void* temp_a0;
//    void* temp_a1;
//    void* temp_a1_2;
//    void* temp_t1;
//    void* phi_t1;
//    void* phi_a1;
//    s16 phi_a2;
//
//    if (SS_NULL == *arg1) {
//        func_80038728(&arg0->stat.polyLinksList, arg1, &index);
//        return;
//    }
//    temp_ret = func_80038924(polyList[index], vtxList);
//    temp_t1 = arg0->unk48 + (*arg1 * 4);
//    temp_a1 = polyList + (*temp_t1 * 0x10);
//    phi_a1 = temp_a1;
//    if (temp_ret >= (s32)(vtxList + ((temp_a1->unk2 & 0x1FFF) * 6))->unk2) {
//    block_6:
//        phi_t1 = temp_t1;
//        phi_a2 = *temp_t1;
//    loop_7:
//        temp_v1 = phi_t1->unk2;
//        if (SS_NULL == temp_v1) {
//            sp24 = phi_t1;
//            temp_ret_2 = func_8003E4DC(arg0 + 0x44, phi_a1, phi_a2, vtxList);
//            func_80038708(arg0->unk48 + (temp_ret_2 * 4), &index, 0xFFFF);
//            phi_t1->unk2 = (s16)(temp_ret_2 & 0xFFFF);
//            return;
//        }
//        temp_a0 = arg0->unk48 + (temp_v1 * 4);
//        temp_a1_2 = polyList + (*temp_a0 * 0x10);
//        if (temp_ret >= (s32)(vtxList + ((temp_a1_2->unk2 & 0x1FFF) * 6))->unk2) {
//        block_13:
//            phi_t1 = temp_a0;
//            phi_a1 = temp_a1_2;
//            phi_a2 = *temp_a0;
//            goto loop_7;
//        }
//        if (temp_ret >= (s32)(vtxList + ((temp_a1_2->unk4 & 0x1FFF) * 6))->unk2) {
//            goto block_13;
//        }
//        if (temp_ret >= (s32)(vtxList + (temp_a1_2->unk6 * 6))->unk2) {
//            goto block_13;
//        }
//        sp24 = phi_t1;
//        temp_ret_3 = func_8003E4DC(arg0 + 0x44, temp_a1_2, *temp_a0, vtxList);
//        func_80038708(arg0->unk48 + (temp_ret_3 * 4), &index, phi_t1->unk2);
//        phi_t1->unk2 = (s16)(temp_ret_3 & 0xFFFF);
//        return;
//    }
//    phi_a1 = temp_a1;
//    if (temp_ret >= (s32)(vtxList + ((temp_a1->unk4 & 0x1FFF) * 6))->unk2) {
//        goto block_6;
//    }
//    phi_a1 = arg1;
//    if (temp_ret >= (s32)(vtxList + (temp_a1->unk6 * 6))->unk2) {
//        goto block_6;
//    }
//    func_80038728(&arg0->stat.polyLinksList, arg1, &index);
//    return;
//}

typedef struct {
    u16 floor;
    u16 wall;
    u16 ceiling;

} Lookup;

//arg0 is floor, wall, ceiling
void func_8003965C(Lookup* arg0, CollisionContext* colCtx, CollisionPoly* polyList, Vec3s* vtxList, s16 index) {
    if (polyList[index].norm.y >= 0x4000) {
        func_80039448(colCtx, &arg0->floor, polyList, vtxList, index);

    } else if (polyList[index].norm.y <= -0x6666) {
        func_80039448(colCtx, &arg0->ceiling, polyList, vtxList, index);

    } else {
        func_80039448(colCtx, &arg0->wall, polyList, vtxList, index);
    }
} //list arg3

f32 func_800396F0(CollisionContext*, u16, s16*, s16*, Vec3f*, f32, f32, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800396F0.s")


f32 func_8003992C(Vec3s* arg0, CollisionContext* colCtx, u16 arg2, s16* arg3, Vec3f* arg4, s32 arg5, f32 arg6, f32 arg7) {
    s32 temp_v0;
    f32 temp_f2 = arg7;

    if (arg5 & 4) {
        temp_f2 = func_800396F0(colCtx, arg2, &arg0->x, arg3, arg4, temp_f2, arg6, 0);
    }

    if ((arg5 & 2) || (arg5 & 8)) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(colCtx, arg2, &arg0->y, arg3, arg4, temp_f2, arg6, temp_v0);
    }

    if (arg5 & 1) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(colCtx, arg2, &arg0->z, arg3, arg4, temp_f2, arg6, temp_v0);
    }

    return temp_f2;
}

// Slightly off at the end, pretty close
#ifdef NON_MATCHING
typedef struct {
    char unk_00[4];
    s32 unk_04;
} struct_80039A3C; // unknown struct of length 8

// arg5 unused
s32 func_80039A3C(struct_80039A3C*** arg0, s32* arg1, f32* arg2, f32* arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, u16** arg10) {
    s32 phi_v0;
    f32 temp_f0 = (arg9 - arg8) * arg7;

    *arg2 += (temp_f0 * arg4);
    *arg3 += (temp_f0 * arg6);

    if (*arg10 == NULL) {
        *arg10 = arg1;
        return true;
    }

    phi_v0 = 0;
    if (((*arg0)[7][**arg10].unk_04 * 0x10) < 0) {
        phi_v0 = 1;
    }
    if (!phi_v0) {
        *arg10 = arg1;
        return true;
    }
    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039A3C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A7D8.s")

s32 func_8003A95C(s32*, u16, s32, s32, f32, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A95C.s")

// Very small register swap, probably from hacky struct access
#ifdef NON_MATCHING
s32 func_8003AB28(u16 arg0[], u16 arg1, s32 arg2, s32 arg3, f32 arg4, s32 arg5, u16 arg6) {
    if (arg0[0] != 0xFFFF && (arg6 & 4) == 0 && func_8003A95C(&(*(s32**)(arg2 + 0x48))[arg0[0]], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0[1] != 0xFFFF && (arg6 & 2) == 0 && func_8003A95C(&(*(s32**)(arg2 + 0x48))[arg0[1]], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0[2] != 0xFFFF && (arg6 & 1) == 0 && func_8003A95C(&(*(s32**)(arg2 + 0x48))[arg0[2]], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AB28.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AC54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AD00.s")

void func_8003ADC8(struct_8003ADC8* arg0, Vec3f* arg1, s32* arg2) {
    arg2[0] = (arg1->x - arg0->unk_04.x) * arg0->unk_34.x;
    arg2[1] = (arg1->y - arg0->unk_04.y) * arg0->unk_34.y;
    arg2[2] = (arg1->z - arg0->unk_04.z) * arg0->unk_34.z;

    if (arg2[0] < 0) {
        arg2[0] = 0;
    } else if (arg2[0] >= arg0->unk_1C[0]) {
        arg2[0] = arg0->unk_1C[0] - 1;
    }

    if (arg2[1] < 0) {
        arg2[1] = 0;
    } else if (arg2[1] >= arg0->unk_1C[1]) {
        arg2[1] = arg0->unk_1C[1] - 1;
    }

    if (arg2[2] < 0) {
        arg2[2] = 0;
    } else if (arg2[2] >= arg0->unk_1C[2]) {
        arg2[2] = arg0->unk_1C[2] - 1;
    }
}

s32 func_8003AEA8(struct_8003ADC8* arg0, Vec3f* arg1, s32* arg2, s32* arg3, s32* arg4) {
    f32 temp1 = arg1->x - arg0->unk_04.x;
    f32 temp2 = arg1->y - arg0->unk_04.y;
    f32 temp3 = arg1->z - arg0->unk_04.z;
    *arg2 = temp1 * arg0->unk_34.x;
    *arg3 = temp2 * arg0->unk_34.y;
    *arg4 = temp3 * arg0->unk_34.z;

    if (((s32)temp1 % (s32)arg0->unk_28.x < 50) && (*arg2 > 0)) {
        *arg2 -= 1;
    }

    if (((s32)temp2 % (s32)arg0->unk_28.y < 50) && (*arg3 > 0)) {
        *arg3 -= 1;
    }

    if (((s32)temp3 % (s32)arg0->unk_28.z < 50) && (*arg4 > 0)) {
        *arg4 -= 1;
    }
}

s32 func_8003B04C(struct_8003ADC8* arg0, Vec3f* arg1, s32* arg2, s32* arg3, s32* arg4) {
    f32 temp1 = arg1->x - arg0->unk_04.x;
    f32 temp2 = arg1->y - arg0->unk_04.y;
    f32 temp3 = arg1->z - arg0->unk_04.z;
    *arg2 = temp1 * arg0->unk_34.x;
    *arg3 = temp2 * arg0->unk_34.y;
    *arg4 = temp3 * arg0->unk_34.z;

    if (((s32)arg0->unk_28.x - 50 < (s32)temp1 % (s32)arg0->unk_28.x) && (*arg2 < arg0->unk_1C[0] - 1)) {
        *arg2 += 1;
    }

    if (((s32)arg0->unk_28.y - 50 < (s32)temp2 % (s32)arg0->unk_28.y) && (*arg3 < arg0->unk_1C[1] - 1)) {
        *arg3 += 1;
    }

    if (((s32)arg0->unk_28.z - 50 < (s32)temp3 % (s32)arg0->unk_28.z) && (*arg4 < arg0->unk_1C[2] - 1)) {
        *arg4 += 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C078.s")

//original name: T_BGCheck_getBGDataInfo
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C4C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C614.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C940.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CA0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CCA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D464.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D594.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D600.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E02C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E188.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E214.s")

void func_8003E398(substruct_8003880C* this) {
    this->unk_00 = 0;
    this->unk_02 = 0;
    this->unk_04 = 0;
    this->unk_08 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E3AC.s")

//Get PolyLinksList_s Next
u16 func_8003E4DC(PolyLinksList_s* arg0) {
    u16 new_index;

    new_index = arg0->count++;

    if (!(new_index < arg0->max)) {
        __assert("new_index < this->short_slist_node_size", "../z_bgcheck.c", 6021);
    }
    return new_index;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E530.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E568.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E5B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E688.s")

void func_8003E6C4(u16* arg0) {
    *arg0 = 0;
    func_8003E688();
}

void func_8003E6E4(u16* arg0) {
    *arg0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E750.s")

void func_8003E804(int arg0) {
    func_8003E5B4(arg0 + 0x14, arg0 + 0x34);
}

void func_8003E82C(u32* arg0) {
    *arg0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E834.s")

void func_8003E888(u32* arg0) {
    *arg0 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E890.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E8EC.s")

/*
NON-MATCHING
void func_8003E8EC(u32 uParm1, u32* arg1)
{
    arg1[0x06] = arg1[0x0E];
    arg1[0x05] = arg1[0x0D];
    arg1[0x07] = arg1[0x0F];
    arg1[0x08] = arg1[0x10];
    arg1[0x0A] = arg1[0x12];
    arg1[0x09] = arg1[0x11];
    arg1[0x0B] = arg1[0x13];
    arg1[0x0C] = arg1[0x14];

   //int i;
   //for (i = 0; i < 4; i++)
   //{
       //arg1[0x06 + (i * 2)] = arg1[0x0E + (i * 2)];
       //arg1[0x07 + (i * 2)] = arg1[0x0D + (i * 2)];
   //}

}
*/

s32 func_8003E934(int arg0) {
    if (!((-1 < arg0) && (arg0 < 0x32))) {
        return false;
    }

    return true;
}

void func_8003E954(u32 arg0, u8* arg1) {
    *arg1 = 1;
    func_8003E82C(arg1 + 0x13f0);
    func_8003E888(arg1 + 0x13f4);
    func_800387FC(arg0, arg1 + 0x13f8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E9A0.s")

// original name: DynaPolyInfo_setActor
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EA74.s")

// we previously had this named as DynaPolyInfo_GetActor
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ECA8.s")

// original name: DynaPolyInfo_delReserve
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003ED58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE6C.s")

// original name: DynaPolyInfo_expandSRT
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F8EC.s")

// original name: DynaPolyInfo_setup
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003F984.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FB64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FDDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040284.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800409A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041240.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800413F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041510.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041648.s")

typedef struct {
    /* 0x00 */ char unk_00[0x10];
    /* 0x10 */ void* unk_10;
    /* 0x14 */ char unk_[0x04];
    /* 0x18 */ void* unk_18;
    /* 0x1C */ void* unk_1C;
    /* 0x20 */ void* unk_20;
    /* 0x24 */ char unk_24[4];
    /* 0x28 */ void* unk_28;
} Struct800417A0; // size = 0x32

// called by func_800418D0 with actorMesh->unk_08
void func_800417A0(Struct800417A0* arg0) {
    arg0->unk_10 = SEGMENTED_TO_VIRTUAL(arg0->unk_10);
    arg0->unk_18 = SEGMENTED_TO_VIRTUAL(arg0->unk_18);
    arg0->unk_1C = SEGMENTED_TO_VIRTUAL(arg0->unk_1C);
    arg0->unk_20 = SEGMENTED_TO_VIRTUAL(arg0->unk_20);
    arg0->unk_28 = SEGMENTED_TO_VIRTUAL(arg0->unk_28);
}

// we previously had this named as DynaPolyInfo_Alloc
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041880.s")

void func_800418D0(CollisionContext* colCtx, GlobalContext* globalCtx) {
    ActorMesh* actorMesh;
    DynaCollisionContext* dynaColCtx;
    s32 i;
    u16 flag;

    dynaColCtx = &colCtx->dyna;
    for (i = 0; i < 50; i++) {
        flag = dynaColCtx->flags[i];
        if ((flag & 1) && !(flag & 2)) {
            actorMesh = &dynaColCtx->actorMeshArr[i];
            Actor_SetObjectDependency(globalCtx, actorMesh->actor);
            func_800417A0(actorMesh->unk_08);
        }
    }
}

#ifdef NON_MATCHING
void func_80041978(int arg0, int arg1) {
    u8* temp;

    temp = *(u8**)(arg0 + 8);
    if (temp < temp + arg1) {
        *temp = 0;
        while (temp++ < (u8*)(*(int*)(arg0 + 8) + arg1)) {
            *temp = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041978.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800419B0.s")

u32 func_80041A28(CollisionContext* arg0, u32 arg1, u32 arg2) {
    u32 ret;

    ret = func_800419B0(arg0, arg1, arg2, 0);
    return ret & 0xff;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D4C.s")

u32 func_80041D94(u32 arg0, u32 arg1, u32 arg2) {
    u32 ret;

    ret = func_800419B0(arg0, arg1, arg2, 0);
    return ret >> 0x15 & 0x1f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EEC.s")

u32 func_80041F10(u32 arg0, u32 arg1, u32 arg2) {
    u32 ret;

    ret = func_800419B0(arg0, arg1, arg2, 1);
    return ret & 0xf;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004200C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042048.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042084.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800420E4.s")

u32 func_80042108(u32 arg0, u32 arg1, u32 arg2) {
    s32 result;

    if (func_800419B0(arg0, arg1, arg2, 1) << 4 < 0) {
        result = true;
    } else {
        result = false;
    }

    return result;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

u8 func_80042538(CollisionContext* colCtx, s32 arg1) {
    u32 ret = *(u32*)(arg1 + 0xc);
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042548.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004259C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800427B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042868.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042C3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042FC4.s")
