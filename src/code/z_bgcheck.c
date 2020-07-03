#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <z64actor.h>

#define SS_NULL 0xFFFF
#define COLPOLY_NORM_FRAC (1.0f / 32767)

#define COLPOLY_IGNORE_CEILING 1
#define COLPOLY_IGNORE_WALL 2
#define COLPOLY_IGNORE_FLOOR 4

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

//Set SSNode
void func_80038708(SSNode* node, s16* polyId, u16 next) {
    node->polyId = *polyId;
    node->next = next;
}

//Set SS_NULL
void func_8003871C(u16* arg0) {
    *arg0 = SS_NULL;
}

//Set static StaticList_s
void func_80038728(StaticList_s* arg0, u16* next, s16* polyId) {
    u16 newNode = func_8003E4DC(arg0); 

    func_80038708(&arg0->tbl[newNode], polyId, *next);
    *next = newNode;
}

//Set dynamic DynaList_s
void func_80038780(DynaList_s* arg0, u16* next, s16* polyId) {
    u16 newNode = func_80038878(arg0); 

    if (!(newNode != SS_NULL)) {
        __assert("new_node != SS_NULL", "../z_bgcheck.c", 1776);
    }

    func_80038708(&arg0->tbl[newNode], polyId, *next);
    *next = newNode;
}

//Init DynaList_s
void func_800387FC(GlobalContext* globalCtx, DynaList_s* dynaList_s) {
    dynaList_s->tbl = NULL;
    dynaList_s->count = 0;
}

//Initialize DynaList tbl
void func_8003880C(GlobalContext* globalCtx, DynaList_s* dynaList_s, s32 max) {
    dynaList_s->tbl = THA_AllocEndAlign(&globalCtx->state.tha, max * 4, -2);

    if (!(dynaList_s->tbl != NULL)) {
        __assert("psst->tbl != NULL", "../z_bgcheck.c", 1811);
    }

    dynaList_s->max = max;
    dynaList_s->count = 0;
}

//Reset DynaList_s count
void func_80038870(DynaList_s* arg0) {
    arg0->count = 0;
}

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

//get lowest y point
s16 func_80038924(CollisionPoly* poly, Vec3s* vtxList) {
    s32 a, b, c;
    s16 min;

    if (poly->norm.y == 0x7FFF || poly->norm.y == -0x7FFF) {
        return vtxList[poly->flags_vIA & 0x1FFF].y;
    }

    a = poly->flags_vIA & 0x1FFF;
    b = poly->flags_vIB & 0x1FFF;
    c = poly->vIC;

    min = vtxList[a].y;

    if (min > vtxList[b].y) {
        min = vtxList[b].y;
    }
    if (min < vtxList[c].y) {
        return min;
    }
    return vtxList[c].y;
}

//CollisionPoly get unit normal
void func_800389D4(CollisionPoly* poly, f32* unitNormX, f32* unitNormY, f32* unitNormZ) {
    *unitNormX = poly->norm.x * COLPOLY_NORM_FRAC;
    *unitNormY = poly->norm.y * COLPOLY_NORM_FRAC;
    *unitNormZ = poly->norm.z * COLPOLY_NORM_FRAC;
}

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

//Calculate point distance from plane
f32 func_80038B7C(CollisionPoly* poly, Vec3f* point) {
    return (poly->norm.x * point->x + poly->norm.y * point->y + poly->norm.z * point->z) * COLPOLY_NORM_FRAC + poly->dist;
}

//Get Poly Verts
void func_80038BE0(CollisionPoly* poly, Vec3s* vtxList, Vec3f* dest) {
    func_800388A8(&vtxList[poly->flags_vIA & 0x1FFF], &dest[0]);
    func_800388A8(&vtxList[poly->flags_vIB & 0x1FFF], &dest[1]);
    func_800388A8(&vtxList[poly->vIC], &dest[2]);
}

// original name: T_Polygon_GetVertex_bg_ai
void func_80038C78(CollisionPoly* poly, s32 bgId, CollisionContext* arg2, Vec3f* destPoly) {
    Vec3s* vtxList;

    if (poly == NULL || bgId > BG_ACTOR_MAX || (destPoly == NULL)) {
        osSyncPrintf(VT_COL(RED, WHITE));
        // translates to: "Argument not appropriate. Processing terminated."
        osSyncPrintf("T_Polygon_GetVertex_bg_ai(): Error %d %d %d 引数が適切ではありません。処理を終了します。\n",
                     poly == NULL, bgId > BG_ACTOR_MAX, destPoly == NULL);
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

        func_80038BE0(poly, vtxList, destPoly);
    }
}

s32 func_80038D48(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, f32* result, f32 arg5) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;
    Vec3s* vA;
    Vec3s* vB;
    Vec3s* vC;

    vA = &vtxList[poly->flags_vIA & 0x1FFF];
    Math_Vec3s_ToVec3f(&polyVtxs[0], vA);
    vB = &vtxList[poly->flags_vIB & 0x1FFF];
    Math_Vec3s_ToVec3f(&polyVtxs[1], vB);
    vC = &vtxList[poly->vIC];
    Math_Vec3s_ToVec3f(&polyVtxs[2], vC);

    normX = poly->norm.x * COLPOLY_NORM_FRAC;
    normY = poly->norm.y * COLPOLY_NORM_FRAC;
    normZ = poly->norm.z * COLPOLY_NORM_FRAC;

    return func_800CCF98(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg3, arg2, result, arg5);
}

s32 func_80038E78(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, f32* result, f32 arg5) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;

    func_80038BE0(poly, vtxList, polyVtxs);
    func_800389D4(poly, &normX, &normY, &normZ);
    return func_800CD044(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg3, arg2, result, arg5);
}

s32 func_80038F20(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, f32* result) {
    return func_80038D48(poly, vtxList, arg2, arg3, result, 1.0f);
}

void func_80038F60(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, f32* result) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;

    func_80038BE0(poly, vtxList, polyVtxs);
    func_800389D4(poly, &normX, &normY, &normZ);
    func_800CD6B0(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg2, arg3, result);
}

void func_80039000(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, f32* arg4) {
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
    planeDistA = (poly->norm.x * pointA->x + poly->norm.y * pointA->y + poly->norm.z * pointA->z) * COLPOLY_NORM_FRAC + plane.originDist;
    planeDistB = (poly->norm.x * pointB->x + poly->norm.y * pointB->y + poly->norm.z * pointB->z) * COLPOLY_NORM_FRAC + plane.originDist;

    planeDistDelta = planeDistA - planeDistB;
    if ((0.0f <= planeDistA && 0.0f <= planeDistB)
        || (planeDistA < 0.0f && planeDistB < 0.0f)
        || (arg5 != 0 && planeDistA < 0.0f && 0.0f < planeDistB)
        || fabsf(planeDistDelta) < 0.008f) {
        return false;
    }

    func_800389D4(poly, &plane.normal.x, &plane.normal.y, &plane.normal.z);
    func_80038BE0(poly, vtxList, polyVtxs);
    func_800CAFA0(pointA, pointB, planeDistA / planeDistDelta, arg4);
    if ((0.5f < fabsf(plane.normal.x) && func_800CD95C(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], &plane, arg4->y, arg4->z, arg6))
        || (0.5f < fabsf(plane.normal.y) && func_800CD2D8(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], &plane, arg4->z, arg4->x, arg6))
        || (0.5f < fabsf(plane.normal.z) && func_800CE010(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], &plane, arg4->x, arg4->y, arg6))) {
        return true;
    }
    return false;
}

s32 func_8003937C(CollisionPoly* poly, Vec3s* vtxList, Vec3f* center, f32 radius) {
    static Sphere16 sphere;
    static TriNorm tri;
    Vec3f sp1C;

    func_80038BE0(poly, vtxList, tri.vtx);
    func_800389D4(poly, &tri.plane.normal.x, &tri.plane.normal.y, &tri.plane.normal.z);
    tri.plane.originDist = poly->dist;
    sphere.center.x = center->x;
    sphere.center.y = center->y;
    sphere.center.z = center->z;
    sphere.radius = radius;
    return func_800CE934(&sphere, &tri, &sp1C);
}

#ifdef NON_MATCHING
//Add poly to lookup table. Table is sorted by poly's smallest y vertex component
//lookupId = StaticList_s insert id
//polyList = CollisionPoly lookup list
//vtxList = vertex lookup list
//polyId = index into polyList of CollisionPoly to insert into the lookup table
void func_80039448(CollisionContext* colCtx, u16* lookupId, CollisionPoly* polyList, Vec3s* vtxList, s16 polyId) {
    SSNode* ssCur; //t1, sp24
    SSNode* ssNext;
    CollisionPoly* colp;
    s32 yMin;
    u16 temp_ret;

    //if list is null
    if (SS_NULL == *lookupId) {
        func_80038728(&colCtx->stat.polyNodes, lookupId, &polyId);
        return;
    }
    yMin = func_80038924(polyList + polyId, vtxList);
    //e9c:    lw      t5,0x2c(sp)
    ssCur = colCtx->stat.polyNodes.tbl;
    ssCur += *lookupId;

    colp = polyList + ssCur->polyId;

    //if the poly being inserted is already the poly with the lowest y component
    if (yMin < vtxList[colp->flags_vIA & 0x1FFF].y
        && yMin < vtxList[colp->flags_vIB & 0x1FFF].y
        && yMin < vtxList[colp->vIC].y) {

        func_80038728(&colCtx->stat.polyNodes, lookupId, &polyId);
        return;
    }
    //f4c: ~> li      t3,6
    while (1)
    {
        //if list->next is null
        if (SS_NULL == ssCur->next) {
            temp_ret = func_8003E4DC(&colCtx->stat.polyNodes);
            func_80038708(colCtx->stat.polyNodes.tbl + temp_ret, &polyId, 0xFFFF);
            ssCur->next = temp_ret;
            return;
        }
        //f90: ~> addu    a0,t2,t9
        ssNext = colCtx->stat.polyNodes.tbl;
        ssNext += ssCur->next;

        colp = polyList + ssNext->polyId;

        //if the poly being inserted is lower than the next poly
        if (yMin < vtxList[colp->flags_vIA & 0x1FFF].y
            && yMin < vtxList[colp->flags_vIB & 0x1FFF].y
            && yMin < vtxList[colp->vIC].y) {

            temp_ret = func_8003E4DC(&colCtx->stat.polyNodes);
            func_80038708(colCtx->stat.polyNodes.tbl + temp_ret, &polyId, ssCur->next);
            ssCur->next = temp_ret;
            return;
        }
        ssCur = ssNext;
    }
} //temp_t1 temp_a0 prev
#else
void func_80039448(CollisionContext* colCtx, u16* lookupId, CollisionPoly* polyList, Vec3s* vtxList, s16 polyId);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039448.s")
#endif

//Add CollisionPoly to static lookup list
void func_8003965C(Lookup* lookup, CollisionContext* colCtx, CollisionPoly* polyList, Vec3s* vtxList, s16 index) {
    if (polyList[index].norm.y >= 0x4000) {
        func_80039448(colCtx, &lookup->floor, polyList, vtxList, index);

    } else if (polyList[index].norm.y <= -0x6666) {
        func_80039448(colCtx, &lookup->ceiling, polyList, vtxList, index);

    } else {
        func_80039448(colCtx, &lookup->wall, polyList, vtxList, index);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800396F0.s")
f32 func_800396F0(CollisionContext* colCtx, u16 arg1, u16* arg2, CollisionPoly** arg3, Vec3f* arg4, f32 arg5, f32 arg6, s32 arg7);
//f32 func_800396F0(CollisionContext* colCtx, u16 arg1, u16* arg2, CollisionPoly** arg3, Vec3f* arg4, f32 arg5, f32 arg6, s32 arg7) {
//    f32 sp78;
//    Vec3s* temp_a1;
//    s32 temp_s0;
//    u16 temp_v0;
//    CollisionPoly* temp_v1; //poly
//    CollisionPoly* phi_t0; //polyList
//    SSNode* phi_s1;
//    //s32 phi_t1 = ((arg1 & 0xFFFF) & 7) << 0xD; sp5C
//    //CollisionHeader* phi_a2;
//    f32 phi_f20;
//    //SSNode* phi_a1;
//
//
//    temp_v0 = *arg2;
//    phi_f20 = arg5;
//    if (SS_NULL == temp_v0) {
//        return phi_f20;
//    }
//    phi_t0 = colCtx->stat.colHeader->polygonArray;
//    phi_s1 = colCtx->stat.polyNodes.tbl + temp_v0;
//loop_3:
//    ////phi_a2 = colCtx->stat.colHeader;
//    ////phi_a1 = colCtx->stat.polyNodes.tbl;
//
//    temp_s0 = phi_s1->polyId; // * 0x10;
//    temp_v1 = phi_t0 + temp_s0;
//
//    if ((temp_v1->flags_vIA & (((arg1 & 0xFFFF) & 7) << 0xD)) != 0
//        || (arg7 & 1) != 0 && (s32)temp_v1->norm.y < 0) {
//
//        temp_v0 = phi_s1->next;
//        if (SS_NULL != temp_v0) {
//            phi_s1 = colCtx->stat.polyNodes.tbl + temp_v0;
//            goto loop_3;
//        }
//        //break;
//        goto block_17;
//    }
//    //temp_a1 = phi_a2->vertexArray;
//    temp_a1 = colCtx->stat.colHeader->vertexArray;
//    if (!(arg4->y < (f32)(temp_a1 + (temp_v1->flags_vIA & 0x1FFF))->y)
//        || !(arg4->y < (f32)(temp_a1 + (temp_v1->flags_vIB & 0x1FFF))->y)
//        || !(arg4->y < (f32)(temp_a1 + (temp_v1->vIC))->y)) {
//
//        if (func_80038E78(&phi_t0[temp_s0], temp_a1, arg4->x, arg4->z, &sp78, arg6) == true
//            && (sp78 < arg4->y)
//            && (phi_f20 < sp78)) {
//
//            *arg3 = colCtx->stat.colHeader->polygonArray + temp_s0;
//            phi_f20 = sp78;
//        }
//        temp_v0 = phi_s1->next;
//        if (SS_NULL != temp_v0) {
//
//            //phi_t0 = colCtx->stat.colHeader->polygonArray;
//            phi_s1 = colCtx->stat.polyNodes.tbl + temp_v0;
//            ////phi_a2 = colCtx->stat.colHeader;
//            ////phi_a1 = colCtx->stat.polyNodes.tbl;
//            goto loop_3;
//        }
//    }
//    else {
//        goto block_17;
//    }
//block_17:
//    return phi_f20;
//}


f32 func_8003992C(Lookup* lookup, CollisionContext* colCtx, u16 arg2, CollisionPoly** poly, Vec3f* arg4, u32 arg5, f32 arg6, f32 arg7) {
    s32 temp_v0;
    f32 temp_f2 = arg7;

    if (arg5 & 4) {
        temp_f2 = func_800396F0(colCtx, arg2, &lookup->floor, poly, arg4, temp_f2, arg6, 0);
    }

    if ((arg5 & 2) || (arg5 & 8)) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(colCtx, arg2, &lookup->wall, poly, arg4, temp_f2, arg6, temp_v0);
    }

    if (arg5 & 1) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(colCtx, arg2, &lookup->ceiling, poly, arg4, temp_f2, arg6, temp_v0);
    }

    return temp_f2;
}

#ifdef NON_MATCHING
// arg5 unused
// regalloc
s32 func_80039A3C(CollisionContext* colChk, CollisionPoly* poly, f32* arg2, f32* arg3, f32 arg4,
    f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, BgCheckInfo* bgChkInfo) {
    CollisionPoly* wallPoly;
    f32 temp_f0 = (arg9 - arg8) * arg7;

    *arg2 += temp_f0 * arg4;
    *arg3 += temp_f0 * arg6;

    wallPoly = bgChkInfo->wallPoly;
    if (wallPoly == NULL) {
        bgChkInfo->wallPoly = poly;
        return true;
    }
    else {
        SurfaceType* surfaceTypes = &colChk->stat.colHeader->polygonTypes[wallPoly->type];
        u32 wallDamage = surfaceTypes[0][1] & 0x08000000 ? 1 : 0;

        if (!wallDamage) {
            bgChkInfo->wallPoly = poly;
            return true;
        }
        return false;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039A3C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039AEC.s")

s32 func_8003A3E0(Lookup* lookup, u16 arg1, CollisionContext* arg2, f32* arg3, Vec3f* arg4, f32 arg5, CollisionPoly** arg6) {
    s32 result = false;
    u16 nextId;
    CollisionPoly* poly;
    CollisionPoly* polyList;
    f32 sp8C;
    Vec3s* vtxList;
    SSNode* curNode;
    u16 ceiling;

    ceiling = lookup->ceiling;
    if (SS_NULL == ceiling) {
        return false;
    }
    curNode = &arg2->stat.polyNodes.tbl[ceiling];
    polyList = arg2->stat.colHeader->polygonArray;
    vtxList = arg2->stat.colHeader->vertexArray;
    
    *arg3 = arg4->y;
    
    while (true) {
        s32 id = curNode->polyId;
        if ((arg2->stat.colHeader->polygonArray[id].flags_vIA & ((arg1 & 7) << 0xD)) != 0) {

            nextId = curNode->next;
            if (SS_NULL != nextId) {

                curNode = &arg2->stat.polyNodes.tbl[nextId];
                continue;
            }
            break;
        }
        poly = &polyList[id];
        if (func_80038F20(poly, vtxList, arg4->x, arg4->z, &sp8C)) {
            f32 temp_f0 = sp8C - *arg3;
            f32 nY = poly->norm.y * COLPOLY_NORM_FRAC;
            if (0.0f < temp_f0 && temp_f0 < arg5) {
                if (temp_f0 * nY <= 0) {

                    *arg3 = sp8C - arg5;
                    *arg6 = poly;
                    result = true;
                }
            }
        }
        nextId = curNode->next;
        if (SS_NULL != nextId) {

            curNode = &arg2->stat.polyNodes.tbl[nextId];
            continue;
        }
        break;
    }
    return result;
}

s32 func_8003A5B8(u16* node, StaticCollisionContext* stat, u16 xpFlagsA, u16 xpFlagsB, Vec3f* arg4, Vec3f* arg5, Vec3f* arg6, CollisionPoly** outPoly, f32* arg8, f32 arg9, s32 argA)
{
    SSNode* curNode;
    u8* checkedPoly;
    Vec3f sp84;
    CollisionPoly* polygonArray;
    CollisionPoly* curPoly;
    s32 result;
    f32 minY;
    f32 temp_f0_2;
    s16 polyId;
    u16 curNodeId;

    result = false;
    polygonArray = stat->colHeader->polygonArray;
    curNodeId = *node;
    if (SS_NULL == curNodeId) {
        return result;
    }

    curNode = stat->polyNodes.tbl + curNodeId;
    while (true)
    {
        polyId = curNode->polyId;
        checkedPoly = stat->polyNodes.polyCheckTbl + polyId;

        if (*checkedPoly == 1
            || (polygonArray[polyId].flags_vIA & ((xpFlagsA & 7) << 0xD)) != 0
            || !(xpFlagsB == 0 || (polygonArray[polyId].flags_vIA & ((xpFlagsB & 7) << 0xD)) != 0)) {

            curNodeId = curNode->next;
            if (SS_NULL != curNodeId) {

                curNode = stat->polyNodes.tbl + curNodeId;
                continue;
            }
            break;
        }
        *checkedPoly = 1;
        curPoly = polyId + polygonArray; 
        minY = (f32)func_80038924(curPoly, stat->colHeader->vertexArray);
        if (arg4->y < minY && arg5->y < minY) {
            break;
        }
        if (func_800390A0(curPoly, stat->colHeader->vertexArray, arg4, arg5, &sp84, (argA & 8) != 0, arg9)) {
            temp_f0_2 = func_800CB650(arg4, &sp84);
            if (temp_f0_2 < *arg8) {

                *arg8 = temp_f0_2;
                *arg6 = sp84;
                *arg5 = sp84;
                *outPoly = curPoly;
                result = true;
            }
        }
        curNodeId = curNode->next;
        if (SS_NULL == curNodeId) {
            break;
        }
        curNode = stat->polyNodes.tbl + curNodeId;
    }
    return result;
}

s32 func_8003A7D8(Lookup* lookup, StaticCollisionContext* stat, u16 arg2, u16 arg3, Vec3f* arg4, Vec3f* arg5, Vec3f* arg6, CollisionPoly** arg7, f32 arg8, f32* arg9, s32 argA) {
    s32 result = false;
    if (argA & 2) {
        if (lookup->floor != SS_NULL) {
            if (func_8003A5B8(&lookup->floor, stat, arg2, arg3, arg4, arg5, arg6, arg7, arg9, arg8, argA) != 0) {
                result = true;
            }
        }
    }

    if (argA & 1) {
        if (lookup->wall != SS_NULL) {
            if (func_8003A5B8(&lookup->wall, stat, arg2, arg3, arg4, arg5, arg6, arg7, arg9, arg8, argA) != 0) {
                result = true;
            }
        }
    }

    if (argA & 4) {
        if (lookup->ceiling != SS_NULL) {
            if (func_8003A5B8(&lookup->ceiling, stat, arg2, arg3, arg4, arg5, arg6, arg7, arg9, arg8, argA) != 0) {
                result = true;
            }
        }
    }
    return result;
}

#ifdef NON_MATCHING
//right ops, wrong order
s32 func_8003A95C(SSNode* node, u16 xpFlags, StaticCollisionContext* stat, Vec3f* center, f32 radius, CollisionPoly** outPoly) {

    CollisionPoly* curPoly; //temp_s0
    f32 temp_f0;
    u16 nextId; //v0
    SSNode* curNode;
    CollisionHeader* colHeader;
    CollisionPoly* polygonArray;
    Vec3s* vertexArray;
    
    curNode = node;
    polygonArray = stat->colHeader->polygonArray;
    vertexArray = stat->colHeader->vertexArray;

    while (true) {
        s16 id = curNode->polyId;

        if ((stat->colHeader->polygonArray[id].flags_vIA & ((xpFlags & 7) << 0xD)) != 0) {
            nextId = curNode->next;
            if (SS_NULL != nextId) {

                curNode = &stat->polyNodes.tbl[nextId];
                continue;
            }
            break;
        }

        curPoly = polygonArray + id;
        temp_f0 = center->y + radius;
        
        if (!(temp_f0 < vertexArray[curPoly->flags_vIA & 0x1FFF].y)
            || !(temp_f0 < vertexArray[curPoly->flags_vIB & 0x1FFF].y)
            || !(temp_f0 < vertexArray[curPoly->vIC].y)) {

            if (func_8003937C(curPoly, vertexArray, center, radius)) {
                *outPoly = curPoly;
                return true;
            }
            nextId = curNode->next;
            if (SS_NULL != nextId) {

                curNode = stat->polyNodes.tbl + nextId;
                continue;
            }
        }
        break;
    }
    return false;
}
#else
s32 func_8003A95C(SSNode* node, u16 xpFlags, StaticCollisionContext* stat, Vec3f* center, f32 radius, CollisionPoly** outPoly);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A95C.s")
#endif //  NON_MATCHING

//Test if sphere is colliding with scene
s32 func_8003AB28(Lookup* lookup, u16 xpFlags, StaticCollisionContext* colCtx, Vec3f* center, f32 radius, CollisionPoly** outPoly, u16 xpoFlags) {
    if (lookup->floor != SS_NULL && (xpoFlags & COLPOLY_IGNORE_FLOOR) == 0
        && func_8003A95C(&colCtx->polyNodes.tbl[lookup->floor], xpFlags, colCtx, center, radius, outPoly)) {
        return true;
    }

    if (lookup->wall != SS_NULL && (xpoFlags & COLPOLY_IGNORE_WALL) == 0
        && func_8003A95C(&colCtx->polyNodes.tbl[lookup->wall], xpFlags, colCtx, center, radius, outPoly)) {
        return true;
    }

    if (lookup->ceiling != SS_NULL && (xpoFlags & COLPOLY_IGNORE_CEILING) == 0
        && func_8003A95C(&colCtx->polyNodes.tbl[lookup->ceiling], xpFlags, colCtx, center, radius, outPoly)) {
        return true;
    }

    return false;
}

//Get Lookup sector
//Does not return null
Lookup* func_8003AC54(StaticCollisionContext* stat, Lookup* lookup, Vec3f* pos) {
    Vec3i sector;
    s32 regFix; 

    func_8003ADC8(stat, pos, &sector);
    regFix = stat->subdivisions.x;
    return (sector.z * regFix) * stat->subdivisions.y + lookup
        + sector.x
        + sector.y * regFix;
}

//Get Lookup sector
//Returns null if just outside the mesh bounding box
Lookup* func_8003AD00(StaticCollisionContext* stat, Lookup* lookup, Vec3f* pos) {
    Vec3i sector; 
    s32 regFix; 

    if (!func_8003C55C(stat, pos)) {
        return NULL;
    }
    func_8003ADC8(stat, pos, &sector);
    regFix = stat->subdivisions.x;
    return (sector.z * regFix) * stat->subdivisions.y + lookup
        + sector.x 
        + sector.y * regFix;
}

//Get Lookup position
void func_8003ADC8(StaticCollisionContext* stat, Vec3f* pos, Vec3i* sector) {
    sector->x = (pos->x - stat->minBounds.x) * stat->inverseUnitSize.x;
    sector->y = (pos->y - stat->minBounds.y) * stat->inverseUnitSize.y;
    sector->z = (pos->z - stat->minBounds.z) * stat->inverseUnitSize.z;

    if (sector->x < 0) {
        sector->x = 0;
    } else if (sector->x >= stat->subdivisions.x) {
        sector->x = stat->subdivisions.x - 1;
    }

    if (sector->y < 0) {
        sector->y = 0;
    } else if (sector->y >= stat->subdivisions.y) {
        sector->y = stat->subdivisions.y - 1;
    }

    if (sector->z < 0) {
        sector->z = 0;
    } else if (sector->z >= stat->subdivisions.z) {
        sector->z = stat->subdivisions.z - 1;
    }
}

//Get Negative Bias Lookup position
//decrements result Lookup coordinate if within 50 units of the negative boundary
void func_8003AEA8(StaticCollisionContext* stat, Vec3f* pos, s32* sx, s32* sy, s32* sz) {
    f32 temp1 = pos->x - stat->minBounds.x;
    f32 temp2 = pos->y - stat->minBounds.y;
    f32 temp3 = pos->z - stat->minBounds.z;
    *sx = temp1 * stat->inverseUnitSize.x;
    *sy = temp2 * stat->inverseUnitSize.y;
    *sz = temp3 * stat->inverseUnitSize.z;

    if (((s32)temp1 % (s32)stat->unitSize.x < 50) && (*sx > 0)) {
        *sx -= 1;
    }

    if (((s32)temp2 % (s32)stat->unitSize.y < 50) && (*sy > 0)) {
        *sy -= 1;
    }

    if (((s32)temp3 % (s32)stat->unitSize.z < 50) && (*sz > 0)) {
        *sz -= 1;
    }
} 

//Get Positive Bias Lookup position
//increments result Lookup coordinate if within 50 units of the postive boundary
void func_8003B04C(StaticCollisionContext* stat, Vec3f* pos, s32* sx, s32* sy, s32* sz) {
    f32 temp1 = pos->x - stat->minBounds.x;
    f32 temp2 = pos->y - stat->minBounds.y;
    f32 temp3 = pos->z - stat->minBounds.z;
    *sx = temp1 * stat->inverseUnitSize.x;
    *sy = temp2 * stat->inverseUnitSize.y;
    *sz = temp3 * stat->inverseUnitSize.z;

    if (((s32)stat->unitSize.x - 50 < (s32)temp1 % (s32)stat->unitSize.x) && (*sx < stat->subdivisions.x - 1)) {
        *sx += 1;
    }

    if (((s32)stat->unitSize.y - 50 < (s32)temp2 % (s32)stat->unitSize.y) && (*sy < stat->subdivisions.y - 1)) {
        *sy += 1;
    }

    if (((s32)stat->unitSize.z - 50 < (s32)temp3 % (s32)stat->unitSize.z) && (*sz < stat->subdivisions.z - 1)) {
        *sz += 1;
    }
} 

//Calculate CollisionPoly's Lookup grid coordinate range
void func_8003B218(CollisionContext* colCtx, Vec3s* vtxList, CollisionPoly* polyList, s32* gridMinX, s32* gridMinY, s32* gridMinZ, s32* gridMaxX, s32* gridMaxY, s32* gridMaxZ, s16 polyId) {
    u16* vtxDataTemp;
    Vec3f minVtx;
    Vec3f maxVtx;

    f32 x; 
    f32 y;
    f32 z; 

    Vec3s* temp_v0;
    s16 vtxId;

    vtxId = polyList[polyId].vtxData[0] & 0x1FFF;

    Math_Vec3s_ToVec3f(&maxVtx, &vtxList[vtxId]);
    Math_Vec3f_Copy(&minVtx, &maxVtx);
    for (vtxDataTemp = polyList[polyId].vtxData + 1; vtxDataTemp < polyList[polyId].vtxData + 3; vtxDataTemp++) {
        vtxId = *vtxDataTemp & 0x1FFF;
        temp_v0 = vtxId + vtxList;
        x = temp_v0->x;
        y = temp_v0->y;
        z = temp_v0->z;

        if (x < minVtx.x) {
            minVtx.x = x;
        }
        else if (maxVtx.x < x) {
            maxVtx.x = x;
        }

        if (y < minVtx.y) {
            minVtx.y = y;
        }
        else if (maxVtx.y < y) {
            maxVtx.y = y;
        }

        if (z < minVtx.z) {
            minVtx.z = z;
        }
        else if (maxVtx.z < z) {
            maxVtx.z = z;
        }
    }
    func_8003AEA8(&colCtx->stat, &minVtx, gridMinX, gridMinY, gridMinZ);
    func_8003B04C(&colCtx->stat, &maxVtx, gridMaxX, gridMaxY, gridMaxZ);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003B3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003BB18.s")
u16 func_8003BB18(CollisionContext* colCtx, GlobalContext* globalCtx, Lookup* arg2);

extern s16 D_80119E2C[19]; //SpotXX Scene Ids
s32 func_8003BF18(GlobalContext* globalCtx) {
    s16* i;

    for (i = D_80119E2C; i < D_80119E2C + 19; i++)
    {
        if (globalCtx->sceneNum == *i)
        {
            return true;
        }
    }
    return false;
}

struct BgChkMem
{
    s16 sceneId;
    u32 size;
};

extern struct BgChkMem D_80119E54[8];

s32 func_8003BF5C(s32 sceneId, u32* size) {
    s32 i;
    for (i = 0; i < 8; i++)
    {
        if (sceneId == D_80119E54[i].sceneId)
        {
            *size = D_80119E54[i].size;
            return true;
        }
    }
    return false;
}

//Compute division unit sizes for scene mesh lookup, for a single dimension
void func_8003BFF4(f32 min, s32 subdivisions, f32* max, f32* unitSize, f32* inverseUnitSize) {
    f32 temp_f14;
    f32 length;

    length = (*max - min);
    temp_f14 = (s32)(length / subdivisions) + 1;

    *unitSize = temp_f14;
    *unitSize = (temp_f14 < 150.0f) ? 150.0f : *unitSize;
    *inverseUnitSize = 1.0f / *unitSize;

    *max = *unitSize * subdivisions + min;
}

struct BgChkMemDungeon
{
    s16 sceneId;
    Vec3s subdivisions;
    u32 unk_0x08;
};

extern struct BgChkMemDungeon D_80119E94[2];

void func_8003C078(CollisionContext* colCtx, GlobalContext* globalCtx, CollisionHeader* arg2) {
    u32 phi_a2;
    u32 sp50;
    u32 temp_s2;
    StaticList_s* temp_a1;
    s32 phi_a0;
    u32 sp40;
    s32 phi_s2;
    s32 i;

    colCtx->stat.colHeader = arg2;
    phi_s2 = -1;
    osSyncPrintf("/*---------------- BGCheck バッファーメモリサイズ -------------*/\n");
    // /*---------------- BGCheck Buffer Memory Size -------------*/\n

    if (YREG(15) == 0x10 || YREG(15) == 0x20 || YREG(15) == 0x30 || YREG(15) == 0x40) {
        if (globalCtx->sceneNum == SCENE_MALON_STABLE) {
            osSyncPrintf("/* BGCheck LonLonサイズ %dbyte */\n", 0x3520);
            // /* BGCheck LonLon Size %dbyte */\n
            colCtx->dyna.unk_1410 = 0x3520U;
        }
        else {
            osSyncPrintf("/* BGCheck ミニサイズ %dbyte */\n", 0x4E20);
            // /* BGCheck Mini Size %dbyte */\n
            colCtx->dyna.unk_1410 = 0x4E20U;
        }
        colCtx->dyna.dyn_list_max = 500;
        colCtx->dyna.dyn_poly_max = 256;
        colCtx->dyna.dyn_vtx_max = 256;
        colCtx->stat.subdivisions.x = 2;
        colCtx->stat.subdivisions.y = 2;
        colCtx->stat.subdivisions.z = 2;
    }
    else if (func_8003BF18(globalCtx) == true) {
        colCtx->dyna.unk_1410 = 0xF000U;
        osSyncPrintf("/* BGCheck Spot用サイズ %dbyte */\n", 0xF000);
        // /* BGCheck Spot Size %dbyte */\n
        colCtx->dyna.dyn_list_max = 1000;
        colCtx->dyna.dyn_poly_max = 512;
        colCtx->dyna.dyn_vtx_max = 512;
        colCtx->stat.subdivisions.x = 16;
        colCtx->stat.subdivisions.y = 4;
        colCtx->stat.subdivisions.z = 16;
    }
    else {
        if (func_8003BF5C(globalCtx->sceneNum, &sp40) != 0) {
            colCtx->dyna.unk_1410 = sp40;
        }
        else {
            colCtx->dyna.unk_1410 = 0x1CC00U;
        }
        osSyncPrintf("/* BGCheck ノーマルサイズ %dbyte  */\n", colCtx->dyna.unk_1410);
        // /* BGCheck Normal Size %dbyte  */\n
        colCtx->dyna.dyn_list_max = 1000;
        colCtx->dyna.dyn_poly_max = 512;
        colCtx->dyna.dyn_vtx_max = 512;
        phi_a0 = 0;

        for (i = 0; i < 2; i++) {
            if (globalCtx->sceneNum == D_80119E94[i].sceneId) {
                colCtx->stat.subdivisions.x = D_80119E94[i].subdivisions.x;
                colCtx->stat.subdivisions.y = D_80119E94[i].subdivisions.y;
                colCtx->stat.subdivisions.z = D_80119E94[i].subdivisions.z;
                phi_a0 = 1;
                phi_s2 = D_80119E94[i].unk_0x08;
            }
        }
        if (phi_a0 == 0) {
            colCtx->stat.subdivisions.x = 16;
            colCtx->stat.subdivisions.y = 4;
            colCtx->stat.subdivisions.z = 16;
        }
    }
    colCtx->stat.lookupTbl = THA_AllocEndAlign(&globalCtx->state.tha, ((colCtx->stat.subdivisions.x * 6) * colCtx->stat.subdivisions.y) * colCtx->stat.subdivisions.z, -2);
    if (colCtx->stat.lookupTbl == NULL) {
        LogUtils_HungupThread("../z_bgcheck.c", 4176);
    }
    colCtx->stat.minBounds.x = colCtx->stat.colHeader->minBounds.x;
    colCtx->stat.minBounds.y = colCtx->stat.colHeader->minBounds.y;
    colCtx->stat.minBounds.z = colCtx->stat.colHeader->minBounds.z;
    colCtx->stat.maxBounds.x = colCtx->stat.colHeader->maxBounds.x;
    colCtx->stat.maxBounds.y = colCtx->stat.colHeader->maxBounds.y;
    colCtx->stat.maxBounds.z = colCtx->stat.colHeader->maxBounds.z;
    func_8003BFF4(colCtx->stat.minBounds.x, colCtx->stat.subdivisions.x, &colCtx->stat.maxBounds.x, &colCtx->stat.unitSize.x, &colCtx->stat.inverseUnitSize.x);
    func_8003BFF4(colCtx->stat.minBounds.y, colCtx->stat.subdivisions.y, &colCtx->stat.maxBounds.y, &colCtx->stat.unitSize.y, &colCtx->stat.inverseUnitSize.y);
    func_8003BFF4(colCtx->stat.minBounds.z, colCtx->stat.subdivisions.z, &colCtx->stat.maxBounds.z, &colCtx->stat.unitSize.z, &colCtx->stat.inverseUnitSize.z);
    sp50 = 
        colCtx->stat.subdivisions.x * sizeof(Lookup) * colCtx->stat.subdivisions.y * colCtx->stat.subdivisions.z
        + colCtx->stat.colHeader->nbPolygons + colCtx->dyna.dyn_list_max * sizeof(SSNode)
        + colCtx->dyna.dyn_poly_max * sizeof(CollisionPoly) + colCtx->dyna.dyn_vtx_max * sizeof(Vec3s) + 0x1464;
    if (phi_s2 > 0) {
        phi_a2 = (u32)phi_s2;
    }
    else {
        if ((u32)colCtx->dyna.unk_1410 < sp50) {
            LogUtils_HungupThread("../z_bgcheck.c", 4230);
        }
        phi_a2 = (u32)(colCtx->dyna.unk_1410 - sp50) >> 2;
    }

    func_8003E398(&colCtx->stat.polyNodes);
    func_8003E3AC(globalCtx, &colCtx->stat.polyNodes, phi_a2, colCtx->stat.colHeader->nbPolygons);

    temp_s2 = func_8003BB18(colCtx, globalCtx, colCtx->stat.lookupTbl);
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("/*---結局 BG使用サイズ %dbyte---*/\n", sp50 + temp_s2);
    osSyncPrintf(VT_RST);

    func_8003E954(globalCtx, &colCtx->dyna);
    func_8003E9A0(globalCtx, &colCtx->dyna);
}

//original name: T_BGCheck_getBGDataInfo
CollisionHeader* func_8003C4C4(CollisionContext* colCtx, s32 bgId) {
    if (bgId == BG_ACTOR_MAX) {
        return colCtx->stat.colHeader;
    }
    if (bgId < 0 || bgId > BG_ACTOR_MAX) {
        return 0;
    }
    if (!(colCtx->dyna.flags[bgId] & 1)) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("T_BGCheck_getBGDataInfo():そのbg_actor_indexは使われておりません。index=%d\n");
        osSyncPrintf(VT_RST);
        return 0;
    }
    return colCtx->dyna.bgActors[bgId].colHeader;
}

//Test if pos is near collision boundaries
s32 func_8003C55C(StaticCollisionContext* stat, Vec3f* pos) {
    if (pos->x < (stat->minBounds.x - 50.0f)
        || (stat->maxBounds.x + 50.0f) < pos->x
        || pos->y < (stat->minBounds.y - 50.0f)
        || (stat->maxBounds.y + 50.0f) < pos->y
        || pos->z < (stat->minBounds.z - 50.0f)
        || (stat->maxBounds.z + 50.0f) < pos->z) {
        return 0;
    }
    return 1;
}

//arg4 = out, possibly bgId
f32 func_8003C614(GlobalContext* globalCtx, CollisionContext* colCtx, u16 arg2, CollisionPoly** outPoly,
    u32* arg4, Vec3f* arg5, Actor* actor, u32 arg7, f32 arg8) {

    f32 temp_f0_2;
    s32* temp_a0;
    Lookup* temp_s5;
    Vec3f spA0;
    Lookup* temp_v0;
    s8003FBF4 sp6C;
    f32 phi_f22;

    *arg4 = BGCHECK_SCENE;
    *outPoly = NULL;
    temp_s5 = colCtx->stat.lookupTbl;
    phi_f22 = -32000.0f;
    spA0 = *arg5;

    while (true) {
        if (!(spA0.y < colCtx->stat.minBounds.y)) {
            if (func_80038600(&spA0, "../z_bgcheck.c", 4410)) {
                if (actor != NULL) {
                    osSyncPrintf("こいつ,pself_actor->name %d\n", actor->id);
                }
            }
            temp_v0 = func_8003AD00(&colCtx->stat, temp_s5, &spA0);
            if (temp_v0 == NULL) {
                spA0.y -= colCtx->stat.unitSize.y;
                continue;
            }
            phi_f22 = func_8003992C(temp_v0, colCtx, arg2, outPoly, arg5, arg7, arg8, -32000.0f);
            if (!(-32000.0f < phi_f22)) {
                spA0.y -= colCtx->stat.unitSize.y;
                continue;
            }
        }
        break;
    }

    sp6C.colCtx = &colCtx->stat;
    sp6C.unk_08 = arg2; 
    sp6C.unk_10 = phi_f22;
    sp6C.unk_14 = arg5; 
    sp6C.unk_1C = actor;
    sp6C.unk_20 = arg7; 
    sp6C.unk_24 = arg8; 
    sp6C.globalCtx = globalCtx; 
    sp6C.unk_0C = outPoly;
    sp6C.unk_18 = arg4; 
    temp_f0_2 = func_8003FDDC(&sp6C);

    if (phi_f22 < temp_f0_2) {
        phi_f22 = temp_f0_2;
    }

    if (phi_f22 != -32000.0f) {
        if (func_80041EC8(colCtx, *outPoly, *arg4) != 0) {
            phi_f22 -= 1.0f;
        }
    }
    return phi_f22;
}

f32 func_8003C834(CollisionContext* colCtx, CollisionPoly** outPoly, Vec3f* arg2) {
    u32 sp34;

    return func_8003C614(NULL, colCtx, 1, outPoly, &sp34, arg2, NULL, 0x1C, 1.0f);
}

f32 func_8003C890(CollisionContext* colCtx, CollisionPoly** outPoly, Vec3f* arg2) {
    u32 sp34;

    return func_8003C614(NULL, colCtx, 2, outPoly, &sp34, arg2, NULL, 0x1C, 1.0f);
}

f32 func_8003C8EC(GlobalContext* globalCtx, CollisionContext* colCtx, CollisionPoly** arg2, Vec3f* arg3) {
    u32 sp34;

    return func_8003C614(globalCtx, colCtx, 2, arg2, &sp34, arg3, NULL, 0x1C, 1.0f);
}

f32 func_8003C940(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Vec3f* arg3) {
    return func_8003C614(NULL, colCtx, 2, outPoly, arg2, arg3, NULL, 0x1C, 1.0f);
}

f32 func_8003C9A4(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Actor* arg3, Vec3f* arg4) {
    return func_8003C614(NULL, colCtx, 2, outPoly, arg2, arg4, arg3, 0x1C, 1.0f);
}

f32 func_8003CA0C(GlobalContext* globalCtx, CollisionContext* colCtx, CollisionPoly** arg2, u32* arg3, Actor* arg4, Vec3f* arg5) {
    return func_8003C614(globalCtx, colCtx, 2, arg2, arg3, arg5, arg4, 0x1C, 1.0f);
}

f32 func_8003CA64(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Actor* arg3, Vec3f* arg4, f32 arg5) {
    return func_8003C614(NULL, colCtx, 2, outPoly, arg2, arg4, arg3, 0x1C, arg5);
}

f32 func_8003CAC8(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Actor* arg3, Vec3f* arg4) {
    return func_8003C614(NULL, colCtx, 2, outPoly, arg2, arg4, arg3, 6, 1.0f);
}

f32 func_8003CB30(CollisionContext* colCtx, CollisionPoly* outPoly, Vec3f* arg2) {
    CollisionPoly* sp3C;
    f32 result;
    u32 sp34;

    result = func_8003C614(NULL, colCtx, 0, &sp3C, &sp34, arg2, NULL, 0x1C, 1.0f);
    if (sp3C != NULL) {
        *outPoly = *sp3C;
    }
    return result;
}

f32 func_8003CBE8(CollisionContext* colCtx, CollisionPoly* outPoly, u32* arg2, Vec3f* arg3) {
    CollisionPoly* sp34;
    f32 result;

    result = func_8003C614(NULL, colCtx, 0, &sp34, arg2, arg3, NULL, 0x1C, 1.0f);
    if (sp34 != NULL) {
        *outPoly = *sp34;
    }
    return result;
}

f32 func_8003CCA4(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Vec3f* arg3) {
    return func_8003C614(NULL, colCtx, 1, outPoly, arg2, arg3, NULL, 6, 1.0f);
}

f32 func_8003CD08(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Actor* arg3, Vec3f* arg4) {
    return func_8003C614(NULL, colCtx, 2, outPoly, arg2, arg4, arg3, 2, 1.0f);
}

f32 func_8003CD70(CollisionContext* colCtx, CollisionPoly** outPoly, u32* arg2, Vec3f* arg3) {
    return func_8003C614(NULL, colCtx, 2, outPoly, arg2, arg3, NULL, 6, 1.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CDD4.s")

s32 func_8003D464(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, f32 arg6) {
    u32 bgId;

    return func_8003CDD4(colCtx, 2, arg1, arg2, arg3, arg4, arg5, &bgId, NULL, arg6, 0);
}

s32 func_8003D4C8(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u32* bgId, f32 arg7) {
    return func_8003CDD4(colCtx, 2, arg1, arg2, arg3, arg4, arg5, bgId, NULL, arg7, 0);
}

s32 func_8003D52C(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u32* bgId, Actor* arg7, f32 arg8) {
    return func_8003CDD4(colCtx, 2, arg1, arg2, arg3, arg4, arg5, bgId, arg7, arg8, 0);
}

s32 func_8003D594(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u32* bgId, Actor* arg7, f32 arg8) {
    return func_8003CDD4(colCtx, 2, arg1, arg2, arg3, arg4, arg5, bgId, arg7, arg8, 1);
}

s32 func_8003D600(CollisionContext* colCtx, u16 arg1, f32* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u32* arg6, Actor* arg7) {
    Lookup* lookup;
    int pad;
    s32 result;
    Vec3f sp40;
    f32 sp3C;

    *arg6 = 50;
    *arg2 = arg3->y;
    if (func_80038600(arg3, "../z_bgcheck.c", 5206) == true) {
        if (arg7 != NULL) {
            osSyncPrintf("こいつ,pself_actor->name %d\n", arg7->id);

        }
    }
    lookup = colCtx->stat.lookupTbl;
    if (func_8003C55C(&colCtx->stat, arg3) == 0) {
        return 0;
    }

    result = func_8003A3E0(func_8003AC54(&colCtx->stat, lookup, arg3), arg1, colCtx, arg2, arg3, arg4, arg5);

    sp40 = *arg3;
    sp40.y = *arg2;
    sp3C = *arg2;

    if (func_80040E40(colCtx, arg1, &sp3C, &sp40, arg4, arg5, arg6, arg7) != 0) {
        *arg2 = sp3C;
        result = 1; 
    }
    return result;
}

s32 func_8003D754(CollisionContext* colCtx, f32* arg1, Vec3f* arg2, f32 arg3) {
    CollisionPoly* sp2C;
    u32 sp28;

    return func_8003D600(colCtx, 0, arg1, arg2, arg3, &sp2C, &sp28, NULL);
}

s32 func_8003D7A0(CollisionContext* colCtx, f32* arg1, Vec3f* arg2, f32 arg3, CollisionPoly** arg4, u32* arg5, Actor* arg6) {
    return func_8003D600(colCtx, 2, arg1, arg2, arg3, arg4, arg5, arg6);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7F0.s")
s32 func_8003D7F0(CollisionContext* colCtx, u16 arg1, u16 arg2, Vec3f* arg3, Vec3f* arg4, Vec3f* arg5, CollisionPoly** arg6, u32* arg7, Actor* arg8, f32 arg9, s32 argA);
//{
//    s32 spD8;
//    Vec3i spCC;
//    Vec3i spC0;
//    s32 spBC;
//    s32 spB8;
//    f32 spB4;
//    Vec3f spA8;
//
//    //minSector
//    Vec3f sp9C;
//    Vec3f sp90;
//    s32 sp84;
//    s32 sp80;
//    s32 sp6C;
//    f32* temp_fp;
//    //Vec3f* temp_s3; sp9C
//    //f32* temp_s4;
//    f32 temp_f16;
//    f32 temp_f4;
//    f32 temp_f8;
//    //s32* temp_v0;
//    s32 temp_a1;
//    s32 temp_a2;
//    s32 temp_a2_2;
//    s32 temp_lo;
//    s32 temp_s1;
//    s32 temp_t0;
//    s32 temp_v0_2;
//    s32 temp_v0_3;
//    //s32 temp_v0_4;
//    s32* phi_v1;
//    s32* phi_v0;
//    s32 phi_v1_2;
//    s32 phi_a3;
//    s32 phi_t0;
//    s32 phi_v0_2;
//    s32 phi_a1;
//    s32 phi_a2;
//    s32 phi_s0;
//    s32 phi_s1;
//    s32 phi_a2_2;
//    s32 phi_v1_3;
//    s32 phi_t0_2;
//    s32 phi_v0_3;
//    f32* phi_fp;
//    s32 phi_a3_2;
//    s32 phi_a1_2;
//    s32 phi_a0;
//    s32 phi_a0_2;
//    s32 phi_a0_3;
//
//    temp_s1 = colCtx->stat.lookupTbl;
//    spA8 = *arg4;
//    *arg7 = BGCHECK_SCENE;
//    if ((func_80038600(arg3, "../z_bgcheck.c", 5334) == true) || (func_80038600(arg4, "../z_bgcheck.c", 5335) == true)) {
//        if (arg8 != NULL) {
//            osSyncPrintf("こいつ,pself_actor->name %d\n", arg8->id);
//        }
//        else {
//            osSyncPrintf("pself_actor == NULLで犯人不明\n");
//        }
//    }
//    func_80041978(&colCtx->stat.polyNodes, colCtx->stat.colHeader->nbPolygons);
//    func_8003ADC8(&colCtx->stat, arg3, &spCC);
//    func_8003ADC8(&colCtx->stat, &spA8, &spC0);
//    *arg5 = *arg4;
//    spB8 = 0;
//    spB4 = 1.0e38f;// .0f;
//    *arg6 = NULL;
//
//    phi_v1 = &spC0;
//    phi_v0 = &spCC;
//    if (spCC.x != spC0.x || spCC.y != spC0.y || spCC.z != spC0.z) {
//        s32 i = 0;
//        for (i = 0; i < 3; i++) { //AB4B0C
//
//        //loop_8:
//            temp_a1 = *phi_v1;
//            temp_a2 = *phi_v0;
//            if (temp_a1 < temp_a2) {
//                *phi_v1 = temp_a2;
//                *phi_v0 = temp_a1;
//            }
//
//            phi_v0++;
//            phi_v1++;
//            //if ((u32)temp_v0 < (u32)&spD8) {
//            //    goto loop_8;
//            //}
//        }
//        temp_lo = colCtx->stat.subdivisions.x * colCtx->stat.subdivisions.y;
//        temp_v0_2 = spC0.z + 1;
//        //temp_s4 = &sp90;
//        //temp_s3 = &sp9C;
//        temp_f4 = ((f32)spCC.z * colCtx->stat.unitSize.z) + colCtx->stat.minBounds.z;
//        sp9C.z = temp_f4;
//        sp90.z = colCtx->stat.unitSize.z + temp_f4;
//        if (spCC.z < temp_v0_2) {
//            //goto block_25;
//
//            sp6C = temp_lo * 6;
//            phi_v1_2 = spC0.y + 1;
//            phi_a3 = ((spCC.z * temp_lo) * 6) + temp_s1;
//            phi_t0 = spCC.z;
//            phi_a0_2 = 6;
//            phi_v0_3 = temp_v0_2;
//        loop_13:
//            temp_f8 = ((f32)spCC.y * colCtx->stat.unitSize.y) + colCtx->stat.minBounds.y;
//            sp9C.y = temp_f8;
//            sp90.y = colCtx->stat.unitSize.y + temp_f8;
//            phi_t0_2 = phi_t0;
//            phi_a3_2 = phi_a3;
//            if (spCC.y < phi_v1_2) {
//                //goto block_24;
//
//                spD8 = phi_a3;
//                spBC = phi_t0;
//                phi_v0_2 = spC0.x + 1;
//                phi_a1 = ((spCC.y * colCtx->stat.subdivisions.x) * phi_a0_2) + phi_a3;
//                phi_a2 = spCC.y;
//                phi_a0_3 = phi_a0_2;
//                phi_v1_3 = phi_v1_2;
//            loop_15:
//                temp_f16 = ((f32)spCC.x * colCtx->stat.unitSize.x) + colCtx->stat.minBounds.x;
//                sp9C.x = temp_f16;
//                sp90.x = colCtx->stat.unitSize.x + temp_f16;
//                phi_a2_2 = phi_a2;
//                phi_a1_2 = phi_a1;
//                phi_a0 = phi_a0_3;
//                if (spCC.x < phi_v0_2) {
//                    //goto block_22;
//
//                    sp80 = phi_a1;
//                    sp84 = phi_a2;
//                    phi_s0 = (spCC.x * phi_a0_3) + phi_a1;
//                    phi_s1 = spCC.x;
//                loop_17:
//                    if (func_800CBC60(&sp9C, &sp90, arg3, &spA8) == 1
//                        || func_8003A7D8(phi_s0, colCtx, arg1, arg2, arg3, &spA8, arg5, arg6, arg9, &spB4, argA) != 0) {
//                        //goto block_20;
//
//                        spB8 = 1;
//                    }
//                block_20:
//                    phi_s1++;// = phi_s1 + 1;
//                    temp_v0_3 = spC0.x +1;
//                    sp9C.x += colCtx->stat.unitSize.x;
//                    sp90.x += colCtx->stat.unitSize.x;
//                    phi_s0 += 6;
//
//                    if (phi_s1 < temp_v0_3) {
//                        goto loop_17;
//                    }
//                    phi_a2_2 = sp84;
//                    phi_v1_3 = spC0.y + 1;
//                    phi_v0_2 = temp_v0_3;
//                    phi_a1_2 = sp80;
//                    phi_a0 = 6;
//                }
//            block_22:
//                temp_a2_2 = phi_a2_2 + 1;
//                sp9C.y += colCtx->stat.unitSize.y;
//                sp90.y += colCtx->stat.unitSize.y;
//                phi_a1 = phi_a1_2 + (colCtx->stat.subdivisions.x * phi_a0);
//                phi_a2 = temp_a2_2;
//                phi_a0_3 = phi_a0;
//                if (temp_a2_2 < phi_v1_3) {
//                    goto loop_15;
//                }
//                phi_t0_2 = spBC;
//                phi_v0_3 = spC0.z + 1;
//                phi_v1_2 = phi_v1_3;
//                phi_a3_2 = spD8;
//                phi_a0_2 = phi_a0;
//            }
//        block_24:
//            temp_t0 = phi_t0_2 + 1;
//            sp9C.z += colCtx->stat.unitSize.z;
//            sp90.z += colCtx->stat.unitSize.z;
//            phi_a3 = phi_a3_2 + sp6C;
//            phi_t0 = temp_t0;
//            if (temp_t0 < phi_v0_3) {
//                goto loop_13;
//            }
//        }
//    block_25:
//        phi_fp = &spB4;
//        //goto block_30;
//    }
////block_26:
//    else
//    {
//        if (func_8003C55C(&colCtx->stat, arg3) == 0) {
//            //goto block_28;
//            return 0;
//        }
//    //block_28:
//        //temp_fp = &spB4;
//        spB8 = func_8003A7D8(func_8003AC54(colCtx, temp_s1, arg3), colCtx, arg1, arg2, arg3, &spA8, arg5, arg6, arg9, &spB4, argA);
//        //phi_fp = temp_fp;
//        if (spB8 == 1) {
//            //goto block_30;
//            spB4 = func_800CB650(arg5, arg3);
//            //phi_fp = temp_fp;
//        }
//    }
//block_30:
//    if ((argA & 0x10) != 0
//        || func_80041240(colCtx, arg1, arg3, &spA8, arg5, arg6, &spB4, arg7, arg8, arg9, argA) != 0) {
//        spB8 = 1;
//    }
//block_33:
//    return spB8;
//}

u32 func_8003DD28(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4) {
    u32 phi_v1;

    phi_v1 = 0;
    if (arg0 != 0) {
        phi_v1 = 1;
    }
    if (arg1 != 0) {
        phi_v1 |= 2;
    }
    if (arg2 != 0) {
        phi_v1 |= 4;
    }
    if (arg3 != 0) {
        phi_v1 |= 8;
    }
    if (arg4 != 0) {
        phi_v1 |= 0x10;
    }
    return phi_v1;
}

s32 func_8003DD6C(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, u32 arg5, u32 arg6, u32 arg7, u32 arg8, u32* bgId) {
    return func_8003D7F0(colCtx, 1, 0, arg1, arg2, arg3, arg4, bgId, NULL, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003DDF8(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, u32 arg5, u32 arg6, u32 arg7, u32 arg8, u32* bgId) {
    return func_8003D7F0(colCtx, 0, 1, arg1, arg2, arg3, arg4, bgId, NULL, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003DE84(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, u32 arg5, u32 arg6, u32 arg7, u32 arg8, u32* bgId) {
    return func_8003D7F0(colCtx, 2, 0, arg1, arg2, arg3, arg4, bgId, NULL, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003DF10(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, u32* bgId, Actor* actor) {
    return func_8003D7F0(colCtx, 2, 0, arg1, arg2, arg3, arg4, bgId, actor, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003DFA0(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, u32* bgId, Actor* actor, f32 argB) {
    return func_8003D7F0(colCtx, 2, 0, arg1, arg2, arg3, arg4, bgId, actor, argB, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003E02C(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, u32* bgId) {
    return func_8003D7F0(colCtx, 4, 0, arg1, arg2, arg3, arg4, bgId, NULL, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003E0B8(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32 arg5) {
    return func_8003E0FC(colCtx, arg1, arg2, arg3, arg4, 1, 1, 1, arg5);
}

//arg1 is actor pos (torch slug +24)
//arg2 is ? (torch slug + 264)
s32 func_8003E0FC(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    u32 bgId;

    return func_8003D7F0(colCtx, 0, 0, arg1, arg2, arg3, arg4, &bgId, NULL, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003E188(CollisionContext* colCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, CollisionPoly** arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, u32* bgId) {
    return func_8003D7F0(colCtx, 0, 0, arg1, arg2, arg3, arg4, bgId, NULL, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

s32 func_8003E214(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, s32* outBgId, Vec3f* center, f32 radius, DynaPolyActor* actor, u16 xpoFlags) {
    Lookup* lookup;

    *outBgId = BGCHECK_SCENE;
    if (func_80038600(center, "../z_bgcheck.c", 5852) == true) {
        if (actor != NULL) {
            osSyncPrintf("こいつ,pself_actor->name %d\n", actor->actor.id);
        }
    }
    lookup = func_8003AD00(&colCtx->stat, colCtx->stat.lookupTbl, center);
    if (lookup == NULL) {
        return 0;
    }
    else {
        if (func_8003AB28(lookup, xpFlags, &colCtx->stat, center, radius, outPoly, xpoFlags)
            || func_80041648(colCtx, xpFlags, outPoly, outBgId, center, radius, actor, xpoFlags)) {
            return true;
        }
    }
    return false;
}

void func_8003E30C(CollisionContext* colCtx, Vec3f* center, f32 radius) {
    CollisionPoly* poly;
    s32 bgId;

    func_8003E214(colCtx, 0, &poly, &bgId, center, radius, NULL, 0);
}

void func_8003E350(CollisionContext* colCtx, Vec3f* center, f32 radius) {
    CollisionPoly* poly;
    s32 bgId;

    func_8003E214(colCtx, 0, &poly, &bgId, center, radius, NULL, COLPOLY_IGNORE_FLOOR | COLPOLY_IGNORE_CEILING);
}

//init StaticList_s
void func_8003E398(StaticList_s* this) {
    this->max = 0;
    this->count = 0;
    this->tbl = NULL;
    this->polyCheckTbl = NULL;
}

//Allocate StaticList_s
//tblMax is the number of SSNode records to allocate
//numPolys is the number of polygons defined within the CollisionHeader
void func_8003E3AC(GlobalContext* globalCtx, StaticList_s* arg1, s32 tblMax, s32 numPolys) {
    arg1->max = tblMax;
    arg1->count = 0;
    arg1->tbl = THA_AllocEndAlign(&globalCtx->state.tha, tblMax * sizeof(SSNode), -2);

    if (!(arg1->tbl != NULL)) {
        __assert("this->short_slist_node_tbl != NULL", "../z_bgcheck.c", 5975);
    }
    arg1->polyCheckTbl = Game_Alloc(&globalCtx->state, numPolys, "../z_bgcheck.c", 5979);
    if (!(arg1->polyCheckTbl != NULL)) {
        __assert("this->polygon_check != NULL", "../z_bgcheck.c", 5981);
    }
}

#ifdef  NON_MATCHING
SSNode* func_8003E458(StaticList_s* this) {
    SSNode* result;
    result = &this->tbl[this->count++];

    if (!(this->count < this->max)) {
        __assert("this->short_slist_node_last_index < this->short_slist_node_size", "../z_bgcheck.c", 5998);
    }
    if (!(this->count < this->max)) {
        return NULL;
    }
    return result;
}
#else 
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E458.s")
#endif //  NON_MATCHING

//Get StaticList_s Next
u16 func_8003E4DC(StaticList_s* arg0) {
    u16 new_index;

    new_index = arg0->count++;

    if (!(new_index < arg0->max)) {
        __assert("new_index < this->short_slist_node_size", "../z_bgcheck.c", 6021);
    }
    return new_index;
}

void func_8003E530(ScaleRotPos* srp) {
    srp->scale.x = srp->scale.y = srp->scale.z = 1.0f;
    srp->pos.x = srp->pos.y = srp->pos.z = 0.0f;
    srp->rot.x = srp->rot.y = srp->rot.z = 0;
}

void func_8003E568(ScaleRotPos* srp, Vec3f* scale, Vec3s* rot, Vec3f* pos) {
    srp->scale = *scale;
    srp->rot = *rot;
    srp->pos = *pos;
}

//ScaleRotPos equality test
s32 func_8003E5B4(ScaleRotPos* a, ScaleRotPos* b) {
    if (a->scale.x != b->scale.x
        || a->scale.y != b->scale.y 
        || a->scale.z != b->scale.z
        || a->rot.x != b->rot.x 
        || a->rot.y != b->rot.y
        || a->rot.z != b->rot.z
        || a->pos.x != b->pos.x
        || a->pos.y != b->pos.y
        || a->pos.z != b->pos.z) {
        return false;
    }
    return true;
}

void func_8003E688(DynaLookup* dynaLookup) {
    func_8003871C(&dynaLookup->ceiling);
    func_8003871C(&dynaLookup->wall);
    func_8003871C(&dynaLookup->floor);
}

void func_8003E6C4(DynaLookup* dynaLookup) {
    dynaLookup->unk_00 = 0;
    func_8003E688(dynaLookup);
}

void func_8003E6E4(u16* arg0) {
    *arg0 = 0;
}

//Initialize ActorMesh
void func_8003E6EC(GlobalContext* globalCtx, ActorMesh* arg1) {
    arg1->actor = NULL;
    arg1->colHeader = NULL;
    func_8003E530(&arg1->srp1);
    func_8003E530(&arg1->srp2);
    func_8003E6C4(&arg1->dynaLookup);
    func_8003E6E4(&arg1->unk_10);
    arg1->unk_54.center.x = arg1->unk_54.center.y = arg1->unk_54.center.z = 0;
    arg1->unk_54.radius = 0;
}

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

s32 func_8003E804(ActorMesh* arg0) {
    return func_8003E5B4(&arg0->srp1, &arg0->srp2);
}

//null polyList
void func_8003E82C(CollisionPoly** polyList) {
    *polyList = NULL;
}

//Allocate dyn_poly
void func_8003E834(GlobalContext* globalCtx, CollisionPoly** dyn_poly, s32 numPolys) {
    *dyn_poly = THA_AllocEndAlign(&globalCtx->state.tha, numPolys * sizeof(CollisionPoly), -2);
    if (!(*dyn_poly != NULL)) {
        __assert("ptbl->pbuf != NULL", "../z_bgcheck.c", 6247);
    }
}

//null vtxList 
void func_8003E888(Vec3s** vtxList) {
    *vtxList = NULL;
}

//Allocate dyn_vtx
void func_8003E890(GlobalContext* globalCtx, Vec3s** dyn_vtx, s32 numVtx) {
    *dyn_vtx = THA_AllocEndAlign(&globalCtx->state.tha, numVtx * sizeof(Vec3s), -2);
    if (!(*dyn_vtx != NULL)) {
        __assert("ptbl->pbuf != NULL", "../z_bgcheck.c", 6277);
    }
}

void func_8003E8EC(GlobalContext* globalCtx, ActorMesh* arg1)
{
    arg1->srp1 = arg1->srp2;
}

//Is BgActor/DynaPoly
s32 func_8003E934(s32 bgId) {
    if (bgId < 0 || bgId >= BG_ACTOR_MAX) {
        return false;
    }

    return true;
}

void func_8003E954(GlobalContext* globalCtx, DynaCollisionContext* arg1) {
    arg1->unk_00 = 1;
    func_8003E82C(&arg1->dyn_poly);
    func_8003E888(&arg1->dyn_vtx);
    func_800387FC(globalCtx, &arg1->dyn_list);
}

//Set DynaCollisionContext 
void func_8003E9A0(GlobalContext* globalCtx, DynaCollisionContext* arg1) {
    s32 i;

    for (i = 0; i < 50; i++)
    {
        func_8003E6EC(globalCtx, &arg1->bgActors[i]);
        arg1->flags[i] = 0;
    }
    func_8003E82C(&arg1->dyn_poly);
    func_8003E834(globalCtx, &arg1->dyn_poly, arg1->dyn_poly_max);

    func_8003E888(&arg1->dyn_vtx);
    func_8003E890(globalCtx, &arg1->dyn_vtx, arg1->dyn_vtx_max);

    func_800387FC(globalCtx, &arg1->dyn_list);
    func_8003880C(globalCtx, &arg1->dyn_list, arg1->dyn_list_max);
}

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

    func_8003E750(&arg1->bgActors[i], arg2, arg3);
    arg1->unk_00 |= 1;

    arg1->flags[i] &= ~2;
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("DynaPolyInfo_setActor():index %d\n", i);
    osSyncPrintf(VT_RST);
    return i;
}

// we previously had this named as DynaPolyInfo_GetActor
DynaPolyActor* func_8003EB84(CollisionContext* colCtx, s32 bgId) {
    if (!func_8003E934(bgId) 
        || !(colCtx->dyna.flags[bgId] & 1)
        || colCtx->dyna.flags[bgId] & 2) {
        return NULL;
    }
    return colCtx->dyna.bgActors[bgId].actor;
}

void func_8003EBF8(GlobalContext* globalCtx, DynaCollisionContext* dyna, s32 bgId) {
    if (func_8003E934(bgId)) {
        dyna->flags[bgId] |= 4;
        dyna->unk_00 |= 1;
    }
}

void func_8003EC50(GlobalContext* globalCtx, DynaCollisionContext* dyna, s32 bgId) {
    if (func_8003E934(bgId)) {
        dyna->flags[bgId] &= ~4;
        dyna->unk_00 |= 1;
    }
}

void func_8003ECA8(GlobalContext* globalCtx, DynaCollisionContext* dyna, s32 bgId) {
    if (func_8003E934(bgId)) {
        dyna->flags[bgId] |= 8;
        dyna->unk_00 |= 1;
    }
}

void func_8003ED00(GlobalContext* globalCtx, DynaCollisionContext* dyna, s32 bgId) {
    if (func_8003E934(bgId)) {
        dyna->flags[bgId] &= ~8;
        dyna->unk_00 |= 1;
    }
}

// original name: DynaPolyInfo_delReserve
void func_8003ED58(GlobalContext* globalCtx, DynaCollisionContext* dyna, s32 bgId) {
    DynaPolyActor* temp_v0;

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("DynaPolyInfo_delReserve():index %d\n", bgId);
    osSyncPrintf(VT_RST);
    if (func_8003E934(bgId) == false) {

        if (bgId == -1) {
            osSyncPrintf(VT_FGCOL(GREEN));
            osSyncPrintf("DynaPolyInfo_delReserve():削除されているはずの(?)\nインデックス(== -1)のため,処理を中止します。\n");
            // The index that should have been deleted(? ) was(== -1), processing aborted.
            osSyncPrintf(VT_RST);
            return;
        }
        else
        {
            osSyncPrintf(VT_FGCOL(RED));
            osSyncPrintf("DynaPolyInfo_delReserve():確保していない／出来なかったインデックスの解放のため、処理を中止します。index == %d\n", bgId);
            //Unable to deallocate index / index unallocated, processing aborted.
            osSyncPrintf(VT_RST);
            return;
        }
    }
    temp_v0 = func_8003EB84(&globalCtx->colCtx, bgId);
    if (temp_v0 != NULL) {

        temp_v0->dynaPolyId = -1;
        dyna->bgActors[bgId].actor = NULL;
        dyna->flags[bgId] |= 2;
    }
}

void func_8003EE6C(GlobalContext* globalCtx, DynaCollisionContext* dyna)
{
    dyna->unk_00 |= 1;
}

// original name: DynaPolyInfo_expandSRT
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003EE80.s")
//arg3 = dyna vtx index, arg4 = dyna poly index
//void func_8003EE80(GlobalContext* globalCtx, DynaCollisionContext* dyna, s32 arg2, s32* arg3, s32* arg4) {
//    MtxF sp128;
//    s32 pad114[5];
//    Vec3f sp108;
//    s32 padFC[3];
//    Vec3f spF0;
//    f32 phi_f2;//f32 spEC;
//    Vec3f spDC;
//    Vec3f spD0;
//    Vec3f spC4;
//    Vec3f spB8;
//    Vec3f spAC;
//    s32 padA4[2];
//    s16 spA0;
//    s16 sp9E;
//    s16 sp9C;
//    Vec3f sp90;
//    Vec3f sp84;
//    s32 pad78[4];
//    s16 sp76;
//    s16 sp74;
//    s16 sp72;
//    DynaList_s* temp_s5_3;
//    f32 temp_f0;
//    f32 temp_f20;
//    f32 temp_ret;
//    f32 temp_ret_2;
//    s32 temp_a0;
//    u16 temp_t1;
//    CollisionPoly* temp_s0_2;
//    //ActorMesh* temp_s4;
//    Vec4s* temp_s5_2;
//    //void* temp_s6;
//    CollisionPoly* temp_v0;
//    Vec3s* temp_v0_2;
//    s32 phi_v1;
//    s32 phi_s1;
//    s32 phi_s0;
//    s32 phi_s3;
//    s32 phi_s3_2;
//    s32 phi_s3_3;
//    s32 pad[0x2E];
//
//    //temp_s4 = &dyna->bgActors[arg2]; //remember all temp_s4 values must be -4
//    dyna->bgActors[arg2].dynaLookup.unk_00 = (s16)*arg4;
//    dyna->bgActors[arg2].unk_10 = (s16)*arg3;
//    //sp108.unk0 = (s32)temp_s4->unk4->unk24;
//    //sp108.unk4 = (s32)temp_s4->unk4->unk28;
//    //sp108.unk8 = (s32)temp_s4->unk4->unk2C;
//    sp108 = dyna->bgActors[arg2].actor->actor.posRot.pos;
//
//    sp108.y += dyna->bgActors[arg2].actor->actor.shape.unk_08 * dyna->bgActors[arg2].actor->actor.scale.y;  // ->unkBC * temp_s4->unk4->unk54);
//    //temp_s6 = dyna + (arg2 * 2);
//    func_8003E568(&dyna->bgActors[arg2].srp2, &dyna->bgActors[arg2].actor->actor.scale, &dyna->bgActors[arg2].actor->actor.shape, &sp108);
//    if ((dyna->flags[arg2] & 4) != 0) {
//        //goto block_48;
//        return;
//    }
//    if (!(dyna->dyn_poly_max >= (*arg4 + dyna->bgActors[arg2].colHeader->nbPolygons))) {
//        osSyncPrintf(VT_FGCOL(RED));
//        osSyncPrintf("DynaPolyInfo_expandSRT():polygon over %dが%dを越えるとダメ\n", *arg4 + dyna->bgActors[arg2].colHeader->nbPolygons, dyna->dyn_poly_max);
//    }
//    if (!(dyna->dyn_vtx_max >= (*arg3 + dyna->bgActors[arg2].colHeader->nbVertices))) {
//        osSyncPrintf(VT_FGCOL(RED));
//        osSyncPrintf("DynaPolyInfo_expandSRT():vertex over %dが%dを越えるとダメ\n", *arg3 + dyna->bgActors[arg2].colHeader->nbVertices, dyna->dyn_vtx_max);
//    }
//    if (!(dyna->dyn_poly_max < (*arg4 + dyna->bgActors[arg2].colHeader->nbPolygons))) {
//        phi_v1 = *arg3 + dyna->bgActors[arg2].colHeader->nbVertices;
//    }
//    else {
//        __assert("pdyna_poly_info->poly_num >= *pstart_poly_index + pbgdata->poly_num", "../z_bgcheck.c", 0x1A1F);
//        phi_v1 = *arg3 + dyna->bgActors[arg2].colHeader->nbVertices;
//    }
//    if (!(dyna->dyn_vtx_max >= phi_v1)) {
//        __assert("pdyna_poly_info->vert_num >= *pstart_vert_index + pbgdata->vtx_num", "../z_bgcheck.c", 0x1A20);
//    }
//    if (!((dyna->unk_00 & 1) || func_8003E804(&dyna->bgActors[arg2]) != 1)) {
//
//        //temp_s5 = &sp9C.u_00;
//        //temp_a0 = *arg4 + dyna->bgActors[arg2].colHeader->nbPolygons;
//        for (phi_s0 = *arg4; phi_s0 < *arg4 + dyna->bgActors[arg2].colHeader->nbPolygons; phi_s0++) {
//            //phi_a0_2 = temp_a0;
//            //if (*arg4 >= temp_a0) {
//            //    goto block_21;
//            //}
//            //phi_s1 = *arg4 * 0x10;
//            //phi_s0 = (s16)*arg4;
//            //phi_a0 = temp_a0;
//        //loop_14:
//            //temp_a2 = ;
//            temp_v0 = dyna->dyn_poly + phi_s1;
//            if (temp_v0->norm.y >= 0x4000) {
//                //goto block_16;
//
//                spA0 = phi_s0;
//                func_80038780(&dyna->dyn_list, &dyna->bgActors[arg2].dynaLookup.floor, &spA0);
//                //phi_a0 = *arg4 + dyna->bgActors[arg2].colHeader->nbPolygons;
//                //goto block_20;
//            }
//            //block_16:
//            else if (temp_v0->norm.y <= -0x6666) {
//                //goto block_19;
//
//                //temp_a2_2 = &sp9C.u_02;
//                if ((dyna->flags[arg2] & 8) != 0) { //temp_s6
//                    //goto block_20;
//                    continue;
//                }
//                sp9E = phi_s0;
//                func_80038780(&dyna->dyn_list, &dyna->bgActors[arg2].dynaLookup.ceiling, &sp9E);
//                //phi_a0 = *arg4 + dyna->bgActors[arg2].colHeader->nbPolygons;
//                //goto block_20;
//            }
//            //block_19:
//            else {
//                sp9C = phi_s0;
//                func_80038780(&dyna->dyn_list, &dyna->bgActors[arg2].dynaLookup.wall, &sp9C);
//                //phi_a0 = *arg4 + dyna->bgActors[arg2].colHeader->nbPolygons;
//            }
//            //block_20:
//            //    temp_s0 = phi_s0 + 1;
//            //    phi_s1 = phi_s1 + 0x10;
//            //    phi_s0 = (s16)temp_s0;
//            //    phi_a0_2 = phi_a0;
//            //    phi_a0 = phi_a0;
//            //    if (temp_s0 < phi_a0) {
//            //        goto loop_14;
//            //    }
//        }
//        //block_21: //*arg4
//        *arg4 += dyna->bgActors[arg2].colHeader->nbPolygons; //temp_a0;//phi_a0_2;
//        *arg3 += dyna->bgActors[arg2].colHeader->nbVertices;
//        return;
//    }
//    func_800A7B04(&sp128,
//        dyna->bgActors[arg2].srp2.scale.x, dyna->bgActors[arg2].srp2.scale.y, dyna->bgActors[arg2].srp2.scale.z,
//        dyna->bgActors[arg2].srp2.rot.x, dyna->bgActors[arg2].srp2.rot.y, dyna->bgActors[arg2].srp2.rot.z,
//        dyna->bgActors[arg2].srp2.pos.x, dyna->bgActors[arg2].srp2.pos.y, dyna->bgActors[arg2].srp2.pos.z);
//
//    //ab6374
//
//    temp_f20 = 1.0f / (f32)(u32)dyna->bgActors[arg2].colHeader->nbVertices;
//    //if (!((s32)dyna->bgActors[arg2].colHeader->nbVertices <= 0)) {
//        //goto block_32;
//
//    spF0.x = spF0.y = spF0.z = 0.0f;
//    //phi_s0_2 = 0;
//    for (phi_s3 = 0; phi_s3 < dyna->bgActors[arg2].colHeader->nbVertices; phi_s3++) {
//        //loop_24:
//        Math_Vec3s_ToVec3f(&sp90, &dyna->bgActors[arg2].colHeader->vertexArray[phi_s3]);// + phi_s0_2);
//        func_800A6EF4(&sp128, &sp90, &sp84);
//        func_800388E8(&dyna->dyn_vtx[(*arg3 + phi_s3) * sizeof(Vec3s)], &sp84);
//        if (phi_s3 == 0) {
//            //goto block_26;
//
//            dyna->bgActors[arg2].unk_5C = dyna->bgActors[arg2].unk_60 = sp84.y;
//        }
//        //goto block_30;
//
//        //block_26:
//        else if (sp84.y < dyna->bgActors[arg2].unk_5C) {
//            //goto block_28;
//
//            dyna->bgActors[arg2].unk_5C = sp84.y;
//        }
//        //goto block_30;
//    //block_28:
//        else if (dyna->bgActors[arg2].unk_60 < sp84.y) {
//            //goto block_30;
//
//            dyna->bgActors[arg2].unk_60 = sp84.y;
//        }
//
//    //block_30:
//        spF0.x += sp84.x;
//        //temp_s3 = phi_s3 + 1;
//        spF0.y += sp84.y;
//        spF0.z += sp84.z;
//        /*phi_s0_2 = phi_s0_2 + 6;
//        phi_s3 = temp_s3;
//        if (temp_s3 < (s32)dyna->bgActors[arg2].colHeader->nbVertices) {
//            goto loop_24;
//        }*/
//    }
//    //block_32:
//    //temp_f10 = spF0.x * temp_f20;
//    temp_s5_2 = &dyna->bgActors[arg2].unk_54;
//    spF0.x *= temp_f20;//temp_f10;
//    spF0.y *= temp_f20;
//    spF0.z *= temp_f20;
//    temp_s5_2->x = (s16)(s32)spF0.x;//temp_f10;
//    temp_s5_2->y = (s16)(s32)spF0.y;
//    temp_s5_2->z = (s16)(s32)spF0.z;
//    //phi_s0_3 = 0;
//    phi_f2 = -100.0f;
//    //phi_s3_2 = 0;
//    //phi_f2_2 = -100.0f;
//    //phi_s3_3 = 0;
//
//    for (phi_s3_2 = 0; phi_s3_2 < dyna->bgActors[arg2].colHeader->nbVertices; phi_s3_2++) {
//        //if ((s32)dyna->bgActors[arg2].colHeader->nbVertices <= 0) {
//        //    goto block_37;
//
//    //loop_33:
//        spDC.x = (f32)((Vec3s*)dyna->dyn_vtx)[*arg3 + phi_s3_2].x;
//        spDC.y = (f32)((Vec3s*)dyna->dyn_vtx)[*arg3 + phi_s3_2].y;
//        //spEC = phi_f2;
//        spDC.z = (f32)((Vec3s*)dyna->dyn_vtx)[*arg3 + phi_s3_2].z;
//        temp_ret = func_800CB650(&spDC, &spF0);
//        //temp_f2 = phi_f2;
//        //phi_f2_3 = temp_f2;
//        if ((phi_f2 < temp_ret)) {
//            //goto block_35;
//
//            phi_f2 = temp_ret;
//            //block_35:
//        }
//        //temp_s3_2 = phi_s3_2 + 1;
//        //phi_s0_3 = phi_s0_3 + 6;
//        //phi_f2 = phi_f2_3;
//        //phi_s3_2 = temp_s3_2;
//        //if (temp_s3_2 < (s32)dyna->bgActors[arg2].colHeader->nbVertices) {
//        //    goto loop_33;
//        //}
//        //phi_f2_2 = phi_f2_3;
//    }
//    //phi_s3_3 = 0;
//    //block_37:
//    temp_s5_2->unk_06 = (s16)(s32)(sqrtf(phi_f2) * 1.1f);
//    temp_s5_3 = &dyna->dyn_list;
//    for (phi_s3_3 = 0; phi_s3_3 < dyna->bgActors[arg2].colHeader->nbPolygons; phi_s3_3++) {
//        //if ((s32)dyna->bgActors[arg2].colHeader->nbPolygons <= 0) {
//            //goto block_47;
//        //}
//    //loop_39:
//        //*temp_s0_2 =
//        temp_s0_2 = &dyna->dyn_poly[*arg4 + phi_s3_3];
//        *temp_s0_2 = dyna->bgActors[arg2].colHeader->polygonArray[phi_s3_3];
//        //temp_a0_3 = &spD0;
//        //temp_a1 = &spC4;
//        temp_t1 = (temp_s0_2->flags_vIA & 0xE000) | ((temp_s0_2->flags_vIA & 0x1FFF) + *arg3);
//        temp_s0_2->flags_vIA = temp_t1;
//        //temp_a2_3 = &spB8;
//        temp_s0_2->flags_vIB = (u16)((temp_s0_2->flags_vIB & 0xE000) | ((temp_s0_2->flags_vIB & 0x1FFF) + *arg3));
//        temp_s0_2->vIC = (u16)(*arg3 + temp_s0_2->vIC);
//        spD0.x = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIA & 0x1FFF].x;
//        spD0.y = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIA & 0x1FFF].y;
//        spD0.z = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIA & 0x1FFF].z;
//        spC4.x = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIB & 0x1FFF].x;
//        spC4.y = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIB & 0x1FFF].y;
//        spC4.z = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIB & 0x1FFF].z;
//        spB8.x = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->vIC].x;
//        spB8.y = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->vIC].y;
//        spB8.z = (f32)((Vec3s*)dyna->dyn_vtx)[temp_s0_2->vIC].z;
//        Math3D_SurfaceNorm(&spD0, &spC4, &spB8, &spAC);
//        temp_ret_2 = Math3D_Vec3fMagnitude(&spAC);
//        if (!(fabsf(temp_ret_2) < 0.008f)) {
//            //goto block_41;
//
//            temp_f0 = 1.0f / temp_ret_2;
//            //temp_f10_2 = spAC.x * ;
//            //temp_f16 = spAC.y * ;
//            //temp_f6 = spAC.z * ;
//            spAC.x *= temp_f0;
//            spAC.y *= temp_f0;
//            spAC.z *= temp_f0;
//            temp_s0_2->norm.x = (s16)(s32)(spAC.x * 32767.0f); //temp_f10_2
//            temp_s0_2->norm.y = (s16)(s32)(spAC.y * 32767.0f); //temp_f16
//            temp_s0_2->norm.z = (s16)(s32)(spAC.z * 32767.0f);
//        }
//    //block_41:
//        temp_v0_2 = &((Vec3s*)dyna->dyn_vtx)[temp_s0_2->flags_vIA & 0x1FFF];
//        temp_s0_2->dist = (s16)(s32)-(((f32)temp_v0_2->z * spAC.z) + ((spAC.x * (f32)temp_v0_2->x) + (spAC.y * (f32)temp_v0_2->y)));
//        if (0.5f < spAC.y) {
//            //goto block_43;
//
//        //temp_a2_4 = ;
//            sp76 = *arg4 + phi_s3_3;
//            func_80038780(temp_s5_3, &dyna->bgActors[arg2].dynaLookup.floor, &sp76);
//            //goto block_46;
//
//        //block_43:
//        }
//        else if (spAC.y < -0.8f) {
//            //goto block_45;
//
//            //temp_a2_5 = &sp74;
//            sp74 = *arg4 + phi_s3_3;
//            func_80038780(temp_s5_3, &dyna->bgActors[arg2].dynaLookup.ceiling, &sp74);
//            //goto block_46;
//        //block_45:
//        }
//        else {
//            //temp_a2_6 = &sp72;
//            sp72 = *arg4 + phi_s3_3;
//            func_80038780(temp_s5_3, &dyna->bgActors[arg2].dynaLookup.wall, &sp72);
//        //block_46:
//        }
//        //temp_s3_3 = phi_s3_3 + 1;
//        //phi_s3_3 = temp_s3_3;
//        //if (temp_s3_3 < (s32)dyna->bgActors[arg2].unk8->unk14) {
//        //    goto loop_39;
//        //}
//    //block_47:
//    }
//    *arg4 = (*arg4 + dyna->bgActors[arg2].colHeader->nbPolygons);
//    *arg3 = (*arg3 + dyna->bgActors[arg2].colHeader->nbVertices);
////block_48:
//}

void func_8003F8EC(GlobalContext* globalCtx, DynaCollisionContext* dyna, DynaPolyActor* actor) {
    DynaPolyActor* dynaActor;
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++)
    {
        if ((dyna->flags[i] & 1) != 0) {
            dynaActor = func_8003EB84(&globalCtx->colCtx, i);
            if (dynaActor != NULL && dynaActor == actor) {
                func_800434A0(actor);
                return;
            }
        }
    }
}

// DynaPolyInfo_setup
void func_8003F984(GlobalContext* globalCtx, DynaCollisionContext* dyna) {
    DynaPolyActor* temp_ret;
    s32 sp60;
    s32 sp5C;
    s32 i;

    func_80038870(&dyna->dyn_list);

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        func_8003E688(&dyna->bgActors[i].dynaLookup);
    }

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->flags[i] & 2) {

            osSyncPrintf(VT_FGCOL(GREEN));
            osSyncPrintf("DynaPolyInfo_setup():削除 index=%d\n", i);
            osSyncPrintf(VT_RST);

            dyna->flags[i] = 0;
            func_8003E6EC(globalCtx, &dyna->bgActors[i]);
            dyna->unk_00 |= 1;
        }
        if (dyna->bgActors[i].actor != NULL
            && dyna->bgActors[i].actor->actor.update == NULL)
        {
            osSyncPrintf(VT_FGCOL(GREEN));
            osSyncPrintf("DynaPolyInfo_setup():削除 index=%d\n", i);
            osSyncPrintf(VT_RST);
            temp_ret = func_8003EB84(&globalCtx->colCtx, i);
            if (temp_ret == NULL) {
                return;
            }
            temp_ret->dynaPolyId = -1;
            dyna->flags[i] = 0;

            func_8003E6EC(globalCtx, &dyna->bgActors[i]);
            dyna->unk_00 |= 1;
        }
    }
    sp60 = 0;
    sp5C = 0;
    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->flags[i] & 1)
        {
            func_8003EE80(globalCtx, dyna, i, &sp60, &sp5C);
        }
    }
    dyna->unk_00 &= ~1;
} 

void func_8003FB64(GlobalContext* globalCtx, DynaCollisionContext* dyna) {
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->flags[i] & 1) {
            func_8003E8EC(globalCtx, &dyna->bgActors[i]);
        }
    }
}

#ifdef NON_MATCHING
f32 func_8003FBF4(s8003FBF4* arg0, s32 arg1) {
    f32 sp70;
    //s32 temp_s2;
    u16 temp_v0;
    //CollisionPoly* polyList;
    CollisionPoly* temp_v1;
    SSNode* phi_s0;
    u16 phi_a1;
    f32 phi_f20;
    //SSNode* phi_a0;

    phi_f20 = arg0->unk_10;
    temp_v0 = *arg0->unk_2C;
    if (SS_NULL == temp_v0) {

        return phi_f20;
    }
    //polyList = arg0->dyna->dyn_poly;
    phi_s0 = &arg0->dyna->dyn_list.tbl[temp_v0];
    //pos = arg0->unk_14;
    //phi_a1 = (arg0->unk_08 & 7) << 0xD;
    //phi_t0 = arg0->dyna;
    //phi_f20 = arg0->unk_10;
    //phi_a0 = arg0->dyna->dyn_list.tbl;
    while (true) {
        s32 id = phi_s0->polyId;
        //temp_s2 = phi_s0->unk0 * 0x10;
        temp_v1 = arg0->dyna->dyn_poly + id; //temp_s2;
        if ((arg0->dyna->dyn_poly[id].flags_vIA & ((arg0->unk_08 & 7) << 0xD)) != 0) {
            //goto block_6;

            temp_v0 = phi_s0->next;
            if (SS_NULL == temp_v0) { //76A4
                break;
            }
            phi_s0 = &arg0->dyna->dyn_list.tbl[temp_v0];
            continue;
        }
        if ((arg1 & 6)
            && (arg0->unk_20 & 0x10)
            && (temp_v1->norm.y * COLPOLY_NORM_FRAC < 0.0f)) {

            temp_v0 = phi_s0->next;
            if (SS_NULL == temp_v0) {
                break;
            }
            phi_s0 = &arg0->dyna->dyn_list.tbl[temp_v0];
            continue;
        }
        if (func_80038D48(&arg0->dyna->dyn_poly[id], (Vec3s*)arg0->dyna->dyn_vtx, arg0->unk_14->x, arg0->unk_14->z, &sp70, arg0->unk_24) == 1
            && sp70 < arg0->unk_14->y
            && phi_f20 < sp70) {

            phi_f20 = sp70;
            *arg0->unk_0C = &arg0->dyna->dyn_poly[id];
        }
        temp_v0 = phi_s0->next;
        if (SS_NULL == temp_v0) {
            break;
        }
        phi_s0 = &arg0->dyna->dyn_list.tbl[temp_v0];
        //phi_a1 = (arg0->unk_08 & 7) << 0xD;
        //phi_t0 = arg0->dyna;
        //phi_f20 = phi_f20;
        //phi_a0 = arg0->dyna->dyn_list.tbl;

    }
    return phi_f20;
}
#else 
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FBF4.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003FDDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040284.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800409A8.s")

#ifdef NON_MATCHING
s32 func_80040BE4(CollisionContext* colCtx, u16 arg1, DynaCollisionContext* arg2, u16* arg3, f32* arg4, Vec3f* arg5, f32 arg6, CollisionPoly** arg7) {

    s32 polyId;
    SSNode* phi_s1;
    CollisionPoly* temp_s0;
    Vec3f sp98;
    f32 sp94;
    f32 phi_f0;
    f32 nx; //sp 8C
    f32 ny; //sp 88
    f32 nz; //sp 84
    s32 sp80;
    f32 temp_f0;
    u16 temp_v0;

    sp80 = false;
    temp_v0 = *arg3;
    if (SS_NULL == temp_v0) {
        return false;
    }
    phi_s1 = &arg2->dyn_list.tbl[temp_v0];
    sp98 = *arg5;

    while (true)
    {
        CollisionPoly* phi_v1 = arg2->dyn_poly;
        polyId = phi_s1->polyId;

        //loop_3:
        temp_s0 = phi_v1;
        temp_s0 += polyId;
        if (temp_s0->flags_vIA & ((arg1 & 7) << 13)) {
            //goto block_6;

            temp_v0 = phi_s1->next;
            if (SS_NULL != temp_v0) {
                phi_s1 = &arg2->dyn_list.tbl[temp_v0];
                continue;
            }
            break;
        }
        //block_6:
        func_800389D4(temp_s0, &nx, &ny, &nz);
        if ((arg6 < Math3D_UDistPlaneToPos(nx, ny, nz, temp_s0->dist, &sp98))) {
            //goto block_9;

            temp_v0 = phi_s1->next;
            if (SS_NULL != temp_v0) {
                phi_s1 = &arg2->dyn_list.tbl[temp_v0];
                continue;
            }
            break;
        }
        //block_9:
        if (func_80038F20(temp_s0, arg2->dyn_vtx, sp98.x, sp98.z, &sp94)) {
            if (sp98.y < sp94) {
                //goto block_17;
                temp_f0 = sp94 - sp98.y;
                if (temp_f0 < arg6 && temp_f0 * ny <= 0.0f) {
                    phi_f0 = (0.0f <= ny) ? 1.0f : -1.0f;

                    sp80 = true;
                    sp98.y = (phi_f0 * arg6) + sp94;
                    *arg7 = temp_s0;

                }
            }
        }
        //block_17:
        temp_v0 = phi_s1->next;
        if (SS_NULL != temp_v0) {
            phi_s1 = &arg2->dyn_list.tbl[temp_v0];
            continue;
        }
        break;
    }
    //block_19:
    *arg4 = sp98.y;
    return sp80;
}
#else
s32 func_80040BE4(CollisionContext* colCtx, u16 arg1, DynaCollisionContext* arg2, u16* arg3, f32* arg4, Vec3f* arg5, f32 arg6, CollisionPoly** arg7);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040BE4.s")
#endif

#ifdef NON_MATCHING
s32 func_80040E40(CollisionContext* colCtx, u16 arg1, f32* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u32* arg6, DynaPolyActor* arg7) {

    u32 phi_s1;
    s32 sp78 = false;
    f32 phi_f20, sp70;

    phi_f20 = sp70 = arg3->y + arg4;

    for (phi_s1 = 0; phi_s1 < BG_ACTOR_MAX; phi_s1++) {
        if (colCtx->dyna.flags[phi_s1] & 1)
        {
            CollisionPoly* sp68;
            if (arg7 != (DynaPolyActor*) colCtx->dyna.bgActors[phi_s1].actor
                && func_800D0480(&colCtx->dyna.bgActors[phi_s1].unk_54, arg3->x, arg3->z)
                && func_80040BE4(colCtx, arg1, &colCtx->dyna, &colCtx->dyna.bgActors[phi_s1].dynaLookup.ceiling, &sp70, arg3, arg4, &sp68) == true
                && sp70 < phi_f20) {

                phi_f20 = sp70;
                *arg5 = sp68;
                *arg6 = phi_s1;
                sp78 = 1;
            }
        }
    }
    *arg2 = phi_f20;
    return sp78;
}
#else
s32 func_80040E40(CollisionContext* colCtx, u16 arg1, f32* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u32* arg6, DynaPolyActor* arg7);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040E40.s")
#endif 

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041240.s")

//s32 func_80041240(void* arg0, s32 arg1, void* arg2, void* arg3, s32 arg4, s32 arg5, s32 arg6, void* arg7, s32 arg8, f32 arg9, s32 argA) {
//    ? sp80;
//    ? sp74;
//    s32 temp_s0;
//    void* temp_v0;
//    void* phi_s1;
//    s32 phi_s0;
//    ? phi_s6;
//    ? phi_s6_2;
//
//    phi_s1 = arg0;
//    phi_s0 = 0;
//    phi_s6_2 = 0;
//loop_1:
//    phi_s6 = phi_s6_2;
//    if ((phi_s1->unk13DC & 1) != 0) {
//        temp_v0 = arg0 + (((((phi_s0 * 4) - phi_s0) * 8) + phi_s0) * 4);
//        phi_s6 = phi_s6_2;
//        if (arg8 != temp_v0->unk54) {
//            if (!(arg2->unk4 < temp_v0->unkB0) || (phi_s6 = phi_s6_2, !(arg3->unk4 < temp_v0->unkB0))) {
//                if (!(temp_v0->unkB4 < arg2->unk4) || (phi_s6 = phi_s6_2, !(temp_v0->unkB4 < arg3->unk4))) {
//                    sp74.unk0 = (s32)arg2->unk0;
//                    sp74.unk4 = (bitwise s32) arg2->unk4;
//                    sp74.unk8 = (s32)arg2->unk8;
//                    sp80.unk0 = (s32)arg3->unk0;
//                    sp80.unk4 = (bitwise s32) arg3->unk4;
//                    sp80.unk8 = (s32)arg3->unk8;
//                    phi_s6 = phi_s6_2;
//                    if (func_800CE600(temp_v0->unkB4, temp_v0 + 0xA8, &sp74) != 0) {
//                        phi_s6 = phi_s6_2;
//                        if (func_80041128(arg0, (arg1 & 0xFFFF) & 0xFFFF, arg2, arg3, arg4, arg5, arg6, phi_s0, arg9, argA) == 1) {
//                            *arg7 = phi_s0;
//                            phi_s6 = 1;
//                        }
//                    }
//                }
//                else {
//
//                }
//            }
//            else {
//
//            }
//        }
//    }
//    temp_s0 = phi_s0 + 1;
//    phi_s1 = phi_s1 + 2;
//    phi_s0 = temp_s0;
//    phi_s6_2 = phi_s6;
//    if (temp_s0 != 0x32) {
//        goto loop_1;
//    }
//    return phi_s6;
//}

s32 func_800413F8(CollisionContext* colCtx, u16 arg1, CollisionPoly** outPoly, Vec3f* center, f32 radius, u16* ssNodeId) {
    u16 nextId;
    CollisionPoly* curPoly;
    DynaCollisionContext* dyna;
    SSNode* node;

    nextId = *ssNodeId;
    if (SS_NULL == nextId) {
        return false;
    }
    dyna = &colCtx->dyna;
    node = &dyna->dyn_list.tbl[nextId];
    while (true) {
        s32 polyId = node->polyId;
        curPoly = &dyna->dyn_poly[polyId];
        if ((curPoly->flags_vIA & ((arg1 & 7) << 0xD)) != 0) {

            nextId = node->next;
            if (SS_NULL != nextId) {
                node = &dyna->dyn_list.tbl[nextId];
                continue;
            }
            break;
        }
        if (func_8003937C(curPoly, (Vec3s*)dyna->dyn_vtx, center, radius) != 0) {
            *outPoly = curPoly;
            return 1;
        }
        nextId = node->next;
        if (SS_NULL != nextId) {
            node = &dyna->dyn_list.tbl[nextId];
            continue;
        }
        break;
    }
    return false;
}

//arg1 is poly exclusion flags
//arg6 is poly orientation exclusion flags
s32 func_80041510(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, Vec3f* center, f32 radius, s32 bgId, u16 xpoFlags) {
    if ((xpoFlags & COLPOLY_IGNORE_CEILING) == 0) {
        if (func_800413F8(colCtx, xpFlags, outPoly, center, radius, &colCtx->dyna.bgActors[bgId].dynaLookup.ceiling)) {
            return true;
        }
    }
    if ((xpoFlags & COLPOLY_IGNORE_WALL) == 0) {
        if (func_800413F8(colCtx, xpFlags, outPoly, center, radius, &colCtx->dyna.bgActors[bgId].dynaLookup.wall)) {
            return true;
        }
    }
    if ((xpoFlags & COLPOLY_IGNORE_FLOOR) == 0) {
        if (func_800413F8(colCtx, xpFlags, outPoly, center, radius, &colCtx->dyna.bgActors[bgId].dynaLookup.floor)) {
            return true;
        }
    }
    return false;
}

#ifdef NON_MATCHING
//loop codegen issues
s32 func_80041648(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, s32* arg3, Vec3f* center, f32 radius, DynaPolyActor* actor, u16 xpoFlags) {
    s32 phi_s0;
    Sphere16 sp64;

    for (phi_s0 = 0; phi_s0 < BG_ACTOR_MAX; phi_s0++) {
        if (colCtx->dyna.flags[phi_s0] & 1) {
            if (actor != colCtx->dyna.bgActors[phi_s0].actor) {
                sp64.center.x = (s16)center->x;
                sp64.center.y = (s16)center->y;
                sp64.center.z = (s16)center->z;
                sp64.radius = (s16)radius;
                if (Math3D_SpheresTouching(&sp64, &colCtx->dyna.bgActors[phi_s0].unk_54)) {
                    if (func_80041510(colCtx, xpFlags, outPoly, center, radius, phi_s0, xpoFlags) != 0) {
                        return true;
                    }
                }
            }
        }
    }
    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80041648.s")
#endif

void func_800417A0(CollisionHeader* colHeader) {
    colHeader->vertexArray = SEGMENTED_TO_VIRTUAL(colHeader->vertexArray);
    colHeader->polygonArray = SEGMENTED_TO_VIRTUAL(colHeader->polygonArray);
    colHeader->polygonTypes = SEGMENTED_TO_VIRTUAL(colHeader->polygonTypes);
    colHeader->cameraData = SEGMENTED_TO_VIRTUAL(colHeader->cameraData);
    colHeader->waterBoxes = SEGMENTED_TO_VIRTUAL(colHeader->waterBoxes);
}

//Convert CollisionHeader Segmented to Virtual addressing
void func_80041880(void* colHeader, CollisionHeader** dest) {
    *dest = SEGMENTED_TO_VIRTUAL(colHeader);
    func_800417A0(*dest);
}

void func_800418D0(CollisionContext* colCtx, GlobalContext* globalCtx) {
    DynaCollisionContext* dynaColCtx;
    s32 i;
    u16 flag;

    dynaColCtx = &colCtx->dyna;
    for (i = 0; i < BG_ACTOR_MAX; i++) {
        flag = dynaColCtx->flags[i];
        if ((flag & 1) && !(flag & 2)) {
            Actor_SetObjectDependency(globalCtx, &dynaColCtx->bgActors[i].actor->actor);
            func_800417A0(dynaColCtx->bgActors[i].colHeader);
        }
    }
}

//Reset StaticList_s polyCheckTbl
void func_80041978(StaticList_s* arg0, s32 numPolys) {
    u8* t;

    for (t = arg0->polyCheckTbl; t < arg0->polyCheckTbl + numPolys; t++)
    {
        *t = 0;
    }
}

//Get SurfaceType property set
u32 func_800419B0(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId, s32 surfacePropId) {
    CollisionHeader* colHeader;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL || poly == NULL) {
        return 0;
    }
    surfaceTypes = colHeader->polygonTypes;
    if ((u32)surfaceTypes == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return surfaceTypes[poly->type][surfacePropId];
}

//SurfaceType, return CamData Index 
u32 func_80041A28(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(colCtx, poly, bgId, 0) & 0xFF;
}

u16 func_80041A4C(CollisionContext* colCtx, u32 camId, s32 bgId) {
    u16 result;
    CollisionHeader* colHeader;
    CamData* camData;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    result = camData[camId].cameraSType;
    return result;
}

u16 func_80041A94(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    surfaceTypes = colHeader->polygonTypes;
    if ((u32)surfaceTypes == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return func_80041A4C(colCtx, func_80041A28(colCtx, poly, bgId), bgId);
}

u16 func_80041B24(CollisionContext* colCtx, u32 camId, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL) {
        return 0;
    }

    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return camData[camId].numCameras;
}

u16 func_80041B80(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    surfaceTypes = colHeader->polygonTypes;
    if ((u32)surfaceTypes == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return func_80041B24(colCtx, func_80041A28(colCtx, poly, bgId), bgId);
}

CamPosDataEntry* func_80041C10(CollisionContext* colCtx, u32 camId, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return (CamPosDataEntry*)SEGMENTED_TO_VIRTUAL(camData[camId].camPosDataSeg);
}

CamPosDataEntry* func_80041C98(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(colCtx, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    surfaceTypes = colHeader->polygonTypes;
    if ((u32)surfaceTypes == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return func_80041C10(colCtx, func_80041A28(colCtx, poly, bgId), bgId);
}

u32 func_80041D28(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 8 & 0x1F;
}

u32 func_80041D4C(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0xD & 0x1F;
}

u32 func_80041D70(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0x12 & 7;
}

u32 func_80041D94(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0x15 & 0x1F;
}

extern s32 D_80119D90[];

s32 func_80041DB8(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return D_80119D90[func_80041D94(colCtx, poly, bgId)];
}

s32 func_80041DE4(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (func_80041DB8(colCtx, poly, bgId) & 1) ? 1 : 0;
}

s32 func_80041E18(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (func_80041DB8(colCtx, poly, bgId) & 2) ? 1 : 0;
}

s32 func_80041E4C(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (func_80041DB8(colCtx, poly, bgId) & 4) ? 1 : 0;
}

//unused
u32 func_80041E80(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0x1A & 0xF;
}

u32 func_80041EA4(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0x1A & 0xF;
}

u32 func_80041EC8(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0x1E & 1;
}

u32 func_80041EEC(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 0) >> 0x1F & 1;
}

u32 func_80041F10(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(colCtx, poly, bgId, 1) & 0xF;
}

extern u16 D_80119E10[];

//Get Poly Sfx
u16 func_80041F34(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    s32 temp_v0;

    temp_v0 = func_80041F10(colCtx, poly, bgId);
    if (temp_v0 < 0 || temp_v0 > 13) {
        return 0;
    }
    return D_80119E10[temp_v0];
}

u32 func_80041F7C(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 1) >> 4 & 3;
}

u32 func_80041FA0(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 1) >> 6 & 0x1F;
}

u32 func_80041FC4(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 1) >> 0xB & 0x3F;
}

u32 func_80041FE8(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 1) >> 0x11 & 1;
}

s32 func_8004200C(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    u32 flags;
    if (func_8003C4C4(colCtx, bgId) == 0) {
        return 1;
    }
    flags = poly->flags_vIA & 0x4000;
    return !!flags;
}

s32 func_80042048(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    u32 flags;
    if (func_8003C4C4(colCtx, bgId) == 0) {
        return 1;
    }
    flags = poly->flags_vIA & 0x8000;
    return !!flags;
} 

s32 func_80042084(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    u32 flags;
    if (func_8003C4C4(colCtx, bgId) == 0) {
        return 1;
    }
    flags = poly->flags_vIB & 0x2000;
    return !!flags;
}

u32 func_800420C0(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 1) >> 0x12 & 7;
}

u32 func_800420E4(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(colCtx, poly, bgId, 1) >> 0x15 & 0x3F;
}


u32 func_80042108(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (func_800419B0(colCtx, poly, bgId, 1) & 0x8000000) ? 1 : 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

#ifdef NON_MATCHING
s32 func_8004239C(GlobalContext* globalCtx, CollisionContext* colCtx, Vec3f* arg2, f32 arg3, WaterBox** arg4) {
    f32 temp_f2;
    s32 temp_a0;
    u32 room; //a1
    u32 temp_a2;
    //WaterBox* temp_v1;
    WaterBox* phi_v0;
    WaterBox* test;
    u16 nbWaterBoxes;

    s32 phi_a0;

    nbWaterBoxes = colCtx->stat.colHeader->nbWaterBoxes;
    test = colCtx->stat.colHeader->waterBoxes;
    if (nbWaterBoxes == 0
        || (u32)test == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
    //block_2:
        *arg4 = NULL;
        return -1;
    }

    //if ((s32)(*colCtx)->unk24 > 0) {
    //    phi_v0 = (*colCtx)->unk28;
    //    phi_a0 = 0;
    //loop_5:
    for (phi_a0 = 0; phi_a0 < nbWaterBoxes; phi_a0++) {
        temp_a2 = test[phi_a0].properties;
        //temp_v1 = phi_v0;
        room = (temp_a2 >> 0xD) & 0x3F;
        if (room == globalCtx->roomCtx.curRoom.num || room == 0x3F) {
            if ((temp_a2 & 0x80000) == 0) {
                if ((f32)test[phi_a0].xMin < arg2->x && arg2->x < (f32)(test[phi_a0].xMin + test[phi_a0].xLength)) {
                    if ((f32)test[phi_a0].zMin < arg2->z && arg2->z < (f32)(test[phi_a0].zMin + test[phi_a0].zLength)) {
                        temp_f2 = (f32)test[phi_a0].ySurface;
                        if ((arg2->y - arg3) < temp_f2 && temp_f2 < (arg2->y + arg3)) {
                            *arg4 = &test[phi_a0];
                            return phi_a0;
                        }
                    }
                }
            }
        }
        //else {

        //}
        //temp_a0 = phi_a0 + 1;
        //phi_v0 = phi_v0 + 0x10;
        //phi_a0 = temp_a0;
        //if (temp_a0 < (s32)(*colCtx)->unk24) {
        //goto loop_5;
        //}
    }
    *arg4 = NULL;
    return -1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004239C.s")
#endif

//Waterbox get CamData index
u32 func_80042538(CollisionContext* colCtx, WaterBox* waterBox) {
    u32 prop = waterBox->properties >> 0;
    return prop & 0xFF;
}

u16 func_80042548(CollisionContext* colCtx, WaterBox* waterBox) {
    s32 v;
    CamData* camData;

    v = func_80042538(colCtx, waterBox);

    camData = colCtx->stat.colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }

    return colCtx->stat.colHeader->cameraData[v].cameraSType;
}

u32 func_8004259C(CollisionContext* colCtx, WaterBox* waterBox) {
    u32 prop = waterBox->properties >> 8;
    return prop & 0x1F;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800425B0.s")

s32 func_80042708(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* arg2, Vec3f* arg3) {
    f32 n1X;
    f32 n1Y;
    f32 n1Z;
    f32 n2X;
    f32 n2Y;
    f32 n2Z;

    func_800389D4(polyA, &n1X, &n1Y, &n1Z);
    func_800389D4(polyB, &n2X, &n2Y, &n2Z);
    return func_800CAEE8(n1X, n1Y, n1Z, (f32)polyA->dist, n2X, n2Y, n2Z, (f32)polyB->dist, arg2, arg3);
}

s32 func_800427B4(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    f32 n1X;
    f32 n1Y;
    f32 n1Z;
    f32 n2X;
    f32 n2Y;
    f32 n2Z;
    s32 result;

    func_800389D4(polyA, &n1X, &n1Y, &n1Z);
    func_800389D4(polyB, &n2X, &n2Y, &n2Z);
    result = func_800CA7D0(n1X, n1Y, n1Z, (f32)polyA->dist, n2X, n2Y, n2Z, (f32)polyB->dist, arg2, arg3, arg4);
    return result;
}

void func_80042868(GlobalContext* globalCtx, CollisionContext* colCtx, DynaCollisionContext* arg2, u16* arg3, u8 r, u8 g, u8 b) {
    u16 nextId;
    CollisionPoly* poly;
    SSNode* curNode;
    Vec3f vA;
    Vec3f vB;
    Vec3f vC;
    f32 nX;
    f32 nY;
    f32 nZ;

    nextId = *arg3;
    if (nextId != SS_NULL) {
        curNode = arg2->dyn_list.tbl + nextId;
        while (true) {
            s16 polyId = curNode->polyId;
            poly = &arg2->dyn_poly[polyId];
            func_800388A8((Vec3s*)((poly->flags_vIA & 0x1FFF) * sizeof(Vec3s) + arg2->dyn_vtx), &vA);
            func_800388A8((Vec3s*)((poly->flags_vIB & 0x1FFF) * sizeof(Vec3s) + arg2->dyn_vtx), &vB);
            func_800388A8((Vec3s*)((poly->vIC) * sizeof(Vec3s) + arg2->dyn_vtx), &vC);
            if (AREG(26) != 0) {
                nX = poly->norm.x * COLPOLY_NORM_FRAC;
                nY = poly->norm.y * COLPOLY_NORM_FRAC;
                nZ = poly->norm.z * COLPOLY_NORM_FRAC;
                vA.x += AREG(26) * nX;
                vA.y += AREG(26) * nY;
                vA.z += AREG(26) * nZ;
                vB.x += AREG(26) * nX;
                vB.y += AREG(26) * nY;
                vB.z += AREG(26) * nZ;
                vC.x += AREG(26) * nX;
                vC.y += AREG(26) * nY;
                vC.z += AREG(26) * nZ;
            }
            func_8005B2AC(globalCtx->state.gfxCtx, &vA, &vB, &vC, r, g, b);
            nextId = curNode->next;
            if (nextId != SS_NULL) {
                curNode = arg2->dyn_list.tbl + nextId;
                continue;
            }
            break;
        }
    }
}

void func_80042B2C(GlobalContext* globalCtx, CollisionContext* colCtx, s32 bgId) {
    if (AREG(21)) {
        func_80042868(globalCtx, colCtx, &colCtx->dyna, &colCtx->dyna.bgActors[bgId].dynaLookup.ceiling, 255, 0, 0);
    }
    if (AREG(22)) {
        func_80042868(globalCtx, colCtx, &colCtx->dyna, &colCtx->dyna.bgActors[bgId].dynaLookup.wall, 0, 255, 0);
    }
    if (AREG(23)) {
        func_80042868(globalCtx, colCtx, &colCtx->dyna, &colCtx->dyna.bgActors[bgId].dynaLookup.floor, 0, 0, 255);
    }
}

void func_80042C3C(GlobalContext* globalCtx, CollisionContext* colCtx) {
    s32 phi_s0;

    do {
        for (phi_s0 = 0; phi_s0 < BG_ACTOR_MAX; phi_s0++) {
            if ((colCtx->dyna.flags[phi_s0] & 1) != 0) {
                func_80042B2C(globalCtx, colCtx, phi_s0);
            }
        }
    } while (0);
}

void func_80042CB8(GlobalContext* globalCtx, CollisionContext* colCtx, CollisionPoly* poly, u8 r, u8 g, u8 b) {
    Vec3f vA;
    Vec3f vB;
    Vec3f vC;
    f32 nX;
    f32 nY;
    f32 nZ;

    func_800388A8((poly->flags_vIA & 0x1FFF) + colCtx->stat.colHeader->vertexArray, &vA);
    func_800388A8((poly->flags_vIB & 0x1FFF) + colCtx->stat.colHeader->vertexArray, &vB);
    func_800388A8(poly->vIC + colCtx->stat.colHeader->vertexArray, &vC);
    if (AREG(26) != 0) {
        nX = poly->norm.x * COLPOLY_NORM_FRAC; 
        nY = poly->norm.y * COLPOLY_NORM_FRAC; 
        nZ = poly->norm.z * COLPOLY_NORM_FRAC; 
        vA.x += AREG(26) * nX;
        vA.y += AREG(26) * nY;
        vA.z += AREG(26) * nZ;
        vB.x += AREG(26) * nX;
        vB.y += AREG(26) * nY;
        vB.z += AREG(26) * nZ;
        vC.x += AREG(26) * nX;
        vC.y += AREG(26) * nY;
        vC.z += AREG(26) * nZ;
    }
    func_8005B2AC(globalCtx->state.gfxCtx, &vA, &vB, &vC, r, g, b);
}

void func_80042EF8(GlobalContext* globalCtx, CollisionContext* colCtx, u16* ssNodeId, u8 r, u8 g, u8 b) {
    SSNode* curNode;
    CollisionPoly* polygonArray;
    u16 nextId;

    polygonArray = colCtx->stat.colHeader->polygonArray;
    nextId = *ssNodeId;
    if (SS_NULL != nextId) {
        curNode = &colCtx->stat.polyNodes.tbl[nextId];
        while (true) {
            s16 polyId = curNode->polyId;
            func_80042CB8(globalCtx, colCtx, &polygonArray[polyId], r, g, b);
            if (SS_NULL != curNode->next) {
                curNode = &colCtx->stat.polyNodes.tbl[curNode->next];
                continue;
            }
            break;
        }
    }
}

//Draw scene collision
void func_80042FC4(GlobalContext* globalCtx, CollisionContext* colCtx) {
    Player* player;
    Lookup* lookup;

    player = PLAYER;
    lookup = func_8003AC54(&colCtx->stat, colCtx->stat.lookupTbl, &player->actor.posRot.pos);
    if (AREG(23) != 0) {
        func_80042EF8(globalCtx, colCtx, &lookup->floor, 0, 0, 255);
    }
    if (AREG(22) != 0) {
        func_80042EF8(globalCtx, colCtx, &lookup->wall, 0, 255, 0);
    }
    if (AREG(21) != 0) {
        func_80042EF8(globalCtx, colCtx, &lookup->ceiling, 255, 0, 0);
    }
}
