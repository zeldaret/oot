#include "z_en_firefly.h"

#define FLAGS 0x00005005

#define THIS ((EnFirefly*)thisx)

void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A14E28(Actor* thisx, GlobalContext* globalCtx);

void func_80A13A08(EnFirefly* this, GlobalContext* globalCtx);
void func_80A142F4(EnFirefly* this, GlobalContext* globalCtx);

// const ActorInit En_Firefly_InitVars = {
//     ACTOR_EN_FIREFLY,
//     ACTORTYPE_ENEMY,
//     FLAGS,
//     OBJECT_FIREFLY,
//     sizeof(EnFirefly),
//     (ActorFunc)EnFirefly_Init,
//     (ActorFunc)EnFirefly_Destroy,
//     (ActorFunc)EnFirefly_Update,
//     (ActorFunc)EnFirefly_Draw,
// };

extern ColliderJntSphItemInit D_80A14F30;
// static ColliderJntSphItemInit sJntSphItemsInit = {
//     { 0x00, { 0xFFCFFFFF, 0x01, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
//     { 1, { { 0, 1000, 0 }, 15 }, 100 },
// };

extern ColliderJntSphInit D_80A14F54;
// static ColliderJntSphInit sJntSphInit = {
//     { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
//     1,
//     &sJntSphItemsInit,
// };

extern ColliderJntSphItemInit* D_80A14F60;
// static ColliderJntSphItemInit* D_80A14F60 = &sJntSphItemsInit;

extern CollisionCheckInfoInit D_80A14F64;
// static CollisionCheckInfoInit sColChkInfoInit = { 1, 10, 10, 30 };

extern DamageTable D_80A14F6C;
// static DamageTable sDamageTable = {
//     0x10, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0xF2, 0x34, 0x02, 0x02, 0x02,
//     0x02, 0x20, 0x34, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
// };

extern InitChainEntry D_80A14F8C[];
// static InitChainEntry sInitChain[] = {
//     ICHAIN_VEC3F_DIV1000(scale, 5, ICHAIN_CONTINUE), ICHAIN_F32_DIV1000(gravity, -500, ICHAIN_CONTINUE),
//     ICHAIN_F32(minVelocityY, -4, ICHAIN_CONTINUE),   ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
//     ICHAIN_F32(unk_4C, 4000, ICHAIN_STOP),
// };

// glabel D_80A14FA0
//  .word 0xFFFF64FF
// glabel D_80A14FA4
//  .word 0xFF320000
// glabel D_80A14FA8
//  .word 0x64C8FFFF
// glabel D_80A14FAC
//  .word 0x0000FF00
// glabel D_80A14FB0
//  .word 0x00000000, 0x3F000000, 0x00000000
// glabel D_80A14FBC
//  .word 0x00000000, 0x3F000000, 0x00000000
// glabel D_80A14FC8
//  .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

extern SkeletonHeader D_060018B8;
extern AnimationHeader D_0600017C;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13098.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Init.s")
void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80A14F8C);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 25.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060018B8, &D_0600017C, this->limbDrawTable,
                   this->transitionDrawTable, 28);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80A14F54, &this->colliderItem);
    func_80061ED4(&this->actor.colChkInfo, &D_80A14F6C, &D_80A14F64);
    if ((this->actor.params & 0x8000) != 0) {
        this->actor.flags |= 0x80;
        if (1) {}
        this->actor.draw = func_80A14E28;
        this->actor.params &= 0x7FFF;
    }
    if (this->actor.params < 2) {
        this->unk_1B9 = 1;
    } else {
        this->unk_1B9 = 0;
    }
    if (this->unk_1B9 != 0) {
        this->actionFunc = func_80A13A08;
        this->unk_1BA = Math_Rand_S16Offset(20, 60);
        this->actor.shape.rot.x = 0x1554;
        this->unk_1B8 = 1;
        this->actor.naviEnemyId = 0x11;
        this->unk_310 = this->actor.initPosRot.pos.y;
    } else {
        if (this->actor.params == 3) {
            this->actionFunc = func_80A142F4;
        } else {
            this->actionFunc = func_80A13A08;
        }
        if (this->actor.params == 4) {
            this->collider.list->body.toucher.effect = 2;
            this->actor.naviEnemyId = 0x56;
        } else {
            this->collider.list->body.toucher.effect = 0;
            this->actor.naviEnemyId = 0x12;
        }
        this->unk_310 = this->actor.initPosRot.pos.y + 100.0f;
        if (this->actor.params == 4) {
            this->unk_1B8 = 2;
        } else {
            this->unk_1B8 = 0;
        }
    }
    this->collider.list->dim.worldSphere.radius = D_80A14F60->dim.modelSphere.radius;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Destroy.s")
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A132F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A133A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1349C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1350C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A135A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1379C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A138B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A141F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A142F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A143B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1448C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1450C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A149B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14E28.s")
