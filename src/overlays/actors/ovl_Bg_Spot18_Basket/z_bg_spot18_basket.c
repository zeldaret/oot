#include "z_bg_spot18_basket.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot18Basket*)thisx)

void BgSpot18Basket_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Basket_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Basket_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Basket_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B7BCC(BgSpot18Basket* this, GlobalContext* globalCtx);

void func_808B7AEC(BgSpot18Basket* this);
void func_808B7B58(BgSpot18Basket* this);
void func_808B7BB0(BgSpot18Basket* this);
void func_808B7D38(BgSpot18Basket* this);

void func_808B7AFC(BgSpot18Basket* this, GlobalContext* globalCtx);
void func_808B7B6C(BgSpot18Basket* this, GlobalContext* globalCtx);
void func_808B7D50(BgSpot18Basket* this, GlobalContext* globalCtx);
void func_808B7770(BgSpot18Basket *this, GlobalContext *globalCtx, f32 arg2);

extern UNK_TYPE D_06002154;

const ActorInit Bg_Spot18_Basket_InitVars = {
    ACTOR_BG_SPOT18_BASKET,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Basket),
    (ActorFunc)BgSpot18Basket_Init,
    (ActorFunc)BgSpot18Basket_Destroy,
    (ActorFunc)BgSpot18Basket_Update,
    (ActorFunc)BgSpot18Basket_Draw,
};

// D_808B8570
static ColliderJntSphItemInit sJntSphItemsInit[2] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 0, { { 0, 2040, 0 }, 54 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 1, { { 0, 1400, 0 }, 13 }, 100 },
    },
};

// D_808B85B8
static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x09, 0x20, COLSHAPE_JNTSPH },
    2,
    sJntSphItemsInit,
};

s16 D_808B85C8[] = { 0x8000, 0x2AAA, 0xD555, 0x0000 };
s16 D_808B85D0 = 0;

// s32 D_808B85D4[] = { 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8 };
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

s32 D_808B85E4[] = { 0xF0600320, 0x0FA00000, 0x00000000 };

void func_808B7710(BgSpot18Basket* this, GlobalContext* globalCtx) {
    Actor* actor;

    Collider_InitJntSph(globalCtx, &this->colliderJntSph);
    actor = &this->dyna.actor;
    Collider_SetJntSph(globalCtx, &this->colliderJntSph, actor, &sJntSphInit, &this->colliderJntSphItem);
    actor->colChkInfo.mass = 0xFF;

    // TODO: Needs to go
    if (actor) {}
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7710.s")

// void func_808B7770(BgSpot18Basket *this, GlobalContext *globalCtx, f32 arg2) {
//     s32 max;
//     s32 i = 0;
//     s16 *angle;
//     f32 sinValue;
//     f32 cosValue;
//     f32 randomValue2;
//     Vec3f acceleration;
//     Vec3f velocity;
//     Vec3f position;
    
//     max = 2;
//     angle = &D_808B85D0;

//     while (i != max) {
//         if (!(arg2 < Math_Rand_ZeroOne())) {
//             *angle += 30000;

//             sinValue = Math_Sins(*angle);
//             cosValue = Math_Coss(*angle);

//             randomValue2 = (Math_Rand_ZeroOne() * 35.0f) + 35.0f;

//             position.x = (randomValue2 * sinValue) + this->dyna.actor.posRot.pos.x;
//             position.y = this->dyna.actor.posRot.pos.y + 10.0f;
//             position.z = (randomValue2 * cosValue) + this->dyna.actor.posRot.pos.z;

//             velocity.x = sinValue;
//             velocity.y = 0.0f;
//             velocity.z = 0.0f;

//             acceleration.x = 0.0f;
//             acceleration.y = 0.5f;
//             acceleration.z = 0.0f;

//             func_800286CC(globalCtx, &position, &velocity, &acceleration, 
//                 ((Math_Rand_ZeroOne() * 16) + 80), ((Math_Rand_ZeroOne() * 30) + 80));
//         }
//         i++;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7770.s")

void BgSpot18Basket_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Basket* this = THIS;
    Actor *actor = &this->dyna.actor;
    s32 moveFlag = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 3);
    func_808B7710(this, globalCtx);
    DynaPolyInfo_Alloc(&D_06002154, &moveFlag);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, actor, moveFlag);

    Actor_ProcessInitChain(actor, sInitChain);
    ActorShape_Init(&actor->shape, 0.0f, ActorShadow_DrawFunc_Circle, 15.0f);
    actor->initPosRot.pos.y = actor->initPosRot.pos.y + 0.01f;
    actor->posRot.pos.y = actor->initPosRot.pos.y;

    if (Flags_GetSwitch(globalCtx, (actor->params >> 8) & 0x3F) != 0) {
        func_808B7BB0(this);
        return;
    }

    func_808B7AEC(this);
    Actor_SpawnAsChild(&globalCtx->actorCtx, actor, globalCtx, 0x1C3, actor->posRot.pos.x,
                       actor->posRot.pos.y, actor->posRot.pos.z, actor->shape.rot.x,
                       actor->shape.rot.y + 0x1555, actor->shape.rot.z, -1);

    if (actor->child == 0) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Ｅｒｒｏｒ : 変化壷蓋発生失敗(%s %d)\n", "../z_bg_spot18_basket.c", 0x15F);
        osSyncPrintf("\x1b[m");
        Actor_Kill(actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Init.s")

void BgSpot18Basket_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot18Basket* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalCtx, &this->colliderJntSph);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Destroy.s")

void func_808B7AEC(BgSpot18Basket* this) {
    this->actionFunc = func_808B7AFC;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7AEC.s")

void func_808B7AFC(BgSpot18Basket* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F) != 0) {
        func_800800F8(globalCtx, 0x107C, 0x50, this, 0);
        func_808B7B58(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7AFC.s")
//
void func_808B7B58(BgSpot18Basket* this) {
    this->actionFunc = func_808B7B6C;
    this->unk_216 = 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7B58.s")

void func_808B7B6C(BgSpot18Basket *this, GlobalContext *globalCtx) {
    if (this->unk_216 >= 0x15) {
        func_808B7BB0(this);
        this->dyna.actor.child->parent = NULL;
        this->dyna.actor.child = NULL;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7B6C.s")

void func_808B7BB0(BgSpot18Basket *this) {
    this->unk_20C = 0;
    this->actionFunc = func_808B7BCC;
    this->unk_210 = this->unk_20C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7BB0.s")

void func_808B7BCC(BgSpot18Basket *this, GlobalContext *globalCtx) {
    f32 positionDiff;
    Actor *colliderBaseAc;

    Math_ApproxS(&this->unk_210, 0x1F4, 0x1E);

    this->dyna.actor.shape.rot.y += this->unk_210;

    Math_ApproxF(&this->unk_208, 50.0f, 1.5f);
    Math_ApproxS(&this->unk_20C, 0x190, 0xF);

    this->unk_20E += this->unk_20C;

    this->dyna.actor.posRot.pos.x = (Math_Sins(this->unk_20E) * this->unk_208) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z = (Math_Coss(this->unk_20E) * this->unk_208) + this->dyna.actor.initPosRot.pos.z;

    if (this->colliderJntSph.base.acFlags & 2) {
        colliderBaseAc = this->colliderJntSph.base.ac;

        if (colliderBaseAc != NULL) {
            positionDiff = colliderBaseAc->posRot.pos.y - this->dyna.actor.posRot.pos.y;

            if (positionDiff > 120.0f && positionDiff < 200.0f) {
                if (Math3D_Dist2DSq(
                    colliderBaseAc->posRot.pos.z, 
                    this->colliderJntSph.base.ac->posRot.pos.x, 
                    this->dyna.actor.posRot.pos.z, 
                    this->dyna.actor.posRot.pos.x) < 1024.0f
                ) {
                    func_800800F8(globalCtx, 0x1072, 0xF0, this, 0);
                    func_808B7D38(this);
                    func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                }
            }
        }
    }
    func_8002F974(this, 0x2024U);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7BCC.s")

void func_808B7D38(BgSpot18Basket *this) {
    this->actionFunc = func_808B7D50;
    this->unk_216 = 0;
    this->unk_214 = 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7D38.s")

void func_808B7D50(BgSpot18Basket *this, GlobalContext *globalCtx) {
    f32 tempValue2;
    f32 tempValue;

    if (this->unk_216 >= 121) {
        Math_ApproxS(&this->unk_210, 1000, 50);
    } else {
        Math_ApproxS(&this->unk_210, 3000, 100);
    }

    this->dyna.actor.shape.rot.y = this->dyna.actor.shape.rot.y + this->unk_210;

    if (this->unk_216 < 70) {
        Math_ApproxF(&this->unk_208, 100.0f, 2.0f);
    } else {
        Math_ApproxF(&this->unk_208, 0.0f, 2.0f);
    }

    Math_ApproxS(&this->unk_20C, 1000, 20);

    this->unk_20E += this->unk_20C;

    this->dyna.actor.posRot.pos.x = (Math_Sins(this->unk_20E) * this->unk_208) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z = (Math_Coss(this->unk_20E) * this->unk_208) + this->dyna.actor.initPosRot.pos.z;

    this->unk_212 += 3000;

    Math_ApproxS(&this->unk_214, 1500, 30);

    this->dyna.actor.shape.rot.x = Math_Coss(this->unk_212) * this->unk_214;
    this->dyna.actor.shape.rot.z = -Math_Sins(this->unk_212) * this->unk_214;

    if (this->unk_216 >= 141) {
        func_808B7F74(this);
    }

    if (this->unk_216 < 80) {
        func_808B7770(this, globalCtx, 1.0f);
    } else {
        func_808B7770(this, globalCtx, 0.8f);
    }

    tempValue2 = (this->unk_210 - 500) * 0.0006f;

    tempValue = CLAMP(tempValue2, 0.0f, 1.5f);
    // if (tempValue2 < 0.0f) {
    //     tempValue = 0.0f;
    // } else if (tempValue2 > 1.5f) {
    //     tempValue = 1.5f;
    // } else {
    //     tempValue = tempValue2;
    // }

    func_800F436C(&this->dyna.actor.projectedPos, 203, tempValue);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B818C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B81A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Draw.s")
