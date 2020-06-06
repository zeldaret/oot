/*
 * File: z_bg_spot18_futa.c
 * Overlay: ovl_Bg_Spot18_Futa
 * Description: The lid to the spinning goron vase.
 */

#include "z_bg_spot18_futa.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot18Futa*)thisx)

void BgSpot18Futa_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Futa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Futa_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Futa_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Spot18_Futa_InitVars = {
    ACTOR_BG_SPOT18_FUTA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Futa),
    (ActorFunc)BgSpot18Futa_Init,
    (ActorFunc)BgSpot18Futa_Destroy,
    (ActorFunc)BgSpot18Futa_Update,
    (ActorFunc)BgSpot18Futa_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1000, ICHAIN_STOP),
};

extern UNK_TYPE D_06000368;
extern Gfx D_06000150[];

void BgSpot18Futa_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Futa* this = THIS;
    s32 pad;
    u32 sp1C = 0;

    DynaPolyInfo_SetActorMove(&this->actor, 0);
    DynaPolyInfo_Alloc(&D_06000368, &sp1C);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp1C);
    Actor_ProcessInitChain(&this->actor, sInitChain);
}

void BgSpot18Futa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Futa* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

void BgSpot18Futa_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Futa* this = THIS;
    s32 iVar1;

    if (this->actor.attachedA == NULL) {
        iVar1 = Math_ApproxF(&this->actor.scale.x, 0, 0.005);

        if (iVar1 != 0) {
            Actor_Kill(&this->actor);
        } else {
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }
}

void BgSpot18Futa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06000150);
}
