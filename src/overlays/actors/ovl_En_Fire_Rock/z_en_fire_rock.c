#include "z_en_fire_rock.h"
#include "overlays/actors/ovl_En_Encount2/z_en_encount2.h"
#include "terminal.h"
#include "assets/objects/object_efc_star_field/object_efc_star_field.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnFireRock_Init(Actor* thisx, PlayState* play);
void EnFireRock_Destroy(Actor* thisx, PlayState* play);
void EnFireRock_Update(Actor* thisx, PlayState* play);
void EnFireRock_Draw(Actor* thisx, PlayState* play);

void FireRock_WaitSpawnRocksFromCeiling(EnFireRock* this, PlayState* play);
void FireRock_WaitOnFloor(EnFireRock* this, PlayState* play);
void EnFireRock_Fall(EnFireRock* this, PlayState* play);
void EnFireRock_SpawnMoreBrokenPieces(EnFireRock* this, PlayState* play);

ActorProfile En_Fire_Rock_Profile = {
    /**/ ACTOR_EN_FIRE_ROCK,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_EFC_STAR_FIELD,
    /**/ sizeof(EnFireRock),
    /**/ EnFireRock_Init,
    /**/ EnFireRock_Destroy,
    /**/ EnFireRock_Update,
    /**/ EnFireRock_Draw,
};

static ColliderCylinderInit D_80A12CA0 = {
    {
        COL_MATERIAL_HARD,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x09, 0x08 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 30, 30, -10, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A12CCC = {
    {
        COL_MATERIAL_HARD,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x01, 0x08 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 30, 30, -10, { 0, 0, 0 } },
};

void EnFireRock_Init(Actor* thisx, PlayState* play) {
    PlayState* play2 = play;
    Player* player = GET_PLAYER(play);
    EnFireRock* this = (EnFireRock*)thisx;
    s16 temp;

    this->type = this->actor.params;
    if (this->type != FIRE_ROCK_CEILING_SPOT_SPAWNER) {
        ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, 15.0f);
        if (this->type != FIRE_ROCK_ON_FLOOR) {
            this->angularVelocity.x = (Rand_ZeroFloat(10.0f) + 15.0f);
            this->angularVelocity.y = (Rand_ZeroFloat(10.0f) + 15.0f);
            this->angularVelocity.z = (Rand_ZeroFloat(10.0f) + 15.0f);
        }
    }
    switch (this->type) {
        case FIRE_ROCK_CEILING_SPOT_SPAWNER:
            this->actor.draw = NULL;
            // "☆☆☆☆☆ ceiling waiting rock ☆☆☆☆☆"
            PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 天井待ち岩 ☆☆☆☆☆ \n" VT_RST);
            this->actionFunc = FireRock_WaitSpawnRocksFromCeiling;
            break;
        case FIRE_ROCK_ON_FLOOR:
            Actor_SetScale(&this->actor, 0.03f);
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->actor, &D_80A12CCC);
            // "☆☆☆☆☆ floor rock ☆☆☆☆☆"
            PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 床岩 ☆☆☆☆☆ \n" VT_RST);
            this->collider.dim.radius = 23;
            this->collider.dim.height = 37;
            this->collider.dim.yShift = -10;
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
            this->actor.colChkInfo.mass = MASS_IMMOVABLE;
            this->actionFunc = FireRock_WaitOnFloor;
            break;
        case FIRE_ROCK_SPAWNED_FALLING1: // spawned by encount2
            // sets unused vars?
            this->unk_17C.x = (f32)(Rand_CenteredFloat(50.0f) + player->actor.world.pos.x);
            this->unk_17C.z = (f32)(Rand_CenteredFloat(50.0f) + player->actor.world.pos.z);
            FALLTHROUGH;
        case FIRE_ROCK_SPAWNED_FALLING2: // spawned by encount2 and by the ceilling spawner
            this->scale = (Rand_ZeroFloat(2.0f) / 100.0f) + 0.02f;
            Actor_SetScale(&this->actor, this->scale);
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->actor, &D_80A12CA0);
            this->actor.world.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->actionFunc = EnFireRock_Fall;
            this->actor.shape.shadowScale = 15.0f;
            break;
        case FIRE_ROCK_BROKEN_PIECE1:
            this->actor.velocity.y = Rand_ZeroFloat(3.0f) + 4.0f;
            this->actor.speed = Rand_ZeroFloat(3.0f) + 3.0f;
            this->scale = (Rand_ZeroFloat(1.0f) / 100.0f) + 0.02f;
            Actor_SetScale(&this->actor, this->scale);
            this->actor.gravity = -1.5f;
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->actor, &D_80A12CA0);
            this->actor.shape.shadowScale = 10.0f;
            this->actor.world.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->actionFunc = EnFireRock_Fall;
            break;
        case FIRE_ROCK_BROKEN_PIECE2:
            this->actor.velocity.y = Rand_ZeroFloat(3.0f) + 4.0f;
            this->actor.speed = Rand_ZeroFloat(3.0f) + 2.0f;
            this->scale = (Rand_ZeroFloat(1.0f) / 500.0f) + 0.01f;
            Actor_SetScale(&this->actor, this->scale);
            this->actor.gravity = -1.2f;
            this->actor.shape.shadowScale = 5.0f;
            this->actor.world.rot.y = this->actor.shape.rot.y = Rand_CenteredFloat(65535.0f);
            this->actionFunc = EnFireRock_Fall;
            break;
        default:
            // "☆☆☆☆☆ No such rock! ERR !!!!!! ☆☆☆☆☆"
            PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ そんな岩はねぇ！ERR!!!!!! ☆☆☆☆☆ \n" VT_RST);
            Actor_Kill(&this->actor);
            break;
    }
}

void EnFireRock_Destroy(Actor* thisx, PlayState* play) {
    EnFireRock* this = (EnFireRock*)thisx;

    if ((this->actor.parent != NULL) && (this->actor.parent == &this->spawner->actor)) {
        EnEncount2* spawner = (EnEncount2*)this->actor.parent;
        if ((spawner->actor.update != NULL) && (spawner->numSpawnedRocks > 0)) {
            spawner->numSpawnedRocks--;
            PRINTF("\n\n");
            // "☆☆☆☆☆ Number of spawned instances recovery ☆☆☆☆☆%d"
            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生数回復 ☆☆☆☆☆%d\n" VT_RST, spawner->numSpawnedRocks);
            PRINTF("\n\n");
        }
    }
    Collider_DestroyCylinder(play, &this->collider);
}

void EnFireRock_Fall(EnFireRock* this, PlayState* play) {
    Player* player;
    Vec3f flamePos;
    s32 i;

    player = GET_PLAYER(play);
    if ((this->actor.floorHeight == -10000.0f) || (this->actor.world.pos.y < (player->actor.world.pos.y - 200.0f))) {
        Actor_Kill(&this->actor);
        return;
    }
    switch (this->type) {
        case FIRE_ROCK_SPAWNED_FALLING1:
            if (player->actor.world.pos.y < this->actor.world.pos.y) {
                if ((player->actor.world.pos.x > -700.0f) || (player->actor.world.pos.x < 100.0f) ||
                    (player->actor.world.pos.z > -1290.0f) || (player->actor.world.pos.z < -3880.0f)) {
                    Math_ApproachF(&this->actor.world.pos.x, player->actor.world.pos.x, 1.0f, 10.0f);
                    Math_ApproachF(&this->actor.world.pos.z, player->actor.world.pos.z, 1.0f, 10.0f);
                }
            }
            FALLTHROUGH;
        case FIRE_ROCK_SPAWNED_FALLING2:
            flamePos.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
            flamePos.y = Rand_CenteredFloat(20.0f) + this->actor.world.pos.y;
            flamePos.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
            EffectSsEnFire_SpawnVec3f(play, &this->actor, &flamePos, 100, 0, 0, -1);
            break;
        case FIRE_ROCK_BROKEN_PIECE1:
            if ((play->gameplayFrames & 3) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_ROCK);
            }
            break;
    }
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && (this->timer == 0)) {
        switch (this->type) {
            case FIRE_ROCK_SPAWNED_FALLING1:
            case FIRE_ROCK_SPAWNED_FALLING2:
                Actor_RequestQuakeAndRumble(&this->actor, play, 5, 2);
                FALLTHROUGH;
            case FIRE_ROCK_BROKEN_PIECE1:
                Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, this->actor.shape.shadowScale, 1,
                                         8.0f, 500, 10, false);
                for (i = 0; i < 5; i++) {
                    flamePos.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
                    flamePos.y = this->actor.floorHeight;
                    flamePos.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
                    EffectSsEnFire_SpawnVec3f(play, &this->actor, &flamePos, 300, 0, 0, -1);
                }
                this->actionFunc = EnFireRock_SpawnMoreBrokenPieces;
                break;
            default:
                Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, this->actor.shape.shadowScale, 3,
                                         8.0f, 200, 10, false);
                SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EV_EXPLOSION);
                Actor_Kill(&this->actor);
                break;
        }
    }
}

/**
 * After the rock has already hit the ground and started rolling, spawn two more, giving the illusion of breaking into
 * two pieces.
 */
void EnFireRock_SpawnMoreBrokenPieces(EnFireRock* this, PlayState* play) {
    EnFireRock* spawnedFireRock;
    s32 nextRockType;
    s32 i;
    s32 temp;

    nextRockType = FIRE_ROCK_SPAWNED_FALLING1;
    switch (this->type) {
        case FIRE_ROCK_SPAWNED_FALLING1:
        case FIRE_ROCK_SPAWNED_FALLING2:
            nextRockType = FIRE_ROCK_BROKEN_PIECE1;
            break;
        case FIRE_ROCK_BROKEN_PIECE1:
            nextRockType = FIRE_ROCK_BROKEN_PIECE2;
            break;
    }

    if (nextRockType != FIRE_ROCK_SPAWNED_FALLING1) {
        for (i = 0; i < 2; i++) {
            spawnedFireRock = (EnFireRock*)Actor_Spawn(
                &play->actorCtx, play, ACTOR_EN_FIRE_ROCK, Rand_CenteredFloat(3.0f) + this->actor.world.pos.x,
                Rand_CenteredFloat(3.0f) + (this->actor.world.pos.y + 10.0f),
                Rand_CenteredFloat(3.0f) + this->actor.world.pos.z, 0, 0, 0, nextRockType);
            if (spawnedFireRock != NULL) {
                spawnedFireRock->actor.world.rot.y = this->actor.world.rot.y;
                if (i == 0) {
                    spawnedFireRock->actor.shape.rot.y = this->actor.shape.rot.y;
                }
                spawnedFireRock->scale = this->scale - 0.01f;
            } else {
                PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ イッパイデッス ☆☆☆☆☆ \n" VT_RST);
            }
        }
        Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_ROCK);
    }
    Actor_Kill(&this->actor);
}

void FireRock_WaitSpawnRocksFromCeiling(EnFireRock* this, PlayState* play) {
    EnFireRock* spawnedFireRock;

    if (this->actor.xzDistToPlayer < 200.0f) {
        if ((this->playerNearby == 0) && (this->timer2 == 0)) {
            this->timer2 = 30;
            spawnedFireRock = (EnFireRock*)Actor_Spawn(
                &play->actorCtx, play, ACTOR_EN_FIRE_ROCK, Rand_CenteredFloat(3.0f) + this->actor.world.pos.x,
                this->actor.world.pos.y + 10.0f, Rand_CenteredFloat(3.0f) + this->actor.world.pos.z, 0, 0, 0,
                FIRE_ROCK_SPAWNED_FALLING2);
            if (spawnedFireRock != NULL) {
                spawnedFireRock->timer = 10;
            } else {
                PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ イッパイデッス ☆☆☆☆☆ \n" VT_RST);
            }
        }
        this->playerNearby = 1;
    } else {
        this->playerNearby = 0;
    }

    if (DEBUG_FEATURES && BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 0, 255, 0, 255, 4, play->state.gfxCtx);
    }
}

void FireRock_WaitOnFloor(EnFireRock* this, PlayState* play) {
    Vec3f flamePos;
    s16 scale;

    if (this->timer2 == 0) {
        flamePos.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
        flamePos.y = Rand_CenteredFloat(20.0f) + this->actor.world.pos.y;
        flamePos.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
        scale = 130 + (s16)Rand_CenteredFloat(60.0f);
        this->timer2 = 3 + (s16)Rand_ZeroFloat(3.0f);
        EffectSsEnFire_SpawnVec3f(play, &this->actor, &flamePos, scale, 0, 0, -1);
    }
}

void EnFireRock_Update(Actor* thisx, PlayState* play) {
    EnFireRock* this = (EnFireRock*)thisx;
    s16 setCollision;
    Player* player = GET_PLAYER(play);
    Actor* playerActor = &GET_PLAYER(play)->actor;
    f32 temp;

    if (this->timer2 != 0) {
        this->timer2--;
    }
    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, play);

    if (this->type != FIRE_ROCK_CEILING_SPOT_SPAWNER) {
        this->rockRotation.x += this->angularVelocity.x;
        this->rockRotation.y += this->angularVelocity.y;
        this->rockRotation.z += this->angularVelocity.z;
        this->relativePos.y = 3.0f;

        temp = 10.0f + (this->scale * 300.0f);
        thisx->shape.shadowScale = temp;
        if (thisx->shape.shadowScale < 10.0f) {
            thisx->shape.shadowScale = 10.0f;
        }
        if (thisx->shape.shadowScale > 20.0f) {
            thisx->shape.shadowScale = 20.0f;
        }

        if ((this->type == FIRE_ROCK_SPAWNED_FALLING1) || (this->type == FIRE_ROCK_SPAWNED_FALLING2)) {
            thisx->gravity = -0.3f - (this->scale * 7.0f);
        }
        if (this->type != FIRE_ROCK_ON_FLOOR) {
            Actor_MoveXZGravity(thisx);
            Actor_UpdateBgCheckInfo(play, thisx, 50.0f, 50.0f, 100.0f,
                                    UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
        }

        setCollision = false;
        if (this->actionFunc != EnFireRock_SpawnMoreBrokenPieces) {
            if ((this->type == FIRE_ROCK_SPAWNED_FALLING1) || (this->type == FIRE_ROCK_SPAWNED_FALLING2) ||
                (this->type == FIRE_ROCK_BROKEN_PIECE1)) {
                if (this->collider.base.atFlags & AT_BOUNCED) {
                    this->collider.base.atFlags &= ~AT_BOUNCED;
                    Actor_PlaySfx(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
                    thisx->velocity.y = 0.0f;
                    thisx->speed = 0.0f;
                    this->actionFunc = EnFireRock_SpawnMoreBrokenPieces;
                    // "☆☆☆☆☆ Shield Defense Lv1 ☆☆☆☆☆"
                    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ シールド防御 Lv１ ☆☆☆☆☆ \n" VT_RST);
                    return;
                }
                setCollision = true;
            }
        }

        if (this->type == FIRE_ROCK_ON_FLOOR) {
            if (this->collider.base.atFlags & AT_HIT) {
                this->collider.base.atFlags &= ~AT_HIT;
                if (this->collider.base.at == playerActor) {
                    if (!(player->stateFlags1 & PLAYER_STATE1_26)) {
                        Actor_SetPlayerKnockbackSmall(play, thisx, 2.0f, -player->actor.world.rot.y, 3.0f, 4);
                    }
                    return;
                }
            }
            setCollision = true;
        }
        if (setCollision) {
            Collider_UpdateCylinder(thisx, &this->collider);
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
    }
}

void EnFireRock_Draw(Actor* thisx, PlayState* play) {
    EnFireRock* this = (EnFireRock*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_fire_rock.c", 747);
    Matrix_Translate(thisx->world.pos.x + this->relativePos.x, thisx->world.pos.y + this->relativePos.y,
                     thisx->world.pos.z + this->relativePos.z, MTXMODE_NEW);
    Matrix_RotateX(DEG_TO_RAD(this->rockRotation.x), MTXMODE_APPLY);
    Matrix_RotateY(DEG_TO_RAD(this->rockRotation.y), MTXMODE_APPLY);
    Matrix_RotateZ(DEG_TO_RAD(this->rockRotation.z), MTXMODE_APPLY);
    Matrix_Scale(thisx->scale.x, thisx->scale.y, thisx->scale.z, MTXMODE_APPLY);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 155, 55, 255);
    gDPSetEnvColor(POLY_OPA_DISP++, 155, 255, 55, 255);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_fire_rock.c", 768);
    gSPDisplayList(POLY_OPA_DISP++, object_efc_star_field_DL_000DE0);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_fire_rock.c", 773);
}
