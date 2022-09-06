/*
 * File: z_bg_spot12_saku.c
 * Overlay: ovl_Bg_Spot12_Saku
 * Description:
 */

#include "z_bg_spot12_saku.h"
#include "assets/objects/object_spot12_obj/object_spot12_obj.h"

#define FLAGS 0

void BgSpot12Saku_Init(Actor* thisx, PlayState* play);
void BgSpot12Saku_Destroy(Actor* thisx, PlayState* play);
void BgSpot12Saku_Update(Actor* thisx, PlayState* play);
void BgSpot12Saku_Draw(Actor* thisx, PlayState* play);

void func_808B3550(BgSpot12Saku* this);
void func_808B357C(BgSpot12Saku* this, PlayState* play);
void func_808B35E4(BgSpot12Saku* this);
void func_808B3604(BgSpot12Saku* this, PlayState* play);
void func_808B3714(BgSpot12Saku* this);
void func_808B37AC(BgSpot12Saku* this, PlayState* play);

const ActorInit Bg_Spot12_Saku_InitVars = {
    ACTOR_BG_SPOT12_SAKU,
    ACTORCAT_BG,
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

void BgSpot12Saku_InitBgActor(BgSpot12Saku* this, PlayState* play, CollisionHeader* collision, s32 moveFlags) {
    s32 pad;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    BgActor_Init(&this->bg, moveFlags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->bg.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->bg.actor, colHeader);

    if (this->bg.bgId == BG_ACTOR_MAX) {
        // "Warning : move BG registration failed"
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot12_saku.c", 140,
                     this->bg.actor.id, this->bg.actor.params);
    }
}

void BgSpot12Saku_Init(Actor* thisx, PlayState* play) {
    BgSpot12Saku* this = (BgSpot12Saku*)thisx;

    BgSpot12Saku_InitBgActor(this, play, &gGerudoFortressGTGShutterCol, DPM_UNK);
    Actor_ProcessInitChain(&this->bg.actor, sInitChain);
    if (Flags_GetSwitch(play, this->bg.actor.params & 0x3F)) {
        func_808B3714(this);
    } else {
        func_808B3550(this);
    }
}

void BgSpot12Saku_Destroy(Actor* thisx, PlayState* play) {
    BgSpot12Saku* this = (BgSpot12Saku*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->bg.bgId);
}

void func_808B3550(BgSpot12Saku* this) {
    this->actionFunc = func_808B357C;
    this->bg.actor.scale.x = 0.1f;
    this->bg.actor.world.pos.x = this->bg.actor.home.pos.x;
    this->bg.actor.world.pos.z = this->bg.actor.home.pos.z;
}

void func_808B357C(BgSpot12Saku* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->bg.actor.params & 0x3F)) {
        func_808B35E4(this);
        this->timer = 20;
        OnePointCutscene_Init(play, 4170, -99, &this->bg.actor, CAM_ID_MAIN);
    }
}

void func_808B35E4(BgSpot12Saku* this) {
    if (this->timer == 0) {
        this->actionFunc = func_808B3604;
    }
}

void func_808B3604(BgSpot12Saku* this, PlayState* play) {
    f32 temp_ret = Math_SmoothStepToF(&this->bg.actor.scale.x, 0.001f / 0.14f, 0.16f, 0.0022f, 0.001f);
    f32 temp_f18 = ((0.1f - this->bg.actor.scale.x) * 840.0f);

    this->bg.actor.world.pos.x =
        this->bg.actor.home.pos.x - (Math_SinS(this->bg.actor.shape.rot.y + 0x4000) * temp_f18);
    this->bg.actor.world.pos.z =
        this->bg.actor.home.pos.z - (Math_CosS(this->bg.actor.shape.rot.y + 0x4000) * temp_f18);
    if (fabsf(temp_ret) < 0.0001f) {
        func_808B3714(this);
        Audio_PlayActorSfx2(&this->bg.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
    } else {
        func_8002F974(&this->bg.actor, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
    }
}

void func_808B3714(BgSpot12Saku* this) {
    this->actionFunc = func_808B37AC;
    this->bg.actor.scale.x = 0.001f / 0.14f;
    this->bg.actor.world.pos.x = this->bg.actor.home.pos.x - (Math_SinS(this->bg.actor.shape.rot.y + 0x4000) * 78.0f);
    this->bg.actor.world.pos.z = this->bg.actor.home.pos.z - (Math_CosS(this->bg.actor.shape.rot.y + 0x4000) * 78.0f);
}

void func_808B37AC(BgSpot12Saku* this, PlayState* play) {
}

void BgSpot12Saku_Update(Actor* thisx, PlayState* play) {
    BgSpot12Saku* this = (BgSpot12Saku*)thisx;

    if (this->timer > 0) {
        this->timer--;
    }
    this->actionFunc(this, play);
}

void BgSpot12Saku_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGerudoFortressGTGShutterDL);
}
