/*
 * File: z_bg_spot18_shutter.c
 * Overlay: Bg_Spot18_Shutter
 * Description:
 */

#include "z_bg_spot18_shutter.h"
#include "assets/objects/object_spot18_obj/object_spot18_obj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgSpot18Shutter_Init(Actor* thisx, PlayState* play);
void BgSpot18Shutter_Destroy(Actor* thisx, PlayState* play);
void BgSpot18Shutter_Update(Actor* thisx, PlayState* play);
void BgSpot18Shutter_Draw(Actor* thisx, PlayState* play);

void func_808B95AC(BgSpot18Shutter* this, PlayState* play);
void func_808B95B8(BgSpot18Shutter* this, PlayState* play);
void func_808B9618(BgSpot18Shutter* this, PlayState* play);
void func_808B9698(BgSpot18Shutter* this, PlayState* play);
void func_808B971C(BgSpot18Shutter* this, PlayState* play);

ActorProfile Bg_Spot18_Shutter_Profile = {
    /**/ ACTOR_BG_SPOT18_SHUTTER,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SPOT18_OBJ,
    /**/ sizeof(BgSpot18Shutter),
    /**/ BgSpot18Shutter_Init,
    /**/ BgSpot18Shutter_Destroy,
    /**/ BgSpot18Shutter_Update,
    /**/ BgSpot18Shutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgSpot18Shutter_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgSpot18Shutter* this = (BgSpot18Shutter*)thisx;
    s32 param = PARAMS_GET_U(this->dyna.actor.params, 8, 1);
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if (param == 0) {
        if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
            if (GET_INFTABLE(INFTABLE_109)) {
                this->actionFunc = func_808B95AC;
                this->dyna.actor.world.pos.y += 180.0f;
            } else {
                this->actionFunc = func_808B9618;
            }
        } else {
            if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
                this->actionFunc = func_808B95AC;
                this->dyna.actor.world.pos.y += 180.0f;
            } else {
                this->actionFunc = func_808B95B8;
            }
        }
    } else {
        if (GET_INFTABLE(INFTABLE_109)) {
            this->dyna.actor.world.pos.x += 125.0f * Math_CosS(this->dyna.actor.world.rot.y);
            this->dyna.actor.world.pos.z -= 125.0f * Math_SinS(this->dyna.actor.world.rot.y);
            this->actionFunc = func_808B95AC;
        } else {
            this->actionFunc = func_808B9618;
        }
    }

    CollisionHeader_GetVirtual(&gGoronCityDoorCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgSpot18Shutter_Destroy(Actor* thisx, PlayState* play) {
    BgSpot18Shutter* this = (BgSpot18Shutter*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808B95AC(BgSpot18Shutter* this, PlayState* play) {
}

void func_808B95B8(BgSpot18Shutter* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        Actor_SetFocus(&this->dyna.actor, 70.0f);
        OnePointCutscene_Attention(play, &this->dyna.actor);
        this->actionFunc = func_808B9698;
    }
}

void func_808B9618(BgSpot18Shutter* this, PlayState* play) {
    if (GET_INFTABLE(INFTABLE_109)) {
        Actor_SetFocus(&this->dyna.actor, 70.0f);
        if (PARAMS_GET_U(this->dyna.actor.params, 8, 1) == 0) {
            this->actionFunc = func_808B9698;
        } else {
            this->actionFunc = func_808B971C;
            OnePointCutscene_Init(play, 4221, 140, &this->dyna.actor, CAM_ID_MAIN);
        }
    }
}

void func_808B9698(BgSpot18Shutter* this, PlayState* play) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 180.0f, 1.44f)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_STONEDOOR_STOP);
        this->actionFunc = func_808B95AC;
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG);
    }
}

void func_808B971C(BgSpot18Shutter* this, PlayState* play) {
    f32 sin = Math_SinS(this->dyna.actor.world.rot.y);
    f32 cos = Math_CosS(this->dyna.actor.world.rot.y);
    s32 flag = true;

    flag &= Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + (125.0f * cos), fabsf(cos));
    flag &= Math_StepToF(&this->dyna.actor.world.pos.z, this->dyna.actor.home.pos.z - (125.0f * sin), fabsf(sin));

    if (flag) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_STONEDOOR_STOP);
        this->actionFunc = func_808B95AC;
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG);
    }
}

void BgSpot18Shutter_Update(Actor* thisx, PlayState* play) {
    BgSpot18Shutter* this = (BgSpot18Shutter*)thisx;

    this->actionFunc(this, play);
}

void BgSpot18Shutter_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGoronCityDoorDL);
}
