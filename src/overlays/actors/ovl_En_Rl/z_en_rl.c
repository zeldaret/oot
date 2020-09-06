#include "z_en_rl.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnRl*)thisx)

void EnRl_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRl_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRl_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRl_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AE7798(EnRl* this, GlobalContext* globalCtx);
void func_80AE77B8(EnRl* this, GlobalContext* globalCtx);
void func_80AE77F8(EnRl* this, GlobalContext* globalCtx);
void func_80AE7838(EnRl* this, GlobalContext* globalCtx);
void func_80AE7C64(EnRl* this, GlobalContext* globalCtx);
void func_80AE7C94(EnRl* this, GlobalContext* globalCtx);
void func_80AE7CE8(EnRl* this, GlobalContext* globalCtx);
void func_80AE7D40(EnRl* this, GlobalContext* globalCtx);
void func_80AE7FD0(EnRl* this, GlobalContext* globalCtx);
void func_80AE7FDC(EnRl* this, GlobalContext* globalCtx);
void func_80AE7D94(EnRl* this, GlobalContext* globalCtx);

extern SkeletonHeader D_06007B38;
extern AnimationHeader D_06000A3C;

s32 D_80AE81A0[] = { 0x06003620, 0x06003960, 0x06003B60 };
s32 D_80AE81AC[] = { 0x00000000 };
EnRlActionFunc D_80AE81B0[] = { func_80AE7798, func_80AE77B8, func_80AE77F8, func_80AE7838,
                                func_80AE7C64, func_80AE7C94, func_80AE7CE8, func_80AE7D40 };
EnRlActionFunc D_80AE81D0[] = { func_80AE7FD0, func_80AE7FDC, func_80AE7D94 };

const ActorInit En_Rl_InitVars = { ACTOR_EN_RL,
                                   ACTORTYPE_NPC,
                                   FLAGS,
                                   OBJECT_RL,
                                   sizeof(EnRl),
                                   (ActorFunc)EnRl_Init,
                                   (ActorFunc)EnRl_Destroy,
                                   (ActorFunc)EnRl_Update,
                                   (ActorFunc)EnRl_Draw };

void EnRl_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnRl* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE72D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE73D8.s")

void func_80AE744C(EnRl *this, GlobalContext *globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

void func_80AE7494(EnRl* this) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE74B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE74FC.s")

void func_80AE7544(EnRl* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007B38, &D_06000A3C, 0, 0, 0);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7590.s")

void func_80AE7668(EnRl *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 temp;

    this->drawConfig = 1;
    this->action = 1;
    temp = this->actor.posRot.rot.y + 0x8000;
    player->actor.shape.rot.y = temp;
    player->actor.posRot.rot.y = temp;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE772C.s")

void func_80AE7798(EnRl* this, GlobalContext* globalCtx) {
    func_80AE7668(this, globalCtx);
}

void func_80AE77B8(EnRl *this, GlobalContext *globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7698(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE77F8.s")

void func_80AE7838(EnRl *this, GlobalContext *globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7590(this, globalCtx);
}

void func_80AE7878(EnRl* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007B38, &D_06000A3C, 0, 0, 0);
    this->action = 4;
    this->actor.shape.unk_14 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE78D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7954.s")
/*void func_80AE7954(EnRl *this) {
    if (func_80AE74B4(4, 0)) {
        this->action = 5;
        this->unk_198 = 2;
        this->unk_1A0 = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_19C = 0.0f;
    }
}*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE79A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7AF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7BF8.s")

void func_80AE7C64(EnRl *this, GlobalContext *globalCtx) {
    func_80AE7954(this);
    func_80AE73D8(this, globalCtx);
}

void func_80AE7C94(EnRl *this, GlobalContext *globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE79A4(this, globalCtx);
    func_80AE73D8(this, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7CE8.s")

void func_80AE7D40(EnRl *this, GlobalContext *globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7AF8(this, globalCtx);
    func_80AE73D8(this, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7D94.s")

void EnRl_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnRl* this = THIS;

    if ((this->action < 0) || (this->action > 7) || (D_80AE81B0[this->action] == 0)) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        D_80AE81B0[this->action](this, globalCtx);
    }
}

void EnRl_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnRl* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 50.0f);
    if (this->actor.params == 2) {
        func_80AE7878(this, globalCtx);
    } else {
        func_80AE7544(this, globalCtx);
    }
}
void func_80AE7FD0(EnRl *this, GlobalContext *globalCtx) {

}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7FDC.s")

void EnRl_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnRl* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || D_80AE81D0[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_80AE81D0[this->drawConfig](this, globalCtx);
}