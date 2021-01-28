/*
 * File: z_en_ba.c
 * Overlay: ovl_En_Ba
 * Description: Tentacle from inside Lord Jabu-Jabu
 */

#include "z_en_ba.h"

#define FLAGS 0x00000015

#define THIS ((EnBa*)thisx)

void EnBa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B6568(Actor* thisx);
void func_809B69D4(Actor* thisx);

extern UNK_TYPE D_06000890;
extern UNK_TYPE D_06001D80;

extern InitChainEntry D_809B80F0;
extern Vec3f D_809B80E4;

extern ColliderJntSphInit D_809B80D4;
/*
const ActorInit En_Ba_InitVars = {
    ACTOR_EN_BA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BXA,
    sizeof(EnBa),
    (ActorFunc)EnBa_Init,
    (ActorFunc)EnBa_Destroy,
    (ActorFunc)EnBa_Update,
    (ActorFunc)EnBa_Draw,
};

static ColliderJntSphElementInit D_809B808C[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000010, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 13, { { 0, 0, 0 }, 25 }, 100 },
    },
};

static ColliderJntSphInit D_809B80D4 = {
    {
        COLTYPE_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_JNTSPH,
    },
    2,
    D_809B808C,
};
*/

// void func_809B6350(EnBa* this, u32* arg1) {
//     this->unk150 = arg1;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6350.s")

void EnBa_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnBa* this = THIS;
    Vec3f sp38 = D_809B80E4;
    s32 pad;
    s16 i;

    Actor_ProcessInitChain(&this->actor, &D_809B80F0);
    this->actor.world.pos.y = this->actor.home.pos.y + 100.0f;
    for (i = 13; i >= 0; i--){
        this->unk200[i] = sp38;
        this->unk2A8[i].x = -0x4000;
        this->unk158[i] = this->actor.world.pos;
        this->unk158[i].y = this->actor.world.pos.y - (i+1)*32.0f;
    }
    
    this->actor.targetMode = 4;
    this->unk154 = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    
    if (this->actor.params < 3) {
        if (Flags_GetSwitch(globalCtx, this->unk154) != 0) {
            Actor_Kill(&this->actor);
            return;
        }
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 48.0f);
        Actor_SetScale(&this->actor, 0.01f);
        func_809B6568(&this->actor);
        this->actor.colChkInfo.health = 4;
        this->actor.colChkInfo.mass = 0xFE;
        Collider_InitJntSph(globalCtx, &this->unk320);
        Collider_SetJntSph(globalCtx, &this->unk320, &this->actor, &D_809B80D4, this->unk340);
    } else {
        Actor_SetScale(&this->actor, 0.021f);
        func_809B69D4(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B65A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B69D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B7174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B71F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B75A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B781C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Draw.s")
