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
    dest->list = ZeldaArena_MallocDebug(src->count * sizeof(ColliderJntSphItem), "../z_collision_check.c", 0x5D2);

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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D334.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D3A4.s")

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

    if ((check->unk2 & 1) == 0) {
        check->colAtCount = 0;
        check->colAcCount = 0;
        check->colOcCount = 0;
        check->unkCount = 0;
        for (c = check->colAt; c < check->colAt + 50; c++) {
            *c = NULL;
        }

        for (c = check->colAc; c < check->colAc + 60; c++) {
            *c = NULL;
        }

        for (c = check->colOc; c < check->colOc + 50; c++) {
            *c = NULL;
        }

        for (c = check->unk290; c < check->unk290 + 3; c++) {
            *c = NULL;
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


#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D8AC.s")

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

void func_8005E604(GlobalContext* globalContext, Collider* left, ColliderBody* leftBody,
    Collider* right, ColliderBody* rightBody, Vec3f* arg5) {

    if ((rightBody->bumperFlags & 0x40) == 0) {
        if (((leftBody->toucherFlags & 0x20) != 0) || ((leftBody->toucherFlags & 0x40) == 0)) {
            if (right->actor != NULL) {
                (*D_8011DF28[D_8011DF40[right->unk_14].unk00])(globalContext, right, arg5);
            }
            if (right->actor != NULL) {
                if (D_8011DF40[right->unk_14].unk01 == 3) {
                    func_8005E2EC(globalContext, leftBody, right, arg5);
                    return;
                }
                else if (D_8011DF40[right->unk_14].unk01 == 4) {
                    if (left->actor == NULL) {

                        func_80062CD4(globalContext, arg5);
                        Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        return;
                    }
                    func_80062E14(globalContext, arg5, &left->actor->unk_E4);
                    return;
                }
                else if (D_8011DF40[right->unk_14].unk01 != 5) {
                    func_80029CA4(globalContext, D_8011DF40[right->unk_14].unk01, arg5);
                    if ((rightBody->bumperFlags & 0x20) == 0) {
                        func_8005E4F8(left, rightBody);
                        return;
                    }
                }
            }
            else {
                func_80029CA4(globalContext, 0, arg5);
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
s32 func_8005E81C(GlobalContext* globalContext,
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
        func_8005E604(globalContext, left, leftBody, right, rightBody, arg7);
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


#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005EEE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005F17C.s")

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


#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006146C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800614A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006199C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061BF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061ED4.s")
//func_80061ED4 a1 = ActorDamageChart

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061EFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800622E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062530.s")

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
void func_80062E14(GlobalContext* globalContext, Vec3f* arg1, Vec3f* arg2) {
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

    Effect_Add(globalContext, &sp24, 3, 0, 1, &D_8011E068);
    Audio_PlaySoundGeneral(NA_SE_IT_REFLECTION_WOOD, arg2, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062E14.s")
#endif // NON_MATCHING



#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800635D0.s")
