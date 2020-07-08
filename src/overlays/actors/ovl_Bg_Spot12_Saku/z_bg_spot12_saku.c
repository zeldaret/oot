/*
 * File: z_bg_spot12_saku.c
 * Overlay: Bg_Spot12_Saku
 * Description:
 */

#include "z_bg_spot12_saku.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot12Saku*)thisx)

void BgSpot12Saku_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot12Saku_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot12Saku_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot12Saku_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B3550(BgSpot12Saku* this);
void func_808B357C(BgSpot12Saku* this, GlobalContext* globalCtx);
void func_808B35E4(BgSpot12Saku* this);
void func_808B3604(BgSpot12Saku* this, GlobalContext* globalCtx);
void func_808B3714(BgSpot12Saku* this);
void func_808B37AC(BgSpot12Saku* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot12_Saku_InitVars = {
    ACTOR_BG_SPOT12_SAKU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT12_OBJ,
    sizeof(BgSpot12Saku),
    (ActorFunc)BgSpot12Saku_Init,
    (ActorFunc)BgSpot12Saku_Destroy,
    (ActorFunc)BgSpot12Saku_Update,
    (ActorFunc)BgSpot12Saku_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

extern Gfx D_06002260[];
extern UNK_TYPE D_0600238C;

void func_808B3420(BgSpot12Saku* this, GlobalContext* globalCtx, UNK_TYPE collision, DynaPolyMoveFlag flags) {
    Actor* thisx = &this->dyna.actor;
    s32 localC = 0;
    s32 pad[2];

    DynaPolyInfo_SetActorMove(thisx, flags);
    DynaPolyInfo_Alloc(collision, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);
    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot12_saku.c", 140,
                     thisx->id, thisx->params);
    }
}

void BgSpot12Saku_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot12Saku* this = THIS;

    func_808B3420(this, globalCtx, &D_0600238C, 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    if (Flags_GetSwitch(globalCtx, thisx->params & 0x3F)) {
        func_808B3714(this);
    } else {
        func_808B3550(this);
    }
}

void BgSpot12Saku_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot12Saku* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808B3550(BgSpot12Saku* this) {
    Actor* thisx = &this->dyna.actor;

    this->actionFunc = func_808B357C;
    thisx->scale.x = 0.1f;
    thisx->posRot.pos.x = thisx->initPosRot.pos.x;
    thisx->posRot.pos.z = thisx->initPosRot.pos.z;
}

void func_808B357C(BgSpot12Saku* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (Flags_GetSwitch(globalCtx, thisx->params & 0x3F)) {
        func_808B35E4(this);
        this->unk_168 = 0x14;
        func_800800F8(globalCtx, 0x104A, -0x63, thisx, 0);
    }
}

void func_808B35E4(BgSpot12Saku* this) {
    if (this->unk_168 == 0) {
        this->actionFunc = func_808B3604;
    }
}

void func_808B3604(BgSpot12Saku* this, GlobalContext* globalCtx) {
    f32 temp_ret = Math_SmoothScaleMaxMinF(&this->dyna.actor.scale.x, 0.001f / 0.14f, 0.16f, 0.0022f, 0.001f);
    f32 temp_f18 = ((0.1f - this->dyna.actor.scale.x) * 840.0f);

    this->dyna.actor.posRot.pos.x =
        this->dyna.actor.initPosRot.pos.x - (Math_Sins(this->dyna.actor.shape.rot.y + 0x4000) * temp_f18);
    this->dyna.actor.posRot.pos.z =
        this->dyna.actor.initPosRot.pos.z - (Math_Coss(this->dyna.actor.shape.rot.y + 0x4000) * temp_f18);
    if (fabsf(temp_ret) < 0.0001f) {
        func_808B3714(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
    }
}

void func_808B3714(BgSpot12Saku* this) {
    Actor* thisx = &this->dyna.actor;

    this->actionFunc = func_808B37AC;
    thisx->scale.x = 0.001f / 0.14f;
    thisx->posRot.pos.x = thisx->initPosRot.pos.x - (Math_Sins(thisx->shape.rot.y + 0x4000) * 78.0f);
    thisx->posRot.pos.z = thisx->initPosRot.pos.z - (Math_Coss(thisx->shape.rot.y + 0x4000) * 78.0f);
}

void func_808B37AC(BgSpot12Saku* this, GlobalContext* globalCtx) {
}

void BgSpot12Saku_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot12Saku* this = THIS;

    if (this->unk_168 > 0) {
        this->unk_168 -= 1;
    }
    this->actionFunc(this, globalCtx);
}

void BgSpot12Saku_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06002260);
}
