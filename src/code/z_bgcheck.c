#include <ultra64.h>
#include <global.h>
#include <vt.h>

#define SS_NULL 0xFFFF
#define BG_ACTOR_MAX 50

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
void func_80038708(SSLink_s* arg0, s16* polyId, u16 next) {
    arg0->polyId = *polyId;
    arg0->next = next;
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

//mzxOK
//CollisionPoly get unit normal
void func_800389D4(CollisionPoly* poly, f32* unitNormX, f32* unitNormY, f32* unitNormZ) {
    *unitNormX = poly->norm.x * (1.0f / 32767);
    *unitNormY = poly->norm.y * (1.0f / 32767);
    *unitNormZ = poly->norm.z * (1.0f / 32767);
}

//mzxOK
void func_80038A28(CollisionPoly* poly, f32 x, f32 y, f32 z, MtxF* mtxF) {
    f32 normX;
    f32 normY;
    f32 normZ;
    s32 pad[1];
    f32 phi_f2;
    f32 phi_f14;
    f32 phi_f12;
    f32 inv_phi_f2;
    f32 inv_phi_f14;

    if (poly == NULL) {
        return;
    }
    func_800389D4(poly, &normX, &normY, &normZ);

    phi_f2 = sqrtf(1.0f - SQ(normX));
    if (!(fabsf(phi_f2) < 0.008f)) {
        inv_phi_f2 = 1.0f / phi_f2;
        phi_f14 = normY * inv_phi_f2;
        phi_f12 = -(normZ * inv_phi_f2);
    } else {
        phi_f14 = sqrtf(1.0f - SQ(normY));
        if (1) {
            if (!(fabsf(phi_f14) < 0.008f)) {
                inv_phi_f14 = (1.0f / phi_f14);
                phi_f12 = normX * inv_phi_f14;
                phi_f2 = -(normZ * inv_phi_f14);
            } else {
                phi_f12 = 0.0f;
                phi_f2 = 0.0f;
            }
        }
    }
    mtxF->xx = phi_f2;
    mtxF->xy = (-normX) * phi_f14;
    mtxF->xz = normX * phi_f12; 
    mtxF->yx = normX; 
    mtxF->yy = normY;
    mtxF->yz = normZ;
    mtxF->zy = phi_f12;
    mtxF->zz = phi_f14;
    mtxF->xw = 0.0f; 
    mtxF->yw = 0.0f; 
    mtxF->zx = 0.0f; 
    mtxF->zw = 0.0f;
    mtxF->wx = x;
    mtxF->wy = y;
    mtxF->wz = z;
    mtxF->ww = 1.0f;
}

//mzxOk
//Calculate point distance from plane
f32 func_80038B7C(CollisionPoly* poly, Vec3f* point) {
    return (poly->norm.x * point->x + poly->norm.y * point->y + poly->norm.z * point->z) * (1.0f / 32767) + poly->dist;
}

//mzxOK
//Get Poly Verts
void func_80038BE0(CollisionPoly* arg0, Vec3s* vtxList, Vec3f* dest) {
    func_800388A8(&vtxList[arg0->vIA], &dest[0]);
    func_800388A8(&vtxList[arg0->vIB], &dest[1]);
    func_800388A8(&vtxList[arg0->vIC], &dest[2]);
}

//mzxOK
// original name: T_Polygon_GetVertex_bg_ai
void func_80038C78(CollisionPoly* arg0, s32 bgId, CollisionContext* arg2, Vec3f* destPoly) {
    Vec3s* vtxList;

    if (arg0 == NULL || bgId > BG_ACTOR_MAX || (destPoly == NULL)) {
        osSyncPrintf(VT_COL(RED, WHITE));
        // translates to: "Argument not appropriate. Processing terminated."
        osSyncPrintf("T_Polygon_GetVertex_bg_ai(): Error %d %d %d 引数が適切ではありません。処理を終了します。\n",
                     arg0 == NULL, bgId > BG_ACTOR_MAX, destPoly == NULL);
        osSyncPrintf(VT_RST);

        if (destPoly != NULL) {
            destPoly[2].z = 0.0f;
            destPoly[1].z = 0.0f;
            destPoly[1].y = 0.0f;
            destPoly[1].x = 0.0f;
            destPoly[0].z = 0.0f;
            destPoly[0].y = 0.0f;
            destPoly[0].x = 0.0f;
        }
    } else {
        if (bgId == BG_ACTOR_MAX) {
            vtxList = arg2->stat.colHeader->vertexArray;
        } else {
            vtxList = arg2->dyna.dyn_vtx;
        }

        func_80038BE0(arg0, vtxList, destPoly);
    }
}

//mzxOK
void func_80038D48(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, s32 arg4, f32 arg5) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;
    Vec3s* vA;
    Vec3s* vB;
    Vec3s* vC;

    vA = &vtxList[poly->vIA];
    Math_Vec3s_ToVec3f(&polyVtxs[0], vA);
    vB = &vtxList[poly->vIB];
    Math_Vec3s_ToVec3f(&polyVtxs[1], vB);
    vC = &vtxList[poly->vIC];
    Math_Vec3s_ToVec3f(&polyVtxs[2], vC);

    normX = poly->norm.x * (1.0f / 32767);
    normY = poly->norm.y * (1.0f / 32767);
    normZ = poly->norm.z * (1.0f / 32767);

    func_800CCF98(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg3, arg2, arg4, arg5);
}

void func_80038E78(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, s32 arg4, f32 arg5) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;

    func_80038BE0(poly, vtxList, polyVtxs);
    func_800389D4(poly, &normX, &normY, &normZ);
    func_800CD044(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg3, arg2, arg4, arg5);
}

void func_80038F20(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, s32 arg4) {
    func_80038D48(poly, vtxList, arg2, arg3, arg4, 1.0f);
}

void func_80038F60(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, s32 arg4) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;

    func_80038BE0(poly, vtxList, polyVtxs);
    func_800389D4(poly, &normX, &normY, &normZ);
    func_800CD6B0(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg2, arg3, arg4);
}

void func_80039000(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, s32 arg4) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;

    func_80038BE0(poly, vtxList, polyVtxs);
    func_800389D4(poly, &normX, &normY, &normZ);
    func_800CDD60(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg2, arg3, arg4);
}

s32 func_800390A0(CollisionPoly* poly, Vec3s* vtxList, Vec3f* pointA, Vec3f* pointB, Vec3f* arg4, s32 arg5, f32 arg6) {
    f32 planeDistA;
    f32 planeDistB;
    f32 planeDistDelta;
    static Vec3f polyVtxs[3];
    static Plane plane;

    plane.originDist = (f32)poly->dist;
    planeDistA = (poly->norm.x * pointA->x + poly->norm.y * pointA->y + poly->norm.z * pointA->z) * (1.0f / 32767.0f) + plane.originDist;
    planeDistB = (poly->norm.x * pointB->x + poly->norm.y * pointB->y + poly->norm.z * pointB->z) * (1.0f / 32767.0f) + plane.originDist;

    planeDistDelta = planeDistA - planeDistB;
    if ((0.0f <= planeDistA && 0.0f <= planeDistB)
        || (planeDistA < 0.0f && planeDistB < 0.0f)
        || (arg5 != 0 && planeDistA < 0.0f && 0.0f < planeDistB)
        || fabsf(planeDistDelta) < 0.008f) {
        return 0;
    }

    func_800389D4(poly, &plane.normal.x, &plane.normal.y, &plane.normal.z);
    func_80038BE0(poly, vtxList, &polyVtxs);
    func_800CAFA0(pointA, pointB, planeDistA / planeDistDelta, arg4);
    if ((0.5f < fabsf(plane.normal.x) && func_800CD95C(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], &plane, arg4->y, arg4->z, arg6))
        || (0.5f < fabsf(plane.normal.y) && func_800CD2D8(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], &plane, arg4->z, arg4->x, arg6))
        || (0.5f < fabsf(plane.normal.z) && func_800CE010(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], &plane, arg4->x, arg4->y, arg6))) {
        return 1;
    }
    return 0;
}

s32 func_8003937C(CollisionPoly* poly, Vec3s* vtxList, Vec3f* arg2, f32 arg3) {
    static Sphere16 sphere;
    static TriNorm tri;
    Vec3f sp1C;

    func_80038BE0(poly, vtxList, &tri.vtx);
    func_800389D4(poly, &tri.plane.normal.x, &tri.plane.normal.y, &tri.plane.normal.z);
    tri.plane.originDist = poly->dist;
    sphere.center.x = arg2->x;
    sphere.center.y = arg2->y;
    sphere.center.z = arg2->z;
    sphere.radius = arg3;
    return func_800CE934(&sphere, &tri, &sp1C);
}

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

void func_8003965C(Lookup* arg0, CollisionContext* colCtx, CollisionPoly* polyList, Vec3s* vtxList, s16 index) {
    if (polyList[index].norm.y >= 0x4000) {
        func_80039448(colCtx, &arg0->floor, polyList, vtxList, index);

    } else if (polyList[index].norm.y <= -0x6666) {
        func_80039448(colCtx, &arg0->ceiling, polyList, vtxList, index);

    } else {
        func_80039448(colCtx, &arg0->wall, polyList, vtxList, index);
    }
}

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

#ifdef NON_MATCHING
// arg5 unused
// regalloc
s32 func_80039A3C(CollisionContext* arg0, CollisionPoly* poly, f32* arg2, f32* arg3, f32 arg4,
    f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, BgCheckInfo* arg10) {
    s32 wallDamage;
    f32 temp_f0 = (arg9 - arg8) * arg7;

    *arg2 += (temp_f0 * arg4);
    *arg3 += (temp_f0 * arg6);

    if (arg10->wallPoly == NULL) {
        arg10->wallPoly = poly;
        return true;
    }

    wallDamage = (arg0->stat.colHeader->polygonTypes[arg10->wallPoly->type].properties[1] & 0x08000000) ? 1 : 0;
    if (!wallDamage) {
        arg10->wallPoly = poly;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039A3C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A7D8.s")

s32 func_8003A95C(SSLink_s* arg0, u16 arg1, CollisionContext* arg2, Vec3f* arg3, f32 arg4, CollisionPoly* arg5);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A95C.s")

//s32 func_8003A95C(SSLink_s* arg0, u16 arg1, StaticCollisionContext* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5) {
//    CollisionPoly* temp_s0;
//    f32 temp_f0;
//    u16 temp_v0;
//    s32 flags; 
//    //s32 temp_v1;
//    CollisionPoly* polyList;
//    Vec3s* vtxList;
//    SSLink_s* phi_s1;
//
//    polyList = arg2->colHeader->polygonArray;
//    vtxList = arg2->colHeader->vertexArray;
//    phi_s1 = arg0;
//    do {
//
//        flags = ((arg1 & 7) << 0x0D);
//        temp_v0 = phi_s1->polyId;
//        temp_s0 = &polyList[temp_v0];
//        if (temp_s0->flags_vIA & flags) {
//            temp_v0 = phi_s1->next;
//            if (SS_NULL != temp_v0) {
//                polyList = arg2->colHeader->polygonArray;
//                phi_s1 = &arg2->polyLinksList.tbl[temp_v0];
//                //goto loop_1;
//                continue;
//            }
//            else
//            {
//                break;
//            }
//        }
//        else {
//            temp_f0 = arg3->y + arg4;
//            if (
//                !(temp_f0 < vtxList[temp_s0->vIA].y)
//                || !(temp_f0 < vtxList[temp_s0->vIB].y)
//                || !(temp_f0 < vtxList[temp_s0->vIC].y)) {
//
//                if (func_8003937C(temp_s0, vtxList, arg3, arg4) != 0) {
//                    *arg5 = temp_s0;
//                    return 1;
//                }
//                temp_v0 = phi_s1->polyId;
//                if (SS_NULL != temp_v0) {
//                    polyList = arg2->colHeader->polygonArray;
//                    phi_s1 = &arg2->polyLinksList.tbl[temp_v0];
//                    continue;
//                }
//            }
//            else {
//                break;
//            }
//        }
//    } while (1);
//    return 0;
//}

s32 func_8003AB28(Lookup* arg0, u16 arg1, CollisionContext* arg2, Vec3f* arg3, f32 arg4, CollisionPoly* arg5, u16 arg6) {
    if (arg0->floor != SS_NULL && (arg6 & 4) == 0 
        && func_8003A95C(&arg2->stat.polyLinksList.tbl[arg0->floor], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0->wall != SS_NULL && (arg6 & 2) == 0 
        && func_8003A95C(&arg2->stat.polyLinksList.tbl[arg0->wall], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0->ceiling != SS_NULL && (arg6 & 1) == 0 
        && func_8003A95C(&arg2->stat.polyLinksList.tbl[arg0->ceiling], arg1, arg2, arg3, arg4, arg5)) {
        return true;
    }

    return false;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003AC54.s")

//mzxOK
//Get Lookup sector
Lookup* func_8003AD00(StaticCollisionContext* arg0, Lookup* arg1, Vec3f* pos) {
    Vec3i sector; 
    s32 regFix; 

    if (!func_8003C55C(arg0, pos)) {
        return NULL;
    }
    func_8003ADC8(arg0, pos, &sector);
    regFix = arg0->subdivisions.x;
    return (sector.z * regFix) * arg0->subdivisions.y + arg1
        + sector.x 
        + sector.y * regFix;
}

//mzxOK
//Get Lookup position
void func_8003ADC8(StaticCollisionContext* arg0, Vec3f* pos, Vec3i* sector) {
    sector->x = (pos->x - arg0->minBounds.x) * arg0->inverseUnitSize.x;
    sector->y = (pos->y - arg0->minBounds.y) * arg0->inverseUnitSize.y;
    sector->z = (pos->z - arg0->minBounds.z) * arg0->inverseUnitSize.z;

    if (sector->x < 0) {
        sector->x = 0;
    } else if (sector->x >= arg0->subdivisions.x) {
        sector->x = arg0->subdivisions.x - 1;
    }

    if (sector->y < 0) {
        sector->y = 0;
    } else if (sector->y >= arg0->subdivisions.y) {
        sector->y = arg0->subdivisions.y - 1;
    }

    if (sector->z < 0) {
        sector->z = 0;
    } else if (sector->z >= arg0->subdivisions.z) {
        sector->z = arg0->subdivisions.z - 1;
    }
}

//mzxOK
//Get Negative Bias Lookup position
//decrements result Lookup coordinate if within 50 units of the negative boundary
void func_8003AEA8(StaticCollisionContext* arg0, Vec3f* pos, s32* sx, s32* sy, s32* sz) {
    f32 temp1 = pos->x - arg0->minBounds.x;
    f32 temp2 = pos->y - arg0->minBounds.y;
    f32 temp3 = pos->z - arg0->minBounds.z;
    *sx = temp1 * arg0->inverseUnitSize.x;
    *sy = temp2 * arg0->inverseUnitSize.y;
    *sz = temp3 * arg0->inverseUnitSize.z;

    if (((s32)temp1 % (s32)arg0->unitSize.x < 50) && (*sx > 0)) {
        *sx -= 1;
    }

    if (((s32)temp2 % (s32)arg0->unitSize.y < 50) && (*sy > 0)) {
        *sy -= 1;
    }

    if (((s32)temp3 % (s32)arg0->unitSize.z < 50) && (*sz > 0)) {
        *sz -= 1;
    }
} 

//mzxOK
//Get Positive Bias Lookup position
//increments result Lookup coordinate if within 50 units of the postive boundary
void func_8003B04C(StaticCollisionContext* arg0, Vec3f* pos, s32* sx, s32* sy, s32* sz) {
    f32 temp1 = pos->x - arg0->minBounds.x;
    f32 temp2 = pos->y - arg0->minBounds.y;
    f32 temp3 = pos->z - arg0->minBounds.z;
    *sx = temp1 * arg0->inverseUnitSize.x;
    *sy = temp2 * arg0->inverseUnitSize.y;
    *sz = temp3 * arg0->inverseUnitSize.z;

    if (((s32)arg0->unitSize.x - 50 < (s32)temp1 % (s32)arg0->unitSize.x) && (*sx < arg0->subdivisions.x - 1)) {
        *sx += 1;
    }

    if (((s32)arg0->unitSize.y - 50 < (s32)temp2 % (s32)arg0->unitSize.y) && (*sy < arg0->subdivisions.y - 1)) {
        *sy += 1;
    }

    if (((s32)arg0->unitSize.z - 50 < (s32)temp3 % (s32)arg0->unitSize.z) && (*sz < arg0->subdivisions.z - 1)) {
        *sz += 1;
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
CollisionHeader* func_8003C4C4(CollisionContext* arg0, s32 bgId) {
    if (bgId == BG_ACTOR_MAX) {
        return arg0->stat.colHeader;
    }
    if (bgId < 0 || bgId > BG_ACTOR_MAX) {
        return 0;
    }
    if (!(arg0->dyna.flags[bgId] & 1)) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("T_BGCheck_getBGDataInfo():そのbg_actor_indexは使われておりません。index=%d\n");
        osSyncPrintf(VT_RST);
        return 0;
    }
    return arg0->dyna.actorMeshArr[bgId].colHeader;
}

//Test if pos is near collision boundaries
s32 func_8003C55C(StaticCollisionContext* arg0, Vec3f* pos) {
    if (pos->x < (arg0->minBounds.x - 50.0f)
        || (arg0->maxBounds.x + 50.0f) < pos->x
        || pos->y < (arg0->minBounds.y - 50.0f)
        || (arg0->maxBounds.y + 50.0f) < pos->y
        || pos->z < (arg0->minBounds.z - 50.0f)
        || (arg0->maxBounds.z + 50.0f) < pos->z) {
        return 0;
    }
    return 1;
}

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

s32 func_80041648(CollisionContext* arg0, u16 arg1, CollisionPoly* arg2, s32* arg3,
    Vec3f* arg4, f32 arg5, s16* arg6, u16 arg7);

s32 func_8003E214(CollisionContext* colCtx, u16 arg1, CollisionPoly* arg2, s32* arg3,
    Vec3f* arg4, f32 arg5, s16* arg6, u16 arg7) {
    Lookup* lookup;

    *arg3 = 0x32;
    if (func_80038600(arg4, "../z_bgcheck.c", 5852) == 1) {
        if (arg6 != NULL) {
            osSyncPrintf("こいつ,pself_actor->name %d\n", *arg6);
        }
    }
    lookup = func_8003AD00(colCtx, colCtx->stat.lookupTbl, arg4);
    if (lookup == NULL) {
        return 0;
    }
    else {
        if (func_8003AB28(lookup, arg1, colCtx, arg4, arg5, arg2, arg7) 
            || func_80041648(colCtx, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) {
            return 1;
        }
    }
    return 0;
}

void func_8003E30C(CollisionContext* colCtx, Vec3f* arg1, f32 arg2) {
    CollisionPoly* sp2C;
    s32 sp28;

    func_8003E214(colCtx, 0, &sp2C, &sp28, arg1, arg2, 0, 0);
}

void func_8003E350(CollisionContext* colCtx, Vec3f* arg1, f32 arg2) {
    CollisionPoly* sp2C;
    s32 sp28;

    func_8003E214(colCtx, 0, &sp2C, &sp28, arg1, arg2, 0, 5);
}

//mzxOK
//init PolyLinksList_s
void func_8003E398(PolyLinksList_s* this) {
    this->max = 0;
    this->count = 0;
    this->tbl = NULL;
    this->polyCheckTbl = NULL;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E3AC.s")

//mzxOK
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

//mzxOK
//setActor internal
void func_8003E750(ActorMesh* a0, DynaPolyActor* actor, CollisionHeader* colHeader)
{
    a0->actor = actor;
    a0->colHeader = colHeader;
    a0->srp1.scale = actor->actor.scale;
    a0->srp1.rot = actor->actor.shape.rot;
    a0->srp1.rot.x--;
    a0->srp1.pos = actor->actor.posRot.pos;
    a0->srp2.scale = actor->actor.scale;
    a0->srp2.rot = actor->actor.shape.rot;
    a0->srp2.pos = actor->actor.posRot.pos;
}

//mzxOK
void func_8003E804(ActorMesh* arg0) {
    func_8003E5B4(&arg0->srp1.scale, &arg0->srp2.scale);
}

//mzxOK
//null polyList
void func_8003E82C(CollisionPoly** polyList) {
    *polyList = NULL;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E834.s")

//mzxOK
//null vtxList 
void func_8003E888(Vec3s** vtxList) {
    *vtxList = NULL;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E890.s")

//mzxOK
void func_8003E8EC(GlobalContext* globalCtx, ActorMesh* arg1)
{
    arg1->srp1 = arg1->srp2;
}

//mzxOK
//Is BgActor/DynaPoly
s32 func_8003E934(int bgId) {
    if (bgId < 0 || bgId >= BG_ACTOR_MAX) {
        return false;
    }

    return true;
}

//mzxOK
void func_8003E954(GlobalContext* globalCtx, DynaCollisionContext* arg1) {
    arg1->unk_00 = 1;
    func_8003E82C(&arg1->dyn_poly);
    func_8003E888(&arg1->dyn_vtx);
    func_800387FC(globalCtx, &arg1->dyn_list);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E9A0.s")

//mzxOK
// original name: DynaPolyInfo_setActor
u32 func_8003EA74(GlobalContext* globalCtx, DynaCollisionContext* arg1, DynaPolyActor* arg2, CollisionHeader* arg3) {
    s32 i;
    s32 foundSlot;

    foundSlot = 0;
    for (i = 0; i < BG_ACTOR_MAX; i++)
    {
        if (!(arg1->flags[i] & 1))
        {
            arg1->flags[i] |= 1;
            foundSlot = 1;
            break;
        }
    }

    if (foundSlot == 0) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("DynaPolyInfo_setActor():ダイナミックポリゴン 空きインデックスはありません\n");
        osSyncPrintf(VT_RST);
        return BG_ACTOR_MAX;
    }

    func_8003E750(&arg1->actorMeshArr[i], arg2, arg3);
    arg1->unk_00 |= 1;

    arg1->flags[i] &= 0xFFFD;
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("DynaPolyInfo_setActor():index %d\n", i);
    osSyncPrintf(VT_RST);
    return i;
}

// we previously had this named as DynaPolyInfo_GetActor
DynaPolyActor* func_8003EB84(CollisionContext* arg0, s32 bgId) {
    if (!func_8003E934(bgId) 
        || !(arg0->dyna.flags[bgId] & 1)
        || arg0->dyna.flags[bgId] & 2) {
        return NULL;
    }
    return arg0->dyna.actorMeshArr[bgId].actor;
}

void func_8003EBF8(GlobalContext* globalCtx, DynaCollisionContext* arg1, s32 bgId) {
    if (func_8003E934(bgId)) {
        arg1->flags[bgId] |= 4;
        arg1->unk_00 |= 1;
    }
}

void func_8003EC50(GlobalContext* globalCtx, DynaCollisionContext* arg1, s32 bgId) {
    if (func_8003E934(bgId)) {
        arg1->flags[bgId] &= 0xFFFB;
        arg1->unk_00 |= 1;
    }
}

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

//mzxOK
void func_800417A0(CollisionHeader* arg0) {
    arg0->vertexArray = SEGMENTED_TO_VIRTUAL(arg0->vertexArray);
    arg0->polygonArray = SEGMENTED_TO_VIRTUAL(arg0->polygonArray);
    arg0->polygonTypes = SEGMENTED_TO_VIRTUAL(arg0->polygonTypes);
    arg0->cameraData = SEGMENTED_TO_VIRTUAL(arg0->cameraData);
    arg0->waterBoxes = SEGMENTED_TO_VIRTUAL(arg0->waterBoxes);
}

// we previously had this named as DynaPolyInfo_Alloc
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041880.s")

//mzxOK
void func_800418D0(CollisionContext* colCtx, GlobalContext* globalCtx) {
    DynaCollisionContext* dynaColCtx;
    s32 i;
    u16 flag;

    dynaColCtx = &colCtx->dyna;
    for (i = 0; i < BG_ACTOR_MAX; i++) {
        flag = dynaColCtx->flags[i];
        if ((flag & 1) && !(flag & 2)) {
            Actor_SetObjectDependency(globalCtx, dynaColCtx->actorMeshArr[i].actor);
            func_800417A0(dynaColCtx->actorMeshArr[i].colHeader);
        }
    }
}

//mzxOK
//Reset PolyLinksList_s polyCheckTbl
void func_80041978(PolyLinksList_s* arg0, int numPolys) {
    u8* t;

    for (t = arg0->polyCheckTbl; t < arg0->polyCheckTbl + numPolys; t++)
    {
        *t = 0;
    }
}

//mzxOK
//Get SurfaceType property set
u32 func_800419B0(CollisionContext* arg0, CollisionPoly* poly, s32 bgId, s32 surfacePropId) {
    CollisionHeader* colHeader;
    SurfaceType* temp_v1;

    colHeader = func_8003C4C4(arg0, bgId);
    if (colHeader == NULL || poly == NULL) {
        return 0;
    }
    temp_v1 = colHeader->polygonTypes;
    if ((u32)temp_v1 == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return temp_v1[poly->type].properties[surfacePropId];
}

//Collision, poly surface, return Camera Data Index 
u32 func_80041A28(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(arg0, poly, bgId, 0) & 0xff;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041D4C.s")

u32 func_80041D94(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(arg0, poly, bgId, 0) >> 0x15 & 0x1f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041EEC.s")

u32 func_80041F10(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(arg0, poly, bgId, 1) & 0xf;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004200C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042048.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042084.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800420E4.s")

u32 func_80042108(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return (func_800419B0(arg0, poly, bgId, 1) & 0x8000000) ? 1 : 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

u8 func_80042538(CollisionContext* colCtx, WaterBox* waterBox) {
    u32 prop = waterBox->properties;

    return prop;
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
