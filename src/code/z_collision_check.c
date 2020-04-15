#include <ultra64.h>
#include <global.h>

//.bss
//UNK_TYPE D_8015CF00;
//UNK_TYPE D_8015CF04;
//f32 D_8015CF08;
//UNK_TYPE D_8015CF0C;

void func_8005B2AC(GraphicsContext* gfx, Vec3f* vA, Vec3f* vB, Vec3f* vC, u8 r, u8 g, u8 b);

//draw red poly
void func_8005B280(GraphicsContext* gfx, Vec3f* vA, Vec3f* vB, Vec3f* vC)
{
    func_8005B2AC(gfx, vA, vB, vC, 255, 0, 0);
}

//draw poly
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B2AC.s")

//Init Collider
s32 func_8005B65C(GlobalContext* globalCtx, Collider* collision)
{
    static Collider init = { NULL, NULL, NULL, NULL, 0, 0, 0, 0, 3, 4 };
    *collision = init;
    return 1;
}

//Destruct Collider
s32 func_8005B6A0(GlobalContext* globalCtx, Collider* collision)
{
    return 1;
}

//SetInit Collider (ColliderInit_Actor)
s32 func_8005B6B0(GlobalContext* globalCtx, Collider* collision, ColliderInit_Actor* src)
{
    collision->actor = src->actor;
    collision->atFlags = src->atFlags;
    collision->acFlags = src->acFlags;
    collision->maskA = src->maskA;
    collision->maskB = 0x10;
    collision->shape = src->shape;
    return 1;
}

//SetInit Collider (maskB = 0x10)
s32 func_8005B6EC(GlobalContext* globalCtx, Collider* collision, Actor* actor, ColliderInit_set3* src)
{
    collision->actor = actor;
    collision->unk_14 = src->unk_00;
    collision->atFlags = src->atFlags;
    collision->acFlags = src->acFlags;
    collision->maskA = src->maskA;
    collision->maskB = 0x10;
    collision->shape = src->shape;
    return 1;
}

//SetInit Collider (maskB = src->maskB)
s32 func_8005B72C(GlobalContext* globalCtx, Collider* collision, Actor* actor, ColliderInit* src)
{
    collision->actor = actor;
    collision->unk_14 = src->unk_00;
    collision->atFlags = src->atFlags;
    collision->acFlags = src->acFlags;
    collision->maskA = src->maskA;
    collision->maskB = src->maskB;
    collision->shape = src->shape;
    return 1;
}

//SetAT Collider base
void func_8005B76C(GlobalContext* globalCtx, Collider* collision)
{
    collision->at = NULL;
    collision->atFlags &= ~0x6;
}

//SetAC Collider base
void func_8005B784(GlobalContext* globalCtx, Collider* collision)
{
    collision->ac = NULL;
    collision->acFlags &= ~0x82;
}

//SetOC Collider base
void func_8005B79C(GlobalContext* globalCtx, Collider* collision)
{
    collision->oc = NULL;
    collision->maskA &= ~0x2;
    collision->maskB &= ~0x1;
}

//Initialize ColliderTouch
s32 func_8005B7C0(GlobalContext* globalCtx, ColliderTouch* touch) { 
    static ColliderTouch init = { 0, 0, 0 };
    *touch = init;
    return 1;
}

//Destruct ColliderTouch
s32 func_8005B7E4(GlobalContext* globalCtx, ColliderTouch* touch)
{
    return 1;
}

//SetInit ColliderTouch. src might actually be a different type
s32 func_8005B7F4(GlobalContext* globalCtx, ColliderTouch* dest, ColliderTouch* src)
{
    dest->flags = src->flags;
    dest->effect = src->effect;
    dest->damage = src->damage;
    return 1;
}

void func_8005B818(GlobalContext* globalCtx, ColliderBody* body)
{

}

//Initialize ColliderBump
s32 func_8005B824(GlobalContext* globalCtx, ColliderBump* bump)
{
    static ColliderBump init = { (s32)0xFFCFFFFF, 0, 0, { 0, 0, 0 } };
    *bump = init;
    return 1;
}

//Destruct ColliderBump 
s32 func_8005B850(GlobalContext* globalCtx, ColliderBump* bump)
{
    return 1;
}

//SetInit ColliderBump
s32 func_8005B860(GlobalContext* globalCtx, ColliderBump* bump, ColliderBumpInit* init)
{
    bump->flags = init->flags;
    bump->effect = init->effect;
    bump->defense = init->defense;
    return 1;
}

//Initialize ColliderBody
s32 func_8005B884(GlobalContext* globalCtx, ColliderBody* body) {
    static ColliderBody init = {
        { 0, 0, 0 },
        { (s32)0xFFCFFFFF, 0, 0, {0, 0, 0} },
        0, 0, 0, 0, NULL, NULL, NULL, NULL,
    };
    *body = init;
    func_8005B7C0(globalCtx, &body->toucher);
    func_8005B824(globalCtx, &body->bumper);
    return 1;
}

//Destruct ColliderBody
s32 func_8005B904(GlobalContext* globalCtx, ColliderBody* body)
{
    func_8005B7E4(globalCtx, &body->toucher);
    func_8005B850(globalCtx, &body->bumper);
    return 1;
}

//SetInit ColliderBody
s32 func_8005B93C(GlobalContext* globalCtx, ColliderBody* body, ColliderBodyInit* bodyInit)
{
    body->flags = bodyInit->bodyFlags;
    func_8005B7F4(globalCtx, &body->toucher, &bodyInit->toucher);
    func_8005B860(globalCtx, &body->bumper, &bodyInit->bumper);
    body->toucherFlags = bodyInit->toucherFlags;
    body->bumperFlags = bodyInit->bumperFlags;
    body->ocFlags = bodyInit->bodyFlags2;
    return 1;
}

//SetAT ColliderBody
void func_8005B9B0(GlobalContext* globalCtx, ColliderBody* body)
{
    body->atHit = NULL;
    body->atHitItem = NULL;
    body->toucherFlags &= ~0x2;
    body->toucherFlags &= ~0x40;
    func_8005B818(globalCtx, body);
}

//SetAC ColliderBody
void func_8005B9E8(GlobalContext* globalCtx, ColliderBody* body)
{
    body->bumper.unk_06.z = 0;
    body->bumperFlags &= ~0x2;
    body->bumperFlags &= ~0x80;
    body->acHit = NULL;
    body->acHitItem = NULL;
    body->bumper.unk_06.y = body->bumper.unk_06.z;
    body->bumper.unk_06.x = body->bumper.unk_06.z;
}

//SetOC ColliderBody
void func_8005BA1C(GlobalContext* globalCtx, ColliderBody* body)
{
    body->ocFlags &= ~0x2;
}

//initialize JntSphItemDim
s32 func_8005BA30(GlobalContext* globalCtx, ColliderJntSphItemDim* dim) {
    static ColliderJntSphItemDim init = { 0 };
    *dim = init;
    return 1;
}

//Destruct JntSphItemDim
s32 func_8005BA74(GlobalContext* globalCtx, ColliderJntSphItemDim* item)
{
    return 1;
}

//SetInit JntSphItemDim
s32 func_8005BA84(GlobalContext* globalCtx, ColliderJntSphItemDim* dest, ColliderJntSphItemDimInit* src) {
    dest->unk_14 = src->unk_00;
    dest->unk_00 = src->unk_02;
    dest->scale = src->scale * 0.01f;
    return 1;
}

//Initialize JntSphItem
s32 func_8005BAD8(GlobalContext* globalCtx, ColliderJntSphItem* item) {
    func_8005B884(globalCtx, &item->body);
    func_8005BA30(globalCtx, &item->dim);
    return 1;
}

//Destruct JntSphItem
s32 func_8005BB10(GlobalContext* globalCtx, ColliderJntSphItem* item) {
    func_8005B904(globalCtx, &item->body);
    func_8005BA74(globalCtx, &item->dim);
    return 1;
}

//SetInit JntSphItem
s32 func_8005BB48(GlobalContext* globalCtx, ColliderJntSphItem* dest, ColliderJntSphItemInit* src) {
    func_8005B93C(globalCtx, &dest->body, &src->body);
    func_8005BA84(globalCtx, &dest->dim, &src->dim);
    return 1;
}

//SetAT ColliderJntSphItem
s32 func_8005BB8C(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005B9B0(globalCtx, &collider->body);
    return 1;
}

//SetAC ColliderJntSphItem
s32 func_8005BBB0(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005B9E8(globalCtx, &collider->body);
    return 1;
}

//SetOC ColliderJntSphItem
s32 func_8005BBD4(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005BA1C(globalCtx, &collider->body);
    return 1;
}

//Initialize ColliderJntSph
s32 func_8005BBF8(GlobalContext* globalCtx, ColliderJntSph* collision) {
    func_8005B65C(globalCtx, &collision->base);
    collision->count = 0;
    collision->list = NULL;
    return 1;
}

//Destruct ColliderJntSph (malloc)
s32 func_8005BC28(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;

    func_8005B6A0(globalCtx, &collider->base);
    next = collider->list;

    while (next < collider->list + collider->count) {
        func_8005BB10(globalCtx, next);
        next++;
    }

    collider->count = 0;
    if (collider->list != NULL) {
        ZeldaArena_FreeDebug(collider->list, "../z_collision_check.c", 1393);
    }
    collider->list = NULL;
    return 1;
}

//Destruct ColliderJntSph (no malloc)
s32 func_8005BCC8(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;

    func_8005B6A0(globalCtx, &collider->base);
    next = collider->list;

    while (next < collider->list + collider->count) {

        func_8005BB10(globalCtx, next);
        next++;
    }
    collider->count = 0;
    collider->list = NULL;
    return 1;
}

//ClObjJntSph
s32 func_8005BD50(GlobalContext* globalCtx, ColliderJntSph* dest, ColliderJntSphInit_Actor* src) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    func_8005B6B0(globalCtx, &dest->base, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 0x5A3);

    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("ClObjJntSph_set():zelda_malloc()出来ません。\n"); //EUC-JP: 出来ません。 | Can not.
        osSyncPrintf("\x1b[m");
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005BAD8(globalCtx, destNext);
        func_8005BB48(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}


//ClObjJntSph_set3 (maskB = 0x10)
//called by En_Nwc
s32 func_8005BE50(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit_set3* src) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    func_8005B6EC(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 1490);

    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("ClObjJntSph_set3():zelda_malloc_出来ません。\n"); //EUC-JP: 出来ません。 | Can not.
        osSyncPrintf("\x1b[m");
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005BAD8(globalCtx, destNext);
        func_8005BB48(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

//ClObjJntSph_set5 (maskB = src->maskB)
s32 func_8005BF50(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    func_8005B72C(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 0x60F);
    
    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("ClObjJntSph_set5():zelda_malloc出来ません\n"); //EUC-JP: 出来ません。 | Can not.
        osSyncPrintf("\x1b[m");
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005BAD8(globalCtx, destNext);
        func_8005BB48(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

//SetInit jntsph
s32 func_8005C050(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src, ColliderJntSphItem* list) {
    ColliderJntSphItem* destNext;
    ColliderJntSphItemInit* srcNext;

    func_8005B72C(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = list;

    if (dest->list == NULL) 
        __assert("pclobj_jntsph->elem_tbl != NULL", "../z_collision_check.c", 1603);

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005BAD8(globalCtx, destNext);
        func_8005BB48(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

//SetAT ColliderJntSph
s32 func_8005C124(GlobalContext* globalCtx, Collider* collider) 
{
    ColliderJntSphItem* next;
    ColliderJntSph* col = (ColliderJntSph*)collider;
    GlobalContext* gctx = globalCtx;

    func_8005B76C(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005BB8C(gctx, next);
        next++;
    }
    return 1;
}

//SetAC ColliderJntSph
s32 func_8005C1AC(GlobalContext* globalCtx, Collider* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = (ColliderJntSph*)collider;
    GlobalContext* gctx = globalCtx;

    func_8005B784(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005BBB0(gctx, next);
        next++;
    }
    return 1;
}


//SetOC ColliderJntSph
s32 func_8005C234(GlobalContext* globalCtx, Collider* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = (ColliderJntSph*)collider;
    GlobalContext* gctx = globalCtx;

    func_8005B79C(gctx, &col->base);
    next = col->list;
    while (next < col->list + col->count) {
        func_8005BBD4(gctx, next);
        next++;
    }
    return 1;
}

//Initialize ColliderCylinderDim
s32 func_8005C2BC(GlobalContext* globalCtx, ColliderCylinderDim* dim) {
    ColliderCylinderDim init = { 0 }; 
    *dim = init;
    return 1;
}

//Destruct ColliderCylinderDim
s32 func_8005C318(GlobalContext* globalCtx, ColliderCylinderDim* dim)
{
    return 1;
}

//Copy ColliderCylinderDim
s32 func_8005C328(GlobalContext* globalCtx, ColliderCylinderDim* dest, ColliderCylinderDim* src)
{
    *dest = *src;
    return 1;
}

s32 ActorCollider_AllocCylinder(GlobalContext* globalCtx, ColliderCylinder* collision)
{
    func_8005B65C(globalCtx, &collision->base);
    func_8005B884(globalCtx, &collision->body);
    func_8005C2BC(globalCtx, &collision->dim);
    return 1;
}

s32 ActorCollider_FreeCylinder(GlobalContext* globalCtx, ColliderCylinder* collision)
{
    func_8005B6A0(globalCtx, &collision->base);
    func_8005B904(globalCtx, &collision->body);
    func_8005C318(globalCtx, &collision->dim);
    return 1;
}

//SetInit Cylinder legacy?
//used only by DekuJr, D_80B92A00
s32 func_8005C3F4(GlobalContext* globalCtx, ColliderCylinder* collision, ColliderCylinderInit_Actor* src)
{
    func_8005B6B0(globalCtx, &collision->base, &src->base);
    func_8005B93C(globalCtx, &collision->body, &src->body);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetInit Cylinder (set3) maskB = 0x10
s32 func_8005C450(GlobalContext* globalCtx, ColliderCylinder* collision, Actor* actor, ColliderCylinderInit_set3* src)
{
    func_8005B6EC(globalCtx, &collision->base, actor, &src->base);
    func_8005B93C(globalCtx, &collision->body, &src->body);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetInit Cylinder maskB = src->maskB
//8005c4ac
s32 ActorCollider_InitCylinder(GlobalContext* globalCtx, ColliderCylinder* collision, Actor* actor, ColliderCylinderInit* src)
{
    func_8005B72C(globalCtx, &collision->base, actor, &src->base);
    func_8005B93C(globalCtx, &collision->body, &src->body);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetAT ColliderCylinder
s32 func_8005C508(GlobalContext* globalCtx, Collider* collision)
{
    ColliderCylinder* col = (ColliderCylinder*)collision;
    func_8005B76C(globalCtx, &col->base);
    func_8005B9B0(globalCtx, &col->body);
    return 1;
}

//SetAC ColliderCylinder
s32 func_8005C540(GlobalContext* globalCtx, Collider* collision)
{
    ColliderCylinder* col = (ColliderCylinder*)collision;
    func_8005B784(globalCtx, &col->base);
    func_8005B9E8(globalCtx, &col->body);
    return 1;
}

//SetOC ColliderCylinder
s32 func_8005C578(GlobalContext* globalCtx, Collider* collision)
{
    ColliderCylinder* col = (ColliderCylinder*)collision;
    func_8005B79C(globalCtx, &col->base);
    func_8005BA1C(globalCtx, &col->body);
    return 1;
}

//Initialize ColliderTrisItemDim
s32 func_8005C5B0(GlobalContext* globalCtx, ColliderTrisItemDim* dim)
{
    static ColliderTrisItemDim init = { 0 };
    *dim = init;
    return 1;
}

//Destruct ColliderTrisItemDim
s32 func_8005C5F8(GlobalContext* globalCtx, ColliderTrisItemDim* dim)
{
    return 1;
}

//Copy ColliderTrisItemDim
s32 func_8005C608(GlobalContext* globalCtx, ColliderTrisItemDim* dest, ColliderTrisItemDimInit* src)
{
    Vec3f* d;
    Vec3f* s;
    float nx, ny, nz, nd;

    d = dest->poly;
    s = src->poly;
    while (d < dest->poly + 3)
    {
        *d++ = *s++;
    }

    func_800CC8B4(&src->poly[0], &src->poly[1], &src->poly[2],
        &nx, &ny, &nz, &nd);
        
    dest->unitNormal.x = nx;
    dest->unitNormal.y = ny;
    dest->unitNormal.z = nz;
    dest->normalDist = nd;
    return 1;
}

//Initialize ColliderTrisItem
s32 func_8005C6C0(GlobalContext* globalCtx, ColliderTrisItem* collision) {
    func_8005B884(globalCtx, &collision->body);
    func_8005C5B0(globalCtx, &collision->dim);
    return 1;
}

//Destruct ColliderTrisItem
s32 func_8005C6F8(GlobalContext* globalCtx, ColliderTrisItem* collision) {
    func_8005B904(globalCtx, &collision->body);
    func_8005C5F8(globalCtx, &collision->dim);
    return 1;
}

//SetInit ColliderTrisItem
s32 func_8005C730(GlobalContext* globalCtx, ColliderTrisItem* dest, ColliderTrisItemInit* src) {
    func_8005B93C(globalCtx, &dest->body, &src->body);
    func_8005C608(globalCtx, &dest->dim, &src->dim);
    return 1;
}

//SetAT ColliderTrisItem
s32 func_8005C774(GlobalContext* globalCtx, ColliderTrisItem* item) {
    func_8005B9B0(globalCtx, &item->body);
    return 1;
}

//SetAC ColliderTrisItem
s32 func_8005C798(GlobalContext* globalCtx, ColliderTrisItem* item) {
    func_8005B9E8(globalCtx, &item->body);
    return 1;
}

//SetOC ColliderTrisItem
s32 func_8005C7BC(GlobalContext* globalCtx, ColliderTrisItem* item) {
    func_8005BA1C(globalCtx, &item->body);
    return 1;
}

//Initialize ColliderTris
s32 func_8005C7E0(GlobalContext* globalCtx, ColliderTris* tris) {
    func_8005B65C(globalCtx, &tris->base);
    tris->count = 0;
    tris->list = 0;
    return 1;
}

//Destruct ColliderTris (malloc)
s32 func_8005C810(GlobalContext* globalCtx, ColliderTris* tris) {
    ColliderTrisItem* next;

    func_8005B6A0(globalCtx, &tris->base);
    next = tris->list;

    while (next < tris->list + tris->count) {
        func_8005C6F8(globalCtx, next);
        next++;
    }

    tris->count = 0;
    if (tris->list != NULL) {
        ZeldaArena_FreeDebug(tris->list, "../z_collision_check.c", 2099);
    }
    tris->list = NULL;
    return 1;
}

//Destruct ColliderTris (no malloc)
s32 func_8005C8C8(GlobalContext* globalCtx, ColliderTris* tris) {
    ColliderTrisItem* next;

    func_8005B6A0(globalCtx, &tris->base);
    next = tris->list;

    while (next < tris->list + tris->count) {
        func_8005C6F8(globalCtx, next);
        next++;
    }
    tris->count = 0;
    tris->list = NULL;
    return 1;
}

//ClObjTris_set3 (maskB = 0x10)
s32 func_8005C964(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit_set3* src) {
    ColliderTrisItem* destNext;
    ColliderTrisItemInit* srcNext;

    func_8005B6EC(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(dest->count * sizeof(ColliderTrisItem), "../z_collision_check.c", 2156);
    if (dest->list == NULL) {
        dest->count = 0;
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("ClObjTris_set3():zelda_malloc()出来ません\n"); //EUC-JP: 出来ません。 | Can not.
        osSyncPrintf("\x1b[m");
        return 0;
    }
    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005C6C0(globalCtx, destNext);
        func_8005C730(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

//ClObjTris_set5 (maskB = src->maskB)
s32 func_8005CA88(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit* src) {
    ColliderTrisItem* destNext;
    ColliderTrisItemInit* srcNext;

    func_8005B72C(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = ZeldaArena_MallocDebug(dest->count * sizeof(ColliderTrisItem), "../z_collision_check.c", 2207);

    if (dest->list == NULL) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("ClObjTris_set5():zelda_malloc出来ません\n"); //EUC-JP: 出来ません。 | Can not.
        osSyncPrintf("\x1b[m");
        dest->count = 0;
        return 0;
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005C6C0(globalCtx, destNext);
        func_8005C730(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

//SetInit ColliderTris
s32 func_8005CBAC(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit* src, ColliderTrisItem* list) {
    ColliderTrisItem* destNext;
    ColliderTrisItemInit* srcNext;

    func_8005B72C(globalCtx, &dest->base, actor, &src->base);
    dest->count = src->count;
    dest->list = list;

    if (dest->list == NULL) {
        __assert("pclobj_tris->elem_tbl != NULL", "../z_collision_check.c", 2258);
    }

    destNext = dest->list;
    srcNext = src->list;

    while (destNext < dest->list + dest->count)
    {
        func_8005C6C0(globalCtx, destNext);
        func_8005C730(globalCtx, destNext, srcNext);
        destNext++;
        srcNext++;
    }
    return 1;
}

//SetAT ColliderTris
s32 func_8005CC98(GlobalContext* globalCtx, Collider* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = (ColliderTris*)collider;
    GlobalContext* gctx = globalCtx;

    func_8005B76C(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005C774(gctx, next);
        next++;
    }
    return 1;
}

//SetAC ColliderTris
s32 func_8005CD34(GlobalContext* globalCtx, Collider* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = (ColliderTris*)collider;
    GlobalContext* gctx = globalCtx;

    func_8005B784(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005C798(gctx, next);
        next++;
    }
    return 1;
}

//SetOC ColliderTris
s32 func_8005CDD0(GlobalContext* globalCtx, Collider* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = (ColliderTris*)collider;
    GlobalContext* gctx = globalCtx;

    func_8005B79C(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005C7BC(gctx, next);
        next++;
    }
    return 1;
}

//Initialize ColliderQuadDim
s32 func_8005CE6C(GlobalContext* globalCtx, ColliderQuadDim* dim) {
    static ColliderQuadDim init = {
        { {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0} },
        {0, 0, 0}, {0, 0, 0}, 1.0E38f,
    };
    *dim = init;
    return 1;
}

//Destruct ColliderQuadDim
s32 func_8005CEB4(GlobalContext* globalCtx, ColliderQuadDim* dim) {
    return 1;
}

//Set ColliderQuadDim unk3C
s32 func_8005CEC4(GlobalContext* globalCtx, ColliderQuadDim* dim) {
    dim->unk3C = 1.0E38f;
    return 1;
}

//ColliderQuadDim compute ?
void func_8005CEDC(ColliderQuadDim* dim) {
    dim->dcMid.x = (dim->quad[3].x + dim->quad[2].x) * 0.5f;
    dim->dcMid.y = (dim->quad[3].y + dim->quad[2].y) * 0.5f;
    dim->dcMid.z = (dim->quad[3].z + dim->quad[2].z) * 0.5f;
    dim->baMid.x = (dim->quad[1].x + dim->quad[0].x) * 0.5f;
    dim->baMid.y = (dim->quad[1].y + dim->quad[0].y) * 0.5f;
    dim->baMid.z = (dim->quad[1].z + dim->quad[0].z) * 0.5f;
}

//SetInit ColliderQuadDim
s32 func_8005CF90(GlobalContext* globalCtx, ColliderQuadDim* dest, ColliderQuadDimInit* src) {
    dest->quad[0] = src->quad[0];
    dest->quad[1] = src->quad[1];
    dest->quad[2] = src->quad[2];
    dest->quad[3] = src->quad[3];
    func_8005CEDC(dest);
    return 1;
}

//Initialize ColliderQuad
s32 func_8005D018(GlobalContext* globalCtx, ColliderQuad* collision)
{
    func_8005B65C(globalCtx, &collision->base);
    func_8005B884(globalCtx, &collision->body);
    func_8005CE6C(globalCtx, &collision->dim);
    return 1;
}


//Destruct ColliderQuad
s32 func_8005D060(GlobalContext* globalCtx, ColliderQuad* collision)
{
    func_8005B6A0(globalCtx, &collision->base);
    func_8005B904(globalCtx, &collision->body);
    func_8005CEB4(globalCtx, &collision->dim);
    return 1;
}

//SetInit ColliderQuad (set3) maskB = 0x10
s32 func_8005D0A8(GlobalContext* globalCtx, ColliderQuad* collision, Actor* actor, ColliderQuadInit_set3* src)
{
    func_8005B6EC(globalCtx, &collision->base, actor, &src->base);
    func_8005B93C(globalCtx, &collision->body, &src->body);
    func_8005CF90(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetInit ColliderQuad maskB = src->maskB
s32 func_8005D104(GlobalContext* globalCtx, ColliderQuad* collision, Actor* actor, ColliderQuadInit* src)
{
    func_8005B72C(globalCtx, &collision->base, actor, &src->base);
    func_8005B93C(globalCtx, &collision->body, &src->body);
    func_8005CF90(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetAT ColliderQuad
s32 func_8005D160(GlobalContext* globalCtx, Collider* collision)
{
    ColliderQuad* col = (ColliderQuad*)collision;
    func_8005B76C(globalCtx, &col->base);
    func_8005B9B0(globalCtx, &col->body);
    func_8005CEC4(globalCtx, &col->dim);
    return 1;
}

//SetAC ColliderQuad
s32 func_8005D1A8(GlobalContext* globalCtx, Collider* collision)
{
    ColliderQuad* col = (ColliderQuad*)collision;
    func_8005B784(globalCtx, &col->base);
    func_8005B9E8(globalCtx, &col->body);
    return 1;
}

//SetOC ColliderQuad
s32 func_8005D1E0(GlobalContext* globalCtx, Collider* collision)
{
    ColliderQuad* col = (ColliderQuad*)collision;
    func_8005B79C(globalCtx, &col->base);
    func_8005BA1C(globalCtx, &col->body);
    return 1;
}

s32 func_8005D218(GlobalContext* globalCtx, ColliderQuad* quad, Vec3f* arg2) {
    f32 temp;
    Vec3f sp20;

    if (!(quad->body.toucherFlags & 4)) {
        return 1;
    }
    Math_Vec3s_ToVec3f(&sp20, &quad->dim.dcMid);
    temp = func_800CB650(&sp20, arg2);
    if (temp < quad->dim.unk3C) {
        quad->dim.unk3C = temp;
        if (quad->body.atHit != NULL) {
            func_8005B784(globalCtx, quad->body.atHit);
        }
        if (quad->body.atHitItem != NULL) {
            func_8005B9E8(globalCtx, quad->body.atHitItem);
        }
        return 1;
    }
    return 0;
}

//possibly arg0 globalctx
s32 func_8005D2C4(UNK_TYPE arg0, OcLine_s* arg1) {
    static Vec3f init = { 0, 0, 0 };
    Vec3f sp1C;

    sp1C = init;
    Math_Vec3f_Copy(&arg1->a, &sp1C);
    Math_Vec3f_Copy(&arg1->b, &sp1C);
    return 1;
}

s32 func_8005D324(UNK_TYPE arg0, UNK_TYPE arg1)
{
    return 1;
}

s32 func_8005D334(UNK_TYPE arg0, OcLine_s* arg1, Vec3f* arg2, Vec3f* arg3) {
    Math_Vec3f_Copy(&arg1->a, arg2);
    Math_Vec3f_Copy(&arg1->b, arg3);
    return 1;
}

s32 func_8005D378(UNK_TYPE arg0, OcLine_s* arg1, OcLine_s* arg2) {
    arg1->unk18 = arg2->unk18;
    func_8005D334(arg0, arg1, &arg2->a, &arg2->b);
    return 1;
}

s32 func_8005D3A4(GlobalContext* globalCtx, OcLine_s* line) {
    line->unk18 &= 0xFFFE;
    return 1;
}

void func_8005D3BC(GlobalContext* globalCtx, CollisionCheckContext* check) {
    check->unk2 = 0;
    func_8005D40C(globalCtx, check);
    AREG(21) = 1;
    AREG(22) = 1;
    AREG(23) = 1;
} 

void func_8005D400(UNK_TYPE arg0, UNK_TYPE arg1)
{

}

//Initialize CollisionCheckContext 
void func_8005D40C(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider** c;
    OcLine_s** d;

    if (!(check->unk2 & 1)) {
        check->colAtCount = 0;
        check->colAcCount = 0;
        check->colOcCount = 0;
        check->colOcLineCount = 0;
        for (c = check->colAt; c < check->colAt + 50; c++) {
            *c = NULL;
        }

        for (c = check->colAc; c < check->colAc + 60; c++) {
            *c = NULL;
        }

        for (c = check->colOc; c < check->colOc + 50; c++) {
            *c = NULL;
        }

        for (d = check->colOcLine; d < check->colOcLine + 3; d++) {
            *d = NULL;
        }
    }
}

//unconfirmed args
void func_8005D4B4(GlobalContext* globalCtx, CollisionCheckContext* check) {
    check->unk2 |= 1;
}

//unconfirmed args
void func_8005D4C8(GlobalContext* globalCtx, CollisionCheckContext* check) {
    check->unk2 &= ~1;
}

//Draw Collider
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
    case COLTYPE_JNTSPH:
        jntSph = (ColliderJntSph*)collider;
        for (i = 0; i < jntSph->count; i++) {
            func_800D05D0(globalCtx, &jntSph->list[i].dim.posr);
        }
        break;
    case COLTYPE_CYLINDER:
        cylinder = (ColliderCylinder*)collider;
        func_800D05DC(globalCtx, &cylinder->dim);
        break;
    case COLTYPE_TRIS:
        tris = (ColliderTris*)collider;
        for (i = 0; i < tris->count; i++) {
            trisItem = &tris->list[i];
            func_8005B280(globalCtx->state.gfxCtx, &trisItem->dim.poly[0], &trisItem->dim.poly[1], &trisItem->dim.poly[2]);
        }
        break;
    case COLTYPE_QUAD:
        quad = (ColliderQuad*)collider;
        func_8005B280(globalCtx->state.gfxCtx, &quad->dim.quad[2], &quad->dim.quad[3], &quad->dim.quad[1]);
        func_8005B280(globalCtx->state.gfxCtx, &quad->dim.quad[1], &quad->dim.quad[0], &quad->dim.quad[2]);
        break;
    }
}

//CollisionCheck Draw
void func_8005D62C(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider* collider;
    s32 i;

    if (AREG(15)) {
        if (AREG(21)) {
            for (i = 0; i < check->colAtCount; i++) {
                func_8005D4DC(globalCtx, check->colAt[i]);
            }
        }
        if (AREG(22)) {
            for (i = 0; i < check->colAcCount; i++) {
                func_8005D4DC(globalCtx, check->colAc[i]);
            }
        }
        if (AREG(23)) {
            for (i = 0; i < check->colOcCount; i++) {
                collider = check->colOc[i];
                if ((collider->maskA & 1)) {
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

s32(*D_8011DEF8[])(GlobalContext*, Collider*) = {
    func_8005C124, func_8005C508, func_8005CC98, func_8005D160 };

s32 Actor_CollisionCheck_SetAT(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (collider->shape >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 2997);
    }
    check = (void*)check;
    (*&D_8011DEF8[collider->shape])(globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (check->colAtCount >= 50) {
        osSyncPrintf("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
        //EUC-JP: インデックスがオーバーして追加不能 | Index exceeded and cannot be added
        return -1;
    }
    if (check->unk2 & 1) {
        return -1;
    }
    index = check->colAtCount;
    check->colAt[check->colAtCount++] = collider;
    return index;
}

//CollisionCheck_setAT_SAC()
s32 func_8005D8AC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, s32 index) {

    if (!(collider->shape < 4)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3037);
    }
    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    (*&D_8011DEF8[collider->shape])(globalCtx, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (check->unk2 & 1) {
        if (!(index < check->colAtCount)) {
            osSyncPrintf("CollisionCheck_setAT_SAC():全データ数より大きいところに登録しようとしている。\n");
            //EUC-JP: 全データ数より大きいところに登録しようとしている。 | You are trying to register a location that is larger than the total number of data.
            return -1;
        }
        check->colAt[index] = collider;
    }
    else {
        if (!(check->colAtCount < 50)) {
            osSyncPrintf("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
            return -1;
        }
        index = check->colAtCount;
        check->colAt[check->colAtCount++] = collider;
    }
    return index;
}

s32(*D_8011DF08[])(GlobalContext*, Collider*) = {
    func_8005C1AC, func_8005C540, func_8005CD34, func_8005D1A8 };

s32 Actor_CollisionCheck_SetAC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (collider->shape >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3114);
    }
    check = (void*)check;
    (*&D_8011DF08[collider->shape])(globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (check->colAcCount >= 60) {
        osSyncPrintf("CollisionCheck_setAC():インデックスがオーバして追加不能\n");
        //EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
        return -1;
    }
    if (check->unk2 & 1) {
        return -1;
    }
    index = check->colAcCount;
    check->colAc[check->colAcCount++] = collider;
    return index;
}

//CollisionCheck_setAC_SAC()
s32 func_8005DB04(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, s32 index) {

    if (!(collider->shape < 4)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3153);
    }
    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    (*&D_8011DF08[collider->shape])(globalCtx, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (check->unk2 & 1) {
        if (!(index < check->colAcCount)) {
            osSyncPrintf("CollisionCheck_setAC_SAC():全データ数より大きいところに登録しようとしている。\n");
            //EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is larger than the total number of data.
            return -1;
        }
        check->colAc[index] = collider;
    }
    else {
        if (!(check->colAcCount < 60)) {
            osSyncPrintf("CollisionCheck_setAC():インデックスがオーバして追加不能\n");
            //EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
            return -1;
        }
        index = check->colAcCount;
        check->colAc[check->colAcCount++] = collider;
    }
    return index;
}

s32(*D_8011DF18[])(GlobalContext*, Collider*) = {
    func_8005C234, func_8005C578, func_8005CDD0, func_8005D1E0 };

//TODO: rename to CollisionCheck_SetOC()
s32 Actor_CollisionCheck_SetOT(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (collider->shape >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3229);
    }
    check = (void*)check;
    (*D_8011DF18[collider->shape])(globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (check->colOcCount >= 50) {
        osSyncPrintf("CollisionCheck_setOC():インデックスがオーバして追加不能\n"); 
        //EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
        return -1;
    }
    if (check->unk2 & 1) {
        return -1;
    }
    index = check->colOcCount;
    check->colOc[check->colOcCount++] = collider;
    return index;
}

//CollisionCheck_setOC_SAC()
s32 func_8005DD5C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, s32 index) {

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (!(collider->shape < 4)) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3274);
    }
    (*&D_8011DF18[collider->shape])(globalCtx, collider);
    if (collider->actor != NULL && collider->actor->update == NULL) {
        return -1;
    }
    if (check->unk2 & 1) {
        if (!(index < check->colOcCount)) {
            osSyncPrintf("CollisionCheck_setOC_SAC():全データ数より大きいところに登録しようとしている。\n");
            //EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is larger than the total number of data.
            return -1;
        }
        //BUG: Should be colOc
        check->colAt[index] = collider;
    }
    else {
        if (!(check->colOcCount < 50)) {
            osSyncPrintf("CollisionCheck_setOC():インデックスがオーバして追加不能\n");
            //EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
            return -1;
        }
        index = check->colOcCount;
        check->colOc[check->colOcCount++] = collider;
    }
    return index;
}

//CollisionCheck_setOCLine()
s32 func_8005DE9C(GlobalContext* globalCtx, CollisionCheckContext* check, OcLine_s* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    func_8005D3A4(globalCtx, collider);
    if (check->colOcLineCount >= 3) {
        osSyncPrintf("CollisionCheck_setOCLine():インデックスがオーバして追加不能\n");
        return -1;
    }
    index = check->colOcLineCount;
    check->colOcLine[check->colOcLineCount++] = collider;
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
//.bss problems
void func_8005DFAC(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    s32 sp24;
    static EffSparkParams D_8015D8A0;

    D_8015D8A0.position.x = (s32)v->x;
    D_8015D8A0.position.y = (s32)v->y;
    D_8015D8A0.position.z = (s32)v->z;
    D_8015D8A0.particleFactor1 = 5;
    D_8015D8A0.particleFactor2 = 5;
    D_8015D8A0.colorStart[0].r = (u8)0xA;
    D_8015D8A0.colorStart[0].g = (u8)0xA;
    D_8015D8A0.colorStart[0].b = (u8)0xC8;
    D_8015D8A0.colorStart[0].a = (u8)0xFF;
    D_8015D8A0.colorStart[1].r = (u8)0;
    D_8015D8A0.colorStart[1].g = (u8)0;
    D_8015D8A0.colorStart[1].b = (u8)0x80;
    D_8015D8A0.colorStart[1].a = (u8)0xFF;
    D_8015D8A0.colorStart[2].r = (u8)0;
    D_8015D8A0.colorStart[2].g = (u8)0;
    D_8015D8A0.colorStart[2].b = (u8)0x80;
    D_8015D8A0.colorStart[2].a = (u8)0xFF;
    D_8015D8A0.colorStart[3].r = (u8)0;
    D_8015D8A0.colorStart[3].g = (u8)0;
    D_8015D8A0.colorStart[3].b = (u8)0x80;
    D_8015D8A0.colorStart[3].a = (u8)0xFF;
    D_8015D8A0.colorEnd[0].r = (u8)0;
    D_8015D8A0.colorEnd[0].g = (u8)0;
    D_8015D8A0.colorEnd[0].b = (u8)0x20;
    D_8015D8A0.colorEnd[0].a = (u8)0;
    D_8015D8A0.colorEnd[1].r = (u8)0;
    D_8015D8A0.colorEnd[1].g = (u8)0;
    D_8015D8A0.colorEnd[1].b = (u8)0x20;
    D_8015D8A0.colorEnd[1].a = (u8)0;
    D_8015D8A0.colorEnd[2].r = (u8)0;
    D_8015D8A0.colorEnd[2].g = (u8)0;
    D_8015D8A0.colorEnd[2].b = (u8)0x40;
    D_8015D8A0.colorEnd[2].a = (u8)0;
    D_8015D8A0.colorEnd[3].r = (u8)0;
    D_8015D8A0.colorEnd[3].g = (u8)0;
    D_8015D8A0.colorEnd[3].b = (u8)0x40;
    D_8015D8A0.colorEnd[3].a = (u8)0;
    D_8015D8A0.age = 0;
    D_8015D8A0.duration = 16;
    D_8015D8A0.velocity = 8.0f;
    D_8015D8A0.gravity = -1.0f;
    Effect_Add(globalCtx,  &sp24, 0, 0, 1, &D_8015D8A0);
}
#else
void func_8005DFAC(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DFAC.s")
#endif // NON_MATCHING

#ifdef NON_MATCHING
//.bss problems
void func_8005E10C(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {
    s32 sp24;
    static EffSparkParams D_8015DD68;
    //D_8015DD68
    D_8015DD68.position.x = (s32)v->x;
    D_8015DD68.position.y = (s32)v->y;
    D_8015DD68.position.z = (s32)v->z;
    D_8015DD68.particleFactor1 = 5;
    D_8015DD68.particleFactor2 = 5;
    D_8015DD68.colorStart[0].r = (u8)0xA;
    D_8015DD68.colorStart[0].g = (u8)0xC8;
    D_8015DD68.colorStart[0].b = (u8)0xA;
    D_8015DD68.colorStart[0].a = (u8)0xFF;
    D_8015DD68.colorStart[1].r = (u8)0;
    D_8015DD68.colorStart[1].g = (u8)0x80;
    D_8015DD68.colorStart[1].b = (u8)0;
    D_8015DD68.colorStart[1].a = (u8)0xFF;
    D_8015DD68.colorStart[2].r = (u8)0;
    D_8015DD68.colorStart[2].g = (u8)0x80;
    D_8015DD68.colorStart[2].b = (u8)0;
    D_8015DD68.colorStart[2].a = (u8)0xFF;
    D_8015DD68.colorStart[3].r = (u8)0;
    D_8015DD68.colorStart[3].g = (u8)0x80;
    D_8015DD68.colorStart[3].b = (u8)0;
    D_8015DD68.colorStart[3].a = (u8)0xFF;
    D_8015DD68.colorEnd[0].r = (u8)0;
    D_8015DD68.colorEnd[0].g = (u8)0x20;
    D_8015DD68.colorEnd[0].b = (u8)0;
    D_8015DD68.colorEnd[0].a = (u8)0;
    D_8015DD68.colorEnd[1].r = (u8)0;
    D_8015DD68.colorEnd[1].g = (u8)0x20;
    D_8015DD68.colorEnd[1].b = (u8)0;
    D_8015DD68.colorEnd[1].a = (u8)0;
    D_8015DD68.colorEnd[2].r = (u8)0;
    D_8015DD68.colorEnd[2].g = (u8)0x40;
    D_8015DD68.colorEnd[2].b = (u8)0;
    D_8015DD68.colorEnd[2].a = (u8)0;
    D_8015DD68.colorEnd[3].r = (u8)0;
    D_8015DD68.colorEnd[3].g = (u8)0x40;
    D_8015DD68.colorEnd[3].b = (u8)0;
    D_8015DD68.colorEnd[3].a = (u8)0;
    D_8015DD68.age = 0;
    D_8015DD68.duration = 16;
    D_8015DD68.velocity = 8.0f;
    D_8015DD68.gravity = -1.0f;
    Effect_Add(globalCtx, &sp24, 0, 0, 1, &D_8015DD68);
}
#else
void func_8005E10C(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E10C.s")
#endif //NON_MATCHING

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
    if (flags == 0 && collider->unk_14 != 9) {
        func_80029CA4(globalCtx, 0, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    if (flags == 0) {
        func_80029CA4(globalCtx, 3, arg3);
        if (collider->actor == NULL) {
            func_80062D60(globalCtx, arg3);
            return;
        }
        func_80062DAC(globalCtx, arg3, &collider->actor->unk_E4);
        return;
    }
    if (flags == 8) {
        func_80029CA4(globalCtx, 0, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &collider->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    if (flags == 0x10) {
        func_80029CA4(globalCtx, 1, arg3);
        if (collider->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &collider->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
}

s32 func_8005E4F8(Collider* left, ColliderBody* rightBody) {
    if (left->actor != NULL) {
        if (ACTORTYPE_PLAYER == left->actor->type) {
            if (rightBody->flags == 0) {
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_STRIKE, &left->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            else if (rightBody->flags == 1) {
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_STRIKE_HARD, &left->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            else if (2 == rightBody->flags) {
                Audio_PlaySoundGeneral(NA_SE_PL_WALK_GROUND, &left->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            else if (rightBody->flags == 3) {
                Audio_PlaySoundGeneral(NA_SE_PL_WALK_GROUND, &left->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
    }
    return 1;
}

typedef struct {
    u8 unk00;
    u8 unk01;
} D_8011DF40_s;


void func_8005E604(GlobalContext* globalCtx, Collider* left, ColliderBody* leftBody,
    Collider* right, ColliderBody* rightBody, Vec3f* arg5) {

    static void (*D_8011DF28[])(GlobalContext*, Collider*, Vec3f*) = {
        func_8005DF9C, func_8005DFAC, func_8005E10C, func_8005E26C, func_8005E2A4, func_8005E2C8 };

    static D_8011DF40_s D_8011DF40[0x0E] = {
        {1, 0},
        {0, 1},
        {2, 1},
        {0, 0},

        {3, 5},
        {0, 2},
        {2, 0},
        {4, 0},

        {1, 2},
        {0, 3},
        {0, 5},
        {0, 3},

        {0, 3},
        {0, 4},
    };

    if (rightBody->bumperFlags & 0x40) {
        return;
    }
    if (!(leftBody->toucherFlags & 0x20) && leftBody->toucherFlags & 0x40) {
        return;
    }
    if (right->actor != NULL) {
        (*D_8011DF28[D_8011DF40[right->unk_14].unk00])(globalCtx, right, arg5);
    }
    if (right->actor != NULL) {
        if (D_8011DF40[right->unk_14].unk01 == 3) {
            func_8005E2EC(globalCtx, leftBody, right, arg5);
            return;
        }
        else if (D_8011DF40[right->unk_14].unk01 == 4) {
            if (left->actor == NULL) {

                func_80062CD4(globalCtx, arg5);
                Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return;
            }
            func_80062E14(globalCtx, arg5, &left->actor->unk_E4);
            return;
        }
        else if (D_8011DF40[right->unk_14].unk01 != 5) {
            func_80029CA4(globalCtx, D_8011DF40[right->unk_14].unk01, arg5);
            if ((rightBody->bumperFlags & 0x20) == 0) {
                func_8005E4F8(left, rightBody);
                return;
            }
        }
    }
    else {
        func_80029CA4(globalCtx, 0, arg5);
        if (right->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &right->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_8005E800(Collider* left, Collider* right) {
    left->atFlags |= 4;
    right->acFlags |= 0x80;
}

//Set AT to AC collision
s32 func_8005E81C(GlobalContext* globalCtx,
    Collider* left, ColliderBody* leftBody, Vec3f* leftv,
    Collider* right, ColliderBody* rightBody, Vec3f* rightv, Vec3f* arg7) {

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
            left->actor->sub_98.impactEffect = rightBody->bumper.effect;
        }
    }
    right->acFlags |= 2;
    right->ac = left->actor;
    rightBody->acHit = left;
    rightBody->acHitItem = leftBody;
    rightBody->bumperFlags |= 2;
    if (right->actor != NULL) {
        right->actor->sub_98.unk_1B = leftBody->toucher.effect;
    }
    rightBody->bumper.unk_06.x = (s16)arg7->x;
    rightBody->bumper.unk_06.y = (s16)arg7->y;
    rightBody->bumper.unk_06.z = (s16)arg7->z;
    if (!(leftBody->toucherFlags & 0x20) 
        && right->unk_14 != 9 
        && right->unk_14 != 11
        && right->unk_14 != 12) {
        rightBody->bumperFlags |= 0x80;
    }
    else {
        func_8005E604(globalCtx, left, leftBody, right, rightBody, arg7);
        leftBody->toucherFlags |= 0x40;
    }
    return 1;
}

//Check ColliderJntSph to ColliderJntSph
void func_8005E9C0(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
            if (func_800CFCAC(&lItem->dim.posr, &rItem->dim.posr, &sp8C, &sp88) == 1) {
                sp6C.x = lItem->dim.posr.pos.x;
                sp6C.y = lItem->dim.posr.pos.y;
                sp6C.z = lItem->dim.posr.pos.z;
                sp60.x = rItem->dim.posr.pos.x;
                sp60.y = rItem->dim.posr.pos.y;
                sp60.z = rItem->dim.posr.pos.z;
                if (!(fabsf(sp88) < 0.008f)) {
                    temp_f0 = rItem->dim.posr.radius / sp88;
                    sp78.x = (((sp6C.x - sp60.x) * temp_f0) + sp60.x);
                    sp78.y = (((sp6C.y - sp60.y) * temp_f0) + sp60.y);
                    sp78.z = (((sp6C.z - sp60.z) * temp_f0) + sp60.z);
                }
                else {
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

//Check ColliderJntSph to ColliderCylinder 
void func_8005EC6C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {

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
        if (func_800CFDA4(&lItem->dim.posr, &right->dim, &sp80, &sp7C) != 0) {
            sp64.x = lItem->dim.posr.pos.x;
            sp64.y = lItem->dim.posr.pos.y;
            sp64.z = lItem->dim.posr.pos.z;
            sp58.x = right->dim.position.x;
            sp58.y = right->dim.position.y;
            sp58.z = right->dim.position.z;
            if (!(fabsf(sp7C) < 0.008f)) {
                temp_f0 = right->dim.radius / sp7C;
                if (temp_f0 <= 1.0f) {
                    sp70.x = ((sp64.x - sp58.x) * temp_f0) + sp58.x;
                    sp70.y = ((sp64.y - sp58.y) * temp_f0) + sp58.y;
                    sp70.z = ((sp64.z - sp58.z) * temp_f0) + sp58.z;
                }
                else {
                    Math_Vec3f_Copy(&sp70, &sp64);
                }
            }
            else {
                Math_Vec3f_Copy(&sp70, &sp64);
            }
            func_8005E81C(globalCtx, &left->base, &lItem->body, &sp64, &right->base, &right->body, &sp58, &sp70);
            return;
        }
    }
}

//Check ColliderCylinder to ColliderJntSph
void func_8005EEE0(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
        if (func_800CFDA4(&rItem->dim.posr, &left->dim, &sp9C, &sp98) != 0) {
            sp7C.x = left->dim.position.x;
            sp7C.y = left->dim.position.y;
            sp7C.z = left->dim.position.z;
            sp70.x = rItem->dim.posr.pos.x;
            sp70.y = rItem->dim.posr.pos.y;
            sp70.z = rItem->dim.posr.pos.z;
            if (!(fabsf(sp98) < 0.008f)) {
                temp_f0 = (f32)rItem->dim.posr.radius / sp98;
                if (temp_f0 <= 1.0f) {
                    sp88.x = ((sp7C.x - sp70.x) * temp_f0) + sp70.x;
                    sp88.y = ((sp7C.y - sp70.y) * temp_f0) + sp70.y;
                    sp88.z = ((sp7C.z - sp70.z) * temp_f0) + sp70.z;
                }
                else {
                    Math_Vec3f_Copy(&sp88, &sp7C);
                }
            }
            else {
                Math_Vec3f_Copy(&sp88, &sp7C);
            }
            func_8005E81C(globalCtx, &left->base, &left->body, &sp7C, &right->base, &rItem->body, &sp70, &sp88);
            if (!(right->base.maskB & 0x40)) {
                break;
            }
        }
    }
}

//Check ColliderJntSph to ColliderTris
void func_8005F17C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
            if (func_800CE934(&lItem->dim.posr, &rItem->dim, &sp6C) == 1) {
                sp60.x = lItem->dim.posr.pos.x;
                sp60.y = lItem->dim.posr.pos.y;
                sp60.z = lItem->dim.posr.pos.z;
                sp54.x = (rItem->dim.poly[0].x + rItem->dim.poly[1].x + rItem->dim.poly[2].x) * (1.0f / 3);
                sp54.y = (rItem->dim.poly[0].y + rItem->dim.poly[1].y + rItem->dim.poly[2].y) * (1.0f / 3);
                sp54.z = (rItem->dim.poly[0].z + rItem->dim.poly[1].z + rItem->dim.poly[2].z) * (1.0f / 3);
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp60, &right->base, &rItem->body, &sp54, &sp6C);
                return;
            }
        }
    }
}

//Check ColliderTris to ColliderJntSph
void func_8005F39C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
                    if (func_800CE934(&rItem->dim.posr, &lItem->dim, &sp7C) == 1) {
                        Math_Vec3s_ToVec3f(&sp64, &rItem->dim.posr.pos);
                        sp70.x = (lItem->dim.poly[0].x + lItem->dim.poly[1].x + lItem->dim.poly[2].x) * (1.0f / 3);
                        sp70.y = (lItem->dim.poly[0].y + lItem->dim.poly[1].y + lItem->dim.poly[2].y) * (1.0f / 3);
                        sp70.z = (lItem->dim.poly[0].z + lItem->dim.poly[1].z + lItem->dim.poly[2].z) * (1.0f / 3);
                        func_8005E81C(globalCtx, &left->base, &lItem->body, &sp70, &right->base, &rItem->body, &sp64, &sp7C);
                        if (!(right->base.maskB & 0x40)) {
                            return;
                        }
                    }
                }
            }
        }
    }
}

extern ColliderTrisItemDim D_8015E230;
extern ColliderTrisItemDim D_8015E268;

//Check ColliderJntSph to ColliderQuad
void func_8005F5B0(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
        func_800CE3C0(&D_8015E230, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
        func_800CE3C0(&D_8015E268, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (func_8005DF2C(&lItem->body) == 1) {
                continue;
            }
            if (func_8005DF74(&lItem->body, &right->body) == 1) {
                continue;
            }
            if (func_800CE934(&lItem->dim.posr, &D_8015E230, &sp7C) == 1 || func_800CE934(&lItem->dim.posr, &D_8015E268, &sp7C) == 1) {
                Math_Vec3s_ToVec3f(&sp6C, &lItem->dim.posr.pos);

                sp60.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * (1.0f / 4);
                sp60.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * (1.0f / 4);
                sp60.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * (1.0f / 4);
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp6C, &right->base, &right->body, &sp60, &sp7C);
                return;
            }
        }
    }
}

extern ColliderTrisItemDim D_8015E2A0;
extern ColliderTrisItemDim D_8015E2D8;

//Check ColliderQuad to ColliderJntSph
void func_8005F7D0(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
    ColliderJntSph* right = (ColliderJntSph*)r;
    Vec3f sp88;
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderJntSphItem* rItem;
    Vec3f sp74;
    Vec3f sp68;

    if (right->count > 0 && right->list != NULL) {
        if (func_8005DF2C(&left->body) != 1) {
            func_800CE3C0(&D_8015E2A0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
            func_800CE3C0(&D_8015E2D8, &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (func_8005DF50(&rItem->body) == 1)
                {
                    continue;
                }
                if (func_8005DF74(&left->body, &rItem->body) == 1)
                {
                    continue;
                }
                if (func_800CE934(&rItem->dim.posr, &D_8015E2A0, &sp88) != 1 && func_800CE934(&rItem->dim.posr, &D_8015E2D8, &sp88) != 1)
                {
                    continue;
                }
                if (func_8005D218(globalCtx, left, &sp88) != 0) {
                    sp68.x = rItem->dim.posr.pos.x;
                    sp68.y = rItem->dim.posr.pos.y;
                    sp68.z = rItem->dim.posr.pos.z;

                    sp74.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) * (1.0f / 4);
                    sp74.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) * (1.0f / 4);
                    sp74.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) * (1.0f / 4);
                    func_8005E81C(globalCtx, &left->base, &left->body, &sp74, &right->base, &rItem->body, &sp68, &sp88);
                    if ((right->base.maskB & 0x40) == 0) {
                        return;
                    }
                }
            }
        }
    }
}

//Check ColliderCylinder to ColliderCylinder
void func_8005FA30(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
    if (func_800CFF34(&left->dim, &right->dim, &sp6C, &sp68) == 1) {
        Math_Vec3s_ToVec3f(&sp50, &left->dim.position);
        Math_Vec3s_ToVec3f(&sp44, &right->dim.position);
        if (!(fabsf(sp68) < 0.008f)) {
            temp_f0 = (f32)right->dim.radius / sp68;
            sp5C.y = (f32)right->dim.position.y + (f32)right->dim.yShift + (f32)right->dim.height * 0.5f;
            sp5C.x = ((f32)left->dim.position.x - right->dim.position.x) * temp_f0 + right->dim.position.x;
            sp5C.z = ((f32)left->dim.position.z - right->dim.position.z) * temp_f0 + right->dim.position.z;
        }
        else {
            Math_Vec3s_ToVec3f(&sp5C, &right->dim.position);
        }
        func_8005E81C(globalCtx, &left->base, &left->body, &sp50, &right->base, &right->body, &sp44, &sp5C);
    }
}

//Check ColliderCylinder to ColliderTris
void func_8005FC04(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
            if (func_800CF7D0(&left->dim, &rItem->dim, &sp68) == 1) {
                Math_Vec3s_ToVec3f(&sp5C, &left->dim.position);

                sp50.x = (rItem->dim.poly[0].x + rItem->dim.poly[1].x + rItem->dim.poly[2].x) * (1.0f / 3);
                sp50.y = (rItem->dim.poly[0].y + rItem->dim.poly[1].y + rItem->dim.poly[2].y) * (1.0f / 3);
                sp50.z = (rItem->dim.poly[0].z + rItem->dim.poly[1].z + rItem->dim.poly[2].z) * (1.0f / 3);
                func_8005E81C(globalCtx, &left->base, &left->body, &sp5C, &right->base, &rItem->body, &sp50, &sp68);
                return;
            }
        }
    }
}

extern Vec3f D_8015E310;

//Check ColliderTris to ColliderCylinder
void func_8005FDCC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderCylinder* right = (ColliderCylinder*)r;
    ColliderTrisItem* lItem;
    Vec3f sp60;
    Vec3f sp54;

    if (right->dim.radius > 0 && right->dim.height > 0
        && left->count > 0 && left->list != NULL) {
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

            if (func_800CF7D0(&right->dim, &lItem->dim, &D_8015E310) == 1) {
                sp60.x = (lItem->dim.poly[0].x + lItem->dim.poly[1].x + lItem->dim.poly[2].x) * (1.0f / 3);
                sp60.y = (lItem->dim.poly[0].y + lItem->dim.poly[1].y + lItem->dim.poly[2].y) * (1.0f / 3);
                sp60.z = (lItem->dim.poly[0].z + lItem->dim.poly[1].z + lItem->dim.poly[2].z) * (1.0f / 3);
                Math_Vec3s_ToVec3f(&sp54, &right->dim.position);
                func_8005E81C(globalCtx, &left->base, &lItem->body, &sp60, &right->base, &right->body, &sp54, &D_8015E310);
                return;
            }
        }
    }
}

extern ColliderTrisItemDim D_8015E320;
extern ColliderTrisItemDim D_8015E358;
extern Vec3f D_8015E390;

//Check ColliderCylinder to ColliderQuad
void func_8005FF90(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
    func_800CE3C0(&D_8015E320, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
    func_800CE3C0(&D_8015E358, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
    if (func_800CF7D0(&left->dim, &D_8015E320, &D_8015E390) == 1) {
        Math_Vec3s_ToVec3f(&sp64, &left->dim.position);
        sp58.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * 0.25f;
        sp58.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * 0.25f;
        sp58.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * 0.25f;
        func_8005E81C(globalCtx, &left->base, &left->body, &sp64, &right->base, &right->body, &sp58, &D_8015E390);
        return;
    }
    if (func_800CF7D0(&left->dim, &D_8015E358, &D_8015E390) == 1) {
        Math_Vec3s_ToVec3f(&sp4C, &left->dim.position);
        sp40.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * (1.0f / 4);
        sp40.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * (1.0f / 4);
        sp40.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * (1.0f / 4);
        func_8005E81C(globalCtx, &left->base, &left->body, &sp4C, &right->base, &right->body, &sp40, &D_8015E390);
    }
}

extern ColliderTrisItemDim D_8015E3A0;
extern ColliderTrisItemDim D_8015E3D8;
extern Vec3f D_8015E410;

//Check ColliderQuad to ColliderCylinder
void func_80060204(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
    func_800CE3C0(&D_8015E3A0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
    func_800CE3C0(&D_8015E3D8, &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
    if (func_800CF7D0(&right->dim, &D_8015E3A0, &D_8015E410) == 1) {
        if (func_8005D218(globalCtx, left, &D_8015E410) != 0) {
            sp64.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) * (1.0f / 4);
            sp64.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) * (1.0f / 4);
            sp64.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) * (1.0f / 4);
            Math_Vec3s_ToVec3f(&sp58, &right->dim.position);
            func_8005E81C(globalCtx, &left->base, &left->body, &sp64, &right->base, &right->body, &sp58, &D_8015E410);
            return;
        }
    }
    if (func_800CF7D0(&right->dim, &D_8015E3D8, &D_8015E410) == 1) {
        if (func_8005D218(globalCtx, left, &D_8015E410) != 0) {
            sp4C.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) * (1.0f / 4);
            sp4C.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) * (1.0f / 4);
            sp4C.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) * (1.0f / 4);
            Math_Vec3s_ToVec3f(&sp40, &right->dim.position);
            func_8005E81C(globalCtx, &left->base, &left->body, &sp4C, &right->base, &right->body, &sp40, &D_8015E410);
        }
    }
}

extern Vec3f D_8015E420;

//Check ColliderTris to ColliderTris
void func_800604B0(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
                if (func_800D0104(&lItem->dim, &rItem->dim, &D_8015E420) == 1) {
                    sp5C.x = (lItem->dim.poly[0].x + lItem->dim.poly[1].x + lItem->dim.poly[2].x) * (1.0f / 3);
                    sp5C.y = (lItem->dim.poly[0].y + lItem->dim.poly[1].y + lItem->dim.poly[2].y) * (1.0f / 3);
                    sp5C.z = (lItem->dim.poly[0].z + lItem->dim.poly[1].z + lItem->dim.poly[2].z) * (1.0f / 3);
                    sp50.x = (rItem->dim.poly[0].x + rItem->dim.poly[1].x + rItem->dim.poly[2].x) * (1.0f / 3);
                    sp50.y = (rItem->dim.poly[0].y + rItem->dim.poly[1].y + rItem->dim.poly[2].y) * (1.0f / 3);
                    sp50.z = (rItem->dim.poly[0].z + rItem->dim.poly[1].z + rItem->dim.poly[2].z) * (1.0f / 3);
                    func_8005E81C(globalCtx, &left->base, &lItem->body, &sp5C, &right->base, &rItem->body, &sp50, &D_8015E420);
                    return;
                }
            }
        }
    }
}

extern Vec3f D_8015E430;
extern ColliderTrisItemDim D_8015E440;
extern ColliderTrisItemDim D_8015E478; 

//Check ColliderTris to ColliderQuad
void func_80060704(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
    ColliderTris* left = (ColliderTris*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    ColliderTrisItem* lItem;
    Vec3f sp68;
    Vec3f sp5C;

    if (left->count > 0 && left->list != NULL) {
        if (func_8005DF50(&right->body) != 1) {
            func_800CE3C0(&D_8015E440, &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
            func_800CE3C0(&D_8015E478, &right->dim.quad[1], &right->dim.quad[0], &right->dim.quad[2]);
            for (lItem = left->list; lItem < left->list + left->count; lItem++) {
                if (func_8005DF2C(&lItem->body) == 1) {
                    continue;
                }
                if (func_8005DF74(&lItem->body, &right->body) == 1) {
                    continue;
                }
                if (func_800D0104(&D_8015E440, &lItem->dim, &D_8015E430) == 1
                    || func_800D0104(&D_8015E478, &lItem->dim, &D_8015E430) == 1) {
                    sp68.x = (lItem->dim.poly[0].x + lItem->dim.poly[1].x + lItem->dim.poly[2].x) * (1.0f / 3);
                    sp68.y = (lItem->dim.poly[0].y + lItem->dim.poly[1].y + lItem->dim.poly[2].y) * (1.0f / 3);
                    sp68.z = (lItem->dim.poly[0].z + lItem->dim.poly[1].z + lItem->dim.poly[2].z) * (1.0f / 3);
                    sp5C.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * (1.0f / 4);
                    sp5C.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * (1.0f / 4);
                    sp5C.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * (1.0f / 4);
                    func_8005E81C(globalCtx, &left->base, &lItem->body, &sp68, &right->base, &right->body, &sp5C, &D_8015E430);
                    return;
                }
            }
        }
    }
}

extern Vec3f D_8015E4B0;
extern ColliderTrisItemDim D_8015E4C0;
extern ColliderTrisItemDim D_8015E4F8;

//Check ColliderQuad to ColliderTris
void func_80060994(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderTris* right = (ColliderTris*)r;
    ColliderTrisItem* rItem;
    Vec3f sp68;
    Vec3f sp5C;

    if (right->count > 0 && right->list != NULL) {
        if (func_8005DF2C(&left->body) != 1) {
            func_800CE3C0(&D_8015E4C0, &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
            func_800CE3C0(&D_8015E4F8, &left->dim.quad[1], &left->dim.quad[0], &left->dim.quad[2]);
            for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                if (func_8005DF50(&rItem->body) == 1) {
                    continue;
                }
                if (func_8005DF74(&left->body, &rItem->body) == 1) {
                    continue;
                }
                if (func_800D0104(&D_8015E4C0, &rItem->dim, &D_8015E4B0) == 1
                    || func_800D0104(&D_8015E4F8, &rItem->dim, &D_8015E4B0) == 1) {
                    if (func_8005D218(globalCtx, left, &D_8015E4B0) != 0) {
                        sp5C.x = (rItem->dim.poly[0].x + rItem->dim.poly[1].x + rItem->dim.poly[2].x) * (1.0f / 3);
                        sp5C.y = (rItem->dim.poly[0].y + rItem->dim.poly[1].y + rItem->dim.poly[2].y) * (1.0f / 3);
                        sp5C.z = (rItem->dim.poly[0].z + rItem->dim.poly[1].z + rItem->dim.poly[2].z) * (1.0f / 3);
                        sp68.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) * (1.0f / 4);
                        sp68.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) * (1.0f / 4);
                        sp68.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) * (1.0f / 4);
                        func_8005E81C(globalCtx, &left->base, &left->body, &sp68, &right->base, &rItem->body, &sp5C, &D_8015E4B0);
                        return;
                    }
                }
            }
        }
    }
}

extern ColliderTrisItemDim D_8015E530[2];
extern Vec3f D_8015E598;
extern ColliderTrisItemDim D_8015E5A8[2];

//Check ColliderQuad to ColliderQuad
void func_80060C2C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
    func_800CE3C0(&D_8015E5A8[0], &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
    func_800CE3C0(&D_8015E5A8[1], &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
    func_800CE3C0(&D_8015E530[0], &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
    func_800CE3C0(&D_8015E530[1], &right->dim.quad[2], &right->dim.quad[1], &right->dim.quad[0]);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            if (func_800D0104(&D_8015E5A8[j], &D_8015E530[i], &D_8015E598) == 1) {
                if (func_8005D218(globalCtx, left, &D_8015E598) != 0) {
                    sp6C.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) * (1.0f / 4);
                    sp6C.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) * (1.0f / 4);
                    sp6C.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) * (1.0f / 4);
                    sp60.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * (1.0f / 4);
                    sp60.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * (1.0f / 4);
                    sp60.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * (1.0f / 4);
                    func_8005E81C(globalCtx, &left->base, &left->body, &sp6C, &right->base, &right->body, &sp60, &D_8015E598);
                    return;
                }
            }
        }
    }
}

//D_8011DF5C ColliderJntSph
void func_80060EBC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
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

//D_8011DF5C ColliderCylinder
void func_80060F94(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
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

//D_8011DF5C ColliderTris
void func_80061028(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
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

//D_8011DF5C ColliderQuad
void func_8006110C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
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

void func_800611A0(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider** col;
    Collider* temp;

    static void (*D_8011DF5C[4])(GlobalContext*, CollisionCheckContext*, Collider*) = {
            func_80060EBC, func_80060F94, func_80061028, func_8006110C
    };

    for (col = check->colAc; col < check->colAc + check->colAcCount; col++) {
        temp = *col;
        if (temp != NULL) {
            if (temp->acFlags & 1) {
                if (temp->actor == NULL || temp->actor->update != NULL) {
                    (*D_8011DF5C[temp->shape])(globalCtx, check, temp);
                }
            }
        }
    }
}

void func_80061274(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    Collider** col;
    Collider* temp;

    static void (*D_8011DF6C[4][4])(GlobalContext*, CollisionCheckContext*, Collider*, Collider*) = {
    {func_8005E9C0, func_8005EC6C, func_8005F17C, func_8005F5B0},
    {func_8005EEE0, func_8005FA30, func_8005FC04, func_8005FF90},
    {func_8005F39C, func_8005FDCC, func_800604B0, func_80060704},
    {func_8005F7D0, func_80060204, func_80060994, func_80060C2C}
    };

    for (col = check->colAc; col < check->colAc + check->colAcCount; col++) {
        temp = *col;
        if (temp == NULL) {
            continue;
        }
        else if (!(temp->acFlags & 1)) {
            continue;
        }
        else if (temp->actor != NULL && temp->actor->update == NULL) {
            continue;
        }
        else if (!((temp->acFlags & collider->atFlags) & 0x38)) {
            continue;
        }
        else if (collider == temp) {
            continue;
        }

        else if ((collider->atFlags & 0x40) || collider->actor == NULL || temp->actor != collider->actor) {
            (*D_8011DF6C[collider->shape][temp->shape])(globalCtx, check, collider, temp);
        }
    }
}

//Test Attack Collisions
void func_8006139C(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider** colAt;
    Collider* colliderAt;

    if (check->colAtCount != 0) {
        if (check->colAcCount != 0) {
            for (colAt = check->colAt; colAt < check->colAt + check->colAtCount; colAt++) {
                colliderAt = *colAt;
                if (colliderAt != NULL) {
                    if (colliderAt->atFlags & 1) {
                        if ((colliderAt->actor == NULL) || (colliderAt->actor->update != NULL)) {
                            func_80061274(globalCtx, check, colliderAt);
                        }
                    }
                }
            }
            func_800611A0(globalCtx, check);
        }
    }
}

//Get mass type
s32 func_8006146C(u8 mass) {
    if (mass == 0xFF) {
        return 0;
    }
    if (mass == 0xFE) {
        return 1;
    }
    return 2;
}

#ifdef NON_MATCHING
//SetOC collision, perform elastic collision
//Regalloc issues, possibly logic issues too
void func_800614A4(Collider* left, ColliderBody* leftBody, Vec3f* leftv,
    Collider* right, ColliderBody* rightBody, Vec3f* rightv, f32 arg6) {
    f32 temp_f0;
    f32 leftDisplacementFactor;
    f32 rightDisplacementFactor;
    f32 xzDist; //sp40
    f32 leftMass;
    f32 rightMass; //sp38
    f32 totalMass; //sp34
    f32 inverseTotalMass;
    f32 xDelta;
    f32 zDelta;
    Actor* leftActor; //sp24
    Actor* rightActor; //sp20
    s32 rightMassType;
    s32 leftMassType; //sp18

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
    if (leftActor == NULL
        || rightActor == NULL
        || (left->maskA & 4) != 0
        || (right->maskA & 4) != 0) {
        return;
    }
    leftMassType = func_8006146C(leftActor->sub_98.mass);
    rightMassType = func_8006146C(rightActor->sub_98.mass);
    leftMass = leftActor->sub_98.mass; //ad8734:    bgez    t2,0xad8748
    rightMass = rightActor->sub_98.mass; //ad8754:    bgez    t3,0xad8768
    totalMass = leftMass + rightMass;
    if (fabsf(totalMass) < 0.008f) { //ad8790:    bc1fl   0xad87b0 ~>
        leftMass = 1.0f;
        rightMass = 1.0f;
        totalMass = 2.0f;
    }
    //leftMass = leftv->x;
    xDelta = rightv->x - leftv->x;
    zDelta = rightv->z - leftv->z;
    xzDist = sqrtf(xDelta * xDelta + zDelta * zDelta);
    //ad87e0
    if (leftMassType == 0) { //ad87e4:    bnez    v1,0xad8804 ~>
        if (rightMassType == 0) { //ad87ec:    beqz    v0,0xad8964 ~>
            return;
        }
        else {
            leftDisplacementFactor = 0.0f;
            rightDisplacementFactor = 1.0f;
            //ad87fc:    b       0xad888c ~>
        }
    }
    else if (leftMassType == 1) { //ad8804:    bne     v1,a0,0xad884c ~>
        if (rightMassType == 0) { //ad880c:    bnez    v0,0xad8824 ~>
            leftDisplacementFactor = 1.0f;
            rightDisplacementFactor = 0.0f;
        }
        else if (rightMassType == 1) { //ad8824:    bne     v0,a0,0xad883c ~>
            leftDisplacementFactor = 0.5f;
            rightDisplacementFactor = 0.5f;
            //block_26:
        }
        else {
            leftDisplacementFactor = 0.0f;
            rightDisplacementFactor = 1.0f;
            //ad8844:    b       0xad888c ~>
        }
    }
    else {
        if (rightMassType == 2) { //ad884c:    bne     v0,at,0xad8878 ~>
            inverseTotalMass = 1.0f / totalMass;
            leftDisplacementFactor = rightMass * inverseTotalMass;
            rightDisplacementFactor = leftMass * inverseTotalMass;
            //ad8870:    b       0xad8888 ~>
        }
        else {
            leftDisplacementFactor = 1.0f;
            rightDisplacementFactor = 0.0f;
        }
    }

    if (!(fabsf(xzDist) < 0.008f)) { //ad88a4:    bc1tl   0xad8910 ~>
        temp_f0 = arg6 / xzDist;
        xDelta *= temp_f0;
        zDelta *= temp_f0;
        leftActor->sub_98.displacement.x += -xDelta * leftDisplacementFactor;
        leftActor->sub_98.displacement.z += -zDelta * leftDisplacementFactor;
        rightActor->sub_98.displacement.x += xDelta * rightDisplacementFactor;
        rightActor->sub_98.displacement.z += zDelta * rightDisplacementFactor;
    }
    else if (!(arg6 == 0.0f)) {
        leftActor->sub_98.displacement.x += -arg6 * leftDisplacementFactor;
        rightActor->sub_98.displacement.x += arg6 * rightDisplacementFactor;
    }
    else {
        leftActor->sub_98.displacement.x -= leftDisplacementFactor;
        rightActor->sub_98.displacement.x += rightDisplacementFactor;
    }
}

#else
void func_800614A4(Collider* left, ColliderBody* leftBody, Vec3f* leftv,
    Collider* right, ColliderBody* rightBody, Vec3f* rightv, f32 arg6);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800614A4.s")
#endif // NON_MATCHING

//CollisionCheck_OC Check ColliderJntSph to ColliderJntSph
void func_800617D4(GlobalContext* globalCtx, CollisionCheckContext* check,  Collider* l, Collider* r) {
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
                if (func_800CFC8C(&lItem->dim.posr, &rItem->dim.posr, &sp74) == 1) {
                    Math_Vec3s_ToVec3f(&sp68, &lItem->dim.posr.pos);
                    Math_Vec3s_ToVec3f(&sp5C, &rItem->dim.posr.pos);
                    func_800614A4(&left->base, &lItem->body, &sp68, &right->base, &rItem->body, &sp5C, sp74);
                }
            }
        }
    }
}

//CollisionCheck_OC Check ColliderJntSph to ColliderCylinder
void func_8006199C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
            if (func_800CFD84(&lItem->dim.posr, &right->dim, &sp78) == 1) {
                Math_Vec3s_ToVec3f(&sp6C, &lItem->dim.posr.pos);
                Math_Vec3s_ToVec3f(&sp60, &right->dim.position);
                func_800614A4(&left->base, &lItem->body, &sp6C, &right->base, &right->body, &sp60, sp78);
            }
        }
    }
}

//CollisionCheck_OC Check ColliderCylinder to ColliderJntSph
void func_80061AF8(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
    func_8006199C(globalCtx, check, r, l);
}

//CollisionCheck_OC Check ColliderCylinder to ColliderCylinder
void func_80061B24(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
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
    if (func_800CFF14(&left->dim, &right->dim, &sp4C) == 1) {
        Math_Vec3s_ToVec3f(&sp40, &left->dim.position);
        Math_Vec3s_ToVec3f(&sp34, &right->dim.position);
        func_800614A4(&left->base, &left->body, &sp40, &right->base, &right->body, &sp34, sp4C);
    }
}

//CollisionCheck_OC test ?
s32 func_80061BF4(Collider* collider) {
    if (!(collider->maskA & 1)) {
        return 1;
    }
    return 0;
}

//CollisionCheck_OC test ?
s32 func_80061C18(Collider* arg0, Collider* arg1) {
    if (!((arg0->maskA & arg1->maskB) & 0x38)
        || !((arg0->maskB & arg1->maskA) & 0x38)
        || ((arg0->maskB & 2) && (arg1->maskB & 4))
        || ((arg1->maskB & 2) && (arg0->maskB & 4))) {
        return 1;
    }
    if (arg0->actor == arg1->actor) {
        return 1;
    }
    return 0;
}

//CollisionCheck_OC()
void func_80061C98(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider** phi_s2;
    Collider** phi_s0;
    Collider** new_var;
    Collider** new_var2;
    void(*test)(GlobalContext*, CollisionCheckContext*, Collider*, Collider*);

    static void (*D_8011DFAC[4][4])(GlobalContext*, CollisionCheckContext*, Collider*, Collider*) = {
        {func_800617D4, func_8006199C, NULL, NULL},
        {func_80061AF8, func_80061B24, NULL, NULL},
        {NULL, NULL, NULL, NULL},
        {NULL, NULL, NULL, NULL}
    };

    for (phi_s2 = check->colOc; phi_s2 < check->colOc + check->colOcCount; phi_s2++) {
        if (*phi_s2 == NULL || func_80061BF4(*phi_s2) == 1) {
            continue;
        }
        for (phi_s0 = phi_s2 + 1; phi_s0 < check->colOc + check->colOcCount; phi_s0++) {
            if (*phi_s0 == NULL || func_80061BF4(*phi_s0) == 1 || func_80061C18(*phi_s2, *phi_s0) == 1) {
                continue;
            }
            new_var2 = phi_s0;
            new_var = phi_s2;
            test = D_8011DFAC[(*new_var)->shape][(*new_var2)->shape];
            if (test == NULL) {
                osSyncPrintf("CollisionCheck_OC():未対応 %d, %d\n", (*new_var)->shape, (*new_var2)->shape);
                //EUC-JP: 未対応 | Not compatible
                continue;
            }
            (*test)(globalCtx, check, *new_var, *new_var2);
        }
    }
}

//Initialize SubActorStruct98
void func_80061E48(SubActorStruct98* arg0) {
    static SubActorStruct98 init = { 0, {0, 0, 0}, 10, 10, 0, 50, 8, 0, 0, 0, 0 };
    *arg0 = init;
}

void func_80061E8C(SubActorStruct98* arg0) {
    arg0->damage = 0;
    arg0->damageEffect = 0;
    arg0->impactEffect = 0;
    arg0->unk_1B = 0;
    arg0->displacement.z = 0.0f;
    arg0->displacement.y = 0.0f;
    arg0->displacement.x = 0.0f;
}

void func_80061EB0(SubActorStruct98* arg0, SubActor98Init* arg1) {
    arg0->health = arg1->health;
    arg0->unk_10 = arg1->unk_02;
    arg0->unk_12 = arg1->unk_04;
    arg0->mass = arg1->mass;
}

void func_80061ED4(SubActorStruct98* arg0, ActorDamageChart* arg1, SubActor98Init* arg2) {
    arg0->health = arg2->health;
    arg0->damageChart = arg1;
    arg0->unk_10 = arg2->unk_02;
    arg0->unk_12 = arg2->unk_04;
    arg0->mass = arg2->mass;
}

void func_80061EFC(SubActorStruct98* arg0, ActorDamageChart* arg1, SubActor98Init_2* arg2) {
    arg0->health = arg2->health;
    arg0->damageChart = arg1;
    arg0->unk_10 = arg2->unk_02;
    arg0->unk_12 = arg2->unk_04;
    arg0->unk_14 = arg2->unk_06;
    arg0->mass = arg2->mass;
}

void func_80061F2C(SubActorStruct98* arg0, s32 arg1, SubActor98Init_2* arg2) {
    func_80061EFC(arg0, CollisionBtlTbl_Get(arg1), arg2);
}

//Apply AC damage effect
void func_80061F64(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, ColliderBody* body) {
    ActorDamageChart* tbl;
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
    tbl = collider->actor->sub_98.damageChart;
    if (tbl == NULL) {
        damage = (f32)body->acHitItem->toucher.damage - (f32)body->bumper.defense;
        if (damage < 0) {
            damage = 0;
        }
    }
    else {
        for (i = 0, flags = body->acHitItem->toucher.flags; i != 0x20; i++, flags >>= 1) {
            if (flags == 1) {
                break;
            }
        }

        tblLookup = tbl->table[i];
        damage = tblLookup & 0xF;
        collider->actor->sub_98.damageEffect = tblLookup >> 4 & 0xF;
    }
    if (!(collider->acFlags & 4)) {
        collider->actor->sub_98.damage = (u32)(collider->actor->sub_98.damage + damage);
    }
}

//Apply ColliderJntSph AC damage effect
void func_8006216C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    ColliderJntSph* jntSph = (ColliderJntSph*)collider;
    s32 i;

    if (!(jntSph->count > 0) || jntSph->list == NULL) {
        return;
    }
    for (i = 0; i < jntSph->count; i++) {
        func_80061F64(globalCtx, check, &jntSph->base, &jntSph->list[i].body);
    }
}

//Apply ColliderCylinder AC damage effect
void func_80062210(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    ColliderCylinder* cylinder = (ColliderCylinder*)collider;
    func_80061F64(globalCtx, check, &cylinder->base, &cylinder->body);
}

//Apply ColliderTris AC damage effect
void func_80062230(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    ColliderTris* tris = (ColliderTris*)collider;
    s32 i;

    for (i = 0; i < tris->count; i++) {
        func_80061F64(globalCtx, check, collider, &tris->list[i].body);
    }
}

//Apply ColliderQuad AC damage effect
void func_800622C4(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    ColliderQuad* quad = (ColliderQuad*)collider;
    func_80061F64(globalCtx, check, &quad->base, &quad->body);
}

//Apply all AC damage effects
void func_800622E4(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider* collider;
    s32 i;

    static void(*D_8011E008[4])(GlobalContext*, CollisionCheckContext*, Collider*) = {
        func_8006216C, func_80062210, func_80062230, func_800622C4
    };

    for (i = 0; i < check->colAcCount; i++) {
        collider = check->colAc[i];
        if (collider == 0) {
            continue;
        }
        if ((collider->acFlags & 0x40)) {
            continue;
        }
        (*D_8011E008[collider->shape])(globalCtx, check, collider);
    }
}

extern Line D_8015E610;
//CollisionCheck_generalLineOcCheck ColliderJntSph 
s32 func_800623A4(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, Vec3f* arg3, Vec3f* arg4) {
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
        if (func_800CE600(&item->dim.posr, &D_8015E610) == 1) {
            return 1;
        }
    }
    return 0;
}

extern Vec3f D_8015E628;
extern Vec3f D_8015E638;
//CollisionCheck_generalLineOcCheck ColliderCylinder 
s32 func_800624BC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, Vec3f* arg3, Vec3f* arg4) {
    ColliderCylinder* cylinder = (ColliderCylinder*)collider;
    if (!(cylinder->body.ocFlags & 1)) {
        return 0;
    }
    if (func_800CEE0C(&cylinder->dim, arg3, arg4, &D_8015E628, &D_8015E638) != 0) {
        return 1;
    }
    return 0;
}

//CollisionCheck_generalLineOcCheck()
s32 func_80062530(GlobalContext* globalCtx, CollisionCheckContext* check, Vec3f* camera_3C, Vec3f* arg3, Actor** arg4, s32 arg5) {
    Collider* collider;
    s32(*t)(GlobalContext*, CollisionCheckContext*, Collider*, Vec3f*, Vec3f*);
    Collider** c;
    s32 i;
    s32 test;
    s32 result;

    static s32(*D_8011E018[4])(GlobalContext*, CollisionCheckContext*, Collider*, Vec3f*, Vec3f*) = {
        func_800623A4, func_800624BC, NULL, NULL
    };

    result = 0;
    for (c = check->colOc; c < check->colOc + check->colOcCount; c++) {
        if (func_80061BF4(*c) == 1) {
            continue;
        }
        test = 0;
        for (i = 0; i < arg5; i++)
        {
            if ((*c)->actor == arg4[i])
            {
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
            //EUC-JP: 未対応 %dタイプ | %d's type is not supported
        }
        else {
            result = (*t)(globalCtx, check, collider, camera_3C, arg3);
            if (result != 0) {
                break;
            }
        }
    }
    return result;
}

s32 func_8006268C(GlobalContext* globalCtx, CollisionCheckContext* check, Vec3f* arg2, Vec3f* arg3) {
    func_80062530(globalCtx, check, arg2, arg3, NULL, 0);
}

s32 func_800626B0(GlobalContext* globalCtx, CollisionCheckContext* check, Vec3f* camera_3C, Vec3f* arg3, Actor** arg4, s32 arg5) {
    func_80062530(globalCtx, check, camera_3C, arg3, arg4, arg5);
}

void ActorCollider_Cylinder_Update(Actor* actor, ColliderCylinder* collider) {
    collider->dim.position.x = (s32)actor->posRot.pos.x;
    collider->dim.position.y = (s32)actor->posRot.pos.y;
    collider->dim.position.z = (s32)actor->posRot.pos.z;
}

//Set ColliderCylinder position
void func_80062718(ColliderCylinder* collider, Vec3s* pos) {
    collider->dim.position.x = pos->x;
    collider->dim.position.y = pos->y;
    collider->dim.position.z = pos->z;
}

//Set ColliderQuad vertices
void func_80062734(ColliderQuad* collider, Vec3f* a, Vec3f* b, Vec3f* c, Vec3f* d) {
    Math_Vec3f_Copy(&collider->dim.quad[2], c);
    Math_Vec3f_Copy(&collider->dim.quad[3], d);
    Math_Vec3f_Copy(&collider->dim.quad[0], a);
    Math_Vec3f_Copy(&collider->dim.quad[1], b);
    func_8005CEDC(&collider->dim);
}

//Set ColliderTrisItem at index
void func_800627A0(ColliderTris* collider, s32 index, Vec3f* a, Vec3f* b, Vec3f* c) {
    ColliderTrisItem* item;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    item = &collider->list[index];
    Math_Vec3f_Copy(&item->dim.poly[0], a);
    Math_Vec3f_Copy(&item->dim.poly[1], b);
    Math_Vec3f_Copy(&item->dim.poly[2], c);
    func_800CC8B4(a, b, c, &sp40, &sp3C, &sp38, &sp34);
    item->dim.unitNormal.x = sp40;
    item->dim.unitNormal.y = sp3C;
    item->dim.unitNormal.z = sp38;
    item->dim.normalDist = sp34;
} 

//Set ColliderTrisItem at index
void func_8006285C(GlobalContext* globalCtx, ColliderTris *collider, s32 index, ColliderTrisItemDimInit* init) {
    ColliderTrisItem* item = &collider->list[index];
    func_8005C608(globalCtx, &item->dim, init);
}

#ifdef NON_MATCHING
//Codegen OK, .bss section problems
void func_800628A4(s32 arg0, ColliderJntSph* collider) {
    s32 phi_s3;

    static Vec3f D_8015CF00;
    static Vec3f D_8015E648;

    for (phi_s3 = 0; phi_s3 < collider->count; phi_s3++) {
        if (arg0 == collider->list[phi_s3].dim.unk_14) {
            D_8015E648.x = collider->list[phi_s3].dim.unk_00.pos.x;
            D_8015E648.y = collider->list[phi_s3].dim.unk_00.pos.y;
            D_8015E648.z = collider->list[phi_s3].dim.unk_00.pos.z;
            Matrix_MultVec3f(&D_8015E648, &D_8015CF00);
            collider->list[phi_s3].dim.posr.pos.x = (s32)D_8015CF00.x;
            collider->list[phi_s3].dim.posr.pos.y = (s32)D_8015CF00.y;
            collider->list[phi_s3].dim.posr.pos.z = (s32)D_8015CF00.z;
            collider->list[phi_s3].dim.posr.radius = (s32)((f32)collider->list[phi_s3].dim.unk_00.radius * collider->list[phi_s3].dim.scale);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800628A4.s")
#endif //NON_MATCHING

#ifdef NON_MATCHING
//.bss section problems
void func_80062A28(GlobalContext* globalCtx, Vec3f* v) {
    s32 sp24;
    static EffSparkParams D_8015CF10;

    D_8015CF10.position.x = (s32)v->x;
    D_8015CF10.position.y = (s32)v->y;
    D_8015CF10.position.z = (s32)v->z;
    D_8015CF10.particleFactor1 = 5;
    D_8015CF10.particleFactor2 = 5;
    D_8015CF10.colorStart[0].r = (u8)0x80;
    D_8015CF10.colorStart[0].g = (u8)0;
    D_8015CF10.colorStart[0].b = (u8)0x40;
    D_8015CF10.colorStart[0].a = (u8)0xFF;
    D_8015CF10.colorStart[1].r = (u8)0x80;
    D_8015CF10.colorStart[1].g = (u8)0;
    D_8015CF10.colorStart[1].b = (u8)0x40;
    D_8015CF10.colorStart[1].a = (u8)0xFF;
    D_8015CF10.colorStart[2].r = (u8)0xFF;
    D_8015CF10.colorStart[2].g = (u8)0x80;
    D_8015CF10.colorStart[2].b = (u8)0;
    D_8015CF10.colorStart[2].a = (u8)0xFF;
    D_8015CF10.colorStart[3].r = (u8)0xFF;
    D_8015CF10.colorStart[3].g = (u8)0x80;
    D_8015CF10.colorStart[3].b = (u8)0;
    D_8015CF10.colorStart[3].a = (u8)0xFF;
    D_8015CF10.colorEnd[0].r = (u8)0x40;
    D_8015CF10.colorEnd[0].g = (u8)0;
    D_8015CF10.colorEnd[0].b = (u8)0x20;
    D_8015CF10.colorEnd[0].a = (u8)0;
    D_8015CF10.colorEnd[1].r = (u8)0x40;
    D_8015CF10.colorEnd[1].g = (u8)0;
    D_8015CF10.colorEnd[1].b = (u8)0x20;
    D_8015CF10.colorEnd[1].a = (u8)0;
    D_8015CF10.colorEnd[2].r = (u8)0x80;
    D_8015CF10.colorEnd[2].g = (u8)0;
    D_8015CF10.colorEnd[2].b = (u8)0x40;
    D_8015CF10.colorEnd[2].a = (u8)0;
    D_8015CF10.colorEnd[3].r = (u8)0x80;
    D_8015CF10.colorEnd[3].g = (u8)0;
    D_8015CF10.colorEnd[3].b = (u8)0x40;
    D_8015CF10.colorEnd[3].a = (u8)0;
    D_8015CF10.age = 0;
    D_8015CF10.duration = 16;
    D_8015CF10.velocity = 8.0f;
    D_8015CF10.gravity = -1.0f;
    Effect_Add(globalCtx, &sp24, 0, 0, 1, &D_8015CF10);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062A28.s")
#endif //NON_MATCHING

#ifdef NON_MATCHING
//.bss section problems
void func_80062B80(GlobalContext* globalCtx, Vec3f* v) {
    s32 sp24;
    static EffSparkParams D_8015D3D8;

    D_8015D3D8.position.x = (s32)v->x;
    D_8015D3D8.position.y = (s32)v->y;
    D_8015D3D8.position.z = (s32)v->z;
    D_8015D3D8.particleFactor1 = 5;
    D_8015D3D8.particleFactor2 = 5;
    D_8015D3D8.colorStart[0].r = (u8)0xFF;
    D_8015D3D8.colorStart[0].g = (u8)0xFF;
    D_8015D3D8.colorStart[0].b = (u8)0xFF;
    D_8015D3D8.colorStart[0].a = (u8)0xFF;
    D_8015D3D8.colorStart[1].r = (u8)0x64;
    D_8015D3D8.colorStart[1].g = (u8)0x64;
    D_8015D3D8.colorStart[1].b = (u8)0x64;
    D_8015D3D8.colorStart[1].a = (u8)0x64;
    D_8015D3D8.colorStart[2].r = (u8)0x64;
    D_8015D3D8.colorStart[2].g = (u8)0x64;
    D_8015D3D8.colorStart[2].b = (u8)0x64;
    D_8015D3D8.colorStart[2].a = (u8)0x64;
    D_8015D3D8.colorStart[3].r = (u8)0x64;
    D_8015D3D8.colorStart[3].g = (u8)0x64;
    D_8015D3D8.colorStart[3].b = (u8)0x64;
    D_8015D3D8.colorStart[3].a = (u8)0x64;
    D_8015D3D8.colorEnd[0].r = (u8)0x32;
    D_8015D3D8.colorEnd[0].g = (u8)0x32;
    D_8015D3D8.colorEnd[0].b = (u8)0x32;
    D_8015D3D8.colorEnd[0].a = (u8)0x32;
    D_8015D3D8.colorEnd[1].r = (u8)0x32;
    D_8015D3D8.colorEnd[1].g = (u8)0x32;
    D_8015D3D8.colorEnd[1].b = (u8)0x32;
    D_8015D3D8.colorEnd[1].a = (u8)0x32;
    D_8015D3D8.colorEnd[2].r = (u8)0x32;
    D_8015D3D8.colorEnd[2].g = (u8)0x32;
    D_8015D3D8.colorEnd[2].b = (u8)0x32;
    D_8015D3D8.colorEnd[2].a = (u8)0x32;
    D_8015D3D8.colorEnd[3].r = (u8)0;
    D_8015D3D8.colorEnd[3].g = (u8)0;
    D_8015D3D8.colorEnd[3].b = (u8)0;
    D_8015D3D8.colorEnd[3].a = (u8)0;
    D_8015D3D8.age = 0;
    D_8015D3D8.duration = 16;
    D_8015D3D8.velocity = 8.0f;
    D_8015D3D8.gravity = -1.0f;
    Effect_Add(globalCtx, &sp24, 0, 0, 1, &D_8015D3D8);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062B80.s")
#endif // NON_MATCHING

void func_80062CD4(GlobalContext* globalCtx, Vec3f* v) {
    s32 sp24;
    static EffShieldParticleInit init = {
            16, {0, 0, 0},
            {0x00, 0xC8, 0xFF, 0xFF }, {0xFF, 0xFF, 0xFF, 0xFF},
            {0xFF, 0xFF, 0x80, 0xFF }, {0xFF, 0xFF, 0x00, 0xFF},
            {0xFF, 0x40, 0x00, 0xC8 }, {0xFF, 0x00, 0x00, 0xFF},
            2.1f, 35.0f, 30.0f, 8,
            {0, 0, 0, 0x00, 0x80, 0xFF, 0x00, 300}, 1
    };
    
    init.position.x = (s32)v->x;
    init.position.y = (s32)v->y;
    init.position.z = (s32)v->z;
    init.lightParams.posX = init.position.x;
    init.lightParams.posY = init.position.y;
    init.lightParams.posZ = init.position.z;
    Effect_Add(globalCtx, &sp24, 3, 0, 1, &init);
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
    s32 sp24;
    static EffShieldParticleInit init = {
        16, {0, 0, 0},
        {0x00, 0xC8, 0xFF, 0xFF }, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0x80, 0xFF }, {0xFF, 0xFF, 0x00, 0xFF},
        {0xFF, 0x40, 0x00, 0xC8 }, {0xFF, 0x00, 0x00, 0xFF},
        2.1f, 35.0f, 30.0f, 8,
        {0, 0, 0, 0x00, 0x80, 0xFF, 0x00, 300}, 0
    };
    
    init.position.x = (s32)v->x;
    init.position.y = (s32)v->y;
    init.position.z = (s32)v->z;
    init.lightParams.posX = init.position.x;
    init.lightParams.posY = init.position.y;
    init.lightParams.posZ = init.position.z;

    Effect_Add(globalCtx, &sp24, 3, 0, 1, &init);
    Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, arg2, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

#ifdef NON_MATCHING
//Incomplete, possibly not using the same logic
//F12 = (f32)Dark Link + A8(0x98 + 0x10)
//F14 = (f32)Dark Link + AA(0x98 + 0x12)
//A2 = f32 unk
//A3 = Vec3f * Dark Link
//SP + 0x10 = Vec3f * Deku Nut
//SP + 0x14 = Vec3f * SP + 0xA8
//SP + 0x18 = UNK * SP + 0x90
//SP + 0x1C = UNK * SP + 0x84
s32 func_80062ECC(f32 actor_ac_98_10, f32 actor_ac_98_12, f32 arg2, Vec3f* arg3,
    Vec3f* arg4, Vec3f* arg5, Vec3f* arg6, Vec3f* arg7) {
    //sp -0x78

    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp38;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f12_2;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16_2;
    f32 temp_f2; //ok
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_v0_3;
    s32 phi_a1;
    s32 phi_a2;
    s32 phi_v1_2;

    sp6C.x = arg4->x - arg3->x;
    sp6C.y = (arg4->y - arg3->y) - arg2; //temp_f14 
    sp6C.z = arg4->z - arg3->z;

    sp60.x = arg5->x - arg3->x;
    sp60.y = (arg5->y - arg3->y) - arg2; //temp_f6
    sp60.z = arg5->z - arg3->z;


    sp54.x = sp60.x - sp6C.x; // temp_f16;
    //sp18 = sp60.y - sp6C.y; // temp_f8;
    sp54.y = sp60.y - sp6C.y; //sp18; // temp_f8; 
    sp54.z = sp60.z - sp6C.z;// temp_f18;

    phi_v0 = 0;

    if (0.0f < sp6C.y) { //ada12c:    bc1f    0xada138 ~>
        phi_v0 = 1;
    }
    if (phi_v0 != 0) { //ada138:    beqzl   v0,0xada188 ~>
        if (sp6C.y < actor_ac_98_12) {
            if (sqrtf((sp6C.x * sp6C.x) + (sp6C.z * sp6C.z)) < actor_ac_98_10) {
                return 3;
            }
        }
    }

    phi_v1 = 0;
    if (0.0f < sp60.y) {
        phi_v1 = 1;
    }
    if (phi_v1 != 0) {
        if (sp60.y < actor_ac_98_12) {
            if (sqrtf((sp60.x * sp60.x) + (sp60.z * sp60.z)) < actor_ac_98_10) {
                return 3;
            }
        }
    }

    sp38 = ((sp6C.x * sp6C.x) + (sp6C.z * sp6C.z)) - (actor_ac_98_10 * actor_ac_98_10);// temp_f12;
    temp_f2 = (sp54.x * sp54.x) + (sp54.z * sp54.z);
    if (!(fabsf(temp_f2) < 0.008f)) { //ada23c:    bc1t    0xada2f0 ~>
        temp_f14_2 = ((sp54.x + sp54.x) * sp6C.x) + ((sp54.z + sp54.z) * sp6C.z);
        temp_f0 = temp_f14_2 * temp_f14_2;
        temp_f12_2 = (4.0f * temp_f2) * sp38;
        if (temp_f0 < temp_f12_2) { //ada280:    bc1f    0xada290 ~>
            return 0;
        }
        temp_f16_2 = temp_f0 - temp_f12_2;
        temp_f0_2 = sqrtf(temp_f16_2);
        if (0.0f < temp_f16_2) {
            phi_v0_3 = 1;
        }
        else {
            phi_v0_3 = 0;
        }

        sp50 = (temp_f0_2 - temp_f14_2) / (temp_f2 + temp_f2);// temp_f16_3;
        if (phi_v0_3 == 1) {
            sp4C = (-temp_f14_2 - temp_f0_2) / (temp_f2 + temp_f2);
        }
    }
    else { //0xada2f0
        temp_f14_3 = ((sp54.x + sp54.x) * sp6C.x) + ((sp54.z + sp54.z) * sp6C.z);
        if (!(fabsf(temp_f14_3) < 0.008f)) { //ada324
            phi_v0_3 = 0;
            sp50 = -sp38 / temp_f14_3;
            phi_v1_2 = 1;
        } //ada340:    b       0xada468
        else {
            if (sp38 <= 0.0f) { //ada358:    bc1f    0xada460 
                if (phi_v0 != 0) //ada360:    beqz    v0,0xada388 ~>
                {
                    phi_v0 = 0;
                    if (sp6C.y < actor_ac_98_12) {
                        phi_v0 = 1;
                    }
                }
                if (phi_v1 != 0) {
                    phi_v1 = 0;
                    if (sp60.y < actor_ac_98_12) {
                        phi_v1 = 1;
                    }
                }
                if (phi_v0 != 0) { //ada3b4
                    if (phi_v1 != 0) { //ada3bc
                        *arg6 = sp6C;
                        *arg7 = sp60;
                        return 2;
                    }
                }
                //ada408
                if (phi_v0 != 0) {
                    *arg6 = sp6C;
                    return 1;
                }
                //ada434
                if (phi_v1 != 0) {
                    *arg6 = sp60;
                    return 1;
                }
            }
            return 0;
        }
    }
    //ada468 800632C8
    if (phi_v0_3 == 0) { //ada468:    bnezl   v0,0xada4a4 ~>
        if (sp50 < 0.0f || 1.0f < sp50) {
            return 0;
        }
    }
    else { //ada4a4
        phi_a1 = 0;
        if (sp50 < 0.0f) {
            phi_a1 = 1;
        }
        if (phi_a1 == 0) {
            phi_a1 = 0;
            if (1.0f < sp50) {
                phi_a1 = 1;
            }
        }
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
            phi_v1_2 = 0;
        }
        if (phi_a2 != 0) {
            phi_v0_3 = 0;
        }
    }
    if (phi_v1_2 == 1) {
        temp_f0_3 = (sp50 * sp54.y) + sp6C.y;
        if ((temp_f0_3 < 0.0f) || (actor_ac_98_12 < temp_f0_3)) {
            phi_v1_2 = 0;
        }
    }
    if (phi_v0_3 == 1) {
        temp_f0_4 = (sp4C * sp54.y) + sp6C.y;
        if ((temp_f0_4 < 0.0f) || (actor_ac_98_12 < temp_f0_4)) {
            phi_v0_3 = 0;
        }
    }
    if (phi_v1_2 == 0 && phi_v0_3 == 0) {
        return 0;
    }
    if (phi_v1_2 == 1) {
        if (phi_v0_3 == 1) {
            arg6->x = (f32)(((sp50 * sp54.x) + sp6C.x) + arg3->x);
            arg6->y = (f32)(((sp50 * sp54.y) + sp6C.y) + arg3->y);
            arg6->z = (f32)(((sp50 * sp54.z) + sp6C.z) + arg3->z);
            arg7->x = (f32)(((sp4C * sp54.x) + sp6C.x) + arg3->x);
            arg7->y = (f32)(((sp4C * sp54.y) + sp6C.y) + arg3->y);
            arg7->z = (f32)(((sp4C * sp54.z) + sp6C.z) + arg3->z);
            return 2;
        }
    }
    if (phi_v1_2 == 1) {
        arg6->x = (f32)(((sp50 * sp54.x) + sp6C.x) + arg3->x);
        arg6->y = (f32)(((sp50 * sp54.y) + sp6C.y) + arg3->y);
        arg6->z = (f32)(((sp50 * sp54.z) + sp6C.z) + arg3->z);
        return 1;
    }
    if (phi_v0_3 == 1) { //ada700
        arg6->x = (f32)(((sp4C * sp54.x) + sp6C.x) + arg3->x);
        arg6->y = (f32)(((sp4C * sp54.y) + sp6C.y) + arg3->y);
        arg6->z = (f32)(((sp4C * sp54.z) + sp6C.z) + arg3->z);
        return 1;
    }
    return 1;
}
#else 
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062ECC.s")
#endif // NON_MATCHING

s32 func_800635D0(s32 arg0) {
    s32 result;

    result = 0;
    if ((arg0 & 0x00400100) != 0) {
        result = 1;
    }
    else if ((arg0 & 0x03000242) != 0) {
        result = 2;
    }
    else  if ((arg0 & 0x48800400) != 0) {
        result = 4;
    }
    else if ((arg0 << 5) < 0) {

        result = 8;
    }

    KREG(7) = result;
    return result;
}
