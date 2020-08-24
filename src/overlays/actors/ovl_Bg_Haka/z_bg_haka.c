/*
 * File: z_bg_haka.c
 * Overlay: ovl_Bg_Haka
 * Description: Gravestone
 */

#include "z_bg_haka.h"

#define FLAGS 0x00000000

#define THIS ((BgHaka*)thisx)

void BgHaka_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087B758(BgHaka* this, Player* player);
void func_8087B7E8(BgHaka* this, GlobalContext* globalCtx);
void func_8087B938(BgHaka* this, GlobalContext* globalCtx);
void func_8087BAAC(BgHaka* this, GlobalContext* globalCtx);
void func_8087BAE4(BgHaka* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_InitVars = {
    ACTOR_BG_HAKA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA,
    sizeof(BgHaka),
    (ActorFunc)BgHaka_Init,
    (ActorFunc)BgHaka_Destroy,
    (ActorFunc)BgHaka_Update,
    (ActorFunc)BgHaka_Draw,
};
*/

extern UNK_TYPE D_06000428;
extern InitChainEntry D_8087BCF0;
extern f32 D_8087BD40;
extern f32 D_8087BD44;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Init.s")

void BgHaka_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    Actor_ProcessInitChain(&this->dyna.actor, &D_8087BCF0);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06000428, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    this->actionFunc = func_8087B7E8;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Destroy.s")

void BgHaka_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B758.s")

void func_8087B758(BgHaka* this, Player* player) {
    Vec3f sp1C;

    func_8002DBD0(&this->dyna.actor, &sp1C, &player->actor.posRot.pos);
    if (fabsf(sp1C.x) < D_8087BD40 && D_8087BD44 < sp1C.z && sp1C.z < -36.0f) {
        player->stateFlags2 |= 0x200;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B7E8.s")

void func_8087B7E8(BgHaka* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (0.0f != this->dyna.unk_150) {
        if (globalCtx->sceneNum == SCENE_SPOT02 && LINK_IS_CHILD && gSaveContext.nightFlag == 0) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= -0x11;
            if (!Gameplay_InCsMode(globalCtx)) {
                func_8010B680(globalCtx, 0x5073, NULL);
                this->dyna.actor.params = 0x64;
                this->actionFunc = func_8087BAE4;
            }
        } else {
            if (0.0f < this->dyna.unk_150 ||
                globalCtx->sceneNum == SCENE_SPOT06 && LINK_IS_CHILD && Flags_GetSwitch(globalCtx, 0x23) == 0) {
                this->dyna.unk_150 = 0.0f;
                player->stateFlags2 &= -0x11;
            } else {
                this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y + 0x8000;
                this->actionFunc = func_8087B938;
            }
        }
    }
    func_8087B758(this, player);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAE4.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Update.s")

void BgHaka_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;

    this->actionFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Draw.s")
