/*
 * File: z_item_shield.c
 * Overlay: ovl_Item_Shield
 * Description: Deku Shield
 */

#include "terminal.h"
#include "z_item_shield.h"
#include "assets/objects/object_link_child/object_link_child.h"

#define FLAGS ACTOR_FLAG_4

#define ITEMSHIELD_STATE_UPSIDE_DOWN (1 << 0)
#define ITEMSHIELD_STATE_INVISIBLE (1 << 1)

void ItemShield_Init(Actor* thisx, PlayState* play);
void ItemShield_Destroy(Actor* thisx, PlayState* play);
void ItemShield_Update(Actor* thisx, PlayState* play);
void ItemShield_Draw(Actor* thisx, PlayState* play);

void ItemShield_Burning_FlyFromPlayer(ItemShield* this, PlayState* play);
void ItemShield_Collectible_Wait(ItemShield* this, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 15, 0, { 0, 0, 0 } },
};

ActorInit Item_Shield_InitVars = {
    ACTOR_ITEM_SHIELD,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_LINK_CHILD,
    sizeof(ItemShield),
    (ActorFunc)ItemShield_Init,
    (ActorFunc)ItemShield_Destroy,
    (ActorFunc)ItemShield_Update,
    (ActorFunc)ItemShield_Draw,
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
        case ITEMSHIELD_TYPE_COLLECTIBLE:
            ActorShape_Init(&this->actor.shape, 1400.0f, NULL, 0.0f);
            this->actor.shape.rot.x = 0x4000;
            ItemShield_SetupAction(this, ItemShield_Collectible_Wait);
            break;

        case ITEMSHIELD_TYPE_BURNING:
            ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
            ItemShield_SetupAction(this, ItemShield_Burning_FlyFromPlayer);
            this->stateFlags |= ITEMSHIELD_STATE_INVISIBLE;
            for (i = 0; i < ITEMSHIELD_FLAME_COUNT; i++) {
                this->flameTypes[i] = 1 + 2 * i;
                this->flamePos[i].x = Rand_CenteredFloat(10.0f);
                this->flamePos[i].y = Rand_CenteredFloat(10.0f);
                this->flamePos[i].z = Rand_CenteredFloat(10.0f);
            }
            break;
    }

    Actor_SetScale(&this->actor, 0.01f);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    osSyncPrintf(VT_FGCOL(GREEN) "Item_Shild %d \n" VT_RST, this->actor.params);
}

void ItemShield_Destroy(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void ItemShield_Collectible_ReactToHit(ItemShield* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);
    if (Actor_HasParent(&this->actor, play)) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_OfferGetItem(&this->actor, play, GI_SHIELD_DEKU, 30.0f, 50.0f);
    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->timer--;

        // Blink if about to despawn
        if (this->timer < 60) {
            if (this->timer & 1) {
                this->stateFlags |= ITEMSHIELD_STATE_INVISIBLE;
            } else {
                this->stateFlags &= ~ITEMSHIELD_STATE_INVISIBLE;
            }
        }
        if (this->timer == 0) {
            Actor_Kill(&this->actor);
        }
    }
}

void ItemShield_Collectible_Wait(ItemShield* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_OfferGetItem(&this->actor, play, GI_SHIELD_DEKU, 30.0f, 50.0f);

    if (this->collider.base.acFlags & AC_HIT) {
        ItemShield_SetupAction(this, ItemShield_Collectible_ReactToHit);
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

#define ITEMSHIELD_FLAME_TYPE_COUNT 15

void ItemShield_Burning_Combust(ItemShield* this, PlayState* play) {
    static Vec3f sFlameSpawnPos = { 0.0f, 0.0f, 0.0f };
    static f32 sFlameScales[] = {
        0.3f, 0.6f, 0.9f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.85f, 0.7f, 0.55f, 0.4f, 0.25f, 0.1f, 0.0f,
    };
    static f32 sFlameIntensities[] = {
        1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.8f, 0.6f, 0.4f, 0.2f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    };
    s32 i;
    s32 type;

    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->actor.shape.yOffset = ABS(Math_SinS(this->actor.shape.rot.x)) * 1500.0f;

    // Spawn flames at random locations until despawn
    for (i = 0; i < ITEMSHIELD_FLAME_COUNT; i++) {
        type = ITEMSHIELD_FLAME_TYPE_COUNT - this->flameTypes[i];

        sFlameSpawnPos.x = this->flamePos[i].x;
        sFlameSpawnPos.y =
            this->flamePos[i].y + (this->actor.shape.yOffset * 0.01f) + (sFlameScales[type] * -10.0f * 0.2f);
        sFlameSpawnPos.z = this->flamePos[i].z;

        EffectSsFireTail_SpawnFlame(play, &this->actor, &sFlameSpawnPos, sFlameScales[type] * 0.2f, -1,
                                    sFlameIntensities[type]);

        // cycle through flame types and pick new random positions until the shield is about to disappear
        if (this->flameTypes[i] != 0) {
            this->flameTypes[i]--;
        } else if (this->timer > 16) {
            this->flameTypes[i] = ITEMSHIELD_FLAME_TYPE_COUNT;
            this->flamePos[i].x = Rand_CenteredFloat(15.0f);
            this->flamePos[i].y = Rand_CenteredFloat(10.0f);
            this->flamePos[i].z = Rand_CenteredFloat(15.0f);
        }
    }

    // Settle to ground
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->pitchSpeed -= this->actor.shape.rot.x >> 1;
        this->pitchSpeed -= this->pitchSpeed >> 2;
        this->actor.shape.rot.x += this->pitchSpeed;
        if ((this->timer >= 8) && (this->timer < 24)) {
            Actor_SetScale(&this->actor, (this->timer - 8) * 0.000625f);
        }
        if (this->timer != 0) {
            this->timer--;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

/**
 * Position and orient like Player's actual shield, then fly off
 */
void ItemShield_Burning_FlyFromPlayer(ItemShield* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    MtxF* shield = &player->shieldMf;

    this->actor.world.pos.x = shield->xw;
    this->actor.world.pos.y = shield->yw;
    this->actor.world.pos.z = shield->zw;
    this->stateFlags &= ~ITEMSHIELD_STATE_INVISIBLE;

    this->actor.shape.rot.y = Math_Atan2S(-shield->zz, -shield->xz);
    this->actor.shape.rot.x = Math_Atan2S(-shield->yz, sqrtf(shield->zz * shield->zz + shield->xz * shield->xz));

    if (ABS(this->actor.shape.rot.x) > 0x4000) {
        this->stateFlags |= ITEMSHIELD_STATE_UPSIDE_DOWN;
    }

    ItemShield_SetupAction(this, ItemShield_Burning_Combust);

    this->actor.velocity.y = 4.0;
    this->actor.minVelocityY = -4.0;
    this->actor.gravity = -0.8;
    this->pitchSpeed = 0;
    this->timer = 70;
    this->actor.speed = 0;
}

void ItemShield_Update(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;

    this->actionFunc(this, play);
}

void ItemShield_Draw(Actor* thisx, PlayState* play) {
    ItemShield* this = (ItemShield*)thisx;

    if (!(this->stateFlags & ITEMSHIELD_STATE_INVISIBLE)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_item_shield.c", 457);

        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_item_shield.c", 460),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        //! @bug This display list references segment 12, which the player actor usually sets up properly before drawing
        //! his shield. However when drawn in isolation by this actor, that segment is not set up properly.
        //! If an actor that is processed before this one happens to set segment 12 to something other than a display
        //! list, a crash is likely to occur.
        //! Under normal game circumstances a crash due to this bug happens to not manifest. In more niche scenarios,
        //! like doing the ganon's castle collapse sequence as child, burning the shield can cause a crash due to Zelda
        //! using segment 12 for matrices.
        gSPDisplayList(POLY_OPA_DISP++, SEGMENTED_TO_VIRTUAL(gLinkChildDekuShieldDL));

        CLOSE_DISPS(play->state.gfxCtx, "../z_item_shield.c", 465);
    }
}
