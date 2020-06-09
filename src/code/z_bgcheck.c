#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <z64actor.h>

#define SS_NULL 0xFFFF

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
//Set SSNode
void func_80038708(SSNode* arg0, s16* polyId, u16 next) {
    arg0->polyId = *polyId;
    arg0->next = next;
}

//mzxOK
//Set SS_NULL
void func_8003871C(u16* arg0) {
    *arg0 = SS_NULL;
}

//mzxOK
//Set static StaticList_s
void func_80038728(StaticList_s* arg0, u16* next, s16* polyId) {
    u16 newNode = func_8003E4DC(arg0); 

    func_80038708(&arg0->tbl[newNode], polyId, *next);
    *next = newNode;
}

//mzxOK
//Set dynamic DynaList_s
void func_80038780(DynaList_s* arg0, u16* next, s16* polyId) {
    u16 newNode = func_80038878(arg0); 

    if (!(newNode != SS_NULL)) {
        __assert("new_node != SS_NULL", "../z_bgcheck.c", 1776);
    }

    func_80038708(&arg0->tbl[newNode], polyId, *next);
    *next = newNode;
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

//mzxOK
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
    func_800388A8(&vtxList[arg0->flags_vIA & 0x1FFF], &dest[0]);
    func_800388A8(&vtxList[arg0->flags_vIB & 0x1FFF], &dest[1]);
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

    normX = poly->norm.x * (1.0f / 32767);
    normY = poly->norm.y * (1.0f / 32767);
    normZ = poly->norm.z * (1.0f / 32767);

    return func_800CCF98(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg3, arg2, result, arg5);
}

void func_80038E78(CollisionPoly* poly, Vec3s* vtxList, f32 arg2, f32 arg3, f32* result, f32 arg5) {
    static Vec3f polyVtxs[3];
    f32 normX;
    f32 normY;
    f32 normZ;

    func_80038BE0(poly, vtxList, polyVtxs);
    func_800389D4(poly, &normX, &normY, &normZ);
    func_800CD044(&polyVtxs[0], &polyVtxs[1], &polyVtxs[2], normX, normY, normZ, poly->dist, arg3, arg2, result, arg5);
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
    func_80038BE0(poly, vtxList, polyVtxs);
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

    func_80038BE0(poly, vtxList, tri.vtx);
    func_800389D4(poly, &tri.plane.normal.x, &tri.plane.normal.y, &tri.plane.normal.z);
    tri.plane.originDist = poly->dist;
    sphere.center.x = arg2->x;
    sphere.center.y = arg2->y;
    sphere.center.z = arg2->z;
    sphere.radius = arg3;
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

f32 func_800396F0(CollisionContext*, u16, u16*, CollisionPoly**, Vec3f*, f32, f32, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800396F0.s")

f32 func_8003992C(Lookup* arg0, CollisionContext* colCtx, u16 arg2, CollisionPoly** arg3, Vec3f* arg4, u32 arg5, f32 arg6, f32 arg7) {
    s32 temp_v0;
    f32 temp_f2 = arg7;

    if (arg5 & 4) {
        temp_f2 = func_800396F0(colCtx, arg2, &arg0->floor, arg3, arg4, temp_f2, arg6, 0);
    }

    if ((arg5 & 2) || (arg5 & 8)) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(colCtx, arg2, &arg0->wall, arg3, arg4, temp_f2, arg6, temp_v0);
    }

    if (arg5 & 1) {
        temp_v0 = 0;
        if ((arg5 & 0x10) != 0) {
            temp_v0 = 1;
        }
        temp_f2 = func_800396F0(colCtx, arg2, &arg0->ceiling, arg3, arg4, temp_f2, arg6, temp_v0);
    }

    return temp_f2;
}

#ifdef NON_MATCHING
// arg5 unused
// regalloc
s32 func_80039A3C(CollisionContext* colChk, CollisionPoly* poly, f32* arg2, f32* arg3, f32 arg4,
    f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, BgCheckInfo* bgChkInfo) {
    u32* polygonTypes;
    s32 wallDamage;
    //u32 properties;
    f32 temp_f0 = (arg9 - arg8) * arg7;

    *arg2 += (temp_f0 * arg4);
    *arg3 += (temp_f0 * arg6);

    if (bgChkInfo->wallPoly == NULL) {
        bgChkInfo->wallPoly = poly;
        return true;
    }

    polygonTypes = colChk->stat.colHeader->polygonTypes[bgChkInfo->wallPoly->type];
    wallDamage = polygonTypes[1] & 0x08000000 ? 1 : 0;
    if (!wallDamage) {
        bgChkInfo->wallPoly = poly;
        return true;
    }
    return false;
} 
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039A3C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80039AEC.s")

s32 func_8003A3E0(Lookup* arg0, u16 arg1, CollisionContext* arg2, f32* arg3, Vec3f* arg4, f32 arg5, CollisionPoly** arg6) {
    s32 result = false;
    u16 nextId;
    CollisionPoly* poly;
    CollisionPoly* polyList;
    f32 sp8C;
    Vec3s* vtxList;
    SSNode* curNode;
    u16 ceiling;

    ceiling = arg0->ceiling;
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
            f32 nY = poly->norm.y * (1.0f / 32767.0f);
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A7D8.s")

#ifdef NON_MATCHING
//right ops, wrong order
s32 func_8003A95C(SSNode* arg0, u16 arg1, StaticCollisionContext* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5) {

    CollisionPoly* curPoly; //temp_s0
    f32 temp_f0;
    u16 nextId; //v0
    SSNode* curNode;
    CollisionHeader* colHeader;
    CollisionPoly* polygonArray;
    Vec3s* vertexArray;

    curNode = arg0;
    polygonArray = arg2->colHeader->polygonArray;
    vertexArray = arg2->colHeader->vertexArray;

    while (true) {
        s32 id = curNode->polyId;

        if ((arg2->colHeader->polygonArray[id].flags_vIA & ((arg1 & 7) << 0xD)) != 0) {
            nextId = curNode->next;
            if (SS_NULL != nextId) {

                curNode = &arg2->polyNodes.tbl[nextId];
                continue;
            }
            break;
        }

        curPoly = polygonArray + id;
        temp_f0 = arg3->y + arg4;
        
        if (!(temp_f0 < vertexArray[curPoly->flags_vIA & 0x1FFF].y)
            || !(temp_f0 < vertexArray[curPoly->flags_vIB & 0x1FFF].y)
            || !(temp_f0 < vertexArray[curPoly->vIC].y)) {

            if (func_8003937C(curPoly, vertexArray, arg3, arg4)) {
                *arg5 = curPoly;
                return 1;
            }
            nextId = curNode->next;
            if (SS_NULL != nextId) {

                curNode = arg2->polyNodes.tbl + nextId;
                continue;
            }
        }
        break;
    }
    return 0;
}
#else
s32 func_8003A95C(SSNode* arg0, u16 arg1, StaticCollisionContext* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003A95C.s")
#endif //  NON_MATCHING

s32 func_8003AB28(Lookup* arg0, u16 arg1, StaticCollisionContext* colCtx, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, u16 arg6) {
    if (arg0->floor != SS_NULL && (arg6 & 4) == 0 
        && func_8003A95C(&colCtx->polyNodes.tbl[arg0->floor], arg1, colCtx, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0->wall != SS_NULL && (arg6 & 2) == 0 
        && func_8003A95C(&colCtx->polyNodes.tbl[arg0->wall], arg1, colCtx, arg3, arg4, arg5)) {
        return true;
    }

    if (arg0->ceiling != SS_NULL && (arg6 & 1) == 0 
        && func_8003A95C(&colCtx->polyNodes.tbl[arg0->ceiling], arg1, colCtx, arg3, arg4, arg5)) {
        return true;
    }

    return false;
}

//Get Lookup sector
//Does not return null
Lookup* func_8003AC54(StaticCollisionContext* arg0, Lookup* arg1, Vec3f* pos) {
    Vec3i sector;
    s32 regFix; 

    func_8003ADC8(arg0, pos, &sector);
    regFix = arg0->subdivisions.x;
    return (sector.z * regFix) * arg0->subdivisions.y + arg1
        + sector.x
        + sector.y * regFix;
}

//mzxOK
//Get Lookup sector
//Returns null if just outside the mesh bounding box
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
    return arg0->dyna.bgActors[bgId].colHeader;
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

#ifdef NON_MATCHING
//regalloc 
//arg4 = out, possibly bgId
f32 func_8003C614(GlobalContext* arg0, CollisionContext* arg1, u16 arg2, CollisionPoly** arg3, u32* arg4, Vec3f* arg5, Actor* arg6, u32 arg7, f32 arg8) {

    f32 temp_f0_2;
    s32* temp_a0;
    Lookup* temp_s5;
    Vec3f spA0;
    Lookup* temp_v0;
    s8003FBF4 sp6C;
    f32 phi_f22;

    *arg4 = BGCHECK_SCENE;
    *arg3 = NULL;
    temp_s5 = arg1->stat.lookupTbl;
    spA0 = *arg5;
    phi_f22 = -32000.0f;
loop_1:
    if (!(spA0.y < arg1->stat.minBounds.y)) {
        if (func_80038600(&spA0, "../z_bgcheck.c", 4410)) {
            if (arg6 != NULL) {

                osSyncPrintf("こいつ,pself_actor->name %d\n", arg6->id);
            }
        }
        temp_v0 = func_8003AD00(&arg1->stat, temp_s5, &spA0);
        if (temp_v0 == NULL) {
            spA0.y -= arg1->stat.unitSize.y;
            goto loop_1;
        }
        phi_f22 = func_8003992C(temp_v0, arg1, arg2, arg3, arg5, arg7, arg8, -32000.0f);
        if (!(-32000.0f < phi_f22)) {

            spA0.y -= arg1->stat.unitSize.y;
            goto loop_1;
        }
    }

    sp6C.colCtx = &arg1->stat; 
    sp6C.unk_08 = arg2; 
    sp6C.unk_10 = phi_f22;
    sp6C.unk_14 = arg5; 
    sp6C.unk_1C = arg6; 
    sp6C.unk_20 = arg7; 
    sp6C.unk_24 = arg8; 
    sp6C.globalCtx = arg0; 
    sp6C.unk_0C = arg3; 
    sp6C.unk_18 = arg4; 
    temp_f0_2 = func_8003FDDC(&sp6C);

    if (phi_f22 < temp_f0_2) {
        phi_f22 = temp_f0_2;
    }

    if (phi_f22 != -32000.0f) {
        if (func_80041EC8(arg1, *arg3, *arg4) != 0) {

            phi_f22 -= 1.0f;
        }
    }
    return phi_f22;
}
#else
f32 func_8003C614(GlobalContext* arg0, CollisionContext* arg1, u16 arg2, CollisionPoly** arg3, u32* arg4, Vec3f* arg5, Actor* arg6, u32 arg7, f32 arg8);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003C614.s")
#endif // NON_MATCHING

f32 func_8003C834(CollisionContext* arg0, CollisionPoly** arg1, Vec3f* arg2) {
    u32 sp34;

    return func_8003C614(NULL, arg0, 1, arg1, &sp34, arg2, NULL, 0x1C, 1.0f);
}

f32 func_8003C890(CollisionContext* arg0, CollisionPoly** arg1, Vec3f* arg2) {
    u32 sp34;

    return func_8003C614(NULL, arg0, 2, arg1, &sp34, arg2, NULL, 0x1C, 1.0f);
}

f32 func_8003C8EC(GlobalContext* arg0, CollisionContext* arg1, CollisionPoly** arg2, Vec3f* arg3) {
    u32 sp34;

    return func_8003C614(arg0, arg1, 2, arg2, &sp34, arg3, NULL, 0x1C, 1.0f);
}

f32 func_8003C940(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Vec3f* arg3) {
    return func_8003C614(NULL, arg0, 2, arg1, arg2, arg3, NULL, 0x1C, 1.0f);
}

f32 func_8003C9A4(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Actor* arg3, Vec3f* arg4) {
    return func_8003C614(NULL, arg0, 2, arg1, arg2, arg4, arg3, 0x1C, 1.0f);
}

f32 func_8003CA0C(GlobalContext* arg0, CollisionContext* arg1, CollisionPoly** arg2, u32* arg3, Actor* arg4, Vec3f* arg5) {
    return func_8003C614(arg0, arg1, 2, arg2, arg3, arg5, arg4, 0x1C, 1.0f);
}

f32 func_8003CA64(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Actor* arg3, Vec3f* arg4, f32 arg5) {
    return func_8003C614(NULL, arg0, 2, arg1, arg2, arg4, arg3, 0x1C, arg5);
}

f32 func_8003CAC8(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Actor* arg3, Vec3f* arg4) {
    return func_8003C614(NULL, arg0, 2, arg1, arg2, arg4, arg3, 6, 1.0f);
}

f32 func_8003CB30(CollisionContext* arg0, CollisionPoly* arg1, Vec3f* arg2) {
    CollisionPoly* sp3C;
    f32 result;
    u32 sp34;

    result = func_8003C614(NULL, arg0, 0, &sp3C, &sp34, arg2, NULL, 0x1C, 1.0f);
    if (sp3C != NULL) {
        *arg1 = *sp3C;
    }
    return result;
}

f32 func_8003CBE8(CollisionContext* arg0, CollisionPoly* arg1, u32* arg2, Vec3f* arg3) {
    CollisionPoly* sp34;
    f32 result;

    result = func_8003C614(NULL, arg0, 0, &sp34, arg2, arg3, NULL, 0x1C, 1.0f);
    if (sp34 != NULL) {
        *arg1 = *sp34;
    }
    return result;
}

f32 func_8003CCA4(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Vec3f* arg3) {
    return func_8003C614(NULL, arg0, 1, arg1, arg2, arg3, NULL, 6, 1.0f);
}

f32 func_8003CD08(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Actor* arg3, Vec3f* arg4) {
    return func_8003C614(NULL, arg0, 2, arg1, arg2, arg4, arg3, 2, 1.0f);
}

f32 func_8003CD70(CollisionContext* arg0, CollisionPoly** arg1, u32* arg2, Vec3f* arg3) {
    return func_8003C614(NULL, arg0, 2, arg1, arg2, arg3, NULL, 6, 1.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003CDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D464.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D594.s")

s32 func_8003D600(CollisionContext* arg0, u16 arg1, f32* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, UNK_TYPE* arg6, Actor* arg7) {
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
    lookup = arg0->stat.lookupTbl;
    if (func_8003C55C(&arg0->stat, arg3) == 0) {
        return 0;
    }

    result = func_8003A3E0(func_8003AC54(&arg0->stat, lookup, arg3), arg1, arg0, arg2, arg3, arg4, arg5);

    sp40 = *arg3;
    sp40.y = *arg2;
    sp3C = *arg2;

    if (func_80040E40(arg0, arg1, &sp3C, &sp40, arg4, arg5, arg6, arg7) != 0) {
        *arg2 = sp3C;
        result = 1; 
    }
    return result;
}

s32 func_8003D754(CollisionContext* arg0, f32* arg1, Vec3f* arg2, f32 arg3) {
    CollisionPoly* sp2C;
    UNK_TYPE sp28;

    return func_8003D600(arg0, 0, arg1, arg2, arg3, &sp2C, &sp28, NULL);
}

s32 func_8003D7A0(CollisionContext* arg0, f32* arg1, Vec3f* arg2, f32 arg3, CollisionPoly** arg4, UNK_TYPE* arg5, Actor* arg6) {
    return func_8003D600(arg0, 2, arg1, arg2, arg3, arg4, arg5, arg6);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003D7F0.s")
void func_8003D7F0(CollisionContext* arg0, s32 arg1, s32 arg2, Vec3f* arg3, s32 arg4, Vec3f* arg5, Vec3f* arg6, UNK_TYPE* arg7, s32 arg8, f32 arg9, s32 arg10);

s32 func_8003DD28(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 phi_v1;

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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003DD6C.s")

void func_8003DFA0(CollisionContext* arg0, Vec3f* arg1, s32 arg2, Vec3f* arg3, Vec3f* arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, UNK_TYPE* arg9, s32 argA, f32 argB) {
    func_8003D7F0(arg0, 2, 0, arg1, arg2, arg3, arg4, arg9, argA, argB, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

void func_8003E02C(CollisionContext* arg0, Vec3f* arg1, s32 arg2, Vec3f* arg3, Vec3f* arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, UNK_TYPE* arg9) {
    func_8003D7F0(arg0, 4, 0, arg1, arg2, arg3, arg4, arg9, 0, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

void func_8003E0B8(CollisionContext* arg0, Vec3f* arg1, s32 arg2, Vec3f* arg3, Vec3f* arg4, s32 arg5) {
    func_8003E0FC(arg0, arg1, arg2, arg3, arg4, 1, 1, 1, arg5);
}

//arg1 is actor pos (torch slug +24)
//arg2 is ? (torch slug + 264)
void func_8003E0FC(CollisionContext* arg0, Vec3f* arg1, s32 arg2, Vec3f* arg3, Vec3f* arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    UNK_TYPE sp3C;

    func_8003D7F0(arg0, 0, 0, arg1, arg2, arg3, arg4, &sp3C, 0, 1.0f, func_8003DD28(arg5, arg6, arg7, arg8, 1));
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8003E188.s")

s32 func_8003E214(CollisionContext* colCtx, u16 arg1, CollisionPoly** arg2, s32* arg3,
    Vec3f* arg4, f32 arg5, s16* arg6, u16 arg7) {
    Lookup* lookup;

    *arg3 = 0x32;
    if (func_80038600(arg4, "../z_bgcheck.c", 5852) == 1) {
        if (arg6 != NULL) {
            osSyncPrintf("こいつ,pself_actor->name %d\n", *arg6);
        }
    }
    lookup = func_8003AD00(&colCtx->stat, colCtx->stat.lookupTbl, arg4);
    if (lookup == NULL) {
        return 0;
    }
    else {
        if (func_8003AB28(lookup, arg1, &colCtx->stat, arg4, arg5, arg2, arg7)
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
void func_8003E3AC(GlobalContext* globalCtx , StaticList_s* arg1, s32 tblMax, s32 numPolys) {
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

//mzxOK
//Get StaticList_s Next
u16 func_8003E4DC(StaticList_s* arg0) {
    u16 new_index;

    new_index = arg0->count++;

    if (!(new_index < arg0->max)) {
        __assert("new_index < this->short_slist_node_size", "../z_bgcheck.c", 6021);
    }
    return new_index;
}

void func_8003E530(ScaleRotPos* arg0) {
    arg0->scale.x = arg0->scale.y = arg0->scale.z = 1.0f;
    arg0->pos.x = arg0->pos.y = arg0->pos.z = 0.0f;
    arg0->rot.x = arg0->rot.y = arg0->rot.z = 0;
}

void func_8003E568(ScaleRotPos* arg0, Vec3f* scale, Vec3s* rot, Vec3f* pos) {
    arg0->scale = *scale;
    arg0->rot = *rot;
    arg0->pos = *pos;
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

void func_8003E688(DynaLookup* arg0) {
    func_8003871C(&arg0->unk_02);
    func_8003871C(&arg0->unk_04);
    func_8003871C(&arg0->unk_06);
}

void func_8003E6C4(DynaLookup* arg0) {
    arg0->unk_00 = 0;
    func_8003E688(arg0);
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
s32 func_8003E804(ActorMesh* arg0) {
    return func_8003E5B4(&arg0->srp1, &arg0->srp2);
}

//mzxOK
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

//mzxOK
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

    func_8003E750(&arg1->bgActors[i], arg2, arg3);
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
    return arg0->dyna.bgActors[bgId].actor;
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
//arg3 = dyna vtx index, arg4 = dyna poly index
//void func_8003EE80(GlobalContext* arg0, DynaCollisionContext* arg1, s32 arg2, s32* arg3, s32* arg4) {
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
//    //temp_s4 = &arg1->bgActors[arg2]; //remember all temp_s4 values must be -4
//    arg1->bgActors[arg2].dynaLookup.unk_00 = (s16)*arg4;
//    arg1->bgActors[arg2].unk_10 = (s16)*arg3;
//    //sp108.unk0 = (s32)temp_s4->unk4->unk24;
//    //sp108.unk4 = (s32)temp_s4->unk4->unk28;
//    //sp108.unk8 = (s32)temp_s4->unk4->unk2C;
//    sp108 = arg1->bgActors[arg2].actor->actor.posRot.pos;
//
//    sp108.y += arg1->bgActors[arg2].actor->actor.shape.unk_08 * arg1->bgActors[arg2].actor->actor.scale.y;  // ->unkBC * temp_s4->unk4->unk54);
//    //temp_s6 = arg1 + (arg2 * 2);
//    func_8003E568(&arg1->bgActors[arg2].srp2, &arg1->bgActors[arg2].actor->actor.scale, &arg1->bgActors[arg2].actor->actor.shape, &sp108);
//    if ((arg1->flags[arg2] & 4) != 0) {
//        //goto block_48;
//        return;
//    }
//    if (!(arg1->dyn_poly_max >= (*arg4 + arg1->bgActors[arg2].colHeader->nbPolygons))) {
//        osSyncPrintf("\x1b[31m");
//        osSyncPrintf("DynaPolyInfo_expandSRT():polygon over %dが%dを越えるとダメ\n", *arg4 + arg1->bgActors[arg2].colHeader->nbPolygons, arg1->dyn_poly_max);
//    }
//    if (!(arg1->unk_140C >= (*arg3 + arg1->bgActors[arg2].colHeader->nbVertices))) {
//        osSyncPrintf("\x1b[31m");
//        osSyncPrintf("DynaPolyInfo_expandSRT():vertex over %dが%dを越えるとダメ\n", *arg3 + arg1->bgActors[arg2].colHeader->nbVertices, arg1->unk_140C);
//    }
//    if (!(arg1->dyn_poly_max < (*arg4 + arg1->bgActors[arg2].colHeader->nbPolygons))) {
//        phi_v1 = *arg3 + arg1->bgActors[arg2].colHeader->nbVertices;
//    }
//    else {
//        __assert("pdyna_poly_info->poly_num >= *pstart_poly_index + pbgdata->poly_num", "../z_bgcheck.c", 0x1A1F);
//        phi_v1 = *arg3 + arg1->bgActors[arg2].colHeader->nbVertices;
//    }
//    if (!(arg1->unk_140C >= phi_v1)) {
//        __assert("pdyna_poly_info->vert_num >= *pstart_vert_index + pbgdata->vtx_num", "../z_bgcheck.c", 0x1A20);
//    }
//    if (!((arg1->unk_00 & 1) || func_8003E804(&arg1->bgActors[arg2]) != 1)) {
//
//        //temp_s5 = &sp9C.u_00;
//        //temp_a0 = *arg4 + arg1->bgActors[arg2].colHeader->nbPolygons;
//        for (phi_s0 = *arg4; phi_s0 < *arg4 + arg1->bgActors[arg2].colHeader->nbPolygons; phi_s0++) {
//            //phi_a0_2 = temp_a0;
//            //if (*arg4 >= temp_a0) {
//            //    goto block_21;
//            //}
//            //phi_s1 = *arg4 * 0x10;
//            //phi_s0 = (s16)*arg4;
//            //phi_a0 = temp_a0;
//        //loop_14:
//            //temp_a2 = ;
//            temp_v0 = arg1->dyn_poly + phi_s1;
//            if (!(temp_v0->norm.y < 0x4000)) {
//                //goto block_16;
//
//                spA0 = phi_s0;
//                func_80038780(&arg1->dyn_list, &arg1->bgActors[arg2].dynaLookup.unk_06, &spA0);
//                //phi_a0 = *arg4 + arg1->bgActors[arg2].colHeader->nbPolygons;
//                //goto block_20;
//            }
//            //block_16:
//            else if (!(temp_v0->norm.y >= -0x6665)) {
//                //goto block_19;
//
//                //temp_a2_2 = &sp9C.u_02;
//                if ((arg1->flags[arg2] & 8) != 0) { //temp_s6
//                    //goto block_20;
//                    continue;
//                }
//                sp9E = phi_s0;
//                func_80038780(&arg1->dyn_list, &arg1->bgActors[arg2].dynaLookup.unk_02, &sp9E);
//                //phi_a0 = *arg4 + arg1->bgActors[arg2].colHeader->nbPolygons;
//                //goto block_20;
//            }
//            //block_19:
//            else {
//                sp9C = phi_s0;
//                func_80038780(&arg1->dyn_list, &arg1->bgActors[arg2].dynaLookup.unk_04, &sp9C);
//                //phi_a0 = *arg4 + arg1->bgActors[arg2].colHeader->nbPolygons;
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
//        *arg4 += arg1->bgActors[arg2].colHeader->nbPolygons; //temp_a0;//phi_a0_2;
//        *arg3 += arg1->bgActors[arg2].colHeader->nbVertices;
//        return;
//    }
//    func_800A7B04(&sp128,
//        arg1->bgActors[arg2].srp2.scale.x, arg1->bgActors[arg2].srp2.scale.y, arg1->bgActors[arg2].srp2.scale.z,
//        arg1->bgActors[arg2].srp2.rot.x, arg1->bgActors[arg2].srp2.rot.y, arg1->bgActors[arg2].srp2.rot.z,
//        arg1->bgActors[arg2].srp2.pos.x, arg1->bgActors[arg2].srp2.pos.y, arg1->bgActors[arg2].srp2.pos.z);
//
//    //ab6374
//
//    temp_f20 = 1.0f / (f32)(u32)arg1->bgActors[arg2].colHeader->nbVertices;
//    //if (!((s32)arg1->bgActors[arg2].colHeader->nbVertices <= 0)) {
//        //goto block_32;
//
//    spF0.x = spF0.y = spF0.z = 0.0f;
//    //phi_s0_2 = 0;
//    for (phi_s3 = 0; phi_s3 < arg1->bgActors[arg2].colHeader->nbVertices; phi_s3++) {
//        //loop_24:
//        Math_Vec3s_ToVec3f(&sp90, &arg1->bgActors[arg2].colHeader->vertexArray[phi_s3]);// + phi_s0_2);
//        func_800A6EF4(&sp128, &sp90, &sp84);
//        func_800388E8(&arg1->dyn_vtx[*arg3 + phi_s3], &sp84);
//        if (phi_s3 == 0) {
//            //goto block_26;
//
//            arg1->bgActors[arg2].unk_5C = arg1->bgActors[arg2].unk_60 = sp84.y;
//        }
//        //goto block_30;
//
//        //block_26:
//        else if (sp84.y < arg1->bgActors[arg2].unk_5C) {
//            //goto block_28;
//
//            arg1->bgActors[arg2].unk_5C = sp84.y;
//        }
//        //goto block_30;
//    //block_28:
//        else if (arg1->bgActors[arg2].unk_60 < sp84.y) {
//            //goto block_30;
//
//            arg1->bgActors[arg2].unk_60 = sp84.y;
//        }
//
//    //block_30:
//        spF0.x += sp84.x;
//        //temp_s3 = phi_s3 + 1;
//        spF0.y += sp84.y;
//        spF0.z += sp84.z;
//        /*phi_s0_2 = phi_s0_2 + 6;
//        phi_s3 = temp_s3;
//        if (temp_s3 < (s32)arg1->bgActors[arg2].colHeader->nbVertices) {
//            goto loop_24;
//        }*/
//    }
//    //block_32:
//    //temp_f10 = spF0.x * temp_f20;
//    temp_s5_2 = &arg1->bgActors[arg2].unk_54;
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
//    for (phi_s3_2 = 0; phi_s3_2 < arg1->bgActors[arg2].colHeader->nbVertices; phi_s3_2++) {
//        //if ((s32)arg1->bgActors[arg2].colHeader->nbVertices <= 0) {
//        //    goto block_37;
//
//    //loop_33:
//        spDC.x = (f32)arg1->dyn_vtx[*arg3 + phi_s3_2].x;
//        spDC.y = (f32)arg1->dyn_vtx[*arg3 + phi_s3_2].y;
//        //spEC = phi_f2;
//        spDC.z = (f32)arg1->dyn_vtx[*arg3 + phi_s3_2].z;
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
//        //if (temp_s3_2 < (s32)arg1->bgActors[arg2].colHeader->nbVertices) {
//        //    goto loop_33;
//        //}
//        //phi_f2_2 = phi_f2_3;
//    }
//    //phi_s3_3 = 0;
//    //block_37:
//    temp_s5_2->unk_06 = (s16)(s32)(sqrtf(phi_f2) * 1.1f);
//    temp_s5_3 = &arg1->dyn_list;
//    for (phi_s3_3 = 0; phi_s3_3 < arg1->bgActors[arg2].colHeader->nbPolygons; phi_s3_3++) {
//        //if ((s32)arg1->bgActors[arg2].colHeader->nbPolygons <= 0) {
//            //goto block_47;
//        //}
//    //loop_39:
//        //*temp_s0_2 =
//        temp_s0_2 = &arg1->dyn_poly[*arg4 + phi_s3_3];
//        *temp_s0_2 = arg1->bgActors[arg2].colHeader->polygonArray[phi_s3_3];
//        //temp_a0_3 = &spD0;
//        //temp_a1 = &spC4;
//        temp_t1 = (temp_s0_2->flags_vIA & 0xE000) | ((temp_s0_2->flags_vIA & 0x1FFF) + *arg3);
//        temp_s0_2->flags_vIA = temp_t1;
//        //temp_a2_3 = &spB8;
//        temp_s0_2->flags_vIB = (u16)((temp_s0_2->flags_vIB & 0xE000) | ((temp_s0_2->flags_vIB & 0x1FFF) + *arg3));
//        temp_s0_2->vIC = (u16)(*arg3 + temp_s0_2->vIC);
//        spD0.x = (f32)arg1->dyn_vtx[temp_s0_2->flags_vIA & 0x1FFF].x;
//        spD0.y = (f32)arg1->dyn_vtx[temp_s0_2->flags_vIA & 0x1FFF].y;
//        spD0.z = (f32)arg1->dyn_vtx[temp_s0_2->flags_vIA & 0x1FFF].z;
//        spC4.x = (f32)arg1->dyn_vtx[temp_s0_2->flags_vIB & 0x1FFF].x;
//        spC4.y = (f32)arg1->dyn_vtx[temp_s0_2->flags_vIB & 0x1FFF].y;
//        spC4.z = (f32)arg1->dyn_vtx[temp_s0_2->flags_vIB & 0x1FFF].z;
//        spB8.x = (f32)arg1->dyn_vtx[temp_s0_2->vIC].x;
//        spB8.y = (f32)arg1->dyn_vtx[temp_s0_2->vIC].y;
//        spB8.z = (f32)arg1->dyn_vtx[temp_s0_2->vIC].z;
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
//        temp_v0_2 = &arg1->dyn_vtx[temp_s0_2->flags_vIA & 0x1FFF];
//        temp_s0_2->dist = (s16)(s32)-(((f32)temp_v0_2->z * spAC.z) + ((spAC.x * (f32)temp_v0_2->x) + (spAC.y * (f32)temp_v0_2->y)));
//        if (0.5f < spAC.y) {
//            //goto block_43;
//
//        //temp_a2_4 = ;
//            sp76 = *arg4 + phi_s3_3;
//            func_80038780(temp_s5_3, &arg1->bgActors[arg2].dynaLookup.unk_06, &sp76);
//            //goto block_46;
//
//        //block_43:
//        }
//        else if (spAC.y < -0.8f) {
//            //goto block_45;
//
//            //temp_a2_5 = &sp74;
//            sp74 = *arg4 + phi_s3_3;
//            func_80038780(temp_s5_3, &arg1->bgActors[arg2].dynaLookup.unk_02, &sp74);
//            //goto block_46;
//        //block_45:
//        }
//        else {
//            //temp_a2_6 = &sp72;
//            sp72 = *arg4 + phi_s3_3;
//            func_80038780(temp_s5_3, &arg1->bgActors[arg2].dynaLookup.unk_04, &sp72);
//        //block_46:
//        }
//        //temp_s3_3 = phi_s3_3 + 1;
//        //phi_s3_3 = temp_s3_3;
//        //if (temp_s3_3 < (s32)arg1->bgActors[arg2].unk8->unk14) {
//        //    goto loop_39;
//        //}
//    //block_47:
//    }
//    *arg4 = (*arg4 + arg1->bgActors[arg2].colHeader->nbPolygons);
//    *arg3 = (*arg3 + arg1->bgActors[arg2].colHeader->nbVertices);
////block_48:
//}

void func_8003F8EC(GlobalContext* globalCtx, DynaCollisionContext* arg1, DynaPolyActor* actor) {
    DynaPolyActor* dynaActor;
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++)
    {
        if ((arg1->flags[i] & 1) != 0) {
            dynaActor = func_8003EB84(&globalCtx->colCtx, i);
            if (dynaActor != NULL && dynaActor == actor) {
                func_800434A0(actor);
                return;
            }
        }
    }
}

// DynaPolyInfo_setup
void func_8003F984(GlobalContext* globalCtx, DynaCollisionContext* arg1) {
    DynaPolyActor* temp_ret;
    s32 sp60;
    s32 sp5C;
    s32 i;

    func_80038870(&arg1->dyn_list);

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        func_8003E688(&arg1->bgActors[i].dynaLookup);
    }

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (arg1->flags[i] & 2) {

            osSyncPrintf("\x1b[32m");
            osSyncPrintf("DynaPolyInfo_setup():削除 index=%d\n", i);
            osSyncPrintf("\x1b[m");

            arg1->flags[i] = 0;
            func_8003E6EC(globalCtx, &arg1->bgActors[i]);
            arg1->unk_00 |= 1;
        }
        if (arg1->bgActors[i].actor != NULL
            && arg1->bgActors[i].actor->actor.update == NULL)
        {
            osSyncPrintf("\x1b[32m");
            osSyncPrintf("DynaPolyInfo_setup():削除 index=%d\n", i);
            osSyncPrintf("\x1b[m");
            temp_ret = func_8003EB84(&globalCtx->colCtx, i);
            if (temp_ret == NULL) {
                return;
            }
            temp_ret->dynaPolyId = -1;
            arg1->flags[i] = 0;

            func_8003E6EC(globalCtx, &arg1->bgActors[i]);
            arg1->unk_00 |= 1;
        }
    }
    sp60 = 0;
    sp5C = 0;
    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (arg1->flags[i] & 1)
        {
            func_8003EE80(globalCtx, arg1, i, &sp60, &sp5C);
        }
    }
    arg1->unk_00 &= 0xFFFE;
} 

void func_8003FB64(GlobalContext* globalCtx, DynaCollisionContext* arg1) {
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (arg1->flags[i] & 1) {
            func_8003E8EC(globalCtx, &arg1->bgActors[i]);
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
            && ((temp_v1->norm.y * (1.0f / 32767.0f)) < 0.0f)) {

            temp_v0 = phi_s0->next;
            if (SS_NULL == temp_v0) {
                break;
            }
            phi_s0 = &arg0->dyna->dyn_list.tbl[temp_v0];
            continue;
        }
        if (func_80038D48(&arg0->dyna->dyn_poly[id], arg0->dyna->dyn_vtx, arg0->unk_14->x, arg0->unk_14->z, &sp70, arg0->unk_24) == 1
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
s32 func_80040BE4(CollisionContext* arg0, u16 arg1, DynaCollisionContext* arg2, u16* arg3, f32* arg4, Vec3f* arg5, f32 arg6, CollisionPoly** arg7) {

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

    sp80 = 0;
    temp_v0 = *arg3;
    if (SS_NULL == temp_v0) {
        return 0;
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

                    sp80 = 1;
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
s32 func_80040BE4(CollisionContext* arg0, u16 arg1, DynaCollisionContext* arg2, u16* arg3, f32* arg4, Vec3f* arg5, f32 arg6, CollisionPoly** arg7);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040BE4.s")
#endif

#ifdef NON_MATCHING
s32 func_80040E40(CollisionContext* arg0, u16 arg1, f32* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, s32* arg6, DynaPolyActor* arg7) {

    s32 phi_s1;
    s32 sp78;
    f32 phi_f20;
    f32 sp70;
    CollisionPoly* sp68;

    sp78 = 0;
    phi_f20 = sp70 = arg3->y + arg4;

    for (phi_s1 = 0; phi_s1 < BG_ACTOR_MAX; phi_s1++) {
        if (arg0->dyna.flags[phi_s1] & 1
            && arg7 != arg0->dyna.bgActors[phi_s1].actor
            && func_800D0480(&arg0->dyna.bgActors[phi_s1].unk_54, arg3->x, arg3->z)
            && func_80040BE4(arg0, arg1, &arg0->dyna, &arg0->dyna.bgActors[phi_s1].dynaLookup.unk_02, &sp70, arg3, arg4, &sp68) == 1
            && (sp70 < phi_f20)) {
            //goto block_7;

            phi_f20 = sp70;
            *arg5 = sp68;
            *arg6 = phi_s1;
            sp78 = 1;
        }
    }
    *arg2 = phi_f20;
    return sp78;
}
#else
s32 func_80040E40(CollisionContext* arg0, u16 arg1, f32* arg2, Vec3f* arg3, f32 arg4, CollisionPoly** arg5, s32* arg6, DynaPolyActor* arg7);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80040E40.s")
#endif 

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

//Convert CollisionHeader Segmented to Virtual addressing
void func_80041880(void* colHeader, CollisionHeader** dest) {
    *dest = SEGMENTED_TO_VIRTUAL(colHeader);
    func_800417A0(*dest);
}

//mzxOK
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

//mzxOK
//Reset StaticList_s polyCheckTbl
void func_80041978(StaticList_s* arg0, int numPolys) {
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
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(arg0, bgId);
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
u32 func_80041A28(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(arg0, poly, bgId, 0) & 0xFF;
}

u16 func_80041A4C(CollisionContext* arg0, u32 camId, s32 bgId) {
    u16 result;
    CollisionHeader* colHeader;
    CamData* camData;

    colHeader = func_8003C4C4(arg0, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    result = camData[camId].cameraSType;
    return result;
}

u16 func_80041A94(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(arg0, bgId);
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
    return func_80041A4C(arg0, func_80041A28(arg0, poly, bgId), bgId);
}

u16 func_80041B24(CollisionContext* arg0, u32 camId, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;

    colHeader = func_8003C4C4(arg0, bgId);
    if (colHeader == NULL) {
        return 0;
    }

    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return camData[camId].numCameras;
}

u16 func_80041B80(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(arg0, bgId);
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
    return func_80041B24(arg0, func_80041A28(arg0, poly, bgId), bgId);
}

CamPosDataEntry* func_80041C10(CollisionContext* arg0, u32 camId, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;

    colHeader = func_8003C4C4(arg0, bgId);
    if (colHeader == NULL) {
        return 0;
    }
    camData = colHeader->cameraData;
    if ((u32)camData == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
        return 0;
    }
    return (CamPosDataEntry*)SEGMENTED_TO_VIRTUAL(camData[camId].camPosDataSeg);
}

CamPosDataEntry* func_80041C98(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader;
    CamData* camData;
    SurfaceType* surfaceTypes;

    colHeader = func_8003C4C4(arg0, bgId);
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
    return func_80041C10(arg0, func_80041A28(arg0, poly, bgId), bgId);
}

u32 func_80041D28(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 8 & 0x1F;
}

u32 func_80041D4C(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 0xD & 0x1F;
}

u32 func_80041D70(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 0x12 & 7;
}

u32 func_80041D94(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(arg0, poly, bgId, 0) >> 0x15 & 0x1F;
}

extern s32 D_80119D90[];

s32 func_80041DB8(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return D_80119D90[func_80041D94(arg0, poly, bgId)];
}

s32 func_80041DE4(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return (func_80041DB8(arg0, poly, bgId) & 1) ? 1 : 0;
}

s32 func_80041E18(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return (func_80041DB8(arg0, poly, bgId) & 2) ? 1 : 0;
}

s32 func_80041E4C(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return (func_80041DB8(arg0, poly, bgId) & 4) ? 1 : 0;
}

//unused
u32 func_80041E80(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 0x1A & 0xF;
}

u32 func_80041EA4(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 0x1A & 0xF;
}

u32 func_80041EC8(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 0x1E & 1;
}

u32 func_80041EEC(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 0) >> 0x1F & 1;
}

u32 func_80041F10(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {

    return func_800419B0(arg0, poly, bgId, 1) & 0xF;
}

extern u16 D_80119E10[];

//Get Poly Sfx
u16 func_80041F34(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    s32 temp_v0;

    temp_v0 = func_80041F10(arg0, poly, bgId);
    if (temp_v0 < 0 || temp_v0 > 13) {
        return 0;
    }
    return D_80119E10[temp_v0];
}

u32 func_80041F7C(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 1) >> 4 & 3;
}

u32 func_80041FA0(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 1) >> 6 & 0x1F;
}

u32 func_80041FC4(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 1) >> 0xB & 0x3F;
}

u32 func_80041FE8(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 1) >> 0x11 & 1;
}

s32 func_8004200C(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    u32 flags;
    if (func_8003C4C4(arg0, bgId) == 0) {
        return 1;
    }
    flags = poly->flags_vIA & 0x4000;
    return !!flags;
}

s32 func_80042048(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    u32 flags;
    if (func_8003C4C4(arg0, bgId) == 0) {
        return 1;
    }
    flags = poly->flags_vIA & 0x8000;
    return !!flags;
} 

s32 func_80042084(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    u32 flags;
    if (func_8003C4C4(arg0, bgId) == 0) {
        return 1;
    }
    flags = poly->flags_vIB & 0x2000;
    return !!flags;
}

u32 func_800420C0(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 1) >> 0x12 & 7;
}

u32 func_800420E4(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return func_800419B0(arg0, poly, bgId, 1) >> 0x15 & 0x3F;
}


u32 func_80042108(CollisionContext* arg0, CollisionPoly* poly, s32 bgId) {
    return (func_800419B0(arg0, poly, bgId, 1) & 0x8000000) ? 1 : 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_8004213C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042244.s")

#ifdef NON_MATCHING
s32 func_8004239C(GlobalContext* arg0, CollisionContext* arg1, Vec3f* arg2, f32 arg3, WaterBox** arg4) {
    f32 temp_f2;
    s32 temp_a0;
    u32 room; //a1
    u32 temp_a2;
    //WaterBox* temp_v1;
    WaterBox* phi_v0;
    WaterBox* test;
    u16 nbWaterBoxes;

    s32 phi_a0;

    nbWaterBoxes = arg1->stat.colHeader->nbWaterBoxes;
    test = arg1->stat.colHeader->waterBoxes;
    if (nbWaterBoxes == 0
        || (u32)test == PHYSICAL_TO_VIRTUAL(gSegments[0])) {
    //block_2:
        *arg4 = NULL;
        return -1;
    }

    //if ((s32)(*arg1)->unk24 > 0) {
    //    phi_v0 = (*arg1)->unk28;
    //    phi_a0 = 0;
    //loop_5:
    for (phi_a0 = 0; phi_a0 < nbWaterBoxes; phi_a0++) {
        temp_a2 = test[phi_a0].properties;
        //temp_v1 = phi_v0;
        room = (temp_a2 >> 0xD) & 0x3F;
        if (room == arg0->roomCtx.curRoom.num || room == 0x3F) {
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
        //if (temp_a0 < (s32)(*arg1)->unk24) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042708.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_800427B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042868.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042B2C.s")

void func_80042C3C(GlobalContext* arg0, CollisionContext* arg1) {
    CollisionContext* phi_s1;
    s32 phi_s0;

    do {
        for (phi_s0 = 0; phi_s0 < BG_ACTOR_MAX; phi_s0++) {
            if ((arg1->dyna.flags[phi_s0] & 1) != 0) {
                func_80042B2C(arg0, arg1, phi_s0);
            }
        }
    } while (0);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_bgcheck/func_80042FC4.s")
