/*
 * File: z_shot_sun.c
 * Overlay: ovl_Shot_Sun
 * Description: Song of Storms Fairy
 */

#include "z_shot_sun.h"

#define FLAGS 0x00000009

#define THIS ((ShotSun*)thisx)

void ShotSun_Init(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx);

// void func_80BADDCC();
// void func_80BADE74();
void func_80BADF0C(struct ShotSun*, GlobalContext*);
void func_80BAE05C(struct ShotSun*, GlobalContext*);

const ActorInit Shot_Sun_InitVars = {
    ACTOR_SHOT_SUN,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ShotSun),
    (ActorFunc)ShotSun_Init,
    (ActorFunc)ShotSun_Destroy,
    (ActorFunc)ShotSun_Update,
    NULL,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000020, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 60, 0, { 0, 0, 0 } },
};

void ShotSun_Init(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    s32 temp_v0;

    // Translation: Ocarina secret occurrence
    osSyncPrintf("%d ---- オカリナの秘密発生!!!!!!!!!!!!!\n", this->actor.params);
    temp_v0 = this->actor.params & 0xFF;
    if (temp_v0 == 0x40 || temp_v0 == 0x41) {
        this->unk_19C[8] = 0;
        this->actor.flags |= 0x10;
        this->actor.flags |= 0x2000000;
        this->actionFunc = &func_80BADF0C;
        this->actor.flags |= 0x8000000;
    } else {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        this->actionFunc = &func_80BAE05C;
        this->actor.flags &= ~1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/ShotSun_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADE74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADF0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BAE05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/ShotSun_Update.s")
