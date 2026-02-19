/*
 * File: z_bg_haka_meganebg.c
 * Overlay: ovl_Bg_Haka_MeganeBG
 * Description: Misc. Shadow Temple themed objects
 *
 * BGHAKAMEGANEBG_TYPE_HIDDEN_MOVING_PLATFORM:
 * An invisible square moving platform, viewable with Lens of Truth. Travels -320 x units from home and back.
 * Setting rotY when spawning will rotate the shape, but not affect the movement path.
 * world.rot.y is used like a flag, tracking the direction of movement for the platform.
 * If world.rot.y == initial rotation, the platform is travelling from home towards the secondary position.
 * If world.rot.y != initial rotation, the platform is travelling from the secondary position towards home.
 *
 * BGHAKAMEGANEBG_TYPE_CHAINED_ELEVATOR_PLATFORM:
 * A square platform with chains on four corners. Drops 640 units before pulling itself up back to the home position.
 *
 * BGHAKAMEGANEBG_TYPE_ROTATING_PLATFORM:
 * A simple spinning hexacon shaped black platform with a column in the center.
 *
 * BGHAKAMEGANEBG_TYPE_METAL_GATE:
 * A metal gate that rises 100 units on switchFlag on.
 */

#include "z_bg_haka_meganebg.h"

#include "ichain.h"
#include "one_point_cutscene.h"
#include "sfx.h"
#include "z_lib.h"
#include "play_state.h"

#include "assets/objects/object_haka_objects/object_haka_objects.h"

#define FLAGS 0

void BgHakaMeganeBG_Init(Actor* thisx, PlayState* play);
void BgHakaMeganeBG_Destroy(Actor* thisx, PlayState* play);
void BgHakaMeganeBG_Update(Actor* thisx, PlayState* play);
void BgHakaMeganeBG_Draw(Actor* thisx, PlayState* play);

void BgHakaMeganeBG_HiddenMovingPlatform_Idle(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_HiddenMovingPlatform_Move(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_ElevatorPlatform_Drop(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_ElevatorPlatform_Raise(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_RotatingPlatform_Spin(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_Gate_WaitForSwitchFlag(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_Gate_Open(BgHakaMeganeBG* this, PlayState* play);
void BgHakaMeganeBG_DoNothing(BgHakaMeganeBG* this, PlayState* play);

ActorProfile Bg_Haka_MeganeBG_Profile = {
    /**/ ACTOR_BG_HAKA_MEGANEBG,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HAKA_OBJECTS,
    /**/ sizeof(BgHakaMeganeBG),
    /**/ BgHakaMeganeBG_Init,
    /**/ BgHakaMeganeBG_Destroy,
    /**/ BgHakaMeganeBG_Update,
    /**/ BgHakaMeganeBG_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

// Unused
static u32 D_8087E3FC[] = {
    0x00000000, 0x00000000, 0x00000000, 0xC8C800FF, 0xFF0000FF,
};

void BgHakaMeganeBG_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgHakaMeganeBG* this = (BgHakaMeganeBG*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->switchFlag = PARAMS_GET_U(thisx->params, 8, 8);
    thisx->params &= 0xFF;

    if (thisx->params == BGHAKAMEGANEBG_TYPE_ROTATING_PLATFORM) {
        DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS | DYNA_TRANSFORM_ROT_Y);
        thisx->flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        CollisionHeader_GetVirtual(&gShadowTempleBlackPlatformWithScrewColumnCol, &colHeader);
        this->actionFunc = BgHakaMeganeBG_RotatingPlatform_Spin;
    } else {
        DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);

        if (thisx->params == BGHAKAMEGANEBG_TYPE_HIDDEN_MOVING_PLATFORM) {
            CollisionHeader_GetVirtual(&gShadowTempleHiddenBlockPlatformCol, &colHeader);
            thisx->flags |= ACTOR_FLAG_REACT_TO_LENS;
            this->timer = 20;
            this->actionFunc = BgHakaMeganeBG_HiddenMovingPlatform_Idle;
        } else if (thisx->params == BGHAKAMEGANEBG_TYPE_METAL_GATE) {
            CollisionHeader_GetVirtual(&gShadowTempleMetalGateCol, &colHeader);
            thisx->home.pos.y += 100.0f;

            if (Flags_GetSwitch(play, this->switchFlag)) {
                // Gate open
                this->actionFunc = BgHakaMeganeBG_DoNothing;
                thisx->world.pos.y = thisx->home.pos.y;
            } else {
                // Gate closed
                thisx->flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
                this->actionFunc = BgHakaMeganeBG_Gate_WaitForSwitchFlag;
            }
        } else /* BGHAKAMEGANEBG_TYPE_CHAINED_ELEVATOR_PLATFORM */ {
            CollisionHeader_GetVirtual(&gShadowTempleChainedElevatorPlatformCol, &colHeader);
            this->timer = 80;
            this->actionFunc = BgHakaMeganeBG_ElevatorPlatform_Drop;
            thisx->cullingVolumeScale = 3000.0f;
            thisx->cullingVolumeDownward = 3000.0f;
        }
    }

    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgHakaMeganeBG_Destroy(Actor* thisx, PlayState* play) {
    BgHakaMeganeBG* this = (BgHakaMeganeBG*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgHakaMeganeBG_HiddenMovingPlatform_Idle(BgHakaMeganeBG* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        this->timer = 40;

        // world.rot.y is used like a binary flag here, where rotating by exactly 180 degrees will toggle the direction
        // of movement. Arbitrary rotation values won't function correctly here.
        //! @bug On the first run of the actor, this line will toggle the direction of movement before the actor has
        //! moved to the secondary position, causing it to teleport. In practice it is hard to observe in normal
        //! gameplay because the platform is invisible without lens of truth, and the teleport happens after a second of
        //! spawning into the room.
        //!
        //! One possible fix would be to move this line into BgHakaMeganeBG_HiddenMovingPlatform_Move so it's always
        //! flipping direction after it reached it's destination.
        this->dyna.actor.world.rot.y += 0x8000;

        this->actionFunc = BgHakaMeganeBG_HiddenMovingPlatform_Move;
    }
}

void BgHakaMeganeBG_HiddenMovingPlatform_Move(BgHakaMeganeBG* this, PlayState* play) {
    f32 xSub;

    if (this->timer != 0) {
        this->timer--;
    }

    // The sine function is used to create an easing effect when the platform reaches its two target destinations. It
    // works like this:
    //
    // The timer state, ranging from 39 to 0, is converted into an angle between 270 to 90 degrees, and in turn the sine
    // function returns a value between -1.0 to 1.0. This is incremented by +1 to get 0.0 to 2.0, and finally multiplied
    // by half of the travel distance to get the current platform's delta position.
    xSub = (sinf(((this->timer * (1.0f / 40.0f)) + 0.5f) * M_PI) + 1.0f) * (320.0f / 2);

    // The result is then inverted if the platform should travel the opposite direction.
    if (this->dyna.actor.world.rot.y != this->dyna.actor.shape.rot.y) {
        xSub = 320.0f - xSub;
    }

    this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x - xSub;

    if (this->timer == 0) {
        this->timer = 20;
        this->actionFunc = BgHakaMeganeBG_HiddenMovingPlatform_Idle;
    }
}

void BgHakaMeganeBG_ElevatorPlatform_Drop(BgHakaMeganeBG* this, PlayState* play) {
    // Here velocity.y is storing absolute velocity instead of directional velocity
    this->dyna.actor.velocity.y += 1.0f;
    this->dyna.actor.velocity.y = CLAMP_MAX(this->dyna.actor.velocity.y, 20.0f);

    if (this->timer != 0) {
        this->timer--;
    }

    if (!Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 640.0f,
                      this->dyna.actor.velocity.y)) {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_CHINETRAP_DOWN - SFX_FLAG);
    }

    if (this->timer == 0) {
        this->timer = 120;
        this->actionFunc = BgHakaMeganeBG_ElevatorPlatform_Raise;
        this->dyna.actor.velocity.y = 0.0f;
    }
}

void BgHakaMeganeBG_ElevatorPlatform_Raise(BgHakaMeganeBG* this, PlayState* play) {
    Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 16.0f / 3.0f);
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_BRIDGE_CLOSE - SFX_FLAG);

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        this->timer = 80;
        this->actionFunc = BgHakaMeganeBG_ElevatorPlatform_Drop;
    }
}

void BgHakaMeganeBG_RotatingPlatform_Spin(BgHakaMeganeBG* this, PlayState* play) {
    this->dyna.actor.shape.rot.y += 0x180;
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
}

void BgHakaMeganeBG_Gate_WaitForSwitchFlag(BgHakaMeganeBG* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->switchFlag)) {
        OnePointCutscene_Attention(play, &this->dyna.actor);
        this->actionFunc = BgHakaMeganeBG_Gate_Open;
    }
}

void BgHakaMeganeBG_Gate_Open(BgHakaMeganeBG* this, PlayState* play) {
    Math_StepToF(&this->dyna.actor.speed, 30.0f, 2.0f);

    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, this->dyna.actor.speed)) {
        Actor_SetFocus(&this->dyna.actor, 50.0f);
        this->actionFunc = BgHakaMeganeBG_DoNothing;
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_OPEN);
    }
}

void BgHakaMeganeBG_DoNothing(BgHakaMeganeBG* this, PlayState* play) {
}

void BgHakaMeganeBG_Update(Actor* thisx, PlayState* play) {
    BgHakaMeganeBG* this = (BgHakaMeganeBG*)thisx;

    this->actionFunc(this, play);
}

void BgHakaMeganeBG_Draw(Actor* thisx, PlayState* play) {
    static Gfx* sDLists[] = {
        gShadowTempleHiddenBlockPlatformDL,
        gShadowTempleChainedElevatorPlatformDL,
        gShadowTempleBlackPlatformWithScrewColumnDL,
        gShadowTempleMetalGateDL,
    };

    BgHakaMeganeBG* this = (BgHakaMeganeBG*)thisx;
    s16 params = this->dyna.actor.params;

    if (params == BGHAKAMEGANEBG_TYPE_HIDDEN_MOVING_PLATFORM) {
        Gfx_DrawDListXlu(play, gShadowTempleHiddenBlockPlatformDL);
    } else {
        Gfx_DrawDListOpa(play, sDLists[params]);
    }
}
