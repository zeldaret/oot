/*
 * File: z_bg_spot12_gate.c
 * Overlay: ovl_Bg_Spot12_Gate
 * Description: Haunted Wasteland Gate
 */

#include "z_bg_spot12_gate.h"
#include "assets/objects/object_spot12_obj/object_spot12_obj.h"
#include "quake.h"

#define FLAGS 0

void BgSpot12Gate_Init(Actor* thisx, PlayState* play);
void BgSpot12Gate_Destroy(Actor* thisx, PlayState* play);
void BgSpot12Gate_Update(Actor* thisx, PlayState* play);
void BgSpot12Gate_Draw(Actor* thisx, PlayState* play);

void func_808B30C0(BgSpot12Gate* this);
void func_808B30D8(BgSpot12Gate* this, PlayState* play);
void func_808B3134(BgSpot12Gate* this);
void func_808B314C(BgSpot12Gate* this, PlayState* play);
void func_808B317C(BgSpot12Gate* this);
void func_808B318C(BgSpot12Gate* this, PlayState* play);
void func_808B3274(BgSpot12Gate* this);
void func_808B3298(BgSpot12Gate* this, PlayState* play);

ActorProfile Bg_Spot12_Gate_Profile = {
    /**/ ACTOR_BG_SPOT12_GATE,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT12_OBJ,
    /**/ sizeof(BgSpot12Gate),
    /**/ BgSpot12Gate_Init,
    /**/ BgSpot12Gate_Destroy,
    /**/ BgSpot12Gate_Update,
    /**/ BgSpot12Gate_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 2500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1200, ICHAIN_STOP),
};

void BgSpot12Gate_InitDynaPoly(BgSpot12Gate* this, PlayState* play, CollisionHeader* collision, s32 flags) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot12_gate.c", 145,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgSpot12Gate_Init(Actor* thisx, PlayState* play) {
    BgSpot12Gate* this = (BgSpot12Gate*)thisx;

    BgSpot12Gate_InitDynaPoly(this, play, &gGerudoFortressWastelandGateCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        func_808B3274(this);
    } else {
        func_808B30C0(this);
    }
}

void BgSpot12Gate_Destroy(Actor* thisx, PlayState* play) {
    BgSpot12Gate* this = (BgSpot12Gate*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808B30C0(BgSpot12Gate* this) {
    this->actionFunc = func_808B30D8;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
}

void func_808B30D8(BgSpot12Gate* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        func_808B3134(this);
        OnePointCutscene_Init(play, 4160, -99, &this->dyna.actor, CAM_ID_MAIN);
    }
}

void func_808B3134(BgSpot12Gate* this) {
    this->actionFunc = func_808B314C;
    this->unk_168 = 40;
}

void func_808B314C(BgSpot12Gate* this, PlayState* play) {
    if (this->unk_168 <= 0) {
        func_808B317C(this);
    }
}

void func_808B317C(BgSpot12Gate* this) {
    this->actionFunc = func_808B318C;
}

void func_808B318C(BgSpot12Gate* this, PlayState* play) {
    s32 pad;

    Math_StepToF(&this->dyna.actor.velocity.y, 1.6f, 0.03f);
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 200.0f,
                     this->dyna.actor.velocity.y)) {
        func_808B3274(this);

        {
            s32 quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_3);

            Quake_SetSpeed(quakeIndex, -0x3CB0);
            Quake_SetPerturbations(quakeIndex, 3, 0, 0, 0);
            Quake_SetDuration(quakeIndex, 12);
        }

        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
    }
}

void func_808B3274(BgSpot12Gate* this) {
    this->actionFunc = func_808B3298;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + 200.0f;
}

void func_808B3298(BgSpot12Gate* this, PlayState* play) {
}

void BgSpot12Gate_Update(Actor* thisx, PlayState* play) {
    BgSpot12Gate* this = (BgSpot12Gate*)thisx;

    if (this->unk_168 > 0) {
        this->unk_168--;
    }
    this->actionFunc(this, play);
}

void BgSpot12Gate_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGerudoFortressWastelandGateDL);
}
