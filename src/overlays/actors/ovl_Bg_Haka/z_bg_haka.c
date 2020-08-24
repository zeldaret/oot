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
extern f32 D_8087BD48;

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

    if (this->dyna.unk_150 != 0.0f) {
        if (globalCtx->sceneNum == SCENE_SPOT02 && LINK_IS_CHILD && gSaveContext.nightFlag == 0) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= -0x11;
            if (!Gameplay_InCsMode(globalCtx)) {
                func_8010B680(globalCtx, 0x5073, NULL);
                this->dyna.actor.params = 0x64;
                this->actionFunc = func_8087BAE4;
            }
        } else if (0.0f < this->dyna.unk_150 ||
                   (globalCtx->sceneNum == SCENE_SPOT06 && LINK_IS_CHILD && Flags_GetSwitch(globalCtx, 0x23) == 0)) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= -0x11;
        } else {
            this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y + 0x8000;
            this->actionFunc = func_8087B938;
        }
    }
    func_8087B758(this, player);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B938.s")

void func_8087B938(BgHaka* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 sp38;
    f32 temp_f0;

    this->dyna.actor.speedXZ += D_8087BD48;
    temp_f0 = this->dyna.actor.speedXZ;
    if (temp_f0 > 1.5f) {
        this->dyna.actor.speedXZ = 1.5f;
    } else {
        this->dyna.actor.speedXZ = temp_f0;
    }
    sp38 = Math_ApproxF(&this->dyna.actor.minVelocityY, 60.0f, this->dyna.actor.speedXZ);
    this->dyna.actor.posRot.pos.x =
        Math_Sins(this->dyna.actor.posRot.rot.y) * this->dyna.actor.minVelocityY + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z =
        Math_Coss(this->dyna.actor.posRot.rot.y) * this->dyna.actor.minVelocityY + this->dyna.actor.initPosRot.pos.z;
    if (sp38 != 0) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= -0x11;
        if (this->dyna.actor.params == 1) {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        } else if (gSaveContext.nightFlag != 0 && globalCtx->sceneNum == SCENE_SPOT02) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_POH, this->dyna.actor.initPosRot.pos.x,
                        this->dyna.actor.initPosRot.pos.y, this->dyna.actor.initPosRot.pos.z, 0,
                        this->dyna.actor.shape.rot.y, 0, 1);
        }
        this->actionFunc = func_8087BAAC;
    }
    func_8002F974(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAE4.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Update.s")

void BgHaka_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;

    this->actionFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Draw.s")
