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

//Reset AT collision?
void func_8005B76C(GlobalContext* globalCtx, Collider* collision)
{
    collision->at = NULL;
    collision->colliderFlags &= ~0x6;
}

//Reset AC collision?
void func_8005B784(GlobalContext* globalCtx, Collider* collision)
{
    collision->ac = NULL;
    collision->collideFlags &= ~0x82;
}

//Reset OT collision?
void func_8005B79C(GlobalContext* globalCtx, Collider* collision)
{
    collision->ot = NULL;
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
    dest->unk_04 = src->unk_04;
    dest->damage = src->damage;
    return 1;
}

void func_8005B818(GlobalContext* globalCtx, ColliderBody* body)
{

}

//Initialize ColliderBump
s32 func_8005B824(GlobalContext* globalCtx, ColliderBump* bump)
{
    static ColliderBump init = { (s32)0xFFCFFFFF, 0, 0, 0, 0, 0 };
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
        { (s32)0xFFCFFFFF, 0, 0, 0, 0, 0 },
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

void func_8005B9B0(GlobalContext* globalCtx, ColliderBody* body)
{
    body->unk_18 = 0;
    body->unk_20 = 0;
    body->toucherFlags &= ~0x2;
    body->toucherFlags &= ~0x40;
    func_8005B818(globalCtx, body);
}

void func_8005B9E8(GlobalContext* globalCtx, ColliderBody* body)
{
    body->bumper.unk_0A = 0;
    body->bumperFlags &= ~0x2;
    body->bumperFlags &= ~0x80;
    body->colBuf = NULL;
    body->colliding = NULL;
    body->bumper.unk_08 = body->bumper.unk_0A;
    body->bumper.unk_06 = body->bumper.unk_0A;
}

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
s32 func_8005BA84(GlobalContext* globalCtx, ColliderJntSphItemDim* dest, ColliderJntSphItemDimInit* src);
/*
{
    dest->unk_14 = src->unk_00;
    dest->unk_00 = src->unk_02;
    dest->unk_10 = src->unk_0A * 0.01f;
    return 1;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BA84.s")

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

//Set CollisionBody Property
s32 func_8005BB8C(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005B9B0(globalCtx, &collider->body);
    return 1;
}

//Set CollisionBody Property
s32 func_8005BBB0(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005B9E8(globalCtx, &collider->body);
    return 1;
}

//Set CollisionBody Property
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

//Set ColliderJntSph collider body property
s32 func_8005C124(GlobalContext* globalCtx, ColliderJntSph* collider) 
{
    ColliderJntSphItem* next;
    ColliderJntSph* col = collider;
    GlobalContext* gctx = globalCtx;

    func_8005B76C(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005BB8C(gctx, next);
        next++;
    }
    return 1;
}

//Set ColliderJntSph collider body property
s32 func_8005C1AC(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = collider;
    GlobalContext* gctx = globalCtx;

    func_8005B784(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005BBB0(gctx, next);
        next++;
    }
    return 1;
}


//Set ColliderJntSph collider body property
//D_8011DF18 func ptr
s32 func_8005C234(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;
    ColliderJntSph* col = collider;
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
    ColliderCylinderDim init = { }; 
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

//Reset AT? ColliderCylinder
s32 func_8005C508(GlobalContext* globalCtx, ColliderCylinder* collision)
{
    func_8005B76C(globalCtx, &collision->base);
    func_8005B9B0(globalCtx, &collision->body);
    return 1;
}

//Reset AC? ColliderCylinder
s32 func_8005C540(GlobalContext* globalCtx, ColliderCylinder* collision)
{
    func_8005B784(globalCtx, &collision->base);
    func_8005B9E8(globalCtx, &collision->body);
    return 1;
}

//Reset OT? ColliderCylinder
s32 func_8005C578(GlobalContext* globalCtx, ColliderCylinder* collision)
{
    func_8005B79C(globalCtx, &collision->base);
    func_8005BA1C(globalCtx, &collision->body);
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

s32 func_8005C774(GlobalContext* globalCtx, ColliderTrisItem* item) {
    func_8005B9B0(globalCtx, &item->body);
    return 1;
}

s32 func_8005C798(GlobalContext* globalCtx, ColliderTrisItem* item) {
    func_8005B9E8(globalCtx, &item->body);
    return 1;
}

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

//Set ColliderTris collider body property
s32 func_8005CC98(GlobalContext* globalCtx, ColliderTris* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = collider;
    GlobalContext* gctx = globalCtx;

    func_8005B76C(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005C774(gctx, next);
        next++;
    }
    return 1;
}

//Set ColliderTris collider body property
s32 func_8005CD34(GlobalContext* globalCtx, ColliderTris* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = collider;
    GlobalContext* gctx = globalCtx;

    func_8005B784(gctx, &col->base);
    next = col->list;

    while (next < col->list + col->count) {
        func_8005C798(gctx, next);
        next++;
    }
    return 1;
}

//Set ColliderTris collider body property
s32 func_8005CDD0(GlobalContext* globalCtx, ColliderTris* collider) {
    ColliderTrisItem* next;
    ColliderTris* col = collider;
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

s32 func_8005D160(GlobalContext* globalCtx, ColliderQuad* collision)
{
    func_8005B76C(globalCtx, &collision->base);
    func_8005B9B0(globalCtx, &collision->body);
    func_8005CEC4(globalCtx, &collision->dim);
    return 1;
}

s32 func_8005D1A8(GlobalContext* globalCtx, ColliderQuad* collision)
{
    func_8005B784(globalCtx, &collision->base);
    func_8005B9E8(globalCtx, &collision->body);
    return 1;
}

s32 func_8005D1E0(GlobalContext* globalCtx, ColliderQuad* collision)
{
    func_8005B79C(globalCtx, &collision->base);
    func_8005BA1C(globalCtx, &collision->body);
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D218.s")

u32 D_8011DEF8[] = { 0x8005C124, 0x8005C508, 0x8005CC98, 0x8005D160 };
u32 D_8011DF08[] = { 0x8005C1AC, 0x8005C540, 0x8005CD34, 0x8005D1A8 };
u32 D_8011DF18[] = { 0x8005C234, 0x8005C578, 0x8005CDD0, 0x8005D1E0 };
u32 D_8011DF28[] = { 0x8005DF9C, 0x8005DFAC, 0x8005E10C, 0x8005E26C, 0x8005E2A4, 0x8005E2C8 };

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
        check->colOtCount = 0;
        check->unkCount = 0;
        for (c = check->colAt; c < check->colAt + 50; c++) {
            *c = NULL;
        }

        for (c = check->colAc; c < check->colAc + 60; c++) {
            *c = NULL;
        }

        for (c = check->colOt; c < check->colOt + 50; c++) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D9F4.s")

//CollisionCheck_SetOT()
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DC4C.s")
/*
s32 Actor_CollisionCheck_SetOT(GlobalContext* globalCtx, CollisionCheckContext* simpleBodyGroups, Collider* collision) {
    s32 temp_v0;
    void* temp_a3;

    temp_a3 = arg1;
    if (func_800C0D28() == 1) {
        return -1;
    }
    if (arg2->unk15 >= 4) {
        __assert("pcl_obj->data_type <= CL_DATA_LBL_SWRD", "../z_collision_check.c", 3229);
    }
    arg1 = (void*)arg1;
    *(&D_8011DF18 + (arg2->unk15 * 4))(arg0, arg2, arg1);
    if (arg2->unk0 != 0) {
        if (arg2->unk0->unk130 == 0) {
            return -1;
        }
    }
    if (arg1->unk1C0 >= 0x32) {
        osSyncPrintf(&D_8013AB10, arg1);
        return -1;
    }
    if ((arg1->unk2 & 1) != 0) {
        return -1;
    }
    (arg1 + (arg1->unk1C0 * 4))->unk1C4 = arg2;
    temp_v0 = arg1->unk1C0;
    arg1->unk1C0 = (s32)(arg1->unk1C0 + 1);
    return temp_v0;
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DD5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DF2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DF74.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DFAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E4F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E604.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E800.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005E81C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800611A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061274.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006139C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006146C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800614A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8006199C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061BF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80061ED4.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_80062ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_800635D0.s")
