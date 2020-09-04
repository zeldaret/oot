#include "z_bg_spot15_rrbox.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot15Rrbox*)thisx)

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808B3A34(BgSpot15Rrbox* this);
void func_808B44B8(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B4084(BgSpot15Rrbox* this, GlobalContext* globalCtx);

s16 D_808B4590 = 0;

extern s32 D_06000348;

const ActorInit Bg_Spot15_Rrbox_InitVars = {
    ACTOR_BG_SPOT15_RRBOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Rrbox),
    (ActorFunc)BgSpot15Rrbox_Init,
    (ActorFunc)BgSpot15Rrbox_Destroy,
    (ActorFunc)BgSpot15Rrbox_Update,
    (ActorFunc)BgSpot15Rrbox_Draw,
};

InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

Vec3f D_808B45C4[] = {
    { 770.0f, 1490.0f, -299.0f },
    { 770.0f, 1550.0f, -299.0f },
};

s32 D_808B45DC[] = { 0x41EFEB85, 0x3C23D70A, 0xC1EFEB85, 0xC1EFEB85, 0x3C23D70A, 0xC1EFEB85, 0xC1EFEB85, 0x3C23D70A,
                     0x41EFEB85, 0x41EFEB85, 0x3C23D70A, 0x41EFEB85, 0x00000000, 0x3C23D70A, 0x00000000 };

s32 D_808B4618[] = { 0, 0 };

void func_808B3960(BgSpot15Rrbox* this, GlobalContext* globalCtx, s32* arg2, s32 flags) {
    s32 pad1 = 0;
    s32 sp30 = 0;
    s32 pad2 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(arg2, &sp30);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);

    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot15_rrbox.c", 0xAB,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

/*
void func_808B39E8(void *arg0, void *arg1, f32 arg2, f32 arg3) {
    arg0->unk0 = (f32) ((arg1->unk8 * arg2) + (arg1->unk0 * arg3));
    arg0->unk4 = (f32) arg1->unk4;
    arg0->unk8 = (f32) ((arg1->unk8 * arg3) - (arg1->unk0 * arg2));
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B39E8.s")

void func_808B3A34(BgSpot15Rrbox* this) {
    this->unk_180 = 50;
}

bool func_808B3A40(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;
    DynaPolyActor* temp_v0;

    temp_v0 = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->unk_180);

    if (temp_v0 != 0) {
        if (Math3D_Dist2DSq(temp_v0->actor.posRot.pos.x, temp_v0->actor.posRot.pos.z, this->dyna.actor.posRot.pos.x,
                            this->dyna.actor.posRot.pos.z) < 0.01f) {
            return true;
        }
    }
    return false;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3AAC.s")

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;

    func_808B3960(this, globalCtx, &D_06000348, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    func_808B3A34(this);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        func_808B44B8(this, globalCtx);
        this->dyna.actor.posRot.pos = D_808B45C4[D_808B4590];
        D_808B4590++;
    } else {
        func_808B4084(this, globalCtx);
    }
    osSyncPrintf("(spot15 ロンロン木箱)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

/*

void func_808B44B8(void *arg0, ? arg1) {
    arg0->unk164 = &func_808B44CC;
}

void func_808B4084(void *arg0, ? arg1) {
    arg0->unk164 = &func_808B40AC;
    arg0->unk6C = 0.0f;
    arg0->unk5C = 0.0f;
    arg0->unk60 = 0.0f;
    arg0->unk64 = 0.0f;
}
*/

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B40AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B43D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B44B8.s")

// void func_808B44B8(BgSpot15Rrbox* this, GlobalContext *globalCtx) {
//     &this->unk_164 = &func_808B44CC;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B44CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Draw.s")
