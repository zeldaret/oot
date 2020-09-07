#include <ultra64.h>
#include <global.h>
#include <vt.h>

void func_8005B2AC(GraphicsContext* gfx, Vec3f* vA, Vec3f* vB, Vec3f* vC, u8 r, u8 g, u8 b);

// draw red poly
void func_8005B280(GraphicsContext* gfx, Vec3f* vA, Vec3f* vB, Vec3f* vC) {
    func_8005B2AC(gfx, vA, vB, vC, 255, 0, 0);
}

// draw poly
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B2AC.s")

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
    body->bumper.unk_06.z = 0;
    body->bumperFlags &= ~0x2;
    body->bumperFlags &= ~0x80;
    body->acHit = NULL;
    body->acHitItem = NULL;
    body->bumper.unk_06.y = body->bumper.unk_06.z;
    body->bumper.unk_06.x = body->bumper.unk_06.z;
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
    float nx, ny, nz, nd;

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
void func_8005CEDC(ColliderQuadDim* dim) {
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
    func_8005CEDC(dest);
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

s32 func_8005D334(UNK_TYPE arg0, OcLine* arg1, Vec3f* arg2, Vec3f* arg3) {
    Math_Vec3f_Copy(&arg1->line.a, arg2);
    Math_Vec3f_Copy(&arg1->line.b, arg3);
    return 1;
}

s32 func_8005D378(UNK_TYPE arg0, OcLine* arg1, OcLine* arg2) {
    arg1->unk_18 = arg2->unk_18;
    func_8005D334(arg0, arg1, &arg2->line.a, &arg2->line.b);
    return 1;
}

s32 func_8005D3A4(GlobalContext* globalCtx, OcLine* line) {
    line->unk_18 &= 0xFFFE;
    return 1;
}

void func_8005D3BC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
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
void func_8005D4DC(GlobalContext* globalCtx, Collider* collider) {
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
                func_8005B280(globalCtx->state.gfxCtx, &trisItem->dim.vtx[0], &trisItem->dim.vtx[1],
                              &trisItem->dim.vtx[2]);
            }
            break;
        case COLSHAPE_QUAD:
            quad = (ColliderQuad*)collider;
            func_8005B280(globalCtx->state.gfxCtx, &quad->dim.quad[2], &quad->dim.quad[3], &quad->dim.quad[1]);
            func_8005B280(globalCtx->state.gfxCtx, &quad->dim.quad[1], &quad->dim.quad[0], &quad->dim.quad[2]);
            break;
    }
}

void CollisionCheck_Draw(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider* collider;
    s32 i;

    if (AREG(15)) {
        if (AREG(21)) {
            for (i = 0; i < colChkCtx->colAtCount; i++) {
                func_8005D4DC(globalCtx, colChkCtx->colAt[i]);
            }
        }
        if (AREG(22)) {
            for (i = 0; i < colChkCtx->colAcCount; i++) {
                func_8005D4DC(globalCtx, colChkCtx->colAc[i]);
            }
        }
        if (AREG(23)) {
            for (i = 0; i < colChkCtx->colOcCount; i++) {
                collider = colChkCtx->colOc[i];
                if (collider->maskA & 1) {
                    func_8005D4DC(globalCtx, collider);
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
    if (!(collider->shape < COLSHAPE_INVALID)) {
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

    if (!(collider->shape < COLSHAPE_INVALID)) {
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
    if (!(collider->shape < COLSHAPE_INVALID)) {
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

    if (!(collider->shape < COLSHAPE_INVALID)) {
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
    if (!(collider->shape < COLSHAPE_INVALID)) {
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
    if (!(collider->shape < COLSHAPE_INVALID)) {
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

s32 func_8005DF2C(ColliderBody* body) {
    if (!(body->toucherFlags & 1)) {
        return 1;
    }
    return 0;
}

s32 func_8005DF50(ColliderBody* body) {
    if (!(body->bumperFlags & 1)) {
        return 1;
    }
    return 0;
}

s32 func_8005DF74(ColliderBody* left, ColliderBody* right) {
    if (!(left->toucher.flags & right->bumper.flags)) {
        return 1;
    }
    return 0;
}

void func_8005DF9C(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
}

#ifdef NON_MATCHING
// Blue EffectSpark
// .bss problems
void func_8005DFAC(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
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
#else
void func_8005DFAC(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DFAC.s")
#endif

#ifdef NON_MATCHING
// Green EffectSpark
// .bss problems
void func_8005E10C(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
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
#else
void func_8005E10C(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E10C.s")
#endif

void func_8005E26C(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    func_800299AC(globalCtx, v);
    func_80062B80(globalCtx, v);
}

void func_8005E2A4(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    func_80062A28(globalCtx, v);
}

void func_8005E2C8(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    func_80062A28(globalCtx, v);
}

void func_8005E2EC(GlobalContext* globalCtx, ColliderBody* colliderBody, Collider* collider, Vec3f* arg3) {
    s32 flags;

    flags = colliderBody->toucherFlags & 0x18;
    if (flags == 0 && collider->type != COLTYPE_METAL_SHIELD) {
        func_80029CA4(globalCtx, 0, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        return;
    }
    if (flags == 0) {
        func_80029CA4(globalCtx, 3, arg3);
        if (collider->actor == NULL) {
            func_80062D60(globalCtx, arg3);
            return;
        }
        func_80062DAC(globalCtx, arg3, &collider->actor->projectedPos);
        return;
    }
    if (flags == 8) {
        func_80029CA4(globalCtx, 0, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        return;
    }
    if (flags == 0x10) {
        func_80029CA4(globalCtx, 1, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &collider->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        return;
    }
}

s32 func_8005E4F8(Collider* left, ColliderBody* rightBody) {
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
    u8 unk00;
    u8 unk01;
} D_8011DF40_s;

void func_8005E604(GlobalContext* globalCtx, Collider* left, ColliderBody* leftBody, Collider* right,
                   ColliderBody* rightBody, Vec3f* arg5) {

    static void (*D_8011DF28[])(GlobalContext*, Collider*, Vec3f*) = {
        func_8005DF9C, func_8005DFAC, func_8005E10C, func_8005E26C, func_8005E2A4, func_8005E2C8,
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
        (*D_8011DF28[D_8011DF40[right->type].unk00])(globalCtx, right, arg5);
    }
    if (right->actor != NULL) {
        if (D_8011DF40[right->type].unk01 == 3) {
            func_8005E2EC(globalCtx, leftBody, right, arg5);
        } else if (D_8011DF40[right->type].unk01 == 4) {
            if (left->actor == NULL) {
                func_80062CD4(globalCtx, arg5);
                Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else {
                func_80062E14(globalCtx, arg5, &left->actor->projectedPos);
            }
        } else if (D_8011DF40[right->type].unk01 != 5) {
            func_80029CA4(globalCtx, D_8011DF40[right->type].unk01, arg5);
            if ((rightBody->bumperFlags & 0x20) == 0) {
                func_8005E4F8(left, rightBody);
            }
        }
    } else {
        func_80029CA4(globalCtx, 0, arg5);
        if (right->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &right->actor->projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }
}

void func_8005E800(Collider* left, Collider* right) {
    left->atFlags |= 4;
    right->acFlags |= 0x80;
}

// Set AT to AC collision
s32 func_8005E81C(GlobalContext* globalCtx, Collider* left, ColliderBody* leftBody, Vec3f* leftv, Collider* right,
                  ColliderBody* rightBody, Vec3f* rightv, Vec3f* arg7) {

    if (right->acFlags & 4 && left->actor != NULL && right->actor != NULL) {
        func_8005E800(left, right);
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
    rightBody->bumper.unk_06.x = (s16)arg7->x;
    rightBody->bumper.unk_06.y = (s16)arg7->y;
    rightBody->bumper.unk_06.z = (s16)arg7->z;
    if (!(leftBody->toucherFlags & 0x20) && right->type != COLTYPE_METAL_SHIELD &&
        right->type != COLTYPE_WOODEN_SHIELD && right->type != COLTYPE_UNK12) {
        rightBody->bumperFlags |= 0x80;
    } else {
        func_8005E604(globalCtx, left, leftBody, right, rightBody, arg7);
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
        if (func_8005DF2C(&lItem->body) == 1) {
            continue;
        }
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (func_8005DF50(&rItem->body) == 1) {
                continue;
            }
            if (func_8005DF74(&lItem->body, &rItem->body) == 1) {
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
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp6C, &right->base, &rItem->body, &sp60, &sp78);
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
    if (func_8005DF50(&right->body) == 1) {
        return;
    }
    for (lItem = left->list; lItem < left->list + left->count; lItem++) {
        if (func_8005DF2C(&lItem->body) == 1) {
            continue;
        }
        if (func_8005DF74(&lItem->body, &right->body) == 1) {
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
            func_8005E81C(globalCtx, &left->base, &lItem->body, &sp64, &right->base, &right->body, &sp58, &sp70);
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
    if (func_8005DF2C(&left->body) == 1) {
        return;
    }
    for (rItem = right->list; rItem < right->list + right->count; rItem++) {
        if (func_8005DF50(&rItem->body) == 1) {
            continue;
        }
        if (func_8005DF74(&left->body, &rItem->body) == 1) {
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
            func_8005E81C(globalCtx, &left->base, &left->body, &sp7C, &right->base, &rItem->body, &sp70, &sp88);
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
        if (func_8005DF2C(&lItem->body) == 1) {
            continue;
        }
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (func_8005DF50(&rItem->body) == 1) {
                continue;
            }
            if (func_8005DF74(&lItem->body, &rItem->body) == 1) {
                continue;
            }
            if (Math3D_TriVsSphIntersect(&lItem->dim.worldSphere, &rItem->dim, &sp6C) == 1) {
                sp60.x = lItem->dim.worldSphere.center.x;
                sp60.y = lItem->dim.worldSphere.center.y;
                sp60.z = lItem->dim.worldSphere.center.z;
                sp54.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                sp54.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                sp54.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp60, &right->base, &rItem->body, &sp54, &sp6C);
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
                if (func_8005DF50(&rItem->body) == 1) {
                    continue;
                }
                for (lItem = left->list; lItem < left->list + left->count; lItem++) {
                    if (func_8005DF2C(&lItem->body) == 1) {
                        continue;
                    }
                    if (func_8005DF74(&lItem->body, &rItem->body) == 1) {
                        continue;
                    }
                    if (Math3D_TriVsSphIntersect(&rItem->dim.worldSphere, &lItem->dim, &sp7C) == 1) {
                        Math_Vec3s_ToVec3f(&sp64, &rItem->dim.worldSphere.center);
                        sp70.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                        sp70.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                        sp70.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                        func_8005E81C(globalCtx, &left->base, &lItem->body, &sp70, &right->base, &rItem->body, &sp64,
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

extern TriNorm D_8015E230;
extern TriNorm D_8015E268;

void CollisionCheck_AC_JntSphVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                    Collider* r) {
    ColliderJntSph* left = (ColliderJntSph*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    Vec3f sp7C;
    ColliderJntSphItem* lItem;
    Vec3f sp6C;
    Vec3f sp60;

    if (left->count > 0 && left->list != NULL) {
        if (func_8005DF50(&right->body) == 1) {
            return;
        }
        Math3D_TriNorm(&D_8015E230, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
        Math3D_TriNorm(&D_8015E268, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (func_8005DF2C(&lItem->body) == 1) {
                continue;
            }
            if (func_8005DF74(&lItem->body, &right->body) == 1) {
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
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp6C, &right->base, &right->body, &sp60, &sp7C);
                return;
            }
        }
    }
}

extern TriNorm D_8015E2A0;
extern TriNorm D_8015E2D8;

void CollisionCheck_AC_QuadVsJntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                    Collider* r) {
    ColliderJntSph* right = (ColliderJntSph*)r;
    Vec3f sp88;
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderJntSphItem* rItem;
    Vec3f sp74;
    Vec3f sp68;

    if (right->count > 0 && right->list != NULL) {
        if (func_8005DF2C(&left->body) != 1) {
            Math3D_TriNorm(&D_8015E2A0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
            Math3D_TriNorm(&D_8015E2D8, &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (func_8005DF50(&rItem->body) == 1) {
                    continue;
                }
                if (func_8005DF74(&left->body, &rItem->body) == 1) {
                    continue;
                }
                if (Math3D_TriVsSphIntersect(&rItem->dim.worldSphere, &D_8015E2A0, &sp88) != 1 &&
                    Math3D_TriVsSphIntersect(&rItem->dim.worldSphere, &D_8015E2D8, &sp88) != 1) {
                    continue;
                }
                if (func_8005D218(globalCtx, left, &sp88) != 0) {
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
                    func_8005E81C(globalCtx, &left->base, &left->body, &sp74, &right->base, &rItem->body, &sp68, &sp88);
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
    if (func_8005DF50(&right->body) == 1) {
        return;
    }
    if (func_8005DF2C(&left->body) == 1) {
        return;
    }
    if (func_8005DF74(&left->body, &right->body) == 1) {
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
        func_8005E81C(globalCtx, &left->base, &left->body, &sp50, &right->base, &right->body, &sp44, &sp5C);
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
        if (func_8005DF2C(&left->body) == 1) {
            return;
        }
        for (rItem = right->list; rItem < right->list + right->count; rItem++) {
            if (func_8005DF50(&rItem->body) == 1) {
                continue;
            }
            if (func_8005DF74(&left->body, &rItem->body) == 1) {
                continue;
            }
            if (Math3D_CylTriVsIntersect(&left->dim, &rItem->dim, &sp68) == 1) {
                Math_Vec3s_ToVec3f(&sp5C, &left->dim.pos);

                sp50.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                sp50.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                sp50.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                func_8005E81C(globalCtx, &left->base, &left->body, &sp5C, &right->base, &rItem->body, &sp50, &sp68);
                return;
            }
        }
    }
}

extern Vec3f D_8015E310;

void CollisionCheck_AC_TrisVsCyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l, Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    ColliderTrisItem* lItem;
    Vec3f sp60;
    Vec3f sp54;

    if (right->dim.radius > 0 && right->dim.height > 0 && left->count > 0 && left->list != NULL) {
        if (func_8005DF50(&right->body) == 1) {
            return;
        }
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (func_8005DF2C(&lItem->body) == 1) {
                continue;
            }
            if (func_8005DF74(&lItem->body, &right->body) == 1) {
                continue;
            }

            if (Math3D_CylTriVsIntersect(&right->dim, &lItem->dim, &D_8015E310) == 1) {
                sp60.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                sp60.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                sp60.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                Math_Vec3s_ToVec3f(&sp54, &right->dim.pos);
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp60, &right->base, &right->body, &sp54,
                              &D_8015E310);
                return;
            }
        }
    }
}

extern TriNorm D_8015E320;
extern TriNorm D_8015E358;
extern Vec3f D_8015E390;

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
    if (func_8005DF2C(&left->body) == 1 || func_8005DF50(&right->body) == 1) {
        return;
    }
    if (func_8005DF74(&left->body, &right->body) == 1) {
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
        func_8005E81C(globalCtx, &left->base, &left->body, &sp64, &right->base, &right->body, &sp58, &D_8015E390);
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
        func_8005E81C(globalCtx, &left->base, &left->body, &sp4C, &right->base, &right->body, &sp40, &D_8015E390);
    }
}

extern TriNorm D_8015E3A0;
extern TriNorm D_8015E3D8;
extern Vec3f D_8015E410;

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
    if (func_8005DF50(&right->body) == 1 || func_8005DF2C(&left->body) == 1) {
        return;
    }
    if (func_8005DF74(&left->body, &right->body) == 1) {
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
            func_8005E81C(globalCtx, &left->base, &left->body, &sp64, &right->base, &right->body, &sp58, &D_8015E410);
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
            func_8005E81C(globalCtx, &left->base, &left->body, &sp4C, &right->base, &right->body, &sp40, &D_8015E410);
        }
    }
}

extern Vec3f D_8015E420;

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
            if (func_8005DF50(&rItem->body) == 1) {
                continue;
            }
            for (lItem = left->list; lItem < left->list + left->count; lItem++) {
                if (func_8005DF2C(&lItem->body) == 1) {
                    continue;
                }
                if (func_8005DF74(&lItem->body, &rItem->body) == 1) {
                    continue;
                }
                if (Math3D_TriVsTriIntersect(&lItem->dim, &rItem->dim, &D_8015E420) == 1) {
                    sp5C.x = (lItem->dim.vtx[0].x + lItem->dim.vtx[1].x + lItem->dim.vtx[2].x) * (1.0f / 3);
                    sp5C.y = (lItem->dim.vtx[0].y + lItem->dim.vtx[1].y + lItem->dim.vtx[2].y) * (1.0f / 3);
                    sp5C.z = (lItem->dim.vtx[0].z + lItem->dim.vtx[1].z + lItem->dim.vtx[2].z) * (1.0f / 3);
                    sp50.x = (rItem->dim.vtx[0].x + rItem->dim.vtx[1].x + rItem->dim.vtx[2].x) * (1.0f / 3);
                    sp50.y = (rItem->dim.vtx[0].y + rItem->dim.vtx[1].y + rItem->dim.vtx[2].y) * (1.0f / 3);
                    sp50.z = (rItem->dim.vtx[0].z + rItem->dim.vtx[1].z + rItem->dim.vtx[2].z) * (1.0f / 3);
                    func_8005E81C(globalCtx, &left->base, &lItem->body, &sp5C, &right->base, &rItem->body, &sp50,
                                  &D_8015E420);
                    return;
                }
            }
        }
    }
}

extern Vec3f D_8015E430;
extern TriNorm D_8015E440;
extern TriNorm D_8015E478;

void CollisionCheck_AC_TrisVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    ColliderTrisItem* lItem;
    Vec3f sp68;
    Vec3f sp5C;

    if (left->count > 0 && left->list != NULL) {
        if (func_8005DF50(&right->body) != 1) {
            Math3D_TriNorm(&D_8015E440, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
            Math3D_TriNorm(&D_8015E478, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
            for (lItem = left->list; lItem < left->list + left->count; lItem++) {
                if (func_8005DF2C(&lItem->body) == 1) {
                    continue;
                }
                if (func_8005DF74(&lItem->body, &right->body) == 1) {
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
                    func_8005E81C(globalCtx, &left->base, &lItem->body, &sp68, &right->base, &right->body, &sp5C,
                                  &D_8015E430);
                    return;
                }
            }
        }
    }
}

extern Vec3f D_8015E4B0;
extern TriNorm D_8015E4C0;
extern TriNorm D_8015E4F8;

void CollisionCheck_AC_QuadVsTris(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderTris* right = (ColliderTris*)r;
    ColliderTrisItem* rItem;
    Vec3f sp68;
    Vec3f sp5C;

    if (right->count > 0 && right->list != NULL) {
        if (func_8005DF2C(&left->body) != 1) {
            Math3D_TriNorm(&D_8015E4C0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
            Math3D_TriNorm(&D_8015E4F8, &left->dim.quad[1], &left->dim.quad[0], &left->dim.quad[2]);
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (func_8005DF50(&rItem->body) == 1) {
                    continue;
                }
                if (func_8005DF74(&left->body, &rItem->body) == 1) {
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
                        func_8005E81C(globalCtx, &left->base, &left->body, &sp68, &right->base, &rItem->body, &sp5C,
                                      &D_8015E4B0);
                        return;
                    }
                }
            }
        }
    }
}

extern TriNorm D_8015E530[2];
extern Vec3f D_8015E598;
extern TriNorm D_8015E5A8[2];

void CollisionCheck_AC_QuadVsQuad(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* l,
                                  Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    s32 i;
    s32 j;
    Vec3f sp6C;
    Vec3f sp60;

    if (func_8005DF2C(&left->body) == 1) {
        return;
    }
    if (func_8005DF50(&right->body) == 1) {
        return;
    }
    if (func_8005DF74(&left->body, &right->body) == 1) {
        return;
    }
    Math3D_TriNorm(&D_8015E5A8[0], &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
    Math3D_TriNorm(&D_8015E5A8[1], &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
    Math3D_TriNorm(&D_8015E530[0], &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
    Math3D_TriNorm(&D_8015E530[1], &right->dim.quad[2], &right->dim.quad[1], &right->dim.quad[0]);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            if (Math3D_TriVsTriIntersect(&D_8015E5A8[j], &D_8015E530[i], &D_8015E598) == 1) {
                if (func_8005D218(globalCtx, left, &D_8015E598) != 0) {
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
                    func_8005E81C(globalCtx, &left->base, &left->body, &sp6C, &right->base, &right->body, &sp60,
                                  &D_8015E598);
                    return;
                }
            }
        }
    }
}

// D_8011DF5C ColliderJntSph
void func_80060EBC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderJntSph* col = (ColliderJntSph*)collider;
    ColliderJntSphItem* item;
    Vec3f sp24;

    for (item = col->list; item < col->list + col->count; item++) {
        if (item->body.bumperFlags & 0x80) {
            if (item->body.acHitItem != NULL) {
                if (!(item->body.acHitItem->toucherFlags & 0x40)) {
                    Math_Vec3s_ToVec3f(&sp24, &item->body.bumper.unk_06);
                    func_8005E604(globalCtx, item->body.acHit, item->body.acHitItem, &col->base, &item->body, &sp24);
                    item->body.acHitItem->toucherFlags |= 0x40;
                    return;
                }
            }
        }
    }
}

// D_8011DF5C ColliderCylinder
void func_80060F94(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderCylinder* item = (ColliderCylinder*)collider;
    Vec3f sp28;

    if (item->body.bumperFlags & 0x80) {
        if (item->body.acHitItem != NULL) {
            if (!(item->body.acHitItem->toucherFlags & 0x40)) {
                Math_Vec3s_ToVec3f(&sp28, &item->body.bumper.unk_06);
                func_8005E604(globalCtx, item->body.acHit, item->body.acHitItem, &item->base, &item->body, &sp28);
                item->body.acHitItem->toucherFlags |= 0x40;
            }
        }
    }
}

// D_8011DF5C ColliderTris
void func_80061028(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderTris* col = (ColliderTris*)collider;
    ColliderTrisItem* item;
    Vec3f sp24;

    for (item = col->list; item < col->list + col->count; item++) {
        if (item->body.bumperFlags & 0x80) {
            if (item->body.acHitItem != NULL) {
                if (!(item->body.acHitItem->toucherFlags & 0x40)) {
                    Math_Vec3s_ToVec3f(&sp24, &item->body.bumper.unk_06);
                    func_8005E604(globalCtx, item->body.acHit, item->body.acHitItem, &col->base, &item->body, &sp24);
                    item->body.acHitItem->toucherFlags |= 0x40;
                    return;
                }
            }
        }
    }
}

// D_8011DF5C ColliderQuad
void func_8006110C(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderQuad* item = (ColliderQuad*)collider;
    Vec3f sp28;

    if (item->body.bumperFlags & 0x80) {
        if (item->body.acHitItem != NULL) {
            if (!(item->body.acHitItem->toucherFlags & 0x40)) {
                Math_Vec3s_ToVec3f(&sp28, &item->body.bumper.unk_06);
                func_8005E604(globalCtx, item->body.acHit, item->body.acHitItem, &item->base, &item->body, &sp28);
                item->body.acHitItem->toucherFlags |= 0x40;
            }
        }
    }
}

void func_800611A0(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider** col;
    Collider* temp;

    static void (*D_8011DF5C[4])(GlobalContext*, CollisionCheckContext*, Collider*) = {
        func_80060EBC,
        func_80060F94,
        func_80061028,
        func_8006110C,
    };

    for (col = colChkCtx->colAc; col < colChkCtx->colAc + colChkCtx->colAcCount; col++) {
        temp = *col;
        if (temp != NULL) {
            if (temp->acFlags & 1) {
                if (temp->actor == NULL || temp->actor->update != NULL) {
                    (*D_8011DF5C[temp->shape])(globalCtx, colChkCtx, temp);
                }
            }
        }
    }
}

void CollisionCheck_AC(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    Collider** col;
    Collider* temp;

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
        temp = *col;
        if (temp == NULL) {
            continue;
        } else if (!(temp->acFlags & 1)) {
            continue;
        } else if (temp->actor != NULL && temp->actor->update == NULL) {
            continue;
        } else if (!((temp->acFlags & collider->atFlags) & 0x38)) {
            continue;
        } else if (collider == temp) {
            continue;
        }

        else if ((collider->atFlags & 0x40) || collider->actor == NULL || temp->actor != collider->actor) {
            D_8011DF6C[collider->shape][temp->shape](globalCtx, colChkCtx, collider, temp);
        }
    }
}

// Test Attack Collisions
void func_8006139C(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider** colAt;
    Collider* colliderAt;

    if (colChkCtx->colAtCount != 0) {
        if (colChkCtx->colAcCount != 0) {
            for (colAt = colChkCtx->colAt; colAt < colChkCtx->colAt + colChkCtx->colAtCount; colAt++) {
                colliderAt = *colAt;
                if (colliderAt != NULL) {
                    if (colliderAt->atFlags & 1) {
                        if ((colliderAt->actor == NULL) || (colliderAt->actor->update != NULL)) {
                            CollisionCheck_AC(globalCtx, colChkCtx, colliderAt);
                        }
                    }
                }
            }
            func_800611A0(globalCtx, colChkCtx);
        }
    }
}

// Get mass type
s32 func_8006146C(u8 mass) {
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
    if ((right->maskB & 8) != 0) {
        left->maskB |= 1;
    }
    right->oc = leftActor;
    right->maskA |= 2;
    rightBody->ocFlags |= 2;
    if ((left->maskB & 8) != 0) {
        right->maskB |= 1;
    }
    if (leftActor == NULL || rightActor == NULL || (left->maskA & 4) || (right->maskA & 4)) {
        return;
    }
    leftMassType = func_8006146C(leftActor->colChkInfo.mass);
    rightMassType = func_8006146C(rightActor->colChkInfo.mass);
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

    if (left->count > 0 && left->list != NULL) {
        if (!(right->base.maskA & 1)) {
            return;
        }
        if (!(right->body.ocFlags & 1)) {
            return;
        }
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

    if (!(left->base.maskA & 1) || !(right->base.maskA & 1)) {
        return;
    }
    if (!(left->body.ocFlags & 1) || !(right->body.ocFlags & 1)) {
        return;
    }
    if (Math3D_CylOutsideCyl(&left->dim, &right->dim, &sp4C) == 1) {
        Math_Vec3s_ToVec3f(&sp40, &left->dim.pos);
        Math_Vec3s_ToVec3f(&sp34, &right->dim.pos);
        func_800614A4(&left->base, &left->body, &sp40, &right->base, &right->body, &sp34, sp4C);
    }
}

// CollisionCheck_OC test ?
s32 func_80061BF4(Collider* collider) {
    if (!(collider->maskA & 1)) {
        return 1;
    }
    return 0;
}

// CollisionCheck_OC test ?
s32 func_80061C18(Collider* arg0, Collider* arg1) {
    if (!((arg0->maskA & arg1->maskB) & 0x38) || !((arg0->maskB & arg1->maskA) & 0x38) ||
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
        if (*phi_s2 == NULL || func_80061BF4(*phi_s2) == 1) {
            continue;
        }
        for (phi_s0 = phi_s2 + 1; phi_s0 < colChkCtx->colOc + colChkCtx->colOcCount; phi_s0++) {
            if (*phi_s0 == NULL || func_80061BF4(*phi_s0) == 1 || func_80061C18(*phi_s2, *phi_s0) == 1) {
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
void func_80061E48(CollisionCheckInfo* info) {
    static CollisionCheckInfo init = { NULL, { 0, 0, 0 }, 10, 10, 0, 50, 8, 0, 0, 0, 0 };
    *info = init;
}

void func_80061E8C(CollisionCheckInfo* info) {
    info->damage = 0;
    info->damageEffect = 0;
    info->atHitEffect = 0;
    info->acHitEffect = 0;
    info->displacement.z = 0.0f;
    info->displacement.y = 0.0f;
    info->displacement.x = 0.0f;
}

void func_80061EB0(CollisionCheckInfo* info, CollisionCheckInfoInit* init) {
    info->health = init->health;
    info->unk_10 = init->unk_02;
    info->unk_12 = init->unk_04;
    info->mass = init->mass;
}

void func_80061ED4(CollisionCheckInfo* info, DamageTable* damageTable, CollisionCheckInfoInit* init) {
    info->health = init->health;
    info->damageTable = damageTable;
    info->unk_10 = init->unk_02;
    info->unk_12 = init->unk_04;
    info->mass = init->mass;
}

void func_80061EFC(CollisionCheckInfo* info, DamageTable* damageTable, CollisionCheckInfoInit2* init) {
    info->health = init->health;
    info->damageTable = damageTable;
    info->unk_10 = init->unk_02;
    info->unk_12 = init->unk_04;
    info->unk_14 = init->unk_06;
    info->mass = init->mass;
}

void func_80061F2C(CollisionCheckInfo* info, s32 index, CollisionCheckInfoInit2* init) {
    func_80061EFC(info, DamageTable_Get(index), init);
}

// Apply AC damage effect
void func_80061F64(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider, ColliderBody* body) {
    DamageTable* tbl;
    u32 flags;
    s32 i;
    f32 damage;
    int tblLookup;

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
void func_8006216C(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderJntSph* jntSph = (ColliderJntSph*)collider;
    s32 i;

    if (!(jntSph->count > 0) || jntSph->list == NULL) {
        return;
    }
    for (i = 0; i < jntSph->count; i++) {
        func_80061F64(globalCtx, colChkCtx, &jntSph->base, &jntSph->list[i].body);
    }
}

// Apply ColliderCylinder AC damage effect
void func_80062210(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderCylinder* cylinder = (ColliderCylinder*)collider;
    func_80061F64(globalCtx, colChkCtx, &cylinder->base, &cylinder->body);
}

// Apply ColliderTris AC damage effect
void func_80062230(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderTris* tris = (ColliderTris*)collider;
    s32 i;

    for (i = 0; i < tris->count; i++) {
        func_80061F64(globalCtx, colChkCtx, collider, &tris->list[i].body);
    }
}

// Apply ColliderQuad AC damage effect
void func_800622C4(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Collider* collider) {
    ColliderQuad* quad = (ColliderQuad*)collider;
    func_80061F64(globalCtx, colChkCtx, &quad->base, &quad->body);
}

// Apply all AC damage effects
void func_800622E4(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx) {
    Collider* collider;
    s32 i;

    static void (*D_8011E008[4])(GlobalContext*, CollisionCheckContext*, Collider*) = {
        func_8006216C,
        func_80062210,
        func_80062230,
        func_800622C4,
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

extern Linef D_8015E610;

s32 CollisionCheck_generalLineOcCheck_JntSph(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx,
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

extern Vec3f D_8015E628;
extern Vec3f D_8015E638;

s32 CollisionCheck_generalLineOcCheck_Cyl(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx,
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
        CollisionCheck_generalLineOcCheck_JntSph,
        CollisionCheck_generalLineOcCheck_Cyl,
        NULL,
        NULL,
    };

    result = 0;
    for (c = colChkCtx->colOc; c < colChkCtx->colOc + colChkCtx->colOcCount; c++) {
        if (func_80061BF4(*c) == 1) {
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

s32 func_8006268C(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Vec3f* arg2, Vec3f* arg3) {
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
void func_80062718(ColliderCylinder* collider, Vec3s* pos) {
    collider->dim.pos.x = pos->x;
    collider->dim.pos.y = pos->y;
    collider->dim.pos.z = pos->z;
}

// Set ColliderQuad vertices
void func_80062734(ColliderQuad* collider, Vec3f* a, Vec3f* b, Vec3f* c, Vec3f* d) {
    Math_Vec3f_Copy(&collider->dim.quad[2], c);
    Math_Vec3f_Copy(&collider->dim.quad[3], d);
    Math_Vec3f_Copy(&collider->dim.quad[0], a);
    Math_Vec3f_Copy(&collider->dim.quad[1], b);
    func_8005CEDC(&collider->dim);
}

// Set ColliderTrisItem at index
void func_800627A0(ColliderTris* collider, s32 index, Vec3f* a, Vec3f* b, Vec3f* c) {
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
void func_8006285C(GlobalContext* globalCtx, ColliderTris* collider, s32 index, ColliderTrisItemDimInit* init) {
    ColliderTrisItem* item = &collider->list[index];
    Collider_SetTrisItemDim(globalCtx, &item->dim, init);
}

#ifdef NON_MATCHING
// Codegen OK, .bss section problems
void func_800628A4(s32 arg0, ColliderJntSph* collider) {
    s32 phi_s3;

    static Vec3f D_8015CF00;
    static Vec3f D_8015E648;

    for (phi_s3 = 0; phi_s3 < collider->count; phi_s3++) {
        if (arg0 == collider->list[phi_s3].dim.joint) {
            D_8015E648.x = collider->list[phi_s3].dim.modelSphere.center.x;
            D_8015E648.y = collider->list[phi_s3].dim.modelSphere.center.y;
            D_8015E648.z = collider->list[phi_s3].dim.modelSphere.center.z;
            Matrix_MultVec3f(&D_8015E648, &D_8015CF00);
            collider->list[phi_s3].dim.worldSphere.center.x = (s32)D_8015CF00.x;
            collider->list[phi_s3].dim.worldSphere.center.y = (s32)D_8015CF00.y;
            collider->list[phi_s3].dim.worldSphere.center.z = (s32)D_8015CF00.z;
            collider->list[phi_s3].dim.worldSphere.radius =
                (s32)((f32)collider->list[phi_s3].dim.modelSphere.radius * collider->list[phi_s3].dim.scale);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800628A4.s")
#endif

#ifdef NON_MATCHING
// Purple EffectSpark
// .bss section problems
void func_80062A28(GlobalContext* globalCtx, Vec3f* v) {
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062A28.s")
#endif

#ifdef NON_MATCHING
// White EffectSpark (Bubbles?)
// .bss section problems
void func_80062B80(GlobalContext* globalCtx, Vec3f* v) {
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062B80.s")
#endif

void func_80062CD4(GlobalContext* globalCtx, Vec3f* v) {
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

void func_80062D60(GlobalContext* globalCtx, Vec3f* v) {
    func_80062CD4(globalCtx, v);
    Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_REFLECT_SW, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_80062DAC(GlobalContext* globalCtx, Vec3f* v, Vec3f* arg2) {
    func_80062CD4(globalCtx, v);
    Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_REFLECT_SW, arg2, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_80062DF4(GlobalContext* globalCtx, Vec3f* v) {
    func_80062D60(globalCtx, v);
}

void func_80062E14(GlobalContext* globalCtx, Vec3f* v, Vec3f* arg2) {
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

#ifdef NON_EQUIVALENT
// Incomplete, possibly not using the same logic
s32 func_80062ECC(f32 actor_ac_98_10, f32 actor_ac_98_12, f32 arg2, Vec3f* ac_actor_pos, Vec3f* at_actor_pos,
                  Vec3f* arg5, Vec3f* arg6, Vec3f* arg7) {
    // arg5 = SP + 0xA8, unk input
    // arg6 = SP + 0x90, unk output
    // arg7 = SP + 0x84, unk output2
    // sp -0x78

    Vec3f delta_a3_a4_sp6C;
    Vec3f delta_a3_a5_sp60;
    Vec3f delta_a4_a5_sp54;
    f32 sp50;
    f32 sp4C;
    f32 temp_f0;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f14;
    f32 sp38;
    f32 temp_f16_2;
    f32 temp_f2;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_a0;
    s32 phi_a1;
    s32 phi_a2;

    delta_a3_a4_sp6C.x = at_actor_pos->x - ac_actor_pos->x;
    delta_a3_a4_sp6C.y = at_actor_pos->y - ac_actor_pos->y - arg2; // temp_f14
    delta_a3_a4_sp6C.z = at_actor_pos->z - ac_actor_pos->z;

    delta_a3_a5_sp60.x = arg5->x - ac_actor_pos->x;
    delta_a3_a5_sp60.y = arg5->y - ac_actor_pos->y - arg2; // temp_f6
    delta_a3_a5_sp60.z = arg5->z - ac_actor_pos->z;

    delta_a4_a5_sp54.x = delta_a3_a5_sp60.x - delta_a3_a4_sp6C.x; // temp_f16;
    delta_a4_a5_sp54.y = delta_a3_a5_sp60.y - delta_a3_a4_sp6C.y; // sp18; // temp_f8;
    delta_a4_a5_sp54.z = delta_a3_a5_sp60.z - delta_a3_a4_sp6C.z; // temp_f18;

    phi_v0 = 0;
    // ada12c:    bc1f    0xada138 ~>
    if (0.0f < delta_a3_a4_sp6C.y) {
        phi_v0 = 1;
    }
    // ada138:    beqzl   v0,0xada188 ~>
    if (phi_v0 && delta_a3_a4_sp6C.y < actor_ac_98_12) {
        if (sqrtf(SQ(delta_a3_a4_sp6C.x) + SQ(delta_a3_a4_sp6C.z)) < actor_ac_98_10) {
            return 3;
        }
    }

    phi_v1 = 0;
    if (0.0f < delta_a3_a5_sp60.y) { // ada19c:    bc1f    0xada1a8 ~>
        phi_v1 = 1;
    }
    // ada1a8:    beqzl   v1,0xada1f4 ~>
    if (phi_v1 && delta_a3_a5_sp60.y < actor_ac_98_12) {
        if (sqrtf(SQ(delta_a3_a5_sp60.x) + SQ(delta_a3_a5_sp60.z)) < actor_ac_98_10) {
            return 3;
        }
    }

    // ada1f4
    sp38 = SQ(delta_a3_a4_sp6C.x) + SQ(delta_a3_a4_sp6C.z) - SQ(actor_ac_98_10); // temp_f12;
    temp_f2 = SQ(delta_a4_a5_sp54.x) + SQ(delta_a4_a5_sp54.z);
    if (!(fabsf(temp_f2) < 0.008f)) { // ada23c:    bc1t    0xada2f0 ~>
        temp_f14 = (delta_a4_a5_sp54.x + delta_a4_a5_sp54.x) * delta_a3_a4_sp6C.x +
                   (delta_a4_a5_sp54.z + delta_a4_a5_sp54.z) * delta_a3_a4_sp6C.z;
        temp_f0 = SQ(temp_f14);
        temp_f12 = (4.0f * temp_f2) * sp38;
        if (temp_f0 < temp_f12) { // ada280:    bc1f    0xada290 ~>
            return 0;
        }
        // ada290
        temp_f16_2 = temp_f0 - temp_f12;
        temp_f0 = sqrtf(temp_f16_2);
        if (0.0f < temp_f16_2) {
            phi_v0 = 1;
            phi_v1 = 1;
        } else {
            phi_v0 = 0;
            phi_v1 = 1;
        }

        sp50 = (temp_f0 - temp_f14) / (temp_f2 + temp_f2); // temp_f16_3;
        if (phi_v0 == 1) {
            sp4C = (-temp_f14 - temp_f0) / (temp_f2 + temp_f2);
        }
    } else { // 0xada2f0
        temp_f14 = ((delta_a4_a5_sp54.x + delta_a4_a5_sp54.x) * delta_a3_a4_sp6C.x) +
                   ((delta_a4_a5_sp54.z + delta_a4_a5_sp54.z) * delta_a3_a4_sp6C.z);
        if (!(fabsf(temp_f14) < 0.008f)) { // ada324
            phi_v0 = 0;
            sp50 = -sp38 / temp_f14;
            phi_v1 = 1;
        } // ada340:    b       0xada468
        else {
            if (sp38 <= 0.0f) { // ada358:    bc1f    0xada460
                phi_a0 = phi_v0;
                if (phi_v0 != 0) // ada360:    beqz    v0,0xada388 ~>
                {
                    phi_a0 = 0;
                    // ada37C
                    if (delta_a3_a4_sp6C.y < actor_ac_98_12) {
                        phi_a0 = 1;
                    }
                }
                phi_a1 = phi_a0;
                // ada38C
                phi_a0 = phi_v1;
                if (phi_v1 != 0) {
                    phi_a0 = 0;
                    if (delta_a3_a5_sp60.y < actor_ac_98_12) {
                        phi_a0 = 1;
                    }
                }
                if (phi_a1) {     // ada3b4
                    if (phi_a0) { // ada3bc
                        *arg6 = delta_a3_a4_sp6C;
                        *arg7 = delta_a3_a5_sp60;
                        return 2;
                    }
                }
                // ada408
                if (phi_a1) {
                    *arg6 = delta_a3_a4_sp6C;
                    return 1;
                }
                // ada434
                if (phi_a0) {
                    *arg6 = delta_a3_a5_sp60;
                    return 1;
                }
            }
            // ada460
            return 0;
        }
    }
    // ada468 800632C8
    if (phi_v0 == 0) { // ada468:    bnezl   v0,0xada4a4 ~>
        if (sp50 < 0.0f || 1.0f < sp50) {
            return 0;
        }
    } else { // ada4a4
        phi_a1 = 0;
        if (sp50 < 0.0f) { // ada4ac
            phi_a1 = 1;
        }
        // ada4b8
        phi_a0 = phi_a1;
        if (phi_a1 == 0) {
            phi_a1 = 0;
            if (1.0f < sp50) {
                phi_a1 = 1;
            }
        }
        // ada4dc
        phi_a2 = 0;
        if (sp4C < 0.0f) {
            phi_a2 = 1;
        }
        if (phi_a2 == 0) {
            phi_a2 = 0;
            if (1.0f < sp4C) {
                phi_a2 = 1;
            }
        }
        if (phi_a1 != 0) {
            if (phi_a2 != 0) {
                return 0;
            }
        }
        if (phi_a1 != 0) {
            phi_v1 = 0;
        }
        if (phi_a2 != 0) {
            phi_v0 = 0;
        }
    }
    if (phi_v1 == 1) {
        temp_f0_3 = sp50 * delta_a4_a5_sp54.y + delta_a3_a4_sp6C.y;
        if (temp_f0_3 < 0.0f || actor_ac_98_12 < temp_f0_3) {
            phi_v1 = 0;
        }
    }
    if (phi_v0 == 1) {
        temp_f0_3 = sp4C * delta_a4_a5_sp54.y + delta_a3_a4_sp6C.y;
        if (temp_f0_3 < 0.0f || actor_ac_98_12 < temp_f0_3) {
            phi_v0 = 0;
        }
    }
    if (phi_v1 == 0 && phi_v0 == 0) {
        return 0;
    }
    if (phi_v1 == 1) {
        if (phi_v0 == 1) {
            arg6->x = sp50 * delta_a4_a5_sp54.x + delta_a3_a4_sp6C.x + ac_actor_pos->x;
            arg6->y = sp50 * delta_a4_a5_sp54.y + delta_a3_a4_sp6C.y + ac_actor_pos->y;
            arg6->z = sp50 * delta_a4_a5_sp54.z + delta_a3_a4_sp6C.z + ac_actor_pos->z;
            arg7->x = sp4C * delta_a4_a5_sp54.x + delta_a3_a4_sp6C.x + ac_actor_pos->x;
            arg7->y = sp4C * delta_a4_a5_sp54.y + delta_a3_a4_sp6C.y + ac_actor_pos->y;
            arg7->z = sp4C * delta_a4_a5_sp54.z + delta_a3_a4_sp6C.z + ac_actor_pos->z;
            return 2;
        }
    }
    if (phi_v1 == 1) {
        arg6->x = sp50 * delta_a4_a5_sp54.x + delta_a3_a4_sp6C.x + ac_actor_pos->x;
        arg6->y = sp50 * delta_a4_a5_sp54.y + delta_a3_a4_sp6C.y + ac_actor_pos->y;
        arg6->z = sp50 * delta_a4_a5_sp54.z + delta_a3_a4_sp6C.z + ac_actor_pos->z;
        return 1;
    }
    if (phi_v0 == 1) { // ada700
        arg6->x = sp4C * delta_a4_a5_sp54.x + delta_a3_a4_sp6C.x + ac_actor_pos->x;
        arg6->y = sp4C * delta_a4_a5_sp54.y + delta_a3_a4_sp6C.y + ac_actor_pos->y;
        arg6->z = sp4C * delta_a4_a5_sp54.z + delta_a3_a4_sp6C.z + ac_actor_pos->z;
        return 1;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062ECC.s")
#endif

s32 func_800635D0(s32 arg0) {
    s32 result;

    result = 0;
    if (arg0 & 0x00400100) {
        result = 1;
    } else if (arg0 & 0x03000242) {
        result = 2;
    } else if (arg0 & 0x48800400) {
        result = 4;
    } else if (arg0 & 0x04000000) {
        result = 8;
    }

    KREG(7) = result;
    return result;
}
