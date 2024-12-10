#include "global.h"
#include "terminal.h"

#pragma increment_block_number "ntsc-1.0:136 ntsc-1.1:136 ntsc-1.2:136"

u16 DynaSSNodeList_GetNextNodeIdx(DynaSSNodeList* nodeList);
void BgCheck_GetStaticLookupIndicesFromPos(CollisionContext* colCtx, Vec3f* pos, Vec3i* sector);
s32 BgCheck_PosInStaticBoundingBox(CollisionContext* colCtx, Vec3f* pos);
s32 BgCheck_CheckLineImpl(CollisionContext* colCtx, u16 xpFlags1, u16 xpFlags2, Vec3f* posA, Vec3f* posB,
                          Vec3f* posResult, CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 chkDist,
                          u32 bccFlags);
void SSNodeList_Initialize(SSNodeList* this);
void SSNodeList_Alloc(PlayState* play, SSNodeList* this, s32 tblMax, s32 numPolys);
u16 SSNodeList_GetNextNodeIdx(SSNodeList* this);
void DynaPoly_Init(PlayState* play, DynaCollisionContext* dyna);
void DynaPoly_Alloc(PlayState* play, DynaCollisionContext* dyna);
f32 BgCheck_RaycastDownDyna(DynaRaycastDown* dynaRaycastDown);
s32 BgCheck_SphVsDynaWall(CollisionContext* colCtx, u16 xpFlags, f32* outX, f32* outZ, Vec3f* pos, f32 radius,
                          CollisionPoly** outPoly, s32* outBgId, Actor* actor);
s32 BgCheck_CheckDynaCeiling(CollisionContext* colCtx, u16 xpFlags, f32* outY, Vec3f* pos, f32 chkDist,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor);
s32 BgCheck_CheckLineAgainstDyna(CollisionContext* colCtx, u16 xpFlags, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                                 CollisionPoly** outPoly, f32* distSq, s32* outBgId, Actor* actor, f32 chkDist,
                                 s32 bccFlags);
s32 BgCheck_SphVsFirstDynaPoly(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, s32* outBgId,
                               Vec3f* center, f32 radius, Actor* actor, u16 bciFlags);
void BgCheck_ResetPolyCheckTbl(SSNodeList* nodeList, s32 numPolys);

#define SS_NULL 0xFFFF

// bccFlags
#define BGCHECK_CHECK_WALL (1 << 0)
#define BGCHECK_CHECK_FLOOR (1 << 1)
#define BGCHECK_CHECK_CEILING (1 << 2)
#define BGCHECK_CHECK_ONE_FACE (1 << 3)
#define BGCHECK_CHECK_DYNA (1 << 4)
#define BGCHECK_CHECK_ALL \
    (BGCHECK_CHECK_WALL | BGCHECK_CHECK_FLOOR | BGCHECK_CHECK_CEILING | BGCHECK_CHECK_ONE_FACE | BGCHECK_CHECK_DYNA)

// bciFlags
#define BGCHECK_IGNORE_NONE 0
#define BGCHECK_IGNORE_CEILING (1 << 0)
#define BGCHECK_IGNORE_WALL (1 << 1)
#define BGCHECK_IGNORE_FLOOR (1 << 2)

// raycast down flags (downChkFlags)
#define BGCHECK_RAYCAST_DOWN_CHECK_CEILINGS (1 << 0)
#define BGCHECK_RAYCAST_DOWN_CHECK_WALLS (1 << 1)
#define BGCHECK_RAYCAST_DOWN_CHECK_FLOORS (1 << 2)
#define BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE (1 << 3) // stops checking dyna walls on finding first candidate result
#define BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY (1 << 4)  // skips walls and ceilings with normal.y < 0

// raycast down groundChk flag. When enabled, search range is limited to floors and walls with a normal.y >= 0
#define BGCHECK_GROUND_CHECK_ON (1 << 0)

s32 D_80119D90[WALL_TYPE_MAX] = {
    0,                         // WALL_TYPE_0
    WALL_FLAG_0,               // WALL_TYPE_1
    WALL_FLAG_0 | WALL_FLAG_1, // WALL_TYPE_2
    WALL_FLAG_0 | WALL_FLAG_2, // WALL_TYPE_3
    WALL_FLAG_3,               // WALL_TYPE_4
    WALL_FLAG_CRAWLSPACE_1,    // WALL_TYPE_5
    WALL_FLAG_CRAWLSPACE_2,    // WALL_TYPE_6
    WALL_FLAG_6,               // WALL_TYPE_7
};

u16 sSurfaceMaterialToSfxOffset[SURFACE_MATERIAL_MAX] = {
    SURFACE_SFX_OFFSET_DIRT,          // SURFACE_MATERIAL_DIRT
    SURFACE_SFX_OFFSET_SAND,          // SURFACE_MATERIAL_SAND
    SURFACE_SFX_OFFSET_STONE,         // SURFACE_MATERIAL_STONE
    SURFACE_SFX_OFFSET_JABU,          // SURFACE_MATERIAL_JABU
    SURFACE_SFX_OFFSET_WATER_SHALLOW, // SURFACE_MATERIAL_WATER_SHALLOW
    SURFACE_SFX_OFFSET_WATER_DEEP,    // SURFACE_MATERIAL_WATER_DEEP
    SURFACE_SFX_OFFSET_TALL_GRASS,    // SURFACE_MATERIAL_TALL_GRASS
    SURFACE_SFX_OFFSET_LAVA,          // SURFACE_MATERIAL_LAVA
    SURFACE_SFX_OFFSET_GRASS,         // SURFACE_MATERIAL_GRASS
    SURFACE_SFX_OFFSET_BRIDGE,        // SURFACE_MATERIAL_BRIDGE
    SURFACE_SFX_OFFSET_WOOD,          // SURFACE_MATERIAL_WOOD
    SURFACE_SFX_OFFSET_DIRT,          // SURFACE_MATERIAL_DIRT_SOFT
    SURFACE_SFX_OFFSET_ICE,           // SURFACE_MATERIAL_ICE
    SURFACE_SFX_OFFSET_CARPET,        // SURFACE_MATERIAL_CARPET
};

#if DEBUG_FEATURES
/**
 * original name: T_BGCheck_PosErrorCheck
 */
s32 BgCheck_PosErrorCheck(Vec3f* pos, const char* file, int line) {
    if (pos->x >= BGCHECK_XYZ_ABSMAX || pos->x <= -BGCHECK_XYZ_ABSMAX || pos->y >= BGCHECK_XYZ_ABSMAX ||
        pos->y <= -BGCHECK_XYZ_ABSMAX || pos->z >= BGCHECK_XYZ_ABSMAX || pos->z <= -BGCHECK_XYZ_ABSMAX) {
        PRINTF(VT_FGCOL(RED));
        PRINTF(T("T_BGCheck_PosErrorCheck():位置が妥当ではありません。pos (%f,%f,%f) file:%s line:%d\n",
                 "T_BGCheck_PosErrorCheck(): Position is invalid. pos (%f,%f,%f) file:%s line:%d\n"),
               pos->x, pos->y, pos->z, file, line);
        PRINTF(VT_RST);
        return true;
    }
    return false;
}
#endif

/**
 * Set SSNode
 */
void SSNode_SetValue(SSNode* node, s16* polyId, u16 next) {
    node->polyId = *polyId;
    node->next = next;
}

/**
 * Set SSList to SS_NULL
 */
void SSList_SetNull(SSList* ssList) {
    ssList->head = SS_NULL;
}

/**
 * Insert `polyId` at the start of the static `ssList` list
 */
void SSNodeList_SetSSListHead(SSNodeList* nodeList, SSList* ssList, s16* polyId) {
    u16 newNodeId = SSNodeList_GetNextNodeIdx(nodeList);

    SSNode_SetValue(&nodeList->tbl[newNodeId], polyId, ssList->head);
    ssList->head = newNodeId;
}

/**
 * Insert `polyId` at the start of the dyna `ssList` list
 */
void DynaSSNodeList_SetSSListHead(DynaSSNodeList* nodeList, SSList* ssList, s16* polyId) {
    u16 newNodeId = DynaSSNodeList_GetNextNodeIdx(nodeList);

    ASSERT(newNodeId != SS_NULL, "new_node != SS_NULL", "../z_bgcheck.c", 1776);
    SSNode_SetValue(&nodeList->tbl[newNodeId], polyId, ssList->head);
    ssList->head = newNodeId;
}

/**
 * Initialize DynaSSNodeList
 */
void DynaSSNodeList_Initialize(PlayState* play, DynaSSNodeList* nodeList) {
    nodeList->tbl = NULL;
    nodeList->count = 0;
}

/**
 * Initialize DynaSSNodeList tbl
 */
void DynaSSNodeList_Alloc(PlayState* play, DynaSSNodeList* nodeList, s32 max) {
    nodeList->tbl = THA_AllocTailAlign(&play->state.tha, max * sizeof(SSNode), ALIGNOF_MASK(SSNode));

    ASSERT(nodeList->tbl != NULL, "psst->tbl != NULL", "../z_bgcheck.c", 1811);

    nodeList->max = max;
    nodeList->count = 0;
}

/**
 * Reset DynaSSNodeList count
 */
void DynaSSNodeList_ResetCount(DynaSSNodeList* nodeList) {
    nodeList->count = 0;
}

/**
 * Get next available node index in DynaSSNodeList
 * returns SS_NULL if list is full
 */
u16 DynaSSNodeList_GetNextNodeIdx(DynaSSNodeList* nodeList) {
    u16 idx = nodeList->count++;

    if (nodeList->max <= idx) {
        return SS_NULL;
    }

    return idx;
}

/**
 * original name: T_BGCheck_Vec3sToVec3f
 */
void BgCheck_Vec3sToVec3f(Vec3s* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

/**
 * original name: T_BGCheck_Vec3fToVec3s
 */
void BgCheck_Vec3fToVec3s(Vec3s* dst, Vec3f* src) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

/**
 * Get CollisionPoly's lowest y point
 */
s16 CollisionPoly_GetMinY(CollisionPoly* poly, Vec3s* vtxList) {
    //! @bug Due to rounding errors, some polys with a slight slope have a y normal of 1.0f/-1.0f. As such, this
    //! optimization returns the wrong minimum y for a subset of these polys.
    if (poly->normal.y == COLPOLY_SNORMAL(1.0f) || poly->normal.y == COLPOLY_SNORMAL(-1.0f)) {
        return vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)].y;
    } else {
        s32 a = COLPOLY_VTX_INDEX(poly->flags_vIA);
        s32 b = COLPOLY_VTX_INDEX(poly->flags_vIB);
        s32 c = poly->vIC;
        s16 min = vtxList[a].y;

        if (min > vtxList[b].y) {
            min = vtxList[b].y;
        }
        if (min < vtxList[c].y) {
            return min;
        }
        return vtxList[c].y;
    }
}

/**
 * CollisionPoly get unit normal
 */
void CollisionPoly_GetNormalF(CollisionPoly* poly, f32* nx, f32* ny, f32* nz) {
    *nx = COLPOLY_GET_NORMAL(poly->normal.x);
    *ny = COLPOLY_GET_NORMAL(poly->normal.y);
    *nz = COLPOLY_GET_NORMAL(poly->normal.z);
}

/**
 * Compute transform matrix mapping +y (up) to the collision poly's normal
 */
void func_80038A28(CollisionPoly* poly, f32 tx, f32 ty, f32 tz, MtxF* dest) {
    f32 nx;
    f32 ny;
    f32 nz;
    s32 pad;
    f32 xx;
    f32 zz;
    f32 yz;
    f32 xxInv;
    f32 zzInv;

    if (poly == NULL) {
        return;
    }
    CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);

    xx = sqrtf(1.0f - SQ(nx));
    if (!IS_ZERO(xx)) {
        xxInv = 1.0f / xx;
        zz = ny * xxInv;
        yz = -(nz * xxInv);
    } else {
        zz = sqrtf(1.0f - SQ(ny));
        if (1) {}
        if (!IS_ZERO(zz)) {
            zzInv = 1.0f / zz;
            yz = nx * zzInv;
            xx = -(nz * zzInv);
        } else {
            yz = 0.0f;
            xx = 0.0f;
        }
    }
    dest->xx = xx;
    dest->yx = -nx * zz;
    dest->zx = nx * yz;
    dest->xy = nx;
    dest->yy = ny;
    dest->zy = nz;
    dest->yz = yz;
    dest->zz = zz;
    dest->wx = 0.0f;
    dest->wy = 0.0f;
    dest->xz = 0.0f;
    dest->wz = 0.0f;
    dest->xw = tx;
    dest->yw = ty;
    dest->zw = tz;
    dest->ww = 1.0f;
}

/**
 * Calculate point distance from plane along normal
 */
f32 CollisionPoly_GetPointDistanceFromPlane(CollisionPoly* poly, Vec3f* point) {
    return (poly->normal.x * point->x + poly->normal.y * point->y + poly->normal.z * point->z) * COLPOLY_NORMAL_FRAC +
           poly->dist;
}

/**
 * Get Poly Vertices
 */
void CollisionPoly_GetVertices(CollisionPoly* poly, Vec3s* vtxList, Vec3f* dest) {
    BgCheck_Vec3sToVec3f(&vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)], &dest[0]);
    BgCheck_Vec3sToVec3f(&vtxList[COLPOLY_VTX_INDEX(poly->flags_vIB)], &dest[1]);
    BgCheck_Vec3sToVec3f(&vtxList[poly->vIC], &dest[2]);
}

/**
 * Get vertices by bgId
 * original name: T_Polygon_GetVertex_bg_ai
 */
void CollisionPoly_GetVerticesByBgId(CollisionPoly* poly, s32 bgId, CollisionContext* colCtx, Vec3f* dest) {
    Vec3s* vtxList;

    if (poly == NULL || bgId > BG_ACTOR_MAX || dest == NULL) {
        PRINTF(VT_COL(RED, WHITE));
        PRINTF(T("T_Polygon_GetVertex_bg_ai(): Error %d %d %d 引数が適切ではありません。処理を終了します。\n",
                 "T_Polygon_GetVertex_bg_ai(): Error %d %d %d Argument not appropriate. Processing terminated.\n"),
               poly == NULL, bgId > BG_ACTOR_MAX, dest == NULL);
        PRINTF(VT_RST);

        if (dest != NULL) {
            //! @bug: dest[2] x and y are not set to 0
            dest[0].x = dest[0].y = dest[0].z = dest[1].x = dest[1].y = dest[1].z = dest[2].z = 0.0f;
        }
    } else {
        if (bgId == BGCHECK_SCENE) {
            vtxList = colCtx->colHeader->vtxList;
        } else {
            vtxList = colCtx->dyna.vtxList;
        }

        CollisionPoly_GetVertices(poly, vtxList, dest);
    }
}

/**
 * Checks if point (`x`,`z`) is within `chkDist` of `poly`, computing `yIntersect` if true
 * Determinant max 300.0f
 */
s32 CollisionPoly_CheckYIntersectApprox1(CollisionPoly* poly, Vec3s* vtxList, f32 x, f32 z, f32* yIntersect,
                                         f32 chkDist) {
    static Vec3f polyVerts[3];
    f32 nx;
    f32 ny;
    f32 nz;
    Vec3s* vA;
    Vec3s* vB;
    Vec3s* vC;

    vA = &vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)];
    Math_Vec3s_ToVec3f(&polyVerts[0], vA);
    vB = &vtxList[COLPOLY_VTX_INDEX(poly->flags_vIB)];
    Math_Vec3s_ToVec3f(&polyVerts[1], vB);
    vC = &vtxList[poly->vIC];
    Math_Vec3s_ToVec3f(&polyVerts[2], vC);

    nx = COLPOLY_GET_NORMAL(poly->normal.x);
    ny = COLPOLY_GET_NORMAL(poly->normal.y);
    nz = COLPOLY_GET_NORMAL(poly->normal.z);

    return Math3D_TriChkPointParaYIntersectDist(&polyVerts[0], &polyVerts[1], &polyVerts[2], nx, ny, nz, poly->dist, z,
                                                x, yIntersect, chkDist);
}

/**
 * Checks if point (`x`,`z`) is within `chkDist` of `poly`, computing `yIntersect` if true
 * Determinant max 0.0f (checks if on or within poly)
 */
s32 CollisionPoly_CheckYIntersect(CollisionPoly* poly, Vec3s* vtxList, f32 x, f32 z, f32* yIntersect, f32 chkDist) {
    static Vec3f polyVerts[3];
    f32 nx;
    f32 ny;
    f32 nz;

    CollisionPoly_GetVertices(poly, vtxList, polyVerts);
    CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
    return Math3D_TriChkPointParaYIntersectInsideTri(&polyVerts[0], &polyVerts[1], &polyVerts[2], nx, ny, nz,
                                                     poly->dist, z, x, yIntersect, chkDist);
}

/**
 * Checks if point (`x`,`z`) is within 1.0f of `poly`, computing `yIntersect` if true
 * Determinant max 300.0f
 */
s32 CollisionPoly_CheckYIntersectApprox2(CollisionPoly* poly, Vec3s* vtxList, f32 x, f32 z, f32* yIntersect) {
    return CollisionPoly_CheckYIntersectApprox1(poly, vtxList, x, z, yIntersect, 1.0f);
}

/**
 * Checks if point (`y`,`z`) is within 1.0f of `poly`, computing `xIntersect` if true
 * Determinant max 300.0f
 */
s32 CollisionPoly_CheckXIntersectApprox(CollisionPoly* poly, Vec3s* vtxList, f32 y, f32 z, f32* xIntersect) {
    static Vec3f polyVerts[3];
    f32 nx;
    f32 ny;
    f32 nz;

    CollisionPoly_GetVertices(poly, vtxList, polyVerts);
    CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
    return Math3D_TriChkPointParaXIntersect(&polyVerts[0], &polyVerts[1], &polyVerts[2], nx, ny, nz, poly->dist, y, z,
                                            xIntersect);
}

/**
 * Checks if point (`x`,`y`) is within 1.0f of `poly`, computing `zIntersect` if true
 * Determinant max 300.0f
 */
s32 CollisionPoly_CheckZIntersectApprox(CollisionPoly* poly, Vec3s* vtxList, f32 x, f32 y, f32* zIntersect) {
    static Vec3f polyVerts[3];
    f32 nx;
    f32 ny;
    f32 nz;

    CollisionPoly_GetVertices(poly, vtxList, polyVerts);
    CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
    return Math3D_TriChkPointParaZIntersect(&polyVerts[0], &polyVerts[1], &polyVerts[2], nx, ny, nz, poly->dist, x, y,
                                            zIntersect);
}

/**
 * Test if travelling from `posA` to `posB` intersects `poly`
 * returns true if an intersection occurs, else false
 * returns `planeIntersect`, which is the point at which the line from `posA` to `posB` crosses `poly`'s plane
 * if `chkOneFace` is true, return false (no intersection) when going through the poly from A to B is done in the
 * normal's direction
 */
s32 CollisionPoly_LineVsPoly(CollisionPoly* poly, Vec3s* vtxList, Vec3f* posA, Vec3f* posB, Vec3f* planeIntersect,
                             s32 chkOneFace, f32 chkDist) {
    static Vec3f polyVerts[3];
    static Plane plane;
    f32 planeDistA;
    f32 planeDistB;
    f32 planeDistDelta;

    plane.originDist = poly->dist;
    planeDistA =
        (poly->normal.x * posA->x + poly->normal.y * posA->y + poly->normal.z * posA->z) * COLPOLY_NORMAL_FRAC +
        plane.originDist;
    planeDistB =
        (poly->normal.x * posB->x + poly->normal.y * posB->y + poly->normal.z * posB->z) * COLPOLY_NORMAL_FRAC +
        plane.originDist;

    planeDistDelta = planeDistA - planeDistB;
    if ((planeDistA >= 0.0f && planeDistB >= 0.0f) || (planeDistA < 0.0f && planeDistB < 0.0f) ||
        (chkOneFace && planeDistA < 0.0f && planeDistB > 0.0f) || IS_ZERO(planeDistDelta)) {
        return false;
    }

    CollisionPoly_GetNormalF(poly, &plane.normal.x, &plane.normal.y, &plane.normal.z);
    CollisionPoly_GetVertices(poly, vtxList, polyVerts);
    Math3D_LineSplitRatio(posA, posB, planeDistA / planeDistDelta, planeIntersect);
    if ((fabsf(plane.normal.x) > 0.5f &&
         Math3D_TriChkPointParaXDist(&polyVerts[0], &polyVerts[1], &polyVerts[2], &plane, planeIntersect->y,
                                     planeIntersect->z, chkDist)) ||
        (fabsf(plane.normal.y) > 0.5f &&
         Math3D_TriChkPointParaYDist(&polyVerts[0], &polyVerts[1], &polyVerts[2], &plane, planeIntersect->z,
                                     planeIntersect->x, chkDist)) ||
        (fabsf(plane.normal.z) > 0.5f &&
         Math3D_TriChkLineSegParaZDist(&polyVerts[0], &polyVerts[1], &polyVerts[2], &plane, planeIntersect->x,
                                       planeIntersect->y, chkDist))) {
        return true;
    }
    return false;
}

/**
 * Tests if sphere `center` `radius` intersects `poly`
 */
s32 CollisionPoly_SphVsPoly(CollisionPoly* poly, Vec3s* vtxList, Vec3f* center, f32 radius) {
    static Sphere16 sphere;
    static TriNorm tri;
    Vec3f intersect;

    CollisionPoly_GetVertices(poly, vtxList, tri.vtx);
    CollisionPoly_GetNormalF(poly, &tri.plane.normal.x, &tri.plane.normal.y, &tri.plane.normal.z);
    tri.plane.originDist = poly->dist;
    sphere.center.x = center->x;
    sphere.center.y = center->y;
    sphere.center.z = center->z;
    sphere.radius = radius;
    return Math3D_TriVsSphIntersect(&sphere, &tri, &intersect);
}

/**
 * Add poly to StaticLookup table
 * Table is sorted by poly's smallest y vertex component
 * `ssList` is the list to append a new poly to
 * `polyList` is the CollisionPoly lookup list
 * `vtxList` is the vertex lookup list
 * `polyId` is the index of the poly in polyList to insert into the lookup table
 */
void StaticLookup_AddPolyToSSList(CollisionContext* colCtx, SSList* ssList, CollisionPoly* polyList, Vec3s* vtxList,
                                  s16 polyId) {
    SSNode* curNode;
    SSNode* nextNode;
    s32 polyYMin;
    s16 curPolyId;
    u16 newNodeId;

    // if list is null
    if (ssList->head == SS_NULL) {
        SSNodeList_SetSSListHead(&colCtx->polyNodes, ssList, &polyId);
        return;
    }

    polyYMin = CollisionPoly_GetMinY(&polyList[polyId], vtxList);
    curNode = &colCtx->polyNodes.tbl[ssList->head];
    curPolyId = curNode->polyId;

    // if the poly being inserted has a lower y than the first poly
    if (polyYMin < vtxList[COLPOLY_VTX_INDEX(polyList[curPolyId].flags_vIA)].y &&
        polyYMin < vtxList[COLPOLY_VTX_INDEX(polyList[curPolyId].flags_vIB)].y &&
        polyYMin < vtxList[polyList[curPolyId].vIC].y) {
        SSNodeList_SetSSListHead(&colCtx->polyNodes, ssList, &polyId);
        return;
    }
    while (true) {
        // if at the end of the list
        if (curNode->next == SS_NULL) {
            s32 pad;

            newNodeId = SSNodeList_GetNextNodeIdx(&colCtx->polyNodes);
            SSNode_SetValue(&colCtx->polyNodes.tbl[newNodeId], &polyId, SS_NULL);
            curNode->next = newNodeId;
            return;
        }

        nextNode = &colCtx->polyNodes.tbl[curNode->next];
        curPolyId = nextNode->polyId;

        // if the poly being inserted is lower than the next poly
        if (polyYMin < vtxList[COLPOLY_VTX_INDEX(polyList[curPolyId].flags_vIA)].y &&
            polyYMin < vtxList[COLPOLY_VTX_INDEX(polyList[curPolyId].flags_vIB)].y &&
            polyYMin < vtxList[polyList[curPolyId].vIC].y) {
            newNodeId = SSNodeList_GetNextNodeIdx(&colCtx->polyNodes);
            SSNode_SetValue(&colCtx->polyNodes.tbl[newNodeId], &polyId, curNode->next);
            curNode->next = newNodeId;
            return;
        }
        curNode = nextNode;
    }
}

/**
 * Add CollisionPoly to StaticLookup list
 */
void StaticLookup_AddPoly(StaticLookup* lookup, CollisionContext* colCtx, CollisionPoly* polyList, Vec3s* vtxList,
                          s16 index) {
    if (polyList[index].normal.y > COLPOLY_SNORMAL(0.5f)) {
        StaticLookup_AddPolyToSSList(colCtx, &lookup->floor, polyList, vtxList, index);
    } else if (polyList[index].normal.y < COLPOLY_SNORMAL(-0.8f)) {
        StaticLookup_AddPolyToSSList(colCtx, &lookup->ceiling, polyList, vtxList, index);
    } else {
        StaticLookup_AddPolyToSSList(colCtx, &lookup->wall, polyList, vtxList, index);
    }
}

/**
 * Locates the closest static poly directly underneath `pos`, starting at list `ssList`
 * returns yIntersect of the closest poly, or `yIntersectMin`
 * stores the pointer of the closest poly to `outPoly`
 * if BGCHECK_GROUND_CHECK_ON is set, ignore polys with a normal.y < 0 (from vertical walls to ceilings)
 */
f32 BgCheck_RaycastDownStaticList(CollisionContext* colCtx, u16 xpFlags, SSList* ssList, CollisionPoly** outPoly,
                                  Vec3f* pos, f32 yIntersectMin, f32 chkDist, s32 groundChk) {
    SSNode* curNode;
    s32 polyId;
    f32 result;
    f32 yIntersect;

    result = yIntersectMin;
    if (ssList->head == SS_NULL) {
        return result;
    }

    curNode = &colCtx->polyNodes.tbl[ssList->head];

    while (true) {
        polyId = curNode->polyId;

        if (COLPOLY_VTX_CHECK_FLAGS_ANY(colCtx->colHeader->polyList[polyId].flags_vIA, xpFlags) ||
            ((groundChk & BGCHECK_GROUND_CHECK_ON) && colCtx->colHeader->polyList[polyId].normal.y < 0)) {
            if (curNode->next == SS_NULL) {
                break;
            }
            curNode = &colCtx->polyNodes.tbl[curNode->next];
            continue;
        }

        if (pos->y < colCtx->colHeader->vtxList[COLPOLY_VTX_INDEX(colCtx->colHeader->polyList[polyId].flags_vIA)].y &&
            pos->y < colCtx->colHeader->vtxList[COLPOLY_VTX_INDEX(colCtx->colHeader->polyList[polyId].flags_vIB)].y &&
            pos->y < colCtx->colHeader->vtxList[colCtx->colHeader->polyList[polyId].vIC].y) {
            break;
        }

        if (CollisionPoly_CheckYIntersect(&colCtx->colHeader->polyList[polyId], colCtx->colHeader->vtxList, pos->x,
                                          pos->z, &yIntersect, chkDist) == true) {
            // if poly is closer to pos without going over
            if (yIntersect < pos->y && result < yIntersect) {
                result = yIntersect;
                *outPoly = &colCtx->colHeader->polyList[polyId];
            }
        }

        if (curNode->next == SS_NULL) {
            break;
        }
        curNode = &colCtx->polyNodes.tbl[curNode->next];
    }
    return result;
}

/**
 * Locates the closest static poly directly underneath `pos` within `lookup`.
 * returns yIntersect of the closest poly, or `yIntersectMin`
 * stores the pointer of the closest poly to `outPoly`
 */
f32 BgCheck_RaycastDownStatic(StaticLookup* lookup, CollisionContext* colCtx, u16 xpFlags, CollisionPoly** poly,
                              Vec3f* pos, u32 downChkFlags, f32 chkDist, f32 yIntersectMin) {
    f32 yIntersect = yIntersectMin;
    s32 groundChk;

    if (downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_FLOORS) {
        yIntersect = BgCheck_RaycastDownStaticList(colCtx, xpFlags, &lookup->floor, poly, pos, yIntersect, chkDist, 0);
    }

    if ((downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_WALLS) || (downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE)) {
        groundChk = 0;
        if (downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY) {
            groundChk |= BGCHECK_GROUND_CHECK_ON;
        }
        yIntersect =
            BgCheck_RaycastDownStaticList(colCtx, xpFlags, &lookup->wall, poly, pos, yIntersect, chkDist, groundChk);
    }

    if (downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_CEILINGS) {
        groundChk = 0;
        if (downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY) {
            groundChk |= BGCHECK_GROUND_CHECK_ON;
        }
        yIntersect =
            BgCheck_RaycastDownStaticList(colCtx, xpFlags, &lookup->ceiling, poly, pos, yIntersect, chkDist, groundChk);
    }

    return yIntersect;
}

/**
 * Compute wall displacement on `posX` and `posZ`
 * sets `wallPolyPtr` to `poly` if `wallPolyPtr` is NULL or doesn't have `surfaceData[0] & 0x08000000` set
 * returns true if `wallPolyPtr` was changed
 * `invXZlength` is 1 / sqrt( sq(poly.normal.x) + sq(poly.normal.z) )
 */
s32 BgCheck_ComputeWallDisplacement(CollisionContext* colCtx, CollisionPoly* poly, f32* posX, f32* posZ, f32 nx, f32 ny,
                                    f32 nz, f32 invXZlength, f32 planeDist, f32 radius, CollisionPoly** wallPolyPtr) {
    CollisionPoly* wallPoly;
    u32 surfaceData;
    u32 hasFlag27;
    f32 displacement = (radius - planeDist) * invXZlength;

    *posX += displacement * nx;
    *posZ += displacement * nz;

    wallPoly = *wallPolyPtr;
    if (wallPoly == NULL) {
        *wallPolyPtr = poly;
        return true;
    }

    surfaceData = colCtx->colHeader->surfaceTypeList[wallPoly->type].data[1];
    hasFlag27 = surfaceData & 0x08000000 ? 1 : 0;

    if (!hasFlag27) {
        *wallPolyPtr = poly;
        return true;
    }
    return false;
}

/**
 * Performs collision detection on static poly walls within `lookup` on sphere `pos`, `radius`
 * returns true if a collision was detected
 * `outX` `outZ` return the displaced x,z coordinates,
 * `outPoly` returns the pointer to the nearest poly collided with, or NULL
 */
s32 BgCheck_SphVsStaticWall(StaticLookup* lookup, CollisionContext* colCtx, u16 xpFlags, f32* outX, f32* outZ,
                            Vec3f* pos, f32 radius, CollisionPoly** outPoly) {
    Vec3f resultPos;
    f32 zTemp;
    f32 xTemp;
    f32 planeDist;
    f32 intersect;
    s32 result;
    CollisionPoly* curPoly;
    CollisionPoly* polyList;
    SSNode* curNode;
    f32 invNormalXZ;
    s32 polyId;
    f32 normalXZ;
    f32 nx;
    f32 ny;
    f32 nz;
    s32 pad;
    Vec3s* vtxList;
    f32 temp_f16;
    f32 zMin;
    f32 zMax;
    f32 xMin;
    f32 xMax;

    result = false;
    if (lookup->wall.head == SS_NULL) {
        return result;
    }
    resultPos = *pos;

    polyList = colCtx->colHeader->polyList;
    vtxList = colCtx->colHeader->vtxList;
    curNode = &colCtx->polyNodes.tbl[lookup->wall.head];

    while (true) {
        polyId = curNode->polyId;
        curPoly = &polyList[polyId];
        if (pos->y < vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIA)].y &&
            pos->y < vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIB)].y && pos->y < vtxList[curPoly->vIC].y) {
            break;
        }

        nx = COLPOLY_GET_NORMAL(curPoly->normal.x);
        ny = COLPOLY_GET_NORMAL(curPoly->normal.y);
        nz = COLPOLY_GET_NORMAL(curPoly->normal.z);
        normalXZ = sqrtf(SQ(nx) + SQ(nz));
        planeDist = Math3D_DistPlaneToPos(nx, ny, nz, curPoly->dist, &resultPos);
        if (radius < fabsf(planeDist) || COLPOLY_VTX_CHECK_FLAGS_ANY(curPoly->flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        ASSERT(!IS_ZERO(normalXZ), "!IS_ZERO(ac_size)", "../z_bgcheck.c", 2854);

        invNormalXZ = 1.0f / normalXZ;
        temp_f16 = fabsf(nz) * invNormalXZ;
        if (temp_f16 < 0.4f) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        // compute curPoly zMin/zMax
        zTemp = vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIA)].z;
        zMax = zMin = zTemp;
        zTemp = vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIB)].z;

        if (zTemp < zMin) {
            zMin = zTemp;
        } else if (zMax < zTemp) {
            zMax = zTemp;
        }
        zTemp = vtxList[curPoly->vIC].z;
        if (zTemp < zMin) {
            zMin = zTemp;
        } else if (zTemp > zMax) {
            zMax = zTemp;
        }

        zMin -= radius;
        zMax += radius;

        if (resultPos.z < zMin || resultPos.z > zMax) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if (CollisionPoly_CheckZIntersectApprox(curPoly, vtxList, resultPos.x, pos->y, &intersect)) {
            f32 zIntersectDist = intersect - resultPos.z;

            if (fabsf(zIntersectDist) <= radius / temp_f16) {
                if (zIntersectDist * nz <= 4.0f) {
                    BgCheck_ComputeWallDisplacement(colCtx, curPoly, &resultPos.x, &resultPos.z, nx, ny, nz,
                                                    invNormalXZ, planeDist, radius, outPoly);
                    result = true;
                }
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        }
        curNode = &colCtx->polyNodes.tbl[curNode->next];
    }

    curNode = &colCtx->polyNodes.tbl[lookup->wall.head];

    while (true) {
        polyId = curNode->polyId;
        curPoly = &polyList[polyId];
        if (pos->y < vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIA)].y &&
            pos->y < vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIB)].y && pos->y < vtxList[curPoly->vIC].y) {
            break;
        }

        nx = COLPOLY_GET_NORMAL(curPoly->normal.x);
        ny = COLPOLY_GET_NORMAL(curPoly->normal.y);
        nz = COLPOLY_GET_NORMAL(curPoly->normal.z);
        normalXZ = sqrtf(SQ(nx) + SQ(nz));
        planeDist = Math3D_DistPlaneToPos(nx, ny, nz, curPoly->dist, &resultPos);
        if (radius < fabsf(planeDist) || COLPOLY_VTX_CHECK_FLAGS_ANY(curPoly->flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        ASSERT(!IS_ZERO(normalXZ), "!IS_ZERO(ac_size)", "../z_bgcheck.c", 2964);

        invNormalXZ = 1.0f / normalXZ;
        temp_f16 = fabsf(nx) * invNormalXZ;
        if (temp_f16 < 0.4f) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        // compute curPoly xMin/xMax
        xTemp = vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIA)].x;
        xMax = xMin = xTemp;
        xTemp = vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIB)].x;

        if (xTemp < xMin) {
            xMin = xTemp;
        } else if (xMax < xTemp) {
            xMax = xTemp;
        }
        xTemp = vtxList[curPoly->vIC].x;
        if (xTemp < xMin) {
            xMin = xTemp;
        } else if (xMax < xTemp) {
            xMax = xTemp;
        }

        xMin -= radius;
        xMax += radius;

        if (resultPos.x < xMin || xMax < resultPos.x) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if (CollisionPoly_CheckXIntersectApprox(curPoly, vtxList, pos->y, resultPos.z, &intersect)) {
            f32 xIntersectDist = intersect - resultPos.x;

            if (fabsf(xIntersectDist) <= radius / temp_f16) {
                if (xIntersectDist * nx <= 4.0f) {
                    BgCheck_ComputeWallDisplacement(colCtx, curPoly, &resultPos.x, &resultPos.z, nx, ny, nz,
                                                    invNormalXZ, planeDist, radius, outPoly);
                    result = true;
                }
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        }
        curNode = &colCtx->polyNodes.tbl[curNode->next];
    }

    *outX = resultPos.x;
    *outZ = resultPos.z;
    return result;
}

/**
 * Tests for collision with a static poly ceiling
 * returns true if a collision occurs, else false
 * `outPoly` returns the poly collided with
 * `outY` returns the y coordinate needed to not collide with `outPoly`
 */
s32 BgCheck_CheckStaticCeiling(StaticLookup* lookup, u16 xpFlags, CollisionContext* colCtx, f32* outY, Vec3f* pos,
                               f32 checkHeight, CollisionPoly** outPoly) {
    s32 result = false;
    u16 nextId;
    CollisionPoly* curPoly;
    CollisionPoly* polyList;
    f32 ceilingY;
    Vec3s* vtxList;
    SSNode* curNode;
    s32 curPolyId;

    if (lookup->ceiling.head == SS_NULL) {
        return false;
    }
    curNode = &colCtx->polyNodes.tbl[lookup->ceiling.head];
    polyList = colCtx->colHeader->polyList;
    vtxList = colCtx->colHeader->vtxList;

    *outY = pos->y;

    while (true) {
        f32 intersectDist;
        f32 ny;

        curPolyId = curNode->polyId;
        if (COLPOLY_VTX_CHECK_FLAGS_ANY(colCtx->colHeader->polyList[curPolyId].flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        curPoly = &polyList[curPolyId];

        if (CollisionPoly_CheckYIntersectApprox2(curPoly, vtxList, pos->x, pos->z, &ceilingY)) {
            intersectDist = ceilingY - *outY;
            ny = COLPOLY_GET_NORMAL(curPoly->normal.y);

            if (intersectDist > 0.0f && intersectDist < checkHeight && intersectDist * ny <= 0) {
                *outY = ceilingY - checkHeight;
                *outPoly = curPoly;
                result = true;
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        } else {
            curNode = &colCtx->polyNodes.tbl[curNode->next];
            continue;
        }
    }
    return result;
}

/**
 * Tests if line `posA` to `posB` intersects with a static poly in list `ssList`. Uses polyCheckTbl
 * returns true if such a poly exists, else false
 * `outPoly` returns the pointer of the poly intersected
 * `posB` and `outPos` returns the point of intersection with `outPoly`
 * `outDistSq` returns the squared distance from `posA` to the point of intersect
 */
s32 BgCheck_CheckLineAgainstSSList(SSList* ssList, CollisionContext* colCtx, u16 xpFlags1, u16 xpFlags2, Vec3f* posA,
                                   Vec3f* posB, Vec3f* outPos, CollisionPoly** outPoly, f32* outDistSq, f32 chkDist,
                                   s32 bccFlags) {
    SSNode* curNode;
    u8* checkedPoly;
    Vec3f polyIntersect;
    CollisionPoly* polyList;
    CollisionPoly* curPoly;
    s32 result;
    f32 minY;
    f32 distSq;

    result = false;
    polyList = colCtx->colHeader->polyList;
    if (ssList->head == SS_NULL) {
        return result;
    }

    curNode = &colCtx->polyNodes.tbl[ssList->head];
    while (true) {
        s16 polyId = curNode->polyId;

        checkedPoly = &colCtx->polyNodes.polyCheckTbl[polyId];

        if (*checkedPoly == true || COLPOLY_VTX_CHECK_FLAGS_ANY(polyList[polyId].flags_vIA, xpFlags1) ||
            !(xpFlags2 == 0 || COLPOLY_VTX_CHECK_FLAGS_ANY(polyList[polyId].flags_vIA, xpFlags2))) {

            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &colCtx->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        *checkedPoly = true;
        curPoly = &polyList[polyId];
        minY = CollisionPoly_GetMinY(curPoly, colCtx->colHeader->vtxList);
        if (posA->y < minY && posB->y < minY) {
            break;
        }
        if (CollisionPoly_LineVsPoly(curPoly, colCtx->colHeader->vtxList, posA, posB, &polyIntersect,
                                     (bccFlags & BGCHECK_CHECK_ONE_FACE) != 0, chkDist)) {
            distSq = Math3D_Vec3fDistSq(posA, &polyIntersect);
            if (distSq < *outDistSq) {

                *outDistSq = distSq;
                *outPos = polyIntersect;
                *posB = polyIntersect;
                *outPoly = curPoly;
                result = true;
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        }
        curNode = &colCtx->polyNodes.tbl[curNode->next];
    }
    return result;
}

/**
 * Tests if line `posA` to `posB` intersects with a static poly in `lookup`. Uses polyCheckTbl
 * returns true if such a poly exists, else false
 * `outPoly` returns the pointer of the poly intersected
 * `posB` and `outPos` returns the point of intersection with `outPoly`
 * `outDistSq` returns the squared distance from `posA` to the point of intersect
 */
s32 BgCheck_CheckLineInSubdivision(StaticLookup* lookup, CollisionContext* colCtx, u16 xpFlags1, u16 xpFlags2,
                                   Vec3f* posA, Vec3f* posB, Vec3f* outPos, CollisionPoly** outPoly, f32 chkDist,
                                   f32* outDistSq, u32 bccFlags) {
    s32 result = false;

    if ((bccFlags & BGCHECK_CHECK_FLOOR) && lookup->floor.head != SS_NULL) {
        if (BgCheck_CheckLineAgainstSSList(&lookup->floor, colCtx, xpFlags1, xpFlags2, posA, posB, outPos, outPoly,
                                           outDistSq, chkDist, bccFlags)) {
            result = true;
        }
    }

    if ((bccFlags & BGCHECK_CHECK_WALL) && lookup->wall.head != SS_NULL) {
        if (BgCheck_CheckLineAgainstSSList(&lookup->wall, colCtx, xpFlags1, xpFlags2, posA, posB, outPos, outPoly,
                                           outDistSq, chkDist, bccFlags)) {
            result = true;
        }
    }

    if ((bccFlags & BGCHECK_CHECK_CEILING) && lookup->ceiling.head != SS_NULL) {
        if (BgCheck_CheckLineAgainstSSList(&lookup->ceiling, colCtx, xpFlags1, xpFlags2, posA, posB, outPos, outPoly,
                                           outDistSq, chkDist, bccFlags)) {
            result = true;
        }
    }
    return result;
}

/**
 * Get first static poly intersecting sphere `center` `radius` from list `node`
 * returns true if any poly intersects the sphere, else returns false
 * `outPoly` returns the pointer of the first poly found that intersects
 */
s32 BgCheck_SphVsFirstStaticPolyList(SSNode* node, u16 xpFlags, CollisionContext* colCtx, Vec3f* center, f32 radius,
                                     CollisionPoly** outPoly) {
    CollisionPoly* polyList = colCtx->colHeader->polyList;
    Vec3s* vtxList = colCtx->colHeader->vtxList;

    while (true) {
        u16 nextId;
        s16 curPolyId = node->polyId;
        CollisionPoly* curPoly = &polyList[curPolyId];

        if (COLPOLY_VTX_CHECK_FLAGS_ANY(colCtx->colHeader->polyList[curPolyId].flags_vIA, xpFlags)) {
            if (node->next == SS_NULL) {
                break;
            } else {
                node = &colCtx->polyNodes.tbl[node->next];
                continue;
            }
        }

        if (center->y + radius < vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIA)].y &&
            center->y + radius < vtxList[COLPOLY_VTX_INDEX(curPoly->flags_vIB)].y &&
            center->y + radius < vtxList[curPoly->vIC].y) {
            break;
        }

        if (CollisionPoly_SphVsPoly(curPoly, vtxList, center, radius)) {
            *outPoly = curPoly;
            return true;
        }
        if (node->next == SS_NULL) {
            break;
        }
        node = &colCtx->polyNodes.tbl[node->next];
    }
    return false;
}

/**
 * Get first static poly intersecting sphere `center` `radius` within `lookup`
 * returns true if any poly intersects the sphere, else false
 * `outPoly` returns the first poly found that intersects
 */
s32 BgCheck_SphVsFirstStaticPoly(StaticLookup* lookup, u16 xpFlags, CollisionContext* colCtx, Vec3f* center, f32 radius,
                                 CollisionPoly** outPoly, u16 bciFlags) {
    if (lookup->floor.head != SS_NULL && !(bciFlags & BGCHECK_IGNORE_FLOOR) &&
        BgCheck_SphVsFirstStaticPolyList(&colCtx->polyNodes.tbl[lookup->floor.head], xpFlags, colCtx, center, radius,
                                         outPoly)) {
        return true;
    }

    if (lookup->wall.head != SS_NULL && !(bciFlags & BGCHECK_IGNORE_WALL) &&
        BgCheck_SphVsFirstStaticPolyList(&colCtx->polyNodes.tbl[lookup->wall.head], xpFlags, colCtx, center, radius,
                                         outPoly)) {
        return true;
    }

    if (lookup->ceiling.head != SS_NULL && !(bciFlags & BGCHECK_IGNORE_CEILING) &&
        BgCheck_SphVsFirstStaticPolyList(&colCtx->polyNodes.tbl[lookup->ceiling.head], xpFlags, colCtx, center, radius,
                                         outPoly)) {
        return true;
    }

    return false;
}

/**
 * Get StaticLookup from `pos`
 * Does not return NULL
 */
StaticLookup* BgCheck_GetNearestStaticLookup(CollisionContext* colCtx, StaticLookup* lookupTbl, Vec3f* pos) {
    Vec3i sector;
    s32 subdivAmountX;

    BgCheck_GetStaticLookupIndicesFromPos(colCtx, pos, &sector);
    subdivAmountX = colCtx->subdivAmount.x;
    return (sector.z * subdivAmountX) * colCtx->subdivAmount.y + lookupTbl + sector.x + sector.y * subdivAmountX;
}

/**
 * Get StaticLookup from `pos`
 * Returns NULL if just outside the mesh bounding box
 */
StaticLookup* BgCheck_GetStaticLookup(CollisionContext* colCtx, StaticLookup* lookupTbl, Vec3f* pos) {
    Vec3i sector;
    s32 subdivAmountX;

    if (!BgCheck_PosInStaticBoundingBox(colCtx, pos)) {
        return NULL;
    }
    BgCheck_GetStaticLookupIndicesFromPos(colCtx, pos, &sector);
    subdivAmountX = colCtx->subdivAmount.x;
    return (sector.z * subdivAmountX) * colCtx->subdivAmount.y + lookupTbl + sector.x + sector.y * subdivAmountX;
}

/**
 * Get StaticLookup subdivision indices from `pos`
 * `sector` returns the subdivision x,y,z indices containing or is nearest to `pos`
 */
void BgCheck_GetStaticLookupIndicesFromPos(CollisionContext* colCtx, Vec3f* pos, Vec3i* sector) {
    sector->x = (pos->x - colCtx->minBounds.x) * colCtx->subdivLengthInv.x;
    sector->y = (pos->y - colCtx->minBounds.y) * colCtx->subdivLengthInv.y;
    sector->z = (pos->z - colCtx->minBounds.z) * colCtx->subdivLengthInv.z;

    if (sector->x < 0) {
        sector->x = 0;
    } else if (sector->x >= colCtx->subdivAmount.x) {
        sector->x = colCtx->subdivAmount.x - 1;
    }

    if (sector->y < 0) {
        sector->y = 0;
    } else if (sector->y >= colCtx->subdivAmount.y) {
        sector->y = colCtx->subdivAmount.y - 1;
    }

    if (sector->z < 0) {
        sector->z = 0;
    } else if (sector->z >= colCtx->subdivAmount.z) {
        sector->z = colCtx->subdivAmount.z - 1;
    }
}

/**
 * Get negative bias subdivision indices
 * decrements indices if `pos` is within BGCHECK_SUBDIV_OVERLAP units of the negative subdivision boundary
 * `sx`, `sy`, `sz` returns the subdivision x, y, z indices
 */
void BgCheck_GetSubdivisionMinBounds(CollisionContext* colCtx, Vec3f* pos, s32* sx, s32* sy, s32* sz) {
    f32 dx = pos->x - colCtx->minBounds.x;
    f32 dy = pos->y - colCtx->minBounds.y;
    f32 dz = pos->z - colCtx->minBounds.z;

    *sx = dx * colCtx->subdivLengthInv.x;
    *sy = dy * colCtx->subdivLengthInv.y;
    *sz = dz * colCtx->subdivLengthInv.z;

    if (((s32)dx % (s32)colCtx->subdivLength.x < BGCHECK_SUBDIV_OVERLAP) && (*sx > 0)) {
        *sx -= 1;
    }

    if (((s32)dy % (s32)colCtx->subdivLength.y < BGCHECK_SUBDIV_OVERLAP) && (*sy > 0)) {
        *sy -= 1;
    }

    if (((s32)dz % (s32)colCtx->subdivLength.z < BGCHECK_SUBDIV_OVERLAP) && (*sz > 0)) {
        *sz -= 1;
    }
}

/**
 * Get positive bias subdivision indices
 * increments indices if `pos` is within BGCHECK_SUBDIV_OVERLAP units of the positive subdivision boundary
 * `sx`, `sy`, `sz` returns the subdivision x, y, z indices
 */
void BgCheck_GetSubdivisionMaxBounds(CollisionContext* colCtx, Vec3f* pos, s32* sx, s32* sy, s32* sz) {
    f32 dx = pos->x - colCtx->minBounds.x;
    f32 dy = pos->y - colCtx->minBounds.y;
    f32 dz = pos->z - colCtx->minBounds.z;

    *sx = dx * colCtx->subdivLengthInv.x;
    *sy = dy * colCtx->subdivLengthInv.y;
    *sz = dz * colCtx->subdivLengthInv.z;

    if (((s32)colCtx->subdivLength.x - BGCHECK_SUBDIV_OVERLAP < (s32)dx % (s32)colCtx->subdivLength.x) &&
        (*sx < colCtx->subdivAmount.x - 1)) {
        *sx += 1;
    }

    if (((s32)colCtx->subdivLength.y - BGCHECK_SUBDIV_OVERLAP < (s32)dy % (s32)colCtx->subdivLength.y) &&
        (*sy < colCtx->subdivAmount.y - 1)) {
        *sy += 1;
    }

    if (((s32)colCtx->subdivLength.z - BGCHECK_SUBDIV_OVERLAP < (s32)dz % (s32)colCtx->subdivLength.z) &&
        (*sz < colCtx->subdivAmount.z - 1)) {
        *sz += 1;
    }
}

/**
 * Calculate the subdivision index bounding box for CollisionPoly `polyId`
 * `subdivMinX`, `subdivMinY`, `subdivMinZ` returns the minimum subdivision x, y, z indices
 * `subdivMaxX`, `subdivMaxY`, `subdivMaxZ` returns the maximum subdivision x, y, z indices
 */
void BgCheck_GetPolySubdivisionBounds(CollisionContext* colCtx, Vec3s* vtxList, CollisionPoly* polyList,
                                      s32* subdivMinX, s32* subdivMinY, s32* subdivMinZ, s32* subdivMaxX,
                                      s32* subdivMaxY, s32* subdivMaxZ, s16 polyId) {
    u16* vtxDataTemp;
    Vec3f minVtx;
    Vec3f maxVtx;

    f32 x;
    f32 y;
    f32 z;

    Vec3s* vtx;
    s16 vtxId = COLPOLY_VTX_INDEX(polyList[polyId].vtxData[0]);

    Math_Vec3s_ToVec3f(&maxVtx, &vtxList[vtxId]);
    Math_Vec3f_Copy(&minVtx, &maxVtx);

    for (vtxDataTemp = polyList[polyId].vtxData + 1; vtxDataTemp < polyList[polyId].vtxData + 3; vtxDataTemp++) {
        vtxId = COLPOLY_VTX_INDEX(*vtxDataTemp);
        vtx = &vtxList[vtxId];
        x = vtx->x;
        y = vtx->y;
        z = vtx->z;

        if (minVtx.x > x) {
            minVtx.x = x;
        } else if (maxVtx.x < x) {
            maxVtx.x = x;
        }

        if (minVtx.y > y) {
            minVtx.y = y;
        } else if (maxVtx.y < y) {
            maxVtx.y = y;
        }

        if (minVtx.z > z) {
            minVtx.z = z;
        } else if (maxVtx.z < z) {
            maxVtx.z = z;
        }
    }
    BgCheck_GetSubdivisionMinBounds(colCtx, &minVtx, subdivMinX, subdivMinY, subdivMinZ);
    BgCheck_GetSubdivisionMaxBounds(colCtx, &maxVtx, subdivMaxX, subdivMaxY, subdivMaxZ);
}

/**
 * Test if poly `polyList`[`polyId`] intersects cube `min` `max`
 * returns true if the poly intersects the cube, else false
 */
s32 BgCheck_PolyIntersectsSubdivision(Vec3f* min, Vec3f* max, CollisionPoly* polyList, Vec3s* vtxList, s16 polyId) {
    f32 intersect;
    Vec3f va2;
    Vec3f vb2;
    Vec3f vc2;
    CollisionPoly* poly;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 dist;
    Vec3f va;
    Vec3f vb;
    Vec3f vc;
    s32 flags[3];

    flags[0] = flags[1] = 0;
    poly = &polyList[polyId];

    BgCheck_Vec3sToVec3f(&vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)], &va);
    flags[0] = Math3D_PointRelativeToCubeFaces(&va, min, max);
    if (flags[0] == 0) {
        return true;
    }

    BgCheck_Vec3sToVec3f(&vtxList[COLPOLY_VTX_INDEX(poly->flags_vIB)], &vb);
    flags[1] = Math3D_PointRelativeToCubeFaces(&vb, min, max);
    if (flags[1] == 0) {
        return true;
    }

    BgCheck_Vec3sToVec3f(&vtxList[poly->vIC], &vc);
    flags[2] = Math3D_PointRelativeToCubeFaces(&vc, min, max);
    if (flags[2] == 0) {
        return true;
    }

    if (flags[0] & flags[1] & flags[2]) {
        return false;
    }

    flags[0] |= Math3D_PointRelativeToCubeEdges(&va, min, max) << 8;
    flags[1] |= Math3D_PointRelativeToCubeEdges(&vb, min, max) << 8;
    flags[2] |= Math3D_PointRelativeToCubeEdges(&vc, min, max) << 8;
    if (flags[0] & flags[1] & flags[2]) {
        return false;
    }

    flags[0] |= Math3D_PointRelativeToCubeVertices(&va, min, max) << 0x18;
    flags[1] |= Math3D_PointRelativeToCubeVertices(&vb, min, max) << 0x18;
    flags[2] |= Math3D_PointRelativeToCubeVertices(&vc, min, max) << 0x18;
    if (flags[0] & flags[1] & flags[2]) {
        return false;
    }

    CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
    dist = poly->dist;

    if (Math3D_TriChkLineSegParaYIntersect(&va, &vb, &vc, nx, ny, nz, dist, min->z, min->x, &intersect, min->y,
                                           max->y) ||
        Math3D_TriChkLineSegParaYIntersect(&va, &vb, &vc, nx, ny, nz, dist, max->z, min->x, &intersect, min->y,
                                           max->y) ||
        Math3D_TriChkLineSegParaYIntersect(&va, &vb, &vc, nx, ny, nz, dist, min->z, max->x, &intersect, min->y,
                                           max->y) ||
        Math3D_TriChkLineSegParaYIntersect(&va, &vb, &vc, nx, ny, nz, dist, max->z, max->x, &intersect, min->y,
                                           max->y)) {
        return true;
    }
    if (Math3D_TriChkLineSegParaZIntersect(&va, &vb, &vc, nx, ny, nz, dist, min->x, min->y, &intersect, min->z,
                                           max->z) ||
        Math3D_TriChkLineSegParaZIntersect(&va, &vb, &vc, nx, ny, nz, dist, min->x, max->y, &intersect, min->z,
                                           max->z) ||
        Math3D_TriChkLineSegParaZIntersect(&va, &vb, &vc, nx, ny, nz, dist, max->x, min->y, &intersect, min->z,
                                           max->z) ||
        Math3D_TriChkLineSegParaZIntersect(&va, &vb, &vc, nx, ny, nz, dist, max->x, max->y, &intersect, min->z,
                                           max->z)) {
        return true;
    }
    if (Math3D_TriChkLineSegParaXIntersect(&va, &vb, &vc, nx, ny, nz, dist, min->y, min->z, &intersect, min->x,
                                           max->x) ||
        Math3D_TriChkLineSegParaXIntersect(&va, &vb, &vc, nx, ny, nz, dist, min->y, max->z, &intersect, min->x,
                                           max->x) ||
        Math3D_TriChkLineSegParaXIntersect(&va, &vb, &vc, nx, ny, nz, dist, max->y, min->z, &intersect, min->x,
                                           max->x) ||
        Math3D_TriChkLineSegParaXIntersect(&va, &vb, &vc, nx, ny, nz, dist, max->y, max->z, &intersect, min->x,
                                           max->x)) {
        return true;
    }

    BgCheck_Vec3sToVec3f(&vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)], &va2);
    BgCheck_Vec3sToVec3f(&vtxList[COLPOLY_VTX_INDEX(poly->flags_vIB)], &vb2);
    BgCheck_Vec3sToVec3f(&vtxList[poly->vIC], &vc2);
    if (Math3D_LineVsCube(min, max, &va2, &vb2) || Math3D_LineVsCube(min, max, &vb2, &vc2) ||
        Math3D_LineVsCube(min, max, &vc2, &va2)) {
        return true;
    }
    return false;
}

/**
 * Initialize StaticLookup Table
 * returns size of table, in bytes
 */
u32 BgCheck_InitializeStaticLookup(CollisionContext* colCtx, PlayState* play, StaticLookup* lookupTbl) {
    Vec3s* vtxList;
    CollisionPoly* polyList;
    s32 polyMax;
    s32 polyIdx;
    s32 sx;
    s32 sy;
    s32 sz;
    // subdivMin indices
    s32 sxMin;
    s32 syMin;
    s32 szMin;
    // subdivMax indices
    s32 sxMax;
    s32 syMax;
    s32 szMax;
    // subdiv min/max bounds for adding a poly
    Vec3f curSubdivMin;
    Vec3f curSubdivMax;
    CollisionHeader* colHeader = colCtx->colHeader;
    StaticLookup* lookupTblXY;
    StaticLookup* lookupTblX;
    StaticLookup* lookup;
    s32 subdivAmountXY;
    f32 subdivLengthX;
    f32 subdivLengthY;
    f32 subdivLengthZ;

    for (lookupTblXY = lookupTbl;
         lookupTblXY < (colCtx->subdivAmount.x * colCtx->subdivAmount.y * colCtx->subdivAmount.z + lookupTbl);
         lookupTblXY++) {
        lookupTblXY->floor.head = SS_NULL;
        lookupTblXY->wall.head = SS_NULL;
        lookupTblXY->ceiling.head = SS_NULL;
    }

    polyMax = colHeader->numPolygons;
    vtxList = colHeader->vtxList;
    polyList = colHeader->polyList;
    subdivAmountXY = colCtx->subdivAmount.x * colCtx->subdivAmount.y;
    subdivLengthX = colCtx->subdivLength.x + (2 * BGCHECK_SUBDIV_OVERLAP);
    subdivLengthY = colCtx->subdivLength.y + (2 * BGCHECK_SUBDIV_OVERLAP);
    subdivLengthZ = colCtx->subdivLength.z + (2 * BGCHECK_SUBDIV_OVERLAP);

    for (polyIdx = 0; polyIdx < polyMax; polyIdx++) {
        BgCheck_GetPolySubdivisionBounds(colCtx, vtxList, polyList, &sxMin, &syMin, &szMin, &sxMax, &syMax, &szMax,
                                         polyIdx);
        lookupTblXY = szMin * subdivAmountXY + lookupTbl;
        curSubdivMin.z = (colCtx->subdivLength.z * szMin + colCtx->minBounds.z) - BGCHECK_SUBDIV_OVERLAP;
        curSubdivMax.z = curSubdivMin.z + subdivLengthZ;

        for (sz = szMin; sz < szMax + 1; sz++) {
            lookupTblX = (colCtx->subdivAmount.x * syMin) + lookupTblXY;
            curSubdivMin.y = (colCtx->subdivLength.y * syMin + colCtx->minBounds.y) - BGCHECK_SUBDIV_OVERLAP;
            curSubdivMax.y = curSubdivMin.y + subdivLengthY;

            for (sy = syMin; sy < syMax + 1; sy++) {
                lookup = sxMin + lookupTblX;
                curSubdivMin.x = (colCtx->subdivLength.x * sxMin + colCtx->minBounds.x) - BGCHECK_SUBDIV_OVERLAP;
                curSubdivMax.x = curSubdivMin.x + subdivLengthX;

                for (sx = sxMin; sx < sxMax + 1; sx++) {
                    if (BgCheck_PolyIntersectsSubdivision(&curSubdivMin, &curSubdivMax, polyList, vtxList, polyIdx)) {
                        StaticLookup_AddPoly(lookup, colCtx, polyList, vtxList, polyIdx);
                    }
                    curSubdivMin.x += colCtx->subdivLength.x;
                    curSubdivMax.x += colCtx->subdivLength.x;
                    lookup++;
                }
                curSubdivMin.y += colCtx->subdivLength.y;
                curSubdivMax.y += colCtx->subdivLength.y;
                lookupTblX += colCtx->subdivAmount.x;
            }
            curSubdivMin.z += colCtx->subdivLength.z;
            curSubdivMax.z += colCtx->subdivLength.z;
            lookupTblXY += subdivAmountXY;
        }
    }
    return colCtx->polyNodes.count * sizeof(SSNode);
}

/**
 * Is current scene a SPOT scene
 */
s32 BgCheck_IsSpotScene(PlayState* play) {
    static s16 spotScenes[] = {
        SCENE_HYRULE_FIELD,          SCENE_KAKARIKO_VILLAGE,     SCENE_GRAVEYARD,     SCENE_ZORAS_RIVER,
        SCENE_KOKIRI_FOREST,         SCENE_SACRED_FOREST_MEADOW, SCENE_LAKE_HYLIA,    SCENE_ZORAS_DOMAIN,
        SCENE_ZORAS_FOUNTAIN,        SCENE_GERUDO_VALLEY,        SCENE_LOST_WOODS,    SCENE_DESERT_COLOSSUS,
        SCENE_GERUDOS_FORTRESS,      SCENE_HAUNTED_WASTELAND,    SCENE_HYRULE_CASTLE, SCENE_DEATH_MOUNTAIN_TRAIL,
        SCENE_DEATH_MOUNTAIN_CRATER, SCENE_GORON_CITY,           SCENE_LON_LON_RANCH,
    };
    s16* i;

    for (i = spotScenes; i < spotScenes + ARRAY_COUNT(spotScenes); i++) {
        if (play->sceneId == *i) {
            return true;
        }
    }
    return false;
}

typedef struct BgCheckSceneMemEntry {
    s16 sceneId;
    u32 memSize;
} BgCheckSceneMemEntry;

/**
 * Get custom scene memSize
 */
s32 BgCheck_TryGetCustomMemsize(s32 sceneId, u32* memSize) {
    static BgCheckSceneMemEntry sceneMemList[] = {
        { SCENE_HYRULE_FIELD, 0xB798 },         { SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR, 0x78C8 },
        { SCENE_GANON_BOSS, 0x70C8 },           { SCENE_SPIRIT_TEMPLE_BOSS, 0xACC8 },
        { SCENE_CHAMBER_OF_THE_SAGES, 0x70C8 }, { SCENE_SPIRIT_TEMPLE, 0x16CC8 },
        { SCENE_FIRE_TEMPLE, 0x198C8 },         { SCENE_GANONDORF_BOSS, 0x84C8 },
    };
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sceneMemList); i++) {
        if (sceneId == sceneMemList[i].sceneId) {
            *memSize = sceneMemList[i].memSize;
            return true;
        }
    }
    return false;
}

/**
 * Compute subdivLength for scene mesh lookup, for a single dimension
 */
void BgCheck_SetSubdivisionDimension(f32 min, s32 subdivAmount, f32* max, f32* subdivLength, f32* subdivLengthInv) {
    f32 length = (*max - min);

    *subdivLength = (s32)(length / subdivAmount) + 1;
    *subdivLength = CLAMP_MIN(*subdivLength, BGCHECK_SUBDIV_MIN);
    *subdivLengthInv = 1.0f / *subdivLength;

    *max = *subdivLength * subdivAmount + min;
}

typedef struct BgCheckSceneSubdivisionEntry {
    s16 sceneId;
    Vec3s subdivAmount;
    s32 nodeListMax; // if -1, dynamically compute max nodes
} BgCheckSceneSubdivisionEntry;

/**
 * Allocate CollisionContext
 */
void BgCheck_Allocate(CollisionContext* colCtx, PlayState* play, CollisionHeader* colHeader) {
    static BgCheckSceneSubdivisionEntry sceneSubdivisionList[] = {
        { SCENE_SHADOW_TEMPLE, { 23, 7, 14 }, -1 },
        { SCENE_FOREST_TEMPLE, { 38, 1, 38 }, -1 },
    };
    u32 tblMax;
    u32 memSize;
    UNUSED_NDEBUG u32 lookupTblMemSize;
    s32 customNodeListMax;
    SSNodeList* nodeList;
    u32 customMemSize;
    s32 useCustomSubdivisions;
    s32 i;

    colCtx->colHeader = colHeader;
    customNodeListMax = -1;

    PRINTF(T("/*---------------- BGCheck バッファーメモリサイズ -------------*/\n",
             "/*---------------- BGCheck Buffer Memory Size -------------*/\n"));

    if ((R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT) ||
        (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT) || (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED) ||
        (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_MARKET)) {
        if (play->sceneId == SCENE_STABLE) {
            PRINTF(T("/* BGCheck LonLonサイズ %dbyte */\n", "/* BGCheck LonLon Size %dbyte */\n"), 0x3520);
            colCtx->memSize = 0x3520;
        } else {
            PRINTF(T("/* BGCheck ミニサイズ %dbyte */\n", "/* BGCheck Mini Size %dbyte */\n"), 0x4E20);
            colCtx->memSize = 0x4E20;
        }
        colCtx->dyna.polyNodesMax = 500;
        colCtx->dyna.polyListMax = 256;
        colCtx->dyna.vtxListMax = 256;
        colCtx->subdivAmount.x = 2;
        colCtx->subdivAmount.y = 2;
        colCtx->subdivAmount.z = 2;
    } else if (BgCheck_IsSpotScene(play) == true) {
        colCtx->memSize = 0xF000;
        PRINTF(T("/* BGCheck Spot用サイズ %dbyte */\n", "/* BGCheck Spot Size %dbyte */\n"), 0xF000);
        colCtx->dyna.polyNodesMax = 1000;
        colCtx->dyna.polyListMax = 512;
        colCtx->dyna.vtxListMax = 512;
        colCtx->subdivAmount.x = 16;
        colCtx->subdivAmount.y = 4;
        colCtx->subdivAmount.z = 16;
    } else {
        if (BgCheck_TryGetCustomMemsize(play->sceneId, &customMemSize)) {
            colCtx->memSize = customMemSize;
        } else {
            colCtx->memSize = 0x1CC00;
        }
        PRINTF(T("/* BGCheck ノーマルサイズ %dbyte  */\n", "/* BGCheck Normal Size %dbyte  */\n"), colCtx->memSize);
        colCtx->dyna.polyNodesMax = 1000;
        colCtx->dyna.polyListMax = 512;
        colCtx->dyna.vtxListMax = 512;
        useCustomSubdivisions = false;

        for (i = 0; i < ARRAY_COUNT(sceneSubdivisionList); i++) {
            if (play->sceneId == sceneSubdivisionList[i].sceneId) {
                colCtx->subdivAmount.x = sceneSubdivisionList[i].subdivAmount.x;
                colCtx->subdivAmount.y = sceneSubdivisionList[i].subdivAmount.y;
                colCtx->subdivAmount.z = sceneSubdivisionList[i].subdivAmount.z;
                useCustomSubdivisions = true;
                customNodeListMax = sceneSubdivisionList[i].nodeListMax;
            }
        }
        if (!useCustomSubdivisions) {
            colCtx->subdivAmount.x = 16;
            colCtx->subdivAmount.y = 4;
            colCtx->subdivAmount.z = 16;
        }
    }
    colCtx->lookupTbl = THA_AllocTailAlign(&play->state.tha,
                                           colCtx->subdivAmount.x * sizeof(StaticLookup) * colCtx->subdivAmount.y *
                                               colCtx->subdivAmount.z,
                                           ALIGNOF_MASK(StaticLookup));
    if (colCtx->lookupTbl == NULL) {
#if OOT_VERSION < NTSC_1_1
        LogUtils_HungupThread("../z_bgcheck.c", 4173);
#else
        LogUtils_HungupThread("../z_bgcheck.c", 4176);
#endif
    }
    colCtx->minBounds.x = colCtx->colHeader->minBounds.x;
    colCtx->minBounds.y = colCtx->colHeader->minBounds.y;
    colCtx->minBounds.z = colCtx->colHeader->minBounds.z;
    colCtx->maxBounds.x = colCtx->colHeader->maxBounds.x;
    colCtx->maxBounds.y = colCtx->colHeader->maxBounds.y;
    colCtx->maxBounds.z = colCtx->colHeader->maxBounds.z;
    BgCheck_SetSubdivisionDimension(colCtx->minBounds.x, colCtx->subdivAmount.x, &colCtx->maxBounds.x,
                                    &colCtx->subdivLength.x, &colCtx->subdivLengthInv.x);
    BgCheck_SetSubdivisionDimension(colCtx->minBounds.y, colCtx->subdivAmount.y, &colCtx->maxBounds.y,
                                    &colCtx->subdivLength.y, &colCtx->subdivLengthInv.y);
    BgCheck_SetSubdivisionDimension(colCtx->minBounds.z, colCtx->subdivAmount.z, &colCtx->maxBounds.z,
                                    &colCtx->subdivLength.z, &colCtx->subdivLengthInv.z);
    memSize = colCtx->subdivAmount.x * sizeof(StaticLookup) * colCtx->subdivAmount.y * colCtx->subdivAmount.z +
              colCtx->colHeader->numPolygons * sizeof(u8) + colCtx->dyna.polyNodesMax * sizeof(SSNode) +
              colCtx->dyna.polyListMax * sizeof(CollisionPoly) + colCtx->dyna.vtxListMax * sizeof(Vec3s) +
              sizeof(CollisionContext);
    if (customNodeListMax > 0) {
        // tblMax is set without checking if customNodeListMax will result in a memory overflow
        // this is a non-issue as long as sceneSubdivisionList.nodeListMax is -1
        tblMax = customNodeListMax;
    } else {
        if (colCtx->memSize < memSize) {
#if OOT_VERSION < NTSC_1_1
            LogUtils_HungupThread("../z_bgcheck.c", 4227);
#else
            LogUtils_HungupThread("../z_bgcheck.c", 4230);
#endif
        }
        tblMax = (colCtx->memSize - memSize) / sizeof(SSNode);
    }

    SSNodeList_Initialize(&colCtx->polyNodes);
    SSNodeList_Alloc(play, &colCtx->polyNodes, tblMax, colCtx->colHeader->numPolygons);

    lookupTblMemSize = BgCheck_InitializeStaticLookup(colCtx, play, colCtx->lookupTbl);
    PRINTF(VT_FGCOL(GREEN));
    PRINTF(T("/*---結局 BG使用サイズ %dbyte---*/\n", "/*---BG size used in the end %dbyte---*/\n"),
           memSize + lookupTblMemSize);
    PRINTF(VT_RST);

    DynaPoly_Init(play, &colCtx->dyna);
    DynaPoly_Alloc(play, &colCtx->dyna);
}

/**
 * Get CollisionHeader
 * original name: T_BGCheck_getBGDataInfo
 */
CollisionHeader* BgCheck_GetCollisionHeader(CollisionContext* colCtx, s32 bgId) {
    if (bgId == BGCHECK_SCENE) {
        return colCtx->colHeader;
    }
    if (bgId < 0 || bgId > BG_ACTOR_MAX) {
        return NULL;
    }
    if (!(colCtx->dyna.bgActorFlags[bgId] & BGACTOR_IN_USE)) {
        PRINTF(VT_COL(YELLOW, BLACK));
        PRINTF(T("T_BGCheck_getBGDataInfo():そのbg_actor_indexは使われておりません。index=%d\n",
                 "T_BGCheck_getBGDataInfo(): That bg_actor_index is not in use. index=%d\n"));
        PRINTF(VT_RST);
        return NULL;
    }
    return colCtx->dyna.bgActors[bgId].colHeader;
}

/**
 * Test if pos is near collision boundaries
 */
s32 BgCheck_PosInStaticBoundingBox(CollisionContext* colCtx, Vec3f* pos) {
    if (pos->x < (colCtx->minBounds.x - BGCHECK_SUBDIV_OVERLAP) ||
        (colCtx->maxBounds.x + BGCHECK_SUBDIV_OVERLAP) < pos->x ||
        pos->y < (colCtx->minBounds.y - BGCHECK_SUBDIV_OVERLAP) ||
        (colCtx->maxBounds.y + BGCHECK_SUBDIV_OVERLAP) < pos->y ||
        pos->z < (colCtx->minBounds.z - BGCHECK_SUBDIV_OVERLAP) ||
        (colCtx->maxBounds.z + BGCHECK_SUBDIV_OVERLAP) < pos->z) {
        return false;
    }
    return true;
}

/**
 * Raycast Downward
 * If `actor` != null, bgcheck will be skipped for that actor
 * returns the yIntersect of the nearest poly found directly below `pos`, or BGCHECK_Y_MIN if no floor detected
 * returns the poly found in `outPoly`, and the bgId of the entity in `outBgId`
 */
f32 BgCheck_RaycastDownImpl(PlayState* play, CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly,
                            s32* outBgId, Vec3f* pos, Actor* actor, u32 downChkFlags, f32 chkDist) {
    f32 yIntersectDyna;
    s32* temp_a0;
    StaticLookup* lookupTbl;
    Vec3f checkPos;
    StaticLookup* lookup;
    DynaRaycastDown dynaRaycastDown;
    f32 yIntersect;

    *outBgId = BGCHECK_SCENE;
    *outPoly = NULL;
    lookupTbl = colCtx->lookupTbl;
    yIntersect = BGCHECK_Y_MIN;
    checkPos = *pos;

    while (true) {
        if (checkPos.y < colCtx->minBounds.y) {
            break;
        }

#if DEBUG_FEATURES
        if (BgCheck_PosErrorCheck(&checkPos, "../z_bgcheck.c", 4410)) {
            if (actor != NULL) {
                PRINTF(T("こいつ,pself_actor->name %d\n", "This guy, pself_actor->name %d\n"), actor->id);
            }
        }
#endif

        lookup = BgCheck_GetStaticLookup(colCtx, lookupTbl, &checkPos);
        if (lookup == NULL) {
            checkPos.y -= colCtx->subdivLength.y;
            continue;
        }
        yIntersect =
            BgCheck_RaycastDownStatic(lookup, colCtx, xpFlags, outPoly, pos, downChkFlags, chkDist, BGCHECK_Y_MIN);
        if (yIntersect > BGCHECK_Y_MIN) {
            break;
        }
        checkPos.y -= colCtx->subdivLength.y;
    }

    dynaRaycastDown.play = play;
    dynaRaycastDown.colCtx = colCtx;
    dynaRaycastDown.xpFlags = xpFlags;
    dynaRaycastDown.resultPoly = outPoly;
    dynaRaycastDown.yIntersect = yIntersect;
    dynaRaycastDown.pos = pos;
    dynaRaycastDown.bgId = outBgId;
    dynaRaycastDown.actor = actor;
    dynaRaycastDown.downChkFlags = downChkFlags;
    dynaRaycastDown.chkDist = chkDist;

    yIntersectDyna = BgCheck_RaycastDownDyna(&dynaRaycastDown);

    if (yIntersect < yIntersectDyna) {
        yIntersect = yIntersectDyna;
    }

    if (yIntersect != BGCHECK_Y_MIN && SurfaceType_IsSoft(colCtx, *outPoly, *outBgId)) {
        yIntersect -= 1.0f;
    }
    return yIntersect;
}

/**
 * Public raycast downward, ground check (UNUSED)
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_CameraRaycastDown1(CollisionContext* colCtx, CollisionPoly** outGroundPoly, Vec3f* pos) {
    s32 bgId;

    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_CAMERA, outGroundPoly, &bgId, pos, NULL,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   1.0f);
}

/**
 * Public raycast downward, ground check
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown1(CollisionContext* colCtx, CollisionPoly** outGroundPoly, Vec3f* pos) {
    s32 bgId;

    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outGroundPoly, &bgId, pos, NULL,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   1.0f);
}

/**
 * Public raycast downward, ground check
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown2(PlayState* play, CollisionContext* colCtx, CollisionPoly** outGroundPoly, Vec3f* pos) {
    s32 bgId;

    return BgCheck_RaycastDownImpl(play, colCtx, COLPOLY_IGNORE_ENTITY, outGroundPoly, &bgId, pos, NULL,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   1.0f);
}

/**
 * Public raycast downward, ground check
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown3(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Vec3f* pos) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outGroundPoly, bgId, pos, NULL,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   1.0f);
}

/**
 * Public raycast downward, ground check
 * If `actor` != null, bgcheck will be skipped for that actor
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown4(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Actor* actor,
                               Vec3f* pos) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outGroundPoly, bgId, pos, actor,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   1.0f);
}

/**
 * Public raycast downward, ground check
 * If `actor` != null, bgcheck will be skipped for that actor
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown5(PlayState* play, CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId,
                               Actor* actor, Vec3f* pos) {
    return BgCheck_RaycastDownImpl(play, colCtx, COLPOLY_IGNORE_ENTITY, outGroundPoly, bgId, pos, actor,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   1.0f);
}

/**
 * Public raycast downward, ground check
 * If `actor` != null, bgcheck will be skipped for that actor
 * `chkDist` is the distance beyond the poly's boundary where the check will still pass
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown6(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Actor* actor,
                               Vec3f* pos, f32 chkDist) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outGroundPoly, bgId, pos, actor,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                       BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                   chkDist);
}

/**
 * Public raycast downward, floor and exhaustive wall check (UNUSED)
 * If `actor` != null, bgcheck will be skipped for that actor
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown7(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Actor* actor, Vec3f* pos) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outPoly, bgId, pos, actor,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS, 1.0f);
}

/**
 * Public raycast downward, ground check
 * `outGroundPoly` returns original value if no poly detected
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_AnyRaycastDown1(CollisionContext* colCtx, CollisionPoly* outGroundPoly, Vec3f* pos) {
    CollisionPoly* checkResultPoly;
    f32 result;
    s32 bgId;

    result = BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_NONE, &checkResultPoly, &bgId, pos, NULL,
                                     BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                         BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                     1.0f);

    if (checkResultPoly != NULL) {
        *outGroundPoly = *checkResultPoly;
    }
    return result;
}

/**
 * Public raycast downward, ground check (UNUSED)
 * `outGroundPoly` returns original value if no poly detected
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_AnyRaycastDown2(CollisionContext* colCtx, CollisionPoly* outGroundPoly, s32* bgId, Vec3f* pos) {
    CollisionPoly* checkResultPoly;
    f32 result = BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_NONE, &checkResultPoly, bgId, pos, NULL,
                                         BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS |
                                             BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY,
                                         1.0f);

    if (checkResultPoly != NULL) {
        *outGroundPoly = *checkResultPoly;
    }
    return result;
}

/**
 * Public raycast downward, floor and exhaustive wall check
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_CameraRaycastDown2(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Vec3f* pos) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_CAMERA, outPoly, bgId, pos, NULL,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS, 1.0f);
}

/**
 * Public raycast downward, exhaustive wall check (UNUSED)
 * If `actor` != null, bgcheck will be skipped for that actor
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDownWalls(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Actor* actor,
                                   Vec3f* pos) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outPoly, bgId, pos, actor,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS, 1.0f);
}

/**
 * Public raycast downward, floor and exhaustive wall check (UNUSED)
 * returns yIntersect of the poly found, or BGCHECK_Y_MIN if no poly detected
 */
f32 BgCheck_EntityRaycastDown9(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Vec3f* pos) {
    return BgCheck_RaycastDownImpl(NULL, colCtx, COLPOLY_IGNORE_ENTITY, outPoly, bgId, pos, NULL,
                                   BGCHECK_RAYCAST_DOWN_CHECK_WALLS | BGCHECK_RAYCAST_DOWN_CHECK_FLOORS, 1.0f);
}

/**
 * Tests if moving from `posPrev` to `posNext` will collide with a "wall"
 * `radius` is used to form a sphere for collision detection purposes
 * `checkHeight` is the positive height above posNext to perform certain checks
 * returns true if a collision is detected, else false
 * `outPoly` returns the closest poly detected, while `outBgId` returns the poly owner
 */
s32 BgCheck_CheckWallImpl(CollisionContext* colCtx, u16 xpFlags, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev,
                          f32 radius, CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 checkHeight, u8 argA) {
    StaticLookup* lookupTbl;
    f32 temp_f0;
    s32 result;
    CollisionPoly* poly;
    f32 dx, dy, dz; // change between posPrev to posNext
    Vec3f sphCenter;
    s32 dynaPolyCollision;
    Vec3f posIntersect;
    s32 bgId;
    f32 temp_f0_2;
    f32 f32temp;
    f32 nx2, nz2;
    Vec3f checkLineNext;
    Vec3f checkLinePrev;
    f32 n2XZDist;
    f32 n3XZDist;
    s32 bccFlags;
    f32 nx;
    f32 nz;
    Vec3f posIntersect2;
    s32 bgId2;

    result = false;
    *outBgId = BGCHECK_SCENE;
    *outPoly = NULL;
    lookupTbl = colCtx->lookupTbl;
    *posResult = *posNext;
    dx = posNext->x - posPrev->x;
    dy = posNext->y - posPrev->y;
    dz = posNext->z - posPrev->z;

#if DEBUG_FEATURES
    if (BgCheck_PosErrorCheck(posNext, "../z_bgcheck.c", 4831) == true ||
        BgCheck_PosErrorCheck(posPrev, "../z_bgcheck.c", 4832) == true) {
        if (actor != NULL) {
            PRINTF(T("こいつ,pself_actor->name %d\n", "This guy, pself_actor->name %d\n"), actor->id);
        }
    }
#endif

    // if there's movement on the xz plane, and argA flag is 0,
    if ((dx != 0.0f || dz != 0.0f) && (argA & 1) == 0) {
        if ((checkHeight + dy) < 5.0f) {
            //! @bug checkHeight is not applied to posPrev/posNext
            result = BgCheck_CheckLineImpl(colCtx, xpFlags, COLPOLY_IGNORE_NONE, posPrev, posNext, &posIntersect, &poly,
                                           &bgId, actor, 1.0f, BGCHECK_CHECK_ALL & ~BGCHECK_CHECK_CEILING);
            if (result) {
                f32 ny = COLPOLY_GET_NORMAL(poly->normal.y);

                // if poly is floor, push result underneath the floor
                if (ny > 0.5f) {
                    posResult->x = posIntersect.x;
                    if (checkHeight > 1.0f) {
                        posResult->y = posIntersect.y - 1.0f;
                    } else {
                        posResult->y = posIntersect.y - checkHeight;
                    }
                    posResult->z = posIntersect.z;
                }
                // poly is wall
                else {
                    nx = COLPOLY_GET_NORMAL(poly->normal.x);
                    nz = COLPOLY_GET_NORMAL(poly->normal.z);
                    posResult->x = radius * nx + posIntersect.x;
                    posResult->y = radius * ny + posIntersect.y;
                    posResult->z = radius * nz + posIntersect.z;
                }
                *outPoly = poly;
                *outBgId = bgId;
            }
        } else {
            // if the radius is less than the distance travelled on the xz plane, also test for floor collisions
            bccFlags = SQ(radius) < (SQ(dx) + SQ(dz))
                           ? (BGCHECK_CHECK_ALL & ~BGCHECK_CHECK_CEILING)
                           : (BGCHECK_CHECK_ALL & ~BGCHECK_CHECK_FLOOR & ~BGCHECK_CHECK_CEILING);

            // perform a straight line test to see if a line at posNext.y + checkHeight from posPrev.xz to posNext.xz
            // passes through any wall and possibly floor polys
            checkLineNext = *posNext;
            checkLineNext.y += checkHeight;
            checkLinePrev = *posPrev;
            checkLinePrev.y = checkLineNext.y;
            result = BgCheck_CheckLineImpl(colCtx, xpFlags, COLPOLY_IGNORE_NONE, &checkLinePrev, &checkLineNext,
                                           &posIntersect, &poly, &bgId, actor, 1.0f, bccFlags);

            if (result) {
                nx2 = COLPOLY_GET_NORMAL(poly->normal.x);
                nz2 = COLPOLY_GET_NORMAL(poly->normal.z);
                n2XZDist = sqrtf(SQ(nx2) + SQ(nz2));

                // if poly is not a "flat" floor or "flat" ceiling
                if (!IS_ZERO(n2XZDist)) {
                    // normalize nx,nz and multiply each by the radius to go back to the other side of the wall
                    f32temp = 1.0f / n2XZDist;
                    temp_f0 = radius * f32temp;
                    posResult->x = temp_f0 * nx2 + posIntersect.x;
                    posResult->z = temp_f0 * nz2 + posIntersect.z;
                    *outPoly = poly;
                    *outBgId = bgId;
                    result = true;
                }
            }
        }
    }

    sphCenter = *posResult;
    dynaPolyCollision = false;
    sphCenter.y += checkHeight;
    // test if sphere (sphCenter, radius) collides with a dynamic wall, displacing the x/z coordinates
    if (BgCheck_SphVsDynaWall(colCtx, xpFlags, &posResult->x, &posResult->z, &sphCenter, radius, outPoly, outBgId,
                              actor)) {
        result = true;
        dynaPolyCollision = true;
        sphCenter = *posResult;
        sphCenter.y += checkHeight;
    }
    // test if sphere (sphCenter, radius) collides with a static wall, displacing the x/z coordinates
    if (BgCheck_PosInStaticBoundingBox(colCtx, posNext) == true &&
        // possible bug? if the sphere's radius is smaller than the distance to a subdivision boundary, some static
        // polys will be missed
        BgCheck_SphVsStaticWall(BgCheck_GetNearestStaticLookup(colCtx, lookupTbl, posResult), colCtx, xpFlags,
                                &posResult->x, &posResult->z, &sphCenter, radius, outPoly)) {
        *outBgId = BGCHECK_SCENE;
        result = true;
    }
    // if a collision with a dyna poly was detected
    if (dynaPolyCollision == true || *outBgId != BGCHECK_SCENE) {
        if (BgCheck_CheckLineImpl(colCtx, xpFlags, COLPOLY_IGNORE_NONE, posPrev, posResult, &posIntersect2, &poly,
                                  &bgId2, actor, 1.0f, BGCHECK_CHECK_ONE_FACE | BGCHECK_CHECK_WALL)) {
            f32 nx3 = COLPOLY_GET_NORMAL(poly->normal.x);
            f32 nz3 = COLPOLY_GET_NORMAL(poly->normal.z);

            n3XZDist = sqrtf(SQ(nx3) + SQ(nz3));

            // if poly is not a "flat" floor or "flat" ceiling
            if (!IS_ZERO(n3XZDist)) {
                // normalize nx,nz and multiply each by the radius to go back to the other side of the wall
                f32temp = 1.0f / n3XZDist;
                temp_f0_2 = radius * f32temp;
                posResult->x = temp_f0_2 * nx3 + posIntersect2.x;
                posResult->z = temp_f0_2 * nz3 + posIntersect2.z;
                *outPoly = poly;
                *outBgId = bgId2;
                result = true;
            }
        }
    }
    return result;
}

/**
 * Public. Tests if moving from `posPrev` to `posNext` will collide with a "wall"
 * `radius` is used to form a sphere for collision detection purposes
 * `checkHeight` is the positive height above posNext to perform certain checks
 * returns true if a collision is detected, else false
 * `outPoly` returns the closest poly detected
 */
s32 BgCheck_EntitySphVsWall1(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, f32 checkHeight) {
    s32 bgId;

    return BgCheck_CheckWallImpl(colCtx, COLPOLY_IGNORE_ENTITY, posResult, posNext, posPrev, radius, outPoly, &bgId,
                                 NULL, checkHeight, 0);
}

/**
 * Public. Tests if moving from `posPrev` to `posNext` will collide with a "wall"
 * `radius` is used to form a sphere for collision detection purposes
 * `checkHeight` is the positive height above posNext to perform certain checks
 * returns true if a collision is detected, else false
 * `outPoly` returns the closest poly detected, while `outBgId` returns the poly owner
 */
s32 BgCheck_EntitySphVsWall2(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, f32 checkHeight) {
    return BgCheck_CheckWallImpl(colCtx, COLPOLY_IGNORE_ENTITY, posResult, posNext, posPrev, radius, outPoly, outBgId,
                                 NULL, checkHeight, 0);
}

/**
 * Public. Tests if moving from `posPrev` to `posNext` will collide with a "wall"
 * `radius` is used to form a sphere for collision detection purposes
 * `checkHeight` is the positive height above posNext to perform certain checks
 * `actor` is the actor performing the check, allowing it to be skipped
 * returns true if a collision is detected, else false
 * `outPoly` returns the closest poly detected, while `outBgId` returns the poly owner
 */
s32 BgCheck_EntitySphVsWall3(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 checkHeight) {
    return BgCheck_CheckWallImpl(colCtx, COLPOLY_IGNORE_ENTITY, posResult, posNext, posPrev, radius, outPoly, outBgId,
                                 actor, checkHeight, 0);
}

/***
 * Public. Tests if moving from `posPrev` to `posNext` will collide with a "wall"
 * Skips a check that occurs only when moving on the xz plane
 * `radius` is used to form a sphere for collision detection purposes
 * `checkHeight` is the positive height above posNext to perform certain checks
 * `actor` is the actor performing the check, allowing it to be skipped
 * returns true if a collision is detected, else false
 * `outPoly` returns the closest poly detected, while `outBgId` returns the poly owner
 */
s32 BgCheck_EntitySphVsWall4(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 checkHeight) {
    return BgCheck_CheckWallImpl(colCtx, COLPOLY_IGNORE_ENTITY, posResult, posNext, posPrev, radius, outPoly, outBgId,
                                 actor, checkHeight, 1);
}

/***
 * Tests for collision with a ceiling poly
 * `checkHeight` should be a positive value
 * returns true if a collision occurs, else false
 * `outPoly` returns the poly collided with, while `outBgId` returns the owner of the poly
 * `outY` returns the y coordinate of pos needed to not collide with `outPoly`
 */
s32 BgCheck_CheckCeilingImpl(CollisionContext* colCtx, u16 xpFlags, f32* outY, Vec3f* pos, f32 checkHeight,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor) {
    StaticLookup* lookupTbl;
    StaticLookup* lookup;
    s32 result;
    Vec3f posTemp;
    f32 tempY;

    *outBgId = BGCHECK_SCENE;
    *outY = pos->y;

#if DEBUG_FEATURES
    if (BgCheck_PosErrorCheck(pos, "../z_bgcheck.c", 5206) == true) {
        if (actor != NULL) {
            PRINTF(T("こいつ,pself_actor->name %d\n", "This guy, pself_actor->name %d\n"), actor->id);
        }
    }
#endif

    lookupTbl = colCtx->lookupTbl;
    if (!BgCheck_PosInStaticBoundingBox(colCtx, pos)) {
        return false;
    }

    lookup = BgCheck_GetNearestStaticLookup(colCtx, lookupTbl, pos);
    result = BgCheck_CheckStaticCeiling(lookup, xpFlags, colCtx, outY, pos, checkHeight, outPoly);

    posTemp = *pos;
    posTemp.y = *outY;
    tempY = *outY;

    if (BgCheck_CheckDynaCeiling(colCtx, xpFlags, &tempY, &posTemp, checkHeight, outPoly, outBgId, actor)) {
        *outY = tempY;
        result = true;
    }
    return result;
}

/**
 * Tests for collision with any ceiling poly
 * `checkHeight` must be a positive value
 * returns true if a collision occurs, else false
 * `outY` returns the displaced y coordinate needed to not collide with the poly
 */
s32 BgCheck_AnyCheckCeiling(CollisionContext* colCtx, f32* outY, Vec3f* pos, f32 checkHeight) {
    CollisionPoly* poly;
    s32 bgId;

    return BgCheck_CheckCeilingImpl(colCtx, COLPOLY_IGNORE_NONE, outY, pos, checkHeight, &poly, &bgId, NULL);
}

/**
 * Tests for collision with any entity solid ceiling poly
 * `checkHeight` must be a positive value
 * returns true if a collision occurs, else false
 * `outY` returns the displaced y coordinate needed to not collide with the poly
 */
s32 BgCheck_EntityCheckCeiling(CollisionContext* colCtx, f32* outY, Vec3f* pos, f32 checkHeight,
                               CollisionPoly** outPoly, s32* outBgId, Actor* actor) {
    return BgCheck_CheckCeilingImpl(colCtx, COLPOLY_IGNORE_ENTITY, outY, pos, checkHeight, outPoly, outBgId, actor);
}

/**
 * Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 * `posB`? `posResult` returns the point of intersection
 * `outPoly` returns the pointer to the intersected poly, while `outBgId` returns the entity the poly belongs to
 */
s32 BgCheck_CheckLineImpl(CollisionContext* colCtx, u16 xpFlags1, u16 xpFlags2, Vec3f* posA, Vec3f* posB,
                          Vec3f* posResult, CollisionPoly** outPoly, s32* outBgId, Actor* actor, f32 chkDist,
                          u32 bccFlags) {
    StaticLookup* lookupTbl = colCtx->lookupTbl;
    StaticLookup* iLookup;
    s32 subdivMin[3];
    s32 subdivMax[3];
    s32 i;
    s32 result;
    f32 distSq;
    Vec3f posBTemp = *posB;
    Vec3f sectorMin;
    Vec3f sectorMax;

    *outBgId = BGCHECK_SCENE;

#if DEBUG_FEATURES
    if (BgCheck_PosErrorCheck(posA, "../z_bgcheck.c", 5334) == true ||
        BgCheck_PosErrorCheck(posB, "../z_bgcheck.c", 5335) == true) {
        if (actor != NULL) {
            PRINTF(T("こいつ,pself_actor->name %d\n", "This guy, pself_actor->name %d\n"), actor->id);
        } else {
            PRINTF(T("pself_actor == NULLで犯人不明\n", "pself_actor == NULL culprit unknown\n"));
        }
    }
#endif

    BgCheck_ResetPolyCheckTbl(&colCtx->polyNodes, colCtx->colHeader->numPolygons);
    BgCheck_GetStaticLookupIndicesFromPos(colCtx, posA, (Vec3i*)&subdivMin);
    BgCheck_GetStaticLookupIndicesFromPos(colCtx, &posBTemp, (Vec3i*)&subdivMax);
    *posResult = *posB;
    result = false;
    distSq = 1.0e38f;
    *outPoly = NULL;

    if (subdivMin[0] != subdivMax[0] || subdivMin[1] != subdivMax[1] || subdivMin[2] != subdivMax[2]) {
        s32 k;
        s32 temp_lo;
        s32 j;

        for (i = 0; i < 3; i++) {
            if (subdivMax[i] < subdivMin[i]) {
                j = subdivMax[i];
                subdivMax[i] = subdivMin[i];
                subdivMin[i] = j;
            }
        }
        temp_lo = colCtx->subdivAmount.x * colCtx->subdivAmount.y;
        iLookup = lookupTbl + subdivMin[2] * temp_lo;
        sectorMin.z = subdivMin[2] * colCtx->subdivLength.z + colCtx->minBounds.z;
        sectorMax.z = colCtx->subdivLength.z + sectorMin.z;

        for (i = subdivMin[2]; i < subdivMax[2] + 1; i++) {
            StaticLookup* jLookup = iLookup + subdivMin[1] * colCtx->subdivAmount.x;

            sectorMin.y = subdivMin[1] * colCtx->subdivLength.y + colCtx->minBounds.y;
            sectorMax.y = colCtx->subdivLength.y + sectorMin.y;

            for (j = subdivMin[1]; j < subdivMax[1] + 1; j++) {
                StaticLookup* lookup = jLookup + subdivMin[0];

                sectorMin.x = subdivMin[0] * colCtx->subdivLength.x + colCtx->minBounds.x;
                sectorMax.x = colCtx->subdivLength.x + sectorMin.x;

                for (k = subdivMin[0]; k < subdivMax[0] + 1; k++) {
                    if (Math3D_LineVsCube(&sectorMin, &sectorMax, posA, &posBTemp) == true &&
                        BgCheck_CheckLineInSubdivision(lookup, colCtx, xpFlags1, xpFlags2, posA, &posBTemp, posResult,
                                                       outPoly, chkDist, &distSq, bccFlags)) {
                        result = true;
                    }

                    lookup++;
                    sectorMin.x += colCtx->subdivLength.x;
                    sectorMax.x += colCtx->subdivLength.x;
                }

                jLookup += colCtx->subdivAmount.x;
                sectorMin.y += colCtx->subdivLength.y;
                sectorMax.y += colCtx->subdivLength.y;
            }

            iLookup += temp_lo;
            sectorMin.z += colCtx->subdivLength.z;
            sectorMax.z += colCtx->subdivLength.z;
        }
    } else if (!BgCheck_PosInStaticBoundingBox(colCtx, posA)) {
        return false;
    } else {
        result =
            BgCheck_CheckLineInSubdivision(BgCheck_GetNearestStaticLookup(colCtx, lookupTbl, posA), colCtx, xpFlags1,
                                           xpFlags2, posA, &posBTemp, posResult, outPoly, chkDist, &distSq, bccFlags);
        if (result == true) {
            distSq = Math3D_Vec3fDistSq(posResult, posA);
        }
    }
    if ((bccFlags & BGCHECK_CHECK_DYNA) &&
        BgCheck_CheckLineAgainstDyna(colCtx, xpFlags1, posA, &posBTemp, posResult, outPoly, &distSq, outBgId, actor,
                                     chkDist, bccFlags)) {
        result = true;
    }
    return result;
}

/**
 * Get bccFlags
 */
u32 BgCheck_GetBccFlags(s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32 chkDyna) {
    u32 result = 0;

    if (chkWall) {
        result = BGCHECK_CHECK_WALL;
    }
    if (chkFloor) {
        result |= BGCHECK_CHECK_FLOOR;
    }
    if (chkCeil) {
        result |= BGCHECK_CHECK_CEILING;
    }
    if (chkOneFace) {
        result |= BGCHECK_CHECK_ONE_FACE;
    }
    if (chkDyna) {
        result |= BGCHECK_CHECK_DYNA;
    }
    return result;
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_CameraLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace,
                            s32* bgId) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_CAMERA, COLPOLY_IGNORE_NONE, posA, posB, posResult, outPoly,
                                 bgId, NULL, 1.0f, BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_CameraLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace,
                            s32* bgId) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_NONE, COLPOLY_IGNORE_CAMERA, posA, posB, posResult, outPoly,
                                 bgId, NULL, 1.0f, BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_EntityLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace,
                            s32* bgId) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_ENTITY, COLPOLY_IGNORE_NONE, posA, posB, posResult, outPoly,
                                 bgId, NULL, 1.0f, BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_EntityLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId,
                            Actor* actor) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_ENTITY, COLPOLY_IGNORE_NONE, posA, posB, posResult, outPoly,
                                 bgId, actor, 1.0f, BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_EntityLineTest3(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId,
                            Actor* actor, f32 chkDist) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_ENTITY, COLPOLY_IGNORE_NONE, posA, posB, posResult, outPoly,
                                 bgId, actor, chkDist,
                                 BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_ProjectileLineTest(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                               CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace,
                               s32* bgId) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_PROJECTILES, COLPOLY_IGNORE_NONE, posA, posB, posResult,
                                 outPoly, bgId, NULL, 1.0f,
                                 BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_AnyLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkOneFace) {
    return BgCheck_AnyLineTest2(colCtx, posA, posB, posResult, outPoly, true, true, true, chkOneFace);
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_AnyLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace) {
    s32 bgId;

    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_NONE, COLPOLY_IGNORE_NONE, posA, posB, posResult, outPoly,
                                 &bgId, NULL, 1.0f, BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Public. Tests if a line from `posA` to `posB` intersects with a poly
 * returns true if it does, else false
 */
s32 BgCheck_AnyLineTest3(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId) {
    return BgCheck_CheckLineImpl(colCtx, COLPOLY_IGNORE_NONE, COLPOLY_IGNORE_NONE, posA, posB, posResult, outPoly, bgId,
                                 NULL, 1.0f, BgCheck_GetBccFlags(chkWall, chkFloor, chkCeil, chkOneFace, true));
}

/**
 * Get first poly intersecting sphere `center` `radius`
 * ignores `actor` dyna poly
 * returns true if any poly intersects the sphere, else false
 * `outPoly` returns the pointer of the first poly found that intersects
 * `outBgId` returns the bgId of the entity that owns `outPoly`
 */
s32 BgCheck_SphVsFirstPolyImpl(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, s32* outBgId,
                               Vec3f* center, f32 radius, Actor* actor, u16 bciFlags) {
    StaticLookup* lookup;

    *outBgId = BGCHECK_SCENE;

#if DEBUG_FEATURES
    if (BgCheck_PosErrorCheck(center, "../z_bgcheck.c", 5852) == true) {
        if (actor != NULL) {
            PRINTF(T("こいつ,pself_actor->name %d\n", "This guy, pself_actor->name %d\n"), actor->id);
        }
    }
#endif

    lookup = BgCheck_GetStaticLookup(colCtx, colCtx->lookupTbl, center);
    if (lookup == NULL) {
        return false;
    } else if (BgCheck_SphVsFirstStaticPoly(lookup, xpFlags, colCtx, center, radius, outPoly, bciFlags) ||
               BgCheck_SphVsFirstDynaPoly(colCtx, xpFlags, outPoly, outBgId, center, radius, actor, bciFlags)) {
        return true;
    }
    return false;
}

/**
 * Public get first poly intersecting sphere `center` `radius`
 */
s32 BgCheck_SphVsFirstPoly(CollisionContext* colCtx, Vec3f* center, f32 radius) {
    CollisionPoly* poly;
    s32 bgId;

    return BgCheck_SphVsFirstPolyImpl(colCtx, COLPOLY_IGNORE_NONE, &poly, &bgId, center, radius, NULL,
                                      BGCHECK_IGNORE_NONE);
}

/**
 * Public get first wall poly intersecting sphere `center` `radius`
 */
s32 BgCheck_SphVsFirstWall(CollisionContext* colCtx, Vec3f* center, f32 radius) {
    CollisionPoly* poly;
    s32 bgId;

    return BgCheck_SphVsFirstPolyImpl(colCtx, COLPOLY_IGNORE_NONE, &poly, &bgId, center, radius, NULL,
                                      BGCHECK_IGNORE_FLOOR | BGCHECK_IGNORE_CEILING);
}

/**
 * Init SSNodeList
 */
void SSNodeList_Initialize(SSNodeList* this) {
    this->max = 0;
    this->count = 0;
    this->tbl = NULL;
    this->polyCheckTbl = NULL;
}

/**
 * Allocate SSNodeList
 * tblMax is the number of SSNode records to allocate
 * numPolys is the number of polygons defined within the CollisionHeader
 */
void SSNodeList_Alloc(PlayState* play, SSNodeList* this, s32 tblMax, s32 numPolys) {
    this->max = tblMax;
    this->count = 0;
    this->tbl = THA_AllocTailAlign(&play->state.tha, tblMax * sizeof(SSNode), ALIGNOF_MASK(SSNode));

    ASSERT(this->tbl != NULL, "this->short_slist_node_tbl != NULL", "../z_bgcheck.c", 5975);

    this->polyCheckTbl = GAME_STATE_ALLOC(&play->state, numPolys, "../z_bgcheck.c", 5979);

    ASSERT(this->polyCheckTbl != NULL, "this->polygon_check != NULL", "../z_bgcheck.c", 5981);
}

/**
 * Get next SSNodeList SSNode
 */
SSNode* SSNodeList_GetNextNode(SSNodeList* this) {
    SSNode* result = &this->tbl[this->count];

    this->count++;
    ASSERT(this->count < this->max, "this->short_slist_node_last_index < this->short_slist_node_size", "../z_bgcheck.c",
           5998);
    if (!(this->count < this->max)) {
        return NULL;
    }
    return result;
}

/**
 * Get next SSNodeList SSNode index
 */
u16 SSNodeList_GetNextNodeIdx(SSNodeList* this) {
    u16 new_index = this->count++;

    ASSERT(new_index < this->max, "new_index < this->short_slist_node_size", "../z_bgcheck.c", 6021);
    return new_index;
}

/**
 * Initialize ScaleRotPos
 */
void ScaleRotPos_Initialize(ScaleRotPos* srp) {
    srp->scale.x = srp->scale.y = srp->scale.z = 1.0f;
    srp->pos.x = srp->pos.y = srp->pos.z = 0.0f;
    srp->rot.x = srp->rot.y = srp->rot.z = 0;
}

/**
 * Set ScaleRotPos
 */
void ScaleRotPos_SetValue(ScaleRotPos* srp, Vec3f* scale, Vec3s* rot, Vec3f* pos) {
    srp->scale = *scale;
    srp->rot = *rot;
    srp->pos = *pos;
}

/**
 * ScaleRotPos equality test
 */
s32 ScaleRotPos_Equals(ScaleRotPos* a, ScaleRotPos* b) {
    if (a->scale.x != b->scale.x || a->scale.y != b->scale.y || a->scale.z != b->scale.z || a->rot.x != b->rot.x ||
        a->rot.y != b->rot.y || a->rot.z != b->rot.z || a->pos.x != b->pos.x || a->pos.y != b->pos.y ||
        a->pos.z != b->pos.z) {
        return false;
    }
    return true;
}

/**
 * Reset DynaLookup lists
 */
void DynaLookup_ResetLists(DynaLookup* dynaLookup) {
    SSList_SetNull(&dynaLookup->ceiling);
    SSList_SetNull(&dynaLookup->wall);
    SSList_SetNull(&dynaLookup->floor);
}

/**
 * Reset DynaLookup
 */
void DynaLookup_Reset(DynaLookup* dynaLookup) {
    dynaLookup->polyStartIndex = 0;
    DynaLookup_ResetLists(dynaLookup);
}

/**
 * Reset vtxStartIndex
 */
void DynaLookup_ResetVtxStartIndex(u16* vtxStartIndex) {
    *vtxStartIndex = 0;
}

/**
 * Initialize BgActor
 */
void BgActor_Initialize(PlayState* play, BgActor* bgActor) {
    bgActor->actor = NULL;
    bgActor->colHeader = NULL;
    ScaleRotPos_Initialize(&bgActor->prevTransform);
    ScaleRotPos_Initialize(&bgActor->curTransform);
    DynaLookup_Reset(&bgActor->dynaLookup);
    DynaLookup_ResetVtxStartIndex(&bgActor->vtxStartIndex);
    bgActor->boundingSphere.center.x = bgActor->boundingSphere.center.y = bgActor->boundingSphere.center.z = 0;
    bgActor->boundingSphere.radius = 0;
}

/**
 * setActor internal
 */
void BgActor_SetActor(BgActor* bgActor, Actor* actor, CollisionHeader* colHeader) {
    bgActor->actor = actor;
    bgActor->colHeader = colHeader;
    bgActor->prevTransform.scale = actor->scale;
    bgActor->prevTransform.rot = actor->shape.rot;
    bgActor->prevTransform.rot.x--;
    bgActor->prevTransform.pos = actor->world.pos;
    bgActor->curTransform.scale = actor->scale;
    bgActor->curTransform.rot = actor->shape.rot;
    bgActor->curTransform.pos = actor->world.pos;
}

/**
 * Test if the BgActor transform is the same
 */
s32 BgActor_IsTransformUnchanged(BgActor* bgActor) {
    return ScaleRotPos_Equals(&bgActor->prevTransform, &bgActor->curTransform);
}

/**
 * NULL polyList
 */
void DynaPoly_NullPolyList(CollisionPoly** polyList) {
    *polyList = NULL;
}

/**
 * Allocate dyna.polyList
 */
void DynaPoly_AllocPolyList(PlayState* play, CollisionPoly** polyList, s32 numPolys) {
    *polyList = THA_AllocTailAlign(&play->state.tha, numPolys * sizeof(CollisionPoly), ALIGNOF_MASK(CollisionPoly));
    ASSERT(*polyList != NULL, "ptbl->pbuf != NULL", "../z_bgcheck.c", 6247);
}

/**
 * NULL vtxList
 */
void DynaPoly_NullVtxList(Vec3s** vtxList) {
    *vtxList = NULL;
}

/**
 * Allocate dyna.vtxList
 */
void DynaPoly_AllocVtxList(PlayState* play, Vec3s** vtxList, s32 numVtx) {
    *vtxList = THA_AllocTailAlign(&play->state.tha, numVtx * sizeof(Vec3s), ALIGNOF_MASK(Vec3s));
    ASSERT(*vtxList != NULL, "ptbl->pbuf != NULL", "../z_bgcheck.c", 6277);
}

/**
 * Update BgActor's prevTransform
 */
void DynaPoly_SetBgActorPrevTransform(PlayState* play, BgActor* bgActor) {
    bgActor->prevTransform = bgActor->curTransform;
}

/**
 * Is BgActor Id
 */
s32 DynaPoly_IsBgIdBgActor(s32 bgId) {
    if (bgId < 0 || bgId >= BG_ACTOR_MAX) {
        return false;
    }
    return true;
}

/**
 * Init DynaCollisionContext
 */
void DynaPoly_Init(PlayState* play, DynaCollisionContext* dyna) {
    dyna->bitFlag = DYNAPOLY_INVALIDATE_LOOKUP;
    DynaPoly_NullPolyList(&dyna->polyList);
    DynaPoly_NullVtxList(&dyna->vtxList);
    DynaSSNodeList_Initialize(play, &dyna->polyNodes);
}

/**
 * Set DynaCollisionContext
 */
void DynaPoly_Alloc(PlayState* play, DynaCollisionContext* dyna) {
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        BgActor_Initialize(play, &dyna->bgActors[i]);
        dyna->bgActorFlags[i] = 0;
    }
    DynaPoly_NullPolyList(&dyna->polyList);
    DynaPoly_AllocPolyList(play, &dyna->polyList, dyna->polyListMax);

    DynaPoly_NullVtxList(&dyna->vtxList);
    DynaPoly_AllocVtxList(play, &dyna->vtxList, dyna->vtxListMax);

    DynaSSNodeList_Initialize(play, &dyna->polyNodes);
    DynaSSNodeList_Alloc(play, &dyna->polyNodes, dyna->polyNodesMax);
}

/**
 * Set BgActor
 * original name: DynaPolyInfo_setActor
 */
s32 DynaPoly_SetBgActor(PlayState* play, DynaCollisionContext* dyna, Actor* actor, CollisionHeader* colHeader) {
    s32 bgId;
    s32 foundSlot = false;

    for (bgId = 0; bgId < BG_ACTOR_MAX; bgId++) {
        if (!(dyna->bgActorFlags[bgId] & BGACTOR_IN_USE)) {
            dyna->bgActorFlags[bgId] |= BGACTOR_IN_USE;
            foundSlot = true;
            break;
        }
    }

    if (!foundSlot) {
        PRINTF(VT_FGCOL(RED));
        PRINTF(T("DynaPolyInfo_setActor():ダイナミックポリゴン 空きインデックスはありません\n",
                 "DynaPolyInfo_setActor(): Dynamic polygon no free indexes\n"));
        PRINTF(VT_RST);
        return BG_ACTOR_MAX;
    }

    BgActor_SetActor(&dyna->bgActors[bgId], actor, colHeader);
    dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;

    dyna->bgActorFlags[bgId] &= ~BGACTOR_1;
    PRINTF(VT_FGCOL(GREEN));
    PRINTF("DynaPolyInfo_setActor():index %d\n", bgId);
    PRINTF(VT_RST);
    return bgId;
}

/**
 * Gets the actor assigned to `bgId`
 * possible orginal name: DynaPolyInfo_getActor
 */
DynaPolyActor* DynaPoly_GetActor(CollisionContext* colCtx, s32 bgId) {
    if (!DynaPoly_IsBgIdBgActor(bgId) || !(colCtx->dyna.bgActorFlags[bgId] & BGACTOR_IN_USE) ||
        colCtx->dyna.bgActorFlags[bgId] & BGACTOR_1) {
        return NULL;
    }
    return (DynaPolyActor*)colCtx->dyna.bgActors[bgId].actor;
}

void DynaPoly_DisableCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId) {
    if (DynaPoly_IsBgIdBgActor(bgId)) {
        dyna->bgActorFlags[bgId] |= BGACTOR_COLLISION_DISABLED;
        dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
    }
}

void DynaPoly_EnableCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId) {
    if (DynaPoly_IsBgIdBgActor(bgId)) {
        dyna->bgActorFlags[bgId] &= ~BGACTOR_COLLISION_DISABLED;
        dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
    }
}

void DynaPoly_DisableCeilingCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId) {
    if (DynaPoly_IsBgIdBgActor(bgId)) {
        dyna->bgActorFlags[bgId] |= BGACTOR_CEILING_COLLISION_DISABLED;
        dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
    }
}

void DynaPoly_EnableCeilingCollision(PlayState* play, DynaCollisionContext* dyna, s32 bgId) {
    if (DynaPoly_IsBgIdBgActor(bgId)) {
        dyna->bgActorFlags[bgId] &= ~BGACTOR_CEILING_COLLISION_DISABLED;
        dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
    }
}

/**
 * original name: DynaPolyInfo_delReserve
 */
void DynaPoly_DeleteBgActor(PlayState* play, DynaCollisionContext* dyna, s32 bgId) {
    DynaPolyActor* actor;

    PRINTF(VT_FGCOL(GREEN));
    PRINTF("DynaPolyInfo_delReserve():index %d\n", bgId);
    PRINTF(VT_RST);
    if (!DynaPoly_IsBgIdBgActor(bgId)) {

#if DEBUG_FEATURES
        if (bgId == -1) {
            PRINTF(VT_FGCOL(GREEN));
            PRINTF(T("DynaPolyInfo_delReserve():削除されているはずの(?)\n"
                     "インデックス(== -1)のため,処理を中止します。\n",
                     "DynaPolyInfo_delReserve():The index that should have been deleted(?)\n"
                     " was(== -1), processing aborted.\n"));
            PRINTF(VT_RST);
        } else {
            PRINTF(VT_FGCOL(RED));
            PRINTF(T("DynaPolyInfo_delReserve():"
                     "確保していない／出来なかったインデックスの解放のため、処理を中止します。index == %d\n",
                     "DynaPolyInfo_delReserve():"
                     " Unable to deallocate index / index unallocated, processing aborted. index == %d\n"),
                   bgId);
            PRINTF(VT_RST);
        }
#endif

    } else {
        actor = DynaPoly_GetActor(&play->colCtx, bgId);
        if (actor != NULL) {

            actor->bgId = BGACTOR_NEG_ONE;
            dyna->bgActors[bgId].actor = NULL;
            dyna->bgActorFlags[bgId] |= BGACTOR_1;
        }
    }
}

void DynaPoly_InvalidateLookup(PlayState* play, DynaCollisionContext* dyna) {
    dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
}

/**
 * original name: DynaPolyInfo_expandSRT
 */
void DynaPoly_AddBgActorToLookup(PlayState* play, DynaCollisionContext* dyna, s32 bgId, s32* vtxStartIndex,
                                 s32* polyStartIndex) {
    MtxF mtx;
    Actor* actor;
    s32 pad;
    f32 radiusSq;
    f32 numVtxInverse;
    s32 i;
    Vec3f pos;
    Sphere16* sphere;
    Vec3s* dVtxList;
    Vec3s* point;
    Vec3f newCenterPoint;
    f32 newRadiusSq;
    CollisionHeader* pbgdata;
    Vec3f newVtx;
    Vec3f vtxA;
    Vec3f vtxB;
    Vec3f vtxC;
    Vec3f newNormal;

    pbgdata = dyna->bgActors[bgId].colHeader;
    sphere = &dyna->bgActors[bgId].boundingSphere;
    actor = dyna->bgActors[bgId].actor;
    dyna->bgActors[bgId].dynaLookup.polyStartIndex = *polyStartIndex;
    dyna->bgActors[bgId].vtxStartIndex = *vtxStartIndex;
    pos = actor->world.pos;
    pos.y += actor->shape.yOffset * actor->scale.y;

    ScaleRotPos_SetValue(&dyna->bgActors[bgId].curTransform, &actor->scale, &actor->shape.rot, &pos);

    if (dyna->bgActorFlags[bgId] & BGACTOR_COLLISION_DISABLED) {
        return;
    }

#if DEBUG_FEATURES
    if (!(dyna->polyListMax >= *polyStartIndex + pbgdata->numPolygons)) {
        PRINTF(VT_FGCOL(RED));
        PRINTF(T("DynaPolyInfo_expandSRT():polygon over %dが%dを越えるとダメ\n",
                 "DynaPolyInfo_expandSRT():polygon over do not use if %d exceeds %d\n"),
               *polyStartIndex + pbgdata->numPolygons, dyna->polyListMax);
    }

    if (!(dyna->vtxListMax >= *vtxStartIndex + pbgdata->numVertices)) {
        PRINTF(VT_FGCOL(RED));
        PRINTF(T("DynaPolyInfo_expandSRT():vertex over %dが%dを越えるとダメ\n",
                 "DynaPolyInfo_expandSRT():vertex over do not use if %d exceeds %d\n"),
               *vtxStartIndex + pbgdata->numVertices, dyna->vtxListMax);
    }

    ASSERT(dyna->polyListMax >= *polyStartIndex + pbgdata->numPolygons,
           "pdyna_poly_info->poly_num >= *pstart_poly_index + pbgdata->poly_num", "../z_bgcheck.c", 6687);
    ASSERT(dyna->vtxListMax >= *vtxStartIndex + pbgdata->numVertices,
           "pdyna_poly_info->vert_num >= *pstart_vert_index + pbgdata->vtx_num", "../z_bgcheck.c", 6688);
#endif

    if (!(dyna->bitFlag & DYNAPOLY_INVALIDATE_LOOKUP) &&
        (BgActor_IsTransformUnchanged(&dyna->bgActors[bgId]) == true)) {
        s32 pi;

        for (pi = *polyStartIndex; pi < *polyStartIndex + pbgdata->numPolygons; pi++) {
            CollisionPoly* poly = &dyna->polyList[pi];
            s16 normalY = poly->normal.y;

            if (normalY > COLPOLY_SNORMAL(0.5f)) {
                s16 polyIndex = pi;

                DynaSSNodeList_SetSSListHead(&dyna->polyNodes, &dyna->bgActors[bgId].dynaLookup.floor, &polyIndex);
            } else if (normalY < COLPOLY_SNORMAL(-0.8f)) {
                if (!(dyna->bgActorFlags[bgId] & BGACTOR_CEILING_COLLISION_DISABLED)) {
                    s16 polyIndex = pi;

                    DynaSSNodeList_SetSSListHead(&dyna->polyNodes, &dyna->bgActors[bgId].dynaLookup.ceiling,
                                                 &polyIndex);
                }
            } else {
                s16 polyIndex = pi;

                DynaSSNodeList_SetSSListHead(&dyna->polyNodes, &dyna->bgActors[bgId].dynaLookup.wall, &polyIndex);
            }
        }

        *polyStartIndex += pbgdata->numPolygons;
        *vtxStartIndex += pbgdata->numVertices;
        return;
    }

    SkinMatrix_SetTranslateRotateYXZScale(
        &mtx, dyna->bgActors[bgId].curTransform.scale.x, dyna->bgActors[bgId].curTransform.scale.y,
        dyna->bgActors[bgId].curTransform.scale.z, dyna->bgActors[bgId].curTransform.rot.x,
        dyna->bgActors[bgId].curTransform.rot.y, dyna->bgActors[bgId].curTransform.rot.z,
        dyna->bgActors[bgId].curTransform.pos.x, dyna->bgActors[bgId].curTransform.pos.y,
        dyna->bgActors[bgId].curTransform.pos.z);

    numVtxInverse = 1.0f / pbgdata->numVertices;
    newCenterPoint.x = newCenterPoint.y = newCenterPoint.z = 0.0f;
    for (i = 0; i < pbgdata->numVertices; i++) {
        Vec3f vtx;
        Vec3f vtxT; // Vtx after mtx transform
        s32 pad2;

        Math_Vec3s_ToVec3f(&vtx, &pbgdata->vtxList[i]);
        SkinMatrix_Vec3fMtxFMultXYZ(&mtx, &vtx, &vtxT);
        BgCheck_Vec3fToVec3s(&dyna->vtxList[*vtxStartIndex + i], &vtxT);

        if (i == 0) {
            dyna->bgActors[bgId].minY = dyna->bgActors[bgId].maxY = vtxT.y;
        } else if (vtxT.y < dyna->bgActors[bgId].minY) {
            dyna->bgActors[bgId].minY = vtxT.y;
        } else if (dyna->bgActors[bgId].maxY < vtxT.y) {
            dyna->bgActors[bgId].maxY = vtxT.y;
        }
        newCenterPoint.x += vtxT.x;
        newCenterPoint.y += vtxT.y;
        newCenterPoint.z += vtxT.z;
    }

    newCenterPoint.x *= numVtxInverse;
    newCenterPoint.y *= numVtxInverse;
    newCenterPoint.z *= numVtxInverse;
    sphere->center.x = newCenterPoint.x;
    sphere->center.y = newCenterPoint.y;
    sphere->center.z = newCenterPoint.z;
    newRadiusSq = -SQ(10.0f);

    for (i = 0; i < pbgdata->numVertices; i++) {
        newVtx.x = dyna->vtxList[*vtxStartIndex + i].x;
        newVtx.y = dyna->vtxList[*vtxStartIndex + i].y;
        newVtx.z = dyna->vtxList[*vtxStartIndex + i].z;
        radiusSq = Math3D_Vec3fDistSq(&newVtx, &newCenterPoint);
        if (newRadiusSq < radiusSq) {
            newRadiusSq = radiusSq;
        }
    }

    sphere->radius = sqrtf(newRadiusSq) * 1.1f;

    for (i = 0; i < pbgdata->numPolygons; i++) {
        CollisionPoly* newPoly = &dyna->polyList[*polyStartIndex + i];
        f32 newNormMagnitude;

        *newPoly = pbgdata->polyList[i];

        // Yeah, this is all kinds of fake, but my God, it matches.
        newPoly->flags_vIA =
            (COLPOLY_VTX_INDEX(newPoly->flags_vIA) + *vtxStartIndex) | COLPOLY_VTX_FLAGS_MASKED((*newPoly).flags_vIA);
        newPoly->flags_vIB =
            (COLPOLY_VTX_INDEX(newPoly->flags_vIB) + *vtxStartIndex) | COLPOLY_VTX_FLAGS_MASKED((*newPoly).flags_vIB);
        newPoly->vIC = *vtxStartIndex + newPoly->vIC;
        dVtxList = dyna->vtxList;
        vtxA.x = dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIA)].x;
        vtxA.y = dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIA)].y;
        vtxA.z = dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIA)].z;
        vtxB.x = dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIB)].x;
        vtxB.y = dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIB)].y;
        vtxB.z = dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIB)].z;
        vtxC.x = dVtxList[newPoly->vIC].x;
        vtxC.y = dVtxList[newPoly->vIC].y;
        vtxC.z = dVtxList[newPoly->vIC].z;
        Math3D_SurfaceNorm(&vtxA, &vtxB, &vtxC, &newNormal);
        newNormMagnitude = Math3D_Vec3fMagnitude(&newNormal);

        if (!IS_ZERO(newNormMagnitude)) {
            newNormal.x *= (1.0f / newNormMagnitude);
            newNormal.y *= (1.0f / newNormMagnitude);
            newNormal.z *= (1.0f / newNormMagnitude);
            newPoly->normal.x = COLPOLY_SNORMAL(newNormal.x);
            newPoly->normal.y = COLPOLY_SNORMAL(newNormal.y);
            newPoly->normal.z = COLPOLY_SNORMAL(newNormal.z);
        }

        newPoly->dist = -DOTXYZ(newNormal, dVtxList[(u32)COLPOLY_VTX_INDEX(newPoly->flags_vIA)]);
        if (newNormal.y > 0.5f) {
            s16 polyId = *polyStartIndex + i;

            DynaSSNodeList_SetSSListHead(&dyna->polyNodes, &dyna->bgActors[bgId].dynaLookup.floor, &polyId);
        } else if (newNormal.y < -0.8f) {
            s16 polyId = *polyStartIndex + i;

            DynaSSNodeList_SetSSListHead(&dyna->polyNodes, &dyna->bgActors[bgId].dynaLookup.ceiling, &polyId);
        } else {
            s16 polyId = *polyStartIndex + i;

            DynaSSNodeList_SetSSListHead(&dyna->polyNodes, &dyna->bgActors[bgId].dynaLookup.wall, &polyId);
        }
    }

    *polyStartIndex += pbgdata->numPolygons;
    *vtxStartIndex += pbgdata->numVertices;
}

void DynaPoly_UnsetAllInteractFlags(PlayState* play, DynaCollisionContext* dyna, Actor* actor) {
    DynaPolyActor* dynaActor;
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->bgActorFlags[i] & BGACTOR_IN_USE) {
            dynaActor = DynaPoly_GetActor(&play->colCtx, i);
            if (dynaActor != NULL && &dynaActor->actor == actor) {
                DynaPolyActor_UnsetAllInteractFlags((DynaPolyActor*)actor);
                break;
            }
        }
    }
}

/**
 * Original name: "DynaPolyInfo_setup"
 */
void DynaPoly_UpdateContext(PlayState* play, DynaCollisionContext* dyna) {
    DynaPolyActor* actor;
    s32 vtxStartIndex;
    s32 polyStartIndex;
    s32 i;

    DynaSSNodeList_ResetCount(&dyna->polyNodes);

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        DynaLookup_ResetLists(&dyna->bgActors[i].dynaLookup);
    }

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->bgActorFlags[i] & BGACTOR_1) {
            // Initialize BgActor
            PRINTF(VT_FGCOL(GREEN));
            PRINTF(T("DynaPolyInfo_setup():削除 index=%d\n", "DynaPolyInfo_setup(): Delete index=%d\n"), i);
            PRINTF(VT_RST);

            dyna->bgActorFlags[i] = 0;
            BgActor_Initialize(play, &dyna->bgActors[i]);
            dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
        }
        if (dyna->bgActors[i].actor != NULL && dyna->bgActors[i].actor->update == NULL) {
            // Delete BgActor
            PRINTF(VT_FGCOL(GREEN));
            PRINTF(T("DynaPolyInfo_setup():削除 index=%d\n", "DynaPolyInfo_setup(): Delete index=%d\n"), i);
            PRINTF(VT_RST);
            actor = DynaPoly_GetActor(&play->colCtx, i);
            if (actor == NULL) {
                return;
            }
            actor->bgId = BGACTOR_NEG_ONE;
            dyna->bgActorFlags[i] = 0;

            BgActor_Initialize(play, &dyna->bgActors[i]);
            dyna->bitFlag |= DYNAPOLY_INVALIDATE_LOOKUP;
        }
    }
    vtxStartIndex = 0;
    polyStartIndex = 0;
    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->bgActorFlags[i] & BGACTOR_IN_USE) {
            DynaPoly_AddBgActorToLookup(play, dyna, i, &vtxStartIndex, &polyStartIndex);
        }
    }
    dyna->bitFlag &= ~DYNAPOLY_INVALIDATE_LOOKUP;
}

/**
 * Update all BgActor's previous ScaleRotPos
 */
void DynaPoly_UpdateBgActorTransforms(PlayState* play, DynaCollisionContext* dyna) {
    s32 i;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (dyna->bgActorFlags[i] & BGACTOR_IN_USE) {
            DynaPoly_SetBgActorPrevTransform(play, &dyna->bgActors[i]);
        }
    }
}

#define DYNA_RAYCAST_FLOORS 1
#define DYNA_RAYCAST_WALLS 2
#define DYNA_RAYCAST_CEILINGS 4

/**
 * Performs a downward raycast check on a list of floor, wall, or ceiling dyna polys
 * `listType` specifies the poly list type (e.g. DYNA_RAYCAST_FLOORS)
 */
f32 BgCheck_RaycastDownDynaList(DynaRaycastDown* dynaRaycastDown, u32 listType) {
    CollisionPoly* polyList;
    SSNode* curNode;
    f32 result;
    f32 yIntersect;
    s16 id;

    result = dynaRaycastDown->yIntersect;
    if (dynaRaycastDown->ssList->head == SS_NULL) {
        return result;
    }
    polyList = dynaRaycastDown->dyna->polyList;
    curNode = &dynaRaycastDown->dyna->polyNodes.tbl[dynaRaycastDown->ssList->head];

    while (true) {
        id = curNode->polyId;
        if (COLPOLY_VTX_CHECK_FLAGS_ANY(polyList[id].flags_vIA, dynaRaycastDown->xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dynaRaycastDown->dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if ((listType & (DYNA_RAYCAST_WALLS | DYNA_RAYCAST_CEILINGS)) &&
            (dynaRaycastDown->downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_GROUND_ONLY) &&
            COLPOLY_GET_NORMAL(polyList[id].normal.y) < 0.0f) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dynaRaycastDown->dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if (CollisionPoly_CheckYIntersectApprox1(&polyList[id], dynaRaycastDown->dyna->vtxList, dynaRaycastDown->pos->x,
                                                 dynaRaycastDown->pos->z, &yIntersect,
                                                 dynaRaycastDown->chkDist) == true &&
            yIntersect < dynaRaycastDown->pos->y && result < yIntersect) {
            result = yIntersect;
            *dynaRaycastDown->resultPoly = &dynaRaycastDown->dyna->polyList[id];
        }
        if (curNode->next == SS_NULL) {
            break;
        } else {
            curNode = &dynaRaycastDown->dyna->polyNodes.tbl[curNode->next];
            continue;
        }
    }
    return result;
}

/**
 * Performs a downward raycast check on dyna polys
 * returns the yIntersect of the poly found, or BGCHECK_Y_MIN if no poly is found
 */
f32 BgCheck_RaycastDownDyna(DynaRaycastDown* dynaRaycastDown) {
    s32 i;
    f32 result;
    f32 intersect2;
    s32 i2;
    s32 isPaused;
    DynaPolyActor* dynaActor;
    CollisionPoly* poly;
    Vec3f polyVtx[3];
    Vec3f polyNorm;
    u32 polyIndex;
    CollisionPoly* polyMin;
    MtxF srpMtx;
    f32 magnitude;
    Vec3s* vtxList;
    f32 polyDist;
    Vec3f vtx;
    f32 intersect;
    ScaleRotPos* curTransform;

    result = BGCHECK_Y_MIN;
    *dynaRaycastDown->bgId = BGCHECK_SCENE;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (!(dynaRaycastDown->colCtx->dyna.bgActorFlags[i] & BGACTOR_IN_USE)) {
            continue;
        }

        if (dynaRaycastDown->actor == dynaRaycastDown->colCtx->dyna.bgActors[i].actor ||
            dynaRaycastDown->pos->y < dynaRaycastDown->colCtx->dyna.bgActors[i].minY ||
            !Math3D_XZInSphere(&dynaRaycastDown->colCtx->dyna.bgActors[i].boundingSphere, dynaRaycastDown->pos->x,
                               dynaRaycastDown->pos->z)) {
            continue;
        }

        dynaRaycastDown->dyna = &dynaRaycastDown->colCtx->dyna;
        if (dynaRaycastDown->downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_FLOORS) {
            dynaRaycastDown->ssList = &dynaRaycastDown->colCtx->dyna.bgActors[i].dynaLookup.floor;
            intersect2 = BgCheck_RaycastDownDynaList(dynaRaycastDown, DYNA_RAYCAST_FLOORS);

            if (dynaRaycastDown->yIntersect < intersect2) {
                dynaRaycastDown->yIntersect = intersect2;
                *dynaRaycastDown->bgId = i;
                result = intersect2;
            }
        }
        if ((dynaRaycastDown->downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_WALLS) ||
            (*dynaRaycastDown->resultPoly == NULL &&
             (dynaRaycastDown->downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_WALLS_SIMPLE))) {
            dynaRaycastDown->ssList = &dynaRaycastDown->colCtx->dyna.bgActors[i].dynaLookup.wall;
            intersect2 = BgCheck_RaycastDownDynaList(dynaRaycastDown, DYNA_RAYCAST_WALLS);

            if (dynaRaycastDown->yIntersect < intersect2) {
                dynaRaycastDown->yIntersect = intersect2;
                *dynaRaycastDown->bgId = i;
                result = intersect2;
            }
        }

        if (dynaRaycastDown->downChkFlags & BGCHECK_RAYCAST_DOWN_CHECK_CEILINGS) {
            dynaRaycastDown->ssList = &dynaRaycastDown->colCtx->dyna.bgActors[i].dynaLookup.ceiling;
            intersect2 = BgCheck_RaycastDownDynaList(dynaRaycastDown, DYNA_RAYCAST_CEILINGS);

            if (dynaRaycastDown->yIntersect < intersect2) {
                dynaRaycastDown->yIntersect = intersect2;
                *dynaRaycastDown->bgId = i;
                result = intersect2;
            }
        }
    }

    dynaActor = DynaPoly_GetActor(dynaRaycastDown->colCtx, *dynaRaycastDown->bgId);
    if ((result != BGCHECK_Y_MIN) && (dynaActor != NULL) && (dynaRaycastDown->play != NULL)) {
        isPaused = IS_PAUSED(&dynaRaycastDown->play->pauseCtx);
        if (!isPaused && (dynaRaycastDown->colCtx->dyna.bgActorFlags[*dynaRaycastDown->bgId] & BGACTOR_1)) {
            curTransform = &dynaRaycastDown->dyna->bgActors[*dynaRaycastDown->bgId].curTransform;
            polyMin =
                &dynaRaycastDown->dyna
                     ->polyList[dynaRaycastDown->dyna->bgActors[*dynaRaycastDown->bgId].dynaLookup.polyStartIndex];
            polyIndex = *dynaRaycastDown->resultPoly - polyMin;
            poly = &dynaRaycastDown->dyna->bgActors[*dynaRaycastDown->bgId].colHeader->polyList[polyIndex];

            SkinMatrix_SetTranslateRotateYXZScale(&srpMtx, curTransform->scale.x, curTransform->scale.y,
                                                  curTransform->scale.z, curTransform->rot.x, curTransform->rot.y,
                                                  curTransform->rot.z, curTransform->pos.x, curTransform->pos.y,
                                                  curTransform->pos.z);

            vtxList = dynaRaycastDown->dyna->bgActors[*dynaRaycastDown->bgId].colHeader->vtxList;

            for (i2 = 0; i2 < 3; i2++) {
                s32 pad;

                Math_Vec3s_ToVec3f(&vtx, &vtxList[COLPOLY_VTX_INDEX(poly->vtxData[i2])]);
                SkinMatrix_Vec3fMtxFMultXYZ(&srpMtx, &vtx, &polyVtx[i2]);
            }

            Math3D_SurfaceNorm(&polyVtx[0], &polyVtx[1], &polyVtx[2], &polyNorm);
            magnitude = Math3D_Vec3fMagnitude(&polyNorm);

            if (!IS_ZERO(magnitude)) {
                polyNorm.x *= 1.0f / magnitude;
                polyNorm.y *= 1.0f / magnitude;
                polyNorm.z *= 1.0f / magnitude;
                polyDist = -DOTXYZ(polyNorm, polyVtx[0]);
                if (Math3D_TriChkPointParaYIntersectInsideTri(
                        &polyVtx[0], &polyVtx[1], &polyVtx[2], polyNorm.x, polyNorm.y, polyNorm.z, polyDist,
                        dynaRaycastDown->pos->z, dynaRaycastDown->pos->x, &intersect, dynaRaycastDown->chkDist)) {
                    if (fabsf(intersect - result) < 1.0f) {

                        result = intersect;
                    }
                }
            }
        }
    }
    return result;
}

/**
 * Performs collision detection on a BgActor's wall polys on sphere `pos`, `radius`
 * returns true if a collision was detected
 * `outX` `outZ` return the displaced x,z coordinates
 * `outPoly` returns the pointer to the nearest poly collided with, or NULL
 * `outBgId` returns `bgId` if the poly SurfaceType's wall damage flag is not set, else ?
 */
s32 BgCheck_SphVsDynaWallInBgActor(CollisionContext* colCtx, u16 xpFlags, DynaCollisionContext* dyna, SSList* ssList,
                                   f32* outX, f32* outZ, CollisionPoly** outPoly, s32* outBgId, Vec3f* pos, f32 radius,
                                   s32 bgId) {
    f32 temp;
    f32 intersect;
    s32 result = false;
    CollisionPoly* poly;
    SSNode* curNode;
    f32 nx;
    f32 ny;
    f32 nz;
    Vec3f resultPos;
    s16 polyId;
    f32 zTemp;
    f32 xTemp;
    f32 normalXZ;
    f32 invNormalXZ;
    f32 planeDist;
    f32 temp_f18;
    f32 zMin;
    f32 zMax;
    f32 xMin;
    f32 xMax;

    if (ssList->head == SS_NULL) {
        return result;
    }

    resultPos = *pos;
    curNode = &dyna->polyNodes.tbl[ssList->head];

    while (true) {
        polyId = curNode->polyId;
        poly = &dyna->polyList[polyId];
        CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
        normalXZ = sqrtf(SQ(nx) + SQ(nz));
        ASSERT(!IS_ZERO(normalXZ), "!IS_ZERO(ac_size)", "../z_bgcheck.c", 7382);

        planeDist = Math3D_DistPlaneToPos(nx, ny, nz, poly->dist, &resultPos);
        if (radius < fabsf(planeDist) || COLPOLY_VTX_CHECK_FLAGS_ANY(poly->flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        invNormalXZ = 1.0f / normalXZ;
        temp_f18 = fabsf(nz) * invNormalXZ;
        if (temp_f18 < 0.4f) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        // compute poly zMin/zMax
        zTemp = dyna->vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)].z;
        zMax = zMin = zTemp;

        zTemp = dyna->vtxList[COLPOLY_VTX_INDEX(poly->flags_vIB)].z;
        if (zTemp < zMin) {
            zMin = zTemp;
        } else if (zTemp > zMax) {
            zMax = zTemp;
        }

        zTemp = dyna->vtxList[poly->vIC].z;
        if (zTemp < zMin) {
            zMin = zTemp;
        } else if (zMax < zTemp) {
            zMax = zTemp;
        }

        zMin -= radius;
        zMax += radius;
        if (resultPos.z < zMin || zMax < resultPos.z) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if (CollisionPoly_CheckZIntersectApprox(poly, dyna->vtxList, resultPos.x, pos->y, &intersect)) {
            f32 zIntersectDist = intersect - resultPos.z;

            if (fabsf(zIntersectDist) <= radius / temp_f18) {
                if (zIntersectDist * nz <= 4.0f) {
                    if (BgCheck_ComputeWallDisplacement(colCtx, poly, &resultPos.x, &resultPos.z, nx, ny, nz,
                                                        invNormalXZ, planeDist, radius, outPoly)) {
                        *outBgId = bgId;
                    }
                    result = true;
                }
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        }
        curNode = &dyna->polyNodes.tbl[curNode->next];
    }

    curNode = &dyna->polyNodes.tbl[ssList->head];
    while (true) {
        polyId = curNode->polyId;
        poly = &dyna->polyList[polyId];
        CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
        normalXZ = sqrtf(SQ(nx) + SQ(nz));
        ASSERT(!IS_ZERO(normalXZ), "!IS_ZERO(ac_size)", "../z_bgcheck.c", 7489);

        planeDist = Math3D_DistPlaneToPos(nx, ny, nz, poly->dist, &resultPos);
        if (radius < fabsf(planeDist) || COLPOLY_VTX_CHECK_FLAGS_ANY(poly->flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        invNormalXZ = 1.0f / normalXZ;
        temp_f18 = fabsf(nx) * invNormalXZ;
        if (temp_f18 < 0.4f) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        // compute poly xMin/xMax
        xTemp = dyna->vtxList[COLPOLY_VTX_INDEX(poly->flags_vIA)].x;
        xMax = xMin = xTemp;
        xTemp = dyna->vtxList[COLPOLY_VTX_INDEX(poly->flags_vIB)].x;

        if (xTemp < xMin) {
            xMin = xTemp;
        } else if (xMax < xTemp) {
            xMax = xTemp;
        }
        xTemp = dyna->vtxList[poly->vIC].x;
        if (xTemp < xMin) {
            xMin = xTemp;
        } else if (xMax < xTemp) {
            xMax = xTemp;
        }

        xMin -= radius;
        xMax += radius;
        if (resultPos.x < xMin || xMax < resultPos.x) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }

        if (CollisionPoly_CheckXIntersectApprox(poly, dyna->vtxList, pos->y, resultPos.z, &intersect)) {
            f32 xIntersectDist = intersect - resultPos.x;

            if (fabsf(xIntersectDist) <= radius / temp_f18) {
                if (xIntersectDist * nx <= 4.0f) {
                    if (BgCheck_ComputeWallDisplacement(colCtx, poly, &resultPos.x, &resultPos.z, nx, ny, nz,
                                                        invNormalXZ, planeDist, radius, outPoly)) {
                        *outBgId = bgId;
                    }
                    result = true;
                }
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        }
        curNode = &dyna->polyNodes.tbl[curNode->next];
    }
    *outX = resultPos.x;
    *outZ = resultPos.z;
    return result;
}

/**
 * Performs collision detection on all dyna poly walls using sphere `pos`, `radius`
 * returns true if a collision was detected
 * `outX` `outZ` return the displaced x,z coordinates
 * `outPoly` returns the pointer to the nearest poly collided with, or NULL
 * `outBgId` returns the index of the BgActor that owns `outPoly`
 * If `actor` is not NULL, an BgActor bound to that actor will be ignored
 */
s32 BgCheck_SphVsDynaWall(CollisionContext* colCtx, u16 xpFlags, f32* outX, f32* outZ, Vec3f* pos, f32 radius,
                          CollisionPoly** outPoly, s32* outBgId, Actor* actor) {
    Vec3f resultPos;
    s32 result;
    f32 r;
    f32 dz;
    f32 dx;
    BgActor* bgActor;
    s32 i;

    result = false;
    resultPos = *pos;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (!(colCtx->dyna.bgActorFlags[i] & BGACTOR_IN_USE)) {
            continue;
        }
        if ((colCtx->dyna.bgActors + i)->actor == actor) {
            continue;
        }
        bgActor = &colCtx->dyna.bgActors[i];

        if (bgActor->minY > resultPos.y || bgActor->maxY < resultPos.y) {
            continue;
        }

        bgActor->boundingSphere.radius += (s16)radius;

        r = bgActor->boundingSphere.radius;
        dx = bgActor->boundingSphere.center.x - resultPos.x;
        dz = bgActor->boundingSphere.center.z - resultPos.z;
        if (SQ(r) < (SQ(dx) + SQ(dz)) || (!Math3D_XYInSphere(&bgActor->boundingSphere, resultPos.x, resultPos.y) &&
                                          !Math3D_YZInSphere(&bgActor->boundingSphere, resultPos.y, resultPos.z))) {
            bgActor->boundingSphere.radius -= (s16)radius;
            continue;
        }
        bgActor->boundingSphere.radius -= (s16)radius;
        if (BgCheck_SphVsDynaWallInBgActor(colCtx, xpFlags, &colCtx->dyna,
                                           &(colCtx->dyna.bgActors + i)->dynaLookup.wall, outX, outZ, outPoly, outBgId,
                                           &resultPos, radius, i)) {
            resultPos.x = *outX;
            resultPos.z = *outZ;
            result = true;
        }
    }
    return result;
}

/**
 * Tests for collision with a dyna poly ceiling, starting at `ssList`
 * returns true if a collision occurs, else false
 * `outPoly` returns the poly collided with
 * `outY` returns the y coordinate needed to not collide with `outPoly`
 */
s32 BgCheck_CheckDynaCeilingList(CollisionContext* colCtx, u16 xpFlags, DynaCollisionContext* dyna, SSList* ssList,
                                 f32* outY, Vec3f* pos, f32 checkHeight, CollisionPoly** outPoly) {
    s16 polyId;
    SSNode* curNode;
    CollisionPoly* poly;
    Vec3f testPos;
    f32 ceilingY;
    f32 sign;
    f32 nx;
    f32 ny;
    f32 nz;
    s32 result = false;
    f32 intersectDist;
    u16 padding;

    if (ssList->head == SS_NULL) {
        return false;
    }
    curNode = &dyna->polyNodes.tbl[ssList->head];
    testPos = *pos;

    while (true) {
        polyId = curNode->polyId;
        poly = &dyna->polyList[polyId];
        if (COLPOLY_VTX_CHECK_FLAGS_ANY(poly->flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        CollisionPoly_GetNormalF(poly, &nx, &ny, &nz);
        if (checkHeight < Math3D_UDistPlaneToPos(nx, ny, nz, poly->dist, &testPos)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if (CollisionPoly_CheckYIntersectApprox2(poly, dyna->vtxList, testPos.x, testPos.z, &ceilingY)) {
            intersectDist = ceilingY - testPos.y;
            if (testPos.y < ceilingY && intersectDist < checkHeight && intersectDist * ny <= 0.0f) {
                sign = (0.0f <= ny) ? 1.0f : -1.0f;
                testPos.y = (sign * checkHeight) + ceilingY;
                result = true;
                *outPoly = poly;
            }
        }
        if (curNode->next == SS_NULL) {
            break;
        } else {
            curNode = &dyna->polyNodes.tbl[curNode->next];
            continue;
        }
    }
    *outY = testPos.y;
    return result;
}

/**
 * Tests collision with a dyna poly ceiling
 * returns true if a collision occurs, else false
 * `outPoly` returns the poly collided with, while `outBgId` returns the id of the BgActor that owns the poly
 * `outY` returns the y coordinate needed to not collide with `outPoly`, or `pos`.y + `chkDist` if no collision occurs
 */
s32 BgCheck_CheckDynaCeiling(CollisionContext* colCtx, u16 xpFlags, f32* outY, Vec3f* pos, f32 chkDist,
                             CollisionPoly** outPoly, s32* outBgId, Actor* actor) {
    s32 i = 0;
    s32 result = false;
    f32 resultY;
    f32 tempY = chkDist + pos->y;
    BgActor* bgActor;
    CollisionPoly* poly;

    resultY = tempY;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (!(colCtx->dyna.bgActorFlags[i] & BGACTOR_IN_USE)) {
            continue;
        }
        if (actor == colCtx->dyna.bgActors[i].actor) {
            continue;
        }
        if (!Math3D_XZInSphere(&colCtx->dyna.bgActors[i].boundingSphere, pos->x, pos->z)) {
            continue;
        }
        if (BgCheck_CheckDynaCeilingList(colCtx, xpFlags, &colCtx->dyna, &colCtx->dyna.bgActors[i].dynaLookup.ceiling,
                                         &tempY, pos, chkDist, &poly) == true &&
            tempY < resultY) {

            resultY = tempY;
            *outPoly = poly;
            *outBgId = i;
            result = true;
        }
    }
    *outY = resultY;
    return result;
}

/**
 * Tests if DynaLineTest intersects with a poly
 * returns true if a poly was intersected, else false
 */
s32 BgCheck_CheckLineAgainstBgActorSSList(DynaLineTest* dynaLineTest) {
    f32 distSq;
    s32 result;
    CollisionPoly* curPoly;
    SSNode* curNode;
    Vec3f polyIntersect;
    s16 polyId;

    if (dynaLineTest->ssList->head == SS_NULL) {
        return false;
    }

    curNode = &dynaLineTest->dyna->polyNodes.tbl[dynaLineTest->ssList->head];
    result = false;

    while (true) {
        polyId = curNode->polyId;
        curPoly = &dynaLineTest->dyna->polyList[polyId];
        if (COLPOLY_VTX_CHECK_FLAGS_ANY(curPoly->flags_vIA, dynaLineTest->xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dynaLineTest->dyna->polyNodes.tbl[curNode->next];
            }
        } else {
            if (CollisionPoly_LineVsPoly(curPoly, dynaLineTest->dyna->vtxList, dynaLineTest->posA, dynaLineTest->posB,
                                         &polyIntersect, dynaLineTest->chkOneFace, dynaLineTest->chkDist)) {
                distSq = Math3D_Vec3fDistSq(dynaLineTest->posA, &polyIntersect);
                if (distSq < *dynaLineTest->distSq) {
                    *dynaLineTest->distSq = distSq;
                    *dynaLineTest->posResult = polyIntersect;
                    *dynaLineTest->posB = polyIntersect;
                    *dynaLineTest->resultPoly = curPoly;
                    result = true;
                }
            }
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dynaLineTest->dyna->polyNodes.tbl[curNode->next];
            }
        }
    }
    return result;
}

/**
 * Tests if line `posA` `posB` intersects with a dyna poly within BgActor `bgId`
 * `distSq` is the maximum squared distance to check for a collision
 * returns true if an intersection occurred, else false
 * `posB`? and `posResult` return the point of intersection
 * `outPoly` returns the poly intersected
 * `distSq` returns the squared distance of the intersection
 */
s32 BgCheck_CheckLineAgainstBgActor(CollisionContext* colCtx, u16 xpFlags, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                                    CollisionPoly** outPoly, f32* distSq, s32 bgId, f32 chkDist, s32 bccFlags) {
    s32 result = false;
    DynaLineTest dynaLineTest;

    dynaLineTest.colCtx = colCtx;
    dynaLineTest.xpFlags = xpFlags;
    dynaLineTest.dyna = &colCtx->dyna;
    dynaLineTest.posA = posA;
    dynaLineTest.posB = posB;
    dynaLineTest.posResult = posResult;
    dynaLineTest.resultPoly = outPoly;
    dynaLineTest.chkOneFace = (bccFlags & BGCHECK_CHECK_ONE_FACE) != 0;
    dynaLineTest.distSq = distSq;
    dynaLineTest.chkDist = chkDist;

    dynaLineTest.ssList = &colCtx->dyna.bgActors[bgId].dynaLookup.wall;
    if (bccFlags & BGCHECK_CHECK_WALL) {
        if (BgCheck_CheckLineAgainstBgActorSSList(&dynaLineTest)) {
            result = true;
        }
    }
    dynaLineTest.ssList = &colCtx->dyna.bgActors[bgId].dynaLookup.floor;
    if (bccFlags & BGCHECK_CHECK_FLOOR) {
        if (BgCheck_CheckLineAgainstBgActorSSList(&dynaLineTest)) {
            result = true;
        }
    }
    dynaLineTest.ssList = &colCtx->dyna.bgActors[bgId].dynaLookup.ceiling;
    if (bccFlags & BGCHECK_CHECK_CEILING) {
        if (BgCheck_CheckLineAgainstBgActorSSList(&dynaLineTest)) {
            result = true;
        }
    }
    return result;
}

/**
 * Tests if line from `posA` to `posB` passes through a dyna poly.
 * returns true if so, otherwise false
 * `outPoly` returns the pointer of the poly intersected.
 * `outBgId` returns the BgActor index of the poly
 */
s32 BgCheck_CheckLineAgainstDyna(CollisionContext* colCtx, u16 xpFlags, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                                 CollisionPoly** outPoly, f32* distSq, s32* outBgId, Actor* actor, f32 chkDist,
                                 s32 bccFlags) {
    s32 pad;
    s32 i;
    s32 result = false;
    Linef line;
    f32 ay;
    f32 by;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (colCtx->dyna.bgActorFlags[i] & BGACTOR_IN_USE) {
            if (actor != colCtx->dyna.bgActors[i].actor) {
                ay = posA->y;
                by = posB->y;
                if (!(ay < colCtx->dyna.bgActors[i].minY) || !(by < colCtx->dyna.bgActors[i].minY)) {
                    if (!(colCtx->dyna.bgActors[i].maxY < ay) || !(colCtx->dyna.bgActors[i].maxY < by)) {
                        line.a = *posA;
                        line.b = *posB;
                        if (Math3D_LineVsSph(&colCtx->dyna.bgActors[i].boundingSphere, &line) != 0) {
                            if (BgCheck_CheckLineAgainstBgActor(colCtx, xpFlags, posA, posB, posResult, outPoly, distSq,
                                                                i, chkDist, bccFlags) == true) {
                                *outBgId = i;
                                result = true;
                            }
                        }
                    }
                }
            }
        }
    }
    return result;
}

/**
 * Get first dyna poly intersecting sphere `center` `radius` from list `ssList`
 * returns true if any poly intersects the sphere, else returns false
 * `outPoly` returns the pointer of the first poly found that intersects
 */
s32 BgCheck_SphVsFirstDynaPolyList(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, Vec3f* center,
                                   f32 radius, SSList* ssList) {
    CollisionPoly* curPoly;
    DynaCollisionContext* dyna;
    SSNode* curNode;
    s32 curPolyId;

    if (ssList->head == SS_NULL) {
        return false;
    }
    dyna = &colCtx->dyna;
    curNode = &dyna->polyNodes.tbl[ssList->head];
    while (true) {
        curPolyId = curNode->polyId;
        curPoly = &dyna->polyList[curPolyId];
        if (COLPOLY_VTX_CHECK_FLAGS_ANY(curPoly->flags_vIA, xpFlags)) {
            if (curNode->next == SS_NULL) {
                break;
            } else {
                curNode = &dyna->polyNodes.tbl[curNode->next];
                continue;
            }
        }
        if (CollisionPoly_SphVsPoly(curPoly, dyna->vtxList, center, radius)) {
            *outPoly = curPoly;
            return true;
        }
        if (curNode->next == SS_NULL) {
            break;
        } else {
            curNode = &dyna->polyNodes.tbl[curNode->next];
            continue;
        }
    }
    return false;
}

/**
 * Get first dyna poly intersecting sphere `center` `radius` from BgActor `bgId`
 * returns true if any poly intersects the sphere, else false
 * `outPoly` returns the pointer of the first poly found that intersects
 */
s32 BgCheck_SphVsFirstDynaPolyInBgActor(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, Vec3f* center,
                                        f32 radius, s32 bgId, u16 bciFlags) {
    if ((bciFlags & BGCHECK_IGNORE_CEILING) == 0) {
        if (BgCheck_SphVsFirstDynaPolyList(colCtx, xpFlags, outPoly, center, radius,
                                           &colCtx->dyna.bgActors[bgId].dynaLookup.ceiling)) {
            return true;
        }
    }
    if ((bciFlags & BGCHECK_IGNORE_WALL) == 0) {
        if (BgCheck_SphVsFirstDynaPolyList(colCtx, xpFlags, outPoly, center, radius,
                                           &colCtx->dyna.bgActors[bgId].dynaLookup.wall)) {
            return true;
        }
    }
    if ((bciFlags & BGCHECK_IGNORE_FLOOR) == 0) {
        if (BgCheck_SphVsFirstDynaPolyList(colCtx, xpFlags, outPoly, center, radius,
                                           &colCtx->dyna.bgActors[bgId].dynaLookup.floor)) {
            return true;
        }
    }
    return false;
}

/**
 * Gets first dyna poly intersecting sphere `center` `radius`
 * returns true if poly detected, else false
 * `outPoly` returns the first intersecting poly, while `outBgId` returns the BgActor index of that poly
 */
s32 BgCheck_SphVsFirstDynaPoly(CollisionContext* colCtx, u16 xpFlags, CollisionPoly** outPoly, s32* outBgId,
                               Vec3f* center, f32 radius, Actor* actor, u16 bciFlags) {
    s32 i = 0;
    Sphere16 testSphere;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        if (!(colCtx->dyna.bgActorFlags[i] & BGACTOR_IN_USE)) {
            continue;
        }
        if (colCtx->dyna.bgActors[i].actor == actor) {
            continue;
        }
        testSphere.center.x = center->x;
        testSphere.center.y = center->y;
        testSphere.center.z = center->z;
        testSphere.radius = radius;
        if (!Math3D_SphVsSph(&testSphere, &colCtx->dyna.bgActors[i].boundingSphere)) {
            continue;
        }
        if (BgCheck_SphVsFirstDynaPolyInBgActor(colCtx, xpFlags, outPoly, center, radius, i, bciFlags)) {
            return true;
        }
    }
    return false;
}

/**
 * SEGMENTED_TO_VIRTUAL CollisionHeader members
 */
void CollisionHeader_SegmentedToVirtual(CollisionHeader* colHeader) {
    colHeader->vtxList = SEGMENTED_TO_VIRTUAL(colHeader->vtxList);
    colHeader->polyList = SEGMENTED_TO_VIRTUAL(colHeader->polyList);
    colHeader->surfaceTypeList = SEGMENTED_TO_VIRTUAL(colHeader->surfaceTypeList);
    colHeader->bgCamList = SEGMENTED_TO_VIRTUAL(colHeader->bgCamList);
    colHeader->waterBoxes = SEGMENTED_TO_VIRTUAL(colHeader->waterBoxes);
}

/**
 * Convert CollisionHeader Segmented to Virtual addressing
 */
void CollisionHeader_GetVirtual(void* colHeader, CollisionHeader** dest) {
    *dest = SEGMENTED_TO_VIRTUAL(colHeader);
    CollisionHeader_SegmentedToVirtual(*dest);
}

/**
 * SEGMENT_TO_VIRTUAL all active BgActor CollisionHeaders
 */
void func_800418D0(CollisionContext* colCtx, PlayState* play) {
    DynaCollisionContext* dyna = &colCtx->dyna;
    s32 i;
    u16 flag;

    for (i = 0; i < BG_ACTOR_MAX; i++) {
        flag = dyna->bgActorFlags[i];
        if ((flag & BGACTOR_IN_USE) && !(flag & BGACTOR_1)) {
            Actor_SetObjectDependency(play, dyna->bgActors[i].actor);
            CollisionHeader_SegmentedToVirtual(dyna->bgActors[i].colHeader);
        }
    }
}

/**
 * Reset SSNodeList polyCheckTbl
 */
void BgCheck_ResetPolyCheckTbl(SSNodeList* nodeList, s32 numPolys) {
    u8* t;

    for (t = nodeList->polyCheckTbl; t < nodeList->polyCheckTbl + numPolys; t++) {
        *t = 0;
    }
}

/**
 * Get SurfaceType property set
 */
u32 SurfaceType_GetData(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId, s32 dataIdx) {
    CollisionHeader* colHeader;
    SurfaceType* surfaceTypes;

    colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    if (colHeader == NULL || poly == NULL) {
        return 0;
    }

    surfaceTypes = colHeader->surfaceTypeList;
    if (surfaceTypes == SEGMENTED_TO_VIRTUAL(NULL)) {
        return 0;
    }

    return surfaceTypes[poly->type].data[dataIdx];
}

u32 SurfaceType_GetBgCamIndex(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) & 0xFF;
}

/**
 * BgCam get setting of bgCam
 */
u16 BgCheck_GetBgCamSettingImpl(CollisionContext* colCtx, u32 bgCamIndex, s32 bgId) {
    u16 camSetting;
    CollisionHeader* colHeader;
    BgCamInfo* bgCamList;

    colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    if (colHeader == NULL) {
        return CAM_SET_NONE;
    }

    bgCamList = colHeader->bgCamList;
    camSetting = bgCamList[bgCamIndex].setting;

    return camSetting;
}

/**
 * BgCam Get the camera setting of bgCam
 */
u16 BgCheck_GetBgCamSetting(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    BgCamInfo* bgCamList;
    SurfaceType* surfaceTypes;

    if (colHeader == NULL) {
        return CAM_SET_NONE;
    }

    bgCamList = colHeader->bgCamList;
    if (bgCamList == SEGMENTED_TO_VIRTUAL(NULL)) {
        return CAM_SET_NONE;
    }

    surfaceTypes = colHeader->surfaceTypeList;
    if (surfaceTypes == SEGMENTED_TO_VIRTUAL(NULL)) {
        return CAM_SET_NONE;
    }

    return BgCheck_GetBgCamSettingImpl(colCtx, SurfaceType_GetBgCamIndex(colCtx, poly, bgId), bgId);
}

/**
 * BgCam Get the total count of Vec3s data from bgCamFuncData
 */
u16 BgCheck_GetBgCamCountImpl(CollisionContext* colCtx, u32 bgCamIndex, s32 bgId) {
    CollisionHeader* colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    BgCamInfo* bgCamList;

    if (colHeader == NULL) {
        return 0;
    }

    bgCamList = colHeader->bgCamList;
    if (bgCamList == SEGMENTED_TO_VIRTUAL(NULL)) {
        return 0;
    }

    return bgCamList[bgCamIndex].count;
}

/**
 * BgCam Get the total count of Vec3s data from bgCamFuncData
 */
u16 BgCheck_GetBgCamCount(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    BgCamInfo* bgCamList;
    SurfaceType* surfaceTypes;

    if (colHeader == NULL) {
        return 0;
    }

    bgCamList = colHeader->bgCamList;
    if (bgCamList == SEGMENTED_TO_VIRTUAL(NULL)) {
        return 0;
    }

    surfaceTypes = colHeader->surfaceTypeList;
    if (surfaceTypes == SEGMENTED_TO_VIRTUAL(NULL)) {
        return 0;
    }

    return BgCheck_GetBgCamCountImpl(colCtx, SurfaceType_GetBgCamIndex(colCtx, poly, bgId), bgId);
}

/**
 * BgCam Get Vec3s data from bgCamFuncData
 */
Vec3s* BgCheck_GetBgCamFuncDataImpl(CollisionContext* colCtx, s32 bgCamIndex, s32 bgId) {
    CollisionHeader* colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    BgCamInfo* bgCamList;

    if (colHeader == NULL) {
        return NULL;
    }

    bgCamList = colHeader->bgCamList;
    if (bgCamList == SEGMENTED_TO_VIRTUAL(NULL)) {
        return NULL;
    }

    return (Vec3s*)SEGMENTED_TO_VIRTUAL(bgCamList[bgCamIndex].bgCamFuncData);
}

/**
 * BgCam Get Vec3s data from bgCamFuncData
 */
Vec3s* BgCheck_GetBgCamFuncData(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    CollisionHeader* colHeader = BgCheck_GetCollisionHeader(colCtx, bgId);
    BgCamInfo* bgCamList;
    SurfaceType* surfaceTypes;

    if (colHeader == NULL) {
        return NULL;
    }

    bgCamList = colHeader->bgCamList;
    if (bgCamList == SEGMENTED_TO_VIRTUAL(NULL)) {
        return NULL;
    }

    surfaceTypes = colHeader->surfaceTypeList;
    if (surfaceTypes == SEGMENTED_TO_VIRTUAL(NULL)) {
        return NULL;
    }

    return BgCheck_GetBgCamFuncDataImpl(colCtx, SurfaceType_GetBgCamIndex(colCtx, poly, bgId), bgId);
}

u32 SurfaceType_GetExitIndex(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 8 & 0x1F;
}

u32 SurfaceType_GetFloorType(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 13 & 0x1F;
}

/**
 * SurfaceType Get ? Property (& 0x001C 0000)
 */
u32 func_80041D70(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 18 & 7;
}

u32 SurfaceType_GetWallType(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 21 & 0x1F;
}

s32 SurfaceType_GetWallFlags(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return D_80119D90[SurfaceType_GetWallType(colCtx, poly, bgId)];
}

s32 SurfaceType_CheckWallFlag0(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (SurfaceType_GetWallFlags(colCtx, poly, bgId) & WALL_FLAG_0) ? true : false;
}

s32 SurfaceType_CheckWallFlag1(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (SurfaceType_GetWallFlags(colCtx, poly, bgId) & WALL_FLAG_1) ? true : false;
}

s32 SurfaceType_CheckWallFlag2(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (SurfaceType_GetWallFlags(colCtx, poly, bgId) & WALL_FLAG_2) ? true : false;
}

u32 SurfaceType_GetFloorProperty2(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 26 & 0xF;
}

u32 SurfaceType_GetFloorProperty(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 26 & 0xF;
}

u32 SurfaceType_IsSoft(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 30 & 1;
}

u32 SurfaceType_IsHorseBlocked(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 0) >> 31 & 1;
}

u32 SurfaceType_GetMaterial(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) & 0xF;
}

u16 SurfaceType_GetSfxOffset(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    s32 surfaceMaterial = SurfaceType_GetMaterial(colCtx, poly, bgId);

    if ((surfaceMaterial < 0) || (surfaceMaterial >= ARRAY_COUNT(sSurfaceMaterialToSfxOffset))) {
        return SURFACE_SFX_OFFSET_DIRT;
    }
    return sSurfaceMaterialToSfxOffset[surfaceMaterial];
}

u32 SurfaceType_GetFloorEffect(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) >> 4 & 3;
}

u32 SurfaceType_GetLightSetting(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) >> 6 & 0x1F;
}

u32 SurfaceType_GetEcho(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) >> 11 & 0x3F;
}

u32 SurfaceType_CanHookshot(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) >> 17 & 1;
}

/**
 * CollisionPoly is ignored by entities
 * Returns true if poly is ignored by entities, else false
 */
s32 SurfaceType_IsIgnoredByEntities(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    u32 flags;

    if (BgCheck_GetCollisionHeader(colCtx, bgId) == NULL) {
        return true;
    }
    flags = COLPOLY_VTX_CHECK_FLAGS_ANY(poly->flags_vIA, COLPOLY_IGNORE_ENTITY);
    return !!flags;
}

/**
 * CollisionPoly is ignored by projectiles
 * Returns true if poly is ignored by projectiles, else false
 */
s32 SurfaceType_IsIgnoredByProjectiles(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    u32 flags;

    if (BgCheck_GetCollisionHeader(colCtx, bgId) == NULL) {
        return true;
    }
    flags = COLPOLY_VTX_CHECK_FLAGS_ANY(poly->flags_vIA, COLPOLY_IGNORE_PROJECTILES);
    return !!flags;
}

/**
 * Checks if poly is a floor conveyor
 *
 * A conveyor surface is enabled with non-zero speed.
 * When enabled, the conveyor will exhibit two types of behaviour depending on the return value:
 *
 * If true, then it is a floor conveyor and will push player only while being stood on
 * If false, then it is a water conveyor and will push player only while in water
 */
s32 SurfaceType_IsFloorConveyor(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    u32 flags;

    if (BgCheck_GetCollisionHeader(colCtx, bgId) == NULL) {
        return true;
    }
    flags = COLPOLY_VTX_CHECK_FLAGS_ANY(poly->flags_vIB, COLPOLY_IS_FLOOR_CONVEYOR);
    return !!flags;
}

u32 SurfaceType_GetConveyorSpeed(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) >> 18 & 7;
}

/**
 * returns a value between 0-63, representing 360 / 64 degrees of rotation
 */
u32 SurfaceType_GetConveyorDirection(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return SurfaceType_GetData(colCtx, poly, bgId, 1) >> 21 & 0x3F;
}

u32 func_80042108(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId) {
    return (SurfaceType_GetData(colCtx, poly, bgId, 1) & 0x08000000) ? 1 : 0;
}

/**
 * Zora's Domain WaterBox in King Zora's Room
 */
WaterBox sZorasDomainWaterBox = { -348, 877, -1746, 553, 780, 0x2104 };

/**
 * WaterBox's effective bounding box
 */
f32 sZorasDomainWaterBoxMinX = -348.0f;
f32 sZorasDomainWaterBoxMinY = 777.0f;
f32 sZorasDomainWaterBoxMinZ = -1746.0f;
f32 sZorasDomainWaterBoxMaxX = 205.0f;
f32 sZorasDomainWaterBoxMaxY = 977.0f;
f32 sZorasDomainWaterBoxMaxZ = -967.0f;

/**
 * Public. Get the water surface at point (`x`, `ySurface`, `z`). `ySurface` doubles as position y input
 * returns true if point is within the xz boundaries of an active water box, else false
 * `ySurface` returns the water box's surface, while `outWaterBox` returns a pointer to the WaterBox
 */
s32 WaterBox_GetSurface1(PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                         WaterBox** outWaterBox) {
    if (play->sceneId == SCENE_ZORAS_DOMAIN) {
        s32 pad;

        if (sZorasDomainWaterBoxMinX < x && x < sZorasDomainWaterBoxMaxX && sZorasDomainWaterBoxMinY < *ySurface &&
            *ySurface < sZorasDomainWaterBoxMaxY && sZorasDomainWaterBoxMinZ < z && z < sZorasDomainWaterBoxMaxZ) {
            *outWaterBox = &sZorasDomainWaterBox;
            *ySurface = sZorasDomainWaterBox.ySurface;
            return true;
        }
    }
    return WaterBox_GetSurfaceImpl(play, colCtx, x, z, ySurface, outWaterBox);
}

/**
 * Internal. Get the water surface at point (`x`, `ySurface`, `z`). `ySurface` doubles as position y input
 * returns true if point is within the xz boundaries of an active water box, else false
 * `ySurface` returns the water box's surface, while `outWaterBox` returns a pointer to the WaterBox
 */
s32 WaterBox_GetSurfaceImpl(PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                            WaterBox** outWaterBox) {
    CollisionHeader* colHeader = colCtx->colHeader;
    s32 room;
    WaterBox* waterBox;

    if (colHeader->numWaterBoxes == 0 || colHeader->waterBoxes == SEGMENTED_TO_VIRTUAL(NULL)) {
        return false;
    }

    for (waterBox = colHeader->waterBoxes; waterBox < colHeader->waterBoxes + colHeader->numWaterBoxes; waterBox++) {
        room = WATERBOX_ROOM(waterBox->properties);
        if (room == play->roomCtx.curRoom.num || room == WATERBOX_ROOM_ALL) {
            if (!(waterBox->properties & WATERBOX_FLAG_19)) {
                if (waterBox->xMin < x && x < waterBox->xMin + waterBox->xLength) {
                    if (waterBox->zMin < z && z < waterBox->zMin + waterBox->zLength) {
                        *outWaterBox = waterBox;
                        *ySurface = waterBox->ySurface;
                        return true;
                    }
                }
            }
        }
    }
    return false;
}

/**
 * Gets the first active WaterBox at `pos` with WATERBOX_FLAG_19 not set
 * `surfaceChkDist` is the absolute y distance from the water surface to check
 * returns the index of the waterbox found, or -1 if no waterbox is found
 * `outWaterBox` returns the pointer to the waterbox found, or NULL if none is found
 */
s32 WaterBox_GetSurface2(PlayState* play, CollisionContext* colCtx, Vec3f* pos, f32 surfaceChkDist,
                         WaterBox** outWaterBox) {
    CollisionHeader* colHeader = colCtx->colHeader;
    s32 room;
    s32 i;
    WaterBox* waterBox;
    WaterBox* waterBoxList = colHeader->waterBoxes; // unused, needed for matching

    if (colHeader->numWaterBoxes == 0 || colHeader->waterBoxes == SEGMENTED_TO_VIRTUAL(NULL)) {
        *outWaterBox = NULL;
        return -1;
    }

    for (i = 0; i < colHeader->numWaterBoxes; i++) {
        waterBox = &colHeader->waterBoxes[i];

        room = WATERBOX_ROOM(waterBox->properties);
        if (room == play->roomCtx.curRoom.num || room == WATERBOX_ROOM_ALL) {
            if (!(waterBox->properties & WATERBOX_FLAG_19)) {
                if (waterBox->xMin < pos->x && pos->x < waterBox->xMin + waterBox->xLength) {
                    if (waterBox->zMin < pos->z && pos->z < waterBox->zMin + waterBox->zLength) {
                        if (pos->y - surfaceChkDist < waterBox->ySurface &&
                            waterBox->ySurface < pos->y + surfaceChkDist) {
                            *outWaterBox = waterBox;
                            return i;
                        }
                    }
                }
            }
        }
    }

    *outWaterBox = NULL;
    return -1;
}

/**
 * WaterBox get BgCam index
 */
u32 WaterBox_GetBgCamIndex(CollisionContext* colCtx, WaterBox* waterBox) {
    u32 bgCamIndex = waterBox->properties & 0xFF;

    return bgCamIndex;
}

/**
 * WaterBox get BgCam setting
 */
u16 WaterBox_GetBgCamSetting(CollisionContext* colCtx, WaterBox* waterBox) {
    s32 bgCamIndex = WaterBox_GetBgCamIndex(colCtx, waterBox);
    BgCamInfo* bgCamList = colCtx->colHeader->bgCamList;

    if (bgCamList == SEGMENTED_TO_VIRTUAL(NULL)) {
        return CAM_SET_NONE;
    }

    return colCtx->colHeader->bgCamList[bgCamIndex].setting;
}

/**
 * WaterBox get lighting settings
 */
u32 WaterBox_GetLightIndex(CollisionContext* colCtx, WaterBox* waterBox) {
    u32 lightIndex = (waterBox->properties >> 8) & 0x1F;

    return lightIndex;
}

/**
 * Get the water surface at point (`x`, `ySurface`, `z`). `ySurface` doubles as position y input
 * same as WaterBox_GetSurfaceImpl, but tests if WATERBOX_FLAG_19 is set
 * returns true if point is within the xz boundaries of an active water box, else false
 * `ySurface` returns the water box's surface, while `outWaterBox` returns a pointer to the WaterBox
 */
s32 func_800425B0(PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface, WaterBox** outWaterBox) {
    CollisionHeader* colHeader = colCtx->colHeader;
    s32 room;
    WaterBox* waterBox;

    if (colHeader->numWaterBoxes == 0 || colHeader->waterBoxes == SEGMENTED_TO_VIRTUAL(NULL)) {
        return false;
    }

    for (waterBox = colHeader->waterBoxes; waterBox < colHeader->waterBoxes + colHeader->numWaterBoxes; waterBox++) {
        room = WATERBOX_ROOM(waterBox->properties);
        if ((room == play->roomCtx.curRoom.num) || (room == WATERBOX_ROOM_ALL)) {
            if (waterBox->properties & WATERBOX_FLAG_19) {
                if (waterBox->xMin < x && x < (waterBox->xMin + waterBox->xLength)) {
                    if (waterBox->zMin < z && z < (waterBox->zMin + waterBox->zLength)) {
                        *outWaterBox = waterBox;
                        *ySurface = waterBox->ySurface;
                        return true;
                    }
                }
            }
        }
    }
    return false;
}

/**
 * Gets the `closestPoint` to `point` on the line formed from the intesection of planes `polyA` and `polyB`
 * returns true if the `closestPoint` exists, else returns false
 */
s32 func_80042708(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* point, Vec3f* closestPoint) {
    f32 n1X;
    f32 n1Y;
    f32 n1Z;
    f32 n2X;
    f32 n2Y;
    f32 n2Z;

    CollisionPoly_GetNormalF(polyA, &n1X, &n1Y, &n1Z);
    CollisionPoly_GetNormalF(polyB, &n2X, &n2Y, &n2Z);
    return Math3D_PlaneVsPlaneVsLineClosestPoint(n1X, n1Y, n1Z, polyA->dist, n2X, n2Y, n2Z, polyB->dist, point,
                                                 closestPoint);
}

/**
 * Get the `closestPoint` to line (`pointA`, `pointB`) formed from the intersection of planes `polyA` and `polyB`
 * returns true if the `closestPoint` exists, else returns false
 */
s32 func_800427B4(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* pointA, Vec3f* pointB, Vec3f* closestPoint) {
    f32 n1X;
    f32 n1Y;
    f32 n1Z;
    f32 n2X;
    f32 n2Y;
    f32 n2Z;
    s32 result;

    CollisionPoly_GetNormalF(polyA, &n1X, &n1Y, &n1Z);
    CollisionPoly_GetNormalF(polyB, &n2X, &n2Y, &n2Z);
    result = Math3D_PlaneVsLineSegClosestPoint(n1X, n1Y, n1Z, polyA->dist, n2X, n2Y, n2Z, polyB->dist, pointA, pointB,
                                               closestPoint);
    return result;
}

#if DEBUG_FEATURES
/**
 * Draw a list of dyna polys, specified by `ssList`
 */
void BgCheck_DrawDynaPolyList(PlayState* play, CollisionContext* colCtx, DynaCollisionContext* dyna, SSList* ssList,
                              u8 r, u8 g, u8 b) {
    s16 curPolyId;
    CollisionPoly* poly;
    SSNode* curNode;
    Vec3f vA;
    Vec3f vB;
    Vec3f vC;
    f32 nx;
    f32 ny;
    f32 nz;

    if (ssList->head != SS_NULL) {
        curNode = &dyna->polyNodes.tbl[ssList->head];
        while (true) {
            curPolyId = curNode->polyId;
            poly = &dyna->polyList[curPolyId];
            BgCheck_Vec3sToVec3f(COLPOLY_VTX_INDEX(poly->flags_vIA) + dyna->vtxList, &vA);
            BgCheck_Vec3sToVec3f(COLPOLY_VTX_INDEX(poly->flags_vIB) + dyna->vtxList, &vB);
            BgCheck_Vec3sToVec3f((s32)(poly->vIC) + dyna->vtxList, &vC);
            if (AREG(26)) {
                nx = COLPOLY_GET_NORMAL(poly->normal.x);
                ny = COLPOLY_GET_NORMAL(poly->normal.y);
                nz = COLPOLY_GET_NORMAL(poly->normal.z);
                vA.x += AREG(26) * nx;
                vA.y += AREG(26) * ny;
                vA.z += AREG(26) * nz;
                vB.x += AREG(26) * nx;
                vB.y += AREG(26) * ny;
                vB.z += AREG(26) * nz;
                vC.x += AREG(26) * nx;
                vC.y += AREG(26) * ny;
                vC.z += AREG(26) * nz;
            }
            Collider_DrawPoly(play->state.gfxCtx, &vA, &vB, &vC, r, g, b);
            if (curNode->next == SS_NULL) {
                break;
            }
            curNode = &dyna->polyNodes.tbl[curNode->next];
        }
    }
}

/**
 * Draw a BgActor's dyna polys
 * `bgId` is the BgActor index that should be drawn
 */
void BgCheck_DrawBgActor(PlayState* play, CollisionContext* colCtx, s32 bgId) {
    if (AREG(21)) {
        BgCheck_DrawDynaPolyList(play, colCtx, &colCtx->dyna, &colCtx->dyna.bgActors[bgId].dynaLookup.ceiling, 255, 0,
                                 0);
    }
    if (AREG(22)) {
        BgCheck_DrawDynaPolyList(play, colCtx, &colCtx->dyna, &colCtx->dyna.bgActors[bgId].dynaLookup.wall, 0, 255, 0);
    }
    if (AREG(23)) {
        BgCheck_DrawDynaPolyList(play, colCtx, &colCtx->dyna, &colCtx->dyna.bgActors[bgId].dynaLookup.floor, 0, 0, 255);
    }
}

/**
 * Draw all dyna polys
 */
void BgCheck_DrawDynaCollision(PlayState* play, CollisionContext* colCtx) {
    s32 bgId;

    for (bgId = 0; bgId < BG_ACTOR_MAX; bgId++) {

        if (!(colCtx->dyna.bgActorFlags[bgId] & BGACTOR_IN_USE)) {
            continue;
        }
        BgCheck_DrawBgActor(play, colCtx, bgId);
    }
}

/**
 * Draw a static poly
 */
void BgCheck_DrawStaticPoly(PlayState* play, CollisionContext* colCtx, CollisionPoly* poly, u8 r, u8 g, u8 b) {
    Vec3f vA;
    Vec3f vB;
    Vec3f vC;
    f32 nx;
    f32 ny;
    f32 nz;

    BgCheck_Vec3sToVec3f(COLPOLY_VTX_INDEX(poly->flags_vIA) + colCtx->colHeader->vtxList, &vA);
    BgCheck_Vec3sToVec3f(COLPOLY_VTX_INDEX(poly->flags_vIB) + colCtx->colHeader->vtxList, &vB);
    BgCheck_Vec3sToVec3f(poly->vIC + colCtx->colHeader->vtxList, &vC);
    if (AREG(26) != 0) {
        nx = COLPOLY_GET_NORMAL(poly->normal.x);
        ny = COLPOLY_GET_NORMAL(poly->normal.y);
        nz = COLPOLY_GET_NORMAL(poly->normal.z);
        vA.x += AREG(26) * nx;
        vA.y += AREG(26) * ny;
        vA.z += AREG(26) * nz;
        vB.x += AREG(26) * nx;
        vB.y += AREG(26) * ny;
        vB.z += AREG(26) * nz;
        vC.x += AREG(26) * nx;
        vC.y += AREG(26) * ny;
        vC.z += AREG(26) * nz;
    }
    Collider_DrawPoly(play->state.gfxCtx, &vA, &vB, &vC, r, g, b);
}

/**
 * Draw a list of static polys, specified by `ssList`
 */
void BgCheck_DrawStaticPolyList(PlayState* play, CollisionContext* colCtx, SSList* ssList, u8 r, u8 g, u8 b) {
    SSNode* curNode;
    CollisionPoly* polyList = colCtx->colHeader->polyList;
    s16 curPolyId;

    if (ssList->head != SS_NULL) {
        curNode = &colCtx->polyNodes.tbl[ssList->head];
        while (true) {
            curPolyId = curNode->polyId;
            BgCheck_DrawStaticPoly(play, colCtx, &polyList[curPolyId], r, g, b);
            if (curNode->next == SS_NULL) {
                break;
            }
            curNode = &colCtx->polyNodes.tbl[curNode->next];
        }
    }
}

/**
 * Draw scene collision
 */
void BgCheck_DrawStaticCollision(PlayState* play, CollisionContext* colCtx) {
    Player* player = GET_PLAYER(play);
    StaticLookup* lookup = BgCheck_GetNearestStaticLookup(colCtx, colCtx->lookupTbl, &player->actor.world.pos);

    if (AREG(23) != 0) {
        BgCheck_DrawStaticPolyList(play, colCtx, &lookup->floor, 0, 0, 255);
    }
    if (AREG(22) != 0) {
        BgCheck_DrawStaticPolyList(play, colCtx, &lookup->wall, 0, 255, 0);
    }
    if (AREG(21) != 0) {
        BgCheck_DrawStaticPolyList(play, colCtx, &lookup->ceiling, 255, 0, 0);
    }
}
#endif
