/*
 * File: z_en_wood02.c
 * Overlay: ovl_En_Wood02
 * Description: Trees, bushes, leaves
 */

#include "z_en_wood02.h"
#include "assets/objects/object_wood02/object_wood02.h"

#define FLAGS 0

void EnWood02_Init(Actor* thisx, PlayState* play2);
void EnWood02_Destroy(Actor* thisx, PlayState* play);
void EnWood02_Update(Actor* thisx, PlayState* play2);
void EnWood02_Draw(Actor* thisx, PlayState* play);

/**
 * WOOD_SPAWN_SPAWNER is also used by some individual trees: EnWood02_Update also checks for parent before running any
 * despawning code.
 *  */
typedef enum WoodSpawnType {
    /* 0 */ WOOD_SPAWN_NORMAL,
    /* 1 */ WOOD_SPAWN_SPAWNED,
    /* 2 */ WOOD_SPAWN_SPAWNER
} WoodSpawnType;

typedef enum WoodDrawType {
    /* 0 */ WOOD_DRAW_TREE_CONICAL,
    /* 1 */ WOOD_DRAW_TREE_OVAL,
    /* 2 */ WOOD_DRAW_TREE_KAKARIKO_ADULT,
    /* 3 */ WOOD_DRAW_BUSH_GREEN,
    /* 4 */ WOOD_DRAW_4, // Used for black bushes and green leaves
    /* 5 */ WOOD_DRAW_LEAF_YELLOW
} WoodDrawType;

ActorProfile En_Wood02_Profile = {
    /**/ ACTOR_EN_WOOD02,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_WOOD02,
    /**/ sizeof(EnWood02),
    /**/ EnWood02_Init,
    /**/ EnWood02_Destroy,
    /**/ EnWood02_Update,
    /**/ EnWood02_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_TREE,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK5,
        { 0x00000000, 0x00, 0x00 },
        { 0x0FC0074A, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 18, 60, 0, { 0, 0, 0 } },
};

static f32 sSpawnDistance[] = { 707.0f, 525.0f, 510.0f, 500.0f, 566.0f, 141.0f };

static s16 sSpawnAngle[] = { 0x1FFF, 0x4C9E, 0x77F5, 0xA5C9, 0xD6C3, 0xA000 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(lockOnArrowOffset, 5600, ICHAIN_STOP),
};

static Gfx* D_80B3BF54[] = {
    object_wood02_DL_0078D0, object_wood02_DL_007CA0, object_wood02_DL_0080D0, object_wood02_DL_000090,
    object_wood02_DL_000340, object_wood02_DL_000340, object_wood02_DL_000700,
};

static Gfx* D_80B3BF70[] = {
    object_wood02_DL_007968,
    object_wood02_DL_007D38,
    object_wood02_DL_0081A8,
    NULL,
    NULL,
    NULL,
    object_wood02_DL_007AD0,
    object_wood02_DL_007E20,
    object_wood02_DL_008350,
    object_wood02_DL_000160,
    object_wood02_DL_000440,
    object_wood02_DL_000700,
};

static f32 sSpawnCos;

static f32 sSpawnSin;

s32 EnWood02_SpawnZoneCheck(EnWood02* this, PlayState* play, Vec3f* pos) {
    f32 phi_f12;

    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, pos, &this->actor.projectedPos, &this->actor.projectedW);

    phi_f12 = ((this->actor.projectedW == 0.0f) ? 1000.0f : fabsf(1.0f / this->actor.projectedW));

    if ((-this->actor.cullingVolumeScale < this->actor.projectedPos.z) &&
        (this->actor.projectedPos.z < (this->actor.cullingVolumeDistance + this->actor.cullingVolumeScale)) &&
        (((fabsf(this->actor.projectedPos.x) - this->actor.cullingVolumeScale) * phi_f12) < 1.0f) &&
        (((this->actor.projectedPos.y + this->actor.cullingVolumeDownward) * phi_f12) > -1.0f) &&
        (((this->actor.projectedPos.y - this->actor.cullingVolumeScale) * phi_f12) < 1.0f)) {
        return true;
    }
    return false;
}

/** Spawns similar-looking trees or bushes only when the player is sufficiently close. Presumably done this way to keep
 * memory usage down in Hyrule Field. */
void EnWood02_SpawnOffspring(EnWood02* this, PlayState* play) {
    EnWood02* childWood;
    s16* childSpawnAngle;
    Vec3f childPos;
    s16 extraRot;
    s16 childParams;
    s32 i;

    for (i = 4; i >= 0; i--) {
        if ((this->unk_14E[i] & 0x7F) == 0) {
            extraRot = 0;
            if (this->actor.params == WOOD_BUSH_GREEN_LARGE_SPAWNER) {
                extraRot = 0x4000;
            }
            childSpawnAngle = &sSpawnAngle[i];
            sSpawnCos = Math_CosS(*childSpawnAngle + this->actor.world.rot.y + extraRot);
            sSpawnSin = Math_SinS(*childSpawnAngle + this->actor.world.rot.y + extraRot);
            childPos.x = (sSpawnDistance[i] * sSpawnSin) + this->actor.home.pos.x;
            childPos.y = this->actor.home.pos.y;
            childPos.z = (sSpawnDistance[i] * sSpawnCos) + this->actor.home.pos.z;
            if (EnWood02_SpawnZoneCheck(this, play, &childPos)) {
                if ((this->unk_14E[i] & 0x80) != 0) {
                    childParams = (0xFF00 | (this->actor.params + 1));
                } else {
                    childParams = (((this->drawType & 0xF0) << 4) | (this->actor.params + 1));
                }
                childWood = (EnWood02*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_WOOD02,
                                                          childPos.x, childPos.y, childPos.z, this->actor.world.rot.x,
                                                          *childSpawnAngle, 0, childParams);
                if (childWood != NULL) {
                    childWood->unk_14E[0] = i;
                    this->unk_14E[i] |= 1;
                    childWood->actor.projectedPos = this->actor.projectedPos;
                } else {
                    this->unk_14E[i] &= 0x80;
                }
            }
        }
    }
}

void EnWood02_Init(Actor* thisx, PlayState* play2) {
    s16 spawnType;
    f32 actorScale;
    PlayState* play = play2;
    EnWood02* this = (EnWood02*)thisx;
    CollisionPoly* poly;
    s32 bgId;
    f32 floorY;
    s16 extraRot;

    spawnType = WOOD_SPAWN_NORMAL;
    actorScale = 1.0f;
    this->unk_14C = PARAMS_GET_U(this->actor.params, 8, 8);

    if (this->actor.home.rot.z != 0) {
        this->actor.home.rot.z = (this->actor.home.rot.z << 8) | this->unk_14C;
        this->unk_14C = -1;
        this->actor.world.rot.z = this->actor.shape.rot.z = 0;
    } else if (this->unk_14C & 0x80) {
        this->unk_14C = -1;
    }

    this->actor.params &= 0xFF;
    Actor_ProcessInitChain(&this->actor, sInitChain);

    if (this->actor.params <= WOOD_TREE_KAKARIKO_ADULT) {
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    }

    switch (this->actor.params) {
        case WOOD_BUSH_GREEN_LARGE_SPAWNER:
        case WOOD_BUSH_BLACK_LARGE_SPAWNER:
            spawnType = 1;
            FALLTHROUGH;
        case WOOD_BUSH_GREEN_LARGE_SPAWNED:
        case WOOD_BUSH_BLACK_LARGE_SPAWNED:
            spawnType++;
            FALLTHROUGH;
        case WOOD_TREE_CONICAL_LARGE:
        case WOOD_BUSH_GREEN_LARGE:
        case WOOD_BUSH_BLACK_LARGE:
            actorScale = 1.5f;
            this->actor.cullingVolumeDistance = 4000.0f;
            this->actor.cullingVolumeScale = 2000.0f;
            this->actor.cullingVolumeDownward = 2400.0f;
            break;
        case WOOD_TREE_CONICAL_SPAWNER:
        case WOOD_TREE_OVAL_YELLOW_SPAWNER:
        case WOOD_TREE_OVAL_GREEN_SPAWNER:
        case WOOD_BUSH_GREEN_SMALL_SPAWNER:
        case WOOD_BUSH_BLACK_SMALL_SPAWNER:
            spawnType = 1;
            FALLTHROUGH;
        case WOOD_TREE_CONICAL_SPAWNED:
        case WOOD_TREE_OVAL_YELLOW_SPAWNED:
        case WOOD_TREE_OVAL_GREEN_SPAWNED:
        case WOOD_BUSH_GREEN_SMALL_SPAWNED:
        case WOOD_BUSH_BLACK_SMALL_SPAWNED:
            spawnType++;
            FALLTHROUGH;
        case WOOD_TREE_CONICAL_MEDIUM:
        case WOOD_TREE_OVAL_GREEN:
        case WOOD_TREE_KAKARIKO_ADULT:
        case WOOD_BUSH_GREEN_SMALL:
        case WOOD_BUSH_BLACK_SMALL:
            this->actor.cullingVolumeDistance = 4000.0f;
            this->actor.cullingVolumeScale = 800.0f;
            this->actor.cullingVolumeDownward = 1800.0f;
            break;
        case WOOD_TREE_CONICAL_SMALL:
            actorScale = 0.6f;
            this->actor.cullingVolumeDistance = 4000.0f;
            this->actor.cullingVolumeScale = 400.0f;
            this->actor.cullingVolumeDownward = 1000.0f;
            break;
        case WOOD_LEAF_GREEN:
        case WOOD_LEAF_YELLOW:
            this->unk_14E[0] = 0x4B;
            actorScale = 0.02f;
            this->actor.velocity.x = Rand_CenteredFloat(6.0f);
            this->actor.velocity.z = Rand_CenteredFloat(6.0f);
            this->actor.velocity.y = (Rand_ZeroOne() * 1.25f) + -3.1f;
            break;
    }

    if (this->actor.params <= WOOD_TREE_CONICAL_SPAWNED) {
        this->drawType = WOOD_DRAW_TREE_CONICAL;
    } else if (this->actor.params <= WOOD_TREE_OVAL_GREEN_SPAWNED) {
        this->drawType = WOOD_DRAW_TREE_OVAL;
    } else if (this->actor.params <= WOOD_TREE_KAKARIKO_ADULT) {
        this->drawType = WOOD_DRAW_TREE_KAKARIKO_ADULT;
    } else if (this->actor.params <= WOOD_BUSH_GREEN_LARGE_SPAWNED) {
        this->drawType = WOOD_DRAW_BUSH_GREEN;
    } else if (this->actor.params <= WOOD_LEAF_GREEN) { // Black bushes and green leaves
        this->drawType = WOOD_DRAW_4;
    } else {
        this->drawType = WOOD_DRAW_LEAF_YELLOW;
    }

    Actor_SetScale(&this->actor, actorScale);
    this->spawnType = spawnType;

    if (spawnType != WOOD_SPAWN_NORMAL) {
        extraRot = 0;

        if (this->actor.params == WOOD_BUSH_GREEN_LARGE_SPAWNER) {
            extraRot = 0x4000;
        }

        if (spawnType == WOOD_SPAWN_SPAWNER) {
            this->drawType |= this->unk_14C << 4;
            EnWood02_SpawnOffspring(this, play);
            sSpawnCos = Math_CosS(sSpawnAngle[5] + this->actor.world.rot.y + extraRot);
            sSpawnSin = Math_SinS(sSpawnAngle[5] + this->actor.world.rot.y + extraRot);
            this->actor.world.pos.x += (sSpawnSin * sSpawnDistance[5]);
            this->actor.world.pos.z += (sSpawnCos * sSpawnDistance[5]);
        } else {
            this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        }

        // Snap to floor, or remove if over void
        this->actor.world.pos.y += 200.0f;
        floorY = BgCheck_EntityRaycastDown4(&play->colCtx, &poly, &bgId, &this->actor, &this->actor.world.pos);

        if (floorY > BGCHECK_Y_MIN) {
            this->actor.world.pos.y = floorY;
        } else {
            Actor_Kill(&this->actor);
            return;
        }
    }
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    this->actor.home.rot.y = 0;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
}

void EnWood02_Destroy(Actor* thisx, PlayState* play) {
    EnWood02* this = (EnWood02*)thisx;

    if (this->actor.params <= WOOD_TREE_KAKARIKO_ADULT) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

void EnWood02_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnWood02* this = (EnWood02*)thisx;
    f32 wobbleAmplitude;

    // Despawn extra trees in a group if out of range
    if ((this->spawnType == WOOD_SPAWN_SPAWNED) && (this->actor.parent != NULL)) {
        if (!(this->actor.flags & ACTOR_FLAG_INSIDE_CULLING_VOLUME)) {
            u8 new_var = this->unk_14E[0];
            u8 phi_v0 = 0;
            s32 pad;

            if (this->unk_14C < 0) {
                phi_v0 = 0x80;
            }

            ((EnWood02*)this->actor.parent)->unk_14E[new_var] = phi_v0;
            Actor_Kill(&this->actor);
            return;
        }
    } else if (this->spawnType == WOOD_SPAWN_SPAWNER) {
        EnWood02_SpawnOffspring(this, play);
    }

    if (this->actor.params <= WOOD_TREE_KAKARIKO_ADULT) {
        if (this->collider.base.acFlags & AC_HIT) {
            this->collider.base.acFlags &= ~AC_HIT;
            Actor_PlaySfx(&this->actor, NA_SE_IT_REFLECTION_WOOD);
        }

        if (this->actor.home.rot.y != 0) {
            Vec3f dropsSpawnPt = this->actor.world.pos;

            dropsSpawnPt.y += 200.0f;

            if ((this->unk_14C >= 0) && (this->unk_14C < 0x64)) {
                Item_DropCollectibleRandom(play, &this->actor, &dropsSpawnPt, this->unk_14C << 4);
            } else {
                if (this->actor.home.rot.z != 0) {
                    this->actor.home.rot.z &= 0x1FFF;
                    this->actor.home.rot.z |= 0xE000;
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_SW, dropsSpawnPt.x, dropsSpawnPt.y, dropsSpawnPt.z, 0,
                                this->actor.world.rot.y, 0, this->actor.home.rot.z);
                    this->actor.home.rot.z = 0;
                }
            }

            // Spawn falling leaves
            if (this->unk_14C >= -1) {
                s32 i;
                s32 leavesParams = WOOD_LEAF_GREEN;

                if ((this->actor.params == WOOD_TREE_OVAL_YELLOW_SPAWNER) ||
                    (this->actor.params == WOOD_TREE_OVAL_YELLOW_SPAWNED)) {
                    leavesParams = WOOD_LEAF_YELLOW;
                }
                Actor_PlaySfx(&this->actor, NA_SE_EV_TREE_SWING);

                for (i = 3; i >= 0; i--) {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_WOOD02, dropsSpawnPt.x, dropsSpawnPt.y, dropsSpawnPt.z,
                                0, Rand_CenteredFloat(65535.0f), 0, leavesParams);
                }
            }
            this->unk_14C = -0x15;
            this->actor.home.rot.y = 0;
        }

        if (this->actor.xzDistToPlayer < 600.0f) {
            Collider_UpdateCylinder(&this->actor, &this->collider);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        }
    } else if (this->actor.params < 0x17) { // Bush
        Player* player = GET_PLAYER(play);

        if (this->unk_14C >= -1) {
            if (((player->rideActor == NULL) && (sqrt(this->actor.xyzDistToPlayerSq) < 20.0) &&
                 (player->speedXZ != 0.0f)) ||
                ((player->rideActor != NULL) && (sqrt(this->actor.xyzDistToPlayerSq) < 60.0) &&
                 (player->rideActor->speed != 0.0f))) {
                if ((this->unk_14C >= 0) && (this->unk_14C < 0x64)) {
                    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                               ((this->unk_14C << 4) | 0x8000));
                }
                this->unk_14C = -0x15;
                Actor_PlaySfx(&this->actor, NA_SE_EV_TREE_SWING);
            }
        }
    } else { // Leaves
        this->unk_14C++;
        Math_ApproachF(&this->actor.velocity.x, 0.0f, 1.0f, 5 * 0.01f);
        Math_ApproachF(&this->actor.velocity.z, 0.0f, 1.0f, 5 * 0.01f);
        Actor_UpdatePos(&this->actor);
        this->actor.shape.rot.z = Math_SinS(3000 * this->unk_14C) * 0x4000;
        this->unk_14E[0]--;

        if (this->unk_14E[0] == 0) {
            Actor_Kill(&this->actor);
        }
    }

    // Wobble from impact
    if (this->unk_14C < -1) {
        this->unk_14C++;
        wobbleAmplitude = Math_SinS((this->unk_14C ^ 0xFFFF) * 0x3332) * 250.0f;
        this->actor.shape.rot.x = (Math_CosS(this->actor.yawTowardsPlayer - this->actor.shape.rot.y) * wobbleAmplitude);
        this->actor.shape.rot.z = (Math_SinS(this->actor.yawTowardsPlayer - this->actor.shape.rot.y) * wobbleAmplitude);
    }
}

void EnWood02_Draw(Actor* thisx, PlayState* play) {
    EnWood02* this = (EnWood02*)thisx;
    s16 type;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    u8 red;
    u8 green;
    u8 blue;

    OPEN_DISPS(gfxCtx, "../z_en_wood02.c", 775);
    type = this->actor.params;

    if ((type == WOOD_TREE_OVAL_GREEN_SPAWNER) || (type == WOOD_TREE_OVAL_GREEN_SPAWNED) ||
        (type == WOOD_TREE_OVAL_GREEN) || (type == WOOD_LEAF_GREEN)) {
        red = 50;
        green = 170;
        blue = 70;
    } else if ((type == WOOD_TREE_OVAL_YELLOW_SPAWNER) || (type == WOOD_TREE_OVAL_YELLOW_SPAWNED) ||
               (type == WOOD_LEAF_YELLOW)) {
        red = 180;
        green = 155;
        blue = 0;
    } else {
        red = green = blue = 255;
    }

    Gfx_SetupDL_25Xlu(gfxCtx);

    if ((this->actor.params == WOOD_LEAF_GREEN) || (this->actor.params == WOOD_LEAF_YELLOW)) {
        Gfx_SetupDL_25Opa(gfxCtx);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, red, green, blue, 127);
        Gfx_DrawDListOpa(play, object_wood02_DL_000700);
    } else if (D_80B3BF70[this->drawType & 0xF] != NULL) {
        Gfx_DrawDListOpa(play, D_80B3BF54[this->drawType & 0xF]);
        gDPSetEnvColor(POLY_XLU_DISP++, red, green, blue, 0);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_en_wood02.c", 808);
        gSPDisplayList(POLY_XLU_DISP++, D_80B3BF70[this->drawType & 0xF]);
    } else {
        Gfx_SetupDL_25Xlu(gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_en_wood02.c", 814);
        gSPDisplayList(POLY_XLU_DISP++, D_80B3BF54[this->drawType & 0xF]);
    }

    CLOSE_DISPS(gfxCtx, "../z_en_wood02.c", 840);
}
