/*
 * File: z_en_tg.c
 * Overlay: ovl_En_Tg
 * Description: Honey & Darling
 */

#include "z_en_tg.h"

#define FLAGS 0x00000009

#define THIS ((EnTg*)thisx)

void EnTg_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTg_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTg_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B185C0(EnTg* this, GlobalContext* globalCtx);

extern AnimationHeader D_06005040;
extern FlexSkeletonHeader D_0600AE40;

/*
const ActorInit En_Tg_InitVars = {
    ACTOR_EN_TG,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_MU,
    sizeof(EnTg),
    (ActorFunc)EnTg_Init,
    (ActorFunc)EnTg_Destroy,
    (ActorFunc)EnTg_Update,
    (ActorFunc)EnTg_Draw,
};

static ColliderCylinderInit D_80B18910 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 64, 0, { 0, 0, 0 } },
};
*/

extern ColliderCylinderInit D_80B18910;
extern CollisionCheckInfoInit2 D_80B1893C;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B18360.s")
u16 func_80B18360(GlobalContext* globalCtx, Actor* thisx);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B183F8.s")
s16 func_80B183F8(GlobalContext* globalCtx, Actor* thisx);

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Init.s")
void EnTg_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600AE40, &D_06005040, NULL, NULL, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80B18910);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &D_80B1893C);
    this->actor.targetMode = 6;
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_208 = globalCtx->state.frames % 2;
    this->actionFunc = func_80B185C0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Destroy.s")
void EnTg_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B185C0.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Update.s")
void EnTg_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTg* this = THIS;
    s32 pad;
    f32 temp;
    Vec3s sp2C;

    sp2C.x = this->actor.world.pos.x;
    sp2C.y = this->actor.world.pos.y;
    sp2C.z = (s16) this->actor.world.pos.z + 3;
    this->collider.dim.pos = sp2C;
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    temp = this->collider.dim.radius + 30.0f;
    func_800343CC(globalCtx, &this->actor, &this->unk_1E0, temp, func_80B18360, func_80B183F8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B18704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B1871C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B18778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Draw.s")
