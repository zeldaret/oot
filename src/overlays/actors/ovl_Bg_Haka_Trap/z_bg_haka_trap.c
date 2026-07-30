/*
 * File: z_bg_haka_trap.c
 * Overlay: ovl_Bg_Haka_Trap
 * Description: Shadow Temple traps
 *
 * BG_HAKA_TRAP_GUILLOTINE:
 * A guillotine blade attached to a chain, drops from the ceiling.
 *
 * BG_HAKA_TRAP_GUILLOTINE_FAST: (spawn only param)
 * Enables a flag making the guillotine move faster.
 *
 * BG_HAKA_TRAP_SPIKED_CRUSHER:
 * A square shaped platform suspended by a chain with spikes underneath, intended to crush the player. A pushblock can
 * be used to prevent it from decending completely. Rotating this actor may prevent correct hit detection of the block.
 *
 * BG_HAKA_TRAP_SPIKED_WALL_EAST:
 * BG_HAKA_TRAP_SPIKED_WALL_WEST:
 *
 * Two wooden spike walls that come together to crush the player. The one to the east has extra holes to reveal the
 * chest behind it.
 *
 * BG_HAKA_TRAP_FAN_BLADE:
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

s32 sIsSpikeWallBurning = false;

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

ColliderCylinderInit D_80880F54 = {
    { 9, 0x11, 0xD, 9, 0x20, 1 },
    { 0, { 0xFFCFFFFF, 0, 4 }, { 0xFFCFFFFF, 0, 0 }, 1, 1, 1 },
    { 0x1E, 0x5A, 0, { 0, 0, 0 } },
};

static ColliderTrisElementInit sSpikedWallTrisElementsInit[2] = {
    {
        { 0, { 0, 0, 0 }, { 0x20000, 0, 0 }, 0, 1, 0 },
        {
            {
                { 1800.0f, 1200.0f, 0.0f },
                { -1800.0f, 1200.0f, 0.0f },
                { -1800.0f, 0.0f, 0.0f },
            },
        },
    },
    {
        { 0, { 0, 0, 0 }, { 0x20000, 0, 0 }, 0, 1, 0 },
        { {
            { 1800.0f, 1200.0f, 0.0f },
            { -1800.0f, 0.0f, 0.0f },
            { 1800.0f, 0.0f, 0.0f },
        } },
    },
};

static ColliderTrisInit sSpikedWallTrisInit = { { 0xA, 0, 9, 0, 0x20, 2 }, 2, sSpikedWallTrisElementsInit };
CollisionCheckInfoInit D_80881008 = { 0, 0x50, 0x64, 0xFF };

InitChainEntry D_80881010[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaTrap_Init(Actor* thisx, PlayState* play) {
    static s32 sSpikedCrusherFlip = false;

    s32* spikedCrusherFlipPtr;
    BgHakaTrap* this = (BgHakaTrap*)thisx;
    CollisionHeader* sp2C;

    sp2C = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_80881010);
    this->dyna.actor.params &= 0xFF;
    spikedCrusherFlipPtr = &sSpikedCrusherFlip;
    if (this->dyna.actor.params != BG_HAKA_TRAP_FAN_BLADE) {
        Collider_InitCylinder(play, &this->unk178);
        Collider_SetCylinder(play, &this->unk178, &this->dyna.actor, &D_80880F54);
        if ((this->dyna.actor.params == BG_HAKA_TRAP_GUILLOTINE) ||
            (this->dyna.actor.params == BG_HAKA_TRAP_GUILLOTINE_FAST)) {
            this->unk168 = 0x14;
            do {
            } while (0);
            this->unk178.dim.yShift = 0xA;
            this->dyna.actor.velocity.y = 0.1f;
            if (this->dyna.actor.params == BG_HAKA_TRAP_GUILLOTINE_FAST) {
                this->dyna.actor.params = BG_HAKA_TRAP_GUILLOTINE;
                this->isGuillotineFast = true;
            }
            this->actionFunc = &BgHakaTrap_Guillotine_Fall;
        } else {
            DynaPolyActor_Init((DynaPolyActor*)this, DYNA_TRANSFORM_POS);
            this->dyna.actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
            if (this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_CRUSHER) {
                CollisionHeader_GetVirtual(&gShadowTempleSpikedCrusherCol, &sp2C);
                this->unk168 = 0x1E;
                if (*spikedCrusherFlipPtr) {
                    this->actionFunc = &BgHakaTrap_SpikedCrusher_Lift;
                    sSpikedCrusherFlip = false;
                } else {
                    sSpikedCrusherFlip = true;
                    this->actionFunc = &BgHakaTrap_SpikedCrusher_Fall;
                    this->dyna.actor.velocity.y = 0.5f;
                }
                // Assign the minimum height of the crusher. The crusher intentionally clips through the floor by 25
                // units to allow the spikes to pierce the floor
                this->dyna.actor.floorHeight = this->dyna.actor.home.pos.y - (200 + 25);
                // Assigns the height the crusher rises on first "tug". The final -25 offset is missing in other
                // calculations of this variable.
                this->spikedCrusherStepY = this->dyna.actor.floorHeight + 50.0f - 25.0f;
                this->unk178.dim.radius = 0xA;
                this->unk178.dim.height = 0x28;
            } else {
                if (this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_WALL_EAST) {
                    CollisionHeader_GetVirtual(&gShadowTempleSpikedWallEastCol, &sp2C);
                    // Shift the home position toward the center of the room. This will become the target position that
                    // triggers the crush.
                    this->dyna.actor.home.pos.x -= 200.0f;
                } else /* HAKA_TRAP_SPIKED_WALL_WEST */ {
                    // Shift the home position toward the center of the room. This will become the target position that
                    // triggers the crush.
                    this->dyna.actor.home.pos.x += 200.0f;
                    CollisionHeader_GetVirtual(&gShadowTempleSpikedWallWestCol, &sp2C);
                }
                Collider_InitTris(play, &this->unk1C4);
                Collider_SetTris(play, &this->unk1C4, &this->dyna.actor, &sSpikedWallTrisInit, this->unk1E4);
                this->unk178.dim.radius = 0x12;
                this->unk178.dim.height = 0x73;
                this->unk178.elem.atElemFlags &= ~ATELEM_SFX_NORMAL;
                this->unk178.elem.atElemFlags |= 0x10;
                this->actionFunc = &BgHakaTrap_SpikedWall_CloseIn;
            }
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp2C);
        }
    } else {
        // Initialize HAKA_TRAP_FAN_BLADE
        this->unk168 = 0x28;
        this->actionFunc = &BgHakaTrap_FanBlade_Idle;
        this->dyna.actor.cullingVolumeScale = 500.0f;
    }
    CollisionCheck_SetInfo(&this->dyna.actor.colChkInfo, NULL, &D_80881008);
}

void BgHakaTrap_Destroy(Actor* thisx, PlayState* play) {
    BgHakaTrap* this = (BgHakaTrap*)thisx;

    if (this->dyna.actor.params != BG_HAKA_TRAP_FAN_BLADE) {
        if (this->dyna.actor.params != BG_HAKA_TRAP_GUILLOTINE) {
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            if ((this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_WALL_EAST) ||
                (this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_WALL_WEST)) {
                Collider_DestroyTris(play, &this->unk1C4);
            }
        }
        Collider_DestroyCylinder(play, &this->unk178);
    }
    Audio_StopSfxByPos(&this->chainLiftSfxPos);
}

// Updates body collider for BG_HAKA_TRAP_GUILLOTINE, BG_HAKA_TRAP_SPIKED_WALL_EAST, BG_HAKA_TRAP_SPIKED_WALL_WEST
void BgHakaTrap_UpdateBodyColliderPos(BgHakaTrap* this, PlayState* play) {
    f32 cos;
    Vec3f colOff;
    f32 sin;
    Player* player = GET_PLAYER(play);

    Actor_WorldToActorCoords(&this->dyna.actor, &colOff, &player->actor.world.pos);
    sin = Math_SinS(this->dyna.actor.shape.rot.y);
    cos = Math_CosS(this->dyna.actor.shape.rot.y);
    if (this->dyna.actor.params == BG_HAKA_TRAP_GUILLOTINE) {
        colOff.x = CLAMP(colOff.x, -50.0f, 50.0f);
        colOff.z = ((colOff.z >= 0.0f) ? 1.0f : -1.0f) * -15.0f;
    } else {
        colOff.x = -CLAMP(colOff.x, -162.0f, 162.0f);
        colOff.z = ((colOff.z >= 0.0f) ? 1.0f : -1.0f) * 15.0f;
    }
    this->unk178.dim.pos.x = this->dyna.actor.world.pos.x + (colOff.x * cos) + (colOff.z * sin);
    this->unk178.dim.pos.z = this->dyna.actor.world.pos.z + (colOff.x * sin) + (colOff.z * cos);
}

#define BGHAKATRAP_SPIKEDWALL_HITEAST (1 << 0)
#define BGHAKATRAP_SPIKEDWALL_HITWEST (1 << 1)
#define BGHAKATRAP_SPIKEDWALL_CRUSH_PLAYER 4

void BgHakaTrap_SpikedWall_CloseIn(BgHakaTrap* this, PlayState* play) {
    static s32 sSpikedWallFlags = 0;

    Player* player = GET_PLAYER(play);

    if (!sIsSpikeWallBurning && (Player_InCsMode(play) == 0)) {
        if (Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x, 0.5f) == 0) {
            Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_TRAP_OBJ_SLIDE - SFX_FLAG);
        } else {
            if (this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_WALL_EAST) {
                sSpikedWallFlags |= BGHAKATRAP_SPIKEDWALL_HITEAST;
            } else if (this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_WALL_WEST) {
                sSpikedWallFlags |= BGHAKATRAP_SPIKEDWALL_HITWEST;
            }
        }
    }
    BgHakaTrap_UpdateBodyColliderPos(this, play);
    if (this->unk1C4.base.acFlags & AC_HIT) {
        this->unk168 = 0x14;
        sIsSpikeWallBurning = true;
        this->actionFunc = BgHakaTrap_SpikedWall_Burn;
    } else if (sSpikedWallFlags == (BGHAKATRAP_SPIKEDWALL_HITEAST | BGHAKATRAP_SPIKEDWALL_HITWEST)) {
        sSpikedWallFlags = BGHAKATRAP_SPIKEDWALL_CRUSH_PLAYER;
        player->actor.bgCheckFlags |= BGCHECKFLAG_CRUSHED;
    }
}

Vec3f D_8088101C = { 0.0f, 0.0f, 0.0f };

void BgHakaTrap_SpikedWall_Burn(BgHakaTrap* this, PlayState* play) {
    Vec3f sp94;
    s32 var_s0;

    if (this->unk168 != 0) {
        this->unk168--;
    }
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_BURN_OUT - SFX_FLAG);
    for (var_s0 = 0; var_s0 < 2; var_s0++) {
        sp94.x = (Rand_ZeroOne() * ((this->dyna.actor.params == BG_HAKA_TRAP_SPIKED_WALL_EAST) ? -30.0f : 30.0f)) +
                 this->dyna.actor.world.pos.x;
        sp94.y = (Rand_ZeroOne() * 10.0f) + this->dyna.actor.world.pos.y + 30.0f;
        sp94.z = Rand_CenteredFloat(320.0f) + this->dyna.actor.world.pos.z;
        EffectSsDeadDb_Spawn(play, &sp94, &D_8088101C, &D_8088101C, 130, 20, 255, 255, 150, 170, 255, 0, 0, 1, 9,
                             false);
    }
    if (this->unk168 == 0) {
        sIsSpikeWallBurning = false;
        Actor_Kill(&this->dyna.actor);
    }
}

void BgHakaTrap_Guillotine_Fall(BgHakaTrap* this, PlayState* play) {
    s32 isDoneFalling;
    s32 unk168;

    if (this->isGuillotineFast) {
        this->dyna.actor.velocity.y *= 3.0f;
    } else {
        this->dyna.actor.velocity.y *= 2.0f;
    }
    if (this->unk168 != 0) {
        this->unk168 -= 1;
    }
    isDoneFalling =
        Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 185.0f, this->dyna.actor.velocity.y);
    unk168 = this->unk168;
    if (((unk168 == 0xA) && !this->isGuillotineFast) || ((unk168 == 0xD) && this->isGuillotineFast)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GUILLOTINE_BOUND);
    }
    if (this->unk168 == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        if (this->isGuillotineFast) {
            this->unk168 = 0xA;
        } else {
            this->unk168 = 0x28;
        }
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GUILLOTINE_UP);
        this->actionFunc = BgHakaTrap_Guillotine_Lift;
    }
    BgHakaTrap_UpdateBodyColliderPos(this, play);
    if (!isDoneFalling) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk178.base);
    }
}

void BgHakaTrap_Guillotine_Lift(BgHakaTrap* this, PlayState* play) {
    if (this->unk168 != 0) {
        this->unk168 -= 1;
    }
    if (this->isGuillotineFast) {
        Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 27.0f);
    } else {
        if (this->unk168 >= 0x15) {
            Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 90.0f, 9.0f);
        } else {
            Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 4.5f);
        }
        if (this->unk168 == 0x14) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_GUILLOTINE_UP);
        }
    }
    if (this->unk168 == 0) {
        this->unk168 = 0x14;
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
        this->dyna.actor.velocity.y = 0.1f;
        this->actionFunc = BgHakaTrap_Guillotine_Fall;
    }
    BgHakaTrap_UpdateBodyColliderPos(this, play);
}

void BgHakaTrap_SpikedCrusher_Fall(BgHakaTrap* this, PlayState* play) {
    Vec3f sp74;
    f32 yIntersect;
    f32 floorHeight;
    s32 var_s0;
    s32 bgId;

    this->dyna.actor.velocity.y *= 1.6f;
    if (this->unk168 != 0) {
        this->unk168 -= 1;
    }
    // Perform a collision check for the "stone umbrella" block
    // Because of the shape of the room and the size of the block we only need to check three positions,
    // the center of the east edge, the centerpoint, and the center of the west edge of the crusher.
    //
    // The y coordinate is offset by 25 units, as the crusher is allowed to clip into the floor for visual effect.
    sp74.x = this->dyna.actor.world.pos.x + 90.0f;
    sp74.y = this->dyna.actor.world.pos.y + 1.0f + 25.0f;
    sp74.z = this->dyna.actor.world.pos.z;
    // actor.floorHeight is storing the minimum y position of the crusher
    floorHeight = this->dyna.actor.floorHeight;
    for (var_s0 = 0; var_s0 < 3; var_s0++) {
        yIntersect =
            BgCheck_EntityRaycastDown4(&play->colCtx, &this->dyna.actor.floorPoly, &bgId, &this->dyna.actor, &sp74) -
            25.0f;
        if (floorHeight < yIntersect) {
            floorHeight = yIntersect;
        }
        sp74.x -= 90.0f;
    }
    if (Math_StepToF(&this->dyna.actor.world.pos.y, floorHeight, this->dyna.actor.velocity.y) != 0) {
        if (this->dyna.actor.velocity.y > 0.01f) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_TRAP_BOUND);
        }
        this->dyna.actor.velocity.y = 0.0f;
    }
    if (this->dyna.actor.velocity.y >= 0.01f) {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_CHINETRAP_DOWN - SFX_FLAG);
    }
    if (this->unk168 == 0) {
        this->dyna.actor.velocity.y = 0.0f;
        this->unk168 = 0x1E;
        this->spikedCrusherStepY = (s16)this->dyna.actor.world.pos.y + 50.0f;
        this->spikedCrusherStepY = MIN(this->dyna.actor.home.pos.y, this->spikedCrusherStepY);
        this->actionFunc = BgHakaTrap_SpikedCrusher_Lift;
    }
}

void BgHakaTrap_SpikedCrusher_Lift(BgHakaTrap* this, PlayState* play) {
    if (this->unk168 != 0) {
        this->unk168--;
    }
    if (this->unk168 >= 0x15) {
        this->isSpikedCrusherStationary = Math_StepToF(&this->dyna.actor.world.pos.y, this->spikedCrusherStepY, 15.0f);
    } else {
        this->isSpikedCrusherStationary =
            Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 20.0f);
    }
    if (this->unk168 == 0) {
        this->unk168 = 0x1E;
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
        this->dyna.actor.velocity.y = 0.5f;
        this->actionFunc = BgHakaTrap_SpikedCrusher_Fall;
    }
}

void BgHakaTrap_FanBlade_Idle(BgHakaTrap* this, PlayState* play) {
    if (this->unk168 != 0) {
        this->unk168 -= 1;
    }
    if (this->unk168 == 0) {
        // this->unk168 = 0, which signals the fan to turn on and speed up
        this->actionFunc = BgHakaTrap_FanBlade_ToggleFanGust;
    }
}

void BgHakaTrap_PushPlayer(BgHakaTrap* this, PlayState* play, s16 angularVelocity) {
    Player* player = GET_PLAYER(play);
    Vec3f playerRelOff;

    Actor_WorldToActorCoords(&this->dyna.actor, &playerRelOff, &player->actor.world.pos);
    if ((fabsf(playerRelOff.x) < 70.0f) && (fabsf(playerRelOff.y) < 100.0f) && (playerRelOff.z < 500.0f) &&
        (GET_PLAYER(play)->currentBoots != 1)) {
        player->pushedSpeed =
            (((500.0f - playerRelOff.z) * 0.06f) + 5.0f) * angularVelocity * (1.0f / 14848.0f) * (2.0f / 3.0f);
        player->pushedYaw = this->dyna.actor.shape.rot.y;
    }
}

void BgHakaTrap_FanBlade_ToggleFanGust(BgHakaTrap* this, PlayState* play) {
    // this->unk168 stores the current fan behavior.
    // if 1, the fan is on and is ramping down to the off state.
    // if 0, the fan is off and is ramping up to the full on state.

    // world.rot.z is the current angular velocity of the fan
    if (this->unk168 != 0) {
        // Fan winds down
        if (Math_ScaledStepToS(&this->dyna.actor.world.rot.z, 0, (this->dyna.actor.world.rot.z * 0.03f) + 5.0f) != 0) {
            this->unk168 = 0x28;
            this->actionFunc = BgHakaTrap_FanBlade_Idle;
        }
    } else {
        // Fan speeds up
        if (Math_ScaledStepToS(&this->dyna.actor.world.rot.z, 0x3A00, (this->dyna.actor.world.rot.z * 0.03f) + 5.0f) !=
            0) {
            this->unk168 = 0x64;
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
    if (this->unk168 != 0) {
        this->unk168--;
    }
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_WIND_TRAP - SFX_FLAG);
    if (this->unk168 == 0) {
        this->unk168 = 1; // setting this signals the fan to turn off and slow down
        this->actionFunc = BgHakaTrap_FanBlade_ToggleFanGust;
    }
    // world.rot.z is the current angular velocity of the fan
    this->dyna.actor.shape.rot.z += this->dyna.actor.world.rot.z;
    BgHakaTrap_PushPlayer(this, play, this->dyna.actor.world.rot.z);
}

void BgHakaTrap_Update(Actor* thisx, PlayState* play) {
    BgHakaTrap* this = (BgHakaTrap*)thisx;
    s32 pad;

    this->actionFunc(this, play);

    if ((thisx->params != BG_HAKA_TRAP_FAN_BLADE) && (thisx->params != BG_HAKA_TRAP_SPIKED_CRUSHER)) {
        this->unk178.dim.pos.y = this->dyna.actor.world.pos.y;
        if ((thisx->params == BG_HAKA_TRAP_GUILLOTINE) || (thisx->params == BG_HAKA_TRAP_GUILLOTINE_FAST)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk178.base);
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk178.base);
        } else {
            if (this->actionFunc == BgHakaTrap_SpikedWall_CloseIn) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk1C4.base);
            }
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk178.base);
        }
    }
}

void BgHakaTrap_SpikedWall_UpdateCollider(BgHakaTrap* this) {
    Vec3f vtx[3];

    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[0].dim.vtx[0], &vtx[0]);
    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[0].dim.vtx[1], &vtx[1]);
    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[0].dim.vtx[2], &vtx[2]);
    Collider_SetTrisVertices(&this->unk1C4, 0, &vtx[0], &vtx[1], &vtx[2]);
    Matrix_MultVec3f(&sSpikedWallTrisElementsInit[1].dim.vtx[2], &vtx[1]);
    Collider_SetTrisVertices(&this->unk1C4, 1, &vtx[0], &vtx[2], &vtx[1]);
}

Gfx* D_80881028[5] = {
    gShadowTempleGuillotineDL,     gShadowTempleSpikedCrusherDL, gShadowTempleSpikedWallEastDL,
    gShadowTempleSpikedWallWestDL, gShadowTempleFanBladeDL,
};
static Color_RGBA8 sFogBlack = { 0, 0, 0, 0 };

void BgHakaTrap_Draw(Actor* thisx, PlayState* play) {
    BgHakaTrap* this = (BgHakaTrap*)thisx;
    s32 pad;

    if (this->actionFunc == BgHakaTrap_SpikedWall_Burn) {
        func_80026230(play, &sFogBlack, this->unk168 + 0x14, 40);
    }
    Gfx_DrawDListOpa(play, D_80881028[this->dyna.actor.params]);
    if (this->actionFunc == BgHakaTrap_SpikedWall_CloseIn) {
        BgHakaTrap_SpikedWall_UpdateCollider(this);
    }
    if (this->actionFunc == BgHakaTrap_SpikedWall_Burn) {
        func_80026608(play);
    }
    if ((this->actionFunc == BgHakaTrap_SpikedCrusher_Lift) && ((u8)this->isSpikedCrusherStationary == 0)) {
        Vec3f sfxPos;

        sfxPos.x = this->dyna.actor.world.pos.x;
        sfxPos.z = this->dyna.actor.world.pos.z;
        sfxPos.y = this->dyna.actor.world.pos.y + 110.0f;
        SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &sfxPos, &this->chainLiftSfxPos);
        Sfx_PlaySfxAtPos(&this->chainLiftSfxPos, NA_SE_EV_BRIDGE_CLOSE - SFX_FLAG);
    }
}
