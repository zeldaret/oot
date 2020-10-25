#include "global.h"
#include "vt.h"

void CollisionCheck_SpawnRedBlood(GlobalContext* globalCtx, Vec3f* v);
void CollisionCheck_ShieldParticles(GlobalContext* globalCtx, Vec3f* v);
void CollisionCheck_SpawnWaterDroplets(GlobalContext* globalCtx, Vec3f* v);
void CollisionCheck_ShieldParticlesWood(GlobalContext* globalCtx, Vec3f* v, Vec3f* arg2);
void CollisionCheck_DrawPoly(GraphicsContext *gfx, Vec3f *vA, Vec3f *vB, Vec3f *vC, u8 r, u8 g, u8 b);

// draw red poly
void CollisionCheck_DrawRedPoly(GraphicsContext* gfx, Vec3f* vA, Vec3f* vB, Vec3f* vC) {
    CollisionCheck_DrawPoly(gfx, vA, vB, vC, 255, 0, 0);
}

// draw poly
#ifdef NON_MATCHING
// regalloc starting in the loop
void CollisionCheck_DrawPoly(GraphicsContext *gfx, Vec3f *vA, Vec3f *vB, Vec3f *vC, u8 r, u8 g, u8 b) {
    Vtx_tn* sp8C;
    Vtx_tn* vtx;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;

    OPEN_DISPS(gfx, "../z_collision_check.c", 713);
    
    gSPMatrix(oGfxCtx->polyOpa.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x00, 0xFF, r, g, b, 50);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
    gSPTexture(oGfxCtx->polyOpa.p++, 0, 0, 0, G_TX_RENDERTILE, G_OFF);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetCombineLERP(oGfxCtx->polyOpa.p++, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);
    // if(1){Gfx* temp = oGfxCtx->polyOpa.p++;temp->words.w0 = 0xFC41C7FF;temp->words.w1 = 0xFFFFFE38;}
    gSPClearGeometryMode(oGfxCtx->polyOpa.p++, G_CULL_BOTH);
    gSPSetGeometryMode(oGfxCtx->polyOpa.p++, G_LIGHTING);
    gDPPipeSync(oGfxCtx->polyOpa.p++);

    sp8C = (Vtx_tn*) Graph_Alloc(gfx, 3*sizeof(Vtx_tn));
    if (sp8C == NULL) {
        __assert("vtx_tbl != NULL", "../z_collision_check.c", 726);
    }
    
    sp8C[0].ob[0] = vA->x;
    sp8C[0].ob[1] = vA->y;
    sp8C[0].ob[2] = vA->z;
    sp8C[1].ob[0] = vB->x;
    sp8C[1].ob[1] = vB->y;
    sp8C[1].ob[2] = vB->z;
    sp8C[2].ob[0] = vC->x;
    sp8C[2].ob[1] = vC->y;
    sp8C[2].ob[2] = vC->z;
    
    Math3D_DefPlane(vA, vB, vC, &sp84, &sp80, &sp7C, &sp78);
    
    for(vtx = sp8C; vtx < sp8C + 3; vtx++) {
        vtx->flag = 0;
        vtx->tc[0] = 0;
        vtx->tc[1] = 0;
        vtx->n[0] = sp84;
        vtx->n[1] = sp80;
        vtx->n[2] = sp7C;
        vtx->a = 255;
    }
    
    gSPVertex(oGfxCtx->polyOpa.p++, sp8C, 3, 0);
    gSP1Triangle(oGfxCtx->polyOpa.p++, 0, 1, 2, 0);

    CLOSE_DISPS(gfx, "../z_collision_check.c", 757);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/CollisionCheck_DrawPoly.s")
#endif

s32 Collider_InitBase(GlobalContext* globalCtx, Collider* collider) {
    static Collider init = { NULL, NULL, NULL, NULL, 0, 0, 0, 0, COLTYPE_UNK3, COLSHAPE_INVALID };
    *collider = init;
    return 1;
}

s32 Collider_DestroyBase(GlobalContext* globalCtx, Collider* collider) {
    return 1;
}

s32 Collider_SetBase_Actor(GlobalContext* globalCtx, Collider* collider, ColliderInit_Actor* src) {
    collider->actor = src->actor;
    collider->atFlags = src->atFlags;
    collider->acFlags = src->acFlags;
    collider->maskA = src->maskA;
    collider->maskB = 0x10;
    collider->shape = src->shape;
    return 1;
}

// maskB = 0x10
s32 Collider_SetBase_Set3(GlobalContext* globalCtx, Collider* collider, Actor* actor, ColliderInit_Set3* src) {
    collider->actor = actor;
    collider->type = src->type;
    collider->atFlags = src->atFlags;
    collider->acFlags = src->acFlags;
    collider->maskA = src->maskA;
    collider->maskB = 0x10;
    collider->shape = src->shape;
    return 1;
}

// maskB = src->maskB
s32 Collider_SetBase(GlobalContext* globalCtx, Collider* collider, Actor* actor, ColliderInit* src) {
    collider->actor = actor;
    collider->type = src->type;
    collider->atFlags = src->atFlags;
    collider->acFlags = src->acFlags;
    collider->maskA = src->maskA;
    collider->maskB = src->maskB;
    collider->shape = src->shape;
    return 1;
}

void Collider_BaseSetAT(GlobalContext* globalCtx, Collider* collider) {
    collider->at = NULL;
    collider->atFlags &= ~0x6;
}

void Collider_BaseSetAC(GlobalContext* globalCtx, Collider* collider) {
    collider->ac = NULL;
    collider->acFlags &= ~0x82;
}

void Collider_BaseSetOC(GlobalContext* globalCtx, Collider* collider) {
    collider->oc = NULL;
    collider->maskA &= ~0x2;
    collider->maskB &= ~0x1;
}

s32 Collider_InitTouch(GlobalContext* globalCtx, ColliderTouch* touch) {
    static ColliderTouch init = { 0, 0, 0 };
    *touch = init;
    return 1;
}

s32 Collider_DestroyTouch(GlobalContext* globalCtx, ColliderTouch* touch) {
    return 1;
}

// src might actually be a different type
s32 Collider_SetTouch(GlobalContext* globalCtx, ColliderTouch* dest, ColliderTouch* src) {
    dest->flags = src->flags;
    dest->effect = src->effect;
    dest->damage = src->damage;
    return 1;
}

void Collider_BodySetAT_Unk(GlobalContext* globalCtx, ColliderBody* body) {
}

s32 Collider_InitBump(GlobalContext* globalCtx, ColliderBump* bump) {
    static ColliderBump init = { 0xFFCFFFFF, 0, 0, { 0, 0, 0 } };
    *bump = init;
    return 1;
}

s32 Collider_DestroyBump(GlobalContext* globalCtx, ColliderBump* bump) {
    return 1;
}

s32 Collider_SetBump(GlobalContext* globalCtx, ColliderBump* bump, ColliderBumpInit* init) {
    bump->flags = init->flags;
    bump->effect = init->effect;
    bump->defense = init->defense;
    return 1;
}

s32 Collider_InitBody(GlobalContext* globalCtx, ColliderBody* body) {
    static ColliderBody init = {
        { 0, 0, 0 }, { 0xFFCFFFFF, 0, 0, { 0, 0, 0 } }, 0, 0, 0, 0, NULL, NULL, NULL, NULL,
    };
    *body = init;
    Collider_InitTouch(globalCtx, &body->toucher);
    Collider_InitBump(globalCtx, &body->bumper);
    return 1;
}

s32 Collider_DestroyBody(GlobalContext* globalCtx, ColliderBody* body) {
    Collider_DestroyTouch(globalCtx, &body->toucher);
    Collider_DestroyBump(globalCtx, &body->bumper);
    return 1;
}

s32 Collider_SetBody(GlobalContext* globalCtx, ColliderBody* body, ColliderBodyInit* bodyInit) {
    body->flags = bodyInit->bodyFlags;
    Collider_SetTouch(globalCtx, &body->toucher, &bodyInit->toucher);
    Collider_SetBump(globalCtx, &body->bumper, &bodyInit->bumper);
    body->toucherFlags = bodyInit->toucherFlags;
    body->bumperFlags = bodyInit->bumperFlags;
    body->ocFlags = bodyInit->bodyFlags2;
    return 1;
}

void Collider_BodySetAT(GlobalContext* globalCtx, ColliderBody* body) {
    body->atHit = NULL;
    body->atHitItem = NULL;
    body->toucherFlags &= ~0x2;
    body->toucherFlags &= ~0x40;
    Collider_BodySetAT_Unk(globalCtx, body);
}

void Collider_BodySetAC(GlobalContext* globalCtx, ColliderBody* body) {
    body->bumper.hitPos.z = 0;
    body->bumperFlags &= ~0x2;
    body->bumperFlags &= ~0x80;
    body->acHit = NULL;
    body->acHitItem = NULL;
    body->bumper.hitPos.y = body->bumper.hitPos.z;
    body->bumper.hitPos.x = body->bumper.hitPos.z;
}

void Collider_BodySetOC(GlobalContext* globalCtx, ColliderBody* body) {
    body->ocFlags &= ~0x2;
}

s32 Collider_InitJntSphItemDim(GlobalContext* globalCtx, ColliderJntSphItemDim* dim) {
    static ColliderJntSphItemDim init = { 0 };
    *dim = init;
    return 1;
}

s32 Collider_DestroyJntSphItemDim(GlobalContext* globalCtx, ColliderJntSphItemDim* item) {
    return 1;
}

s32 Collider_SetJntSphItemDim(GlobalContext* globalCtx, ColliderJntSphItemDim* dest, ColliderJntSphItemDimInit* src) {
    dest->joint = src->joint;
    dest->modelSphere = src->modelSphere;
    dest->scale = src->scale * 0.01f;
    return 1;
}

s32 Collider_InitJntSphItem(GlobalContext* globalCtx, ColliderJntSphItem* item) {
    Collider_InitBody(globalCtx, &item->body);
    Collider_InitJntSphItemDim(globalCtx, &item->dim);
    return 1;
}

s32 Collider_DestroyJntSphItem(GlobalContext* globalCtx, ColliderJntSphItem* item) {
    Collider_DestroyBody(globalCtx, &item->body);
    Collider_DestroyJntSphItemDim(globalCtx, &item->dim);
    return 1;
}

s32 Collider_SetJntSphItem(GlobalContext* globalCtx, ColliderJntSphItem* dest, ColliderJntSphItemInit* src) {
    Collider_SetBody(globalCtx, &dest->body, &src->body);
    Collider_SetJntSphItemDim(globalCtx, &dest->dim, &src->dim);
    return 1;
}

s32 Collider_JntSphItemSetAT(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    Collider_BodySetAT(globalCtx, &collider->body);
    return 1;
}

s32 Collider_JntSphItemSetAC(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    Collider_BodySetAC(globalCtx, &collider->body);
    return 1;
}

s32 Collider_JntSphItemSetOC(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    Collider_BodySetOC(globalCtx, &collider->body);
    return 1;
}

s32 Collider_InitJntSph(GlobalContext* globalCtx, ColliderJntSph* collider) {
    Collider_InitBase(globalCtx, &collider->base);
    collider->count = 0;
    collider->list = NULL;
    return 1;
}

// Destruct ColliderJntSph (malloc)
s32 Collider_FreeJntSph(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;

    Collider_DestroyBase(globalCtx, &collider->base);
    next = collider->list;

    while (next < collider->list + collider->count) {
        Collider_DestroyJntSphItem(globalCtx, next);
        next++;
    }

    collider->count = 0;
    if (collider->list != NULL) {
        ZeldaArena_FreeDebug(collider->list, "../z_collision_check.c", 1393);
    }
    collider->list = NULL;
    return 1;
}

// Destruct ColliderJntSph (no malloc)
s32 Collider_DestroyJntSph(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;

    Collider_DestroyBase(globalCtx, &collider->base);
    next = collider->list;

    while (next < collider->list + collider->count) {

        Collider_DestroyJntSphItem(globalCtx, next);
        next++;
    }
    collider->count = 0;
    collider->list = NULL;
    return 1;
}

// ClObjJntSph
s32 Collider_SetJntSph_Set(GlobalContext* globalCtx, ColliderJntSph* dest, ColliderJntSphInit_Actor* src) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    Collider_SetBase_Actor(globalCtx, &dest->base, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 1443);

    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("ClObjJntSph_set():zelda_malloc()出来ません。\n"); // EUC-JP: 出来ません。 | Can not.
        osSyncPrintf(VT_RST);
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitJntSphItem(globalCtx, destNext);
        Collider_SetJntSphItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

// ClObjJntSph_set3 (maskB = 0x10)
// called by En_Nwc
s32 Collider_SetJntSph_Set3(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor,
                            ColliderJntSphInit_Set3* src) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    Collider_SetBase_Set3(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 1490);

    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("ClObjJntSph_set3():zelda_malloc_出来ません。\n"); // EUC-JP: 出来ません。 | Can not.
        osSyncPrintf(VT_RST);
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitJntSphItem(globalCtx, destNext);
        Collider_SetJntSphItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

// ClObjJntSph_set5 (maskB = src->maskB)
s32 Collider_SetJntSph_Set5(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    Collider_SetBase(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 1551);

    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("ClObjJntSph_set5():zelda_malloc出来ません\n"); // EUC-JP: 出来ません。 | Can not.
        osSyncPrintf(VT_RST);
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitJntSphItem(globalCtx, destNext);
        Collider_SetJntSphItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

s32 Collider_SetJntSph(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src,
                       ColliderJntSphItem* list) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    Collider_SetBase(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = list;

    if (dest->list == NULL) {
        __assert("pclobj_jntsph->elem_tbl != NULL", "../z_collision_check.c", 1603);
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitJntSphItem(globalCtx, destNext);
        Collider_SetJntSphItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

s32 Collider_JntSphSetAT(GlobalContext* globalCtx, Collider* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = (ColliderJntSph*)collider;
    GlobalContext* gctx = globalCtx;

    Collider_BaseSetAT(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        Collider_JntSphItemSetAT(gctx, next);
        next++;
    }
    return 1;
}

s32 Collider_JntSphSetAC(GlobalContext* globalCtx, Collider* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = (ColliderJntSph*)collider;
    GlobalContext* gctx = globalCtx;

    Collider_BaseSetAC(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        Collider_JntSphItemSetAC(gctx, next);
        next++;
    }
    return 1;
}

s32 Collider_JntSphSetOC(GlobalContext* globalCtx, Collider* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = (ColliderJntSph*)collider;
    GlobalContext* gctx = globalCtx;

    Collider_BaseSetOC(gctx, &col->base);
    next = col->list;
    while (next < col->list + col->count) {
        Collider_JntSphItemSetOC(gctx, next);
        next++;
    }
    return 1;
}

s32 Collider_InitCylinderDim(GlobalContext* globalCtx, Cylinder16* dim) {
    Cylinder16 init = { 0 };
    *dim = init;
    return 1;
}

s32 Collider_DestroyCylinderDim(GlobalContext* globalCtx, Cylinder16* dim) {
    return 1;
}

s32 Collider_SetCylinderDim(GlobalContext* globalCtx, Cylinder16* dest, Cylinder16* src) {
    *dest = *src;
    return 1;
}

s32 Collider_InitCylinder(GlobalContext* globalCtx, ColliderCylinder* collider) {
    Collider_InitBase(globalCtx, &collider->base);
    Collider_InitBody(globalCtx, &collider->body);
    Collider_InitCylinderDim(globalCtx, &collider->dim);
    return 1;
}

s32 Collider_DestroyCylinder(GlobalContext* globalCtx, ColliderCylinder* collider) {
    Collider_DestroyBase(globalCtx, &collider->base);
    Collider_DestroyBody(globalCtx, &collider->body);
    Collider_DestroyCylinderDim(globalCtx, &collider->dim);
    return 1;
}

// used only by DekuJr, D_80B92A00
s32 Collider_SetCylinder_Actor(GlobalContext* globalCtx, ColliderCylinder* collider, ColliderCylinderInit_Actor* src) {
    Collider_SetBase_Actor(globalCtx, &collider->base, &src->base);
    Collider_SetBody(globalCtx, &collider->body, &src->body);
    Collider_SetCylinderDim(globalCtx, &collider->dim, &src->dim);
    return 1;
}

// maskB = 0x10
s32 Collider_SetCylinder_Set3(GlobalContext* globalCtx, ColliderCylinder* collider, Actor* actor,
                              ColliderCylinderInit_Set3* src) {
    Collider_SetBase_Set3(globalCtx, &collider->base, actor, &src->base);
    Collider_SetBody(globalCtx, &collider->body, &src->body);
    Collider_SetCylinderDim(globalCtx, &collider->dim, &src->dim);
    return 1;
}

// maskB = src->maskB
s32 Collider_SetCylinder(GlobalContext* globalCtx, ColliderCylinder* collider, Actor* actor,
                         ColliderCylinderInit* src) {
    Collider_SetBase(globalCtx, &collider->base, actor, &src->base);
    Collider_SetBody(globalCtx, &collider->body, &src->body);
    Collider_SetCylinderDim(globalCtx, &collider->dim, &src->dim);
    return 1;
}

s32 Collider_CylinderSetAT(GlobalContext* globalCtx, Collider* collider) {
    ColliderCylinder* col = (ColliderCylinder*)collider;
    Collider_BaseSetAT(globalCtx, &col->base);
    Collider_BodySetAT(globalCtx, &col->body);
    return 1;
}

s32 Collider_CylinderSetAC(GlobalContext* globalCtx, Collider* collider) {
    ColliderCylinder* col = (ColliderCylinder*)collider;
    Collider_BaseSetAC(globalCtx, &col->base);
    Collider_BodySetAC(globalCtx, &col->body);
    return 1;
}

s32 Collider_CylinderSetOC(GlobalContext* globalCtx, Collider* collider) {
    ColliderCylinder* col = (ColliderCylinder*)collider;
    Collider_BaseSetOC(globalCtx, &col->base);
    Collider_BodySetOC(globalCtx, &col->body);
    return 1;
}

s32 Collider_InitTrisItemDim(GlobalContext* globalCtx, TriNorm* dim) {
    static TriNorm init = { 0 };
    *dim = init;
    return 1;
}

s32 Collider_DestroyTrisItemDim(GlobalContext* globalCtx, TriNorm* dim) {
    return 1;
}

s32 Collider_SetTrisItemDim(GlobalContext* globalCtx, TriNorm* dest, ColliderTrisItemDimInit* src) {
    Vec3f* d;
    Vec3f* s;
    f32 nx, ny, nz, nd;

    d = dest->vtx;
    s = src->vtx;
    while (d < dest->vtx + 3) {
        *d++ = *s++;
    }

    Math3D_DefPlane(&src->vtx[0], &src->vtx[1], &src->vtx[2], &nx, &ny, &nz, &nd);

    dest->plane.normal.x = nx;
    dest->plane.normal.y = ny;
    dest->plane.normal.z = nz;
    dest->plane.originDist = nd;
    return 1;
}

s32 Collider_InitTrisItem(GlobalContext* globalCtx, ColliderTrisItem* collider) {
    Collider_InitBody(globalCtx, &collider->body);
    Collider_InitTrisItemDim(globalCtx, &collider->dim);
    return 1;
}

s32 Collider_DestroyTrisItem(GlobalContext* globalCtx, ColliderTrisItem* collider) {
    Collider_DestroyBody(globalCtx, &collider->body);
    Collider_DestroyTrisItemDim(globalCtx, &collider->dim);
    return 1;
}

s32 Collider_SetTrisItem(GlobalContext* globalCtx, ColliderTrisItem* dest, ColliderTrisItemInit* src) {
    Collider_SetBody(globalCtx, &dest->body, &src->body);
    Collider_SetTrisItemDim(globalCtx, &dest->dim, &src->dim);
    return 1;
}

s32 Collider_TrisItemSetAT(GlobalContext* globalCtx, ColliderTrisItem* item) {
    Collider_BodySetAT(globalCtx, &item->body);
    return 1;
}

s32 Collider_TrisItemSetAC(GlobalContext* globalCtx, ColliderTrisItem* item) {
    Collider_BodySetAC(globalCtx, &item->body);
    return 1;
}

s32 Collider_TrisItemSetOC(GlobalContext* globalCtx, ColliderTrisItem* item) {
    Collider_BodySetOC(globalCtx, &item->body);
    return 1;
}

s32 Collider_InitTris(GlobalContext* globalCtx, ColliderTris* tris) {
    Collider_InitBase(globalCtx, &tris->base);
    tris->count = 0;
    tris->list = 0;
    return 1;
}

// zelda malloc
s32 Collider_FreeTris(GlobalContext* globalCtx, ColliderTris* tris) {
    ColliderTrisItem* next;

    Collider_DestroyBase(globalCtx, &tris->base);
    next = tris->list;

    while (next < tris->list + tris->count) {
        Collider_DestroyTrisItem(globalCtx, next);
        next++;
    }

    tris->count = 0;
    if (tris->list != NULL) {
        ZeldaArena_FreeDebug(tris->list, "../z_collision_check.c", 2099);
    }
    tris->list = NULL;
    return 1;
}

// no malloc
s32 Collider_DestroyTris(GlobalContext* globalCtx, ColliderTris* tris) {
    ColliderTrisItem* next;

    Collider_DestroyBase(globalCtx, &tris->base);
    next = tris->list;

    while (next < tris->list + tris->count) {
        Collider_DestroyTrisItem(globalCtx, next);
        next++;
    }
    tris->count = 0;
    tris->list = NULL;
    return 1;
}

// ClObjTris_set3 (maskB = 0x10)
s32 Collider_SetTris_Set3(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit_Set3* src) {
    ColliderTrisItem* destNext;
    ColliderTrisItemInit* srcNext;

    Collider_SetBase_Set3(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(dest->count * sizeof(ColliderTrisItem), "../z_collision_check.c", 2156);
    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("ClObjTris_set3():zelda_malloc()出来ません\n"); // EUC-JP: 出来ません。 | Can not.
        osSyncPrintf(VT_RST);
        return 0;
    }
    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitTrisItem(globalCtx, destNext);
        Collider_SetTrisItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

// ClObjTris_set5 (maskB = src->maskB)
s32 Collider_SetTris_Set5(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit* src) {
    ColliderTrisItem* destNext;
    ColliderTrisItemInit* srcNext;

    Collider_SetBase(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(dest->count * sizeof(ColliderTrisItem), "../z_collision_check.c", 2207);

    if (dest->list == NULL) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("ClObjTris_set5():zelda_malloc出来ません\n"); // EUC-JP: 出来ません。 | Can not.
        osSyncPrintf(VT_RST);
        dest->count = 0;
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitTrisItem(globalCtx, destNext);
        Collider_SetTrisItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

s32 Collider_SetTris(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit* src,
                     ColliderTrisItem* list) {
    ColliderTrisItem* destNext;
    ColliderTrisItemInit* srcNext;

    Collider_SetBase(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = list;

    if (dest->list == NULL) {
        __assert("pclobj_tris->elem_tbl != NULL", "../z_collision_check.c", 2258);
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count) {
        Collider_InitTrisItem(globalCtx, destNext);
        Collider_SetTrisItem(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

s32 Collider_TrisSetAT(GlobalContext* globalCtx, Collider* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = (ColliderTris*)collider;
    GlobalContext* gctx = globalCtx;

    Collider_BaseSetAT(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        Collider_TrisItemSetAT(gctx, next);
        next++;
    }
    return 1;
}

s32 Collider_TrisSetAC(GlobalContext* globalCtx, Collider* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = (ColliderTris*)collider;
    GlobalContext* gctx = globalCtx;

    Collider_BaseSetAC(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        Collider_TrisItemSetAC(gctx, next);
        next++;
    }
    return 1;
}

s32 Collider_TrisSetOC(GlobalContext* globalCtx, Collider* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = (ColliderTris*)collider;
    GlobalContext* gctx = globalCtx;

    Collider_BaseSetOC(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        Collider_TrisItemSetOC(gctx, next);
        next++;
    }
    return 1;
}

s32 Collider_InitQuadDim(GlobalContext* globalCtx, ColliderQuadDim* dim) {
    static ColliderQuadDim init = {
        { { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 0 } },
        { 0, 0, 0 },
        { 0, 0, 0 },
        1.0E38f,
    };
    *dim = init;
    return 1;
}

s32 Collider_DestroyQuadDim(GlobalContext* globalCtx, ColliderQuadDim* dim) {
    return 1;
}

// Set ColliderQuadDim unk_3C
s32 func_8005CEC4(GlobalContext* globalCtx, ColliderQuadDim* dim) {
    dim->unk_3C = 1.0E38f;
    return 1;
}

// ColliderQuadDim compute dc ba midpoints
void Collider_SetMidpoints(ColliderQuadDim* dim) {
    dim->dcMid.x = (dim->quad[3].x + dim->quad[2].x) * 0.5f;
    dim->dcMid.y = (dim->quad[3].y + dim->quad[2].y) * 0.5f;
    dim->dcMid.z = (dim->quad[3].z + dim->quad[2].z) * 0.5f;
    dim->baMid.x = (dim->quad[1].x + dim->quad[0].x) * 0.5f;
    dim->baMid.y = (dim->quad[1].y + dim->quad[0].y) * 0.5f;
    dim->baMid.z = (dim->quad[1].z + dim->quad[0].z) * 0.5f;
}

s32 Collider_SetQuadDim(GlobalContext* globalCtx, ColliderQuadDim* dest, ColliderQuadDimInit* src) {
    dest->quad[0] = src->quad[0];
    dest->quad[1] = src->quad[1];
    dest->quad[2] = src->quad[2];
    dest->quad[3] = src->quad[3];
    Collider_SetMidpoints(dest);
    return 1;
}

s32 Collider_InitQuad(GlobalContext* globalCtx, ColliderQuad* collider) {
    Collider_InitBase(globalCtx, &collider->base);
    Collider_InitBody(globalCtx, &collider->body);
    Collider_InitQuadDim(globalCtx, &collider->dim);
    return 1;
}

s32 Collider_DestroyQuad(GlobalContext* globalCtx, ColliderQuad* collider) {
    Collider_DestroyBase(globalCtx, &collider->base);
    Collider_DestroyBody(globalCtx, &collider->body);
    Collider_DestroyQuadDim(globalCtx, &collider->dim);
    return 1;
}

// maskB = 0x10
s32 Collider_SetQuad_Set3(GlobalContext* globalCtx, ColliderQuad* collider, Actor* actor, ColliderQuadInit_Set3* src) {
    Collider_SetBase_Set3(globalCtx, &collider->base, actor, &src->base);
    Collider_SetBody(globalCtx, &collider->body, &src->body);
    Collider_SetQuadDim(globalCtx, &collider->dim, &src->dim);
    return 1;
}

// maskB = src->maskB
s32 Collider_SetQuad(GlobalContext* globalCtx, ColliderQuad* collider, Actor* actor, ColliderQuadInit* src) {
    Collider_SetBase(globalCtx, &collider->base, actor, &src->base);
    Collider_SetBody(globalCtx, &collider->body, &src->body);
    Collider_SetQuadDim(globalCtx, &collider->dim, &src->dim);
    return 1;
}

s32 Collider_QuadSetAT(GlobalContext* globalCtx, Collider* collider) {
    ColliderQuad* col = (ColliderQuad*)collider;
    Collider_BaseSetAT(globalCtx, &col->base);
    Collider_BodySetAT(globalCtx, &col->body);
    func_8005CEC4(globalCtx, &col->dim);
    return 1;
}

s32 Collider_QuadSetAC(GlobalContext* globalCtx, Collider* collider) {
    ColliderQuad* col = (ColliderQuad*)collider;
    Collider_BaseSetAC(globalCtx, &col->base);
    Collider_BodySetAC(globalCtx, &col->body);
    return 1;
}

s32 Collider_QuadSetOC(GlobalContext* globalCtx, Collider* collider) {
    ColliderQuad* col = (ColliderQuad*)collider;
    Collider_BaseSetOC(globalCtx, &col->base);
    Collider_BodySetOC(globalCtx, &col->body);
    return 1;
}

s32 func_8005D218(GlobalContext* globalCtx, ColliderQuad* quad, Vec3f* arg2) {
    f32 temp;
    Vec3f sp20;

    if (!(quad->body.toucherFlags & 4)) {
        return 1;
    }
    Math_Vec3s_ToVec3f(&sp20, &quad->dim.dcMid);
    temp = Math3D_Vec3fDistSq(&sp20, arg2);
    if (temp < quad->dim.unk_3C) {
        quad->dim.unk_3C = temp;
        if (quad->body.atHit != NULL) {
            Collider_BaseSetAC(globalCtx, quad->body.atHit);
        }
        if (quad->body.atHitItem != NULL) {
            Collider_BodySetAC(globalCtx, quad->body.atHitItem);
        }
        return 1;
    }
    return 0;
}

s32 Collider_InitOcLine(GlobalContext* globalCtx, OcLine* line) {
    static Vec3f init = { 0, 0, 0 };
    Vec3f temp;

    temp = init;
    Math_Vec3f_Copy(&line->line.a, &temp);
    Math_Vec3f_Copy(&line->line.b, &temp);
    return 1;
}

s32 Collider_DestroyOcLine(GlobalContext* globalCtx, OcLine* line) {
    return 1;
}

s32 Collider_SetOcLinePoints(UNK_TYPE arg0, OcLine* arg1, Vec3f* arg2, Vec3f* arg3) {
    Math_Vec3f_Copy(&arg1->line.a, arg2);
    Math_Vec3f_Copy(&arg1->line.b, arg3);
    return 1;
}

s32 Collider_OcLineCopy(UNK_TYPE arg0, OcLine* arg1, OcLine* arg2) {
    arg1->unk_18 = arg2->unk_18;
    Collider_SetOcLinePoints(arg0, arg1, &arg2->line.a, &arg2->line.b);
    return 1;
}

s32 func_8005D3A4(GlobalContext* globalCtx, OcLine* line) {
    line->unk_18 &= ~1;
    return 1;
}

void CollisionCheck_InitContextDrawColliders(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    colChkCtx->sacFlags = 0;
    CollisionCheck_InitContext(globalCtx, colChkCtx);
    AREG(21) = 1;
    AREG(22) = 1;
    AREG(23) = 1;
}

void CollisionCheck_DestroyContext(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
}

// Initialize CollisionCheckContext
void CollisionCheck_InitContext(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider** c;
    OcLine** d;

    if (!(colChkCtx->sacFlags & 1)) {
        colChkCtx->colAtCount = 0;
        colChkCtx->colAcCount = 0;
        colChkCtx->colOcCount = 0;
        colChkCtx->colOcLineCount = 0;
        for (c = colChkCtx->colAt; c < colChkCtx->colAt + COLLISION_CHECK_AT_MAX; c++) {
            *c = NULL;
        }

        for (c = colChkCtx->colAc; c < colChkCtx->colAc + COLLISION_CHECK_AC_MAX; c++) {
            *c = NULL;
        }

        for (c = colChkCtx->colOc; c < colChkCtx->colOc + COLLISION_CHECK_OC_MAX; c++) {
            *c = NULL;
        }

        for (d = colChkCtx->colOcLine; d < colChkCtx->colOcLine + COLLISION_CHECK_OC_LINE_MAX; d++) {
            *d = NULL;
        }
    }
}

// Unused
void CollisionCheck_EnableSAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    colChkCtx->sacFlags |= 1;
}

// Unused
void CollisionCheck_DisableSAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    colChkCtx->sacFlags &= ~1;
}

// Draw Collider
void CollisionCheck_DrawCollider(GlobalContext* globalCtx, Collider* collider) {
    ColliderJntSph* jntSph;
    ColliderCylinder* cylinder;
    ColliderTris* tris;
    ColliderTrisItem* trisItem;
    ColliderQuad* quad;
    s32 i;

    if (collider == NULL) {
        return;
    }
    switch (collider->shape) {
        case COLSHAPE_JNTSPH:
            jntSph = (ColliderJntSph*)collider;
            for (i = 0; i < jntSph->count; i++) {
                Math3D_DrawSphere(globalCtx, &jntSph->list[i].dim.worldSphere);
            }
            break;
        case COLSHAPE_CYLINDER:
            cylinder = (ColliderCylinder*)collider;
            Math3D_DrawCylinder(globalCtx, &cylinder->dim);
            break;
        case COLSHAPE_TRIS:
            tris = (ColliderTris*)collider;
            for (i = 0; i < tris->count; i++) {
                trisItem = &tris->list[i];
                CollisionCheck_DrawRedPoly(globalCtx->state.gfxCtx, &trisItem->dim.vtx[0], &trisItem->dim.vtx[1],
                              &trisItem->dim.vtx[2]);
            }
            break;
        case COLSHAPE_QUAD:
            quad = (ColliderQuad*)collider;
            CollisionCheck_DrawRedPoly(globalCtx->state.gfxCtx, &quad->dim.quad[2], &quad->dim.quad[3], &quad->dim.quad[1]);
            CollisionCheck_DrawRedPoly(globalCtx->state.gfxCtx, &quad->dim.quad[1], &quad->dim.quad[0], &quad->dim.quad[2]);
            break;
    }
}

void CollisionCheck_Draw(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider* collider;
    s32 i;

    if (AREG(15)) {
        if (AREG(21)) {
            for (i = 0; i < colChkCtx->colAtCount; i++) {
                CollisionCheck_DrawCollider(globalCtx, colChkCtx->colAt[i]);
            }
        }
        if (AREG(22)) {
            for (i = 0; i < colChkCtx->colAcCount; i++) {
                CollisionCheck_DrawCollider(globalCtx, colChkCtx->colAc[i]);
            }
        }
        if (AREG(23)) {
            for (i = 0; i < colChkCtx->colOcCount; i++) {
                collider = colChkCtx->colOc[i];
                if (collider->maskA & 1) {
                    CollisionCheck_DrawCollider(globalCtx, collider);
                }
            }
        }
        if (AREG(24)) {
            func_80042C3C(globalCtx, &globalCtx->colCtx);
        }
        if (AREG(25)) {
            func_80042FC4(globalCtx, &globalCtx->colCtx);
        }
    }
}

s32 (*D_8011DEF8[])(GlobalContext*, Collider*) = { Collider_JntSphSetAT, Collider_CylinderSetAT, Collider_TrisSetAT,
                                                   Collider_QuadSetAT };

// Sets collider as an AT (attack) for the current frame, which will be checked against ACs (attack colliders)
s32 CollisionCheck_SetAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (!(collider->shape <= COLSHAPE_QUAD)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 2997);
    }
    D_8011DEF8[collider->shape](globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (colChkCtx->colAtCount >= COLLISION_CHECK_AT_MAX) {
        osSyncPrintf("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
        // EUC-JP: インデックスがオーバーして追加不能 | Index exceeded and cannot be added
        return -1;
    }
    if (colChkCtx->sacFlags & 1) {
        return -1;
    }
    index = colChkCtx->colAtCount;
    colChkCtx->colAt[colChkCtx->colAtCount++] = collider;
    return index;
}

// Unused. Sets collider as an AT (attack) for the current frame, which will be checked against ACs (attack colliders).
// If CollisionCheck_SAC is enabled, the collider will be inserted into the list at the specified index, otherwise it
// will be inserted into the next slot
s32 CollisionCheck_SetAT_SAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider,
                             s32 index) {

    if (!(collider->shape <= COLSHAPE_QUAD)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3037);
    }
    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    D_8011DEF8[collider->shape](globalCtx, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->sacFlags & 1) {
        if (!(index < colChkCtx->colAtCount)) {
            osSyncPrintf("CollisionCheck_setAT_SAC():全データ数より大きいところに登録しようとしている。\n");
            // EUC-JP: 全データ数より大きいところに登録しようとしている。 | You are trying to register a location that
            // is larger than the total number of data.
            return -1;
        }
        colChkCtx->colAt[index] = collider;
    } else {
        if (!(colChkCtx->colAtCount < COLLISION_CHECK_AT_MAX)) {
            osSyncPrintf("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
            return -1;
        }
        index = colChkCtx->colAtCount;
        colChkCtx->colAt[colChkCtx->colAtCount++] = collider;
    }
    return index;
}

s32 (*D_8011DF08[])(GlobalContext*, Collider*) = { Collider_JntSphSetAC, Collider_CylinderSetAC, Collider_TrisSetAC,
                                                   Collider_QuadSetAC };

// Sets collider as an AC (attack collider) for the current frame, allowing it to detect ATs (attacks)
s32 CollisionCheck_SetAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (!(collider->shape <= COLSHAPE_QUAD)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3114);
    }
    D_8011DF08[collider->shape](globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (colChkCtx->colAcCount >= COLLISION_CHECK_AC_MAX) {
        osSyncPrintf("CollisionCheck_setAC():インデックスがオーバして追加不能\n");
        // EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
        return -1;
    }
    if (colChkCtx->sacFlags & 1) {
        return -1;
    }
    index = colChkCtx->colAcCount;
    colChkCtx->colAc[colChkCtx->colAcCount++] = collider;
    return index;
}

// Unused. Sets collider as an AC (attack collider) for the current frame, allowing it to detect ATs (attacks).
// If CollisionCheck_SAC is enabled, the collider will be inserted into the list at the specified index, otherwise it
// will be inserted into the next slot
s32 CollisionCheck_SetAC_SAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider,
                             s32 index) {

    if (!(collider->shape <= COLSHAPE_QUAD)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3153);
    }
    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    D_8011DF08[collider->shape](globalCtx, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->sacFlags & 1) {
        if (!(index < colChkCtx->colAcCount)) {
            osSyncPrintf("CollisionCheck_setAC_SAC():全データ数より大きいところに登録しようとしている。\n");
            // EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is
            // larger than the total number of data.
            return -1;
        }
        colChkCtx->colAc[index] = collider;
    } else {
        if (!(colChkCtx->colAcCount < COLLISION_CHECK_AC_MAX)) {
            osSyncPrintf("CollisionCheck_setAC():インデックスがオーバして追加不能\n");
            // EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
            return -1;
        }
        index = colChkCtx->colAcCount;
        colChkCtx->colAc[colChkCtx->colAcCount++] = collider;
    }
    return index;
}

s32 (*D_8011DF18[])(GlobalContext*, Collider*) = {
    Collider_JntSphSetOC,
    Collider_CylinderSetOC,
    Collider_TrisSetOC,
    Collider_QuadSetOC,
};

// Sets collider as an OC (object collider) for the current frame, allowing it to detect other OCs
s32 CollisionCheck_SetOC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (!(collider->shape <= COLSHAPE_QUAD)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3229);
    }
    D_8011DF18[collider->shape](globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (colChkCtx->colOcCount >= COLLISION_CHECK_OC_MAX) {
        osSyncPrintf("CollisionCheck_setOC():インデックスがオーバして追加不能\n");
        // EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
        return -1;
    }
    if (colChkCtx->sacFlags & 1) {
        return -1;
    }
    index = colChkCtx->colOcCount;
    colChkCtx->colOc[colChkCtx->colOcCount++] = collider;
    return index;
}

// Unused. Sets collider as an OC (object collider) for the current frame, allowing it to detect other OCs
// If CollisionCheck_SAC is enabled, the collider will be inserted into the list at the specified index, otherwise it
// will be inserted into the next slot
s32 CollisionCheck_SetOC_SAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider,
                             s32 index) {

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (!(collider->shape <= COLSHAPE_QUAD)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3274);
    }
    D_8011DF18[collider->shape](globalCtx, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (colChkCtx->sacFlags & 1) {
        if (!(index < colChkCtx->colOcCount)) {
            osSyncPrintf("CollisionCheck_setOC_SAC():全データ数より大きいところに登録しようとしている。\n");
            // EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is
            // larger than the total number of data.
            return -1;
        }
        //! @bug Should be colOc
        colChkCtx->colAt[index] = collider;
    } else {
        if (!(colChkCtx->colOcCount < COLLISION_CHECK_OC_MAX)) {
            osSyncPrintf("CollisionCheck_setOC():インデックスがオーバして追加不能\n");
            // EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
            return -1;
        }
        index = colChkCtx->colOcCount;
        colChkCtx->colOc[colChkCtx->colOcCount++] = collider;
    }
    return index;
}

s32 CollisionCheck_SetOCLine(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, OcLine* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    func_8005D3A4(globalCtx, collider);
    if (!(colChkCtx->colOcLineCount < COLLISION_CHECK_OC_LINE_MAX)) {
        osSyncPrintf("CollisionCheck_setOCLine():インデックスがオーバして追加不能\n");
        return -1;
    }
    index = colChkCtx->colOcLineCount;
    colChkCtx->colOcLine[colChkCtx->colOcLineCount++] = collider;
    return index;
}

s32 CollisionCheck_IgnoreAT(ColliderBody* body) {
    if (!(body->toucherFlags & 1)) {
        return 1;
    }
    return 0;
}

s32 CollisionCheck_IgnoreAC(ColliderBody* body) {
    if (!(body->bumperFlags & 1)) {
        return 1;
    }
    return 0;
}

s32 CollisionCheck_NoSharedFlags(ColliderBody* left, ColliderBody* right) {
    if (!(left->toucher.flags & right->bumper.flags)) {
        return 1;
    }
    return 0;
}

void CollisionCheck_NoBlood(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
}

void CollisionCheck_BlueBlood(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    static EffectSparkInit D_8015D8A0;
    s32 sp24;

    D_8015D8A0.position.x = (s32)v->x;
    D_8015D8A0.position.y = (s32)v->y;
    D_8015D8A0.position.z = (s32)v->z;
    D_8015D8A0.uDiv = 5;
    D_8015D8A0.vDiv = 5;
    D_8015D8A0.colorStart[0].r = 10;
    D_8015D8A0.colorStart[0].g = 10;
    D_8015D8A0.colorStart[0].b = 200;
    D_8015D8A0.colorStart[0].a = 255;
    D_8015D8A0.colorStart[1].r = 0;
    D_8015D8A0.colorStart[1].g = 0;
    D_8015D8A0.colorStart[1].b = 128;
    D_8015D8A0.colorStart[1].a = 255;
    D_8015D8A0.colorStart[2].r = 0;
    D_8015D8A0.colorStart[2].g = 0;
    D_8015D8A0.colorStart[2].b = 128;
    D_8015D8A0.colorStart[2].a = 255;
    D_8015D8A0.colorStart[3].r = 0;
    D_8015D8A0.colorStart[3].g = 0;
    D_8015D8A0.colorStart[3].b = 128;
    D_8015D8A0.colorStart[3].a = 255;
    D_8015D8A0.colorEnd[0].r = 0;
    D_8015D8A0.colorEnd[0].g = 0;
    D_8015D8A0.colorEnd[0].b = 32;
    D_8015D8A0.colorEnd[0].a = 0;
    D_8015D8A0.colorEnd[1].r = 0;
    D_8015D8A0.colorEnd[1].g = 0;
    D_8015D8A0.colorEnd[1].b = 32;
    D_8015D8A0.colorEnd[1].a = 0;
    D_8015D8A0.colorEnd[2].r = 0;
    D_8015D8A0.colorEnd[2].g = 0;
    D_8015D8A0.colorEnd[2].b = 64;
    D_8015D8A0.colorEnd[2].a = 0;
    D_8015D8A0.colorEnd[3].r = 0;
    D_8015D8A0.colorEnd[3].g = 0;
    D_8015D8A0.colorEnd[3].b = 64;
    D_8015D8A0.colorEnd[3].a = 0;
    D_8015D8A0.timer = 0;
    D_8015D8A0.duration = 16;
    D_8015D8A0.speed = 8.0f;
    D_8015D8A0.gravity = -1.0f;

    Effect_Add(globalCtx, &sp24, EFFECT_SPARK, 0, 1, &D_8015D8A0);
}

void CollisionCheck_GreenBlood(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    static EffectSparkInit D_8015DD68;
    s32 sp24;

    D_8015DD68.position.x = (s32)v->x;
    D_8015DD68.position.y = (s32)v->y;
    D_8015DD68.position.z = (s32)v->z;
    D_8015DD68.uDiv = 5;
    D_8015DD68.vDiv = 5;
    D_8015DD68.colorStart[0].r = 10;
    D_8015DD68.colorStart[0].g = 200;
    D_8015DD68.colorStart[0].b = 10;
    D_8015DD68.colorStart[0].a = 255;
    D_8015DD68.colorStart[1].r = 0;
    D_8015DD68.colorStart[1].g = 128;
    D_8015DD68.colorStart[1].b = 0;
    D_8015DD68.colorStart[1].a = 255;
    D_8015DD68.colorStart[2].r = 0;
    D_8015DD68.colorStart[2].g = 128;
    D_8015DD68.colorStart[2].b = 0;
    D_8015DD68.colorStart[2].a = 255;
    D_8015DD68.colorStart[3].r = 0;
    D_8015DD68.colorStart[3].g = 128;
    D_8015DD68.colorStart[3].b = 0;
    D_8015DD68.colorStart[3].a = 255;
    D_8015DD68.colorEnd[0].r = 0;
    D_8015DD68.colorEnd[0].g = 32;
    D_8015DD68.colorEnd[0].b = 0;
    D_8015DD68.colorEnd[0].a = 0;
    D_8015DD68.colorEnd[1].r = 0;
    D_8015DD68.colorEnd[1].g = 32;
    D_8015DD68.colorEnd[1].b = 0;
    D_8015DD68.colorEnd[1].a = 0;
    D_8015DD68.colorEnd[2].r = 0;
    D_8015DD68.colorEnd[2].g = 64;
    D_8015DD68.colorEnd[2].b = 0;
    D_8015DD68.colorEnd[2].a = 0;
    D_8015DD68.colorEnd[3].r = 0;
    D_8015DD68.colorEnd[3].g = 64;
    D_8015DD68.colorEnd[3].b = 0;
    D_8015DD68.colorEnd[3].a = 0;
    D_8015DD68.timer = 0;
    D_8015DD68.duration = 16;
    D_8015DD68.speed = 8.0f;
    D_8015DD68.gravity = -1.0f;

    Effect_Add(globalCtx, &sp24, EFFECT_SPARK, 0, 1, &D_8015DD68);
}

void CollisionCheck_WaterBurst(GlobalContext* globalCtx, Collider* collider, Vec3f* pos) {
    EffectSsSibuki_SpawnBurst(globalCtx, pos);
    CollisionCheck_SpawnWaterDroplets(globalCtx, pos);
}

void CollisionCheck_RedBlood(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    CollisionCheck_SpawnRedBlood(globalCtx, v);
}

void CollisionCheck_RedBloodUnused(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    CollisionCheck_SpawnRedBlood(globalCtx, v);
}

void CollisionCheck_HitSolid(GlobalContext* globalCtx, ColliderBody* colliderBody, Collider* collider, Vec3f* arg3) {
    s32 flags;

    flags = colliderBody->toucherFlags & 0x18;
    if (flags == 0 && collider->type != COLTYPE_METAL_SHIELD) {
        EffectSsHitMark_SpawnFixedScale(globalCtx, 0, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                                    &D_801333E8);
        }
    } else if (flags == 0) { // collider->type == COLTYPE_METAL_SHIELD
        EffectSsHitMark_SpawnFixedScale(globalCtx, 3, arg3);
        if (collider->actor == NULL) {
            CollisionCheck_ShieldParticlesMetal(globalCtx, arg3);
        } else {
            CollisionCheck_ShieldParticlesMetalSound(globalCtx, arg3, &collider->actor->projectedPos);
        }
    } else if (flags == 8) {
        EffectSsHitMark_SpawnFixedScale(globalCtx, 0, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        }
    } else if (flags == 0x10) {
        EffectSsHitMark_SpawnFixedScale(globalCtx, 1, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &collider->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                                    &D_801333E8);
        }
    }
}

s32 CollisionCheck_SwordHitAudio(Collider* left, ColliderBody* rightBody) {
    if (left->actor != NULL) {
        if (ACTORTYPE_PLAYER == left->actor->type) {
            if (rightBody->flags == 0) {
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_STRIKE, &left->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
            } else if (rightBody->flags == 1) {
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_STRIKE_HARD, &left->actor->projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            } else if (rightBody->flags == 2) {
                Audio_PlaySoundGeneral(NA_SE_PL_WALK_GROUND - SFX_FLAG, &left->actor->projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            } else if (rightBody->flags == 3) {
                Audio_PlaySoundGeneral(NA_SE_PL_WALK_GROUND - SFX_FLAG, &left->actor->projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
            }
        }
    }
    return 1;
}

typedef struct {
    u8 blood;
    u8 effect;
} D_8011DF40_s;

void CollisionCheck_HitEffects(GlobalContext* globalCtx, Collider* left, ColliderBody* leftBody, Collider* right,
                   ColliderBody* rightBody, Vec3f* arg5) {

    static void (*D_8011DF28[])(GlobalContext*, Collider*, Vec3f*) = {
        CollisionCheck_NoBlood, CollisionCheck_BlueBlood, CollisionCheck_GreenBlood, CollisionCheck_WaterBurst, CollisionCheck_RedBlood, CollisionCheck_RedBloodUnused,
    };

    static D_8011DF40_s D_8011DF40[] = {
        { 1, 0 }, { 0, 1 }, { 2, 1 }, { 0, 0 }, { 3, 5 }, { 0, 2 }, { 2, 0 },
        { 4, 0 }, { 1, 2 }, { 0, 3 }, { 0, 5 }, { 0, 3 }, { 0, 3 }, { 0, 4 },
    };

    if (rightBody->bumperFlags & 0x40) {
        return;
    }
    if (!(leftBody->toucherFlags & 0x20) && leftBody->toucherFlags & 0x40) {
        return;
    }
    if (right->actor != NULL) {
        (*D_8011DF28[D_8011DF40[right->type].blood])(globalCtx, right, arg5);
    }
    if (right->actor != NULL) {
        if (D_8011DF40[right->type].effect == 3) {
            CollisionCheck_HitSolid(globalCtx, leftBody, right, arg5);
        } else if (D_8011DF40[right->type].effect == 4) {
            if (left->actor == NULL) {
                CollisionCheck_ShieldParticles(globalCtx, arg5);
                Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else {
                CollisionCheck_ShieldParticlesWood(globalCtx, arg5, &left->actor->projectedPos);
            }
        } else if (D_8011DF40[right->type].effect != 5) {
            EffectSsHitMark_SpawnFixedScale(globalCtx, D_8011DF40[right->type].effect, arg5);
            if (!(rightBody->bumperFlags & 0x20)) {
                CollisionCheck_SwordHitAudio(left, rightBody);
            }
        }
    } else {
        EffectSsHitMark_SpawnFixedScale(globalCtx, 0, arg5);
        if (right->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &right->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }
}

void CollisionCheck_SetBounce(Collider* left, Collider* right) {
    left->atFlags |= 4;
    right->acFlags |= 0x80;
}

// Set AT to AC collision
s32 CollisionCheck_SetATvsAC(GlobalContext* globalCtx, Collider* left, ColliderBody* leftBody, Vec3f* leftv, Collider* right,
                  ColliderBody* rightBody, Vec3f* rightv, Vec3f* arg7) {

    if (right->acFlags & 4 && left->actor != NULL && right->actor != NULL) {
        CollisionCheck_SetBounce(left, right);
    }
    if (!(rightBody->bumperFlags & 8)) {
        left->atFlags |= 2;
        left->at = right->actor;
        leftBody->atHit = right;
        leftBody->atHitItem = rightBody;
        leftBody->toucherFlags |= 2;
        if (left->actor != NULL) {
            left->actor->colChkInfo.atHitEffect = rightBody->bumper.effect;
        }
    }
    right->acFlags |= 2;
    right->ac = left->actor;
    rightBody->acHit = left;
    rightBody->acHitItem = leftBody;
    rightBody->bumperFlags |= 2;
    if (right->actor != NULL) {
        right->actor->colChkInfo.acHitEffect = leftBody->toucher.effect;
    }
    rightBody->bumper.hitPos.x = (s16)arg7->x;
    rightBody->bumper.hitPos.y = (s16)arg7->y;
    rightBody->bumper.hitPos.z = (s16)arg7->z;
    if (!(leftBody->toucherFlags & 0x20) && right->type != COLTYPE_METAL_SHIELD &&
        right->type != COLTYPE_WOODEN_SHIELD && right->type != COLTYPE_UNK12) {
        rightBody->bumperFlags |= 0x80;
    } else {
        CollisionCheck_HitEffects(globalCtx, left, leftBody, right, rightBody, arg7);
        leftBody->toucherFlags |= 0x40;
    }
    return 1;
}

void CollisionCheck_AC_JntSphVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                      Collider* r) {
    ColliderJntSph* left;
    ColliderJntSph* right;
    ColliderJntSphItem* lItem;
    ColliderJntSphItem* rItem;
    f32 sp8C;
    f32 sp88;
    f32 temp_f0;
    Vec3f sp78;
    Vec3f sp6C;
    Vec3f sp60;

    left = (ColliderJntSph*)l;
    right = (ColliderJntSph*)r;
    if (left->count <= 0 || left->list == NULL || right->count <= 0 || right->list == NULL) {
        return;
    }
    for (lItem = left->list; lItem < left->list + left->count; lItem++) {
        if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
            continue;
        }
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&lItem->body, &rItem->body) == 1) {
                continue;
            }
            if (Math3D_SphVsSphOverlapCenter(&lItem->dim.worldSphere, &rItem->dim.worldSphere, &sp8C, &sp88) == 1) {
                sp6C.x = lItem->dim.worldSphere.center.x;
                sp6C.y = lItem->dim.worldSphere.center.y;
                sp6C.z = lItem->dim.worldSphere.center.z;
                sp60.x = rItem->dim.worldSphere.center.x;
                sp60.y = rItem->dim.worldSphere.center.y;
                sp60.z = rItem->dim.worldSphere.center.z;
                if (!(fabsf(sp88) < 0.008f)) {
                    temp_f0 = rItem->dim.worldSphere.radius / sp88;
                    sp78.x = (((sp6C.x - sp60.x) * temp_f0) + sp60.x);
                    sp78.y = (((sp6C.y - sp60.y) * temp_f0) + sp60.y);
                    sp78.z = (((sp6C.z - sp60.z) * temp_f0) + sp60.z);
                } else {
                    Math_Vec3f_Copy(&sp78, &sp6C);
                }
                CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp6C, &right->base, &rItem->body, &sp60, &sp78);
                if (!(right->base.maskB & 0x40)) {
                    return;
                }
            }
        }
    }
}

void CollisionCheck_AC_JntSphVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                   Collider* r) {
    ColliderJntSph* left = (ColliderJntSph*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    ColliderJntSphItem* lItem;
    f32 sp80;
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f sp58;
    f32 temp_f0;

    if (left->count <= 0 || left->list == NULL || right->dim.radius <= 0 || right->dim.height <= 0) {
        return;
    }
    if (CollisionCheck_IgnoreAC(&right->body) == 1) {
        return;
    }
    for (lItem = left->list; lItem < left->list + left->count; lItem++) {
        if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
            continue;
        }
        if (CollisionCheck_NoSharedFlags(&lItem->body, &right->body) == 1) {
            continue;
        }
        if (Math3D_SphVsCylOverlapCenterDist(&lItem->dim.worldSphere, &right->dim, &sp80, &sp7C) != 0) {
            sp64.x = lItem->dim.worldSphere.center.x;
            sp64.y = lItem->dim.worldSphere.center.y;
            sp64.z = lItem->dim.worldSphere.center.z;
            sp58.x = right->dim.pos.x;
            sp58.y = right->dim.pos.y;
            sp58.z = right->dim.pos.z;
            if (!(fabsf(sp7C) < 0.008f)) {
                temp_f0 = right->dim.radius / sp7C;
                if (temp_f0 <= 1.0f) {
                    sp70.x = ((sp64.x - sp58.x) * temp_f0) + sp58.x;
                    sp70.y = ((sp64.y - sp58.y) * temp_f0) + sp58.y;
                    sp70.z = ((sp64.z - sp58.z) * temp_f0) + sp58.z;
                } else {
                    Math_Vec3f_Copy(&sp70, &sp64);
                }
            } else {
                Math_Vec3f_Copy(&sp70, &sp64);
            }
            CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp64, &right->base, &right->body, &sp58, &sp70);
            return;
        }
    }
}

void CollisionCheck_AC_CylVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                   Collider* r) {
    ColliderCylinder* left = (ColliderCylinder*)l;
    ColliderJntSph* right = (ColliderJntSph*)r;
    f32 sp9C;
    f32 sp98;
    ColliderJntSphItem* rItem;
    Vec3f sp88;
    Vec3f sp7C;
    Vec3f sp70;
    f32 temp_f0;

    if (right->count <= 0 || right->list == NULL || left->dim.radius <= 0 || left->dim.height <= 0) {
        return;
    }
    if (CollisionCheck_IgnoreAT(&left->body) == 1) {
        return;
    }
    for (rItem = right->list; rItem < right->list + right->count; rItem++) {
        if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
            continue;
        }
        if (CollisionCheck_NoSharedFlags(&left->body, &rItem->body) == 1) {
            continue;
        }
        if (Math3D_SphVsCylOverlapCenterDist(&rItem->dim.worldSphere, &left->dim, &sp9C, &sp98) != 0) {
            sp7C.x = left->dim.pos.x;
            sp7C.y = left->dim.pos.y;
            sp7C.z = left->dim.pos.z;
            sp70.x = rItem->dim.worldSphere.center.x;
            sp70.y = rItem->dim.worldSphere.center.y;
            sp70.z = rItem->dim.worldSphere.center.z;
            if (!(fabsf(sp98) < 0.008f)) {
                temp_f0 = (f32)rItem->dim.worldSphere.radius / sp98;
                if (temp_f0 <= 1.0f) {
                    sp88.x = ((sp7C.x - sp70.x) * temp_f0) + sp70.x;
                    sp88.y = ((sp7C.y - sp70.y) * temp_f0) + sp70.y;
                    sp88.z = ((sp7C.z - sp70.z) * temp_f0) + sp70.z;
                } else {
                    Math_Vec3f_Copy(&sp88, &sp7C);
                }
            } else {
                Math_Vec3f_Copy(&sp88, &sp7C);
            }
            CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp7C, &right->base, &rItem->body, &sp70, &sp88);
            if (!(right->base.maskB & 0x40)) {
                break;
            }
        }
    }
}

void CollisionCheck_AC_JntSphVsTris(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                    Collider* r) {
    ColliderJntSph* left = (ColliderJntSph*)l;
    ColliderTris* right = (ColliderTris*)r;
    ColliderJntSphItem* lItem;
    ColliderTrisItem* rItem;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;

    if (left->count <= 0 || left->list == NULL || right->count <= 0 || right->list == NULL) {
        return;
    }
    for (lItem = left->list; lItem < left->list + left->count; lItem++) {
        if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
            continue;
        }
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&lItem->body, &rItem->body) == 1) {
                continue;
            }
            if (Math3D_TriVsSphIntersect(&lItem->dim.worldSphere, &rItem->dim, &sp6C) == 1) {
                sp60.x = lItem->dim.worldSphere.center.x;
                sp60.y = lItem->dim.worldSphere.center.y;
                sp60.z = lItem->dim.worldSphere.center.z;
                sp54.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                sp54.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                sp54.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp60, &right->base, &rItem->body, &sp54, &sp6C);
                return;
            }
        }
    }
}

void CollisionCheck_AC_TrisVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                    Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderTrisItem* lItem;
    ColliderJntSph* right = (ColliderJntSph*)r;
    ColliderJntSphItem* rItem;
    Vec3f sp7C;
    Vec3f sp70;
    Vec3f sp64;

    if (right->count > 0 && right->list != NULL) {
        if (left->count > 0 && left->list != NULL) {
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                    continue;
                }
                for (lItem = left->list; lItem < left->list + left->count; lItem++) {
                    if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
                        continue;
                    }
                    if (CollisionCheck_NoSharedFlags(&lItem->body, &rItem->body) == 1) {
                        continue;
                    }
                    if (Math3D_TriVsSphIntersect(&rItem->dim.worldSphere, &lItem->dim, &sp7C) == 1) {
                        Math_Vec3s_ToVec3f(&sp64, &rItem->dim.worldSphere.center);
                        sp70.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                        sp70.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                        sp70.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                        CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp70, &right->base, &rItem->body, &sp64,
                                      &sp7C);
                        if (!(right->base.maskB & 0x40)) {
                            return;
                        }
                    }
                }
            }
        }
    }
}

static TriNorm D_8015E230;
static TriNorm D_8015E268;

void CollisionCheck_AC_JntSphVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                    Collider* r) {
    ColliderJntSph* left = (ColliderJntSph*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    Vec3f sp7C;
    ColliderJntSphItem* lItem;
    Vec3f sp6C;
    Vec3f sp60;

    if (left->count > 0 && left->list != NULL) {
        if (CollisionCheck_IgnoreAC(&right->body) == 1) {
            return;
        }
        Math3D_TriNorm(&D_8015E230, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
        Math3D_TriNorm(&D_8015E268, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&lItem->body, &right->body) == 1) {
                continue;
            }
            if (Math3D_TriVsSphIntersect(&lItem->dim.worldSphere, &D_8015E230, &sp7C) == 1 ||
                Math3D_TriVsSphIntersect(&lItem->dim.worldSphere, &D_8015E268, &sp7C) == 1) {
                Math_Vec3s_ToVec3f(&sp6C, &lItem->dim.worldSphere.center);

                sp60.x =
                    (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) *
                    (1.0f / 4);
                sp60.y =
                    (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) *
                    (1.0f / 4);
                sp60.z =
                    (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) *
                    (1.0f / 4);
                CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp6C, &right->base, &right->body, &sp60, &sp7C);
                return;
            }
        }
    }
}

static TriNorm D_8015E2A0;
static TriNorm D_8015E2D8;

void CollisionCheck_AC_QuadVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                    Collider* r) {
    ColliderJntSph* right = (ColliderJntSph*)r;
    Vec3f sp88;
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderJntSphItem* rItem;
    Vec3f sp74;
    Vec3f sp68;

    if (right->count > 0 && right->list != NULL) {
        if (CollisionCheck_IgnoreAT(&left->body) != 1) {
            Math3D_TriNorm(&D_8015E2A0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
            Math3D_TriNorm(&D_8015E2D8, &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                    continue;
                }
                if (CollisionCheck_NoSharedFlags(&left->body, &rItem->body) == 1) {
                    continue;
                }
                if (Math3D_TriVsSphIntersect(&rItem->dim.worldSphere, &D_8015E2A0, &sp88) != 1 &&
                    Math3D_TriVsSphIntersect(&rItem->dim.worldSphere, &D_8015E2D8, &sp88) != 1) {
                    continue;
                }
                if (func_8005D218(globalCtx, left, &sp88)) {
                    sp68.x = rItem->dim.worldSphere.center.x;
                    sp68.y = rItem->dim.worldSphere.center.y;
                    sp68.z = rItem->dim.worldSphere.center.z;

                    sp74.x =
                        (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) *
                        (1.0f / 4);
                    sp74.y =
                        (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) *
                        (1.0f / 4);
                    sp74.z =
                        (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) *
                        (1.0f / 4);
                    CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp74, &right->base, &rItem->body, &sp68, &sp88);
                    if ((right->base.maskB & 0x40) == 0) {
                        return;
                    }
                }
            }
        }
    }
}

void CollisionCheck_AC_CylVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderCylinder* left = (ColliderCylinder*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    f32 sp6C;
    f32 sp68;
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f sp44;
    f32 temp_f0;

    if (left->dim.radius <= 0 || left->dim.height <= 0 || right->dim.radius <= 0 || right->dim.height <= 0) {
        return;
    }
    if (CollisionCheck_IgnoreAC(&right->body) == 1) {
        return;
    }
    if (CollisionCheck_IgnoreAT(&left->body) == 1) {
        return;
    }
    if (CollisionCheck_NoSharedFlags(&left->body, &right->body) == 1) {
        return;
    }
    if (Math3D_CylOutsideCylDist(&left->dim, &right->dim, &sp6C, &sp68) == 1) {
        Math_Vec3s_ToVec3f(&sp50, &left->dim.pos);
        Math_Vec3s_ToVec3f(&sp44, &right->dim.pos);
        if (!(fabsf(sp68) < 0.008f)) {
            temp_f0 = (f32)right->dim.radius / sp68;
            sp5C.y = (f32)right->dim.pos.y + (f32)right->dim.yShift + (f32)right->dim.height * 0.5f;
            sp5C.x = ((f32)left->dim.pos.x - right->dim.pos.x) * temp_f0 + right->dim.pos.x;
            sp5C.z = ((f32)left->dim.pos.z - right->dim.pos.z) * temp_f0 + right->dim.pos.z;
        } else {
            Math_Vec3s_ToVec3f(&sp5C, &right->dim.pos);
        }
        CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp50, &right->base, &right->body, &sp44, &sp5C);
    }
}

void CollisionCheck_AC_CylVsTris(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderCylinder* left = (ColliderCylinder*)l;
    ColliderTris* right = (ColliderTris*)r;
    ColliderTrisItem* rItem;
    Vec3f sp68;
    Vec3f sp5C;
    Vec3f sp50;

    if (left->dim.radius > 0 && left->dim.height > 0 && right->count > 0 && right->list != NULL) {
        if (CollisionCheck_IgnoreAT(&left->body) == 1) {
            return;
        }
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&left->body, &rItem->body) == 1) {
                continue;
            }
            if (Math3D_CylTriVsIntersect(&left->dim, &rItem->dim, &sp68) == 1) {
                Math_Vec3s_ToVec3f(&sp5C, &left->dim.pos);

                sp50.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                sp50.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                sp50.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp5C, &right->base, &rItem->body, &sp50, &sp68);
                return;
            }
        }
    }
}

static Vec3f D_8015E310;

void CollisionCheck_AC_TrisVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    ColliderTrisItem* lItem;
    Vec3f sp60;
    Vec3f sp54;

    if (right->dim.radius > 0 && right->dim.height > 0 && left->count > 0 && left->list != NULL) {
        if (CollisionCheck_IgnoreAC(&right->body) == 1) {
            return;
        }
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&lItem->body, &right->body) == 1) {
                continue;
            }

            if (Math3D_CylTriVsIntersect(&right->dim, &lItem->dim, &D_8015E310) == 1) {
                sp60.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                sp60.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                sp60.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                Math_Vec3s_ToVec3f(&sp54, &right->dim.pos);
                CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp60, &right->base, &right->body, &sp54,
                              &D_8015E310);
                return;
            }
        }
    }
}

static TriNorm D_8015E320;
static TriNorm D_8015E358;
static Vec3f D_8015E390;

void CollisionCheck_AC_CylVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderCylinder* left = (ColliderCylinder*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    Vec3f sp64;
    Vec3f sp58;
    Vec3f sp4C;
    Vec3f sp40;

    if (left->dim.height <= 0 || left->dim.radius <= 0) {
        return;
    }
    if (CollisionCheck_IgnoreAT(&left->body) == 1 || CollisionCheck_IgnoreAC(&right->body) == 1) {
        return;
    }
    if (CollisionCheck_NoSharedFlags(&left->body, &right->body) == 1) {
        return;
    }
    Math3D_TriNorm(&D_8015E320, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
    Math3D_TriNorm(&D_8015E358, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
    if (Math3D_CylTriVsIntersect(&left->dim, &D_8015E320, &D_8015E390) == 1) {
        Math_Vec3s_ToVec3f(&sp64, &left->dim.pos);
        sp58.x =
            (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * 0.25f;
        sp58.y =
            (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * 0.25f;
        sp58.z =
            (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * 0.25f;
        CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp64, &right->base, &right->body, &sp58, &D_8015E390);
        return;
    }
    if (Math3D_CylTriVsIntersect(&left->dim, &D_8015E358, &D_8015E390) == 1) {
        Math_Vec3s_ToVec3f(&sp4C, &left->dim.pos);
        sp40.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) *
                 (1.0f / 4);
        sp40.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) *
                 (1.0f / 4);
        sp40.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) *
                 (1.0f / 4);
        CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp4C, &right->base, &right->body, &sp40, &D_8015E390);
    }
}

static s8 sBssDummy1;
static s8 sBssDummy2;

static TriNorm D_8015E3A0;
static TriNorm D_8015E3D8;
static Vec3f D_8015E410;

void CollisionCheck_AC_QuadVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    Vec3f sp64;
    Vec3f sp58;
    Vec3f sp4C;
    Vec3f sp40;

    if (right->dim.height <= 0 || right->dim.radius <= 0) {
        return;
    }
    if (CollisionCheck_IgnoreAC(&right->body) == 1 || CollisionCheck_IgnoreAT(&left->body) == 1) {
        return;
    }
    if (CollisionCheck_NoSharedFlags(&left->body, &right->body) == 1) {
        return;
    }
    Math3D_TriNorm(&D_8015E3A0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
    Math3D_TriNorm(&D_8015E3D8, &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
    if (Math3D_CylTriVsIntersect(&right->dim, &D_8015E3A0, &D_8015E410) == 1) {
        if (func_8005D218(globalCtx, left, &D_8015E410) != 0) {
            sp64.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) *
                     (1.0f / 4);
            sp64.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) *
                     (1.0f / 4);
            sp64.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) *
                     (1.0f / 4);
            Math_Vec3s_ToVec3f(&sp58, &right->dim.pos);
            CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp64, &right->base, &right->body, &sp58, &D_8015E410);
            return;
        }
    }
    if (Math3D_CylTriVsIntersect(&right->dim, &D_8015E3D8, &D_8015E410) == 1) {
        if (func_8005D218(globalCtx, left, &D_8015E410) != 0) {
            sp4C.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) *
                     (1.0f / 4);
            sp4C.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) *
                     (1.0f / 4);
            sp4C.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) *
                     (1.0f / 4);
            Math_Vec3s_ToVec3f(&sp40, &right->dim.pos);
            CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp4C, &right->base, &right->body, &sp40, &D_8015E410);
        }
    }
}

static s8 sBssDummy3;
static s8 sBssDummy4;
static s8 sBssDummy5;
static s8 sBssDummy6;

static Vec3f D_8015E420;

void CollisionCheck_AC_TrisVsTris(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderTris* right = (ColliderTris*)r;
    ColliderTrisItem* lItem;
    ColliderTrisItem* rItem;

    Vec3f sp5C;
    Vec3f sp50;

    if (right->count > 0 && right->list != NULL && left->count > 0 && left->list != NULL) {
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                continue;
            }
            for (lItem = left->list; lItem < left->list + left->count; lItem++) {
                if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
                    continue;
                }
                if (CollisionCheck_NoSharedFlags(&lItem->body, &rItem->body) == 1) {
                    continue;
                }
                if (Math3D_TriVsTriIntersect(&lItem->dim, &rItem->dim, &D_8015E420) == 1) {
                    sp5C.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                    sp5C.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                    sp5C.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                    sp50.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                    sp50.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                    sp50.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                    CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp5C, &right->base, &rItem->body, &sp50,
                                  &D_8015E420);
                    return;
                }
            }
        }
    }
}

static s8 sBssDummy7;
static s8 sBssDummy8;
static s8 sBssDummy9;
static s8 sBssDummy10;

static Vec3f D_8015E430;
static TriNorm D_8015E440;
static TriNorm D_8015E478;

void CollisionCheck_AC_TrisVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    ColliderTrisItem* lItem;
    Vec3f sp68;
    Vec3f sp5C;

    if (left->count > 0 && left->list != NULL && CollisionCheck_IgnoreAC(&right->body) != 1) {
        Math3D_TriNorm(&D_8015E440, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
        Math3D_TriNorm(&D_8015E478, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (CollisionCheck_IgnoreAT(&lItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&lItem->body, &right->body) == 1) {
                continue;
            }
            if (Math3D_TriVsTriIntersect(&D_8015E440, &lItem->dim, &D_8015E430) == 1 ||
                Math3D_TriVsTriIntersect(&D_8015E478, &lItem->dim, &D_8015E430) == 1) {
                sp68.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                sp68.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                sp68.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                sp5C.x = (right->dim.quad[0].x +
                          (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) *
                         (1.0f / 4);
                sp5C.y = (right->dim.quad[0].y +
                          (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) *
                         (1.0f / 4);
                sp5C.z = (right->dim.quad[0].z +
                          (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) *
                         (1.0f / 4);
                CollisionCheck_SetATvsAC(globalCtx, &left->base, &lItem->body, &sp68, &right->base, &right->body, &sp5C,
                              &D_8015E430);
                return;
            }
        }
    }
}

static Vec3f D_8015E4B0;
static TriNorm D_8015E4C0;
static TriNorm D_8015E4F8;

void CollisionCheck_AC_QuadVsTris(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderTris* right = (ColliderTris*)r;
    ColliderTrisItem* rItem;
    Vec3f sp68;
    Vec3f sp5C;

    if (right->count > 0 && right->list != NULL && CollisionCheck_IgnoreAT(&left->body) != 1) {
        Math3D_TriNorm(&D_8015E4C0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
        Math3D_TriNorm(&D_8015E4F8, &left->dim.quad[1], &left->dim.quad[0], &left->dim.quad[2]);
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (CollisionCheck_IgnoreAC(&rItem->body) == 1) {
                continue;
            }
            if (CollisionCheck_NoSharedFlags(&left->body, &rItem->body) == 1) {
                continue;
            }
            if (Math3D_TriVsTriIntersect(&D_8015E4C0, &rItem->dim, &D_8015E4B0) == 1 ||
                Math3D_TriVsTriIntersect(&D_8015E4F8, &rItem->dim, &D_8015E4B0) == 1) {
                if (func_8005D218(globalCtx, left, &D_8015E4B0) != 0) {
                    sp5C.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                    sp5C.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                    sp5C.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                    sp68.x = (left->dim.quad[0].x +
                              (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) *
                             (1.0f / 4);
                    sp68.y = (left->dim.quad[0].y +
                              (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) *
                             (1.0f / 4);
                    sp68.z = (left->dim.quad[0].z +
                              (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) *
                             (1.0f / 4);
                    CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp68, &right->base, &rItem->body, &sp5C,
                                  &D_8015E4B0);
                    return;
                }
            }
        }
    }
}

static TriNorm D_8015E530[2];
static Vec3f D_8015E598;
static TriNorm D_8015E5A8[2];

void CollisionCheck_AC_QuadVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    s32 i;
    s32 j;
    Vec3f sp6C;
    Vec3f sp60;

    if (CollisionCheck_IgnoreAT(&left->body) == 1) {
        return;
    }
    if (CollisionCheck_IgnoreAC(&right->body) == 1) {
        return;
    }
    if (CollisionCheck_NoSharedFlags(&left->body, &right->body) == 1) {
        return;
    }
    Math3D_TriNorm(&D_8015E5A8[0], &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
    Math3D_TriNorm(&D_8015E5A8[1], &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
    Math3D_TriNorm(&D_8015E530[0], &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
    Math3D_TriNorm(&D_8015E530[1], &right->dim.quad[2], &right->dim.quad[1], &right->dim.quad[0]);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            if (Math3D_TriVsTriIntersect(&D_8015E5A8[j], &D_8015E530[i], &D_8015E598) == 1) {
                if (func_8005D218(globalCtx, left, &D_8015E598)) {
                    sp6C.x =
                        (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) *
                        (1.0f / 4);
                    sp6C.y =
                        (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) *
                        (1.0f / 4);
                    sp6C.z =
                        (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) *
                        (1.0f / 4);
                    sp60.x = (right->dim.quad[0].x +
                              (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) *
                             (1.0f / 4);
                    sp60.y = (right->dim.quad[0].y +
                              (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) *
                             (1.0f / 4);
                    sp60.z = (right->dim.quad[0].z +
                              (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) *
                             (1.0f / 4);
                    CollisionCheck_SetATvsAC(globalCtx, &left->base, &left->body, &sp6C, &right->base, &right->body, &sp60,
                                  &D_8015E598);
                    return;
                }
            }
        }
    }
}

// D_8011DF5C ColliderJntSph
void CollisionCheck_ApplyJntSphAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderJntSph* col = (ColliderJntSph*)collider;
    ColliderJntSphItem* item;
    Vec3f sp24;

    for (item = col->list; item < col->list + col->count; item++) {
        if ((item->body.bumperFlags & 0x80) && (item->body.acHitItem != NULL) && !(item->body.acHitItem->toucherFlags & 0x40)) {
            Math_Vec3s_ToVec3f(&sp24, &item->body.bumper.hitPos);
            CollisionCheck_HitEffects(globalCtx, item->body.acHit, item->body.acHitItem, &col->base, &item->body, &sp24);
            item->body.acHitItem->toucherFlags |= 0x40;
            return;
        }
    }
}

// D_8011DF5C ColliderCylinder
void CollisionCheck_ApplyCylAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderCylinder* item = (ColliderCylinder*)collider;
    Vec3f sp28;

    if ((item->body.bumperFlags & 0x80) && (item->body.acHitItem != NULL) && !(item->body.acHitItem->toucherFlags & 0x40)) {
        Math_Vec3s_ToVec3f(&sp28, &item->body.bumper.hitPos);
        CollisionCheck_HitEffects(globalCtx, item->body.acHit, item->body.acHitItem, &item->base, &item->body, &sp28);
        item->body.acHitItem->toucherFlags |= 0x40;
    }
}

// D_8011DF5C ColliderTris
void CollisionCheck_ApplyTrisAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderTris* col = (ColliderTris*)collider;
    ColliderTrisItem* item;
    Vec3f sp24;

    for (item = col->list; item < col->list + col->count; item++) {
        if ((item->body.bumperFlags & 0x80) && (item->body.acHitItem != NULL) && !(item->body.acHitItem->toucherFlags & 0x40)) {
            Math_Vec3s_ToVec3f(&sp24, &item->body.bumper.hitPos);
            CollisionCheck_HitEffects(globalCtx, item->body.acHit, item->body.acHitItem, &col->base, &item->body, &sp24);
            item->body.acHitItem->toucherFlags |= 0x40;
            return;
        }
    }
}

// D_8011DF5C ColliderQuad
void CollisionCheck_ApplyQuadAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderQuad* item = (ColliderQuad*)collider;
    Vec3f sp28;

    if ((item->body.bumperFlags & 0x80) && (item->body.acHitItem != NULL) && !(item->body.acHitItem->toucherFlags & 0x40)) {
        Math_Vec3s_ToVec3f(&sp28, &item->body.bumper.hitPos);
        CollisionCheck_HitEffects(globalCtx, item->body.acHit, item->body.acHitItem, &item->base, &item->body, &sp28);
        item->body.acHitItem->toucherFlags |= 0x40;
    }
}

void CollisionCheck_ApplyAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider** col;
    Collider* colAC;

    static void (*D_8011DF5C[4])(GlobalContext*, CollisionCheckContext*, Collider*) = {
        CollisionCheck_ApplyJntSphAT,
        CollisionCheck_ApplyCylAT,
        CollisionCheck_ApplyTrisAT,
        CollisionCheck_ApplyQuadAT,
    };

    for (col = colChkCtx->colAc; col < colChkCtx->colAc + colChkCtx->colAcCount; col++) {
        colAC = *col;
        if ((colAC != NULL) && (colAC->acFlags & 1) && (colAC->actor == NULL || colAC->actor->update != NULL)) {
            (*D_8011DF5C[colAC->shape])(globalCtx, colChkCtx, colAC);
        }
    }
}

void CollisionCheck_AllAC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* colAT) {
    Collider** col;
    Collider* colAC;

    static void (*D_8011DF6C[4][4])(GlobalContext*, CollisionCheckContext*, Collider*, Collider*) = {
        { CollisionCheck_AC_JntSphVsJntSph, CollisionCheck_AC_JntSphVsCyl, CollisionCheck_AC_JntSphVsTris,
          CollisionCheck_AC_JntSphVsQuad },
        { CollisionCheck_AC_CylVsJntSph, CollisionCheck_AC_CylVsCyl, CollisionCheck_AC_CylVsTris,
          CollisionCheck_AC_CylVsQuad },
        { CollisionCheck_AC_TrisVsJntSph, CollisionCheck_AC_TrisVsCyl, CollisionCheck_AC_TrisVsTris,
          CollisionCheck_AC_TrisVsQuad },
        { CollisionCheck_AC_QuadVsJntSph, CollisionCheck_AC_QuadVsCyl, CollisionCheck_AC_QuadVsTris,
          CollisionCheck_AC_QuadVsQuad },
    };
    for (col = colChkCtx->colAc; col < colChkCtx->colAc + colChkCtx->colAcCount; col++) {    
        colAC = *col;

        if ((colAC != NULL) && (colAC->acFlags & 1) && (colAC->actor == NULL || colAC->actor->update != NULL)) {

            if((colAC->acFlags & colAT->atFlags & 0x38) && (colAT != colAC)) {

                if ((colAT->atFlags & 0x40) || colAT->actor == NULL || colAC->actor != colAT->actor) {

                    D_8011DF6C[colAT->shape][colAC->shape](globalCtx, colChkCtx, colAT, colAC);
                }
            }
        }
    }
}

// Test Attack Collisions
void CollisionCheck_AllAT(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider** col;
    Collider* colAT;

    if ((colChkCtx->colAtCount != 0) && (colChkCtx->colAcCount != 0)){
        for (col = colChkCtx->colAt; col < colChkCtx->colAt + colChkCtx->colAtCount; col++) {
            colAT = *col;
            if ((colAT != NULL) && (colAT->atFlags & 1) && ((colAT->actor == NULL) || (colAT->actor->update != NULL))){
                CollisionCheck_AllAC(globalCtx, colChkCtx, colAT);
            }
        }
        CollisionCheck_ApplyAT(globalCtx, colChkCtx);
    }
}

// Get mass type
s32 CollisionCheck_GetMassType(u8 mass) {
    if (mass == 0xFF) {
        return 0;
    }
    if (mass == 0xFE) {
        return 1;
    }
    return 2;
}

// SetOC collision, perform elastic collision
void func_800614A4(Collider* left, ColliderBody* leftBody, Vec3f* leftv, Collider* right, ColliderBody* rightBody,
                   Vec3f* rightv, f32 arg6) {
    f32 temp_f0;
    f32 leftDisplacementFactor;
    f32 rightDisplacementFactor;
    f32 xzDist;
    f32 leftMass;
    f32 rightMass;
    f32 totalMass;
    f32 inverseTotalMass;
    f32 xDelta;
    f32 zDelta;
    Actor* leftActor;
    Actor* rightActor;
    s32 rightMassType;
    s32 leftMassType;

    leftActor = left->actor;
    rightActor = right->actor;
    
    left->maskA |= 2;
    left->oc = rightActor;
    leftBody->ocFlags |= 2;
    if (right->maskB & 8) {
        left->maskB |= 1;
    }
    right->oc = leftActor;
    right->maskA |= 2;
    rightBody->ocFlags |= 2;
    if (left->maskB & 8) {
        right->maskB |= 1;
    }
    if (leftActor == NULL || rightActor == NULL || (left->maskA & 4) || (right->maskA & 4)) {
        return;
    }
    leftMassType = CollisionCheck_GetMassType(leftActor->colChkInfo.mass);
    rightMassType = CollisionCheck_GetMassType(rightActor->colChkInfo.mass);
    leftMass = leftActor->colChkInfo.mass;
    rightMass = rightActor->colChkInfo.mass;
    totalMass = leftMass + rightMass;
    if (fabsf(totalMass) < 0.008f) {
        totalMass = (leftMass = rightMass = 1.0f) * 2;
    }
    xDelta = rightv->x - leftv->x;
    zDelta = rightv->z - leftv->z;
    xzDist = sqrtf(SQ(xDelta) + SQ(zDelta));

    if (leftMassType == 0) {
        if (rightMassType == 0) {
            return;
        } else {
            leftDisplacementFactor = 0;
            rightDisplacementFactor = 1;
        }
    } else if (leftMassType == 1) {
        if (rightMassType == 0) {
            leftDisplacementFactor = 1;
            rightDisplacementFactor = 0;
        } else if (rightMassType == 1) {
            leftDisplacementFactor = 0.5f;
            rightDisplacementFactor = 0.5f;
        } else {
            leftDisplacementFactor = 0;
            rightDisplacementFactor = 1;
        }
    } else {
        if (rightMassType == 2) {
            inverseTotalMass = 1 / totalMass;
            leftDisplacementFactor = rightMass * inverseTotalMass;
            rightDisplacementFactor = leftMass * inverseTotalMass;
        } else {
            leftDisplacementFactor = 1;
            rightDisplacementFactor = 0;
        }
    }

    if (!(fabsf(xzDist) < 0.008f)) {
        temp_f0 = arg6 / xzDist;
        xDelta *= temp_f0;
        zDelta *= temp_f0;
        leftActor->colChkInfo.displacement.x += -xDelta * leftDisplacementFactor;
        leftActor->colChkInfo.displacement.z += -zDelta * leftDisplacementFactor;
        rightActor->colChkInfo.displacement.x += xDelta * rightDisplacementFactor;
        rightActor->colChkInfo.displacement.z += zDelta * rightDisplacementFactor;
    } else if (!(arg6 == 0.0f)) {
        leftActor->colChkInfo.displacement.x += -arg6 * leftDisplacementFactor;
        rightActor->colChkInfo.displacement.x += arg6 * rightDisplacementFactor;
    } else {
        leftActor->colChkInfo.displacement.x -= leftDisplacementFactor;
        rightActor->colChkInfo.displacement.x += rightDisplacementFactor;
    }
}

void CollisionCheck_OC_JntSphVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                      Collider* r) {
    ColliderJntSph* left = (ColliderJntSph*)l;
    ColliderJntSph* right = (ColliderJntSph*)r;
    ColliderJntSphItem* lItem;
    ColliderJntSphItem* rItem;
    f32 sp74;
    Vec3f sp68;
    Vec3f sp5C;

    if (left->count > 0 && left->list != NULL && right->count > 0 && right->list != NULL) {
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (!(lItem->body.ocFlags & 1)) {
                continue;
            }
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (!(rItem->body.ocFlags & 1)) {
                    continue;
                }
                if (Math3D_SphVsSphOverlap(&lItem->dim.worldSphere, &rItem->dim.worldSphere, &sp74) == 1) {
                    Math_Vec3s_ToVec3f(&sp68, &lItem->dim.worldSphere.center);
                    Math_Vec3s_ToVec3f(&sp5C, &rItem->dim.worldSphere.center);
                    func_800614A4(&left->base, &lItem->body, &sp68, &right->base, &rItem->body, &sp5C, sp74);
                }
            }
        }
    }
}

void CollisionCheck_OC_JntSphVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                   Collider* r) {
    ColliderJntSph* left = (ColliderJntSph*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    ColliderJntSphItem* lItem;
    f32 sp78;
    Vec3f sp6C;
    Vec3f sp60;

    if (left->count > 0 && left->list != NULL && (right->base.maskA & 1) && (right->body.ocFlags & 1)) {
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (!(lItem->body.ocFlags & 1)) {
                continue;
            }
            if (Math3D_SphVsCylOverlapDist(&lItem->dim.worldSphere, &right->dim, &sp78) == 1) {
                Math_Vec3s_ToVec3f(&sp6C, &lItem->dim.worldSphere.center);
                Math_Vec3s_ToVec3f(&sp60, &right->dim.pos);
                func_800614A4(&left->base, &lItem->body, &sp6C, &right->base, &right->body, &sp60, sp78);
            }
        }
    }
}

void CollisionCheck_OC_CylVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                   Collider* r) {
    CollisionCheck_OC_JntSphVsCyl(globalCtx, colChkCtx, r, l);
}

void CollisionCheck_OC_CylVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderCylinder* left = (ColliderCylinder*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    f32 sp4C;
    Vec3f sp40;
    Vec3f sp34;

    if ((left->base.maskA & 1) && (right->base.maskA & 1) &&
        (left->body.ocFlags & 1) && (right->body.ocFlags & 1) &&
        (Math3D_CylOutsideCyl(&left->dim, &right->dim, &sp4C) == 1)) {
            
        Math_Vec3s_ToVec3f(&sp40, &left->dim.pos);
        Math_Vec3s_ToVec3f(&sp34, &right->dim.pos);
        func_800614A4(&left->base, &left->body, &sp40, &right->base, &right->body, &sp34, sp4C);
    }
}

// CollisionCheck_OC test ?
s32 CollisionCheck_IgnoreOc(Collider* collider) {
    if (!(collider->maskA & 1)) {
        return 1;
    }
    return 0;
}

// CollisionCheck_OC test ?
s32 CollisionCheck_Incompatible(Collider* arg0, Collider* arg1) {
    if (!(arg0->maskA & arg1->maskB & 0x38) || !(arg0->maskB & arg1->maskA & 0x38) ||
        ((arg0->maskB & 2) && (arg1->maskB & 4)) || ((arg1->maskB & 2) && (arg0->maskB & 4))) {
        return 1;
    }
    if (arg0->actor == arg1->actor) {
        return 1;
    }
    return 0;
}

void CollisionCheck_OC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider** phi_s2;
    Collider** phi_s0;
    Collider** new_var;
    Collider** new_var2;
    void (*test)(GlobalContext*, CollisionCheckContext*, Collider*, Collider*);

    static void (*D_8011DFAC[4][4])(GlobalContext*, CollisionCheckContext*, Collider*, Collider*) = {
        { CollisionCheck_OC_JntSphVsJntSph, CollisionCheck_OC_JntSphVsCyl, NULL, NULL },
        { CollisionCheck_OC_CylVsJntSph, CollisionCheck_OC_CylVsCyl, NULL, NULL },
        { NULL, NULL, NULL, NULL },
        { NULL, NULL, NULL, NULL },
    };

    for (phi_s2 = colChkCtx->colOc; phi_s2 < colChkCtx->colOc + colChkCtx->colOcCount; phi_s2++) {
        if (*phi_s2 == NULL || CollisionCheck_IgnoreOc(*phi_s2) == 1) {
            continue;
        }
        for (phi_s0 = phi_s2 + 1; phi_s0 < colChkCtx->colOc + colChkCtx->colOcCount; phi_s0++) {
            if (*phi_s0 == NULL || CollisionCheck_IgnoreOc(*phi_s0) == 1
                    || CollisionCheck_Incompatible(*phi_s2, *phi_s0) == 1) {
                continue;
            }
            new_var2 = phi_s0;
            new_var = phi_s2;
            test = D_8011DFAC[(*new_var)->shape][(*new_var2)->shape];
            if (test == NULL) {
                osSyncPrintf("CollisionCheck_OC():未対応 %d, %d\n", (*new_var)->shape, (*new_var2)->shape);
                // EUC-JP: 未対応 | Not compatible
                continue;
            }
            (*test)(globalCtx, colChkCtx, *new_var, *new_var2);
        }
    }
}

// Initialize CollisionCheckInfo
void CollisionCheck_InfoInit(CollisionCheckInfo* info) {
    static CollisionCheckInfo init = { NULL, { 0, 0, 0 }, 10, 10, 0, 50, 8, 0, 0, 0, 0 };
    *info = init;
}

void CollisionCheck_ClearInfo(CollisionCheckInfo* info) {
    info->damage = 0;
    info->damageEffect = 0;
    info->atHitEffect = 0;
    info->acHitEffect = 0;
    info->displacement.z = 0.0f;
    info->displacement.y = 0.0f;
    info->displacement.x = 0.0f;
}

void CollisionCheck_SetInfo(CollisionCheckInfo* info, CollisionCheckInfoInit* init) {
    info->health = init->health;
    info->unk_10 = init->unk_02;
    info->unk_12 = init->unk_04;
    info->mass = init->mass;
}

void CollisionCheck_SetInfoDamageTable(CollisionCheckInfo* info, DamageTable* damageTable, CollisionCheckInfoInit* init) {
    info->health = init->health;
    info->damageTable = damageTable;
    info->unk_10 = init->unk_02;
    info->unk_12 = init->unk_04;
    info->mass = init->mass;
}

void CollisionCheck_SetInfo2DamageTable(CollisionCheckInfo* info, DamageTable* damageTable, CollisionCheckInfoInit2* init) {
    info->health = init->health;
    info->damageTable = damageTable;
    info->unk_10 = init->unk_02;
    info->unk_12 = init->unk_04;
    info->unk_14 = init->unk_06;
    info->mass = init->mass;
}

void CollisionCheck_SetInfoGetDamageTable(CollisionCheckInfo* info, s32 index, CollisionCheckInfoInit2* init) {
    CollisionCheck_SetInfo2DamageTable(info, DamageTable_Get(index), init);
}

// Apply AC damage effect
void CollisionCheck_ApplyDamage(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider, ColliderBody* body) {
    DamageTable* tbl;
    u32 flags;
    s32 i;
    f32 damage;
    s32 tblLookup;

    if (collider->actor == NULL || !(collider->acFlags & 2)) {
        return;
    }
    if (!(body->bumperFlags & 2) || (body->bumperFlags & 0x10)) {
        return;
    }
    if (body->acHitItem == NULL) {
        __assert("pclobj_elem->ac_hit_elem != NULL", "../z_collision_check.c", 6493);
    }
    tbl = collider->actor->colChkInfo.damageTable;
    if (tbl == NULL) {
        damage = (f32)body->acHitItem->toucher.damage - (f32)body->bumper.defense;
        if (damage < 0) {
            damage = 0;
        }
    } else {
        for (i = 0, flags = body->acHitItem->toucher.flags; i < 0x20; i++, flags >>= 1) {
            if (flags == 1) {
                break;
            }
        }

        tblLookup = tbl->table[i];
        damage = tblLookup & 0xF;
        collider->actor->colChkInfo.damageEffect = tblLookup >> 4 & 0xF;
    }
    if (!(collider->acFlags & 4)) {
        collider->actor->colChkInfo.damage = (u32)(collider->actor->colChkInfo.damage + damage);
    }
}

// Apply ColliderJntSph AC damage effect
void CollisionCheck_ApplyDamageJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderJntSph* jntSph = (ColliderJntSph*)collider;
    s32 i;

    if (jntSph->count > 0 && jntSph->list != NULL) {
        for (i = 0; i < jntSph->count; i++) {
            CollisionCheck_ApplyDamage(globalCtx, colChkCtx, &jntSph->base, &jntSph->list[i].body);
        }
    }
}

// Apply ColliderCylinder AC damage effect
void CollisionCheck_ApplyDamageCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderCylinder* cylinder = (ColliderCylinder*)collider;
    CollisionCheck_ApplyDamage(globalCtx, colChkCtx, &cylinder->base, &cylinder->body);
}

// Apply ColliderTris AC damage effect
void CollisionCheck_ApplyDamageTris(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderTris* tris = (ColliderTris*)collider;
    s32 i;

    for (i = 0; i < tris->count; i++) {
        CollisionCheck_ApplyDamage(globalCtx, colChkCtx, collider, &tris->list[i].body);
    }
}

// Apply ColliderQuad AC damage effect
void CollisionCheck_ApplyDamageQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderQuad* quad = (ColliderQuad*)collider;
    CollisionCheck_ApplyDamage(globalCtx, colChkCtx, &quad->base, &quad->body);
}

// Apply all AC damage effects
void CollisionCheck_ApplyDamageAll(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider* collider;
    s32 i;

    static void (*D_8011E008[4])(GlobalContext*, CollisionCheckContext*, Collider*) = {
        CollisionCheck_ApplyDamageJntSph,
        CollisionCheck_ApplyDamageCyl,
        CollisionCheck_ApplyDamageTris,
        CollisionCheck_ApplyDamageQuad,
    };

    for (i = 0; i < colChkCtx->colAcCount; i++) {
        collider = colChkCtx->colAc[i];
        if (collider == 0) {
            continue;
        }
        if ((collider->acFlags & 0x40)) {
            continue;
        }
        D_8011E008[collider->shape](globalCtx, colChkCtx, collider);
    }
}

static Linef D_8015E610;

s32 CollisionCheck_GeneralLineOcCheck_JntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx,
                                             Collider* collider, Vec3f* arg3, Vec3f* arg4) {
    ColliderJntSph* jntSph = (ColliderJntSph*)collider;
    ColliderJntSphItem* item;
    s32 phi_s0;
    for (phi_s0 = 0; phi_s0 < jntSph->count; phi_s0++) {
        item = &jntSph->list[phi_s0];
        if (!(item->body.ocFlags & 1)) {
            continue;
        }
        D_8015E610.a = *arg3;
        D_8015E610.b = *arg4;
        if (Math3D_LineVsSph(&item->dim.worldSphere, &D_8015E610) == 1) {
            return 1;
        }
    }
    return 0;
}

static Vec3f D_8015E628;
static Vec3f D_8015E638;

s32 CollisionCheck_GeneralLineOcCheck_Cyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx,
                                          Collider* collider, Vec3f* arg3, Vec3f* arg4) {
    ColliderCylinder* cylinder = (ColliderCylinder*)collider;
    if (!(cylinder->body.ocFlags & 1)) {
        return 0;
    }
    if (Math3D_CylVsLineSeg(&cylinder->dim, arg3, arg4, &D_8015E628, &D_8015E638) != 0) {
        return 1;
    }
    return 0;
}

s32 CollisionCheck_GeneralLineOcCheck(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Vec3f* camera_3C,
                                      Vec3f* arg3, Actor** arg4, s32 arg5) {
    Collider* collider;
    s32 (*t)(GlobalContext*, CollisionCheckContext*, Collider*, Vec3f*, Vec3f*);
    Collider** c;
    s32 i;
    s32 test;
    s32 result;

    static s32 (*D_8011E018[4])(GlobalContext*, CollisionCheckContext*, Collider*, Vec3f*, Vec3f*) = {
        CollisionCheck_GeneralLineOcCheck_JntSph,
        CollisionCheck_GeneralLineOcCheck_Cyl,
        NULL,
        NULL,
    };

    result = 0;
    for (c = colChkCtx->colOc; c < colChkCtx->colOc + colChkCtx->colOcCount; c++) {
        if (CollisionCheck_IgnoreOc(*c) == 1) {
            continue;
        }
        test = 0;
        for (i = 0; i < arg5; i++) {
            if ((*c)->actor == arg4[i]) {
                test = 1;
                break;
            }
        }
        if (test == 1) {
            continue;
        }
        collider = *c;
        t = D_8011E018[collider->shape];
        if (t == NULL) {
            osSyncPrintf("CollisionCheck_generalLineOcCheck():未対応 %dタイプ\n", collider->shape);
            // EUC-JP: 未対応 %dタイプ | %d's type is not supported
        } else {
            result = (*t)(globalCtx, colChkCtx, collider, camera_3C, arg3);
            if (result != 0) {
                break;
            }
        }
    }
    return result;
}

s32 CollisionCheck_LineOcCheck(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Vec3f* arg2, Vec3f* arg3) {
    CollisionCheck_GeneralLineOcCheck(globalCtx, colChkCtx, arg2, arg3, NULL, 0);
}

s32 func_800626B0(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Vec3f* camera_3C, Vec3f* arg3,
                  Actor** arg4, s32 arg5) {
    CollisionCheck_GeneralLineOcCheck(globalCtx, colChkCtx, camera_3C, arg3, arg4, arg5);
}

void Collider_CylinderUpdate(Actor* actor, ColliderCylinder* collider) {
    collider->dim.pos.x = (s32)actor->posRot.pos.x;
    collider->dim.pos.y = (s32)actor->posRot.pos.y;
    collider->dim.pos.z = (s32)actor->posRot.pos.z;
}

// Set ColliderCylinder position
void Collider_SetCylinderPosition(ColliderCylinder* collider, Vec3s* pos) {
    collider->dim.pos.x = pos->x;
    collider->dim.pos.y = pos->y;
    collider->dim.pos.z = pos->z;
}

// Set ColliderQuad vertices
void Collider_SetQuadVertices(ColliderQuad* collider, Vec3f* a, Vec3f* b, Vec3f* c, Vec3f* d) {
    Math_Vec3f_Copy(&collider->dim.quad[2], c);
    Math_Vec3f_Copy(&collider->dim.quad[3], d);
    Math_Vec3f_Copy(&collider->dim.quad[0], a);
    Math_Vec3f_Copy(&collider->dim.quad[1], b);
    Collider_SetMidpoints(&collider->dim);
}

// Set ColliderTrisItem at index
void Collider_SetTrisVertices(ColliderTris* collider, s32 index, Vec3f* a, Vec3f* b, Vec3f* c) {
    ColliderTrisItem* item;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    item = &collider->list[index];
    Math_Vec3f_Copy(&item->dim.vtx[0], a);
    Math_Vec3f_Copy(&item->dim.vtx[1], b);
    Math_Vec3f_Copy(&item->dim.vtx[2], c);
    Math3D_DefPlane(a, b, c, &sp40, &sp3C, &sp38, &sp34);
    item->dim.plane.normal.x = sp40;
    item->dim.plane.normal.y = sp3C;
    item->dim.plane.normal.z = sp38;
    item->dim.plane.originDist = sp34;
}

// Set ColliderTrisItem at index
void Collider_SetTrisItemIndex(GlobalContext* globalCtx, ColliderTris* collider, s32 index, ColliderTrisItemDimInit* init) {
    ColliderTrisItem* item = &collider->list[index];
    Collider_SetTrisItemDim(globalCtx, &item->dim, init);
}

// Due to an unknown reason, bss ordering changed between the 2 static Vec3f variables in the function below.
// In order to reproduce this behavior, we need a specific number of bss variables in the file before that point.
// For this, we introduce a certain amount of dummy variables throughout the file, which we fit inside padding added
// by the compiler between structs like TriNorm and/or Vec3f, so they don't take space in bss.
static s8 sBssDummy11;
static s8 sBssDummy12;
static s8 sBssDummy13;
static s8 sBssDummy14;

void Collider_UpdateSphJoint(s32 arg0, ColliderJntSph* collider) {
    static Vec3f D_8015E648;
    static Vec3f D_8015CF00; // bss ordering changes here
    s32 i;

    for (i = 0; i < collider->count; i++) {
        if (arg0 == collider->list[i].dim.joint) {
            D_8015E648.x = collider->list[i].dim.modelSphere.center.x;
            D_8015E648.y = collider->list[i].dim.modelSphere.center.y;
            D_8015E648.z = collider->list[i].dim.modelSphere.center.z;
            Matrix_MultVec3f(&D_8015E648, &D_8015CF00);
            collider->list[i].dim.worldSphere.center.x = (s32)D_8015CF00.x;
            collider->list[i].dim.worldSphere.center.y = (s32)D_8015CF00.y;
            collider->list[i].dim.worldSphere.center.z = (s32)D_8015CF00.z;
            collider->list[i].dim.worldSphere.radius =
                (s32)((f32)collider->list[i].dim.modelSphere.radius * collider->list[i].dim.scale);
        }
    }
}

void CollisionCheck_SpawnRedBlood(GlobalContext* globalCtx, Vec3f* v) {
    static EffectSparkInit D_8015CF10;
    s32 sp24;

    D_8015CF10.position.x = (s32)v->x;
    D_8015CF10.position.y = (s32)v->y;
    D_8015CF10.position.z = (s32)v->z;
    D_8015CF10.uDiv = 5;
    D_8015CF10.vDiv = 5;
    D_8015CF10.colorStart[0].r = 128;
    D_8015CF10.colorStart[0].g = 0;
    D_8015CF10.colorStart[0].b = 64;
    D_8015CF10.colorStart[0].a = 255;
    D_8015CF10.colorStart[1].r = 128;
    D_8015CF10.colorStart[1].g = 0;
    D_8015CF10.colorStart[1].b = 64;
    D_8015CF10.colorStart[1].a = 255;
    D_8015CF10.colorStart[2].r = 255;
    D_8015CF10.colorStart[2].g = 128;
    D_8015CF10.colorStart[2].b = 0;
    D_8015CF10.colorStart[2].a = 255;
    D_8015CF10.colorStart[3].r = 255;
    D_8015CF10.colorStart[3].g = 128;
    D_8015CF10.colorStart[3].b = 0;
    D_8015CF10.colorStart[3].a = 255;
    D_8015CF10.colorEnd[0].r = 64;
    D_8015CF10.colorEnd[0].g = 0;
    D_8015CF10.colorEnd[0].b = 32;
    D_8015CF10.colorEnd[0].a = 0;
    D_8015CF10.colorEnd[1].r = 64;
    D_8015CF10.colorEnd[1].g = 0;
    D_8015CF10.colorEnd[1].b = 32;
    D_8015CF10.colorEnd[1].a = 0;
    D_8015CF10.colorEnd[2].r = 128;
    D_8015CF10.colorEnd[2].g = 0;
    D_8015CF10.colorEnd[2].b = 64;
    D_8015CF10.colorEnd[2].a = 0;
    D_8015CF10.colorEnd[3].r = 128;
    D_8015CF10.colorEnd[3].g = 0;
    D_8015CF10.colorEnd[3].b = 64;
    D_8015CF10.colorEnd[3].a = 0;
    D_8015CF10.timer = 0;
    D_8015CF10.duration = 16;
    D_8015CF10.speed = 8.0f;
    D_8015CF10.gravity = -1.0f;

    Effect_Add(globalCtx, &sp24, EFFECT_SPARK, 0, 1, &D_8015CF10);
}

void CollisionCheck_SpawnWaterDroplets(GlobalContext* globalCtx, Vec3f* v) {
    static EffectSparkInit D_8015D3D8;
    s32 sp24;

    D_8015D3D8.position.x = (s32)v->x;
    D_8015D3D8.position.y = (s32)v->y;
    D_8015D3D8.position.z = (s32)v->z;
    D_8015D3D8.uDiv = 5;
    D_8015D3D8.vDiv = 5;
    D_8015D3D8.colorStart[0].r = 255;
    D_8015D3D8.colorStart[0].g = 255;
    D_8015D3D8.colorStart[0].b = 255;
    D_8015D3D8.colorStart[0].a = 255;
    D_8015D3D8.colorStart[1].r = 100;
    D_8015D3D8.colorStart[1].g = 100;
    D_8015D3D8.colorStart[1].b = 100;
    D_8015D3D8.colorStart[1].a = 100;
    D_8015D3D8.colorStart[2].r = 100;
    D_8015D3D8.colorStart[2].g = 100;
    D_8015D3D8.colorStart[2].b = 100;
    D_8015D3D8.colorStart[2].a = 100;
    D_8015D3D8.colorStart[3].r = 100;
    D_8015D3D8.colorStart[3].g = 100;
    D_8015D3D8.colorStart[3].b = 100;
    D_8015D3D8.colorStart[3].a = 100;
    D_8015D3D8.colorEnd[0].r = 50;
    D_8015D3D8.colorEnd[0].g = 50;
    D_8015D3D8.colorEnd[0].b = 50;
    D_8015D3D8.colorEnd[0].a = 50;
    D_8015D3D8.colorEnd[1].r = 50;
    D_8015D3D8.colorEnd[1].g = 50;
    D_8015D3D8.colorEnd[1].b = 50;
    D_8015D3D8.colorEnd[1].a = 50;
    D_8015D3D8.colorEnd[2].r = 50;
    D_8015D3D8.colorEnd[2].g = 50;
    D_8015D3D8.colorEnd[2].b = 50;
    D_8015D3D8.colorEnd[2].a = 50;
    D_8015D3D8.colorEnd[3].r = 0;
    D_8015D3D8.colorEnd[3].g = 0;
    D_8015D3D8.colorEnd[3].b = 0;
    D_8015D3D8.colorEnd[3].a = 0;
    D_8015D3D8.timer = 0;
    D_8015D3D8.duration = 16;
    D_8015D3D8.speed = 8.0f;
    D_8015D3D8.gravity = -1.0f;

    Effect_Add(globalCtx, &sp24, EFFECT_SPARK, 0, 1, &D_8015D3D8);
}

void CollisionCheck_ShieldParticles(GlobalContext* globalCtx, Vec3f* v) {
    static EffectShieldParticleInit init = {
        16,
        { 0.0f, 0.0f, 0.0f },
        { 0x00, 0xC8, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0x80, 0xFF },
        { 0xFF, 0xFF, 0x00, 0xFF },
        { 0xFF, 0x40, 0x00, 0xC8 },
        { 0xFF, 0x00, 0x00, 0xFF },
        2.1f,
        35.0f,
        30.0f,
        8,
        { 0, 0, 0, 0x00, 0x80, 0xFF, 0x00, 300 },
        1,
    };
    s32 sp24;

    init.position.x = (s32)v->x;
    init.position.y = (s32)v->y;
    init.position.z = (s32)v->z;
    init.lightPoint.x = init.position.x;
    init.lightPoint.y = init.position.y;
    init.lightPoint.z = init.position.z;

    Effect_Add(globalCtx, &sp24, EFFECT_SHIELD_PARTICLE, 0, 1, &init);
}

void CollisionCheck_ShieldParticlesMetal(GlobalContext* globalCtx, Vec3f* v) {
    CollisionCheck_ShieldParticles(globalCtx, v);
    Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_REFLECT_SW, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void CollisionCheck_ShieldParticlesMetalSound(GlobalContext* globalCtx, Vec3f* v, Vec3f* arg2) {
    CollisionCheck_ShieldParticles(globalCtx, v);
    Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_REFLECT_SW, arg2, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void CollisionCheck_ShieldParticlesMetal2(GlobalContext* globalCtx, Vec3f* v) {
    CollisionCheck_ShieldParticlesMetal(globalCtx, v);
}

void CollisionCheck_ShieldParticlesWood(GlobalContext* globalCtx, Vec3f* v, Vec3f* arg2) {
    static EffectShieldParticleInit init = {
        16,
        { 0.0f, 0.0f, 0.0f },
        { 0x00, 0xC8, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0x80, 0xFF },
        { 0xFF, 0xFF, 0x00, 0xFF },
        { 0xFF, 0x40, 0x00, 0xC8 },
        { 0xFF, 0x00, 0x00, 0xFF },
        2.1f,
        35.0f,
        30.0f,
        8,
        { 0, 0, 0, 0x00, 0x80, 0xFF, 0x00, 300 },
        0,
    };
    s32 sp24;

    init.position.x = (s32)v->x;
    init.position.y = (s32)v->y;
    init.position.z = (s32)v->z;
    init.lightPoint.x = init.position.x;
    init.lightPoint.y = init.position.y;
    init.lightPoint.z = init.position.z;

    Effect_Add(globalCtx, &sp24, EFFECT_SHIELD_PARTICLE, 0, 1, &init);
    Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, arg2, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

#define SQXZ(vec) (SQ(vec.x) + SQ(vec.z))
#define DOTXZ(vec1, vec2) ((vec1.x) * (vec2.x) + (vec1.z) * (vec2.z))

#ifdef NON_EQUIVALENT
/* 
    Determines if the line segment connecting itemPos and itemProjPos intersects
    a cylinder with the given radius, height, and offset at actorPos. Returns 3
    if either endpoint is in the cylinder, otherwise returns the number of points
    of intersection with the side of the cylinder. The locations of those points
    are put in out1 and out2.
*/
s32 CollisionCheck_CylSideVsLineSeg(f32 radius, f32 height, f32 offset, Vec3f* actorPos, Vec3f* itemPos,
                  Vec3f* itemProjPos, Vec3f* out1, Vec3f* out2) {
    Vec3f actorToItem;
    Vec3f actorToItemProj;
    Vec3f itemStep;
    f32 sp50;
    f32 sp4C;
    u32 phi_v0;
    u32 phi_v1;
    u32 phi_a1;
    u32 phi_a2;
    f32 sp38;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f0_2;

    actorToItem.x = itemPos->x - actorPos->x;
    actorToItem.y = itemPos->y - actorPos->y - offset;
    actorToItem.z = itemPos->z - actorPos->z;

    actorToItemProj.x = itemProjPos->x - actorPos->x;
    actorToItemProj.y = itemProjPos->y - actorPos->y - offset;
    actorToItemProj.z = itemProjPos->z - actorPos->z;

    itemStep.x = actorToItemProj.x - actorToItem.x;
    itemStep.y = actorToItemProj.y - actorToItem.y;
    itemStep.z = actorToItemProj.z - actorToItem.z;

    if ((actorToItem.y > 0.0f) && (actorToItem.y < height) && (sqrtf(SQ(actorToItem.x) + SQ(actorToItem.z)) < radius)) {
        return 3;
    }
    if ((actorToItemProj.y > 0.0f) && (actorToItemProj.y < height) && (sqrtf(SQ(actorToItemProj.x) + SQ(actorToItemProj.z)) < radius)){
        return 3;
    }

    sp38 = SQXZ(actorToItem) - SQ(radius);
    temp_f2 = SQXZ(itemStep);
    if (!IS_ZERO(temp_f2)) {
        temp_f14 = DOTXZ(2.0f * itemStep, actorToItem);
        temp_f0 = SQ(temp_f14);
        temp_f12 = (4.0f * temp_f2) * sp38;
        if (temp_f0 < temp_f12) {
            return 0;
        }
        temp_f0_2 = sqrtf(temp_f0 - temp_f12);
        if(temp_f0 - temp_f12 > 0.0f) {
            phi_v1 = 1;
            phi_v0 = 1;
        } else {
            phi_v1 = 1;
            phi_v0 = 0;
        }
        sp50 = (temp_f0_2 - temp_f14) / (2.0f * temp_f2);
        if (phi_v0 == 1) {
            sp4C = (-temp_f14 - temp_f0_2) / (2.0f * temp_f2);
        }

    } else if (!IS_ZERO(DOTXZ(2.0f * itemStep, actorToItem))) {
        phi_v1 = 1;
        phi_v0 = 0;
        sp50 = -sp38 / DOTXZ(2.0f * itemStep, actorToItem);
    } else {
        if (sp38 <= 0.0f) {
            phi_a1 = (0.0f < actorToItem.y) && (actorToItem.y < height);
            phi_a2 = (0.0f < actorToItemProj.y) && (actorToItemProj.y < height);

            if (phi_a1 && phi_a2) {
                *out1 = actorToItem;
                *out2 = actorToItemProj;
                return 2;
            }
            if (phi_a1) {
                *out1 = actorToItem;
                return 1;
            }
            if (phi_a2) {
                *out1 = actorToItemProj;
                return 1;
            }
        }
        return 0;
    }
    if (phi_v0 == 0) {
        if (sp50 < 0.0f || 1.0f < sp50) {
            return 0;
        }
    } else {
        phi_a1 = (sp50 < 0.0f || 1.0f < sp50);
        phi_a2 = (sp4C < 0.0f || 1.0f < sp4C);
        
        if (phi_a1 && phi_a2) {
            return 0;
        }
        if (phi_a1) {
            phi_v1 = 0;
        }
        if (phi_a2) {
            phi_v0 = 0;
        }
    }
    if ((phi_v1 == 1) && ((sp50 * itemStep.y + actorToItem.y < 0.0f) || (height < sp50 * itemStep.y + actorToItem.y))) {
        phi_v1 = 0;
    }
    if ((phi_v0 == 1) && ((sp4C * itemStep.y + actorToItem.y < 0.0f) || (height < sp4C * itemStep.y + actorToItem.y))) {
        phi_v0 = 0;
    }
    if (phi_v1 == 0 && phi_v0 == 0) {
        return 0;
    } else if ((phi_v1 == 1) && (phi_v0 == 1)) {
        out1->x = sp50 * itemStep.x + actorToItem.x + actorPos->x;
        out1->y = sp50 * itemStep.y + actorToItem.y + actorPos->y;
        out1->z = sp50 * itemStep.z + actorToItem.z + actorPos->z;
        out2->x = sp4C * itemStep.x + actorToItem.x + actorPos->x;
        out2->y = sp4C * itemStep.y + actorToItem.y + actorPos->y;
        out2->z = sp4C * itemStep.z + actorToItem.z + actorPos->z;
        return 2;
    }
    if (phi_v1 == 1) {
        out1->x = sp50 * itemStep.x + actorToItem.x + actorPos->x;
        out1->y = sp50 * itemStep.y + actorToItem.y + actorPos->y;
        out1->z = sp50 * itemStep.z + actorToItem.z + actorPos->z;
        return 1;
    }
    if (phi_v0 == 1) {
        out1->x = sp4C * itemStep.x + actorToItem.x + actorPos->x;
        out1->y = sp4C * itemStep.y + actorToItem.y + actorPos->y;
        out1->z = sp4C * itemStep.z + actorToItem.z + actorPos->z;
        return 1;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/CollisionCheck_CylSideVsLineSeg.s")
#endif

s32 CollisionCheck_GetSwordDamage(s32 flags) {
    s32 damage;

    damage = 0;
    if (flags & 0x00400100) {
        damage = 1;
    } else if (flags & 0x03000242) {
        damage = 2;
    } else if (flags & 0x48800400) {
        damage = 4;
    } else if (flags & 0x04000000) {
        damage = 8;
    }

    KREG(7) = damage;
    return damage;
}
