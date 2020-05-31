/*
 * File: z_bg_hidan_fslift.c
 * Overlay: Bg_Hidan_Fslift
 * Description: Hookshot Elevator
 */

#include "z_bg_hidan_fslift.h"

#define FLAGS 0x00000010

#define THIS ((BgHidanFslift*)thisx)

void BgHidanFslift_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanFslift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanFslift_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanFslift_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80886FCC(BgHidanFslift* this, GlobalContext* globalCtx);
void func_8088706C(BgHidanFslift* this, GlobalContext* globalCtx);
void func_808870D8(BgHidanFslift* this, GlobalContext* globalCtx);

extern Gfx D_0600B630[];
extern UNK_TYPE D_0600E1E8;

const ActorInit Bg_Hidan_Fslift_InitVars = {
    ACTOR_BG_HIDAN_FSLIFT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanFslift),
    (ActorFunc)BgHidanFslift_Init,
    (ActorFunc)BgHidanFslift_Destroy,
    (ActorFunc)BgHidanFslift_Update,
    (ActorFunc)BgHidanFslift_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 350, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 2000, ICHAIN_STOP),
};

void BgHidanFslift_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFslift* this = THIS;
    s32 pad1;
    s32 local_c = 0;
    s32 pad2;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyInfo_SetActorMove(thisx, 1);
    DynaPolyInfo_Alloc(&D_0600E1E8, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    if (Actor_SpawnAttached(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_OBJ_HSBLOCK, thisx->posRot.pos.x,
                            thisx->posRot.pos.y + 40.0f, thisx->posRot.pos.z + -28.0f, 0, 0, 0, 2) == NULL) {
        Actor_Kill(thisx);
        return;
    }
    this->actionFunc = func_80886FCC;
}

void func_80886F24(BgHidanFslift* this) {
    Actor* thisx = &this->dyna.actor;

    if (thisx->attachedB != NULL && thisx->attachedB->update != NULL) {
        thisx->attachedB->posRot.pos.x = thisx->posRot.pos.x;
        thisx->attachedB->posRot.pos.y = thisx->posRot.pos.y + 40.0f;
        thisx->attachedB->posRot.pos.z = thisx->posRot.pos.z + -28.0f;
        return;
    }
    thisx->attachedB = NULL;
}

void BgHidanFslift_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFslift* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80886FB4(BgHidanFslift* this) {
    this->unk_168 = 0x28;
    this->actionFunc = func_80886FCC;
}

void func_80886FCC(BgHidanFslift* this, GlobalContext* globalCtx) {
    s32 heightBool;
    Actor* thisx = &this->dyna.actor;

    DECR(this->unk_168);

    if (this->unk_168 == 0) {
        heightBool = false;
        if ((thisx->posRot.pos.y - thisx->initPosRot.pos.y) < 0.5f) {
            heightBool = true;
        }
        if (func_80043590(thisx)) {
            if (heightBool) {
                this->actionFunc = func_808870D8;
                return;
            }
        }
        if (!heightBool) {
            this->actionFunc = func_8088706C;
        }
    }
}

void func_8088706C(BgHidanFslift* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (Math_ApproxF(&thisx->posRot.pos.y, thisx->initPosRot.pos.y, 4.0f)) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_BLOCK_BOUND);
        func_80886FB4(this);
    } else {
        func_8002F974(thisx, 0x20b9);
    }
    func_80886F24(this);
}

void func_808870D8(BgHidanFslift* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (func_80043590(thisx)) {
        if (Math_ApproxF(&thisx->posRot.pos.y, thisx->initPosRot.pos.y + 790.0f, 4.0f)) {
            Audio_PlayActorSound2(thisx, NA_SE_EV_BLOCK_BOUND);
            func_80886FB4(this);
        } else {
            func_8002F974(thisx, 0x20b9);
        }
    } else {
        func_80886FB4(this);
    }
    func_80886F24(this);
}

void BgHidanFslift_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanFslift* this = THIS;

    this->actionFunc(this, globalCtx);
    if (func_8004356C(thisx)) {
        if (this->unk_16A == 0) {
            this->unk_16A = 3;
        }
        func_8005A77C(globalCtx->cameraPtrs[0], 0x30);
    } else if (func_8004356C(thisx) == 0) {
        if (this->unk_16A != 0) {
            func_8005A77C(globalCtx->cameraPtrs[0], 3);
        }
        this->unk_16A = 0;
    }
}

void BgHidanFslift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_0600B630);
}
