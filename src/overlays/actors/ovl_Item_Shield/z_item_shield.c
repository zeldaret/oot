/*
 * File: z_item_shield.c
 * Overlay: ovl_Item_Shield
 * Description: Deku Shield
 *
 * Note: There are multiple actors that are the "Deku Shield". This actor handles the following two behaviors:
 * - The shield is intended to be placed upright on a wall. It can be shot down and collected. (unused)
 * - The shield handles the animation and effect of burning off the player's back.
 */

#include "z_item_shield.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "rand.h"
#include "segmented_address.h"
#include "sys_math.h"
#include "sys_matrix.h"
#include "terminal.h"
#include "z_lib.h"
#include "effect.h"
#include "item.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_link_child/object_link_child.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void ItemShield_Init(Actor* thisx, PlayState* play);
void ItemShield_Destroy(Actor* thisx, PlayState* play);
void ItemShield_Update(Actor* thisx, PlayState* play);
void ItemShield_Draw(Actor* thisx, PlayState* play);

void ItemShield_StartShieldBurn(ItemShield* this, PlayState* play);
void ItemShield_WaitOnWall(ItemShield* this, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000004, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 15, 15, 0, { 0, 0, 0 } },
};

ActorProfile Item_Shield_Profile = {
    /**/ ACTOR_ITEM_SHIELD,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_LINK_CHILD,
    /**/ sizeof(ItemShield),
    /**/ ItemShield_Init,
    /**/ ItemShield_Destroy,
    /**/ ItemShield_Update,
    /**/ ItemShield_Draw,
};

static Color_RGBA8 unused = { 255, 255, 0, 255 };
static Color_RGBA8 unused2 = { 255, 0, 0, 255 };

void ItemShield_SetupAction(ItemShield* this, ItemShieldActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ItemShield_Init(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;
    s32 i;

    this->timer = 0;
    this->stateFlags = 0;

    switch (this->actor.params) {
        case ITEMSHIELD_TYPE_WALL:
            ActorShape_Init(&this->actor.shape, 1400.0f, NULL, 0.0f);
            this->actor.shape.rot.x = 0x4000;
            ItemShield_SetupAction(this, ItemShield_WaitOnWall);
            break;

        case ITEMSHIELD_TYPE_BURNED:
            ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
            ItemShield_SetupAction(this, ItemShield_StartShieldBurn);
            this->stateFlags |= ITEM_SHIELD_STATEFLAG_DRAW;
            for (i = 0; i < 8; i++) {
                // Staggers timers from 1, 3, ... 15
                this->flameLifeTimer[i] = 1 + 2 * i;
                this->flameParticlePos[i].x = Rand_CenteredFloat(10.0f);
                this->flameParticlePos[i].y = Rand_CenteredFloat(10.0f);
                this->flameParticlePos[i].z = Rand_CenteredFloat(10.0f);
            }
            break;
    }

    Actor_SetScale(&this->actor, 0.01f);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    PRINTF(VT_FGCOL(GREEN) "Item_Shild %d \n" VT_RST, this->actor.params);
}

void ItemShield_Destroy(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void ItemShield_WaitPickup(ItemShield* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);

    // Checks if Actor_OfferGetItem is accepted
    if (Actor_HasParent(&this->actor, play)) {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_OfferGetItem(&this->actor, play, GI_SHIELD_DEKU, 30.0f, 50.0f);
    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    // Wait for the shield to land before starting the countdown timer
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->timer--;
        if (this->timer < 60) {
            // Make the shield flicker to warn the player it's going to disappear
            if (this->timer & 1) {
                this->stateFlags |= ITEM_SHIELD_STATEFLAG_DRAW;
            } else {
                this->stateFlags &= ~ITEM_SHIELD_STATEFLAG_DRAW;
            }
        }
        if (this->timer == 0) {
            Actor_Kill(&this->actor);
        }
    }
}

void ItemShield_WaitOnWall(ItemShield* this, PlayState* play) {
    // Checks if Actor_OfferGetItem is accepted
    if (Actor_HasParent(&this->actor, play)) {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_OfferGetItem(&this->actor, play, GI_SHIELD_DEKU, 30.0f, 50.0f);

    if (this->collider.base.acFlags & AC_HIT) {
        ItemShield_SetupAction(this, ItemShield_WaitPickup);
        this->actor.velocity.y = 4.0f;
        this->actor.minVelocityY = -4.0f;
        this->actor.gravity = -0.8f;
        this->actor.speed = 0.0f;
        this->timer = 160;
    } else {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

void ItemShield_BurnShield(ItemShield* this, PlayState* play) {
    static Vec3f pos = { 0.0f, 0.0f, 0.0f };
    static f32 scale[16] = { 0.3f, 0.6f,  0.9f, 1.0f,  1.0f, 1.0f,  1.0f, 1.0f,
                             1.0f, 0.85f, 0.7f, 0.55f, 0.4f, 0.25f, 0.1f, 0.0f };
    static f32 colorIntensity[16] = { 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.8f,
                                      0.6f, 0.4f, 0.2f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    s32 i;

    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->actor.shape.yOffset = ABS(Math_SinS(this->actor.shape.rot.x)) * 1500.0f;

    for (i = 0; i < 8; i++) {
        // Manually manage the animation effects for all 8 flames
        s32 animIndex = 15 - this->flameLifeTimer[i];

        pos.x = this->flameParticlePos[i].x;
        pos.y = this->flameParticlePos[i].y + (this->actor.shape.yOffset * 0.01f) + (scale[animIndex] * -10.0f * 0.2f);
        pos.z = this->flameParticlePos[i].z;
        EffectSsFireTail_SpawnFlame(play, &this->actor, &pos, scale[animIndex] * 0.2f, -1, colorIntensity[animIndex]);

        if (this->flameLifeTimer[i] != 0) {
            this->flameLifeTimer[i]--;
        } else if (this->timer > 16) {
            // Start another flame
            this->flameLifeTimer[i] = 15;
            this->flameParticlePos[i].x = Rand_CenteredFloat(15.0f);
            this->flameParticlePos[i].y = Rand_CenteredFloat(10.0f);
            this->flameParticlePos[i].z = Rand_CenteredFloat(15.0f);
        }
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        // Beginning with the state of this->actor.shape.rot.x = 0x4000, this->shieldRotOscillation = 0,
        // this->actor.shape.rot.x will "wobble" down to a stable value of 0x0002 after 66 passes,
        // creating the illusion of the shield settling on the floor.
        this->shieldRotOscillation -= this->actor.shape.rot.x >> 1;
        this->shieldRotOscillation -= this->shieldRotOscillation >> 2;
        this->actor.shape.rot.x += this->shieldRotOscillation;

        if ((this->timer >= 8) && (this->timer < 24)) {
            Actor_SetScale(&this->actor, (this->timer - 8) * (0.01f / 16));
        }
        if (this->timer != 0) {
            this->timer--;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void ItemShield_StartShieldBurn(ItemShield* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    MtxF* shield = &player->shieldMf;

    // Match this shield to the player's shield model position
    this->actor.world.pos.x = shield->xw;
    this->actor.world.pos.y = shield->yw;
    this->actor.world.pos.z = shield->zw;
    this->stateFlags &= ~ITEM_SHIELD_STATEFLAG_DRAW;

    // line up the rotation to the player shield's model
    this->actor.shape.rot.y = Math_Atan2S(-shield->zz, -shield->xz);
    this->actor.shape.rot.x = Math_Atan2S(-shield->yz, sqrtf(shield->zz * shield->zz + shield->xz * shield->xz));

    if (ABS(this->actor.shape.rot.x) > 0x4000) {
        this->stateFlags |= ITEM_SHIELD_STATEFLAG_UNUSED;
    }

    ItemShield_SetupAction(this, ItemShield_BurnShield);

    this->actor.velocity.y = 4.0;
    this->actor.minVelocityY = -4.0;
    this->actor.gravity = -0.8;
    this->shieldRotOscillation = 0;
    this->timer = 70;
    this->actor.speed = 0;
}

void ItemShield_Update(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;

    this->actionFunc(this, play);
}

void ItemShield_Draw(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;

    if (!(this->stateFlags & ITEM_SHIELD_STATEFLAG_DRAW)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_item_shield.c", 457);
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_item_shield.c", 460);
        //! @bug Segment 0xC should be updated before drawing gLinkChildDekuShieldDL. It should point to either
        //! gCullBackDList or gCullFrontDList (look into calls to Player_DrawGameplay for more information).
        //!
        //! Most actors don't use segment 0xC, so the correct display list is inherited from Player_DrawGameplay.
        //! A notable exception is Adult Zelda who is rendered in-between, leading to the infamous crash when burning
        //! the Deku Shield during the tower collapse sequence.
        gSPDisplayList(POLY_OPA_DISP++, SEGMENTED_TO_VIRTUAL(gLinkChildDekuShieldDL));
        CLOSE_DISPS(play->state.gfxCtx, "../z_item_shield.c", 465);
    }
}
