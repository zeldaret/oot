/*
 * File: z_bg_ice_shutter.c
 * Overlay: ovl_Bg_Ice_Shutter
 * Description: Vertical Ice Bars (Doors) in Ice Cavern
 */

#include "z_bg_ice_shutter.h"
#include "assets/objects/object_ice_objects/object_ice_objects.h"

#define FLAGS ACTOR_FLAG_4

void BgIceShutter_Init(Actor* thisx, PlayState* play);
void BgIceShutter_Destroy(Actor* thisx, PlayState* play);
void BgIceShutter_Update(Actor* thisx, PlayState* play);
void BgIceShutter_Draw(Actor* thisx, PlayState* play);

void func_80891CF4(BgIceShutter* this, PlayState* play);
void func_80891D6C(BgIceShutter* this, PlayState* play);
void func_80891DD4(BgIceShutter* this, PlayState* play);

const ActorInit Bg_Ice_Shutter_InitVars = {
    ACTOR_BG_ICE_SHUTTER,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceShutter),
    (ActorFunc)BgIceShutter_Init,
    (ActorFunc)BgIceShutter_Destroy,
    (ActorFunc)BgIceShutter_Update,
    (ActorFunc)BgIceShutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void func_80891AC0(BgIceShutter* this) {
    f32 sp24;

    sp24 = Math_SinS(this->bg.actor.shape.rot.x) * this->bg.actor.velocity.y;
    this->bg.actor.world.pos.y =
        (Math_CosS(this->bg.actor.shape.rot.x) * this->bg.actor.velocity.y) + this->bg.actor.home.pos.y;
    this->bg.actor.world.pos.x = (Math_SinS(this->bg.actor.shape.rot.y) * sp24) + this->bg.actor.home.pos.x;
    this->bg.actor.world.pos.z = (Math_CosS(this->bg.actor.shape.rot.y) * sp24) + this->bg.actor.home.pos.z;
}

void BgIceShutter_Init(Actor* thisx, PlayState* play) {
    BgIceShutter* this = (BgIceShutter*)thisx;
    f32 sp24;
    CollisionHeader* colHeader = NULL;
    s32 sp28;
    f32 temp_f6;

    Actor_ProcessInitChain(&this->bg.actor, sInitChain);
    BgActor_Init(&this->bg, DPM_UNK);
    sp28 = this->bg.actor.params & 0xFF;
    this->bg.actor.params = (this->bg.actor.params >> 8) & 0xFF;
    CollisionHeader_GetVirtual(&object_ice_objects_Col_002854, &colHeader);
    this->bg.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->bg.actor, colHeader);
    if (sp28 == 2) {
        this->bg.actor.shape.rot.x = -0x4000;
    }

    if (sp28 != 1) {
        if (Flags_GetClear(play, this->bg.actor.room)) {
            Actor_Kill(&this->bg.actor);
        } else {
            this->actionFunc = func_80891CF4;
        }

    } else {
        if (Flags_GetSwitch(play, this->bg.actor.params)) {
            Actor_Kill(&this->bg.actor);
        } else {
            this->actionFunc = func_80891D6C;
        }
    }

    if (sp28 == 2) {
        temp_f6 = Math_SinS(this->bg.actor.shape.rot.x) * 50.0f;
        this->bg.actor.focus.pos.x = (Math_SinS(this->bg.actor.shape.rot.y) * temp_f6) + this->bg.actor.home.pos.x;
        this->bg.actor.focus.pos.y = this->bg.actor.home.pos.y;
        this->bg.actor.focus.pos.z = this->bg.actor.home.pos.z + (Math_CosS(this->bg.actor.shape.rot.y) * temp_f6);
    } else {
        Actor_SetFocus(&this->bg.actor, 50.0f);
    }
}

void BgIceShutter_Destroy(Actor* thisx, PlayState* play) {
    BgIceShutter* this = (BgIceShutter*)thisx;
    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->bg.bgId);
}

void func_80891CF4(BgIceShutter* this, PlayState* play) {
    if (Flags_GetTempClear(play, this->bg.actor.room)) {
        Flags_SetClear(play, this->bg.actor.room);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->bg.actor.world.pos, 30, NA_SE_EV_SLIDE_DOOR_OPEN);
        this->actionFunc = func_80891DD4;
        if (this->bg.actor.shape.rot.x == 0) {
            OnePointCutscene_Attention(play, &this->bg.actor);
        }
    }
}

void func_80891D6C(BgIceShutter* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->bg.actor.params)) {
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->bg.actor.world.pos, 30, NA_SE_EV_SLIDE_DOOR_OPEN);
        this->actionFunc = func_80891DD4;
        OnePointCutscene_Attention(play, &this->bg.actor);
    }
}

void func_80891DD4(BgIceShutter* this, PlayState* play) {
    Math_StepToF(&this->bg.actor.speedXZ, 30.0f, 2.0f);
    if (Math_StepToF(&this->bg.actor.velocity.y, 210.0f, this->bg.actor.speedXZ)) {
        Actor_Kill(&this->bg.actor);
        return;
    }

    func_80891AC0(this);
}

void BgIceShutter_Update(Actor* thisx, PlayState* play) {
    BgIceShutter* this = (BgIceShutter*)thisx;

    this->actionFunc(this, play);
}

void BgIceShutter_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, object_ice_objects_DL_002740);
}
