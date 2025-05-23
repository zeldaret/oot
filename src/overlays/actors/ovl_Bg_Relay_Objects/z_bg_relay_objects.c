/*
 * File: z_bg_relay_objects.c
 * Overlay: ovl_Bg_Relay_Objects
 * Description: Windmill Setpieces
 */

#include "z_bg_relay_objects.h"
#include "assets/objects/object_relay_objects/object_relay_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

typedef enum WindmillSetpiecesMode {
    /* 0 */ WINDMILL_ROTATING_GEAR,
    /* 1 */ WINDMILL_DAMPE_STONE_DOOR
} WindmillSetpiecesMode;

void BgRelayObjects_Init(Actor* thisx, PlayState* play);
void BgRelayObjects_Destroy(Actor* thisx, PlayState* play);
void BgRelayObjects_Update(Actor* thisx, PlayState* play);
void BgRelayObjects_Draw(Actor* thisx, PlayState* play);

void func_808A90F4(BgRelayObjects* this, PlayState* play);
void func_808A91AC(BgRelayObjects* this, PlayState* play);
void func_808A9234(BgRelayObjects* this, PlayState* play);
void BgRelayObjects_DoNothing(BgRelayObjects* this, PlayState* play);
void func_808A932C(BgRelayObjects* this, PlayState* play);
void func_808A939C(BgRelayObjects* this, PlayState* play);

ActorProfile Bg_Relay_Objects_Profile = {
    /**/ ACTOR_BG_RELAY_OBJECTS,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_RELAY_OBJECTS,
    /**/ sizeof(BgRelayObjects),
    /**/ BgRelayObjects_Init,
    /**/ BgRelayObjects_Destroy,
    /**/ BgRelayObjects_Update,
    /**/ BgRelayObjects_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(gravity, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgRelayObjects_Init(Actor* thisx, PlayState* play) {
    static u32 D_808A9508 = 0;
    BgRelayObjects* this = (BgRelayObjects*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->switchFlag = PARAMS_GET_U(thisx->params, 0, 6);
    thisx->params = PARAMS_GET_U(thisx->params, 8, 8);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS | DYNA_TRANSFORM_ROT_Y);
    if (thisx->params == WINDMILL_ROTATING_GEAR) {
        CollisionHeader_GetVirtual(&gWindmillRotatingPlatformCol, &colHeader);
        if (GET_EVENTCHKINF(EVENTCHKINF_65)) {
            thisx->world.rot.y = 0x400;
        } else {
            thisx->world.rot.y = 0x80;
        }
        Audio_PlayWindmillBgm();
        thisx->room = -1;
        thisx->flags |= ACTOR_FLAG_DRAW_CULLING_DISABLED;
        if (D_808A9508 & 2) {
            thisx->params = 0xFF;
            Actor_Kill(thisx);
        } else {
            D_808A9508 |= 2;
            this->actionFunc = func_808A939C;
        }
    } else {
        CollisionHeader_GetVirtual(&gDampeRaceDoorCol, &colHeader);
        if (thisx->room == 0) {
            this->unk_169 = this->switchFlag - 0x33;
        } else {
            this->unk_169 = thisx->room + 1;
        }
        thisx->room = -1;
        this->timer = 1;
        if (this->unk_169 >= 6) {
            if (D_808A9508 & 1) {
                Actor_Kill(thisx);
            } else {
                D_808A9508 |= 1;
                this->actionFunc = BgRelayObjects_DoNothing;
            }
        } else if (this->unk_169 != 5) {
            Flags_UnsetSwitch(play, this->switchFlag);
            if (D_808A9508 & (1 << this->unk_169)) {
                Actor_Kill(thisx);
            } else {
                D_808A9508 |= (1 << this->unk_169);
                this->actionFunc = func_808A90F4;
            }
        } else {
            Flags_SetSwitch(play, this->switchFlag);
            this->actionFunc = func_808A91AC;
            thisx->world.pos.y += 120.0f;
            D_808A9508 |= 1;
        }
    }
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
}

void BgRelayObjects_Destroy(Actor* thisx, PlayState* play) {
    BgRelayObjects* this = (BgRelayObjects*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    if ((this->dyna.actor.params == WINDMILL_ROTATING_GEAR) && (gSaveContext.save.cutsceneIndex < 0xFFF0)) {
        CLEAR_EVENTCHKINF(EVENTCHKINF_65);
    }
}

void func_808A90F4(BgRelayObjects* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->switchFlag)) {
        if (this->timer != 0) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
            if (INV_CONTENT(ITEM_HOOKSHOT) != ITEM_NONE) {
                this->timer = 120;
            } else {
                this->timer = 160;
            }
        }
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 120.0f, 12.0f)) {
            this->actionFunc = func_808A91AC;
        }
    }
}

void func_808A91AC(BgRelayObjects* this, PlayState* play) {
    if (this->unk_169 != 5) {
        if (this->timer != 0) {
            this->timer--;
        }
        Actor_PlaySfx_FlaggedTimer(&this->dyna.actor, this->timer);
    }
    if ((this->timer == 0) || (this->unk_169 == play->roomCtx.curRoom.num)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
        this->actionFunc = func_808A9234;
    }
}

void func_808A9234(BgRelayObjects* this, PlayState* play) {
    this->dyna.actor.velocity.y += this->dyna.actor.gravity;
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, this->dyna.actor.velocity.y)) {
        Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 180, 20, 100);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
        if (this->unk_169 != play->roomCtx.curRoom.num) {
            Sfx_PlaySfxCentered2(NA_SE_EN_PO_LAUGH);
            this->timer = 5;
            this->actionFunc = func_808A932C;
            return;
        }
        Flags_UnsetSwitch(play, this->switchFlag);
        this->dyna.actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        if (play->roomCtx.curRoom.num == 4) {
            gSaveContext.timerState = TIMER_STATE_UP_FREEZE;
        }
        this->actionFunc = BgRelayObjects_DoNothing;
    }
}

void BgRelayObjects_DoNothing(BgRelayObjects* this, PlayState* play) {
}

void func_808A932C(BgRelayObjects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (!Player_InCsMode(play)) {
            Sfx_PlaySfxCentered(NA_SE_OC_ABYSS);
            Play_TriggerRespawn(play);
            this->actionFunc = BgRelayObjects_DoNothing;
        }
    }
}

void func_808A939C(BgRelayObjects* this, PlayState* play) {
    if (CutsceneFlags_Get(play, 5)) {
        SET_EVENTCHKINF(EVENTCHKINF_65);
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_65)) {
        Math_ScaledStepToS(&this->dyna.actor.world.rot.y, 0x400, 8);
    } else {
        Math_ScaledStepToS(&this->dyna.actor.world.rot.y, 0x80, 8);
    }
    this->dyna.actor.shape.rot.y += this->dyna.actor.world.rot.y;
    func_800F436C(&this->dyna.actor.projectedPos, NA_SE_EV_WOOD_GEAR - SFX_FLAG,
                  ((this->dyna.actor.world.rot.y - 0x80) * (1.0f / 0x380)) + 1.0f);
}

void BgRelayObjects_Update(Actor* thisx, PlayState* play) {
    BgRelayObjects* this = (BgRelayObjects*)thisx;

    this->actionFunc(this, play);
}

void BgRelayObjects_Draw(Actor* thisx, PlayState* play) {
    BgRelayObjects* this = (BgRelayObjects*)thisx;

    if (this->dyna.actor.params == WINDMILL_ROTATING_GEAR) {
        Gfx_DrawDListOpa(play, gWindmillRotatingPlatformDL);
    } else {
        Gfx_DrawDListOpa(play, gDampeRaceDoorDL);
    }
}
