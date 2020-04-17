#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B280.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B2AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B65C.s")

s32 func_8005B6A0(GlobalContext* globalCtx, Collider* collision) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B6B0.s")

s32 func_8005B6EC(GlobalContext* globalCtx, Collider* collision, Actor* actor, ColliderBodyInfo* src) {
    collision->actor = actor;
    collision->unk_14 = src->unk_00;
    collision->colliderFlags = src->colliderFlags;
    collision->collideFlags = src->collideFlags;
    collision->maskA = src->maskA;
    collision->maskB = 0x10;
    collision->type = src->maskB;
    return 1;
}

s32 func_8005B72C(GlobalContext* globalCtx, Collider* collision, Actor* actor, ColliderBodyInfo* src) {
    collision->actor = actor;
    collision->unk_14 = src->unk_00;
    collision->colliderFlags = src->colliderFlags;
    collision->collideFlags = src->collideFlags;
    collision->maskA = src->maskA;
    collision->maskB = src->maskB;
    collision->type = src->type;
    return 1;
}

void func_8005B76C(GlobalContext* globalCtx, Collider* collision) {
    collision->at = NULL;
    collision->colliderFlags &= ~0x6;
}

void func_8005B784(GlobalContext* globalCtx, Collider* collision) {
    collision->ac = NULL;
    collision->collideFlags &= ~0x82;
}

void func_8005B79C(GlobalContext* globalCtx, Collider* collision) {
    collision->ot = NULL;
    collision->maskA &= ~0x2;
    collision->maskB &= ~0x1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B7C0.s")

s32 func_8005B7E4(GlobalContext* globalCtx, ColliderTouch* touch) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B7F4.s")

void func_8005B818(GlobalContext* globalCtx, ColliderBody* body) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B824.s")

s32 func_8005B850(GlobalContext* globalCtx, ColliderBump* bump) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B860.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005B884.s")

s32 func_8005B904(GlobalContext* globalCtx, ColliderBody* body) {
    func_8005B7E4(globalCtx, &body->toucher);
    func_8005B850(globalCtx, &body->bumper);
    return 1;
}

s32 func_8005B93C(GlobalContext* globalCtx, ColliderBody* body, ColliderBodyInfoInner* bodyInfoInner) {
    body->flags = bodyInfoInner->bodyFlags;
    func_8005B7F4(globalCtx, &body->toucher, &bodyInfoInner->toucherMask);
    func_8005B860(globalCtx, &body->bumper, &bodyInfoInner->bumperMask);
    body->toucherFlags = bodyInfoInner->toucherFlags;
    body->bumperFlags = bodyInfoInner->bumperFlags;
    body->flags2 = bodyInfoInner->bodyFlags2;
    return 1;
}

void func_8005B9B0(GlobalContext* globalCtx, ColliderBody* body) {
    body->unk_18 = 0;
    body->unk_20 = 0;
    body->toucherFlags &= ~0x2;
    body->toucherFlags &= ~0x40;
    func_8005B818(globalCtx, body);
}

void func_8005B9E8(GlobalContext* globalCtx, ColliderBody* body) {
    body->bumper.unk_0A = 0;
    body->bumperFlags &= ~0x2;
    body->bumperFlags &= ~0x80;
    body->colBuf = NULL;
    body->colliding = NULL;
    body->bumper.unk_08 = body->bumper.unk_0A;
    body->bumper.unk_06 = body->bumper.unk_0A;
}

void func_8005BA1C(GlobalContext* globalCtx, ColliderBody* body) {
    body->flags2 &= ~0x2;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BA30.s")

s32 func_8005BA74(UNK_TYPE arg0, UNK_TYPE arg1) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BA84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BB10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BB48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BB8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BBB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BBD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BC28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BCC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005BE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C050.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C2BC.s")

s32 func_8005C318(GlobalContext* globalCtx, ColliderDimensions* dim) {
    return 1;
}

s32 func_8005C328(GlobalContext* globalCtx, ColliderDimensions* dest, ColliderDimensions* src) {
    *dest = *src;
    return 1;
}

s32 ActorCollider_AllocCylinder(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B65C(globalCtx, &collision->base);
    func_8005B884(globalCtx, &collision->body);
    func_8005C2BC(globalCtx, &collision->dim);
    return 1;
}

s32 ActorCollider_FreeCylinder(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B6A0(globalCtx, &collision->base);
    func_8005B904(globalCtx, &collision->body);
    func_8005C318(globalCtx, &collision->dim);
    return 1;
}

s32 func_8005C3F4(GlobalContext* globalCtx, ColliderCylinderMain* collision, ColliderCylinderInit* src) {
    func_8005B6B0(globalCtx, &collision->base, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

s32 func_8005C450(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src) {
    func_8005B6EC(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

s32 ActorCollider_InitCylinder(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor,
                               ColliderCylinderInit* src) {
    func_8005B72C(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005C328(globalCtx, &collision->dim, &src->dim);
    return 1;
}

s32 func_8005C508(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B76C(globalCtx, &collision->base);
    func_8005B9B0(globalCtx, &collision->body);
    return 1;
}

s32 func_8005C540(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B784(globalCtx, &collision->base);
    func_8005B9E8(globalCtx, &collision->body);
    return 1;
}

s32 func_8005C578(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B79C(globalCtx, &collision->base);
    func_8005BA1C(globalCtx, &collision->body);
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C5B0.s")

s32 func_8005C5F8(UNK_TYPE arg0, UNK_TYPE arg1) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C608.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C730.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C774.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C798.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C7E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005C8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CE6C.s")

s32 func_8005CEB4(GlobalContext* globalCtx, ColliderDimensions* dim) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CEC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005CF90.s")

s32 func_8005D018(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B65C(globalCtx, &collision->base);
    func_8005B884(globalCtx, &collision->body);
    func_8005CE6C(globalCtx, &collision->dim);
    return 1;
}

s32 func_8005D060(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B6A0(globalCtx, &collision->base);
    func_8005B904(globalCtx, &collision->body);
    func_8005CEB4(globalCtx, &collision->dim);
    return 1;
}

s32 func_8005D0A8(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src) {
    func_8005B6EC(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005CF90(globalCtx, &collision->dim, &src->dim);
    return 1;
}

s32 func_8005D104(GlobalContext* globalCtx, ColliderCylinderMain* collision, Actor* actor, ColliderCylinderInit* src) {
    func_8005B72C(globalCtx, &collision->base, actor, &src->body);
    func_8005B93C(globalCtx, &collision->body, &src->inner);
    func_8005CF90(globalCtx, &collision->dim, &src->dim);
    return 1;
}

s32 func_8005D160(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B76C(globalCtx, &collision->base);
    func_8005B9B0(globalCtx, &collision->body);
    func_8005CEC4(globalCtx, &collision->dim);
    return 1;
}

s32 func_8005D1A8(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B784(globalCtx, &collision->base);
    func_8005B9E8(globalCtx, &collision->body);
    return 1;
}

s32 func_8005D1E0(GlobalContext* globalCtx, ColliderCylinderMain* collision) {
    func_8005B79C(globalCtx, &collision->base);
    func_8005BA1C(globalCtx, &collision->body);
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D218.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D334.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D3BC.s")

void func_8005D400(GlobalContext* globalCtx, SubGlobalContext11E60* sub_11E60) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_collision_check/func_8005D9F4.s")

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
