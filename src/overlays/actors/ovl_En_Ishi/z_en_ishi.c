#include "z_en_ishi.h"

#define FLAGS 0x00800000

#define THIS ((EnIshi*)thisx)

void EnIshi_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Destroy(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_Update(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_Draw(EnIshi* this, GlobalContext* globalCtx);

void func_80A7E460(Actor* thisx, GlobalContext* globalCtx);
s32 func_80A7E4D8(EnIshi* this, GlobalContext* globalCtx, f32 arg2);
void func_80A7E5A8(EnIshi* this, GlobalContext* globalCtx);
void func_80A7E824(EnIshi* this, GlobalContext* globalCtx);
void func_80A7EB10(EnIshi* this, GlobalContext* globalCtx);
void func_80A7EC04(EnIshi* this, GlobalContext* globalCtx);

void func_80A7F098(EnIshi* this);

void func_80A7F8A0(EnIshi* this, GlobalContext* globalCtx);
void func_80A7F8CC(EnIshi* this, GlobalContext* globalCtx);

/*
s16 D_80A7F9F0 = 0;
s16 D_80A7F9F4 = 0;

const ActorInit En_Ishi_InitVars = {
    ACTOR_EN_ISHI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(EnIshi),
    (ActorFunc)EnIshi_Init,
    (ActorFunc)EnIshi_Destroy,
    (ActorFunc)EnIshi_Update,
    (ActorFunc)EnIshi_Draw,
};

f32 D_80A7FA18[2] = { 0.1f, 0.4f };
f32 D_80A7FA20[2] = { 58.0f, 80.0f };
f32 D_80A7FA28[2] = { 0.0f, 0.005f };

s16 D_80A7FA30[0x2852] = { 0x2852, 0x2810 };

u8 D_80A84AD4[0x2854] = { 0x14, 0x28 };

void (*D_80A87328[2])(EnIshi* this, GlobalContext* globalCtx) = { func_80A7E5A8, func_80A7E824 };

void (*D_80A87330[2])(EnIshi* this, GlobalContext* globalCtx) = { func_80A7EB10, func_80A7EC04 };

ColliderCylinderInit D_80A87338[2] = {
    {
        { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFFE, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 10, 18, -2, { 0, 0, 0 } },
    },
    {
        { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFF6, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 55, 70, 0, { 0, 0, 0 } },
    }
};

CollisionCheckInfoInit D_80A87390 = { 0, 12, 60, 0xFF };

s16 D_80A87398[6] = { 16, 13, 11, 9, 7, 5 };

s16 D_80A873A4[10] = { 145, 135, 120, 100, 70, 50, 45, 40, 35, 0 };

InitChainEntry D_80A873B8[2][5] = {
    {
        ICHAIN_F32_DIV1000(gravity, 64336, ICHAIN_CONTINUE),
        ICHAIN_F32_DIV1000(minVelocityY, 45536, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 150, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
    },
    {
        ICHAIN_F32_DIV1000(gravity, 63036, ICHAIN_CONTINUE),
        ICHAIN_F32_DIV1000(minVelocityY, 45536, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 250, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 500, ICHAIN_STOP),
    },
};

u16 D_80A873E0[2] = { 0x086A, 0x086C };

void (*D_80A873E4[3])(EnIshi* this, GlobalContext* globalCtx) = { func_80A7F8A0, func_80A7F8CC, NULL };
*/

extern s16 D_80A7F9F0;
extern s16 D_80A7F9F4;
extern f32 D_80A7FA18[2];
extern f32 D_80A7FA20[2];
extern f32 D_80A7FA28[2];
extern s16 D_80A7FA30[0x2852];
extern u8 D_80A84AD4[0x2854];
extern void (*D_80A87328[2])(EnIshi* this, GlobalContext* globalCtx);
extern void (*D_80A87330[2])(EnIshi* this, GlobalContext* globalCtx);
extern ColliderCylinderInit D_80A87338[2];
extern CollisionCheckInfoInit D_80A87390;
extern s16 D_80A87398[6];
extern s16 D_80A873A4[10];
extern InitChainEntry D_80A873B8[2][5];
extern u16 D_80A873E0[2];
extern void (*D_80A873E4[3])(EnIshi* this, GlobalContext* globalCtx);

void func_80A7E460(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A87338[this->actor.params & 1]);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E5A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7EB10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7EC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7ECF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7ED60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7ED94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7EE1C.s")

void EnIshi_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;
    s16 sp2A = this->actor.params & 1;

    Actor_ProcessInitChain(&this->actor, D_80A873B8[sp2A]);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }
    if (this->actor.shape.rot.y == 0) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = Math_Rand_ZeroFloat(0x10000);
    }
    Actor_SetScale(&this->actor, D_80A7FA18[sp2A]);
    func_80A7E460(&this->actor, globalCtx);
    if ((sp2A == 1) &&
        Flags_GetSwitch(globalCtx, ((this->actor.params >> 0xA) & 0x3C) | ((this->actor.params >> 6) & 3))) {
        Actor_Kill(&this->actor);
    } else {
        func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A87390);
        this->actor.shape.unk_08 = D_80A7FA20[sp2A];
        if (!((this->actor.params >> 5) & 1) && !func_80A7E4D8(this, globalCtx, 0.0f)) {
            Actor_Kill(&this->actor);
        } else {
            func_80A7F098(this);
        }
    }
}

void EnIshi_Destroy(EnIshi* this, GlobalContext* globalCtx) {
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F0A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F2F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F3E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F514.s")

void EnIshi_Update(EnIshi* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F8A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F8CC.s")

void EnIshi_Draw(EnIshi* this, GlobalContext* globalCtx) {
    D_80A873E4[this->actor.params & 1](this, globalCtx);
}
