#include "global.h"
#include "terminal.h"

#include "z64frame_advance.h"

#include "overlays/effects/ovl_Effect_Ss_HitMark/z_eff_ss_hitmark.h"

typedef s32 (*ColChkResetFunc)(PlayState*, Collider*);
typedef void (*ColChkApplyFunc)(PlayState*, CollisionCheckContext*, Collider*);
typedef void (*ColChkVsFunc)(PlayState*, CollisionCheckContext*, Collider*, Collider*);
typedef s32 (*ColChkLineFunc)(PlayState*, CollisionCheckContext*, Collider*, Vec3f*, Vec3f*);

#define SAC_ENABLE (1 << 0)

#pragma increment_block_number "gc-eu:64 gc-eu-mq:64 gc-jp:64 gc-jp-ce:64 gc-jp-mq:64 gc-us:64 gc-us-mq:64"

#if OOT_DEBUG
/**
 * Draws a red triangle with vertices vA, vB, and vC.
 */
void Collider_DrawRedPoly(GraphicsContext* gfxCtx, Vec3f* vA, Vec3f* vB, Vec3f* vC) {
    Collider_DrawPoly(gfxCtx, vA, vB, vC, 255, 0, 0);
}

/**
 * Draws the triangle with vertices vA, vB, and vC and with the specified color.
 */
void Collider_DrawPoly(GraphicsContext* gfxCtx, Vec3f* vA, Vec3f* vB, Vec3f* vC, u8 r, u8 g, u8 b) {
    Vtx* vtxTbl;
    Vtx* vtx;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 originDist;

    OPEN_DISPS(gfxCtx, "../z_collision_check.c", 713);

    gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0xFF, r, g, b, 50);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
    gSPTexture(POLY_OPA_DISP++, 0, 0, 0, G_TX_RENDERTILE, G_OFF);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                      COMBINED);
    gSPClearGeometryMode(POLY_OPA_DISP++, G_CULL_BOTH);
    gSPSetGeometryMode(POLY_OPA_DISP++, G_LIGHTING);
    gDPPipeSync(POLY_OPA_DISP++);

    vtxTbl = GRAPH_ALLOC(gfxCtx, 3 * sizeof(Vtx));
    ASSERT(vtxTbl != NULL, "vtx_tbl != NULL", "../z_collision_check.c", 726);

    vtxTbl[0].n.ob[0] = vA->x;
    vtxTbl[0].n.ob[1] = vA->y;
    vtxTbl[0].n.ob[2] = vA->z;
    vtxTbl[1].n.ob[0] = vB->x;
    vtxTbl[1].n.ob[1] = vB->y;
    vtxTbl[1].n.ob[2] = vB->z;
    vtxTbl[2].n.ob[0] = vC->x;
    vtxTbl[2].n.ob[1] = vC->y;
    vtxTbl[2].n.ob[2] = vC->z;

    Math3D_DefPlane(vA, vB, vC, &nx, &ny, &nz, &originDist);

    for (vtx = vtxTbl; vtx < vtxTbl + 3; vtx++) {
        vtx->n.flag = 0;
        vtx->n.tc[0] = 0;
        vtx->n.tc[1] = 0;
        vtx->n.n[0] = (u8)(s32)nx & 0xFF;
        vtx->n.n[1] = (u8)(s32)ny & 0xFF;
        vtx->n.n[2] = (u8)(s32)nz & 0xFF;
        vtx->n.a = 255;
    }

    gSPVertex(POLY_OPA_DISP++, vtxTbl, 3, 0);
    gSP1Triangle(POLY_OPA_DISP++, 0, 1, 2, 0);

    CLOSE_DISPS(gfxCtx, "../z_collision_check.c", 757);
}
#endif

s32 Collider_InitBase(PlayState* play, Collider* col) {
    static Collider init = {
        NULL, NULL, NULL, NULL, AT_NONE, AC_NONE, OC1_NONE, OC2_NONE, COLTYPE_HIT3, COLSHAPE_MAX,
    };

    *col = init;
    return true;
}

s32 Collider_DestroyBase(PlayState* play, Collider* col) {
    return true;
}

/**
 * Uses default OC2_TYPE_1 and COLTYPE_HIT0
 */
s32 Collider_SetBaseToActor(PlayState* play, Collider* col, ColliderInitToActor* src) {
    col->actor = src->actor;
    col->atFlags = src->atFlags;
    col->acFlags = src->acFlags;
    col->ocFlags1 = src->ocFlags1;
    col->ocFlags2 = OC2_TYPE_1;
    col->shape = src->shape;
    return true;
}

/**
 * Uses default OC2_TYPE_1
 */
s32 Collider_SetBaseType1(PlayState* play, Collider* col, Actor* actor, ColliderInitType1* src) {
    col->actor = actor;
    col->colType = src->colType;
    col->atFlags = src->atFlags;
    col->acFlags = src->acFlags;
    col->ocFlags1 = src->ocFlags1;
    col->ocFlags2 = OC2_TYPE_1;
    col->shape = src->shape;
    return true;
}

s32 Collider_SetBase(PlayState* play, Collider* col, Actor* actor, ColliderInit* src) {
    col->actor = actor;
    col->colType = src->colType;
    col->atFlags = src->atFlags;
    col->acFlags = src->acFlags;
    col->ocFlags1 = src->ocFlags1;
    col->ocFlags2 = src->ocFlags2;
    col->shape = src->shape;
    return true;
}

void Collider_ResetATBase(PlayState* play, Collider* col) {
    col->at = NULL;
    col->atFlags &= ~(AT_HIT | AT_BOUNCED);
}

void Collider_ResetACBase(PlayState* play, Collider* col) {
    col->ac = NULL;
    col->acFlags &= ~(AC_HIT | AC_BOUNCED);
}

void Collider_ResetOCBase(PlayState* play, Collider* col) {
    col->oc = NULL;
    col->ocFlags1 &= ~OC1_HIT;
    col->ocFlags2 &= ~OC2_HIT_PLAYER;
}

s32 Collider_InitElementDamageInfoAT(PlayState* play, ColliderElementDamageInfoAT* atDmgInfo) {
    static ColliderElementDamageInfoAT init = { 0x00000000, 0, 0 };

    *atDmgInfo = init;
    return true;
}

s32 Collider_DestroyElementDamageInfoAT(PlayState* play, ColliderElementDamageInfoAT* atDmgInfo) {
    return true;
}

s32 Collider_SetElementDamageInfoAT(PlayState* play, ColliderElementDamageInfoAT* dest,
                                    ColliderElementDamageInfoAT* src) {
    dest->dmgFlags = src->dmgFlags;
    dest->effect = src->effect;
    dest->damage = src->damage;
    return true;
}

void Collider_ResetATElement_Unk(PlayState* play, ColliderElement* elem) {
}

s32 Collider_InitElementDamageInfoAC(PlayState* play, ColliderElementDamageInfoAC* acDmgInfo) {
    static ColliderElementDamageInfoAC init = { 0xFFCFFFFF, 0, 0, { 0, 0, 0 } };

    *acDmgInfo = init;
    return true;
}

s32 Collider_DestroyElementDamageInfoAC(PlayState* play, ColliderElementDamageInfoAC* acDmgInfo) {
    return true;
}

s32 Collider_SetElementDamageInfoAC(PlayState* play, ColliderElementDamageInfoAC* acDmgInfo,
                                    ColliderElementDamageInfoACInit* init) {
    acDmgInfo->dmgFlags = init->dmgFlags;
    acDmgInfo->effect = init->effect;
    acDmgInfo->defense = init->defense;
    return true;
}

s32 Collider_InitElement(PlayState* play, ColliderElement* elem) {
    static ColliderElement init = {
        { 0, 0, 0 },   { 0xFFCFFFFF, 0, 0, { 0, 0, 0 } },
        ELEMTYPE_UNK0, ATELEM_NONE,
        ACELEM_NONE,   OCELEM_NONE,
        NULL,          NULL,
        NULL,          NULL,
    };

    *elem = init;
    Collider_InitElementDamageInfoAT(play, &elem->atDmgInfo);
    Collider_InitElementDamageInfoAC(play, &elem->acDmgInfo);
    return true;
}

s32 Collider_DestroyElement(PlayState* play, ColliderElement* elem) {
    Collider_DestroyElementDamageInfoAT(play, &elem->atDmgInfo);
    Collider_DestroyElementDamageInfoAC(play, &elem->acDmgInfo);
    return true;
}

s32 Collider_SetElement(PlayState* play, ColliderElement* elem, ColliderElementInit* elemInit) {
    elem->elemType = elemInit->elemType;
    Collider_SetElementDamageInfoAT(play, &elem->atDmgInfo, &elemInit->atDmgInfo);
    Collider_SetElementDamageInfoAC(play, &elem->acDmgInfo, &elemInit->acDmgInfo);
    elem->atElemFlags = elemInit->atElemFlags;
    elem->acElemFlags = elemInit->acElemFlags;
    elem->ocElemFlags = elemInit->ocElemFlags;
    return true;
}

void Collider_ResetATElement(PlayState* play, ColliderElement* elem) {
    elem->atHit = NULL;
    elem->atHitElem = NULL;
    elem->atElemFlags &= ~ATELEM_HIT;
    elem->atElemFlags &= ~ATELEM_DREW_HITMARK;
    Collider_ResetATElement_Unk(play, elem);
}

void Collider_ResetACElement(PlayState* play, ColliderElement* elem) {
    elem->acDmgInfo.hitPos.x = elem->acDmgInfo.hitPos.y = elem->acDmgInfo.hitPos.z = 0;
    elem->acElemFlags &= ~ACELEM_HIT;
    elem->acElemFlags &= ~ACELEM_DRAW_HITMARK;
    elem->acHit = NULL;
    elem->acHitElem = NULL;
}

void Collider_ResetOCElement(PlayState* play, ColliderElement* elem) {
    elem->ocElemFlags &= ~OCELEM_HIT;
}

s32 Collider_InitJntSphElementDim(PlayState* play, ColliderJntSphElementDim* dim) {
    static ColliderJntSphElementDim init = {
        { { 0, 0, 0 }, 0 },
        { { 0, 0, 0 }, 0 },
        0.0f,
        0,
    };
    *dim = init;
    return true;
}

s32 Collider_DestroyJntSphElementDim(PlayState* play, ColliderJntSphElementDim* dim) {
    return true;
}

s32 Collider_SetJntSphElementDim(PlayState* play, ColliderJntSphElementDim* dest, ColliderJntSphElementDimInit* src) {
    dest->limb = src->limb;
    dest->modelSphere = src->modelSphere;
    dest->scale = src->scale * 0.01f;
    return true;
}

s32 Collider_InitJntSphElement(PlayState* play, ColliderJntSphElement* jntSphElem) {
    Collider_InitElement(play, &jntSphElem->base);
    Collider_InitJntSphElementDim(play, &jntSphElem->dim);
    return true;
}

s32 Collider_DestroyJntSphElement(PlayState* play, ColliderJntSphElement* jntSphElem) {
    Collider_DestroyElement(play, &jntSphElem->base);
    Collider_DestroyJntSphElementDim(play, &jntSphElem->dim);
    return true;
}

s32 Collider_SetJntSphElement(PlayState* play, ColliderJntSphElement* dest, ColliderJntSphElementInit* src) {
    Collider_SetElement(play, &dest->base, &src->base);
    Collider_SetJntSphElementDim(play, &dest->dim, &src->dim);
    return true;
}

s32 Collider_ResetJntSphElementAT(PlayState* play, ColliderJntSphElement* jntSphElem) {
    Collider_ResetATElement(play, &jntSphElem->base);
    return true;
}

s32 Collider_ResetJntSphElementAC(PlayState* play, ColliderJntSphElement* jntSphElem) {
    Collider_ResetACElement(play, &jntSphElem->base);
    return true;
}

s32 Collider_ResetJntSphElementOC(PlayState* play, ColliderJntSphElement* jntSphElem) {
    Collider_ResetOCElement(play, &jntSphElem->base);
    return true;
}

/**
 * Initializes a ColliderJntSph to default values
 */
s32 Collider_InitJntSph(PlayState* play, ColliderJntSph* jntSph) {
    Collider_InitBase(play, &jntSph->base);
    jntSph->count = 0;
    jntSph->elements = NULL;
    return true;
}

/**
 * Destroys a dynamically allocated ColliderJntSph
 */
s32 Collider_FreeJntSph(PlayState* play, ColliderJntSph* jntSph) {
    ColliderJntSphElement* jntSphElem;

    Collider_DestroyBase(play, &jntSph->base);
    for (jntSphElem = jntSph->elements; jntSphElem < jntSph->elements + jntSph->count; jntSphElem++) {
        Collider_DestroyJntSphElement(play, jntSphElem);
    }

    jntSph->count = 0;
    if (jntSph->elements != NULL) {
        ZELDA_ARENA_FREE(jntSph->elements, "../z_collision_check.c", 1393);
    }
    jntSph->elements = NULL;
    return true;
}

/**
 * Destroys a preallocated ColliderJntSph
 */
s32 Collider_DestroyJntSph(PlayState* play, ColliderJntSph* jntSph) {
    ColliderJntSphElement* jntSphElem;

    Collider_DestroyBase(play, &jntSph->base);
    for (jntSphElem = jntSph->elements; jntSphElem < jntSph->elements + jntSph->count; jntSphElem++) {
        Collider_DestroyJntSphElement(play, jntSphElem);
    }
    jntSph->count = 0;
    jntSph->elements = NULL;
    return true;
}

/**
 * Sets up the ColliderJntSph using the values in src, sets it to the actor specified in src, and dynamically allocates
 * the element array. Uses default OC2_TYPE_1 and COLTYPE_HIT0. Unused.
 */
s32 Collider_SetJntSphToActor(PlayState* play, ColliderJntSph* dest, ColliderJntSphInitToActor* src) {
    ColliderJntSphElement* destElem;
    ColliderJntSphElementInit* srcElem;

    Collider_SetBaseToActor(play, &dest->base, &src->base);
    dest->count = src->count;
    dest->elements = ZELDA_ARENA_MALLOC(src->count * sizeof(ColliderJntSphElement), "../z_collision_check.c", 1443);

    if (dest->elements == NULL) {
        dest->count = 0;
        PRINTF(VT_FGCOL(RED));
        PRINTF("ClObjJntSph_set():zelda_malloc()出来ません。\n"); // "Can not."
        PRINTF(VT_RST);
        return false;
    }

    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitJntSphElement(play, destElem);
        Collider_SetJntSphElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Sets up the ColliderJntSph using the values in src and dynamically allocates the element array. Uses default
 * OC2_TYPE_1. Only used by En_Nwc, an unused and unfinished actor.
 */
s32 Collider_SetJntSphAllocType1(PlayState* play, ColliderJntSph* dest, Actor* actor, ColliderJntSphInitType1* src) {
    ColliderJntSphElement* destElem;
    ColliderJntSphElementInit* srcElem;

    Collider_SetBaseType1(play, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->elements = ZELDA_ARENA_MALLOC(src->count * sizeof(ColliderJntSphElement), "../z_collision_check.c", 1490);

    if (dest->elements == NULL) {
        dest->count = 0;
        PRINTF(VT_FGCOL(RED));
        PRINTF("ClObjJntSph_set3():zelda_malloc_出来ません。\n"); // "Can not."
        PRINTF(VT_RST);
        return false;
    }

    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitJntSphElement(play, destElem);
        Collider_SetJntSphElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Sets up the ColliderJntSph using the values in src and dynamically allocates the element array.
 * Unused.
 */
s32 Collider_SetJntSphAlloc(PlayState* play, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src) {
    ColliderJntSphElement* destElem;
    ColliderJntSphElementInit* srcElem;

    Collider_SetBase(play, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->elements = ZELDA_ARENA_MALLOC(src->count * sizeof(ColliderJntSphElement), "../z_collision_check.c", 1551);

    if (dest->elements == NULL) {
        dest->count = 0;
        PRINTF(VT_FGCOL(RED));
        PRINTF("ClObjJntSph_set5():zelda_malloc出来ません\n"); // "Can not."
        PRINTF(VT_RST);
        return false;
    }
    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitJntSphElement(play, destElem);
        Collider_SetJntSphElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Sets up the ColliderJntSph using the values in src, placing the element array in elements.
 */
s32 Collider_SetJntSph(PlayState* play, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src,
                       ColliderJntSphElement* jntSphElements) {
    ColliderJntSphElement* destElem;
    ColliderJntSphElementInit* srcElem;

    Collider_SetBase(play, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->elements = jntSphElements;
    ASSERT(dest->elements != NULL, "pclobj_jntsph->elem_tbl != NULL", "../z_collision_check.c", 1603);

    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitJntSphElement(play, destElem);
        Collider_SetJntSphElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Resets the collider's AT collision flags.
 */
s32 Collider_ResetJntSphAT(PlayState* play, Collider* col) {
    ColliderJntSphElement* jntSphElem;
    ColliderJntSph* jntSph = (ColliderJntSph*)col;

    Collider_ResetATBase(play, &jntSph->base);

    for (jntSphElem = jntSph->elements; jntSphElem < jntSph->elements + jntSph->count; jntSphElem++) {
        Collider_ResetJntSphElementAT(play, jntSphElem);
    }
    return true;
}

/**
 * Resets the collider's AC collision flags.
 */
s32 Collider_ResetJntSphAC(PlayState* play, Collider* col) {
    ColliderJntSphElement* jntSphElem;
    ColliderJntSph* jntSph = (ColliderJntSph*)col;

    Collider_ResetACBase(play, &jntSph->base);

    for (jntSphElem = jntSph->elements; jntSphElem < jntSph->elements + jntSph->count; jntSphElem++) {
        Collider_ResetJntSphElementAC(play, jntSphElem);
    }
    return true;
}

/**
 * Resets the collider's OC collision flags.
 */
s32 Collider_ResetJntSphOC(PlayState* play, Collider* col) {
    ColliderJntSphElement* jntSphElem;
    ColliderJntSph* jntSph = (ColliderJntSph*)col;

    Collider_ResetOCBase(play, &jntSph->base);

    for (jntSphElem = jntSph->elements; jntSphElem < jntSph->elements + jntSph->count; jntSphElem++) {
        Collider_ResetJntSphElementOC(play, jntSphElem);
    }
    return true;
}

s32 Collider_InitCylinderDim(PlayState* play, Cylinder16* dim) {
    Cylinder16 init = { 0, 0, 0, { 0, 0, 0 } };

    *dim = init;
    return true;
}

s32 Collider_DestroyCylinderDim(PlayState* play, Cylinder16* dim) {
    return true;
}

s32 Collider_SetCylinderDim(PlayState* play, Cylinder16* dest, Cylinder16* src) {
    *dest = *src;
    return true;
}

/**
 * Initializes a ColliderCylinder to default values
 */
s32 Collider_InitCylinder(PlayState* play, ColliderCylinder* cyl) {
    Collider_InitBase(play, &cyl->base);
    Collider_InitElement(play, &cyl->elem);
    Collider_InitCylinderDim(play, &cyl->dim);
    return true;
}

/**
 * Destroys a ColliderCylinder
 */
s32 Collider_DestroyCylinder(PlayState* play, ColliderCylinder* cyl) {
    Collider_DestroyBase(play, &cyl->base);
    Collider_DestroyElement(play, &cyl->elem);
    Collider_DestroyCylinderDim(play, &cyl->dim);
    return true;
}

/**
 * Sets up the ColliderCylinder using the values in src and sets it to the actor specified in src. Uses default
 * OC2_TYPE_1 and COLTYPE_0. Used only by DekuJr, who sets it to himself anyways.
 */
s32 Collider_SetCylinderToActor(PlayState* play, ColliderCylinder* dest, ColliderCylinderInitToActor* src) {
    Collider_SetBaseToActor(play, &dest->base, &src->base);
    Collider_SetElement(play, &dest->elem, &src->elem);
    Collider_SetCylinderDim(play, &dest->dim, &src->dim);
    return true;
}

/**
 * Sets up the ColliderCylinder using the values in src. Uses default OC2_TYPE_1
 */
s32 Collider_SetCylinderType1(PlayState* play, ColliderCylinder* dest, Actor* actor, ColliderCylinderInitType1* src) {
    Collider_SetBaseType1(play, &dest->base, actor, &src->base);
    Collider_SetElement(play, &dest->elem, &src->elem);
    Collider_SetCylinderDim(play, &dest->dim, &src->dim);
    return true;
}

/**
 * Sets up the ColliderCylinder using the values in src.
 */
s32 Collider_SetCylinder(PlayState* play, ColliderCylinder* dest, Actor* actor, ColliderCylinderInit* src) {
    Collider_SetBase(play, &dest->base, actor, &src->base);
    Collider_SetElement(play, &dest->elem, &src->elem);
    Collider_SetCylinderDim(play, &dest->dim, &src->dim);
    return true;
}

/**
 * Resets the collider's AT collision flags.
 */
s32 Collider_ResetCylinderAT(PlayState* play, Collider* col) {
    ColliderCylinder* cyl = (ColliderCylinder*)col;

    Collider_ResetATBase(play, &cyl->base);
    Collider_ResetATElement(play, &cyl->elem);
    return true;
}

/**
 * Resets the collider's AC collision flags.
 */
s32 Collider_ResetCylinderAC(PlayState* play, Collider* col) {
    ColliderCylinder* cyl = (ColliderCylinder*)col;

    Collider_ResetACBase(play, &cyl->base);
    Collider_ResetACElement(play, &cyl->elem);
    return true;
}

/**
 * Resets the collider's OC collision flags.
 */
s32 Collider_ResetCylinderOC(PlayState* play, Collider* col) {
    ColliderCylinder* cyl = (ColliderCylinder*)col;

    Collider_ResetOCBase(play, &cyl->base);
    Collider_ResetOCElement(play, &cyl->elem);
    return true;
}

s32 Collider_InitTrisElementDim(PlayState* play, TriNorm* dim) {
    static TriNorm init = {
        { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } },
        { { 0.0f, 0.0f, 0.0f }, 0.0f },
    };

    *dim = init;
    return true;
}

s32 Collider_DestroyTrisElementDim(PlayState* play, TriNorm* dim) {
    return true;
}

s32 Collider_SetTrisElementDim(PlayState* play, TriNorm* dest, ColliderTrisElementDimInit* src) {
    Vec3f* destVtx;
    Vec3f* srcVtx;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 originDist;

    for (destVtx = dest->vtx, srcVtx = src->vtx; destVtx < dest->vtx + 3; destVtx++, srcVtx++) {
        *destVtx = *srcVtx;
    }

    Math3D_DefPlane(&src->vtx[0], &src->vtx[1], &src->vtx[2], &nx, &ny, &nz, &originDist);

    dest->plane.normal.x = nx;
    dest->plane.normal.y = ny;
    dest->plane.normal.z = nz;
    dest->plane.originDist = originDist;
    return true;
}

s32 Collider_InitTrisElement(PlayState* play, ColliderTrisElement* trisElem) {
    Collider_InitElement(play, &trisElem->base);
    Collider_InitTrisElementDim(play, &trisElem->dim);
    return true;
}

s32 Collider_DestroyTrisElement(PlayState* play, ColliderTrisElement* trisElem) {
    Collider_DestroyElement(play, &trisElem->base);
    Collider_DestroyTrisElementDim(play, &trisElem->dim);
    return true;
}

s32 Collider_SetTrisElement(PlayState* play, ColliderTrisElement* dest, ColliderTrisElementInit* src) {
    Collider_SetElement(play, &dest->base, &src->base);
    Collider_SetTrisElementDim(play, &dest->dim, &src->dim);
    return true;
}

s32 Collider_ResetTrisElementAT(PlayState* play, ColliderTrisElement* trisElem) {
    Collider_ResetATElement(play, &trisElem->base);
    return true;
}

s32 Collider_ResetTrisElementAC(PlayState* play, ColliderTrisElement* trisElem) {
    Collider_ResetACElement(play, &trisElem->base);
    return true;
}

s32 Collider_ResetTrisElementOC(PlayState* play, ColliderTrisElement* trisElem) {
    Collider_ResetOCElement(play, &trisElem->base);
    return true;
}

/**
 * Initializes a ColliderTris to default values
 */
s32 Collider_InitTris(PlayState* play, ColliderTris* tris) {
    Collider_InitBase(play, &tris->base);
    tris->count = 0;
    tris->elements = NULL;
    return true;
}

/**
 * Destroys a dynamically allocated ColliderTris
 * Unused
 */
s32 Collider_FreeTris(PlayState* play, ColliderTris* tris) {
    ColliderTrisElement* trisElem;

    Collider_DestroyBase(play, &tris->base);
    for (trisElem = tris->elements; trisElem < tris->elements + tris->count; trisElem++) {
        Collider_DestroyTrisElement(play, trisElem);
    }

    tris->count = 0;
    if (tris->elements != NULL) {
        ZELDA_ARENA_FREE(tris->elements, "../z_collision_check.c", 2099);
    }
    tris->elements = NULL;
    return true;
}

/**
 * Destroys a preallocated ColliderTris
 */
s32 Collider_DestroyTris(PlayState* play, ColliderTris* tris) {
    ColliderTrisElement* trisElem;

    Collider_DestroyBase(play, &tris->base);
    for (trisElem = tris->elements; trisElem < tris->elements + tris->count; trisElem++) {
        Collider_DestroyTrisElement(play, trisElem);
    }

    tris->count = 0;
    tris->elements = NULL;
    return true;
}

/**
 * Sets up the ColliderTris using the values in src and dynamically allocates the element array. Uses default OC2_TYPE_1
 * Unused.
 */
s32 Collider_SetTrisAllocType1(PlayState* play, ColliderTris* dest, Actor* actor, ColliderTrisInitType1* src) {
    ColliderTrisElement* destElem;
    ColliderTrisElementInit* srcElem;

    Collider_SetBaseType1(play, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->elements = ZELDA_ARENA_MALLOC(dest->count * sizeof(ColliderTrisElement), "../z_collision_check.c", 2156);
    if (dest->elements == NULL) {
        dest->count = 0;
        PRINTF(VT_FGCOL(RED));
        PRINTF("ClObjTris_set3():zelda_malloc()出来ません\n"); // "Can not."
        PRINTF(VT_RST);
        return false;
    }
    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitTrisElement(play, destElem);
        Collider_SetTrisElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Sets up the ColliderTris using the values in src and dynamically allocates the element array.
 * Unused
 */
s32 Collider_SetTrisAlloc(PlayState* play, ColliderTris* dest, Actor* actor, ColliderTrisInit* src) {
    ColliderTrisElement* destElem;
    ColliderTrisElementInit* srcElem;

    Collider_SetBase(play, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->elements = ZELDA_ARENA_MALLOC(dest->count * sizeof(ColliderTrisElement), "../z_collision_check.c", 2207);

    if (dest->elements == NULL) {
        PRINTF(VT_FGCOL(RED));
        PRINTF("ClObjTris_set5():zelda_malloc出来ません\n"); // "Can not."
        PRINTF(VT_RST);
        dest->count = 0;
        return false;
    }

    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitTrisElement(play, destElem);
        Collider_SetTrisElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Sets up the ColliderTris using the values in src, placing the element array in elements.
 */
s32 Collider_SetTris(PlayState* play, ColliderTris* dest, Actor* actor, ColliderTrisInit* src,
                     ColliderTrisElement* trisElements) {
    ColliderTrisElement* destElem;
    ColliderTrisElementInit* srcElem;

    Collider_SetBase(play, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->elements = trisElements;
    ASSERT(dest->elements != NULL, "pclobj_tris->elem_tbl != NULL", "../z_collision_check.c", 2258);

    for (destElem = dest->elements, srcElem = src->elements; destElem < dest->elements + dest->count;
         destElem++, srcElem++) {
        Collider_InitTrisElement(play, destElem);
        Collider_SetTrisElement(play, destElem, srcElem);
    }
    return true;
}

/**
 * Resets the collider's AT collision flags.
 */
s32 Collider_ResetTrisAT(PlayState* play, Collider* col) {
    ColliderTrisElement* trisElem;
    ColliderTris* tris = (ColliderTris*)col;

    Collider_ResetATBase(play, &tris->base);
    for (trisElem = tris->elements; trisElem < tris->elements + tris->count; trisElem++) {
        Collider_ResetTrisElementAT(play, trisElem);
    }
    return true;
}

/**
 * Resets the collider's AC collision flags.
 */
s32 Collider_ResetTrisAC(PlayState* play, Collider* col) {
    ColliderTrisElement* trisElem;
    ColliderTris* tris = (ColliderTris*)col;

    Collider_ResetACBase(play, &tris->base);
    for (trisElem = tris->elements; trisElem < tris->elements + tris->count; trisElem++) {
        Collider_ResetTrisElementAC(play, trisElem);
    }
    return true;
}

/**
 * Resets the collider's OC collision flags.
 */
s32 Collider_ResetTrisOC(PlayState* play, Collider* col) {
    ColliderTrisElement* trisElem;
    ColliderTris* tris = (ColliderTris*)col;

    Collider_ResetOCBase(play, &tris->base);
    for (trisElem = tris->elements; trisElem < tris->elements + tris->count; trisElem++) {
        Collider_ResetTrisElementOC(play, trisElem);
    }
    return true;
}

s32 Collider_InitQuadDim(PlayState* play, ColliderQuadDim* dim) {
    static ColliderQuadDim init = {
        { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } },
        { 0, 0, 0 },
        { 0, 0, 0 },
        1.0e38f,
    };

    *dim = init;
    return true;
}

s32 Collider_DestroyQuadDim(PlayState* play, ColliderQuadDim* dim) {
    return true;
}

s32 Collider_ResetQuadACDist(PlayState* play, ColliderQuadDim* dim) {
    dim->acDistSq = 1.0e38f;
    return true;
}

void Collider_SetQuadMidpoints(ColliderQuadDim* dim) {
    dim->dcMid.x = (dim->quad[3].x + dim->quad[2].x) * 0.5f;
    dim->dcMid.y = (dim->quad[3].y + dim->quad[2].y) * 0.5f;
    dim->dcMid.z = (dim->quad[3].z + dim->quad[2].z) * 0.5f;
    dim->baMid.x = (dim->quad[1].x + dim->quad[0].x) * 0.5f;
    dim->baMid.y = (dim->quad[1].y + dim->quad[0].y) * 0.5f;
    dim->baMid.z = (dim->quad[1].z + dim->quad[0].z) * 0.5f;
}

s32 Collider_SetQuadDim(PlayState* play, ColliderQuadDim* dest, ColliderQuadDimInit* src) {
    dest->quad[0] = src->quad[0];
    dest->quad[1] = src->quad[1];
    dest->quad[2] = src->quad[2];
    dest->quad[3] = src->quad[3];
    Collider_SetQuadMidpoints(dest);
    return true;
}

/**
 * Initializes a ColliderQuad to default values.
 */
s32 Collider_InitQuad(PlayState* play, ColliderQuad* quad) {
    Collider_InitBase(play, &quad->base);
    Collider_InitElement(play, &quad->elem);
    Collider_InitQuadDim(play, &quad->dim);
    return true;
}

/**
 * Destroys a ColliderQuad.
 */
s32 Collider_DestroyQuad(PlayState* play, ColliderQuad* quad) {
    Collider_DestroyBase(play, &quad->base);
    Collider_DestroyElement(play, &quad->elem);
    Collider_DestroyQuadDim(play, &quad->dim);
    return true;
}

/**
 * Sets up the ColliderQuad using the values in src. Uses the default OC2_TYPE_1
 */
s32 Collider_SetQuadType1(PlayState* play, ColliderQuad* dest, Actor* actor, ColliderQuadInitType1* src) {
    Collider_SetBaseType1(play, &dest->base, actor, &src->base);
    Collider_SetElement(play, &dest->elem, &src->elem);
    Collider_SetQuadDim(play, &dest->dim, &src->dim);
    return true;
}

/**
 * Sets up the ColliderQuad using the values in src.
 */
s32 Collider_SetQuad(PlayState* play, ColliderQuad* dest, Actor* actor, ColliderQuadInit* src) {
    Collider_SetBase(play, &dest->base, actor, &src->base);
    Collider_SetElement(play, &dest->elem, &src->elem);
    Collider_SetQuadDim(play, &dest->dim, &src->dim);
    return true;
}

/**
 * Resets the collider's AT collision flags.
 */
s32 Collider_ResetQuadAT(PlayState* play, Collider* col) {
    ColliderQuad* quad = (ColliderQuad*)col;

    Collider_ResetATBase(play, &quad->base);
    Collider_ResetATElement(play, &quad->elem);
    Collider_ResetQuadACDist(play, &quad->dim);
    return true;
}

/**
 * Resets the collider's AC collision flags.
 */
s32 Collider_ResetQuadAC(PlayState* play, Collider* col) {
    ColliderQuad* quad = (ColliderQuad*)col;

    Collider_ResetACBase(play, &quad->base);
    Collider_ResetACElement(play, &quad->elem);
    return true;
}

/**
 * Resets the collider's OC collision flags.
 */
s32 Collider_ResetQuadOC(PlayState* play, Collider* col) {
    ColliderQuad* quad = (ColliderQuad*)col;

    Collider_ResetOCBase(play, &quad->base);
    Collider_ResetOCElement(play, &quad->elem);
    return true;
}

/**
 * For quad colliders with AT_NEAREST, resets the previous AC collider it hit if the current element is closer,
 * otherwise returns false. Used on player AT colliders to prevent multiple collisions from registering.
 */
s32 Collider_QuadSetNearestAC(PlayState* play, ColliderQuad* quad, Vec3f* hitPos) {
    f32 acDistSq;
    Vec3f dcMid;

    if (!(quad->elem.atElemFlags & ATELEM_NEAREST)) {
        return true;
    }
    Math_Vec3s_ToVec3f(&dcMid, &quad->dim.dcMid);
    acDistSq = Math3D_Vec3fDistSq(&dcMid, hitPos);
    if (acDistSq < quad->dim.acDistSq) {
        quad->dim.acDistSq = acDistSq;
        if (quad->elem.atHit != NULL) {
            Collider_ResetACBase(play, quad->elem.atHit);
        }
        if (quad->elem.atHitElem != NULL) {
            Collider_ResetACElement(play, quad->elem.atHitElem);
        }
        return true;
    }
    return false;
}

/**
 * Initializes an OcLine to default values
 * OcLines are entirely unused.
 */
s32 Collider_InitLine(PlayState* play, OcLine* line) {
    Vec3f init = { 0.0f, 0.0f, 0.0f };

    Math_Vec3f_Copy(&line->line.a, &init);
    Math_Vec3f_Copy(&line->line.b, &init);
    return true;
}

/**
 * Destroys an OcLine
 * OcLines are entirely unused.
 */
s32 Collider_DestroyLine(PlayState* play, OcLine* line) {
    return true;
}

/**
 * Sets up an OcLine with endpoints a and b.
 * OcLines are entirely unused.
 */
s32 Collider_SetLinePoints(PlayState* play, OcLine* ocLine, Vec3f* a, Vec3f* b) {
    Math_Vec3f_Copy(&ocLine->line.a, a);
    Math_Vec3f_Copy(&ocLine->line.b, b);
    return true;
}

/**
 * Sets up an OcLine using the values in src.
 * OcLines are entirely unused.
 */
s32 Collider_SetLine(PlayState* play, OcLine* dest, OcLine* src) {
    dest->ocFlags = src->ocFlags;
    Collider_SetLinePoints(play, dest, &src->line.a, &src->line.b);
    return true;
}

/**
 * Resets the OcLine's collision flags.
 * OcLines are entirely unused.
 */
s32 Collider_ResetLineOC(PlayState* play, OcLine* line) {
    line->ocFlags &= ~OCLINE_HIT;
    return true;
}

/**
 * Initializes CollisionCheckContext. Clears all collider arrays, disables SAC, and sets flags for drawing colliders.
 */
void CollisionCheck_InitContext(PlayState* play, CollisionCheckContext* colChkCtx) {
    colChkCtx->sacFlags = 0;
    CollisionCheck_ClearContext(play, colChkCtx);

#if OOT_DEBUG
    AREG(21) = true;
    AREG(22) = true;
    AREG(23) = true;
#endif
}

void CollisionCheck_DestroyContext(PlayState* play, CollisionCheckContext* colChkCtx) {
}

/**
 * Clears all collider lists in CollisionCheckContext when not in SAC mode.
 */
void CollisionCheck_ClearContext(PlayState* play, CollisionCheckContext* colChkCtx) {
    Collider** colP;
    OcLine** lineP;

    if (!(colChkCtx->sacFlags & SAC_ENABLE)) {
        colChkCtx->colATCount = 0;
        colChkCtx->colACCount = 0;
        colChkCtx->colOCCount = 0;
        colChkCtx->colLineCount = 0;
        for (colP = colChkCtx->colAT; colP < colChkCtx->colAT + COLLISION_CHECK_AT_MAX; colP++) {
            *colP = NULL;
        }

        for (colP = colChkCtx->colAC; colP < colChkCtx->colAC + COLLISION_CHECK_AC_MAX; colP++) {
            *colP = NULL;
        }

        for (colP = colChkCtx->colOC; colP < colChkCtx->colOC + COLLISION_CHECK_OC_MAX; colP++) {
            *colP = NULL;
        }

        for (lineP = colChkCtx->colLine; lineP < colChkCtx->colLine + COLLISION_CHECK_OC_LINE_MAX; lineP++) {
            *lineP = NULL;
        }
    }
}

/**
 * Enables SAC, an alternate collision check mode that allows direct management of collider lists. Unused.
 */
void CollisionCheck_EnableSAC(PlayState* play, CollisionCheckContext* colChkCtx) {
    colChkCtx->sacFlags |= SAC_ENABLE;
}

/**
 * Disables SAC, an alternate collision check mode that allows direct management of collider lists. Unused.
 */
void CollisionCheck_DisableSAC(PlayState* play, CollisionCheckContext* colChkCtx) {
    colChkCtx->sacFlags &= ~SAC_ENABLE;
}

#if OOT_DEBUG
/**
 * Draws a collider of any shape.
 * Math3D_DrawSphere and Math3D_DrawCylinder are noops, so JntSph and Cylinder are not drawn.
 */
void Collider_Draw(PlayState* play, Collider* col) {
    ColliderJntSph* jntSph;
    ColliderCylinder* cyl;
    ColliderTris* tris;
    ColliderQuad* quad;
    s32 i;

    if (col == NULL) {
        return;
    }
    switch (col->shape) {
        case COLSHAPE_JNTSPH:
            jntSph = (ColliderJntSph*)col;
            for (i = 0; i < jntSph->count; i++) {
                Math3D_DrawSphere(play, &jntSph->elements[i].dim.worldSphere);
            }
            break;

        case COLSHAPE_CYLINDER:
            cyl = (ColliderCylinder*)col;
            Math3D_DrawCylinder(play, &cyl->dim);
            break;

        case COLSHAPE_TRIS:
            tris = (ColliderTris*)col;
            for (i = 0; i < tris->count; i++) {
                Collider_DrawRedPoly(play->state.gfxCtx, &tris->elements[i].dim.vtx[0], &tris->elements[i].dim.vtx[1],
                                     &tris->elements[i].dim.vtx[2]);
            }
            break;

        case COLSHAPE_QUAD:
            quad = (ColliderQuad*)col;
            Collider_DrawRedPoly(play->state.gfxCtx, &quad->dim.quad[2], &quad->dim.quad[3], &quad->dim.quad[1]);
            Collider_DrawRedPoly(play->state.gfxCtx, &quad->dim.quad[1], &quad->dim.quad[0], &quad->dim.quad[2]);
            break;
    }
}

/**
 * Draws collision if AREG(15) and other AREGs are set. AREG(21) draws AT colliders, AREG(22) draws AC colliders,
 * AREG(23) draws OC colliders, AREG(24) draws dynapolys, and AREG(25) draws bg polys
 */
void CollisionCheck_DrawCollision(PlayState* play, CollisionCheckContext* colChkCtx) {
    Collider* col;
    s32 i;

    if (AREG(15)) {
        if (AREG(21)) {
            for (i = 0; i < colChkCtx->colATCount; i++) {
                Collider_Draw(play, colChkCtx->colAT[i]);
            }
        }
        if (AREG(22)) {
            for (i = 0; i < colChkCtx->colACCount; i++) {
                Collider_Draw(play, colChkCtx->colAC[i]);
            }
        }
        if (AREG(23)) {
            for (i = 0; i < colChkCtx->colOCCount; i++) {
                col = colChkCtx->colOC[i];
                if (col->ocFlags1 & OC1_ON) {
                    Collider_Draw(play, col);
                }
            }
        }
        if (AREG(24)) {
            BgCheck_DrawDynaCollision(play, &play->colCtx);
        }
        if (AREG(25)) {
            BgCheck_DrawStaticCollision(play, &play->colCtx);
        }
    }
}
#endif

static ColChkResetFunc sATResetFuncs[] = {
    Collider_ResetJntSphAT,
    Collider_ResetCylinderAT,
    Collider_ResetTrisAT,
    Collider_ResetQuadAT,
};

/**
 * Sets collider as an AT (attack) for the current frame, which will be checked against ACs (attack colliders)
 * The last argument takes a Collider, so pass collider.base rather than the raw collider.
 */
s32 CollisionCheck_SetAT(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider) {
    s32 index;

    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }
    ASSERT(collider->shape < COLSHAPE_MAX, "pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 2997);
    sATResetFuncs[collider->shape](play, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->colATCount >= COLLISION_CHECK_AT_MAX) {
        // "Index exceeded and cannot add more"
        PRINTF("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
        return -1;
    }
    if (colChkCtx->sacFlags & SAC_ENABLE) {
        return -1;
    }
    index = colChkCtx->colATCount;
    colChkCtx->colAT[colChkCtx->colATCount++] = collider;
    return index;
}

/**
 * Unused. Sets collider as an AT (attack) for the current frame, which will be checked against ACs (attack colliders).
 * If CollisionCheck_SAC is enabled, the collider will be inserted into the list at the specified index, otherwise it
 * will be inserted into the next slot
 */
s32 CollisionCheck_SetAT_SAC(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider, s32 index) {
    ASSERT(collider->shape < COLSHAPE_MAX, "pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3037);
    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }
    sATResetFuncs[collider->shape](play, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->sacFlags & SAC_ENABLE) {
        if (!(index < colChkCtx->colATCount)) {
            // "You are trying to register a location that is larger than the total number of data."
            PRINTF("CollisionCheck_setAT_SAC():全データ数より大きいところに登録しようとしている。\n");
            return -1;
        }
        colChkCtx->colAT[index] = collider;
    } else {
        if (!(colChkCtx->colATCount < COLLISION_CHECK_AT_MAX)) {
            // "Index exceeded and cannot add more"
            PRINTF("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
            return -1;
        }
        index = colChkCtx->colATCount;
        colChkCtx->colAT[colChkCtx->colATCount++] = collider;
    }
    return index;
}

static ColChkResetFunc sACResetFuncs[] = {
    Collider_ResetJntSphAC,
    Collider_ResetCylinderAC,
    Collider_ResetTrisAC,
    Collider_ResetQuadAC,
};

/**
 * Sets collider as an AC (attack collider) for the current frame, allowing it to detect ATs (attacks)
 * The last argument takes a Collider, so pass collider.base rather than the raw collider.
 */
s32 CollisionCheck_SetAC(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider) {
    s32 index;

    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }
    ASSERT(collider->shape < COLSHAPE_MAX, "pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3114);
    sACResetFuncs[collider->shape](play, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->colACCount >= COLLISION_CHECK_AC_MAX) {
        // "Index exceeded and cannot add more"
        PRINTF("CollisionCheck_setAC():インデックスがオーバして追加不能\n");
        return -1;
    }
    if (colChkCtx->sacFlags & SAC_ENABLE) {
        return -1;
    }
    index = colChkCtx->colACCount;
    colChkCtx->colAC[colChkCtx->colACCount++] = collider;
    return index;
}

/**
 * Unused. Sets collider as an AC (attack collider) for the current frame, allowing it to detect ATs (attacks).
 * If CollisionCheck_SAC is enabled, the collider will be inserted into the list at the specified index, otherwise it
 * will be inserted into the next slot
 */
s32 CollisionCheck_SetAC_SAC(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider, s32 index) {
    ASSERT(collider->shape < COLSHAPE_MAX, "pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3153);
    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }
    sACResetFuncs[collider->shape](play, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->sacFlags & SAC_ENABLE) {
        if (!(index < colChkCtx->colACCount)) {
            // "You are trying to register a location that is larger than the total number of data."
            PRINTF("CollisionCheck_setAC_SAC():全データ数より大きいところに登録しようとしている。\n");
            return -1;
        }
        colChkCtx->colAC[index] = collider;
    } else {
        if (!(colChkCtx->colACCount < COLLISION_CHECK_AC_MAX)) {
            // "Index exceeded and cannot add more"
            PRINTF("CollisionCheck_setAC():インデックスがオーバして追加不能\n");
            return -1;
        }
        index = colChkCtx->colACCount;
        colChkCtx->colAC[colChkCtx->colACCount++] = collider;
    }
    return index;
}

static ColChkResetFunc sOCResetFuncs[] = {
    Collider_ResetJntSphOC,
    Collider_ResetCylinderOC,
    Collider_ResetTrisOC,
    Collider_ResetQuadOC,
};

/**
 * Sets collider as an OC (object collider) for the current frame, allowing it to detect other OCs
 * The last argument takes a Collider, so pass collider.base rather than the raw collider.
 */
s32 CollisionCheck_SetOC(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider) {
    s32 index;

    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }

    ASSERT(collider->shape < COLSHAPE_MAX, "pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3229);

    sOCResetFuncs[collider->shape](play, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->colOCCount >= COLLISION_CHECK_OC_MAX) {
        // "Index exceeded and cannot add more"
        PRINTF("CollisionCheck_setOC():インデックスがオーバして追加不能\n");
        return -1;
    }
    if (colChkCtx->sacFlags & SAC_ENABLE) {
        return -1;
    }
    index = colChkCtx->colOCCount;
    colChkCtx->colOC[colChkCtx->colOCCount++] = collider;
    return index;
}

/**
 * Unused. Sets collider as an OC (object collider) for the current frame, allowing it to detect other OCs
 * If CollisionCheck_SAC is enabled, the collider will be inserted into the list at the specified index, otherwise it
 * will be inserted into the next slot
 */
s32 CollisionCheck_SetOC_SAC(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider, s32 index) {
    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }
    ASSERT(collider->shape < COLSHAPE_MAX, "pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3274);
    sOCResetFuncs[collider->shape](play, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->sacFlags & SAC_ENABLE) {
        if (!(index < colChkCtx->colOCCount)) {
            // "You are trying to register a location that is larger than the total number of data."
            PRINTF("CollisionCheck_setOC_SAC():全データ数より大きいところに登録しようとしている。\n");
            return -1;
        }
        //! @bug Should be colOC
        colChkCtx->colAT[index] = collider;
    } else {
        if (!(colChkCtx->colOCCount < COLLISION_CHECK_OC_MAX)) {
            // "Index exceeded and cannot add more"
            PRINTF("CollisionCheck_setOC():インデックスがオーバして追加不能\n");
            return -1;
        }
        index = colChkCtx->colOCCount;
        colChkCtx->colOC[colChkCtx->colOCCount++] = collider;
    }
    return index;
}

/**
 * Sets a line as an OC collider for this frame.
 * OC lines are entirely unused, and do not even have collision check functions.
 */
s32 CollisionCheck_SetOCLine(PlayState* play, CollisionCheckContext* colChkCtx, OcLine* collider) {
    s32 index;

    if (FrameAdvance_IsEnabled(play) == true) {
        return -1;
    }
    Collider_ResetLineOC(play, collider);
    if (!(colChkCtx->colLineCount < COLLISION_CHECK_OC_LINE_MAX)) {
        // "Index exceeded and cannot add more"
        PRINTF("CollisionCheck_setOCLine():インデックスがオーバして追加不能\n");
        return -1;
    }
    index = colChkCtx->colLineCount;
    colChkCtx->colLine[colChkCtx->colLineCount++] = collider;
    return index;
}

s32 CollisionCheck_IsElementNotAT(ColliderElement* elem) {
    if (!(elem->atElemFlags & ATELEM_ON)) {
        return true;
    }
    return false;
}

s32 CollisionCheck_IsElementNotAC(ColliderElement* elem) {
    if (!(elem->acElemFlags & ACELEM_ON)) {
        return true;
    }
    return false;
}

/**
 * If the AT element has no dmgFlags in common with the AC element, no collision happens.
 */
s32 CollisionCheck_NoSharedFlags(ColliderElement* atElem, ColliderElement* acElem) {
    if (!(atElem->atDmgInfo.dmgFlags & acElem->acDmgInfo.dmgFlags)) {
        return true;
    }
    return false;
}

/**
 * Spawns no blood drops.
 * Used by collider types HIT1, HIT3, HIT5, METAL, NONE, WOOD, HARD, and TREE
 */
void CollisionCheck_NoBlood(PlayState* play, Collider* collider, Vec3f* v) {
}

/**
 * Spawns blue blood drops.
 * Used by collider types HIT0 and HIT8.
 */
void CollisionCheck_BlueBlood(PlayState* play, Collider* collider, Vec3f* v) {
    static EffectSparkInit sparkInit;
    s32 effectIndex;

    sparkInit.position.x = v->x;
    sparkInit.position.y = v->y;
    sparkInit.position.z = v->z;
    sparkInit.uDiv = 5;
    sparkInit.vDiv = 5;
    sparkInit.colorStart[0].r = 10;
    sparkInit.colorStart[0].g = 10;
    sparkInit.colorStart[0].b = 200;
    sparkInit.colorStart[0].a = 255;
    sparkInit.colorStart[1].r = 0;
    sparkInit.colorStart[1].g = 0;
    sparkInit.colorStart[1].b = 128;
    sparkInit.colorStart[1].a = 255;
    sparkInit.colorStart[2].r = 0;
    sparkInit.colorStart[2].g = 0;
    sparkInit.colorStart[2].b = 128;
    sparkInit.colorStart[2].a = 255;
    sparkInit.colorStart[3].r = 0;
    sparkInit.colorStart[3].g = 0;
    sparkInit.colorStart[3].b = 128;
    sparkInit.colorStart[3].a = 255;
    sparkInit.colorEnd[0].r = 0;
    sparkInit.colorEnd[0].g = 0;
    sparkInit.colorEnd[0].b = 32;
    sparkInit.colorEnd[0].a = 0;
    sparkInit.colorEnd[1].r = 0;
    sparkInit.colorEnd[1].g = 0;
    sparkInit.colorEnd[1].b = 32;
    sparkInit.colorEnd[1].a = 0;
    sparkInit.colorEnd[2].r = 0;
    sparkInit.colorEnd[2].g = 0;
    sparkInit.colorEnd[2].b = 64;
    sparkInit.colorEnd[2].a = 0;
    sparkInit.colorEnd[3].r = 0;
    sparkInit.colorEnd[3].g = 0;
    sparkInit.colorEnd[3].b = 64;
    sparkInit.colorEnd[3].a = 0;
    sparkInit.timer = 0;
    sparkInit.duration = 16;
    sparkInit.speed = 8.0f;
    sparkInit.gravity = -1.0f;

    Effect_Add(play, &effectIndex, EFFECT_SPARK, 0, 1, &sparkInit);
}

/**
 * Spawns green blood drops.
 * Used by collider types HIT2 and HIT6. No actor has type HIT2.
 */
void CollisionCheck_GreenBlood(PlayState* play, Collider* collider, Vec3f* v) {
    static EffectSparkInit sparkInit;
    s32 effectIndex;

    sparkInit.position.x = v->x;
    sparkInit.position.y = v->y;
    sparkInit.position.z = v->z;
    sparkInit.uDiv = 5;
    sparkInit.vDiv = 5;
    sparkInit.colorStart[0].r = 10;
    sparkInit.colorStart[0].g = 200;
    sparkInit.colorStart[0].b = 10;
    sparkInit.colorStart[0].a = 255;
    sparkInit.colorStart[1].r = 0;
    sparkInit.colorStart[1].g = 128;
    sparkInit.colorStart[1].b = 0;
    sparkInit.colorStart[1].a = 255;
    sparkInit.colorStart[2].r = 0;
    sparkInit.colorStart[2].g = 128;
    sparkInit.colorStart[2].b = 0;
    sparkInit.colorStart[2].a = 255;
    sparkInit.colorStart[3].r = 0;
    sparkInit.colorStart[3].g = 128;
    sparkInit.colorStart[3].b = 0;
    sparkInit.colorStart[3].a = 255;
    sparkInit.colorEnd[0].r = 0;
    sparkInit.colorEnd[0].g = 32;
    sparkInit.colorEnd[0].b = 0;
    sparkInit.colorEnd[0].a = 0;
    sparkInit.colorEnd[1].r = 0;
    sparkInit.colorEnd[1].g = 32;
    sparkInit.colorEnd[1].b = 0;
    sparkInit.colorEnd[1].a = 0;
    sparkInit.colorEnd[2].r = 0;
    sparkInit.colorEnd[2].g = 64;
    sparkInit.colorEnd[2].b = 0;
    sparkInit.colorEnd[2].a = 0;
    sparkInit.colorEnd[3].r = 0;
    sparkInit.colorEnd[3].g = 64;
    sparkInit.colorEnd[3].b = 0;
    sparkInit.colorEnd[3].a = 0;
    sparkInit.timer = 0;
    sparkInit.duration = 16;
    sparkInit.speed = 8.0f;
    sparkInit.gravity = -1.0f;

    Effect_Add(play, &effectIndex, EFFECT_SPARK, 0, 1, &sparkInit);
}

/**
 * Spawns a burst of water.
 * Used by collider type HIT4, which no actor has.
 */
void CollisionCheck_WaterBurst(PlayState* play, Collider* collider, Vec3f* pos) {
    EffectSsSibuki_SpawnBurst(play, pos);
    CollisionCheck_SpawnWaterDroplets(play, pos);
}

/**
 * Spawns red blood drops.
 * Used by collider type HIT7, which no actor has.
 */
void CollisionCheck_RedBlood(PlayState* play, Collider* collider, Vec3f* v) {
    CollisionCheck_SpawnRedBlood(play, v);
}

/**
 * Spawns red blood drops.
 * Unused.
 */
void CollisionCheck_RedBloodUnused(PlayState* play, Collider* collider, Vec3f* v) {
    CollisionCheck_SpawnRedBlood(play, v);
}

/**
 * Plays sound effects and displays hitmarks for solid-type AC colliders (METAL, WOOD, HARD, and TREE)
 */
void CollisionCheck_HitSolid(PlayState* play, ColliderElement* elem, Collider* collider, Vec3f* hitPos) {
    s32 flags = elem->atElemFlags & ATELEM_SFX_MASK;

    if (flags == ATELEM_SFX_NORMAL && collider->colType != COLTYPE_METAL) {
        EffectSsHitMark_SpawnFixedScale(play, EFFECT_HITMARK_WHITE, hitPos);
        if (collider->actor == NULL) {
            Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_BOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    } else if (flags == ATELEM_SFX_NORMAL) { // collider->colType == COLTYPE_METAL
        EffectSsHitMark_SpawnFixedScale(play, EFFECT_HITMARK_METAL, hitPos);
        if (collider->actor == NULL) {
            CollisionCheck_SpawnShieldParticlesMetal(play, hitPos);
        } else {
            CollisionCheck_SpawnShieldParticlesMetalSfx(play, hitPos, &collider->actor->projectedPos);
        }
    } else if (flags == ATELEM_SFX_HARD) {
        EffectSsHitMark_SpawnFixedScale(play, EFFECT_HITMARK_WHITE, hitPos);
        if (collider->actor == NULL) {
            Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_BOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    } else if (flags == ATELEM_SFX_WOOD) {
        EffectSsHitMark_SpawnFixedScale(play, EFFECT_HITMARK_DUST, hitPos);
        if (collider->actor == NULL) {
            Audio_PlaySfxGeneral(NA_SE_IT_REFLECTION_WOOD, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            Audio_PlaySfxGeneral(NA_SE_IT_REFLECTION_WOOD, &collider->actor->projectedPos, 4,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }
}

/**
 * Plays a hit sound effect for AT colliders attached to Player based on the AC element's elemType.
 */
s32 CollisionCheck_SwordHitAudio(Collider* atCol, ColliderElement* acElem) {
    if (atCol->actor != NULL && atCol->actor->category == ACTORCAT_PLAYER) {
        if (acElem->elemType == ELEMTYPE_UNK0) {
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_STRIKE, &atCol->actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else if (acElem->elemType == ELEMTYPE_UNK1) {
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_STRIKE_HARD, &atCol->actor->projectedPos, 4,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else if (acElem->elemType == ELEMTYPE_UNK2) {
            Audio_PlaySfxGeneral(NA_SE_NONE, &atCol->actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else if (acElem->elemType == ELEMTYPE_UNK3) {
            Audio_PlaySfxGeneral(NA_SE_NONE, &atCol->actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }
    return true;
}

typedef struct {
    /* 0x0 */ u8 blood;
    /* 0x1 */ u8 effect;
} HitInfo; // size = 0x2

typedef enum {
    /* 0 */ BLOOD_NONE,
    /* 1 */ BLOOD_BLUE,
    /* 2 */ BLOOD_GREEN,
    /* 3 */ BLOOD_WATER,
    /* 4 */ BLOOD_RED,
    /* 5 */ BLOOD_RED2
} ColChkBloodType;

typedef enum {
    /* 0 */ HIT_WHITE,
    /* 1 */ HIT_DUST,
    /* 2 */ HIT_RED,
    /* 3 */ HIT_SOLID,
    /* 4 */ HIT_WOOD,
    /* 5 */ HIT_NONE
} ColChkHitType;

typedef void (*ColChkBloodFunc)(PlayState*, Collider*, Vec3f*);

static ColChkBloodFunc sBloodFuncs[] = {
    CollisionCheck_NoBlood,        // BLOOD_NONE
    CollisionCheck_BlueBlood,      // BLOOD_BLUE
    CollisionCheck_GreenBlood,     // BLOOD_GREEN
    CollisionCheck_WaterBurst,     // BLOOD_WATER
    CollisionCheck_RedBlood,       // BLOOD_RED
    CollisionCheck_RedBloodUnused, // BLOOD_RED2
};

static HitInfo sHitInfo[] = {
    { BLOOD_BLUE, HIT_WHITE },  // COLTYPE_HIT0
    { BLOOD_NONE, HIT_DUST },   // COLTYPE_HIT1
    { BLOOD_GREEN, HIT_DUST },  // COLTYPE_HIT2
    { BLOOD_NONE, HIT_WHITE },  // COLTYPE_HIT3
    { BLOOD_WATER, HIT_NONE },  // COLTYPE_HIT4
    { BLOOD_NONE, HIT_RED },    // COLTYPE_HIT5
    { BLOOD_GREEN, HIT_WHITE }, // COLTYPE_HIT6
    { BLOOD_RED, HIT_WHITE },   // COLTYPE_HIT7
    { BLOOD_BLUE, HIT_RED },    // COLTYPE_HIT8
    { BLOOD_NONE, HIT_SOLID },  // COLTYPE_METAL
    { BLOOD_NONE, HIT_NONE },   // COLTYPE_NONE
    { BLOOD_NONE, HIT_SOLID },  // COLTYPE_WOOD
    { BLOOD_NONE, HIT_SOLID },  // COLTYPE_HARD
    { BLOOD_NONE, HIT_WOOD },   // COLTYPE_TREE
};

/**
 * Handles hitmarks, blood, and sound effects for each AC collision, determined by the AC collider's colType
 */
void CollisionCheck_HitEffects(PlayState* play, Collider* atCol, ColliderElement* atElem, Collider* acCol,
                               ColliderElement* acElem, Vec3f* hitPos) {
    if (acElem->acElemFlags & ACELEM_NO_HITMARK) {
        return;
    }
    if (!(atElem->atElemFlags & ATELEM_AT_HITMARK) && atElem->atElemFlags & ATELEM_DREW_HITMARK) {
        return;
    }
    if (acCol->actor != NULL) {
        sBloodFuncs[sHitInfo[acCol->colType].blood](play, acCol, hitPos);
    }
    if (acCol->actor != NULL) {
        if (sHitInfo[acCol->colType].effect == HIT_SOLID) {
            CollisionCheck_HitSolid(play, atElem, acCol, hitPos);
        } else if (sHitInfo[acCol->colType].effect == HIT_WOOD) {
            if (atCol->actor == NULL) {
                CollisionCheck_SpawnShieldParticles(play, hitPos);
                Audio_PlaySfxGeneral(NA_SE_IT_REFLECTION_WOOD, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            } else {
                CollisionCheck_SpawnShieldParticlesWood(play, hitPos, &atCol->actor->projectedPos);
            }
        } else if (sHitInfo[acCol->colType].effect != HIT_NONE) {
            EffectSsHitMark_SpawnFixedScale(play, sHitInfo[acCol->colType].effect, hitPos);
            if (!(acElem->acElemFlags & ACELEM_NO_SWORD_SFX)) {
                CollisionCheck_SwordHitAudio(atCol, acElem);
            }
        }
    } else {
        EffectSsHitMark_SpawnFixedScale(play, EFFECT_HITMARK_WHITE, hitPos);
        if (acCol->actor == NULL) {
            Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_BOUND, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_BOUND, &acCol->actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }
}

/**
 * Sets the flags to indicate an attack bounced off an AC_HARD collider.
 */
void CollisionCheck_SetBounce(Collider* atCol, Collider* acCol) {
    atCol->atFlags |= AT_BOUNCED;
    acCol->acFlags |= AC_BOUNCED;
}

/**
 * Performs the AC collision between the AT element and AC element that collided.
 */
s32 CollisionCheck_SetATvsAC(PlayState* play, Collider* atCol, ColliderElement* atElem, Vec3f* atPos, Collider* acCol,
                             ColliderElement* acElem, Vec3f* acPos, Vec3f* hitPos) {
    if (acCol->acFlags & AC_HARD && atCol->actor != NULL && acCol->actor != NULL) {
        CollisionCheck_SetBounce(atCol, acCol);
    }
    if (!(acElem->acElemFlags & ACELEM_NO_AT_INFO)) {
        atCol->atFlags |= AT_HIT;
        atCol->at = acCol->actor;
        atElem->atHit = acCol;
        atElem->atHitElem = acElem;
        atElem->atElemFlags |= ATELEM_HIT;
        if (atCol->actor != NULL) {
            atCol->actor->colChkInfo.atHitEffect = acElem->acDmgInfo.effect;
        }
    }
    acCol->acFlags |= AC_HIT;
    acCol->ac = atCol->actor;
    acElem->acHit = atCol;
    acElem->acHitElem = atElem;
    acElem->acElemFlags |= ACELEM_HIT;
    if (acCol->actor != NULL) {
        acCol->actor->colChkInfo.acHitEffect = atElem->atDmgInfo.effect;
    }
    acElem->acDmgInfo.hitPos.x = hitPos->x;
    acElem->acDmgInfo.hitPos.y = hitPos->y;
    acElem->acDmgInfo.hitPos.z = hitPos->z;
    if (!(atElem->atElemFlags & ATELEM_AT_HITMARK) && acCol->colType != COLTYPE_METAL &&
        acCol->colType != COLTYPE_WOOD && acCol->colType != COLTYPE_HARD) {
        acElem->acElemFlags |= ACELEM_DRAW_HITMARK;
    } else {
        CollisionCheck_HitEffects(play, atCol, atElem, acCol, acElem, hitPos);
        atElem->atElemFlags |= ATELEM_DREW_HITMARK;
    }
    return true;
}

void CollisionCheck_ATJntSphVsACJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                       Collider* acCol) {
    ColliderJntSph* atJntSph = (ColliderJntSph*)atCol;
    ColliderJntSphElement* atJntSphElem;
    ColliderJntSph* acJntSph = (ColliderJntSph*)acCol;
    ColliderJntSphElement* acJntSphElem;
    f32 overlapSize;
    f32 centerDist;

    if (atJntSph->count > 0 && atJntSph->elements != NULL && acJntSph->count > 0 && acJntSph->elements != NULL) {
        for (atJntSphElem = atJntSph->elements; atJntSphElem < atJntSph->elements + atJntSph->count; atJntSphElem++) {
            if (CollisionCheck_IsElementNotAT(&atJntSphElem->base) == true) {
                continue;
            }
            for (acJntSphElem = acJntSph->elements; acJntSphElem < acJntSph->elements + acJntSph->count;
                 acJntSphElem++) {
                if (CollisionCheck_IsElementNotAC(&acJntSphElem->base) == true) {
                    continue;
                }
                if (CollisionCheck_NoSharedFlags(&atJntSphElem->base, &acJntSphElem->base) == true) {
                    continue;
                }
                if (Math3D_SphVsSphOverlapCenterDist(&atJntSphElem->dim.worldSphere, &acJntSphElem->dim.worldSphere,
                                                     &overlapSize, &centerDist) == true) {
                    f32 acToHit;
                    Vec3f hitPos;
                    Vec3f atPos;
                    Vec3f acPos;

                    atPos.x = atJntSphElem->dim.worldSphere.center.x;
                    atPos.y = atJntSphElem->dim.worldSphere.center.y;
                    atPos.z = atJntSphElem->dim.worldSphere.center.z;
                    acPos.x = acJntSphElem->dim.worldSphere.center.x;
                    acPos.y = acJntSphElem->dim.worldSphere.center.y;
                    acPos.z = acJntSphElem->dim.worldSphere.center.z;
                    if (!IS_ZERO(centerDist)) {
                        acToHit = acJntSphElem->dim.worldSphere.radius / centerDist;
                        hitPos.x = (((atPos.x - acPos.x) * acToHit) + acPos.x);
                        hitPos.y = (((atPos.y - acPos.y) * acToHit) + acPos.y);
                        hitPos.z = (((atPos.z - acPos.z) * acToHit) + acPos.z);
                    } else {
                        Math_Vec3f_Copy(&hitPos, &atPos);
                    }
                    CollisionCheck_SetATvsAC(play, &atJntSph->base, &atJntSphElem->base, &atPos, &acJntSph->base,
                                             &acJntSphElem->base, &acPos, &hitPos);
                    if (!(acJntSph->base.ocFlags2 & OC2_FIRST_ONLY)) {
                        return;
                    }
                }
            }
        }
    }
}

void CollisionCheck_ATJntSphVsACCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                    Collider* acCol) {
    ColliderJntSph* atJntSph = (ColliderJntSph*)atCol;
    ColliderJntSphElement* atJntSphElem;
    ColliderCylinder* acCyl = (ColliderCylinder*)acCol;
    f32 overlapSize;
    f32 centerDist;

    if (atJntSph->count > 0 && atJntSph->elements != NULL && acCyl->dim.radius > 0 && acCyl->dim.height > 0) {
        if (CollisionCheck_IsElementNotAC(&acCyl->elem) == true) {
            return;
        }
        for (atJntSphElem = atJntSph->elements; atJntSphElem < atJntSph->elements + atJntSph->count; atJntSphElem++) {
            if (CollisionCheck_IsElementNotAT(&atJntSphElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atJntSphElem->base, &acCyl->elem) == true) {
                continue;
            }
            if (Math3D_SphVsCylOverlapCenterDist(&atJntSphElem->dim.worldSphere, &acCyl->dim, &overlapSize,
                                                 &centerDist)) {
                Vec3f hitPos;
                Vec3f atPos;
                Vec3f acPos;
                f32 acToHit;

                atPos.x = atJntSphElem->dim.worldSphere.center.x;
                atPos.y = atJntSphElem->dim.worldSphere.center.y;
                atPos.z = atJntSphElem->dim.worldSphere.center.z;
                acPos.x = acCyl->dim.pos.x;
                acPos.y = acCyl->dim.pos.y;
                acPos.z = acCyl->dim.pos.z;
                if (!IS_ZERO(centerDist)) {
                    acToHit = acCyl->dim.radius / centerDist;
                    if (acToHit <= 1.0f) {
                        hitPos.x = ((atPos.x - acPos.x) * acToHit) + acPos.x;
                        hitPos.y = ((atPos.y - acPos.y) * acToHit) + acPos.y;
                        hitPos.z = ((atPos.z - acPos.z) * acToHit) + acPos.z;
                    } else {
                        Math_Vec3f_Copy(&hitPos, &atPos);
                    }
                } else {
                    Math_Vec3f_Copy(&hitPos, &atPos);
                }
                CollisionCheck_SetATvsAC(play, &atJntSph->base, &atJntSphElem->base, &atPos, &acCyl->base, &acCyl->elem,
                                         &acPos, &hitPos);
                return;
            }
        }
    }
}

void CollisionCheck_ATCylVsACJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                    Collider* acCol) {
    ColliderCylinder* atCyl = (ColliderCylinder*)atCol;
    ColliderJntSph* acJntSph = (ColliderJntSph*)acCol;
    f32 overlapSize;
    f32 centerDist;
    ColliderJntSphElement* acJntSphElem;

    if (acJntSph->count > 0 && acJntSph->elements != NULL && atCyl->dim.radius > 0 && atCyl->dim.height > 0) {
        if (CollisionCheck_IsElementNotAT(&atCyl->elem) == true) {
            return;
        }
        for (acJntSphElem = acJntSph->elements; acJntSphElem < acJntSph->elements + acJntSph->count; acJntSphElem++) {
            if (CollisionCheck_IsElementNotAC(&acJntSphElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atCyl->elem, &acJntSphElem->base) == true) {
                continue;
            }
            if (Math3D_SphVsCylOverlapCenterDist(&acJntSphElem->dim.worldSphere, &atCyl->dim, &overlapSize,
                                                 &centerDist)) {
                Vec3f hitPos;
                Vec3f atPos;
                Vec3f acPos;
                f32 acToHit;

                atPos.x = atCyl->dim.pos.x;
                atPos.y = atCyl->dim.pos.y;
                atPos.z = atCyl->dim.pos.z;
                acPos.x = acJntSphElem->dim.worldSphere.center.x;
                acPos.y = acJntSphElem->dim.worldSphere.center.y;
                acPos.z = acJntSphElem->dim.worldSphere.center.z;
                if (!IS_ZERO(centerDist)) {
                    acToHit = acJntSphElem->dim.worldSphere.radius / centerDist;
                    if (acToHit <= 1.0f) {
                        hitPos.x = ((atPos.x - acPos.x) * acToHit) + acPos.x;
                        hitPos.y = ((atPos.y - acPos.y) * acToHit) + acPos.y;
                        hitPos.z = ((atPos.z - acPos.z) * acToHit) + acPos.z;
                    } else {
                        Math_Vec3f_Copy(&hitPos, &atPos);
                    }
                } else {
                    Math_Vec3f_Copy(&hitPos, &atPos);
                }
                CollisionCheck_SetATvsAC(play, &atCyl->base, &atCyl->elem, &atPos, &acJntSph->base, &acJntSphElem->base,
                                         &acPos, &hitPos);
                if (!(acJntSph->base.ocFlags2 & OC2_FIRST_ONLY)) {
                    break;
                }
            }
        }
    }
}

void CollisionCheck_ATJntSphVsACTris(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                     Collider* acCol) {
    ColliderJntSph* atJntSph = (ColliderJntSph*)atCol;
    ColliderJntSphElement* atJntSphElem;
    ColliderTris* acTris = (ColliderTris*)acCol;
    ColliderTrisElement* acTrisElem;
    Vec3f hitPos;

    if (atJntSph->count > 0 && atJntSph->elements != NULL && acTris->count > 0 && acTris->elements != NULL) {
        for (atJntSphElem = atJntSph->elements; atJntSphElem < atJntSph->elements + atJntSph->count; atJntSphElem++) {
            if (CollisionCheck_IsElementNotAT(&atJntSphElem->base) == true) {
                continue;
            }
            for (acTrisElem = acTris->elements; acTrisElem < acTris->elements + acTris->count; acTrisElem++) {
                if (CollisionCheck_IsElementNotAC(&acTrisElem->base) == true) {
                    continue;
                }
                if (CollisionCheck_NoSharedFlags(&atJntSphElem->base, &acTrisElem->base) == true) {
                    continue;
                }
                if (Math3D_TriVsSphIntersect(&atJntSphElem->dim.worldSphere, &acTrisElem->dim, &hitPos) == true) {
                    Vec3f atPos;
                    Vec3f acPos;

                    atPos.x = atJntSphElem->dim.worldSphere.center.x;
                    atPos.y = atJntSphElem->dim.worldSphere.center.y;
                    atPos.z = atJntSphElem->dim.worldSphere.center.z;
                    acPos.x =
                        (acTrisElem->dim.vtx[0].x + acTrisElem->dim.vtx[1].x + acTrisElem->dim.vtx[2].x) * (1.0f / 3);
                    acPos.y =
                        (acTrisElem->dim.vtx[0].y + acTrisElem->dim.vtx[1].y + acTrisElem->dim.vtx[2].y) * (1.0f / 3);
                    acPos.z =
                        (acTrisElem->dim.vtx[0].z + acTrisElem->dim.vtx[1].z + acTrisElem->dim.vtx[2].z) * (1.0f / 3);
                    CollisionCheck_SetATvsAC(play, &atJntSph->base, &atJntSphElem->base, &atPos, &acTris->base,
                                             &acTrisElem->base, &acPos, &hitPos);
                    return;
                }
            }
        }
    }
}

void CollisionCheck_ATTrisVsACJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                     Collider* acCol) {
    ColliderTris* atTris = (ColliderTris*)atCol;
    ColliderTrisElement* atTrisElem;
    ColliderJntSph* acJntSph = (ColliderJntSph*)acCol;
    ColliderJntSphElement* acJntSphElem;
    Vec3f hitPos;

    if (acJntSph->count > 0 && acJntSph->elements != NULL && atTris->count > 0 && atTris->elements != NULL) {
        for (acJntSphElem = acJntSph->elements; acJntSphElem < acJntSph->elements + acJntSph->count; acJntSphElem++) {
            if (CollisionCheck_IsElementNotAC(&acJntSphElem->base) == true) {
                continue;
            }
            for (atTrisElem = atTris->elements; atTrisElem < atTris->elements + atTris->count; atTrisElem++) {
                if (CollisionCheck_IsElementNotAT(&atTrisElem->base) == true) {
                    continue;
                }
                if (CollisionCheck_NoSharedFlags(&atTrisElem->base, &acJntSphElem->base) == true) {
                    continue;
                }
                if (Math3D_TriVsSphIntersect(&acJntSphElem->dim.worldSphere, &atTrisElem->dim, &hitPos) == true) {
                    Vec3f atPos;
                    Vec3f acPos;

                    Math_Vec3s_ToVec3f(&acPos, &acJntSphElem->dim.worldSphere.center);
                    atPos.x =
                        (atTrisElem->dim.vtx[0].x + atTrisElem->dim.vtx[1].x + atTrisElem->dim.vtx[2].x) * (1.0f / 3);
                    atPos.y =
                        (atTrisElem->dim.vtx[0].y + atTrisElem->dim.vtx[1].y + atTrisElem->dim.vtx[2].y) * (1.0f / 3);
                    atPos.z =
                        (atTrisElem->dim.vtx[0].z + atTrisElem->dim.vtx[1].z + atTrisElem->dim.vtx[2].z) * (1.0f / 3);
                    CollisionCheck_SetATvsAC(play, &atTris->base, &atTrisElem->base, &atPos, &acJntSph->base,
                                             &acJntSphElem->base, &acPos, &hitPos);
                    if (!(acJntSph->base.ocFlags2 & OC2_FIRST_ONLY)) {
                        return;
                    }
                }
            }
        }
    }
}

void CollisionCheck_ATJntSphVsACQuad(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                     Collider* acCol) {
    static TriNorm tri1;
    static TriNorm tri2;
    ColliderJntSph* atJntSph = (ColliderJntSph*)atCol;
    ColliderQuad* acQuad = (ColliderQuad*)acCol;
    Vec3f hitPos;
    ColliderJntSphElement* atJntSphElem;

    if (atJntSph->count > 0 && atJntSph->elements != NULL) {
        if (CollisionCheck_IsElementNotAC(&acQuad->elem) == true) {
            return;
        }
        Math3D_TriNorm(&tri1, &acQuad->dim.quad[2], &acQuad->dim.quad[3], &acQuad->dim.quad[1]);
        Math3D_TriNorm(&tri2, &acQuad->dim.quad[1], &acQuad->dim.quad[0], &acQuad->dim.quad[2]);
        for (atJntSphElem = atJntSph->elements; atJntSphElem < atJntSph->elements + atJntSph->count; atJntSphElem++) {
            if (CollisionCheck_IsElementNotAT(&atJntSphElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atJntSphElem->base, &acQuad->elem) == true) {
                continue;
            }
            if (Math3D_TriVsSphIntersect(&atJntSphElem->dim.worldSphere, &tri1, &hitPos) == true ||
                Math3D_TriVsSphIntersect(&atJntSphElem->dim.worldSphere, &tri2, &hitPos) == true) {
                Vec3f atPos;
                Vec3f acPos;

                Math_Vec3s_ToVec3f(&atPos, &atJntSphElem->dim.worldSphere.center);

                acPos.x = (acQuad->dim.quad[0].x +
                           (acQuad->dim.quad[1].x + (acQuad->dim.quad[3].x + acQuad->dim.quad[2].x))) /
                          4.0f;
                acPos.y = (acQuad->dim.quad[0].y +
                           (acQuad->dim.quad[1].y + (acQuad->dim.quad[3].y + acQuad->dim.quad[2].y))) /
                          4.0f;
                acPos.z = (acQuad->dim.quad[0].z +
                           (acQuad->dim.quad[1].z + (acQuad->dim.quad[3].z + acQuad->dim.quad[2].z))) /
                          4.0f;

                CollisionCheck_SetATvsAC(play, &atJntSph->base, &atJntSphElem->base, &atPos, &acQuad->base,
                                         &acQuad->elem, &acPos, &hitPos);
                return;
            }
        }
    }
}

void CollisionCheck_ATQuadVsACJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                     Collider* acCol) {
    static TriNorm tri1;
    static TriNorm tri2;
    ColliderJntSph* acJntSph = (ColliderJntSph*)acCol;
    Vec3f hitPos;
    ColliderQuad* atQuad = (ColliderQuad*)atCol;
    ColliderJntSphElement* acJntSphElem;

    if (acJntSph->count > 0 && acJntSph->elements != NULL) {
        if (CollisionCheck_IsElementNotAT(&atQuad->elem) == true) {
            return;
        }
        Math3D_TriNorm(&tri1, &atQuad->dim.quad[2], &atQuad->dim.quad[3], &atQuad->dim.quad[1]);
        Math3D_TriNorm(&tri2, &atQuad->dim.quad[2], &atQuad->dim.quad[1], &atQuad->dim.quad[0]);
        for (acJntSphElem = acJntSph->elements; acJntSphElem < acJntSph->elements + acJntSph->count; acJntSphElem++) {
            if (CollisionCheck_IsElementNotAC(&acJntSphElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atQuad->elem, &acJntSphElem->base) == true) {
                continue;
            }
            if (Math3D_TriVsSphIntersect(&acJntSphElem->dim.worldSphere, &tri1, &hitPos) == true ||
                Math3D_TriVsSphIntersect(&acJntSphElem->dim.worldSphere, &tri2, &hitPos) == true) {
                if (Collider_QuadSetNearestAC(play, atQuad, &hitPos)) {
                    Vec3f atPos;
                    Vec3f acPos;

                    acPos.x = acJntSphElem->dim.worldSphere.center.x;
                    acPos.y = acJntSphElem->dim.worldSphere.center.y;
                    acPos.z = acJntSphElem->dim.worldSphere.center.z;

                    atPos.x = (atQuad->dim.quad[0].x +
                               (atQuad->dim.quad[1].x + (atQuad->dim.quad[3].x + atQuad->dim.quad[2].x))) /
                              4.0f;
                    atPos.y = (atQuad->dim.quad[0].y +
                               (atQuad->dim.quad[1].y + (atQuad->dim.quad[3].y + atQuad->dim.quad[2].y))) /
                              4.0f;
                    atPos.z = (atQuad->dim.quad[0].z +
                               (atQuad->dim.quad[1].z + (atQuad->dim.quad[3].z + atQuad->dim.quad[2].z))) /
                              4.0f;
                    CollisionCheck_SetATvsAC(play, &atQuad->base, &atQuad->elem, &atPos, &acJntSph->base,
                                             &acJntSphElem->base, &acPos, &hitPos);
                    if (!(acJntSph->base.ocFlags2 & OC2_FIRST_ONLY)) {
                        return;
                    }
                }
            }
        }
    }
}

void CollisionCheck_ATCylVsACCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol, Collider* acCol) {
    ColliderCylinder* atCyl = (ColliderCylinder*)atCol;
    ColliderCylinder* acCyl = (ColliderCylinder*)acCol;
    f32 overlapSize;
    f32 centerDist;
    Vec3f hitPos;

    if (atCyl->dim.radius > 0 && atCyl->dim.height > 0 && acCyl->dim.radius > 0 && acCyl->dim.height > 0) {
        if (CollisionCheck_IsElementNotAC(&acCyl->elem) == true) {
            return;
        }
        if (CollisionCheck_IsElementNotAT(&atCyl->elem) == true) {
            return;
        }
        if (CollisionCheck_NoSharedFlags(&atCyl->elem, &acCyl->elem) == true) {
            return;
        }
        if (Math3D_CylVsCylOverlapCenterDist(&atCyl->dim, &acCyl->dim, &overlapSize, &centerDist) == true) {
            Vec3f atPos;
            Vec3f acPos;
            f32 acToHit;

            Math_Vec3s_ToVec3f(&atPos, &atCyl->dim.pos);
            Math_Vec3s_ToVec3f(&acPos, &acCyl->dim.pos);
            if (!IS_ZERO(centerDist)) {
                acToHit = acCyl->dim.radius / centerDist;
                hitPos.y = (f32)acCyl->dim.pos.y + acCyl->dim.yShift + acCyl->dim.height * 0.5f;
                hitPos.x = ((f32)atCyl->dim.pos.x - acCyl->dim.pos.x) * acToHit + acCyl->dim.pos.x;
                hitPos.z = ((f32)atCyl->dim.pos.z - acCyl->dim.pos.z) * acToHit + acCyl->dim.pos.z;
            } else {
                Math_Vec3s_ToVec3f(&hitPos, &acCyl->dim.pos);
            }
            CollisionCheck_SetATvsAC(play, &atCyl->base, &atCyl->elem, &atPos, &acCyl->base, &acCyl->elem, &acPos,
                                     &hitPos);
        }
    }
}

void CollisionCheck_ATCylVsACTris(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol, Collider* acCol) {
    ColliderCylinder* atCyl = (ColliderCylinder*)atCol;
    ColliderTris* acTris = (ColliderTris*)acCol;
    ColliderTrisElement* acTrisElem;
    Vec3f hitPos;

    if (atCyl->dim.radius > 0 && atCyl->dim.height > 0 && acTris->count > 0 && acTris->elements != NULL) {
        if (CollisionCheck_IsElementNotAT(&atCyl->elem) == true) {
            return;
        }
        for (acTrisElem = acTris->elements; acTrisElem < acTris->elements + acTris->count; acTrisElem++) {
            if (CollisionCheck_IsElementNotAC(&acTrisElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atCyl->elem, &acTrisElem->base) == true) {
                continue;
            }
            if (Math3D_CylTriVsIntersect(&atCyl->dim, &acTrisElem->dim, &hitPos) == true) {
                Vec3f atPos;
                Vec3f acPos;

                Math_Vec3s_ToVec3f(&atPos, &atCyl->dim.pos);

                acPos.x = (acTrisElem->dim.vtx[0].x + acTrisElem->dim.vtx[1].x + acTrisElem->dim.vtx[2].x) * (1.0f / 3);
                acPos.y = (acTrisElem->dim.vtx[0].y + acTrisElem->dim.vtx[1].y + acTrisElem->dim.vtx[2].y) * (1.0f / 3);
                acPos.z = (acTrisElem->dim.vtx[0].z + acTrisElem->dim.vtx[1].z + acTrisElem->dim.vtx[2].z) * (1.0f / 3);
                CollisionCheck_SetATvsAC(play, &atCyl->base, &atCyl->elem, &atPos, &acTris->base, &acTrisElem->base,
                                         &acPos, &hitPos);
                return;
            }
        }
    }
}

void CollisionCheck_ATTrisVsACCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol, Collider* acCol) {
    static Vec3f hitPos;
    ColliderTris* atTris = (ColliderTris*)atCol;
    ColliderTrisElement* atTrisElem;
    ColliderCylinder* acCyl = (ColliderCylinder*)acCol;

    if (acCyl->dim.radius > 0 && acCyl->dim.height > 0 && atTris->count > 0 && atTris->elements != NULL) {
        if (CollisionCheck_IsElementNotAC(&acCyl->elem) == true) {
            return;
        }
        for (atTrisElem = atTris->elements; atTrisElem < atTris->elements + atTris->count; atTrisElem++) {
            if (CollisionCheck_IsElementNotAT(&atTrisElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atTrisElem->base, &acCyl->elem) == true) {
                continue;
            }

            if (Math3D_CylTriVsIntersect(&acCyl->dim, &atTrisElem->dim, &hitPos) == true) {
                Vec3f atPos;
                Vec3f acPos;

                atPos.x = (atTrisElem->dim.vtx[0].x + atTrisElem->dim.vtx[1].x + atTrisElem->dim.vtx[2].x) * (1.0f / 3);
                atPos.y = (atTrisElem->dim.vtx[0].y + atTrisElem->dim.vtx[1].y + atTrisElem->dim.vtx[2].y) * (1.0f / 3);
                atPos.z = (atTrisElem->dim.vtx[0].z + atTrisElem->dim.vtx[1].z + atTrisElem->dim.vtx[2].z) * (1.0f / 3);
                Math_Vec3s_ToVec3f(&acPos, &acCyl->dim.pos);
                CollisionCheck_SetATvsAC(play, &atTris->base, &atTrisElem->base, &atPos, &acCyl->base, &acCyl->elem,
                                         &acPos, &hitPos);
                return;
            }
        }
    }
}

void CollisionCheck_ATCylVsACQuad(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol, Collider* acCol) {
    static TriNorm tri1;
    static TriNorm tri2;
    static Vec3f hitPos;
    ColliderCylinder* atCyl = (ColliderCylinder*)atCol;
    ColliderQuad* acQuad = (ColliderQuad*)acCol;

    if (atCyl->dim.height > 0 && atCyl->dim.radius > 0) {
        if (CollisionCheck_IsElementNotAT(&atCyl->elem) == true ||
            CollisionCheck_IsElementNotAC(&acQuad->elem) == true) {
            return;
        }
        if (CollisionCheck_NoSharedFlags(&atCyl->elem, &acQuad->elem) == true) {
            return;
        }
        Math3D_TriNorm(&tri1, &acQuad->dim.quad[2], &acQuad->dim.quad[3], &acQuad->dim.quad[1]);
        Math3D_TriNorm(&tri2, &acQuad->dim.quad[1], &acQuad->dim.quad[0], &acQuad->dim.quad[2]);
        if (Math3D_CylTriVsIntersect(&atCyl->dim, &tri1, &hitPos) == true) {
            Vec3f atPos1;
            Vec3f acPos1;

            Math_Vec3s_ToVec3f(&atPos1, &atCyl->dim.pos);
            acPos1.x =
                (acQuad->dim.quad[0].x + (acQuad->dim.quad[1].x + (acQuad->dim.quad[3].x + acQuad->dim.quad[2].x))) /
                4.0f;
            acPos1.y =
                (acQuad->dim.quad[0].y + (acQuad->dim.quad[1].y + (acQuad->dim.quad[3].y + acQuad->dim.quad[2].y))) /
                4.0f;
            acPos1.z =
                (acQuad->dim.quad[0].z + (acQuad->dim.quad[1].z + (acQuad->dim.quad[3].z + acQuad->dim.quad[2].z))) /
                4.0f;
            CollisionCheck_SetATvsAC(play, &atCyl->base, &atCyl->elem, &atPos1, &acQuad->base, &acQuad->elem, &acPos1,
                                     &hitPos);
        } else if (Math3D_CylTriVsIntersect(&atCyl->dim, &tri2, &hitPos) == true) {
            Vec3f atPos2;
            Vec3f acPos2;

            Math_Vec3s_ToVec3f(&atPos2, &atCyl->dim.pos);
            acPos2.x =
                (acQuad->dim.quad[0].x + (acQuad->dim.quad[1].x + (acQuad->dim.quad[3].x + acQuad->dim.quad[2].x))) /
                4.0f;
            acPos2.y =
                (acQuad->dim.quad[0].y + (acQuad->dim.quad[1].y + (acQuad->dim.quad[3].y + acQuad->dim.quad[2].y))) /
                4.0f;
            acPos2.z =
                (acQuad->dim.quad[0].z + (acQuad->dim.quad[1].z + (acQuad->dim.quad[3].z + acQuad->dim.quad[2].z))) /
                4.0f;
            CollisionCheck_SetATvsAC(play, &atCyl->base, &atCyl->elem, &atPos2, &acQuad->base, &acQuad->elem, &acPos2,
                                     &hitPos);
        }
    }
}

#if OOT_DEBUG
static s8 sBssDummy0;
static s8 sBssDummy1;
#endif

void CollisionCheck_ATQuadVsACCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol, Collider* acCol) {
    static TriNorm tri1;
    static TriNorm tri2;
    static Vec3f hitPos;
    ColliderQuad* atQuad = (ColliderQuad*)atCol;
    ColliderCylinder* acCyl = (ColliderCylinder*)acCol;

    if (acCyl->dim.height > 0 && acCyl->dim.radius > 0) {
        if (CollisionCheck_IsElementNotAC(&acCyl->elem) == true ||
            CollisionCheck_IsElementNotAT(&atQuad->elem) == true) {
            return;
        }
        if (CollisionCheck_NoSharedFlags(&atQuad->elem, &acCyl->elem) == true) {
            return;
        }
        Math3D_TriNorm(&tri1, &atQuad->dim.quad[2], &atQuad->dim.quad[3], &atQuad->dim.quad[1]);
        Math3D_TriNorm(&tri2, &atQuad->dim.quad[2], &atQuad->dim.quad[1], &atQuad->dim.quad[0]);
        if (Math3D_CylTriVsIntersect(&acCyl->dim, &tri1, &hitPos) == true) {
            if (Collider_QuadSetNearestAC(play, atQuad, &hitPos)) {
                Vec3f atPos1;
                Vec3f acPos1;

                atPos1.x = (atQuad->dim.quad[0].x +
                            (atQuad->dim.quad[1].x + (atQuad->dim.quad[3].x + atQuad->dim.quad[2].x))) /
                           4.0f;
                atPos1.y = (atQuad->dim.quad[0].y +
                            (atQuad->dim.quad[1].y + (atQuad->dim.quad[3].y + atQuad->dim.quad[2].y))) /
                           4.0f;
                atPos1.z = (atQuad->dim.quad[0].z +
                            (atQuad->dim.quad[1].z + (atQuad->dim.quad[3].z + atQuad->dim.quad[2].z))) /
                           4.0f;
                Math_Vec3s_ToVec3f(&acPos1, &acCyl->dim.pos);
                CollisionCheck_SetATvsAC(play, &atQuad->base, &atQuad->elem, &atPos1, &acCyl->base, &acCyl->elem,
                                         &acPos1, &hitPos);
                return;
            }
        }
        if (Math3D_CylTriVsIntersect(&acCyl->dim, &tri2, &hitPos) == true) {
            if (Collider_QuadSetNearestAC(play, atQuad, &hitPos)) {
                Vec3f atPos2;
                Vec3f acPos2;

                atPos2.x = (atQuad->dim.quad[0].x +
                            (atQuad->dim.quad[1].x + (atQuad->dim.quad[3].x + atQuad->dim.quad[2].x))) /
                           4.0f;
                atPos2.y = (atQuad->dim.quad[0].y +
                            (atQuad->dim.quad[1].y + (atQuad->dim.quad[3].y + atQuad->dim.quad[2].y))) /
                           4.0f;
                atPos2.z = (atQuad->dim.quad[0].z +
                            (atQuad->dim.quad[1].z + (atQuad->dim.quad[3].z + atQuad->dim.quad[2].z))) /
                           4.0f;
                Math_Vec3s_ToVec3f(&acPos2, &acCyl->dim.pos);
                CollisionCheck_SetATvsAC(play, &atQuad->base, &atQuad->elem, &atPos2, &acCyl->base, &acCyl->elem,
                                         &acPos2, &hitPos);
            }
        }
    }
}

#if OOT_DEBUG
static s8 sBssDummy3;
static s8 sBssDummy4;
static s8 sBssDummy5;
static s8 sBssDummy6;
#endif

void CollisionCheck_ATTrisVsACTris(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                   Collider* acCol) {
    static Vec3f hitPos;
    ColliderTris* atTris = (ColliderTris*)atCol;
    ColliderTrisElement* atTrisElem;
    ColliderTris* acTris = (ColliderTris*)acCol;
    ColliderTrisElement* acTrisElem;

    if (acTris->count > 0 && acTris->elements != NULL && atTris->count > 0 && atTris->elements != NULL) {
        for (acTrisElem = acTris->elements; acTrisElem < acTris->elements + acTris->count; acTrisElem++) {
            if (CollisionCheck_IsElementNotAC(&acTrisElem->base) == true) {
                continue;
            }
            for (atTrisElem = atTris->elements; atTrisElem < atTris->elements + atTris->count; atTrisElem++) {
                if (CollisionCheck_IsElementNotAT(&atTrisElem->base) == true) {
                    continue;
                }
                if (CollisionCheck_NoSharedFlags(&atTrisElem->base, &acTrisElem->base) == true) {
                    continue;
                }
                if (Math3D_TriVsTriIntersect(&atTrisElem->dim, &acTrisElem->dim, &hitPos) == true) {
                    Vec3f atPos;
                    Vec3f acPos;

                    atPos.x =
                        (atTrisElem->dim.vtx[0].x + atTrisElem->dim.vtx[1].x + atTrisElem->dim.vtx[2].x) * (1.0f / 3);
                    atPos.y =
                        (atTrisElem->dim.vtx[0].y + atTrisElem->dim.vtx[1].y + atTrisElem->dim.vtx[2].y) * (1.0f / 3);
                    atPos.z =
                        (atTrisElem->dim.vtx[0].z + atTrisElem->dim.vtx[1].z + atTrisElem->dim.vtx[2].z) * (1.0f / 3);
                    acPos.x =
                        (acTrisElem->dim.vtx[0].x + acTrisElem->dim.vtx[1].x + acTrisElem->dim.vtx[2].x) * (1.0f / 3);
                    acPos.y =
                        (acTrisElem->dim.vtx[0].y + acTrisElem->dim.vtx[1].y + acTrisElem->dim.vtx[2].y) * (1.0f / 3);
                    acPos.z =
                        (acTrisElem->dim.vtx[0].z + acTrisElem->dim.vtx[1].z + acTrisElem->dim.vtx[2].z) * (1.0f / 3);
                    CollisionCheck_SetATvsAC(play, &atTris->base, &atTrisElem->base, &atPos, &acTris->base,
                                             &acTrisElem->base, &acPos, &hitPos);
                    return;
                }
            }
        }
    }
}

void CollisionCheck_ATTrisVsACQuad(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                   Collider* acCol) {
    static Vec3f hitPos;
    static TriNorm tri1;
    static TriNorm tri2;
    ColliderTris* atTris = (ColliderTris*)atCol;
    ColliderTrisElement* atTrisElem;
    ColliderQuad* acQuad = (ColliderQuad*)acCol;

    if (atTris->count > 0 && atTris->elements != NULL) {
        if (CollisionCheck_IsElementNotAC(&acQuad->elem) == true) {
            return;
        }
        Math3D_TriNorm(&tri1, &acQuad->dim.quad[2], &acQuad->dim.quad[3], &acQuad->dim.quad[1]);
        Math3D_TriNorm(&tri2, &acQuad->dim.quad[1], &acQuad->dim.quad[0], &acQuad->dim.quad[2]);
        for (atTrisElem = atTris->elements; atTrisElem < atTris->elements + atTris->count; atTrisElem++) {
            if (CollisionCheck_IsElementNotAT(&atTrisElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atTrisElem->base, &acQuad->elem) == true) {
                continue;
            }
            if (Math3D_TriVsTriIntersect(&tri1, &atTrisElem->dim, &hitPos) == true ||
                Math3D_TriVsTriIntersect(&tri2, &atTrisElem->dim, &hitPos) == true) {
                Vec3f atPos;
                Vec3f acPos;

                atPos.x = (atTrisElem->dim.vtx[0].x + atTrisElem->dim.vtx[1].x + atTrisElem->dim.vtx[2].x) * (1.0f / 3);
                atPos.y = (atTrisElem->dim.vtx[0].y + atTrisElem->dim.vtx[1].y + atTrisElem->dim.vtx[2].y) * (1.0f / 3);
                atPos.z = (atTrisElem->dim.vtx[0].z + atTrisElem->dim.vtx[1].z + atTrisElem->dim.vtx[2].z) * (1.0f / 3);
                acPos.x = (acQuad->dim.quad[0].x +
                           (acQuad->dim.quad[1].x + (acQuad->dim.quad[3].x + acQuad->dim.quad[2].x))) /
                          4.0f;
                acPos.y = (acQuad->dim.quad[0].y +
                           (acQuad->dim.quad[1].y + (acQuad->dim.quad[3].y + acQuad->dim.quad[2].y))) /
                          4.0f;
                acPos.z = (acQuad->dim.quad[0].z +
                           (acQuad->dim.quad[1].z + (acQuad->dim.quad[3].z + acQuad->dim.quad[2].z))) /
                          4.0f;
                CollisionCheck_SetATvsAC(play, &atTris->base, &atTrisElem->base, &atPos, &acQuad->base, &acQuad->elem,
                                         &acPos, &hitPos);
                return;
            }
        }
    }
}

void CollisionCheck_ATQuadVsACTris(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                   Collider* acCol) {
    static Vec3f hitPos;
    static TriNorm tri1;
    static TriNorm tri2;
    ColliderQuad* atQuad = (ColliderQuad*)atCol;
    ColliderTris* acTris = (ColliderTris*)acCol;
    ColliderTrisElement* acTrisElem;

    if (acTris->count > 0 && acTris->elements != NULL) {
        if (CollisionCheck_IsElementNotAT(&atQuad->elem) == true) {
            return;
        }
        Math3D_TriNorm(&tri1, &atQuad->dim.quad[2], &atQuad->dim.quad[3], &atQuad->dim.quad[1]);
        Math3D_TriNorm(&tri2, &atQuad->dim.quad[1], &atQuad->dim.quad[0], &atQuad->dim.quad[2]);
        for (acTrisElem = acTris->elements; acTrisElem < acTris->elements + acTris->count; acTrisElem++) {
            if (CollisionCheck_IsElementNotAC(&acTrisElem->base) == true) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&atQuad->elem, &acTrisElem->base) == true) {
                continue;
            }
            if (Math3D_TriVsTriIntersect(&tri1, &acTrisElem->dim, &hitPos) == true ||
                Math3D_TriVsTriIntersect(&tri2, &acTrisElem->dim, &hitPos) == true) {
                if (Collider_QuadSetNearestAC(play, atQuad, &hitPos)) {
                    Vec3f atPos;
                    Vec3f acPos;

                    acPos.x =
                        (acTrisElem->dim.vtx[0].x + acTrisElem->dim.vtx[1].x + acTrisElem->dim.vtx[2].x) * (1.0f / 3);
                    acPos.y =
                        (acTrisElem->dim.vtx[0].y + acTrisElem->dim.vtx[1].y + acTrisElem->dim.vtx[2].y) * (1.0f / 3);
                    acPos.z =
                        (acTrisElem->dim.vtx[0].z + acTrisElem->dim.vtx[1].z + acTrisElem->dim.vtx[2].z) * (1.0f / 3);
                    atPos.x = (atQuad->dim.quad[0].x +
                               (atQuad->dim.quad[1].x + (atQuad->dim.quad[3].x + atQuad->dim.quad[2].x))) /
                              4.0f;
                    atPos.y = (atQuad->dim.quad[0].y +
                               (atQuad->dim.quad[1].y + (atQuad->dim.quad[3].y + atQuad->dim.quad[2].y))) /
                              4.0f;
                    atPos.z = (atQuad->dim.quad[0].z +
                               (atQuad->dim.quad[1].z + (atQuad->dim.quad[3].z + atQuad->dim.quad[2].z))) /
                              4.0f;
                    CollisionCheck_SetATvsAC(play, &atQuad->base, &atQuad->elem, &atPos, &acTris->base,
                                             &acTrisElem->base, &acPos, &hitPos);
                    return;
                }
            }
        }
    }
}

void CollisionCheck_ATQuadVsACQuad(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol,
                                   Collider* acCol) {
    static TriNorm acTris[2];
    static Vec3f hitPos;
    static TriNorm atTris[2];
    ColliderQuad* atQuad = (ColliderQuad*)atCol;
    ColliderQuad* acQuad = (ColliderQuad*)acCol;
    s32 i;
    s32 j;

    if (CollisionCheck_IsElementNotAT(&atQuad->elem) == true) {
        return;
    }
    if (CollisionCheck_IsElementNotAC(&acQuad->elem) == true) {
        return;
    }
    if (CollisionCheck_NoSharedFlags(&atQuad->elem, &acQuad->elem) == true) {
        return;
    }

    Math3D_TriNorm(&atTris[0], &atQuad->dim.quad[2], &atQuad->dim.quad[3], &atQuad->dim.quad[1]);
    Math3D_TriNorm(&atTris[1], &atQuad->dim.quad[2], &atQuad->dim.quad[1], &atQuad->dim.quad[0]);
    Math3D_TriNorm(&acTris[0], &acQuad->dim.quad[2], &acQuad->dim.quad[3], &acQuad->dim.quad[1]);
    Math3D_TriNorm(&acTris[1], &acQuad->dim.quad[2], &acQuad->dim.quad[1], &acQuad->dim.quad[0]);

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            if (Math3D_TriVsTriIntersect(&atTris[j], &acTris[i], &hitPos) == true) {
                if (Collider_QuadSetNearestAC(play, atQuad, &hitPos)) {
                    Vec3f atPos;
                    Vec3f acPos;

                    atPos.x = (atQuad->dim.quad[0].x +
                               (atQuad->dim.quad[1].x + (atQuad->dim.quad[3].x + atQuad->dim.quad[2].x))) /
                              4.0f;
                    atPos.y = (atQuad->dim.quad[0].y +
                               (atQuad->dim.quad[1].y + (atQuad->dim.quad[3].y + atQuad->dim.quad[2].y))) /
                              4.0f;
                    atPos.z = (atQuad->dim.quad[0].z +
                               (atQuad->dim.quad[1].z + (atQuad->dim.quad[3].z + atQuad->dim.quad[2].z))) /
                              4.0f;
                    acPos.x = (acQuad->dim.quad[0].x +
                               (acQuad->dim.quad[1].x + (acQuad->dim.quad[3].x + acQuad->dim.quad[2].x))) /
                              4.0f;
                    acPos.y = (acQuad->dim.quad[0].y +
                               (acQuad->dim.quad[1].y + (acQuad->dim.quad[3].y + acQuad->dim.quad[2].y))) /
                              4.0f;
                    acPos.z = (acQuad->dim.quad[0].z +
                               (acQuad->dim.quad[1].z + (acQuad->dim.quad[3].z + acQuad->dim.quad[2].z))) /
                              4.0f;
                    CollisionCheck_SetATvsAC(play, &atQuad->base, &atQuad->elem, &atPos, &acQuad->base, &acQuad->elem,
                                             &acPos, &hitPos);
                    return;
                }
            }
        }
    }
}

void CollisionCheck_SetJntSphHitFX(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderJntSph* jntSph = (ColliderJntSph*)col;
    ColliderJntSphElement* jntSphElem;

    for (jntSphElem = jntSph->elements; jntSphElem < jntSph->elements + jntSph->count; jntSphElem++) {
        if ((jntSphElem->base.acElemFlags & ACELEM_DRAW_HITMARK) && (jntSphElem->base.acHitElem != NULL) &&
            !(jntSphElem->base.acHitElem->atElemFlags & ATELEM_DREW_HITMARK)) {
            Vec3f hitPos;

            Math_Vec3s_ToVec3f(&hitPos, &jntSphElem->base.acDmgInfo.hitPos);
            CollisionCheck_HitEffects(play, jntSphElem->base.acHit, jntSphElem->base.acHitElem, &jntSph->base,
                                      &jntSphElem->base, &hitPos);
            jntSphElem->base.acHitElem->atElemFlags |= ATELEM_DREW_HITMARK;
            return;
        }
    }
}

void CollisionCheck_SetCylHitFX(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderCylinder* cyl = (ColliderCylinder*)col;

    if ((cyl->elem.acElemFlags & ACELEM_DRAW_HITMARK) && (cyl->elem.acHitElem != NULL) &&
        !(cyl->elem.acHitElem->atElemFlags & ATELEM_DREW_HITMARK)) {
        Vec3f hitPos;

        Math_Vec3s_ToVec3f(&hitPos, &cyl->elem.acDmgInfo.hitPos);
        CollisionCheck_HitEffects(play, cyl->elem.acHit, cyl->elem.acHitElem, &cyl->base, &cyl->elem, &hitPos);
        cyl->elem.acHitElem->atElemFlags |= ATELEM_DREW_HITMARK;
    }
}

void CollisionCheck_SetTrisHitFX(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderTris* tris = (ColliderTris*)col;
    ColliderTrisElement* trisElem;

    for (trisElem = tris->elements; trisElem < tris->elements + tris->count; trisElem++) {
        if ((trisElem->base.acElemFlags & ACELEM_DRAW_HITMARK) && (trisElem->base.acHitElem != NULL) &&
            !(trisElem->base.acHitElem->atElemFlags & ATELEM_DREW_HITMARK)) {
            Vec3f hitPos;

            Math_Vec3s_ToVec3f(&hitPos, &trisElem->base.acDmgInfo.hitPos);
            CollisionCheck_HitEffects(play, trisElem->base.acHit, trisElem->base.acHitElem, &tris->base,
                                      &trisElem->base, &hitPos);
            trisElem->base.acHitElem->atElemFlags |= ATELEM_DREW_HITMARK;
            return;
        }
    }
}

void CollisionCheck_SetQuadHitFX(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderQuad* quad = (ColliderQuad*)col;
    Vec3f hitPos;

    if ((quad->elem.acElemFlags & ACELEM_DRAW_HITMARK) && (quad->elem.acHitElem != NULL) &&
        !(quad->elem.acHitElem->atElemFlags & ATELEM_DREW_HITMARK)) {
        Math_Vec3s_ToVec3f(&hitPos, &quad->elem.acDmgInfo.hitPos);
        CollisionCheck_HitEffects(play, quad->elem.acHit, quad->elem.acHitElem, &quad->base, &quad->elem, &hitPos);
        quad->elem.acHitElem->atElemFlags |= ATELEM_DREW_HITMARK;
    }
}

static ColChkApplyFunc sColChkApplyFuncs[] = {
    CollisionCheck_SetJntSphHitFX,
    CollisionCheck_SetCylHitFX,
    CollisionCheck_SetTrisHitFX,
    CollisionCheck_SetQuadHitFX,
};

/**
 * Handles hit effects for each AC collider that had an AC collision. Spawns hitmarks and plays sound effects.
 */
void CollisionCheck_SetHitEffects(PlayState* play, CollisionCheckContext* colChkCtx) {
    Collider** acColP;
    Collider* acCol;

    for (acColP = colChkCtx->colAC; acColP < colChkCtx->colAC + colChkCtx->colACCount; acColP++) {
        acCol = *acColP;

        if (acCol != NULL && acCol->acFlags & AC_ON) {
            if (acCol->actor != NULL && acCol->actor->update == NULL) {
                continue;
            }
            sColChkApplyFuncs[acCol->shape](play, colChkCtx, acCol);
        }
    }
}

static ColChkVsFunc sACVsFuncs[COLSHAPE_MAX][COLSHAPE_MAX] = {
    // COLSHAPE_JNTSPH
    {
        CollisionCheck_ATJntSphVsACJntSph, // COLSHAPE_JNTSPH
        CollisionCheck_ATJntSphVsACCyl,    // COLSHAPE_CYLINDER
        CollisionCheck_ATJntSphVsACTris,   // COLSHAPE_TRIS
        CollisionCheck_ATJntSphVsACQuad    // COLSHAPE_QUAD
    },
    // COLSHAPE_CYLINDER
    {
        CollisionCheck_ATCylVsACJntSph, // COLSHAPE_JNTSPH
        CollisionCheck_ATCylVsACCyl,    // COLSHAPE_CYLINDER
        CollisionCheck_ATCylVsACTris,   // COLSHAPE_TRIS
        CollisionCheck_ATCylVsACQuad    // COLSHAPE_QUAD
    },
    // COLSHAPE_TRIS
    {
        CollisionCheck_ATTrisVsACJntSph, // COLSHAPE_JNTSPH
        CollisionCheck_ATTrisVsACCyl,    // COLSHAPE_CYLINDER
        CollisionCheck_ATTrisVsACTris,   // COLSHAPE_TRIS
        CollisionCheck_ATTrisVsACQuad    // COLSHAPE_QUAD
    },
    // COLSHAPE_QUAD
    {
        CollisionCheck_ATQuadVsACJntSph, // COLSHAPE_JNTSPH
        CollisionCheck_ATQuadVsACCyl,    // COLSHAPE_CYLINDER
        CollisionCheck_ATQuadVsACTris,   // COLSHAPE_TRIS
        CollisionCheck_ATQuadVsACQuad    // COLSHAPE_QUAD
    },
};

/**
 * Iterates through all AC colliders, performing AC collisions with the AT collider.
 */
void CollisionCheck_AC(PlayState* play, CollisionCheckContext* colChkCtx, Collider* atCol) {
    Collider** acColP;
    Collider* acCol;

    for (acColP = colChkCtx->colAC; acColP < colChkCtx->colAC + colChkCtx->colACCount; acColP++) {
        acCol = *acColP;

        if (acCol != NULL && acCol->acFlags & AC_ON) {
            if (acCol->actor != NULL && acCol->actor->update == NULL) {
                continue;
            }
            if ((acCol->acFlags & atCol->atFlags & AC_TYPE_ALL) && (atCol != acCol)) {
                if (!(atCol->atFlags & AT_SELF) && atCol->actor != NULL && acCol->actor == atCol->actor) {
                    continue;
                }
                sACVsFuncs[atCol->shape][acCol->shape](play, colChkCtx, atCol, acCol);
            }
        }
    }
}

/**
 * Iterates through all AT colliders, testing them for AC collisions with each AC collider, setting the info regarding
 * the collision for each AC and AT collider that collided. Then spawns hitmarks and plays sound effects for each
 * successful collision. To collide, an AT collider must share a type (AC_TYPE_PLAYER, AC_TYPE_ENEMY, or AC_TYPE_OTHER)
 * with the AC collider and the AT and AC elements that overlapped must share a dmgFlag.
 */
void CollisionCheck_AT(PlayState* play, CollisionCheckContext* colChkCtx) {
    Collider** atColP;
    Collider* atCol;

    if (colChkCtx->colATCount == 0 || colChkCtx->colACCount == 0) {
        return;
    }
    for (atColP = colChkCtx->colAT; atColP < colChkCtx->colAT + colChkCtx->colATCount; atColP++) {
        atCol = *atColP;

        if (atCol != NULL && atCol->atFlags & AT_ON) {
            if (atCol->actor != NULL && atCol->actor->update == NULL) {
                continue;
            }
            CollisionCheck_AC(play, colChkCtx, atCol);
        }
    }
    CollisionCheck_SetHitEffects(play, colChkCtx);
}

typedef enum {
    /* 0 */ MASSTYPE_IMMOVABLE,
    /* 1 */ MASSTYPE_HEAVY,
    /* 2 */ MASSTYPE_NORMAL
} ColChkMassType;

#pragma increment_block_number "gc-eu:252 gc-eu-mq:252 gc-jp:252 gc-jp-ce:252 gc-jp-mq:252 gc-us:252 gc-us-mq:252"

/**
 * Get mass type. Immovable colliders cannot be pushed, while heavy colliders can only be pushed by heavy and immovable
 * colliders.
 */
s32 CollisionCheck_GetMassType(u8 mass) {
    if (mass == MASS_IMMOVABLE) {
        return MASSTYPE_IMMOVABLE;
    }
    if (mass == MASS_HEAVY) {
        return MASSTYPE_HEAVY;
    }
    return MASSTYPE_NORMAL;
}

/**
 * Sets OC collision flags for OC collider overlaps. If both colliders are attached to actors and can push,
 * also performs an elastic collision where both colliders are moved apart in proportion to their masses.
 */
void CollisionCheck_SetOCvsOC(Collider* leftCol, ColliderElement* leftElem, Vec3f* leftPos, Collider* rightCol,
                              ColliderElement* rightElem, Vec3f* rightPos, f32 overlap) {
    f32 pad;
    f32 leftDispRatio;
    f32 rightDispRatio;
    f32 xzDist;
    f32 leftMass;
    f32 rightMass;
    f32 totalMass;
    f32 inverseTotalMass;
    f32 xDelta;
    f32 zDelta;
    Actor* leftActor = leftCol->actor;
    Actor* rightActor = rightCol->actor;
    s32 rightMassType;
    s32 leftMassType;

    leftCol->ocFlags1 |= OC1_HIT;
    leftCol->oc = rightActor;
    leftElem->ocElemFlags |= OCELEM_HIT;
    if (rightCol->ocFlags2 & OC2_TYPE_PLAYER) {
        leftCol->ocFlags2 |= OC2_HIT_PLAYER;
    }
    rightCol->oc = leftActor;
    rightCol->ocFlags1 |= OC1_HIT;
    rightElem->ocElemFlags |= OCELEM_HIT;
    if (leftCol->ocFlags2 & OC2_TYPE_PLAYER) {
        rightCol->ocFlags2 |= OC2_HIT_PLAYER;
    }
    if (leftActor == NULL || rightActor == NULL || leftCol->ocFlags1 & OC1_NO_PUSH ||
        rightCol->ocFlags1 & OC1_NO_PUSH) {
        return;
    }
    leftMassType = CollisionCheck_GetMassType(leftActor->colChkInfo.mass);
    rightMassType = CollisionCheck_GetMassType(rightActor->colChkInfo.mass);
    leftMass = leftActor->colChkInfo.mass;
    rightMass = rightActor->colChkInfo.mass;
    totalMass = leftMass + rightMass;
    if (IS_ZERO(totalMass)) {
        leftMass = rightMass = 1.0f;
        totalMass = 2.0f;
    }
    xDelta = rightPos->x - leftPos->x;
    zDelta = rightPos->z - leftPos->z;
    xzDist = sqrtf(SQ(xDelta) + SQ(zDelta));

    if (leftMassType == MASSTYPE_IMMOVABLE) {
        if (rightMassType == MASSTYPE_IMMOVABLE) {
            return;
        } else { // rightMassType == MASSTYPE_HEAVY or MASSTYPE_NORMAL
            leftDispRatio = 0;
            rightDispRatio = 1;
        }
    } else if (leftMassType == MASSTYPE_HEAVY) {
        if (rightMassType == MASSTYPE_IMMOVABLE) {
            leftDispRatio = 1;
            rightDispRatio = 0;
        } else if (rightMassType == MASSTYPE_HEAVY) {
            leftDispRatio = 0.5f;
            rightDispRatio = 0.5f;
        } else { // rightMassType == MASSTYPE_NORMAL
            leftDispRatio = 0;
            rightDispRatio = 1;
        }
    } else { // leftMassType == MASSTYPE_NORMAL
        if (rightMassType == MASSTYPE_NORMAL) {
            inverseTotalMass = 1 / totalMass;
            leftDispRatio = rightMass * inverseTotalMass;
            rightDispRatio = leftMass * inverseTotalMass;
        } else { // rightMassType == MASSTYPE_HEAVY or MASSTYPE_IMMOVABLE
            leftDispRatio = 1;
            rightDispRatio = 0;
        }
    }

    if (!IS_ZERO(xzDist)) {
        xDelta *= overlap / xzDist;
        zDelta *= overlap / xzDist;
        leftActor->colChkInfo.displacement.x += -xDelta * leftDispRatio;
        leftActor->colChkInfo.displacement.z += -zDelta * leftDispRatio;
        rightActor->colChkInfo.displacement.x += xDelta * rightDispRatio;
        rightActor->colChkInfo.displacement.z += zDelta * rightDispRatio;
    } else if (!(overlap == 0.0f)) {
        leftActor->colChkInfo.displacement.x += -overlap * leftDispRatio;
        rightActor->colChkInfo.displacement.x += overlap * rightDispRatio;
    } else {
        leftActor->colChkInfo.displacement.x -= leftDispRatio;
        rightActor->colChkInfo.displacement.x += rightDispRatio;
    }
}

void CollisionCheck_OC_JntSphVsJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* leftCol,
                                      Collider* rightCol) {
    ColliderJntSph* leftJntSph = (ColliderJntSph*)leftCol;
    ColliderJntSphElement* leftJntSphElem;
    ColliderJntSph* rightJntSph = (ColliderJntSph*)rightCol;
    ColliderJntSphElement* rightJntSphElem;
    f32 overlapSize;

    if (leftJntSph->count > 0 && leftJntSph->elements != NULL && rightJntSph->count > 0 &&
        rightJntSph->elements != NULL) {
        for (leftJntSphElem = leftJntSph->elements; leftJntSphElem < leftJntSph->elements + leftJntSph->count;
             leftJntSphElem++) {
            if (!(leftJntSphElem->base.ocElemFlags & OCELEM_ON)) {
                continue;
            }
            for (rightJntSphElem = rightJntSph->elements; rightJntSphElem < rightJntSph->elements + rightJntSph->count;
                 rightJntSphElem++) {
                if (!(rightJntSphElem->base.ocElemFlags & OCELEM_ON)) {
                    continue;
                }
                if (Math3D_SphVsSphOverlap(&leftJntSphElem->dim.worldSphere, &rightJntSphElem->dim.worldSphere,
                                           &overlapSize) == true) {
                    Vec3f leftPos;
                    Vec3f rightPos;

                    Math_Vec3s_ToVec3f(&leftPos, &leftJntSphElem->dim.worldSphere.center);
                    Math_Vec3s_ToVec3f(&rightPos, &rightJntSphElem->dim.worldSphere.center);
                    CollisionCheck_SetOCvsOC(&leftJntSph->base, &leftJntSphElem->base, &leftPos, &rightJntSph->base,
                                             &rightJntSphElem->base, &rightPos, overlapSize);
                }
            }
        }
    }
}

void CollisionCheck_OC_JntSphVsCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* leftCol,
                                   Collider* rightCol) {
    ColliderJntSph* leftJntSph = (ColliderJntSph*)leftCol;
    ColliderJntSphElement* leftJntSphElem;
    ColliderCylinder* rightCyl = (ColliderCylinder*)rightCol;
    f32 overlapSize;

    if (leftJntSph->count > 0 && leftJntSph->elements != NULL) {
        if ((rightCyl->base.ocFlags1 & OC1_ON) && (rightCyl->elem.ocElemFlags & OCELEM_ON)) {
            for (leftJntSphElem = leftJntSph->elements; leftJntSphElem < leftJntSph->elements + leftJntSph->count;
                 leftJntSphElem++) {
                if (!(leftJntSphElem->base.ocElemFlags & OCELEM_ON)) {
                    continue;
                }
                if (Math3D_SphVsCylOverlap(&leftJntSphElem->dim.worldSphere, &rightCyl->dim, &overlapSize) == true) {
                    Vec3f leftPos;
                    Vec3f rightPos;

                    Math_Vec3s_ToVec3f(&leftPos, &leftJntSphElem->dim.worldSphere.center);
                    Math_Vec3s_ToVec3f(&rightPos, &rightCyl->dim.pos);
                    CollisionCheck_SetOCvsOC(&leftJntSph->base, &leftJntSphElem->base, &leftPos, &rightCyl->base,
                                             &rightCyl->elem, &rightPos, overlapSize);
                }
            }
        }
    }
}

void CollisionCheck_OC_CylVsJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* leftCol,
                                   Collider* rightCol) {
    CollisionCheck_OC_JntSphVsCyl(play, colChkCtx, rightCol, leftCol);
}

void CollisionCheck_OC_CylVsCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* leftCol,
                                Collider* rightCol) {
    ColliderCylinder* leftCyl = (ColliderCylinder*)leftCol;
    ColliderCylinder* rightCyl = (ColliderCylinder*)rightCol;
    f32 overlapSize;

    if ((leftCyl->base.ocFlags1 & OC1_ON) && (rightCyl->base.ocFlags1 & OC1_ON)) {
        if ((leftCyl->elem.ocElemFlags & OCELEM_ON) && (rightCyl->elem.ocElemFlags & OCELEM_ON)) {
            if (Math3D_CylVsCylOverlap(&leftCyl->dim, &rightCyl->dim, &overlapSize) == true) {
                Vec3f leftPos;
                Vec3f rightPos;

                Math_Vec3s_ToVec3f(&leftPos, &leftCyl->dim.pos);
                Math_Vec3s_ToVec3f(&rightPos, &rightCyl->dim.pos);
                CollisionCheck_SetOCvsOC(&leftCyl->base, &leftCyl->elem, &leftPos, &rightCyl->base, &rightCyl->elem,
                                         &rightPos, overlapSize);
            }
        }
    }
}

/**
 *  Skip any OC colliders that are off
 */
s32 CollisionCheck_SkipOC(Collider* collider) {
    if (!(collider->ocFlags1 & OC1_ON)) {
        return true;
    }
    return false;
}

/**
 * Checks for OC compatibility. There are three conditions:
 * First, each collider must have an OC flag corresponding to the other's OC type.
 * Second, OC2_UNK1 and OC2_UNK2 can't collide with each other (has something to do with horses?)
 * Third, the colliders can't collide if they belong to the same actor
 */
s32 CollisionCheck_Incompatible(Collider* left, Collider* right) {
    if (!((left->ocFlags1 & right->ocFlags2 & OC1_TYPE_ALL) && (left->ocFlags2 & right->ocFlags1 & OC1_TYPE_ALL)) ||
        ((left->ocFlags2 & OC2_UNK1) && (right->ocFlags2 & OC2_UNK2)) ||
        ((right->ocFlags2 & OC2_UNK1) && (left->ocFlags2 & OC2_UNK2))) {
        return true;
    }
    if (left->actor == right->actor) {
        return true;
    }
    return false;
}

static ColChkVsFunc sOCVsFuncs[COLSHAPE_MAX][COLSHAPE_MAX] = {
    // COLSHAPE_JNTSPH
    {
        CollisionCheck_OC_JntSphVsJntSph, // COLSHAPE_JNTSPH
        CollisionCheck_OC_JntSphVsCyl,    // COLSHAPE_CYLINDER
        NULL,                             // COLSHAPE_TRIS
        NULL                              // COLSHAPE_QUAD
    },
    // COLSHAPE_CYLINDER
    {
        CollisionCheck_OC_CylVsJntSph, // COLSHAPE_JNTSPH
        CollisionCheck_OC_CylVsCyl,    // COLSHAPE_CYLINDER
        NULL,                          // COLSHAPE_TRIS
        NULL                           // COLSHAPE_QUAD
    },
    // COLSHAPE_TRIS
    {
        NULL, // COLSHAPE_JNTSPH
        NULL, // COLSHAPE_CYLINDER
        NULL, // COLSHAPE_TRIS
        NULL  // COLSHAPE_QUAD
    },
    // COLSHAPE_QUAD
    {
        NULL, // COLSHAPE_JNTSPH
        NULL, // COLSHAPE_CYLINDER
        NULL, // COLSHAPE_TRIS
        NULL  // COLSHAPE_QUAD
    },
};

/**
 * Iterates through all OC colliders and collides them with all subsequent OC colliders on the list. During an OC
 * collision, colliders with overlapping elements move away from each other so that their elements no longer overlap.
 * The relative amount each collider is pushed is determined by the collider's mass. Only JntSph and Cylinder colliders
 * can collide, and each collider must have the OC flag corresponding to the other's OC type. Additionally, OC2_UNK1
 * cannot collide with OC2_UNK2, nor can two colliders that share an actor.
 */
void CollisionCheck_OC(PlayState* play, CollisionCheckContext* colChkCtx) {
    Collider** leftColP;
    Collider** rightColP;
    ColChkVsFunc vsFunc;

    for (leftColP = colChkCtx->colOC; leftColP < colChkCtx->colOC + colChkCtx->colOCCount; leftColP++) {
        if (*leftColP == NULL || CollisionCheck_SkipOC(*leftColP) == true) {
            continue;
        }
        for (rightColP = leftColP + 1; rightColP < colChkCtx->colOC + colChkCtx->colOCCount; rightColP++) {
            if (*rightColP == NULL || CollisionCheck_SkipOC(*rightColP) == true ||
                CollisionCheck_Incompatible(*leftColP, *rightColP) == true) {
                continue;
            }
            vsFunc = sOCVsFuncs[(*leftColP)->shape][(*rightColP)->shape];
            if (vsFunc == NULL) {
                // "Not compatible"
                PRINTF("CollisionCheck_OC():未対応 %d, %d\n", (*leftColP)->shape, (*rightColP)->shape);
                continue;
            }
            vsFunc(play, colChkCtx, *leftColP, *rightColP);
        }
    }
}

/**
 * Initializes CollisionCheckInfo to default values
 */
void CollisionCheck_InitInfo(CollisionCheckInfo* info) {
    static CollisionCheckInfo init = {
        NULL, { 0.0f, 0.0f, 0.0f }, 10, 10, 0, 50, 8, 0, 0, 0, 0,
    };

    *info = init;
}

/**
 * Resets ColisionCheckInfo fields other than DamageTable, mass, and dim.
 */
void CollisionCheck_ResetDamage(CollisionCheckInfo* info) {
    info->damage = 0;
    info->damageEffect = 0;
    info->atHitEffect = 0;
    info->acHitEffect = 0;
    info->displacement.x = info->displacement.y = info->displacement.z = 0.0f;
}

/**
 * Sets up CollisionCheckInfo using the values in init. Does not set a damage table or the unused unk_14.
 * Unused, as all actors that don't set a damage table set their CollisionCheckInfo manually
 */
void CollisionCheck_SetInfoNoDamageTable(CollisionCheckInfo* info, CollisionCheckInfoInit* init) {
    info->health = init->health;
    info->cylRadius = init->cylRadius;
    info->cylHeight = init->cylHeight;
    info->mass = init->mass;
}

/**
 * Sets up CollisionCheckInfo using the values in init. Does not set the unused unk_14
 */
void CollisionCheck_SetInfo(CollisionCheckInfo* info, DamageTable* damageTable, CollisionCheckInfoInit* init) {
    info->health = init->health;
    info->damageTable = damageTable;
    info->cylRadius = init->cylRadius;
    info->cylHeight = init->cylHeight;
    info->mass = init->mass;
}

/**
 * Sets up CollisionCheckInfo using the values in init. Sets the unused unk_14
 */
void CollisionCheck_SetInfo2(CollisionCheckInfo* info, DamageTable* damageTable, CollisionCheckInfoInit2* init) {
    info->health = init->health;
    info->damageTable = damageTable;
    info->cylRadius = init->cylRadius;
    info->cylHeight = init->cylHeight;
    info->cylYShift = init->cylYShift;
    info->mass = init->mass;
}

/**
 * Sets up CollisionCheckInfo using the values in Init and a preset damage table. Sets the unused unk_14.
 * Unused, as all actors that use a preset damage table set their CollisionCheckInfo manually.
 */
void CollisionCheck_SetInfoGetDamageTable(CollisionCheckInfo* info, s32 index, CollisionCheckInfoInit2* init) {
    CollisionCheck_SetInfo2(info, DamageTable_Get(index), init);
}

/**
 * Apply AC damage effect
 */
void CollisionCheck_ApplyDamage(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col,
                                ColliderElement* elem) {
    DamageTable* tbl;
    f32 damage;

    if (col->actor == NULL || !(col->acFlags & AC_HIT)) {
        return;
    }
    if (!(elem->acElemFlags & ACELEM_HIT) || elem->acElemFlags & ACELEM_NO_DAMAGE) {
        return;
    }

    ASSERT(elem->acHitElem != NULL, "pclobj_elem->ac_hit_elem != NULL", "../z_collision_check.c", 6493);
    tbl = col->actor->colChkInfo.damageTable;
    if (tbl == NULL) {
        damage = (f32)elem->acHitElem->atDmgInfo.damage - elem->acDmgInfo.defense;
        if (damage < 0) {
            damage = 0;
        }
    } else {
        s32 i;
        u32 flags = elem->acHitElem->atDmgInfo.dmgFlags;

        for (i = 0; i < 32; i++, flags >>= 1) {
            if (flags == 1) {
                break;
            }
        }

        damage = tbl->table[i] & 0xF;
        col->actor->colChkInfo.damageEffect = tbl->table[i] >> 4 & 0xF;
    }
    if (!(col->acFlags & AC_HARD)) {
        col->actor->colChkInfo.damage += damage;
    }
}

/**
 * Apply ColliderJntSph AC damage effect
 */
void CollisionCheck_ApplyDamageJntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderJntSph* jntSph = (ColliderJntSph*)col;
    s32 i;

    if (jntSph->count > 0 && jntSph->elements != NULL) {
        for (i = 0; i < jntSph->count; i++) {
            CollisionCheck_ApplyDamage(play, colChkCtx, &jntSph->base, &jntSph->elements[i].base);
        }
    }
}

/**
 * Apply ColliderCylinder AC damage effect
 */
void CollisionCheck_ApplyDamageCyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderCylinder* cyl = (ColliderCylinder*)col;

    CollisionCheck_ApplyDamage(play, colChkCtx, &cyl->base, &cyl->elem);
}

/**
 * Apply ColliderTris AC damage effect
 */
void CollisionCheck_ApplyDamageTris(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderTris* tris = (ColliderTris*)col;
    s32 i;

    for (i = 0; i < tris->count; i++) {
        CollisionCheck_ApplyDamage(play, colChkCtx, col, &tris->elements[i].base);
    }
}

/**
 *  Apply ColliderQuad AC damage effect
 */
void CollisionCheck_ApplyDamageQuad(PlayState* play, CollisionCheckContext* colChkCtx, Collider* col) {
    ColliderQuad* quad = (ColliderQuad*)col;

    CollisionCheck_ApplyDamage(play, colChkCtx, &quad->base, &quad->elem);
}

static ColChkApplyFunc sApplyDamageFuncs[COLSHAPE_MAX] = {
    CollisionCheck_ApplyDamageJntSph,
    CollisionCheck_ApplyDamageCyl,
    CollisionCheck_ApplyDamageTris,
    CollisionCheck_ApplyDamageQuad,
};

/**
 * For all AC colliders, sets any damage effects from collisions with AT colliders to their corresponding actor's
 * CollisionCheckInfo.
 */
void CollisionCheck_Damage(PlayState* play, CollisionCheckContext* colChkCtx) {
    s32 i;
    Collider* col;

    for (i = 0; i < colChkCtx->colACCount; i++) {
        col = colChkCtx->colAC[i];

        if (col == NULL) {
            continue;
        }
        if (col->acFlags & AC_NO_DAMAGE) {
            continue;
        }
        sApplyDamageFuncs[col->shape](play, colChkCtx, col);
    }
}

/**
 * Checks if the line ab intersects any of the ColliderJntSph's elements
 */
s32 CollisionCheck_LineOC_JntSph(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider, Vec3f* a,
                                 Vec3f* b) {
    static Linef lineSeg;
    ColliderJntSph* jntSph = (ColliderJntSph*)collider;
    s32 i;

    for (i = 0; i < jntSph->count; i++) {
        ColliderJntSphElement* element = &jntSph->elements[i];

        if (!(element->base.ocElemFlags & OCELEM_ON)) {
            continue;
        }
        lineSeg.a = *a;
        lineSeg.b = *b;
        if (Math3D_LineVsSph(&element->dim.worldSphere, &lineSeg) == true) {
            return true;
        }
    }
    return false;
}

/**
 * Checks if the line segment ab intersects the ColliderCylinder
 */
s32 CollisionCheck_LineOC_Cyl(PlayState* play, CollisionCheckContext* colChkCtx, Collider* collider, Vec3f* a,
                              Vec3f* b) {
    static Vec3f intersectA;
    static Vec3f intersectB;
    ColliderCylinder* cylinder = (ColliderCylinder*)collider;

    if (!(cylinder->elem.ocElemFlags & OCELEM_ON)) {
        return false;
    }
    if (Math3D_CylVsLineSeg(&cylinder->dim, a, b, &intersectA, &intersectB) != 0) {
        return true;
    }
    return false;
}

static ColChkLineFunc sOCLineCheckFuncs[COLSHAPE_MAX] = {
    CollisionCheck_LineOC_JntSph,
    CollisionCheck_LineOC_Cyl,
    NULL,
    NULL,
};

/**
 * Checks if the line segment ab intersects any OC colliders, excluding those attached to actors
 * on the exclusion list. Returns true if there are any intersections and false otherwise.
 */
s32 CollisionCheck_LineOC(PlayState* play, CollisionCheckContext* colChkCtx, Vec3f* a, Vec3f* b, Actor** exclusions,
                          s32 numExclusions) {
    ColChkLineFunc lineCheck;
    Collider** col;
    s32 i;
    s32 exclude;
    s32 result = 0;

    for (col = colChkCtx->colOC; col < colChkCtx->colOC + colChkCtx->colOCCount; col++) {
        if (CollisionCheck_SkipOC(*col) == true) {
            continue;
        }
        exclude = false;
        for (i = 0; i < numExclusions; i++) {
            if ((*col)->actor == exclusions[i]) {
                exclude = true;
                break;
            }
        }
        if (exclude == true) {
            continue;
        }
        lineCheck = sOCLineCheckFuncs[(*col)->shape];
        if (lineCheck == NULL) {
            // "type %d not supported"
            PRINTF("CollisionCheck_generalLineOcCheck():未対応 %dタイプ\n", (*col)->shape);
        } else {
            result = lineCheck(play, colChkCtx, (*col), a, b);
            if (result) {
                break;
            }
        }
    }
    return result;
}

/**
 * Checks if the line segment ab intersects any OC colliders. Returns true if there are any intersections and false
 * otherwise. Unused.
 */
s32 CollisionCheck_LineOCCheckAll(PlayState* play, CollisionCheckContext* colChkCtx, Vec3f* a, Vec3f* b) {
    return CollisionCheck_LineOC(play, colChkCtx, a, b, NULL, 0);
}

/**
 * Checks if the line segment ab intersects any OC colliders, excluding those attached to actors on the exclusion list.
 * Returns true if there are any intersections and false otherwise.
 */
s32 CollisionCheck_LineOCCheck(PlayState* play, CollisionCheckContext* colChkCtx, Vec3f* a, Vec3f* b,
                               Actor** exclusions, s32 numExclusions) {
    return CollisionCheck_LineOC(play, colChkCtx, a, b, exclusions, numExclusions);
}

/**
 * Moves the ColliderCylinder's position to the actor's position
 */
void Collider_UpdateCylinder(Actor* actor, ColliderCylinder* cyl) {
    cyl->dim.pos.x = actor->world.pos.x;
    cyl->dim.pos.y = actor->world.pos.y;
    cyl->dim.pos.z = actor->world.pos.z;
}

/**
 * Sets the ColliderCylinder's position
 */
void Collider_SetCylinderPosition(ColliderCylinder* cyl, Vec3s* pos) {
    cyl->dim.pos.x = pos->x;
    cyl->dim.pos.y = pos->y;
    cyl->dim.pos.z = pos->z;
}

/**
 * Sets the ColliderQuad's vertices
 */
void Collider_SetQuadVertices(ColliderQuad* quad, Vec3f* a, Vec3f* b, Vec3f* c, Vec3f* d) {
    Math_Vec3f_Copy(&quad->dim.quad[2], c);
    Math_Vec3f_Copy(&quad->dim.quad[3], d);
    Math_Vec3f_Copy(&quad->dim.quad[0], a);
    Math_Vec3f_Copy(&quad->dim.quad[1], b);
    Collider_SetQuadMidpoints(&quad->dim);
}

/**
 * Sets the specified ColliderTrisElement's vertices
 */
void Collider_SetTrisVertices(ColliderTris* tris, s32 elemIndex, Vec3f* a, Vec3f* b, Vec3f* c) {
    ColliderTrisElement* trisElem = &tris->elements[elemIndex];
    f32 nx;
    f32 ny;
    f32 nz;
    f32 originDist;

    Math_Vec3f_Copy(&trisElem->dim.vtx[0], a);
    Math_Vec3f_Copy(&trisElem->dim.vtx[1], b);
    Math_Vec3f_Copy(&trisElem->dim.vtx[2], c);
    Math3D_DefPlane(a, b, c, &nx, &ny, &nz, &originDist);
    trisElem->dim.plane.normal.x = nx;
    trisElem->dim.plane.normal.y = ny;
    trisElem->dim.plane.normal.z = nz;
    trisElem->dim.plane.originDist = originDist;
}

/**
 * Sets the specified ColliderTrisElement's dim using the values in src
 */
void Collider_SetTrisDim(PlayState* play, ColliderTris* tris, s32 elemIndex, ColliderTrisElementDimInit* src) {
    ColliderTrisElement* trisElem = &tris->elements[elemIndex];

    Collider_SetTrisElementDim(play, &trisElem->dim, src);
}

#if OOT_DEBUG
// The two static Vec3f variables in the function below cross a block index rollover, causing a bss order swap.
//! In order to replicate this behavior, we declare a certain amount of sBssDummy variables throughout the file, which
//! we fit inside padding added by the compiler between structs like TriNorm and/or Vec3f, so they don't take space in
//! bss.
#endif

/**
 * Updates the world spheres for all of the collider's JntSph elements attached to the specified limb
 */
void Collider_UpdateSpheres(s32 limb, ColliderJntSph* jntSph) {
    static Vec3f modelPos;
    static Vec3f worldPos; // bss ordering changes here
    s32 i;

    for (i = 0; i < jntSph->count; i++) {
        if (limb == jntSph->elements[i].dim.limb) {
            modelPos.x = jntSph->elements[i].dim.modelSphere.center.x;
            modelPos.y = jntSph->elements[i].dim.modelSphere.center.y;
            modelPos.z = jntSph->elements[i].dim.modelSphere.center.z;
            Matrix_MultVec3f(&modelPos, &worldPos);
            jntSph->elements[i].dim.worldSphere.center.x = worldPos.x;
            jntSph->elements[i].dim.worldSphere.center.y = worldPos.y;
            jntSph->elements[i].dim.worldSphere.center.z = worldPos.z;
            jntSph->elements[i].dim.worldSphere.radius =
                jntSph->elements[i].dim.modelSphere.radius * jntSph->elements[i].dim.scale;
        }
    }
}

/**
 * Spawns red blood droplets.
 * No actor has a collision type that spawns red blood.
 */
void CollisionCheck_SpawnRedBlood(PlayState* play, Vec3f* v) {
    static EffectSparkInit sparkInit;
    s32 effectIndex;

    sparkInit.position.x = v->x;
    sparkInit.position.y = v->y;
    sparkInit.position.z = v->z;
    sparkInit.uDiv = 5;
    sparkInit.vDiv = 5;
    sparkInit.colorStart[0].r = 128;
    sparkInit.colorStart[0].g = 0;
    sparkInit.colorStart[0].b = 64;
    sparkInit.colorStart[0].a = 255;
    sparkInit.colorStart[1].r = 128;
    sparkInit.colorStart[1].g = 0;
    sparkInit.colorStart[1].b = 64;
    sparkInit.colorStart[1].a = 255;
    sparkInit.colorStart[2].r = 255;
    sparkInit.colorStart[2].g = 128;
    sparkInit.colorStart[2].b = 0;
    sparkInit.colorStart[2].a = 255;
    sparkInit.colorStart[3].r = 255;
    sparkInit.colorStart[3].g = 128;
    sparkInit.colorStart[3].b = 0;
    sparkInit.colorStart[3].a = 255;
    sparkInit.colorEnd[0].r = 64;
    sparkInit.colorEnd[0].g = 0;
    sparkInit.colorEnd[0].b = 32;
    sparkInit.colorEnd[0].a = 0;
    sparkInit.colorEnd[1].r = 64;
    sparkInit.colorEnd[1].g = 0;
    sparkInit.colorEnd[1].b = 32;
    sparkInit.colorEnd[1].a = 0;
    sparkInit.colorEnd[2].r = 128;
    sparkInit.colorEnd[2].g = 0;
    sparkInit.colorEnd[2].b = 64;
    sparkInit.colorEnd[2].a = 0;
    sparkInit.colorEnd[3].r = 128;
    sparkInit.colorEnd[3].g = 0;
    sparkInit.colorEnd[3].b = 64;
    sparkInit.colorEnd[3].a = 0;
    sparkInit.timer = 0;
    sparkInit.duration = 16;
    sparkInit.speed = 8.0f;
    sparkInit.gravity = -1.0f;

    Effect_Add(play, &effectIndex, EFFECT_SPARK, 0, 1, &sparkInit);
}

/**
 * Spawns water droplets.
 * No actor has a collision type that spawns water droplets.
 */
void CollisionCheck_SpawnWaterDroplets(PlayState* play, Vec3f* v) {
    static EffectSparkInit sparkInit;
    s32 effectIndex;

    sparkInit.position.x = v->x;
    sparkInit.position.y = v->y;
    sparkInit.position.z = v->z;
    sparkInit.uDiv = 5;
    sparkInit.vDiv = 5;
    sparkInit.colorStart[0].r = 255;
    sparkInit.colorStart[0].g = 255;
    sparkInit.colorStart[0].b = 255;
    sparkInit.colorStart[0].a = 255;
    sparkInit.colorStart[1].r = 100;
    sparkInit.colorStart[1].g = 100;
    sparkInit.colorStart[1].b = 100;
    sparkInit.colorStart[1].a = 100;
    sparkInit.colorStart[2].r = 100;
    sparkInit.colorStart[2].g = 100;
    sparkInit.colorStart[2].b = 100;
    sparkInit.colorStart[2].a = 100;
    sparkInit.colorStart[3].r = 100;
    sparkInit.colorStart[3].g = 100;
    sparkInit.colorStart[3].b = 100;
    sparkInit.colorStart[3].a = 100;
    sparkInit.colorEnd[0].r = 50;
    sparkInit.colorEnd[0].g = 50;
    sparkInit.colorEnd[0].b = 50;
    sparkInit.colorEnd[0].a = 50;
    sparkInit.colorEnd[1].r = 50;
    sparkInit.colorEnd[1].g = 50;
    sparkInit.colorEnd[1].b = 50;
    sparkInit.colorEnd[1].a = 50;
    sparkInit.colorEnd[2].r = 50;
    sparkInit.colorEnd[2].g = 50;
    sparkInit.colorEnd[2].b = 50;
    sparkInit.colorEnd[2].a = 50;
    sparkInit.colorEnd[3].r = 0;
    sparkInit.colorEnd[3].g = 0;
    sparkInit.colorEnd[3].b = 0;
    sparkInit.colorEnd[3].a = 0;
    sparkInit.timer = 0;
    sparkInit.duration = 16;
    sparkInit.speed = 8.0f;
    sparkInit.gravity = -1.0f;

    Effect_Add(play, &effectIndex, EFFECT_SPARK, 0, 1, &sparkInit);
}

/**
 * Spawns streaks of light from hits against solid objects
 */
void CollisionCheck_SpawnShieldParticles(PlayState* play, Vec3f* v) {
    static EffectShieldParticleInit metalInit = {
        16,
        { 0, 0, 0 },
        { 0, 200, 255, 255 },
        { 255, 255, 255, 255 },
        { 255, 255, 128, 255 },
        { 255, 255, 0, 255 },
        { 255, 64, 0, 200 },
        { 255, 0, 0, 255 },
        2.1f,
        35.0f,
        30.0f,
        8,
        { 0, 0, 0, { 0, 128, 255 }, false, 300 },
        true,
    };
    s32 effectIndex;

    metalInit.position.x = v->x;
    metalInit.position.y = v->y;
    metalInit.position.z = v->z;
    metalInit.lightPoint.x = metalInit.position.x;
    metalInit.lightPoint.y = metalInit.position.y;
    metalInit.lightPoint.z = metalInit.position.z;

    Effect_Add(play, &effectIndex, EFFECT_SHIELD_PARTICLE, 0, 1, &metalInit);
}

/**
 * Spawns streaks of light and plays a metallic sound effect
 */
void CollisionCheck_SpawnShieldParticlesMetal(PlayState* play, Vec3f* v) {
    CollisionCheck_SpawnShieldParticles(play, v);
    Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_REFLECT_SW, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

/**
 * Spawns streaks of light and plays a metallic sound effect at the specified position
 */
void CollisionCheck_SpawnShieldParticlesMetalSfx(PlayState* play, Vec3f* v, Vec3f* pos) {
    CollisionCheck_SpawnShieldParticles(play, v);
    Audio_PlaySfxGeneral(NA_SE_IT_SHIELD_REFLECT_SW, pos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

/**
 * Spawns streaks of light and plays a metallic sound effect
 */
void CollisionCheck_SpawnShieldParticlesMetal2(PlayState* play, Vec3f* v) {
    CollisionCheck_SpawnShieldParticlesMetal(play, v);
}

/**
 * Spawns streaks of light and plays a wooden sound effect
 */
void CollisionCheck_SpawnShieldParticlesWood(PlayState* play, Vec3f* v, Vec3f* actorPos) {
    static EffectShieldParticleInit woodInit = {
        16,
        { 0, 0, 0 },
        { 0, 200, 255, 255 },
        { 255, 255, 255, 255 },
        { 255, 255, 128, 255 },
        { 255, 255, 0, 255 },
        { 255, 64, 0, 200 },
        { 255, 0, 0, 255 },
        2.1f,
        35.0f,
        30.0f,
        8,
        { 0, 0, 0, { 0, 128, 255 }, false, 300 },
        false,
    };
    s32 effectIndex;

    woodInit.position.x = v->x;
    woodInit.position.y = v->y;
    woodInit.position.z = v->z;
    woodInit.lightPoint.x = woodInit.position.x;
    woodInit.lightPoint.y = woodInit.position.y;
    woodInit.lightPoint.z = woodInit.position.z;

    Effect_Add(play, &effectIndex, EFFECT_SHIELD_PARTICLE, 0, 1, &woodInit);
    Audio_PlaySfxGeneral(NA_SE_IT_REFLECTION_WOOD, actorPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

/**
 * Determines if the line segment connecting itemPos and itemProjPos intersects the side of a cylinder with the given
 * radius, height, and offset at actorPos. Returns 3 if either endpoint is inside the cylinder, otherwise returns the
 * number of points of intersection with the side of the cylinder. The locations of those points are put in out1 and
 * out2, with out1 being closer to itemPos. Line segments that pass through both bases of the cylinder are not detected.
 */
s32 CollisionCheck_CylSideVsLineSeg(f32 radius, f32 height, f32 offset, Vec3f* actorPos, Vec3f* itemPos,
                                    Vec3f* itemProjPos, Vec3f* out1, Vec3f* out2) {
    Vec3f actorToItem;
    Vec3f actorToItemProj;
    Vec3f itemStep;
    f32 frac1;
    f32 frac2;
    u32 intersect2;
    u32 intersect1;
    u32 test1;
    u32 test2;
    f32 radSqDiff;
    f32 actorDotItemXZ;
    f32 zero = 0.0f;
    f32 closeDist;
    s32 pad1;
    s32 pad2;

    actorToItem.x = itemPos->x - actorPos->x;
    actorToItem.y = itemPos->y - actorPos->y - offset;
    actorToItem.z = itemPos->z - actorPos->z;

    actorToItemProj.x = itemProjPos->x - actorPos->x;
    actorToItemProj.y = itemProjPos->y - actorPos->y - offset;
    actorToItemProj.z = itemProjPos->z - actorPos->z;

    itemStep.x = actorToItemProj.x - actorToItem.x;
    itemStep.y = actorToItemProj.y - actorToItem.y;
    itemStep.z = actorToItemProj.z - actorToItem.z;

    if ((actorToItem.y > 0.0f) && (actorToItem.y < height) && (sqrtf(SQXZ(actorToItem)) < radius)) {
        return 3;
    }

    if ((actorToItemProj.y > 0.0f) && (actorToItemProj.y < height) && (sqrtf(SQXZ(actorToItemProj)) < radius)) {
        return 3;
    }
    radSqDiff = SQXZ(actorToItem) - SQ(radius);
    if (!IS_ZERO(SQXZ(itemStep))) {
        actorDotItemXZ = (2.0f * itemStep.x * actorToItem.x) + (2.0f * itemStep.z * actorToItem.z);
        if (SQ(actorDotItemXZ) < (4.0f * SQXZ(itemStep) * radSqDiff)) {
            return 0;
        }
        if (SQ(actorDotItemXZ) - (4.0f * SQXZ(itemStep) * radSqDiff) > zero) {
            intersect1 = intersect2 = true;
        } else {
            intersect1 = true;
            intersect2 = false;
        }
        closeDist = sqrtf(SQ(actorDotItemXZ) - (4.0f * SQXZ(itemStep) * radSqDiff));
        if (intersect1 == true) {
            frac1 = (closeDist - actorDotItemXZ) / (2.0f * SQXZ(itemStep));
        }
        if (intersect2 == true) {
            frac2 = (-actorDotItemXZ - closeDist) / (2.0f * SQXZ(itemStep));
        }
    } else if (!IS_ZERO((2.0f * itemStep.x * actorToItem.x) + (2.0f * itemStep.z * actorToItem.z))) {
        intersect1 = true;
        intersect2 = false;
        frac1 = -radSqDiff / ((2.0f * itemStep.x * actorToItem.x) + (2.0f * itemStep.z * actorToItem.z));
    } else {
        if (radSqDiff <= 0.0f) {
            test1 = (0.0f < actorToItem.y) && (actorToItem.y < height);
            test2 = (0.0f < actorToItemProj.y) && (actorToItemProj.y < height);

            if (test1 && test2) {
                *out1 = actorToItem;
                *out2 = actorToItemProj;
                return 2;
            }
            if (test1) {
                *out1 = actorToItem;
                return 1;
            }
            if (test2) {
                *out1 = actorToItemProj;
                return 1;
            }
        }
        return 0;
    }

    if (!intersect2) {
        if (frac1 < 0.0f || 1.0f < frac1) {
            return 0;
        }
    } else {
        test1 = (frac1 < 0.0f || 1.0f < frac1);
        test2 = (frac2 < 0.0f || 1.0f < frac2);

        if (test1 && test2) {
            return 0;
        }
        if (test1) {
            intersect1 = false;
        }
        if (test2) {
            intersect2 = false;
        }
    }

    if ((intersect1 == true) &&
        ((frac1 * itemStep.y + actorToItem.y < 0.0f) || (height < frac1 * itemStep.y + actorToItem.y))) {
        intersect1 = false;
    }
    if ((intersect2 == true) &&
        ((frac2 * itemStep.y + actorToItem.y < 0.0f) || (height < frac2 * itemStep.y + actorToItem.y))) {
        intersect2 = false;
    }
    if (!intersect1 && !intersect2) {
        return 0;
    } else if ((intersect1 == true) && (intersect2 == true)) {
        out1->x = frac1 * itemStep.x + actorToItem.x + actorPos->x;
        out1->y = frac1 * itemStep.y + actorToItem.y + actorPos->y;
        out1->z = frac1 * itemStep.z + actorToItem.z + actorPos->z;
        out2->x = frac2 * itemStep.x + actorToItem.x + actorPos->x;
        out2->y = frac2 * itemStep.y + actorToItem.y + actorPos->y;
        out2->z = frac2 * itemStep.z + actorToItem.z + actorPos->z;
        return 2;
    } else if (intersect1 == true) {
        out1->x = frac1 * itemStep.x + actorToItem.x + actorPos->x;
        out1->y = frac1 * itemStep.y + actorToItem.y + actorPos->y;
        out1->z = frac1 * itemStep.z + actorToItem.z + actorPos->z;
        return 1;
    } else if (intersect2 == true) {
        out1->x = frac2 * itemStep.x + actorToItem.x + actorPos->x;
        out1->y = frac2 * itemStep.y + actorToItem.y + actorPos->y;
        out1->z = frac2 * itemStep.z + actorToItem.z + actorPos->z;
        return 1;
    }
    return 1;
}

/**
 * Gets damage from a sword strike using generic values, and returns 0 if the attack is
 * not sword-type. Used by bosses to require that a sword attack deal the killing blow.
 */
u8 CollisionCheck_GetSwordDamage(s32 dmgFlags) {
    u8 damage = 0;

    if (dmgFlags & (DMG_SPIN_KOKIRI | DMG_SLASH_KOKIRI)) {
        damage = 1;
    } else if (dmgFlags & (DMG_JUMP_KOKIRI | DMG_SPIN_MASTER | DMG_SLASH_MASTER | DMG_HAMMER_SWING | DMG_DEKU_STICK)) {
        damage = 2;
    } else if (dmgFlags & (DMG_HAMMER_JUMP | DMG_JUMP_MASTER | DMG_SPIN_GIANT | DMG_SLASH_GIANT)) {
        damage = 4;
    } else if (dmgFlags & DMG_JUMP_GIANT) {
        damage = 8;
    }

#if OOT_DEBUG
    KREG(7) = damage;
#endif

    return damage;
}
