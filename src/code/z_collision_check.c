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

extern Collider D_8011DE00;

//Init Collider
s32 func_8005B65C(GlobalContext* globalCtx, Collider* collision)
{
    *collision = D_8011DE00;
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

extern ColliderTouch D_8011DE18;

//Initialize ColliderTouch
s32 func_8005B7C0(GlobalContext* globalCtx, ColliderTouch* touch) { 
    *touch = D_8011DE18;
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

extern ColliderBump D_8011DE20;

//Initialize ColliderBump
s32 func_8005B824(GlobalContext* globalCtx, ColliderBump* bump)
{
    *bump = D_8011DE20;
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

extern ColliderBody D_8011DE2C;

//Initialize ColliderBody
s32 func_8005B884(GlobalContext* globalCtx, ColliderBody* body) {
    *body = D_8011DE2C;
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

extern ColliderJntSphItemDim D_8011DE54;

//initialize JntSphItemDim
s32 func_8005BA30(GlobalContext* globalCtx, ColliderJntSphItemDim* dim) {
    *dim = D_8011DE54;
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
//arg1 could be wrong type
s32 func_8005BB8C(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005B9B0(globalCtx, &collider->body);
    return 1;
}

//Set CollisionBody Property
//TODO: arg1 could be wrong type
s32 func_8005BBB0(GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    func_8005B9E8(globalCtx, &collider->body);
    return 1;
}

//Set CollisionBody Property
//arg1 could be wrong type
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
        ZeldaArena_FreeDebug(collider->list, "../z_collision_check.c", 0x571);
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

    func_8005B6B0(globalCtx, &dest->base, &src->body);
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

    func_8005B6EC(globalCtx, &dest->base, actor, &src->body);
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

    func_8005B72C(globalCtx, &dest->base, actor, &src->body);
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

    func_8005B72C(globalCtx, &dest->base, actor, &src->body);
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

#ifdef NON_MATCHING
//Set collider body property.  arg1 not confirmed
s32 func_8005C124(GlobalContext* globalCtx, ColliderJntSph* collider) 
{
    ColliderJntSphItem* phi_s0;

    func_8005B76C(globalCtx, &collider->base);

    phi_s0 = collider->list;

    while (phi_s0 < collider->list + collider->count) {
        func_8005BB8C(globalCtx, phi_s0);
        phi_s0++;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C124.s")
#endif // NON_MATCHING

#ifdef NON_MATCHING
//Set collider body property.  arg1 not confirmed
s32 func_8005C1AC(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;

    func_8005B784(globalCtx, &collider->base);
    next = collider->list;

    while (next < collider->list + collider->count)
    {
        func_8005BBB0(globalCtx, next);
        next++;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C1AC.s")
#endif // NON_MATCHING


#ifdef NON_MATCHING
//Set collider body property.  arg1 not confirmed
//D_8011DF18 func ptr
s32 func_8005C234(GlobalContext* globalCtx, ColliderJntSph* collider) {
    ColliderJntSphItem* next;

    func_8005B79C(globalCtx, &collider->base);
    next = collider->list;
    while (next < collider->list + collider->count) {
        func_8005BBD4(globalCtx, next);
        next++;
    }
    return 1;
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C234.s")
#endif // NON_MATCHING

#ifdef NON_MATCHING
//Initialize ColliderCylinderDim
//matching, but needs data section imported
s32 func_8005C2BC(GlobalContext* globalCtx, ColliderCylinderDim* dim) {
    ColliderCylinderDim init = { 0, 0, 0, 0, 0, 0 }; //TODO: this is D_8011DE6C;
    *dim = init;
    return 1;
}
#else
//Initialize ColliderCylinderDim
s32 func_8005C2BC(GlobalContext* globalCtx, ColliderCylinderDim* dim);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C2BC.s")
#endif // NON_MATCHING

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

s32 ActorCollider_AllocCylinder(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B65C(globalCtx, &collision->base);
    func_8005B884(globalCtx, &collision->body);
    func_8005C2BC(globalCtx, &collision->dim);
    return 1;
}

s32 ActorCollider_FreeCylinder(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B6A0(globalCtx, &collision->base);
    func_8005B904(globalCtx, &collision->body);
    func_8005C318(globalCtx, &collision->dim);
    return 1;
}

//SetInit Cylinder legacy?
//used only by DekuJr, D_80B92A00
s32 func_8005C3F4(GlobalContext* globalCtx, ColliderCylinderMain* collision, ColliderCylinderInit_Actor* src)
{
    func_8005B6B0(globalCtx, &collision->base, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetInit Cylinder maskB = 0x10
s32 func_8005C450(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src)
{
    func_8005B6EC(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetInit Cylinder maskB = src->maskB
//8005c4ac
s32 ActorCollider_InitCylinder(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src)
{
    func_8005B72C(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//Reset AT? ColliderCylinderMain
s32 func_8005C508(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B76C(globalCtx, &collision->base);
    func_8005B9B0(globalCtx, &collision->body);
    return 1;
}

//Reset AC? ColliderCylinderMain
s32 func_8005C540(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B784(globalCtx, &collision->base);
    func_8005B9E8(globalCtx, &collision->body);
    return 1;
}

//Reset OT? ColliderCylinderMain
s32 func_8005C578(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B79C(globalCtx, &collision->base);
    func_8005BA1C(globalCtx, &collision->body);
    return 1;
}

extern ColliderTriItemDim D_8011DE78;

//Initialize ColliderTriItemDim
s32 func_8005C5B0(GlobalContext* globalCtx, ColliderTriItemDim* dim)
{
    *dim = D_8011DE78;
    return 1;
}

//Destruct ColliderTriItemDim
s32 func_8005C5F8(GlobalContext* globalCtx, ColliderTriItemDim* dim)
{
    return 1;
}

//Copy ColliderTriItemDim
s32 func_8005C608(GlobalContext* globalCtx, ColliderTriItemDim* dest, ColliderTriItemDim* src)
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

//Initialize ColliderTriItem
s32 func_8005C6C0(GlobalContext* globalCtx, ColliderTriItem* collision) {
    func_8005B884(globalCtx, &collision->body);
    func_8005C5B0(globalCtx, &collision->dim);
    return 1;
}

//Destruct ColliderTriItem
s32 func_8005C6F8(GlobalContext* globalCtx, ColliderTriItem* collision) {
    func_8005B904(globalCtx, &collision->body);
    func_8005C5F8(globalCtx, &collision->dim);
    return 1;
}

//SetInit ColliderTriItem
s32 func_8005C730(GlobalContext* globalCtx, ColliderTriItem* dest, ColliderTriItemInit* src) {
    func_8005B93C(globalCtx, &dest->body, &src->body);
    func_8005C608(globalCtx, &dest->dim, &src->dim);
    return 1;
}


s32 func_8005C774(GlobalContext* globalCtx, ColliderTriItem* item) {
    func_8005B9B0(globalCtx, &item->body);
    return 1;
}

s32 func_8005C798(GlobalContext* globalCtx, ColliderTriItem* item) {
    func_8005B9E8(globalCtx, &item->body);
    return 1;
}

s32 func_8005C7BC(GlobalContext* globalCtx, ColliderTriItem* item) {
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


#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C810.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CE6C.s")

s32 func_8005CEB4(GlobalContext* globalCtx, ColliderCylinderDim* dim) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CEC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CF90.s")

//Init Cylinder?
s32 func_8005D018(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B65C(globalCtx, &collision->base);
    func_8005B884(globalCtx, &collision->body);
    func_8005CE6C(globalCtx, &collision->dim);
    return 1;
}

//Destruct Cylinder?
s32 func_8005D060(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B6A0(globalCtx, &collision->base);
    func_8005B904(globalCtx, &collision->body);
    func_8005CEB4(globalCtx, &collision->dim);
    return 1;
}

//SetInit Cylinder? maskB = 0x10
s32 func_8005D0A8(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src)
{
    func_8005B6EC(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005CF90(globalCtx, &collision->dim, &src->dim);
    return 1;
}

//SetInit Cylinder? maskB = src->maskB
s32 func_8005D104(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src)
{
    func_8005B72C(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005CF90(globalCtx, &collision->dim, &src->dim);
    return 1;
}

s32 func_8005D160(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B76C(globalCtx, &collision->base);
    func_8005B9B0(globalCtx, &collision->body);
    func_8005CEC4(globalCtx, &collision->dim);
    return 1;
}

s32 func_8005D1A8(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B784(globalCtx, &collision->base);
    func_8005B9E8(globalCtx, &collision->body);
    return 1;
}

s32 func_8005D1E0(GlobalContext* globalCtx, ColliderCylinderMain* collision)
{
    func_8005B79C(globalCtx, &collision->base);
    func_8005BA1C(globalCtx, &collision->body);
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D334.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D3BC.s")

void func_8005D400(UNK_TYPE arg0, UNK_TYPE arg1)
{

}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D9F4.s")

//CollisionCheck_SetOC()
#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005DC4C.s")

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
