/*
 * File: z_bg_jya_amishutter.c
 * Overlay: Bg_Jya_Amishutter
 * Description: Circular metal grate. Lifts up when you get close to it.
 */

#include "z_bg_jya_amishutter.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"

#define FLAGS 0

void BgJyaAmishutter_Init(Actor* thisx, PlayState* play);
void BgJyaAmishutter_Destroy(Actor* thisx, PlayState* play);
void BgJyaAmishutter_Update(Actor* thisx, PlayState* play);
void BgJyaAmishutter_Draw(Actor* thisx, PlayState* play);

void BgJyaAmishutter_SetupWaitForPlayer(BgJyaAmishutter* this);
void BgJyaAmishutter_WaitForPlayer(BgJyaAmishutter* this);
void func_80893428(BgJyaAmishutter* this);
void func_80893438(BgJyaAmishutter* this);
void func_808934B0(BgJyaAmishutter* this);
void func_808934C0(BgJyaAmishutter* this);
void func_808934FC(BgJyaAmishutter* this);
void func_8089350C(BgJyaAmishutter* this);

ActorProfile Bg_Jya_Amishutter_Profile = {
    /**/ ACTOR_BG_JYA_AMISHUTTER,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaAmishutter),
    /**/ BgJyaAmishutter_Init,
    /**/ BgJyaAmishutter_Destroy,
    /**/ BgJyaAmishutter_Update,
    /**/ BgJyaAmishutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgJyaAmishutter_InitDynaPoly(BgJyaAmishutter* this, PlayState* play, CollisionHeader* collision, s32 flag) {
    s32 pad1;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_amishutter.c", 129,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgJyaAmishutter_Init(Actor* thisx, PlayState* play) {
    BgJyaAmishutter* this = (BgJyaAmishutter*)thisx;

    BgJyaAmishutter_InitDynaPoly(this, play, &gAmishutterCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    BgJyaAmishutter_SetupWaitForPlayer(this);
}

void BgJyaAmishutter_Destroy(Actor* thisx, PlayState* play) {
    BgJyaAmishutter* this = (BgJyaAmishutter*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgJyaAmishutter_SetupWaitForPlayer(BgJyaAmishutter* this) {
    this->actionFunc = BgJyaAmishutter_WaitForPlayer;
}

void BgJyaAmishutter_WaitForPlayer(BgJyaAmishutter* this) {
    if ((this->dyna.actor.xzDistToPlayer < 60.0f) && (fabsf(this->dyna.actor.yDistToPlayer) < 30.0f)) {
        func_80893428(this);
    }
}

void func_80893428(BgJyaAmishutter* this) {
    this->actionFunc = func_80893438;
}

void func_80893438(BgJyaAmishutter* this) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 100.0f, 3.0f)) {
        func_808934B0(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void func_808934B0(BgJyaAmishutter* this) {
    this->actionFunc = func_808934C0;
}

void func_808934C0(BgJyaAmishutter* this) {
    if (this->dyna.actor.xzDistToPlayer > 300.0f) {
        func_808934FC(this);
    }
}

void func_808934FC(BgJyaAmishutter* this) {
    this->actionFunc = func_8089350C;
}

void func_8089350C(BgJyaAmishutter* this) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 3.0f)) {
        BgJyaAmishutter_SetupWaitForPlayer(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void BgJyaAmishutter_Update(Actor* thisx, PlayState* play) {
    BgJyaAmishutter* this = (BgJyaAmishutter*)thisx;

    this->actionFunc(this);
}

void BgJyaAmishutter_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gAmishutterDL);
}
