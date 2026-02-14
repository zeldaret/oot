/*
 * File: z_bg_haka_trap.c
 * Overlay: ovl_Bg_Haka_Trap
 * Description: Shadow Temple traps
 *
 * HAKA_TRAP_GUILLOTINE:
 * A guillotine blade attached to a chain, drops from the ceiling.
 *
 * HAKA_TRAP_GUILLOTINE_FAST: (spawn only param)
 * Enables a flag making the guillotine move faster.
 *
 * HAKA_TRAP_SPIKED_CRUSHER:
 * A square shaped platform suspended by a chain with spikes underneath, intended to crush the player. A pushblock can
 * be used to prevent it from decending completely. Rotating this actor may prevent correct hit detection of the block.
 *
 * HAKA_TRAP_SPIKED_WALL_EAST:
 * HAKA_TRAP_SPIKED_WALL_WEST:
 *
 * Two wooden spike walls that come together to crush the player. The one to the east has extra holes to reveal the
 * chest behind it.
 *
 * HAKA_TRAP_FAN_BLADE:
 * A small fan blade that pushes the player away when turned on. `world.rot.z` is used to store the angular
 * velocity of the fan
 */

#include "z_bg_haka_trap.h"

#include "array_count.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "skin_matrix.h"

#include "assets/objects/object_haka_objects/object_haka_objects.h"

#define FLAGS 0

void BgHakaTrap_Init(Actor* thisx, PlayState* play);
void BgHakaTrap_Destroy(Actor* thisx, PlayState* play);
void BgHakaTrap_Update(Actor* thisx, PlayState* play);
void BgHakaTrap_Draw(Actor* thisx, PlayState* play);

void BgHakaTrap_UpdateBodyColliderPos(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_SpikedWall_CloseIn(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_SpikedWall_Burn(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_Guillotine_Fall(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_Guillotine_Lift(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_SpikedCrusher_Fall(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_SpikedCrusher_Lift(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_FanBlade_Idle(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_PushPlayer(BgHakaTrap* this, PlayState* play, s16 angularVelocity);
void BgHakaTrap_FanBlade_ToggleFanGust(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_FanBlade_FullGust(BgHakaTrap* this, PlayState* play);
void BgHakaTrap_SpikedWall_UpdateCollider(BgHakaTrap* this);

static s32 sIsSpikeWallBurning = false;

ActorProfile Bg_Haka_Trap_Profile = {
    /**/ ACTOR_BG_HAKA_TRAP,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HAKA_OBJECTS,
    /**/ sizeof(BgHakaTrap),
    /**/ BgHakaTrap_Init,
    /**/ BgHakaTrap_Destroy,
    /**/ BgHakaTrap_Update,
    /**/ BgHakaTrap_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x04 },
        { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 30, 90, 0, { 0, 0, 0 } },
};

static ColliderTrisElementInit sSpikedWallTrisElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0x00020000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { 1800.0f, 1200.0f, 0.0f }, { -1800.0f, 1200.0f, 0.0f }, { -1800.0f, 0.0f, 0.0f } } },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0x00020000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { 1800.0f, 1200.0f, 0.0f }, { -1800.0f, 0.0f, 0.0f }, { 1800.0f, 0.0f, 0.0f } } },
    },
};

static ColliderTrisInit sSpikedWallColliderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_TRIS,
    },
    ARRAY_COUNT(sSpikedWallTrisElementsInit),
    sSpikedWallTrisElementsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 80, 100, MASS_IMMOVABLE };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaTrap_Init(Actor* thisx, PlayState* play) {
    static s32 sSpikedCrusherFlip = false;
    BgHakaTrap* this = (BgHakaTrap*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->params &= 0xFF;

    if (thisx->params != HAKA_TRAP_FAN_BLADE) {
        Collider_InitCylinder(play, &this->colliderCylinder);
        Collider_SetCylinder(play, &this->colliderCylinder, thisx, &sCylinderInit);

        if ((thisx->params == HAKA_TRAP_GUILLOTINE) || (thisx->params == HAKA_TRAP_GUILLOTINE_FAST)) {
            this->timer = 20;
            this->colliderCylinder.dim.yShift = 10;
            thisx->velocity.y = 0.1f;

            if (thisx->params == HAKA_TRAP_GUILLOTINE_FAST) {
                thisx->params = HAKA_TRAP_GUILLOTINE;
                this->isGuillotineFast = true;
            }

            this->actionFunc = BgHakaTrap_Guillotine_Fall;
        } else {
            DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
            thisx->flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;

            if (thisx->params == HAKA_TRAP_SPIKED_CRUSHER) {
                CollisionHeader_GetVirtual(&gShadowTempleSpikedCrusherCol, &colHeader);
                this->timer = 30;

                // Instances alternate between starting off in the up or down position.
                if (sSpikedCrusherFlip) {
                    this->actionFunc = BgHakaTrap_SpikedCrusher_Lift;
                    sSpikedCrusherFlip = false;
                } else {
                    sSpikedCrusherFlip = true;
                    this->actionFunc = BgHakaTrap_SpikedCrusher_Fall;
                    thisx->velocity.y = 0.5f;
                }

                // Assign the minimum height of the crusher. The crusher intentionally clips through the floor by 25
                // units to allow the spikes to pierce the floor
                thisx->floorHeight = thisx->home.pos.y - (200 + 25);

                // Assigns the height the crusher rises on first "tug". The final -25 offset is missing in other
                // calculations of this variable.
                this->spikedCrusherStepY = (thisx->floorHeight + 50.0f) - 25.0f;

                this->colliderCylinder.dim.radius = 10;
                this->colliderCylinder.dim.height = 40;
            } else {
                if (thisx->params == HAKA_TRAP_SPIKED_WALL_EAST) {
                    CollisionHeader_GetVirtual(&gShadowTempleSpikedWallEastCol, &colHeader);
                    // Shift the home position toward the center of the room. This will become the target position that
                    // triggers the crush.
                    thisx->home.pos.x -= 200.0f;
                } else /* thisx->params == HAKA_TRAP_SPIKED_WALL_WEST */ {
                    // Shift the home position toward the center of the room. This will become the target position that
                    // triggers the crush.
                    thisx->home.pos.x += 200.0f;
                    CollisionHeader_GetVirtual(&gShadowTempleSpikedWallWestCol, &colHeader);
                }

                Collider_InitTris(play, &this->spikesCollider);
                Collider_SetTris(play, &this->spikesCollider, thisx, &sSpikedWallColliderInit,
                                 this->spikesColliderElements);

                this->colliderCylinder.dim.radius = 18;
                this->colliderCylinder.dim.height = 115;

                this->colliderCylinder.elem.atElemFlags &= ~ATELEM_SFX_NORMAL;
                this->colliderCylinder.elem.atElemFlags |= ATELEM_SFX_WOOD;

                this->actionFunc = BgHakaTrap_SpikedWall_CloseIn;
            }

            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
        }
    } else {
        // Initialize HAKA_TRAP_FAN_BLADE
        this->timer = 40;
        this->actionFunc = BgHakaTrap_FanBlade_Idle;
        thisx->cullingVolumeScale = 500.0f;
    }

    CollisionCheck_SetInfo(&thisx->colChkInfo, NULL, &sColChkInfoInit);
}

void BgHakaTrap_Destroy(Actor* thisx, PlayState* play) {
    BgHakaTrap* this = (BgHakaTrap*)thisx;

    if (this->dyna.actor.params != HAKA_TRAP_FAN_BLADE) {
        if (this->dyna.actor.params != HAKA_TRAP_GUILLOTINE) {
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            if ((this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL_EAST) ||
                (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL_WEST)) {
                Collider_DestroyTris(play, &this->spikesCollider);
            }
        }

        Collider_DestroyCylinder(play, &this->colliderCylinder);
    }

    Audio_StopSfxByPos(&this->chainLiftSfxPos);
}

// Updates body collider for HAKA_TRAP_GUILLOTINE, HAKA_TRAP_SPIKED_WALL_EAST, HAKA_TRAP_SPIKED_WALL_WEST
void BgHakaTrap_UpdateBodyColliderPos(BgHakaTrap* this, PlayState* play) {
    f32 cos;
    Vec3f colOff;
    f32 sin;
    f32 zSign;
    Player* player = GET_PLAYER(play);

    Actor_WorldToActorCoords(&this->dyna.actor, &colOff, &player->actor.world.pos);

    sin = Math_SinS(this->dyna.actor.shape.rot.y);
    cos = Math_CosS(this->dyna.actor.shape.rot.y);

    if (this->dyna.actor.params == HAKA_TRAP_GUILLOTINE) {
        colOff.x = CLAMP(colOff.x, -50.0f, 50.0f);
        zSign = (colOff.z >= 0.0f) ? 1.0f : -1.0f;
        colOff.z = zSign * -15.0f;
    } else {
        colOff.x = -CLAMP(colOff.x, -162.0f, 162.0f);
        zSign = (colOff.z >= 0.0f) ? 1.0f : -1.0f;
        colOff.z = zSign * 15.0f;
    }

    this->colliderCylinder.dim.pos.x = this->dyna.actor.world.pos.x + colOff.x * cos + colOff.z * sin;
    this->colliderCylinder.dim.pos.z = this->dyna.actor.world.pos.z + colOff.x * sin + colOff.z * cos;
}

#define BGHAKATRAP_SPIKEDWALL_HITEAST (1 << 0)
#define BGHAKATRAP_SPIKEDWALL_HITWEST (2 << 0)
#define BGHAKATRAP_SPIKEDWALL_CRUSH_PLAYER 4

void BgHakaTrap_SpikedWall_CloseIn(BgHakaTrap* this, PlayState* play) {
    static s32 sSpikedWallFlags = 0;
    Player* player = GET_PLAYER(play);

    if (!sIsSpikeWallBurning && !Player_InCsMode(play)) {
        // Step towards the home position. If we haven't reached it, play the sliding sfx
        if (!Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x, 0.5f)) {
            Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_TRAP_OBJ_SLIDE - SFX_FLAG);
        } else if (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL_EAST) {
            sSpikedWallFlags |= BGHAKATRAP_SPIKEDWALL_HITEAST;
        } else if (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL_WEST) {
            sSpikedWallFlags |= BGHAKATRAP_SPIKEDWALL_HITWEST;
        }
    }

    BgHakaTrap_UpdateBodyColliderPos(this, play);

    if (this->spikesCollider.base.acFlags & AC_HIT) {
        this->timer = 20;
        sIsSpikeWallBurning = true;
        this->actionFunc = BgHakaTrap_SpikedWall_Burn;
    } else if (sSpikedWallFlags == (BGHAKATRAP_SPIKEDWALL_HITEAST | BGHAKATRAP_SPIKEDWALL_HITWEST)) {
        sSpikedWallFlags = BGHAKATRAP_SPIKEDWALL_CRUSH_PLAYER;
        player->actor.bgCheckFlags |= BGCHECKFLAG_CRUSHED;
    }
}

void BgHakaTrap_SpikedWall_Burn(BgHakaTrap* this, PlayState* play) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f vector;
    f32 xScale;
    s32 i;

    if (this->timer != 0) {
        this->timer--;
    }

    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_BURN_OUT - SFX_FLAG);

    for (i = 0; i < 2; i++) {
        f32 rand = Rand_ZeroOne();

        xScale = (this->dyna.actor.params == HAKA_TRAP_SPIKED_WALL_EAST) ? -30.0f : 30.0f;

        vector.x = xScale * rand + this->dyna.actor.world.pos.x;
        vector.y = Rand_ZeroOne() * 10.0f + this->dyna.actor.world.pos.y + 30.0f;
        vector.z = Rand_CenteredFloat(320.0f) + this->dyna.actor.world.pos.z;

        EffectSsDeadDb_Spawn(play, &vector, &zeroVec, &zeroVec, 130, 20, 255, 255, 150, 170, 255, 0, 0, 1, 9, false);
    }

    if (this->timer == 0) {
        sIsSpikeWallBurning = false;
        Actor_Kill(&this->dyna.actor);
    }
}

void BgHakaTrap_Guillotine_Fall(BgHakaTrap* this, PlayState* play) {
    s32 isDoneFalling;
    s32 timer;

    if (this->isGuillotineFast) {
        this->dyna.actor.velocity.y *= 3.0f;
    } else {
        this->dyna.actor.velocity.y *= 2.0f;
    }

    if (this->timer != 0) {
        this->timer -= 1;
    }

    isDoneFalling =
        Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 185.0f, this->dyna.actor.velocity.y);
    timer = this->timer;

    if ((timer == 10 && !this->isGuillotineFast) || (timer == 13 && this->isGuillotineFast)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GUILLOTINE_BOUND);
    }

    if (this->timer == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->timer = (this->isGuillotineFast) ? 10 : 40;
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GUILLOTINE_UP);
        this->actionFunc = BgHakaTrap_Guillotine_Lift;
    }

    BgHakaTrap_UpdateBodyColliderPos(this, play);

    if (!isDoneFalling) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->colliderCylinder.base);
    }
}

void BgHakaTrap_Guillotine_Lift(BgHakaTrap* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->isGuillotineFast) {

        Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 27.0f);
    } else {
        if (this->timer > 20) {
            Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 90.0f, 9.0f);
        } else {
            Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 4.5f);
        }

        if (this->timer == 20) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GUILLOTINE_UP);
        }
    }

    if (this->timer == 0) {
        this->timer = 20;
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
        this->dyna.actor.velocity.y = 0.1f;
        this->actionFunc = BgHakaTrap_Guillotine_Fall;
    }

    BgHakaTrap_UpdateBodyColliderPos(this, play);
}

void BgHakaTrap_SpikedCrusher_Fall(BgHakaTrap* this, PlayState* play) {
    Vec3f vector;
    f32 floorHeight;
    f32 yIntersect;
    s32 i;
    s32 bgId;

    this->dyna.actor.velocity.y *= 1.6f;

    if (this->timer != 0) {
        this->timer--;
    }

    // Perform a collision check for the "stone umbrella" block
    // Because of the shape of the room and the size of the block we only need to check three positions,
    // the center of the east edge, the centerpoint, and the center of the west edge of the crusher.
    //
    // The y coordinate is offset by 25 units, as the crusher is allowed to clip into the floor for visual effect.

    vector.x = this->dyna.actor.world.pos.x + 90.0f;
    vector.y = (this->dyna.actor.world.pos.y + 1.0f) + 25.0f;
    vector.z = this->dyna.actor.world.pos.z;

    // actor.floorHeight is storing the minimum y position of the crusher
    floorHeight = this->dyna.actor.floorHeight;

    for (i = 0; i < 3; i++) {
        yIntersect =
            BgCheck_EntityRaycastDown4(&play->colCtx, &this->dyna.actor.floorPoly, &bgId, &this->dyna.actor, &vector) -
            25.0f;
        if (floorHeight < yIntersect) {
            floorHeight = yIntersect;
        }

        vector.x -= 90.0f;
    }

    if (Math_StepToF(&this->dyna.actor.world.pos.y, floorHeight, this->dyna.actor.velocity.y)) {
        if (this->dyna.actor.velocity.y > 0.01f) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_TRAP_BOUND);
        }
        this->dyna.actor.velocity.y = 0.0f;
    }

    if (this->dyna.actor.velocity.y >= 0.01f) {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_CHINETRAP_DOWN - SFX_FLAG);
    }

    if (this->timer == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->timer = 30;
        this->spikedCrusherStepY = (s16)this->dyna.actor.world.pos.y + 50.0f;
        this->spikedCrusherStepY = CLAMP_MAX(this->spikedCrusherStepY, this->dyna.actor.home.pos.y);

        this->actionFunc = BgHakaTrap_SpikedCrusher_Lift;
    }
}

void BgHakaTrap_SpikedCrusher_Lift(BgHakaTrap* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer > 20) {
        this->isSpikedCrusherStationary = Math_StepToF(&this->dyna.actor.world.pos.y, this->spikedCrusherStepY, 15.0f);
    } else {
        this->isSpikedCrusherStationary =
            Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 20.0f);
    }

    if (this->timer == 0) {
        this->timer = 30;
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
        this->dyna.actor.velocity.y = 0.5f;
        this->actionFunc = BgHakaTrap_SpikedCrusher_Fall;
    }
}

void BgHakaTrap_FanBlade_Idle(BgHakaTrap* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer -= 1;
    }

    if (this->timer == 0) {
        // this->timer = 0, which signals the fan to turn on and speed up
        this->actionFunc = BgHakaTrap_FanBlade_ToggleFanGust;
    }
}

void BgHakaTrap_PushPlayer(BgHakaTrap* this, PlayState* play, s16 angularVelocity) {
    Player* player = GET_PLAYER(play);
    Vec3f playerRelOff;

    Actor_WorldToActorCoords(&this->dyna.actor, &playerRelOff, &player->actor.world.pos);

    if ((fabsf(playerRelOff.x) < 70.0f) && (fabsf(playerRelOff.y) < 100.0f) && (playerRelOff.z < 500.0f) &&
        (GET_PLAYER(play)->currentBoots != PLAYER_BOOTS_IRON)) {
        player->pushedSpeed =
            ((500.0f - playerRelOff.z) * 0.06f + 5.0f) * angularVelocity * (1.0f / 0x3A00) * (2.0f / 3.0f);
        player->pushedYaw = this->dyna.actor.shape.rot.y;
    }
}

void BgHakaTrap_FanBlade_ToggleFanGust(BgHakaTrap* this, PlayState* play) {
    // this->timer stores the current fan behavior.
    // if 1, the fan is on and is ramping down to the off state.
    // if 0, the fan is off and is ramping up to the full on state.

    // world.rot.z is the current angular velocity of the fan
    if (this->timer != 0) {
        // Fan winds down
        if (Math_ScaledStepToS(&this->dyna.actor.world.rot.z, 0, this->dyna.actor.world.rot.z * 0.03f + 5.0f)) {
            this->timer = 40;
            this->actionFunc = BgHakaTrap_FanBlade_Idle;
        }
    } else {
        // Fan speeds up
        if (Math_ScaledStepToS(&this->dyna.actor.world.rot.z, 0x3A00, this->dyna.actor.world.rot.z * 0.03f + 5.0f)) {
            this->timer = 100;
            this->actionFunc = BgHakaTrap_FanBlade_FullGust;
        }
    }

    this->dyna.actor.shape.rot.z += this->dyna.actor.world.rot.z;
    if (this->dyna.actor.world.rot.z > 0x1800) {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_WIND_TRAP - SFX_FLAG);
    }

    BgHakaTrap_PushPlayer(this, play, this->dyna.actor.world.rot.z);
}

void BgHakaTrap_FanBlade_FullGust(BgHakaTrap* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_WIND_TRAP - SFX_FLAG);

    if (this->timer == 0) {
        this->timer = 1; // setting this signals the fan to turn off and slow down
        this->actionFunc = BgHakaTrap_FanBlade_ToggleFanGust;
    }

    // world.rot.z is the current angular velocity of the fan
    this->dyna.actor.shape.rot.z += this->dyna.actor.world.rot.z;
    BgHakaTrap_PushPlayer(this, play, this->dyna.actor.world.rot.z);
}

void BgHakaTrap_Update(Actor* thisx, PlayState* play) {
    BgHakaTrap* this = (BgHakaTrap*)thisx;
    Vec3f* actorPos = &this->dyna.actor.world.pos;

    this->actionFunc(this, play);

    if ((this->dyna.actor.params != HAKA_TRAP_FAN_BLADE) && (thisx->params != HAKA_TRAP_SPIKED_CRUSHER)) {
        this->colliderCylinder.dim.pos.y = actorPos->y;

        if ((thisx->params == HAKA_TRAP_GUILLOTINE) || (thisx->params == HAKA_TRAP_GUILLOTINE_FAST)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->colliderCylinder.base);
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliderCylinder.base);
        } else {
            if (this->actionFunc == BgHakaTrap_SpikedWall_CloseIn) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->spikesCollider.base);
            }

            CollisionCheck_SetAT(play, &play->colChkCtx, &this->colliderCylinder.base);
        }
    }
}

void BgHakaTrap_SpikedWall_UpdateCollider(BgHakaTrap* this) {
    Vec3f vtx[3];

    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[0].dim.vtx[0], &vtx[0]);
    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[0].dim.vtx[1], &vtx[1]);
    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[0].dim.vtx[2], &vtx[2]);
    Collider_SetTrisVertices(&this->spikesCollider, 0, &vtx[0], &vtx[1], &vtx[2]);

    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[1].dim.vtx[2], &vtx[1]);
    Collider_SetTrisVertices(&this->spikesCollider, 1, &vtx[0], &vtx[2], &vtx[1]);
}

void BgHakaTrap_Draw(Actor* thisx, PlayState* play) {
    static Gfx* sDLists[5] = {
        gShadowTempleGuillotineDL,     gShadowTempleSpikedCrusherDL, gShadowTempleSpikedWallEastDL,
        gShadowTempleSpikedWallWestDL, gShadowTempleFanBladeDL,
    };
    static Color_RGBA8 sFogBlack = { 0, 0, 0, 0 };
    BgHakaTrap* this = (BgHakaTrap*)thisx;
    s32 pad;

    if (this->actionFunc == BgHakaTrap_SpikedWall_Burn) {
        func_80026230(play, &sFogBlack, this->timer + 20, 40);
    }

    Gfx_DrawDListOpa(play, sDLists[this->dyna.actor.params]);

    if (this->actionFunc == BgHakaTrap_SpikedWall_CloseIn) {
        BgHakaTrap_SpikedWall_UpdateCollider(this);
    }

    if (this->actionFunc == BgHakaTrap_SpikedWall_Burn) {
        func_80026608(play);
    }

    if ((this->actionFunc == BgHakaTrap_SpikedCrusher_Lift) && !this->isSpikedCrusherStationary) {
        Vec3f sfxPos;

        sfxPos.x = this->dyna.actor.world.pos.x;
        sfxPos.z = this->dyna.actor.world.pos.z;
        sfxPos.y = this->dyna.actor.world.pos.y + 110.0f;

        SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &sfxPos, &this->chainLiftSfxPos);
        Sfx_PlaySfxAtPos(&this->chainLiftSfxPos, NA_SE_EV_BRIDGE_CLOSE - SFX_FLAG);
    }
}
