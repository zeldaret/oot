/*
 * File: z_en_arrow.c
 * Overlay: ovl_En_Arrow
 * Description: Arrows
 */

#include "z_en_arrow.h"

#define FLAGS 0x00000030

#define THIS ((EnArrow*)thisx)

void EnArrow_Init(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Update(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B3BD4(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Arrow_InitVars = {
    ACTOR_EN_ARROW,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnArrow),
    (ActorFunc)EnArrow_Init,
    (ActorFunc)EnArrow_Destroy,
    (ActorFunc)EnArrow_Update,
    (ActorFunc)EnArrow_Draw,
};

// sQuadInit
ColliderQuadInit D_809B4D50 = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x08, COLSHAPE_QUAD },
    { 0x02, { 0x00000020, 0x00, 0x01 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x1D, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

// sInitChain
InitChainEntry D_809B4DA0[] = {
    ICHAIN_F32(minVelocityY, 65386, ICHAIN_STOP),
};

s32 D_809B4E5C[] = { 0x010A010B, 0x010C010A, 0x010A010A };
s32 D_809B4E68[] = { 0x00000000, 0x3F000000, 0x00000000 };
s32 D_809B4E74[] = { 0x00000000, 0x3F000000, 0x00000000 };
s32 D_809B4E80[] = { 0xFFFF64FF };
s32 D_809B4E84[] = { 0xFF320000 };
s32 D_809B4E88[] = { 0x00000000, 0x43C80000, 0x44BB8000 };
s32 D_809B4E94[] = { 0x00000000, 0xC3C80000, 0x44BB8000 };
s32 D_809B4EA0[] = { 0x00000000, 0x00000000, 0xC3960000, 0x00000000 };

extern SkeletonHeader D_04006010;
extern AnimationHeader D_0400436C;

void EnArrow_SetupAction(EnArrow* this, EnArrowActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Init.s")
void EnArrow_Init(Actor* thisx, GlobalContext* globalCtx) {
    static EffectBlureInit2 D_809B4DA4 = {
        0, 4, 0, { 0, 255, 200, 255 },   { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 10,
        0, 1, 0, { 255, 255, 170, 255 }, { 0, 150, 0, 0 },

    };
    static EffectBlureInit2 D_809B4DC8 = {
        0, 4, 0, { 0, 255, 200, 255 }, { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 10,
        0, 1, 0, { 255, 200, 0, 255 }, { 255, 0, 0, 0 },
    };
    static EffectBlureInit2 D_809B4DEC = {
        0, 4, 0, { 0, 255, 200, 255 },   { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 10,
        0, 1, 0, { 170, 255, 255, 255 }, { 0, 100, 255, 0 },

    };
    static EffectBlureInit2 D_809B4E10 = {
        0, 4, 0, { 0, 255, 200, 255 },   { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 10,
        0, 1, 0, { 255, 255, 170, 255 }, { 255, 255, 0, 0 },

    };
    static u32 D_809B4E34[] = {
        0x00000800, 0x00000020, 0x00000020, 0x00000800, 0x00001000,
        0x00002000, 0x00010000, 0x00004000, 0x00008000, 0x00000004,
    };
    EnArrow* this = THIS;

    Actor_ProcessInitChain(this, D_809B4DA0);

    if (this->actor.params == -0xA) {
        this->unk_24B = 1;
        this->actor.params = 0xA;
    }

    if (this->actor.params < 0xA) {

        if (this->actor.params < 9) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_04006010, &D_0400436C, NULL, NULL, 0);
        }

        if (this->actor.params < 3) {

            if (this->actor.params == 1) {
                D_809B4DA4.elemDuration = 4;
            } else {
                D_809B4DA4.elemDuration = 0x10;
            }

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &D_809B4DA4);
        } else if (this->actor.params == 3) {

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &D_809B4DC8);

        } else if (this->actor.params == 4) {

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &D_809B4DEC);

        } else if (this->actor.params == 5) {

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &D_809B4E10);
        }

        Collider_InitQuad(globalCtx, &this->collider);
        Collider_SetQuad(globalCtx, &this->collider, this, &D_809B4D50);

        if (this->actor.params < 3) {
            this->collider.body.toucherFlags = this->collider.body.toucherFlags &= ~0x18;
        }

        if (this->actor.params < 0) {
            this->collider.base.atFlags = 0x11;
        } else if (this->actor.params < 0xA) {
            this->collider.body.toucher.flags = D_809B4E34[this->actor.params];
            LOG_HEX("this->at_info.cl_elem.at_btl_info.at_type = %x\n", this->collider.body.toucher.flags,
                    "../z_en_arrow.c", 707);
        }
    }

    EnArrow_SetupAction(this, func_809B3BD4);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B45E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Draw.s")
