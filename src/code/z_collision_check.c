#include <ultra64.h>
#include <global.h>

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
    collision->colliderFlags = src->colliderFlags;
    collision->collideFlags = src->collideFlags;
    collision->maskA = src->maskA;
    collision->maskB = 0x10;
    collision->type = src->type;
    return 1;
}

//SetInit Collider (maskB = 0x10)
s32 func_8005B6EC(GlobalContext* globalCtx, Collider* collision, Actor* actor, ColliderInit* src)
{
    collision->actor = actor;
    collision->unk_14 = src->unk_00;
    collision->colliderFlags = src->colliderFlags;
    collision->collideFlags = src->collideFlags;
    collision->maskA = src->maskA;
    collision->maskB = 0x10;
    collision->type = src->maskB;
    return 1;
}

//SetInit Collider (maskB = src->maskB)
s32 func_8005B72C(GlobalContext* globalCtx, Collider* collision, Actor* actor, ColliderInit* src)
{
    collision->actor = actor;
    collision->unk_14 = src->unk_00;
    collision->colliderFlags = src->colliderFlags;
    collision->collideFlags = src->collideFlags;
    collision->maskA = src->maskA;
    collision->maskB = src->maskB;
    collision->type = src->type;
    return 1;
}

//SetAT Collider base
void func_8005B76C(GlobalContext* globalCtx, Collider* collision)
{
    collision->at = NULL;
    collision->colliderFlags &= ~0x6;
}

//SetAC Collider base
void func_8005B784(GlobalContext* globalCtx, Collider* collision)
{
    collision->ac = NULL;
    collision->collideFlags &= ~0x82;
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
    bump->unk_05 = init->unk_05;
    return 1;
}

//Initialize ColliderBody
s32 func_8005B884(GlobalContext* globalCtx, ColliderBody* body) {
    static ColliderBody init = {
        { 0, 0, 0 },
        { (s32)0xFFCFFFFF, 0, 0, {0, 0, 0} },
        0, 0, 0, 0, 0, NULL, 0, NULL,
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
    body->flags2 = bodyInit->bodyFlags2;
    return 1;
}

//SetAT ColliderBody
void func_8005B9B0(GlobalContext* globalCtx, ColliderBody* body)
{
    body->unk18 = NULL;
    body->unk20 = NULL;
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
    body->colBuf = NULL;
    body->colliding = NULL;
    body->bumper.unk_06.y = body->bumper.unk_06.z;
    body->bumper.unk_06.x = body->bumper.unk_06.z;
}

//SetOC ColliderBody
void func_8005BA1C(GlobalContext* globalCtx, ColliderBody* body)
{
    body->flags2 &= ~0x2;
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
    dest->unk_10 = src->unk_0A * 0.01f;
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

//ClObjJntSph?
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
s32 func_8005BE50(GlobalContext* globalCtx, ColliderJntSph* dest, Actor* actor, ColliderJntSphInit* src) {
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

//SetInit Cylinder maskB = 0x10
s32 func_8005C450(GlobalContext* globalCtx, ColliderCylinder* collision, Actor* actor, ColliderCylinderInit* src)
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
s32 func_8005C964(GlobalContext* globalCtx, ColliderTris* dest, Actor* actor, ColliderTrisInit* src) {
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
    dim->max.x = (dim->quad[3].x + dim->quad[2].x) * 0.5f;
    dim->max.y = (dim->quad[3].y + dim->quad[2].y) * 0.5f;
    dim->max.z = (dim->quad[3].z + dim->quad[2].z) * 0.5f;
    dim->min.x = (dim->quad[1].x + dim->quad[0].x) * 0.5f;
    dim->min.y = (dim->quad[1].y + dim->quad[0].y) * 0.5f;
    dim->min.z = (dim->quad[1].z + dim->quad[0].z) * 0.5f;
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

//SetInit ColliderQuad maskB = 0x10
s32 func_8005D0A8(GlobalContext* globalCtx, ColliderQuad* collision, Actor* actor, ColliderQuadInit* src)
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

    if ((quad->body.toucherFlags & 4) == 0) {
        return 1;
    }
    Math_Vec3s_ToVec3f(&sp20, &quad->dim.max);
    temp = func_800CB650(&sp20, arg2);
    if (temp < quad->dim.unk3C) {
        quad->dim.unk3C = temp;
        if (quad->body.unk18 != NULL) {
            func_8005B784(globalCtx, quad->body.unk18);
        }
        if (quad->body.unk20 != NULL) {
            func_8005B9E8(globalCtx, quad->body.unk20);
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

void func_8005D40C(GlobalContext* globalCtx, CollisionCheckContext* check);
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
    

    if ((check->unk2 & 1) == 0) {
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

s32(*D_8011DEF8[])(GlobalContext*, Collider*) = {
    func_8005C124, func_8005C508, func_8005CC98, func_8005D160 };
s32(*D_8011DF08[])(GlobalContext*, Collider*) = {
    func_8005C1AC, func_8005C540, func_8005CD34, func_8005D1A8 };
s32(*D_8011DF18[])(GlobalContext*, Collider*) = {
    func_8005C234, func_8005C578, func_8005CDD0, func_8005D1E0 };

void func_8005DF9C(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
void func_8005DFAC(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
void func_8005E10C(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
void func_8005E26C(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
void func_8005E2A4(GlobalContext* globalCtx, Collider* collider, Vec3f* v);
void func_8005E2C8(GlobalContext* globalCtx, Collider* collider, Vec3f* v);

void (*D_8011DF28[])(GlobalContext*, Collider*, Vec3f*) = {
    func_8005DF9C, func_8005DFAC, func_8005E10C, func_8005E26C, func_8005E2A4, func_8005E2C8 };

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D62C.s")

s32 Actor_CollisionCheck_SetAT(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (collider->type >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 2997);
    }
    check = (void*)check;
    (*&D_8011DEF8[collider->type])(globalCtx, collider);
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

#ifdef NON_MATCHING
//CollisionCheck_setAT_SAC()
s32 func_8005D8AC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider, s32 index) {
    s32 result;

    if (collider->type >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3037);
    }
    //index = (s32)index;
    result = index;
    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    //index = temp_a3;
    (*&D_8011DEF8[collider->type])(globalCtx, collider);
    if (collider->actor != NULL) {
        if (collider->actor->update == NULL) {
            return -1;
        }
    }
    if (check->unk2 & 1) {
        if (index >= check->colAtCount) {
            osSyncPrintf("CollisionCheck_setAT_SAC():全データ数より大きいところに登録しようとしている。\n");
            //EUC-JP: 全データ数より大きいところに登録しようとしている。 | You are trying to register a location that is larger than the total number of data.
            return -1;
        }
        result = index;
        check->colAt[index] = collider;
    }
    else {
        if (check->colAtCount >= 50) {
            osSyncPrintf("CollisionCheck_setAT():インデックスがオーバーして追加不能\n");
            return -1;
        }
        result = check->colAtCount;
        check->colAt[check->colAtCount++] = collider;
    }
    return result;
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D8AC.s")
#endif // DEBUG

s32 Actor_CollisionCheck_SetAC(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (collider->type >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3114);
    }
    check = (void*)check;
    (*&D_8011DF08[collider->type])(globalCtx, collider);
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DB04.s")

//TODO: rename to CollisionCheck_SetOC()
s32 Actor_CollisionCheck_SetOT(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    s32 index;

    if (func_800C0D28(globalCtx) == 1) {
        return -1;
    }
    if (collider->type >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3229);
    }
    check = (void*)check;
    (*D_8011DF18[collider->type])(globalCtx, collider);
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DD5C.s")

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
    if ((body->toucherFlags & 1) == 0) {
        return 1;
    }
    return 0;
}

s32 func_8005DF50(ColliderBody* body) {
    if ((body->bumperFlags & 1) == 0) {
        return 1;
    }
    return 0;
}

s32 func_8005DF74(ColliderBody* left, ColliderBody* right) {
    if ((left->toucher.flags & right->bumper.flags) == 0) {
        return 1;
    }
    return 0;
}

void func_8005DF9C(GlobalContext* globalCtx, Collider* collider, Vec3f* v) {

}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DFAC.s")

void func_8005E2EC(GlobalContext* globalCtx, ColliderBody* arg1, Collider* arg2, Vec3f* arg3) {
    s32 temp_v0;

    temp_v0 = arg1->toucherFlags & 0x18;
    if (temp_v0 == 0) {
        if (arg2->unk_14 != 9) {
            func_80029CA4(globalCtx, 0, arg3);
            if (arg2->actor == NULL) {
                Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return;
            }
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &arg2->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
    }
    if (temp_v0 == 0) {
        func_80029CA4(globalCtx, 3, arg3);
        if (arg2->actor == NULL) {
            func_80062D60(globalCtx, arg3);
            return;
        }
        func_80062DAC(globalCtx, arg3, &arg2->actor->unk_E4);
        return;
    }
    if (temp_v0 == 8) {
        func_80029CA4(globalCtx, 0, arg3);
        if (arg2->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_BOUND, &arg2->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }
    if (temp_v0 == 0x10) {
        func_80029CA4(globalCtx, 1, arg3);
        if (arg2->actor == NULL) {
            Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &arg2->actor->unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
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

extern D_8011DF40_s D_8011DF40[0x0E];

void func_8005E604(GlobalContext* globalCtx, Collider* left, ColliderBody* leftBody,
    Collider* right, ColliderBody* rightBody, Vec3f* arg5) {

    if ((rightBody->bumperFlags & 0x40) == 0) {
        if (((leftBody->toucherFlags & 0x20) != 0) || ((leftBody->toucherFlags & 0x40) == 0)) {
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
    }
}

void func_8005E800(Collider* left, Collider* right) {
    left->colliderFlags |= 4;
    right->collideFlags |= 0x80;
}

//Set AT to AC collision
s32 func_8005E81C(GlobalContext* globalCtx,
    Collider* left, ColliderBody* leftBody, Vec3f* leftv,
    Collider* right, ColliderBody* rightBody, Vec3f* rightv, Vec3f* arg7) {

    if ((right->collideFlags & 4) != 0) {
        if (left->actor != NULL) {
            if (right->actor != NULL) {
                func_8005E800(left, right);
            }
        }
    }
    if ((rightBody->bumperFlags & 8) == 0) {
        left->colliderFlags |= 2;
        left->at = right->actor;
        leftBody->unk18 = right;
        leftBody->unk20 = rightBody; 
        leftBody->toucherFlags |= 2;
        if (left->actor != NULL) {
            left->actor->sub_98.impactEffect = rightBody->bumper.effect;
        }
    }
    right->collideFlags |= 2;
    right->ac = left->actor;
    rightBody->colBuf = left;
    rightBody->colliding = leftBody;
    rightBody->bumperFlags |= 2;
    if (right->actor != NULL) {
        right->actor->sub_98.unk_1B = (u8)leftBody->toucher.effect;
    }
    rightBody->bumper.unk_06.x = (s16)arg7->x;
    rightBody->bumper.unk_06.y = (s16)arg7->y;
    rightBody->bumper.unk_06.z = (s16)arg7->z;
    if (((((leftBody->toucherFlags & 0x20) == 0) && (right->unk_14 != 9)) && (right->unk_14 != 0xB)) && (right->unk_14 != 0xC)) {
        rightBody->bumperFlags |= 0x80;
    }
    else {
        leftBody = (void*)leftBody;
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
    if (left->count > 0 && left->list != NULL && right->count > 0 && right->list != NULL) {
        for (lItem = left->list; lItem < left->list + left->count; lItem++) {
            if (func_8005DF2C(&lItem->body) != 1) {
                for (rItem = right->list; rItem < right->list + right->count; rItem++) {
                    if (func_8005DF50(&rItem->body) != 1) {
                        if (func_8005DF74(&lItem->body, &rItem->body) != 1) {
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
                                if ((right->base.maskB & 0x40) == 0) {
                                    return;
                                }
                            }
                        }
                    }
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

    if (left->count > 0 && left->list != NULL && right->dim.radius > 0 && right->dim.height > 0) {
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

    if (right->count > 0 && right->list != 0 && left->dim.radius > 0 && left->dim.height > 0) {
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
                if ((right->base.maskB & 0x40) == 0) {
                    break;
                }
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

    if (left->count > 0 && left->list != NULL) {
        if (right->count > 0 && right->list != NULL) {
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
                        if ((right->base.maskB & 0x40) == 0) {
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

    if (right->count > 0 && right->list!= NULL) {
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

    if (left->dim.radius > 0 && left->dim.height > 0 && right->dim.radius > 0 && right->dim.height > 0) {
        if (func_8005DF50(&right->body) != 1) {
            //sp38 = temp_a0_2;
            if (func_8005DF2C(&left->body) != 1) {
                if (func_8005DF74(&left->body, &right->body) != 1) {
                    if (func_800CFF34(&left->dim, &right->dim, &sp6C, &sp68) == 1) {
                        Math_Vec3s_ToVec3f(&sp50, &left->dim.position);
                        Math_Vec3s_ToVec3f(&sp44, &right->dim.position);
                        if (!(fabsf(sp68) < 0.008f)) {
                            temp_f0 = (f32)right->dim.radius / sp68;
                            sp5C.y = ((f32)right->dim.position.y + (f32)right->dim.yShift) + ((f32)right->dim.height * 0.5f);
                            sp5C.x = (((f32)left->dim.position.x - right->dim.position.x) * temp_f0) + right->dim.position.x;
                            sp5C.z = (((f32)left->dim.position.z - right->dim.position.z) * temp_f0) + right->dim.position.z;
                        }
                        else {
                            Math_Vec3s_ToVec3f(&sp5C, &right->dim.position);
                        }
                        func_8005E81C(globalCtx, &left->base, &left->body, &sp50, &right->base, &right->body, &sp44, &sp5C);
                    }
                }
            }
        }
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

    if (left->dim.height > 0) {
        if (left->dim.radius > 0) {
            if (func_8005DF2C(&left->body) != 1) {
                if (func_8005DF50(&right->body) != 1) {
                    if (func_8005DF74(&left->body, &right->body) != 1) {
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
                }
            }
        }
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

    if (right->dim.height > 0) {
        if (right->dim.radius > 0) {
            if (func_8005DF50(&right->body) != 1) {
                if (func_8005DF2C(&left->body) != 1) {
                    if (func_8005DF74(&left->body, &right->body) != 1) {
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
                }
            }
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
//extern ColliderTrisItemDim D_8015E564;
extern Vec3f D_8015E598;
extern ColliderTrisItemDim D_8015E5A8[2];
//extern ColliderTrisItemDim D_8015E5DC;

#ifdef NON_MATCHING
//Check ColliderQuad to ColliderQuad
//needs data migration
void func_80060C2C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r) {
    ColliderQuad* left = (ColliderQuad*)l;
    ColliderQuad* right = (ColliderQuad*)r;
    Vec3f sp6C;
    Vec3f sp60;
    s32 sp5C;
    s32 sp50;
    //f32* temp_a3;
    //f32* temp_t7;
    //s32 temp_a0;
    //s32 temp_a0_2;
    //s32 temp_ret;
    //s32 temp_ret_2;
    //s32 temp_ret_3;
    //s32 temp_ret_4;
    //s32 temp_ret_5;
    //s32 temp_s0;
    //s32 temp_s0_2;
    //s32 temp_s1;
    //s32 temp_s1_2;
    //void* temp_s0_3;
    //void* temp_s2;
    ColliderTrisItemDim* phi_s0;
    ColliderTrisItemDim* phi_s2;
    //s32 phi_return;

    //temp_a0 = arg2 + 0x18;
    //sp5C = temp_a0;
    //temp_ret = ;
    //temp_a0_2 = arg3 + 0x18;
    //phi_return = temp_ret;
    if (func_8005DF2C(&left->body) == 1) {
        return;
    }
    //sp50 = temp_a0_2;
    //temp_ret_2 = func_8005DF50(temp_a0_2);
    //phi_return = temp_ret_2;
    if (func_8005DF50(&right->body) == 1) {
        return;
    }
    //temp_ret_3 = func_8005DF74(sp5C, sp50);
    //phi_return = temp_ret_3;
    if (func_8005DF74(&left->body, &right->body) == 1) {
        return;
    }
    //temp_s0 = arg2 + 0x58; 
    //temp_s1 = arg2 + 0x4C;
    func_800CE3C0(&D_8015E5A8[0], &left->dim.quad[2], &left->dim.quad[3], &left->dim.quad[1]);
    func_800CE3C0(&D_8015E5A8[1], &left->dim.quad[2], &left->dim.quad[1], &left->dim.quad[0]);
    //temp_s0_2 = arg3 + 0x58;
    //temp_s1_2 = arg3 + 0x4C;
    func_800CE3C0(&D_8015E530[0], &right->dim.quad[2], &right->dim.quad[3], &right->dim.quad[1]);
    func_800CE3C0(&D_8015E530[1], &right->dim.quad[2], &right->dim.quad[1], &right->dim.quad[0]);
    for (phi_s2 = &D_8015E530; phi_s2 != D_8015E530 + 2; phi_s2++) {
        //phi_s2 = &D_8015E530;
    //loop_4:
        for (phi_s0 = &D_8015E5A8; phi_s0 != D_8015E5A8 + 2; phi_s0++) {
            //    phi_s0 = &D_8015E5A8;
            //loop_5:
                //temp_ret_4 = func_800D0104(phi_s0, phi_s2, &D_8015E598);
                //phi_return = temp_ret_4;
            if (func_800D0104(phi_s0, phi_s2, &D_8015E598) == 1) {
                //temp_ret_5 = func_8005D218(arg0, arg2, &D_8015E598);
                //phi_return = temp_ret_5;
                if (func_8005D218(globalCtx, left, &D_8015E598) != 0) {
                    //temp_t7 = &sp60;
                    //temp_a3 = &sp6C;
                    //sp6C = (((arg2->unk58 + arg2->unk64) + arg2->unk4C) + arg2->unk40) * 0.25f;
                    //sp70 = (((arg2->unk5C + arg2->unk68) + arg2->unk50) + arg2->unk44) * 0.25f;
                    //sp74 = (((arg2->unk60 + arg2->unk6C) + arg2->unk54) + arg2->unk48) * 0.25f;
                    sp6C.x = (right->dim.quad[0].x + (right->dim.quad[1].x + (right->dim.quad[3].x + right->dim.quad[2].x))) * (1.0f / 4);
                    sp6C.y = (right->dim.quad[0].y + (right->dim.quad[1].y + (right->dim.quad[3].y + right->dim.quad[2].y))) * (1.0f / 4);
                    sp6C.z = (right->dim.quad[0].z + (right->dim.quad[1].z + (right->dim.quad[3].z + right->dim.quad[2].z))) * (1.0f / 4);
                    //sp60 = (((arg3->unk58 + arg3->unk64) + arg3->unk4C) + arg3->unk40) * 0.25f;
                    //sp64 = (((arg3->unk5C + arg3->unk68) + arg3->unk50) + arg3->unk44) * 0.25f;
                    //sp68 = (((arg3->unk60 + arg3->unk6C) + arg3->unk54) + arg3->unk48) * 0.25f;
                    sp60.x = (left->dim.quad[0].x + (left->dim.quad[1].x + (left->dim.quad[3].x + left->dim.quad[2].x))) * (1.0f / 4);
                    sp60.y = (left->dim.quad[0].y + (left->dim.quad[1].y + (left->dim.quad[3].y + left->dim.quad[2].y))) * (1.0f / 4);
                    sp60.z = (left->dim.quad[0].z + (left->dim.quad[1].z + (left->dim.quad[3].z + left->dim.quad[2].z))) * (1.0f / 4);
                    func_8005E81C(globalCtx, &left->base, &left->body, &sp6C, &right->base, &right->body, &sp60, &D_8015E598);
                    return;
                }
            }
            //temp_s0_3 = phi_s0 + 0x34;
            //phi_s0 = temp_s0_3;
            //if (temp_s0_3 != &D_8015E610) {
            //    goto loop_5;
            //}
            //temp_s2 = phi_s2 + 0x34;
            //phi_s2 = temp_s2;
            //if (temp_s2 != &D_8015E598) {
            //    goto loop_4;
            //}
        }
    }
    //return phi_return;
}
#else
//Check ColliderQuad to ColliderQuad
void func_80060C2C(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* l, Collider* r);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80060C2C.s")
#endif // NON_MATCHING


#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80060EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80060F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061028.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006110C.s")

extern void (*D_8011DF5C[])(GlobalContext*, CollisionCheckContext*, Collider*);
void func_800611A0(GlobalContext* globalCtx, CollisionCheckContext* check) {
    Collider** col;
    Collider* temp;

    for (col = check->colAc; col < check->colAc + check->colAcCount; col++) {
        temp = *col;
        if (temp != NULL) {
            if (temp->collideFlags & 1) {
                if (temp->actor == NULL || temp->actor->update != NULL) {
                    (*D_8011DF5C[temp->type])(globalCtx, check, temp);
                }
            }
        }
    }
}

extern void (*D_8011DF6C[4][4])(GlobalContext*, CollisionCheckContext*, Collider*, Collider*);
void func_80061274(GlobalContext* globalCtx, CollisionCheckContext* check, Collider* collider) {
    Collider** col;
    Collider* temp;

    for (col = check->colAc; col < check->colAc + check->colAcCount; col++) {
        temp = *col;
        if (temp == NULL) {
            continue;
        }
        else if (!(temp->collideFlags & 1)) {
            continue;
        }
        else if (temp->actor != NULL && temp->actor->update == NULL) {
            continue;
        }
        else if (!((temp->collideFlags & collider->colliderFlags) & 0x38)) {
            continue;
        }
        else if (collider == temp) {
            continue;
        }

        else if ((collider->colliderFlags & 0x40) || collider->actor == NULL || temp->actor != collider->actor) {
            (*D_8011DF6C[collider->type][temp->type])(globalCtx, check, collider, temp);
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
                    if (colliderAt->colliderFlags & 1) {
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

s32 func_8006146C(u8 unk) {
    if (unk == 0xFF) {
        return 0;
    }
    if (unk == 0xFE) {
        return 1;
    }
    return 2;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800614A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006199C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061BF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061ED4.s")
//func_80061ED4 a1 = ActorDamageChart
//void func_80061ED4(void* arg0, ? 32 arg1, void* arg2) {
//    arg0->unk0 = arg1;
//    arg0->unk17 = (u8)arg2->unk0;
//    arg0->unk10 = (s16)arg2->unk2;
//    arg0->unk12 = (s16)arg2->unk4;
//    arg0->unk16 = (u8)arg2->unk6;
//}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061EFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800622E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062530.s")
/*
s32 func_80062530(s32 arg0, void* arg1, UNK_TYPE arg2, UNK_TYPE arg3, void* arg4, s32 arg5) {
    s32 temp_ret;
    s32 temp_s4;
    s32 temp_v0;
    void* temp_a2;
    void* temp_s1;
    void* temp_s1_2;
    void* temp_v0_2;
    void* phi_s1;
    void* phi_v1;
    s32 phi_v0;
    s32 phi_a1;
    s32 phi_s4;
    s32 phi_s4_2;
    s32 phi_s4_3;

    temp_s1 = arg1 + 0x1C4;
    phi_s4 = 0;
    if (temp_s1 < (u32)((arg1 + (arg1->unk1C0 * 4)) + 0x1C4)) {
        phi_s1 = temp_s1;
        phi_s4_3 = 0;
    loop_2:
        phi_s4_2 = phi_s4_3;
        if (func_80061BF4(*phi_s1) != 1) {
            phi_a1 = 0;
            if (arg5 > 0) {
                phi_v1 = arg4;
                phi_v0 = 0;
            loop_5:
                temp_v0 = phi_v0 + 1;
                if ((*phi_s1)->unk0 == *phi_v1) {
                    phi_a1 = 1;
                }
                else {
                    phi_v1 = phi_v1 + 4;
                    phi_v0 = temp_v0;
                    phi_a1 = 0;
                    if (temp_v0 != arg5) {
                        goto loop_5;
                    }
                }
            }
            phi_s4_2 = phi_s4_3;
            if (phi_a1 != 1) {
                temp_a2 = *phi_s1;
                temp_v0_2 = &D_8011E018 + (temp_a2->unk15 * 4);
                if (*temp_v0_2 == 0) {
                    osSyncPrintf("CollisionCheck_generalLineOcCheck():未対応 %dタイプ\n", temp_a2->unk15, temp_a2, arg2);
                    //EUC-JP: 未対応 %dタイプ | %d's type is not supported
                    phi_s4_2 = phi_s4_3;
                block_13:
                    temp_s1_2 = phi_s1 + 4;
                    phi_s1 = temp_s1_2;
                    phi_s4 = phi_s4_2;
                    phi_s4_3 = phi_s4_2;
                    if (temp_s1_2 < (u32)((arg1 + (arg1->unk1C0 * 4)) + 0x1C4)) {
                        goto loop_2;
                    }
                }
                else {
                    temp_ret = *temp_v0_2(arg0, arg1, temp_a2, arg2, arg3);
                    temp_s4 = temp_ret;
                    phi_s4 = temp_s4;
                    phi_s4_2 = temp_s4;
                    if (temp_ret == 0) {
                    block_12:
                        goto block_13;
                    }
                }
            }
            else {
                goto block_12;
            }
        }
        else {
            goto block_12;
        }
    }
    return phi_s4;
}
*/

void func_8006268C(GlobalContext* arg0, CollisionCheckContext* arg1, UNK_TYPE arg2, UNK_TYPE arg3) {
    func_80062530(arg0, arg1, arg2, arg3, 0, 0);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800626B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800626DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062734.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800627A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800628A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062DF4.s")

extern u8 D_8011E068;
extern s16 D_8011E06A;
extern s16 D_8011E06C;
extern s16 D_8011E06E;
extern s16 D_8011E096;
extern s16 D_8011E098;
extern s16 D_8011E09A;

#ifdef NON_MATCHING
void func_80062E14(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2) {
    s32 sp24;
    s32 x;
    s32 y;
    s32 z;

    x = arg1->x;
    D_8011E096 = x;
    y = arg1->y;
    D_8011E098 = y;
    z = arg1->z;
    D_8011E09A = z;
    D_8011E06A = x;
    D_8011E06C = y;
    D_8011E06E = z;

    Effect_Add(globalCtx, &sp24, 3, 0, 1, &D_8011E068);
    Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, arg2, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062E14.s")
#endif // NON_MATCHING

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
