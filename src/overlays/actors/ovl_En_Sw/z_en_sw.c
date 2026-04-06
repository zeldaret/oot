/*
 * File: z_en_sw.c
 * Overlay: En_Sw
 * Description: Gold Skulltula and Skullwalltula actors
 *
 * EnSw_GS_*, EnSw_ActionGS_* and *GS are functions, actions and variables only used by Gold Skulltula
 * EnSw_S_*, EnSw_ActionS_*, *S for Skullwalltula
 */

#include "z_en_sw.h"

#include "libc64/math64.h"
#include "libc64/qrand.h"
#include "array_count.h"
#include "attributes.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "sfx.h"
#include "sys_math3d.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_st/object_st.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

// Parameter and values for type of skulltula
#define ACTOR_ENSW_TYPE(thisx) PARAMS_GET_S(thisx->params, 13, 3)
#define ENSW_TYPE(this) PARAMS_GET_S(this->actor.params, 13, 3)
#define ENSW_FLY_GS 4
#define ENSW_SOIL_GS 3
#define ENSW_NIGHT_GS 2
#define ENSW_REGULAR_GS 1
#define ENSW_SKULLWALLTULA 0

#define ENSW_GS_AREA(this) PARAMS_GET_S(this->params, 8, 5) // mapIndex for current area
#define ENSW_GS_ID(this) PARAMS_GET_S(this->params, 0, 8)   // ID flag for this Gold Skulltula

void EnSw_Init(Actor* thisx, PlayState* play);
void EnSw_Destroy(Actor* thisx, PlayState* play);
void EnSw_Update(Actor* thisx, PlayState* play);
void EnSw_Draw(Actor* thisx, PlayState* play);
void EnSw_ActionGS_Idle(EnSw* this, PlayState* play);
void EnSw_ActionGS_Fly(EnSw* this, PlayState* play);
void EnSw_ActionGS_SetupFly(EnSw* this, PlayState* play);
void EnSw_ActionGS_Death(EnSw* this, PlayState* play);
void EnSw_ActionS_Idle(EnSw* this, PlayState* play);
void EnSw_ActionS_TargetAttack(EnSw* this, PlayState* play);
void EnSw_ActionS_StopMovement(EnSw* this, PlayState* play);
void EnSw_ActionS_Retreat(EnSw* this, PlayState* play);
void EnSw_ActionS_Fall(EnSw* this, PlayState* play);
void EnSw_ActionS_Death(EnSw* this, PlayState* play);
s32 EnSw_GS_FindFloorPoly(EnSw* this, PlayState* play, s32);
s32 EnSw_S_SightCheck(EnSw* this, PlayState* play);

ActorProfile En_Sw_Profile = {
    /**/ ACTOR_EN_SW,
    /**/ ACTORCAT_NPC, // If Skullwalltula, set to ACTORCAT_ENEMY on init
    /**/ FLAGS,
    /**/ OBJECT_ST,
    /**/ sizeof(EnSw),
    /**/ EnSw_Init,
    /**/ EnSw_Destroy,
    /**/ EnSw_Update,
    /**/ EnSw_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x08 },
            { 0xFFC3FFFE, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON | ACELEM_HOOKABLE,
            OCELEM_ON,
        },
        { 2, { { 0, -300, 0 }, 21 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

static CollisionCheckInfoInit2 sEnSwColliderInfo = { 1, 2, 25, 25, MASS_IMMOVABLE };

typedef enum EnSwAnimation {
    /* 0 */ ENSW_ANIM_0,
    /* 1 */ ENSW_ANIM_1,
    /* 2 */ ENSW_ANIM_2,
    /* 3 */ ENSW_ANIM_3
} EnSwAnimation;

static AnimationInfo sAnimationInfo[] = {
    { &object_st_Anim_000304, 1.0f, 0.0f, -1.0f, 0x01, 0.0f },
    { &object_st_Anim_000304, 1.0f, 0.0f, -1.0f, 0x01, -8.0f },
    { &object_st_Anim_0055A8, 1.0f, 0.0f, -1.0f, 0x01, -8.0f },
    { &object_st_Anim_005B98, 1.0f, 0.0f, -1.0f, 0x01, -8.0f },
};

char D_80B0F630[0x80]; // unused

void EnSw_CrossProduct(Vec3f* a, Vec3f* b, Vec3f* dst) {
    dst->x = (a->y * b->z) - (a->z * b->y);
    dst->y = (a->z * b->x) - (a->x * b->z);
    dst->z = (a->x * b->y) - (a->y * b->x);
}

/**
 * Gold Skulltula: Attach the actor to the found suitable poly
 */
s32 EnSw_GS_SetFloorPoly(EnSw* this, CollisionPoly* poly) {
    Vec3f polyNormal;
    Vec3f sp38;
    f32 sp34;
    f32 temp_f0;
    s32 pad;

    this->actor.floorPoly = poly;
    polyNormal.x = COLPOLY_GET_NORMAL(poly->normal.x);
    polyNormal.y = COLPOLY_GET_NORMAL(poly->normal.y);
    polyNormal.z = COLPOLY_GET_NORMAL(poly->normal.z);
    sp34 = Math_FAcosF(DOTXYZ(polyNormal, this->unk_364));
    EnSw_CrossProduct(&this->unk_364, &polyNormal, &sp38);
    Matrix_RotateAxis(sp34, &sp38, MTXMODE_NEW);
    Matrix_MultVec3f(&this->unk_370, &sp38);
    this->unk_370 = sp38;
    EnSw_CrossProduct(&this->unk_370, &polyNormal, &this->unk_37C);
    temp_f0 = Math3D_Vec3fMagnitude(&this->unk_37C);
    if (temp_f0 < 0.001f) {
        return 0;
    }
    this->unk_37C.x *= 1.0f / temp_f0;
    this->unk_37C.y *= 1.0f / temp_f0;
    this->unk_37C.z *= 1.0f / temp_f0;
    this->unk_364 = polyNormal;
    this->unk_3D8.xx = this->unk_370.x;
    this->unk_3D8.yx = this->unk_370.y;
    this->unk_3D8.zx = this->unk_370.z;
    this->unk_3D8.wx = 0.0f;
    this->unk_3D8.xy = this->unk_364.x;
    this->unk_3D8.yy = this->unk_364.y;
    this->unk_3D8.zy = this->unk_364.z;
    this->unk_3D8.wy = 0.0f;
    this->unk_3D8.xz = this->unk_37C.x;
    this->unk_3D8.yz = this->unk_37C.y;
    this->unk_3D8.zz = this->unk_37C.z;
    this->unk_3D8.wz = 0.0f;
    this->unk_3D8.xw = 0.0f;
    this->unk_3D8.yw = 0.0f;
    this->unk_3D8.zw = 0.0f;
    this->unk_3D8.ww = 1.0f;
    Matrix_MtxFToYXZRotS(&this->unk_3D8, &this->actor.world.rot, 0);
    //! @bug Does not return, but the return value is not used by any caller so it doesn't matter.
}

/**
 * Gold Skulltula: By line test, find a polygon that it can attach to as its position.
 * Ensure it's not a crawlspace, and is not ignored by projectiles
 * @return CollisionPoly* found by line test if fulfills above criteria, else NULL
 */
CollisionPoly* EnSw_GS_FindSuitablePoly(PlayState* play, Vec3f* pos1, Vec3f* pos2, Vec3f* posResult, s32* bgId) {
    CollisionPoly* poly;
    s32 pad;

    // Find poly
    if (!BgCheck_EntityLineTest1(&play->colCtx, pos1, pos2, posResult, &poly, true, true, true, false, bgId)) {
        return NULL;
    }

    // Check suitability
    if (SurfaceType_GetWallFlags(&play->colCtx, poly, *bgId) & WALL_FLAG_CRAWLSPACE) {
        return NULL;
    }

    if (SurfaceType_IsIgnoredByProjectiles(&play->colCtx, poly, *bgId)) {
        return NULL;
    }

    return poly;
}

/**
 * Gold Skulltula: Find a poly for the actor to attach to as its floor.
 * If found, set it as floorPoly.
 * @param trueArg always 1
 * @return true if found a suitable poly, else false
 */
s32 EnSw_GS_FindFloorPoly(EnSw* this, PlayState* play, s32 trueArg) {
    CollisionPoly* poly2;
    CollisionPoly* poly1;
    Vec3f pos2;
    Vec3f pos1;
    Vec3f sp84;
    Vec3f sp78;
    s32 pad;
    s32 bgId1;
    s32 bgId2;
    s32 i;
    s32 foundPoly;

    foundPoly = false;
    this->unused_42C = 1;
    sp84 = sp78 = this->actor.world.pos;
    sp84.x += this->unk_364.x * 18.0f;
    sp84.y += this->unk_364.y * 18.0f;
    sp84.z += this->unk_364.z * 18.0f;
    sp78.x -= this->unk_364.x * 18.0f;
    sp78.y -= this->unk_364.y * 18.0f;
    sp78.z -= this->unk_364.z * 18.0f;
    poly1 = EnSw_GS_FindSuitablePoly(play, &sp84, &sp78, &pos1, &bgId1);

    // Found one poly, check if can find another
    if ((poly1 != NULL) && (this->isAscendingGS == 0)) {
        sp78.x = sp84.x + (this->unk_37C.x * 24);
        sp78.y = sp84.y + (this->unk_37C.y * 24);
        sp78.z = sp84.z + (this->unk_37C.z * 24);
        poly2 = EnSw_GS_FindSuitablePoly(play, &sp84, &sp78, &pos2, &bgId2);
        if (poly2 != NULL) {
            // Set found poly 2 to floor poly
            if (trueArg == 1) {
                EnSw_GS_SetFloorPoly(this, poly2);
                this->actor.world.pos = pos2;
                this->actor.floorBgId = bgId2;
            }
        } else {
            // Only found one poly
            if (this->actor.floorPoly != poly1) {
                EnSw_GS_SetFloorPoly(this, poly1);
            }
            this->actor.world.pos = pos1;
            this->actor.floorBgId = bgId1;
        }
        foundPoly = true;
        // Didn't find poly, test another method
    } else {
        sp84 = sp78;
        for (i = 0; i < 3; i++) {
            if (i == 0) {
                sp78.x = sp84.x - (this->unk_37C.x * 24.0f);
                sp78.y = sp84.y - (this->unk_37C.y * 24.0f);
                sp78.z = sp84.z - (this->unk_37C.z * 24.0f);
            } else if (i == 1) {
                sp78.x = sp84.x + (this->unk_370.x * 24.0f);
                sp78.y = sp84.y + (this->unk_370.y * 24.0f);
                sp78.z = sp84.z + (this->unk_370.z * 24.0f);
            } else {
                sp78.x = sp84.x - (this->unk_370.x * 24.0f);
                sp78.y = sp84.y - (this->unk_370.y * 24.0f);
                sp78.z = sp84.z - (this->unk_370.z * 24.0f);
            }
            poly2 = EnSw_GS_FindSuitablePoly(play, &sp84, &sp78, &pos2, &bgId2);
            if (poly2 == NULL) {
                continue;
            }

            // Found a poly
            if (trueArg == 1) {
                EnSw_GS_SetFloorPoly(this, poly2);
                this->actor.world.pos = pos2;
                this->actor.floorBgId = bgId2;
            }
            foundPoly = true;
            break;
        }
    }

    Math_SmoothStepToS(&this->actor.shape.rot.x, this->actor.world.rot.x, 8, 0xFA0, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.world.rot.y, 8, 0xFA0, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->actor.world.rot.z, 8, 0xFA0, 1);

    return foundPoly;
}

void EnSw_Init(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;
    s32 phi_v0;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f }; // unused
    s32 pad;

    if (PARAMS_GET_NOSHIFT(thisx->params, 15, 1)) {
        phi_v0 = PARAMS_GET_S(thisx->params - 0x8000, 13, 3) + 1;
        thisx->params = PARAMS_GET_S(thisx->params, 0, 13) | (phi_v0 << 13);
    }

    if (ACTOR_ENSW_TYPE(thisx) > ENSW_SKULLWALLTULA) {
        phi_v0 = PARAMS_GET_S(thisx->params, 8, 5) - 1;
        thisx->params = (thisx->params & ~(31 << 8)) | (phi_v0 << 8);
    }

    // Check to see if this Gold Skulltula token has already been retrieved.
    if (GET_GS_FLAGS(ENSW_GS_AREA(thisx)) & ENSW_GS_ID(thisx)) {
        Actor_Kill(&this->actor);
        return;
    }

    SkelAnime_Init(play, &this->skelAnime, &object_st_Skel_005298, NULL, this->jointTable, this->morphTable, 30);
    Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENSW_ANIM_0);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(14), &sEnSwColliderInfo);
    this->actor.scale.x = 0.02f;

    if (ACTOR_ENSW_TYPE(thisx) == ENSW_SKULLWALLTULA) {
        this->actor.world.rot.x = 0;
        this->actor.world.rot.z = 0;
        thisx->shape.rot = this->actor.world.rot;
        this->bodyLineS.y = this->actor.world.pos.y;
        this->bodyLineS.x = this->actor.world.pos.x + (Math_SinS(this->actor.world.rot.y) * -60.0f);
        this->bodyLineS.z = this->actor.world.pos.z + (Math_CosS(this->actor.world.rot.y) * -60.0f);
        EnSw_S_SightCheck(this, play);
        this->actor.home.pos = this->actor.world.pos;
    } else {
        this->unk_370.x = Math_SinS(thisx->shape.rot.y + 0x4000);
        this->unk_370.y = 0.0f;
        this->unk_370.z = Math_CosS(thisx->shape.rot.y + 0x4000);
        this->unk_364.x = 0.0f;
        this->unk_364.y = 1.0f;
        this->unk_364.z = 0.0f;
        this->unk_37C.x = Math_SinS(thisx->shape.rot.y);
        this->unk_37C.y = 0.0f;
        this->unk_37C.z = Math_CosS(thisx->shape.rot.y);
        EnSw_GS_FindFloorPoly(this, play, true);
    }

    // Spawned Gold Skulltula, not spawned on scene init (soil patch, crate etc)
    if (ACTOR_ENSW_TYPE(thisx) >= ENSW_SOIL_GS) {
        SFX_PLAY_CENTERED(NA_SE_SY_CORRECT_CHIME);
    }

    switch (ACTOR_ENSW_TYPE(thisx)) {
        case ENSW_SOIL_GS: // Spawn from soil patch
        case ENSW_FLY_GS:  // Spawn from crate etc
            this->isAscendingGS = 1;
            this->actor.velocity.y = 8.0f;
            this->actor.speed = 4.0f;
            this->actor.gravity = -1.0f;
            FALLTHROUGH;
        case ENSW_NIGHT_GS: // Night only
            this->actor.scale.x = 0.0f;
            FALLTHROUGH;
        case ENSW_REGULAR_GS: // Regular
            this->collider.elements[0].base.atDmgInfo.damage *= 2;
            this->actor.naviEnemyId = NAVI_ENEMY_GOLD_SKULLTULA;
            this->actor.colChkInfo.health *= 2;
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            break;
        default: // Skullwalltula
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_ENEMY);
            this->actor.naviEnemyId = NAVI_ENEMY_SKULLWALLTULA;
            break;
    }

    this->breakTimerGS = Rand_S16Offset(15, 30); // Set for both Gold Skulltula and Skullwalltula, but only used by GS
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.home.pos = this->actor.world.pos;
    thisx->shape.rot = this->actor.world.rot;

    // Gold Skulltula from soil or crate
    if (ACTOR_ENSW_TYPE(thisx) >= ENSW_SOIL_GS) {
        this->rotateTimerGS = 40;
        this->deathTimer = 1;
        this->actionFunc = EnSw_ActionGS_SetupFly;
    } else if (ACTOR_ENSW_TYPE(thisx) == ENSW_SKULLWALLTULA) {
        this->actionFunc = EnSw_ActionS_Idle;
        // Regular and night Gold Skulltulas
    } else {
        this->actionFunc = EnSw_ActionGS_Idle;
    }
}

void EnSw_Destroy(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

/**
 * Gold Skulltula and Skullwalltula: Handle being AC hit and doing AT hit to player.
 * Start death process if fatal blow.
 * @return 1 if took damage/dead, else 0
 */
s32 EnSw_HandleDamage(EnSw* this, PlayState* play) {
    s32 hammerWave = false;

    // Hammer shockwave instakills Skullwalltula
    if (this->actor.xyzDistToPlayerSq < SQ(400.0f) && ENSW_TYPE(this) == ENSW_SKULLWALLTULA &&
        play->actorCtx.unk_02 != 0) {
        this->actor.colChkInfo.damage = this->actor.colChkInfo.health;
        hammerWave = true;
    }

    // Handle AC hit and hammer, if is able to take AC hit
    if (this->ACColliderTimer == 0) {
        if ((this->collider.base.acFlags & AC_HIT) || hammerWave) {
            this->collider.base.acFlags &= ~AC_HIT;
            this->ACColliderTimer = 16;
            Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_OPA,
                                 this->ACColliderTimer);
            if (Actor_ApplyDamage(&this->actor) != 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_STALTU_DAMAGE);
                return true;
            }
            Enemy_StartFinishingBlow(play, &this->actor);
            // Start Gold Skulltula death
            if (ENSW_TYPE(this) != ENSW_SKULLWALLTULA) {
                this->skelAnime.playSpeed = 8.0f;
                if ((play->state.frames & 1) == 0) {
                    this->rotationSpeedGS = 0.1f;
                } else {
                    this->rotationSpeedGS = -0.1f;
                }
                this->deathTimer = 10;
                this->staggerFallTimer = 1;
                this->rotationSpeedGS *= 4.0f; // Faster rotation when dying
                this->actionFunc = EnSw_ActionGS_Death;
                // Start Skullwalltula death
            } else {
                this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
                this->actor.shape.shadowAlpha = 255;
                this->staggerFallTimer = 2;
                this->actor.shape.shadowScale = 16.0f;
                this->actor.gravity = -1.0f;
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                this->actionFunc = EnSw_ActionS_Fall;
            }

            Actor_PlaySfx(&this->actor, NA_SE_EN_STALWALL_DEAD);
            return true;
        }
    }

    // If hurt player, set timer for setting AT collider
    if ((this->ATColliderTimer == 0) && (this->collider.base.atFlags & AT_HIT)) {
        this->ATColliderTimer = 30;
    }

    return false;
}

/**
 * Gold Skulltula and Skullwalltula: Set AT, AC and OC colliders.
 * AT and AC colliders have timers to prevent taking/dealing damage too rapidly. OC always active.
 */
void EnSw_SetColliders(EnSw* this, PlayState* play) {
    // No collider for Gold Skulltula that is not in idle action (i.e fly/death)
    if ((ENSW_TYPE(this) > ENSW_SKULLWALLTULA) && (this->actionFunc != EnSw_ActionGS_Idle)) {
        if (this->ACColliderTimer != 0) {
            this->ACColliderTimer--;
        }
    } else {
        // AT timer gets set to 30 on hitting player
        if ((DECR(this->ATColliderTimer) == 0) && (this->actor.colChkInfo.health != 0)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }

        // AC timer gets set to 16 on hit by player
        if ((DECR(this->ACColliderTimer) == 0) && (this->actor.colChkInfo.health != 0)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

/**
 * Gold Skulltula: Rotate the Gold Skulltula
 */
s32 EnSw_GS_Rotate(EnSw* this, f32* rotation) {
    CollisionPoly* floorPoly;
    f32 temp_f0;
    Vec3f floorPolyNormal;
    MtxF sp2C;

    // Not attached to ground/wall
    if (this->actor.floorPoly == NULL) {
        return false;
    }

    floorPoly = this->actor.floorPoly;
    floorPolyNormal.x = COLPOLY_GET_NORMAL(floorPoly->normal.x);
    floorPolyNormal.y = COLPOLY_GET_NORMAL(floorPoly->normal.y);
    floorPolyNormal.z = COLPOLY_GET_NORMAL(floorPoly->normal.z);
    Matrix_RotateAxis(*rotation, &floorPolyNormal, MTXMODE_NEW);
    Matrix_MultVec3f(&this->unk_370, &floorPolyNormal);
    this->unk_370 = floorPolyNormal;
    EnSw_CrossProduct(&this->unk_370, &this->unk_364, &this->unk_37C);
    temp_f0 = Math3D_Vec3fMagnitude(&this->unk_37C);
    if (temp_f0 < 0.001f) {
        return false;
    }
    temp_f0 = 1.0f / temp_f0;
    this->unk_37C.x *= temp_f0;
    this->unk_37C.y *= temp_f0;
    this->unk_37C.z *= temp_f0;
    sp2C.xx = this->unk_370.x;
    sp2C.yx = this->unk_370.y;
    sp2C.zx = this->unk_370.z;
    sp2C.wx = 0.0f;
    sp2C.xy = this->unk_364.x;
    sp2C.yy = this->unk_364.y;
    sp2C.zy = this->unk_364.z;
    sp2C.wy = 0.0f;
    sp2C.xz = this->unk_37C.x;
    sp2C.yz = this->unk_37C.y;
    sp2C.zz = this->unk_37C.z;
    sp2C.wz = 0.0f;
    sp2C.xw = 0.0f;
    sp2C.yw = 0.0f;
    sp2C.zw = 0.0f;
    sp2C.ww = 1.0f;
    Matrix_MtxFToYXZRotS(&sp2C, &this->actor.world.rot, 0);
    return true;
}

/**
 * Gold Skulltula: Play rotation sound.
 * (Only called by Gold Skulltula despite the type check)
 */
void EnSw_GS_RotateSound(EnSw* this, PlayState* play) {
    if (!(this->actor.scale.x < 0.0139999995f)) {
        Camera* activeCam = GET_ACTIVE_CAM(play);

        if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &activeCam->eye) >= 380.0f)) {
            Actor_PlaySfx(&this->actor,
                          (ENSW_TYPE(this) > ENSW_SKULLWALLTULA) ? NA_SE_EN_STALGOLD_ROLL : NA_SE_EN_STALWALL_ROLL);
        }
    }
}

/**
 * Gold Skulltula: Dust when digging up from soil
 */
void EnSw_GS_SpawnDigDust(EnSw* this, PlayState* play, s32 cnt) {
    Color_RGBA8 primColor = { 80, 80, 50, 255 };
    Color_RGBA8 envColor = { 100, 100, 80, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = (Rand_ZeroOne() - 0.5f) * 65536.0f;
    s32 i;

    for (i = cnt; i >= 0; i--, angle += (s16)(65536 / cnt)) {
        accel.x = (Rand_ZeroOne() - 0.5f) * 2.0f;
        accel.z = (Rand_ZeroOne() - 0.5f) * 2.0f;
        pos.x = this->actor.world.pos.x + (Math_SinS(angle) * 2.0f);
        pos.y = this->actor.world.pos.y;
        pos.z = this->actor.world.pos.z + (Math_CosS(angle) * 2.0f);
        func_8002836C(play, &pos, &velocity, &accel, &primColor, &envColor, 20, 30, 12);
    }
}

/**
 * Gold Skulltula: Dust when landing after flying after spawn
 */
void EnSw_GS_SpawnLandDust(EnSw* this, PlayState* play, s32 cnt) {
    Color_RGBA8 primColor = { 80, 80, 50, 255 };
    Color_RGBA8 envColor = { 100, 100, 80, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = (Rand_ZeroOne() - 0.5f) * 65536.0f;
    s32 i;

    for (i = cnt; i >= 0; i--, angle += (s16)(65536 / cnt)) {
        accel.x = (Rand_ZeroOne() - 0.5f) * 2.0f;
        accel.z = (Rand_ZeroOne() - 0.5f) * 2.0f;
        pos.x = this->actor.world.pos.x + (Math_SinS(angle) * 14.0f);
        pos.y = this->actor.world.pos.y;
        pos.z = this->actor.world.pos.z + (Math_CosS(angle) * 14.0f);
        func_8002836C(play, &pos, &velocity, &accel, &primColor, &envColor, 20, 40, 10);
    }
}

/**
 * Gold Skulltula: For newly spawned Gold Skulltula, prepare to fly.
 */
void EnSw_ActionGS_SetupFly(EnSw* this, PlayState* play) {
    // Crate etc
    if (ENSW_TYPE(this) == ENSW_FLY_GS) {
        this->rotateTimerGS = 0;
        this->actionFunc = EnSw_ActionGS_Fly;
        // Soil
    } else {
        this->rotateTimerGS = 10;
        this->actionFunc = EnSw_ActionGS_Fly;
    }
}

/**
 * Gold Skulltula: Flying newly spawned Gold Skulltula. Movement, setup idle when landed.
 * If soil: Play digging up effects before emerging.
 */
void EnSw_ActionGS_Fly(EnSw* this, PlayState* play) {
    // Soil skull has rotateTimerGS set to 10 - first, play digging up effects
    if (this->rotateTimerGS != 0) {
        if ((this->rotateTimerGS & 4) != 0) {
            EnSw_GS_SpawnDigDust(this, play, 5); // Spawn digging up dust
        }
        this->rotateTimerGS--;
        if (this->rotateTimerGS == 0) {
            // Digging itself up sounds
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EN_STALGOLD_UP_CRY);
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EN_DODO_M_UP);
        } else {
            return;
        }
    }

    // Flying movement
    Math_ApproachF(&this->actor.scale.x, 0.02f, 0.2f, 0.01f);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.world.pos.x += this->unk_364.x * this->actor.velocity.y;
    this->actor.world.pos.y += this->unk_364.y * this->actor.velocity.y;
    this->actor.world.pos.z += this->unk_364.z * this->actor.velocity.y;
    this->actor.world.pos.x += this->unk_37C.x * this->actor.speed;
    this->actor.world.pos.y += this->unk_37C.y * this->actor.speed;
    this->actor.world.pos.z += this->unk_37C.z * this->actor.speed;
    this->actor.velocity.y += this->actor.gravity;
    this->actor.velocity.y = CLAMP_MIN(this->actor.velocity.y, this->actor.minVelocityY);

    // Coming down
    if (this->actor.velocity.y < 0.0f) {
        this->isAscendingGS = 0;
    }

    // Landing
    if (EnSw_GS_FindFloorPoly(this, play, true) == 1) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND); // Hit ground sound
        EnSw_GS_SpawnLandDust(this, play, 8);
        this->actor.scale.x = 0.02f;
        Actor_SetScale(&this->actor, 0.02f);
        this->actionFunc = EnSw_ActionGS_Idle;
        this->actor.velocity.y = 0.0f; // Can't move once poly found
        this->actor.speed = 0.0f;
        this->actor.gravity = 0.0f;
    }
}

/**
 * Gold Skulltula: Idle. Manage rotation, play sound.
 * Handle day-night for night Gold Skulltulas.
 */
void EnSw_ActionGS_Idle(EnSw* this, PlayState* play) {
    f32 rotation;

    // If night Gold Skulltula, set scale and colliders depending on time of day
    if (ENSW_TYPE(this) == ENSW_NIGHT_GS) {
        if (this->actor.scale.x < 0.0139999995f) {
            this->collider.elements[0].base.atElemFlags = ATELEM_NONE;
            this->collider.elements[0].base.acElemFlags = ACELEM_NONE;
            this->collider.elements[0].base.ocElemFlags = OCELEM_NONE;
        }

        if (this->actor.scale.x >= 0.0139999995f) {
            this->collider.elements[0].base.atElemFlags = ATELEM_ON;
            this->collider.elements[0].base.acElemFlags = ACELEM_ON;
            this->collider.elements[0].base.ocElemFlags = OCELEM_ON;
        }

        Math_ApproachF(&this->actor.scale.x, !IS_DAY ? 0.02f : 0.0f, 0.2f, 0.01f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
    }

    // Gold Skulltula rotation break
    if (this->breakTimerGS != 0) {
        this->breakTimerGS--;
        if (this->breakTimerGS == 0) {
            // Restart rotation
            EnSw_GS_RotateSound(this, play);
            this->rotationSpeedGS = ((play->state.frames % 2) == 0) ? 0.1f : -0.1f;
            this->staggerFallTimer = 1;
            this->rotateTimerGS = Rand_S16Offset(30, 60);
            if (ENSW_TYPE(this) != ENSW_SKULLWALLTULA) {
                this->rotateTimerGS *= 2;
                this->rotationSpeedGS *= 2.0f;
            }
        }
        // Rotating
    } else {
        this->rotateTimerGS--;
        if (this->rotateTimerGS == 0) {
            // Take random length break from rotation
            this->breakTimerGS = Rand_S16Offset(15, 30);
            this->staggerFallTimer = 0;
            this->skelAnime.playSpeed = 0.0f;
            if (ENSW_TYPE(this) != ENSW_SKULLWALLTULA) {
                this->breakTimerGS /= 2;
            }
            // Stagger the rotation and play sound
        } else if (this->staggerFallTimer != 0) {
            this->staggerFallTimer--;
            this->skelAnime.playSpeed = (this->staggerFallTimer == 0) ? 4.0f : 0.0f;

            if (this->skelAnime.playSpeed > 0.0f) {
                EnSw_GS_RotateSound(this, play);
            }
            if (ENSW_TYPE(this) != ENSW_SKULLWALLTULA) {
                this->skelAnime.playSpeed *= 2.0f;
            }
        } else {
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame) == 1) {
                this->staggerFallTimer = 2;
            }
            rotation = 32768.0f / this->skelAnime.endFrame;
            rotation *= this->skelAnime.curFrame;
            rotation = Math_SinS(rotation) * this->rotationSpeedGS;
            EnSw_GS_Rotate(this, &rotation);
            this->actor.shape.rot = this->actor.world.rot;
        }
    }
}

/**
 * Gold Skulltula: Spawn death flame effects, then token, and finally kill the EnSw actor
 */
void EnSw_ActionGS_Death(EnSw* this, PlayState* play) {
    Actor* token;
    Vec3f pos;
    Vec3f velAndAccel = { 0.0f, 0.5f, 0.0f };
    f32 x;
    f32 y;
    f32 z;

    // Keep rotating and playing sound when dying
    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame) == 1) {
        EnSw_GS_RotateSound(this, play);
    }

    EnSw_GS_Rotate(this, &this->rotationSpeedGS);
    this->actor.shape.rot = this->actor.world.rot;

    // Spawn token and kill this actor
    if ((this->deathTimer == 0) && (this->ACColliderTimer == 0)) {
        SFX_PLAY_CENTERED(NA_SE_SY_KINSTA_MARK_APPEAR);
        x = (this->unk_364.x * 10.0f);
        y = (this->unk_364.y * 10.0f);
        z = (this->unk_364.z * 10.0f);
        token =
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_SI, this->actor.world.pos.x + x,
                               this->actor.world.pos.y + y, this->actor.world.pos.z + z, 0, 0, 0, this->actor.params);
        if (token != NULL) {
            token->parent = NULL;
        }
        Actor_Kill(&this->actor);
        return;
    }

    // Spawn Gold Skulltula death flame effects
    if ((this->ACColliderTimer == 0) && (DECR(this->deathTimer) != 0)) {
        pos = this->actor.world.pos;
        pos.y += 10.0f + ((Rand_ZeroOne() - 0.5f) * 6.0f);
        pos.x += (Rand_ZeroOne() - 0.5f) * 32.0f;
        pos.z += (Rand_ZeroOne() - 0.5f) * 32.0f;
        EffectSsDeadDb_Spawn(play, &pos, &velAndAccel, &velAndAccel, 42, 0, 255, 255, 255, 255, 255, 0, 0, 1, 9, true);
    }
}

/**
 * Skullwalltula: Falling before dying
 */
void EnSw_ActionS_Fall(EnSw* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);
    this->actor.shape.rot.x += 0x1000;
    this->actor.shape.rot.z += 0x1000;
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && !(0.0f <= this->actor.velocity.y)) {
        // Handle extreme Y
        if (this->actor.floorHeight <= BGCHECK_Y_MIN || this->actor.floorHeight >= 32000.0f) {
            Actor_Kill(&this->actor);
            return;
        }

        // Bounce
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND;

        if (this->staggerFallTimer == 0) {
            this->actionFunc = EnSw_ActionS_Death;
            this->deathTimer = 10;
        } else {
            this->actor.velocity.y = ((this->staggerFallTimer--) * 8.0f) * 0.5f;
        }

        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND); // Hit ground sound
        Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 16.0f, 12, 2.0f, 120, 10, false);
    }
}

/**
 * Skullwalltula: Spawn death flames and die
 */
void EnSw_ActionS_Death(EnSw* this, PlayState* play) {
    Vec3f velAndAccel = { 0.0f, 0.5f, 0.0f };
    Vec3f pos = { 0.0f, 0.0f, 0.0f };

    if (DECR(this->deathTimer) != 0) {
        pos.y = ((Rand_ZeroOne() - 0.5f) * 6.0f) + (this->actor.world.pos.y + 10.0f);
        pos.x = ((Rand_ZeroOne() - 0.5f) * 32.0f) + this->actor.world.pos.x;
        pos.z = ((Rand_ZeroOne() - 0.5f) * 32.0f) + this->actor.world.pos.z;
        EffectSsDeadDb_Spawn(play, &pos, &velAndAccel, &velAndAccel, 42, 0, 255, 255, 255, 255, 255, 0, 0, 1, 9, 1);
        this->actor.shape.rot.x += 0x1000;
        this->actor.shape.rot.z += 0x1000;
    } else {
        Item_DropCollectibleRandom(play, NULL, &this->actor.world.pos, 0x30);
        Actor_Kill(&this->actor);
    }
}

s16 EnSw_S_GetTargetAngle(EnSw* this, Vec3f* targetPos) {
    s16 pitch;
    s16 yaw;

    yaw = Math_Vec3f_Yaw(&this->actor.world.pos, targetPos) - this->actor.wallYaw;
    pitch = Math_Vec3f_Pitch(&this->actor.world.pos, targetPos) - 0x4000;
    return pitch * (yaw >= 0 ? -1 : 1);
}

/**
 * Skullwalltula: Check if can target player based on distance etc criteria
 * @param trueArg always 1
 * @return true if Skullwalltula can target player
 */
s32 EnSw_S_ShouldTarget(EnSw* this, PlayState* play, s32 trueArg) {
    Player* player = GET_PLAYER(play);
    CollisionPoly* outPoly;
    s32 bgId;
    Vec3f posResult;

    // Don't engage if player isn't climbing or is still, angle difference or distance too big
    if (!(player->stateFlags1 & PLAYER_STATE1_21) && trueArg) {
        return false;
    } else if (Player_IsClimbingStill(play) && trueArg) {
        return false;
    } else if (ABS(EnSw_S_GetTargetAngle(this, &player->actor.world.pos) - this->actor.shape.rot.z) >= 0x1FC2) {
        return false;
    } else if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &player->actor.world.pos) >= 130.0f) {
        return false;
        // Otherwise, if nothing between player and Skullwalltula - target
    } else if (!BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &player->actor.world.pos, &posResult,
                                        &outPoly, true, false, false, true, &bgId)) {
        return true;
    } else {
        return false;
    }
}

/**
 * Skullwalltula: Check if player is within sight using lines. Check one line per frame.
 * Also adjust position against wall.
 * @return true if in sight
 */
s32 EnSw_S_SightCheck(EnSw* this, PlayState* play) {
    s32 pad;
    CollisionPoly* outPoly;
    s32 bgId;
    Vec3f posResult;
    s32 result = true;

    if (this->collider.base.ocFlags1 & OC1_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        result = false;
    } else if (((play->state.frames % 4) == 0) &&
               !BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->sightLine1S, &posResult, &outPoly,
                                        true, false, false, true, &bgId)) {
        result = false;
    } else if (((play->state.frames % 4) == 1) &&
               BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->sightLine2S, &posResult, &outPoly,
                                       true, false, false, true, &bgId)) {
        result = false;
    } else if (((play->state.frames % 4) == 2) &&
               !BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->sightLine3S, &posResult, &outPoly,
                                        true, false, false, true, &bgId)) {
        if (0) {}
        result = false;
    } else if (((play->state.frames % 4) == 3) &&
               BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->sightLine4S, &posResult, &outPoly,
                                       true, false, false, true, &bgId)) {
        result = false;
    }

    // Adjust position against wall
    if (BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->bodyLineS, &posResult, &this->wallPolyS,
                                true, false, false, true, &bgId)) {
        this->actor.wallYaw = RAD_TO_BINANG(Math_FAtan2F(this->wallPolyS->normal.x, this->wallPolyS->normal.z));
        this->actor.world.pos = posResult;
        this->actor.world.pos.x += 6.0f * Math_SinS(this->actor.world.rot.y);
        this->actor.world.pos.z += 6.0f * Math_CosS(this->actor.world.rot.y);
        this->unused_434 = posResult;
        this->unused_434.x += Math_SinS(this->actor.world.rot.y);
        this->unused_434.z += Math_CosS(this->actor.world.rot.y);
    }

    return result;
}

/**
 * Skullwalltula: Move towards position (both attacking and retreating)
 */
void EnSw_S_Move(EnSw* this, Vec3f targetPos, f32 targetSpeed) {
    f32 xDist;
    f32 yDist;
    f32 zDist;
    f32 dist;
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;

    Math_SmoothStepToF(&this->actor.speed, targetSpeed, 0.3f, 100.0f, 0.1f);
    xDiff = targetPos.x - this->actor.world.pos.x;
    yDiff = targetPos.y - this->actor.world.pos.y;
    zDiff = targetPos.z - this->actor.world.pos.z;
    dist = sqrtf(SQ(xDiff) + SQ(yDiff) + SQ(zDiff));
    if (dist == 0.0f) {
        xDist = yDist = zDist = 0.0f;
    } else {
        xDist = xDiff / dist;
        yDist = yDiff / dist;
        zDist = zDiff / dist;
    }
    xDist *= this->actor.speed;
    yDist *= this->actor.speed;
    zDist *= this->actor.speed;
    this->actor.world.pos.x += xDist;
    this->actor.world.pos.y += yDist;
    this->actor.world.pos.z += zDist;
}

/**
 * Skullwalltula: Rotate and play sound. Used both in idle and as part of target/attack and retreat.
 * @param rotationSpeed always 6.0f
 * @return 1 if reached target angle
 */
s32 EnSw_S_Rotate(EnSw* this, f32 rotationSpeed, s16 angleStep, s32 idleRotate, PlayState* play) {
    Camera* activeCam;
    f32 lastFrame = Animation_GetLastFrame(&object_st_Anim_000304);

    // If in rotation break, reduce rotation and stop until break is over
    if (DECR(this->breakTimerS) != 0) {
        Math_SmoothStepToF(&this->skelAnime.playSpeed, 0.0f, 0.6f, 1000.0f, 0.01f);
        return 0;
    }

    Math_SmoothStepToF(&this->skelAnime.playSpeed, rotationSpeed, 0.6f, 1000.0f, 0.01f);

    // Only return early here if not rotating as part of targeting/attacking or retreating home
    if ((idleRotate == 1) && (lastFrame < (this->skelAnime.curFrame + this->skelAnime.playSpeed))) {
        return 0;
    }

    // Rotate
    activeCam = GET_ACTIVE_CAM(play);

    if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &activeCam->eye) < 380.0f) {
        if (DECR(this->soundTimerS) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_STALWALL_ROLL); // Rotation sound
            this->soundTimerS = 4;
        }
    } else {
        this->soundTimerS = 0;
    }

    Math_SmoothStepToS(&this->actor.shape.rot.z, this->targetAngleS, 4, angleStep, angleStep);
    this->actor.world.rot = this->actor.shape.rot;
    if (this->actor.shape.rot.z == this->targetAngleS) {
        return 1;
    }
    return 0;
}

/**
 * Skullwalltula: Idle. Manage rotation and check targeting.
 */
void EnSw_ActionS_Idle(EnSw* this, PlayState* play) {
    s32 pad[2];
    f32 rand;

    // Rotate. If reached target angle, set new target + rotation break timer
    if (EnSw_S_Rotate(this, 6.0f, 0x3E8, true, play)) {
        rand = Rand_ZeroOne();
        this->targetAngleS =
            ((s16)(20000.0f * rand) + 12000) * (Rand_ZeroOne() >= 0.5f ? 1.0f : -1.0f) + this->actor.world.rot.z;
        this->breakTimerS = Rand_S16Offset(10, 30);
    }

    // If not in engagement cooldown and player fulfills criteria for targeting, target
    if ((DECR(this->engageTimerS) == 0) && (EnSw_S_ShouldTarget(this, play, true))) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_STALWALL_LAUGH); // The targeting sound
        this->engageTimerS = 20;
        this->actionFunc = EnSw_ActionS_TargetAttack;
    }
}

/**
 * Skullwalltula: Targeting player (colored state), as well as attacking
 */
void EnSw_ActionS_TargetAttack(EnSw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;

    // If not time for attack yet, ensure player is still available for targeting
    // and adjust target position and angle
    if (DECR(this->engageTimerS) != 0) {
        if (EnSw_S_ShouldTarget(this, play, true)) {
            this->targetPosS = player->actor.world.pos;
            this->targetPosS.y += 30.0f;
            this->targetAngleS = EnSw_S_GetTargetAngle(this, &this->targetPosS);
            EnSw_S_Rotate(this, 6.0f, (u16)0xFA0, false, play);
        } else {
            this->actionFunc = EnSw_ActionS_Idle;
        }
        // Attacking
    } else {
        // If loses sight of player, stop pursuit and retreat
        if (!EnSw_S_SightCheck(this, play)) {
            this->engageTimerS = Rand_S16Offset(20, 10);
            this->targetAngleS = EnSw_S_GetTargetAngle(this, &this->actor.home.pos);
            this->targetPosS = this->actor.home.pos;
            this->actionFunc = EnSw_ActionS_Retreat;
            // Move quickly to attack
        } else {
            EnSw_S_Move(this, this->targetPosS, 8.0f);

            if (DECR(this->soundTimerS) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_STALWALL_DASH); // Attack sound
                this->soundTimerS = 4;
            }

            // Reached last set player target position, or player is not moving - stop
            if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &this->targetPosS) > 13.0f) ||
                Player_IsClimbingStill(play)) {
                this->actionFunc = EnSw_ActionS_StopMovement;
            }
        }
    }
}

/**
 * Skullwalltula: Decelerate and stop movement, prepare to return home (set new target position and angle)
 */
void EnSw_ActionS_StopMovement(EnSw* this, PlayState* play) {
    s32 pad;

    EnSw_S_Move(this, this->targetPosS, 0.0f);
    if (this->actor.speed == 0.0f) {
        this->targetAngleS = EnSw_S_GetTargetAngle(this, &this->actor.home.pos);
        this->targetPosS = this->actor.home.pos;
        this->actionFunc = EnSw_ActionS_Retreat;
    }
}

/**
 * Skullwalltula: Move to home position
 */
void EnSw_ActionS_Retreat(EnSw* this, PlayState* play) {
    s32 pad;

    if (EnSw_S_Rotate(this, 6.0f, 0x3E8, false, play)) {
        EnSw_S_Move(this, this->targetPosS, 2.0f);
        // Reached home
        if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &this->targetPosS) > 4.0f)) {
            this->actionFunc = EnSw_ActionS_Idle;
        }
    }
}

void EnSw_Update(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;

    SkelAnime_Update(&this->skelAnime);
    EnSw_HandleDamage(this, play);
    this->actionFunc(this, play);
    EnSw_SetColliders(this, play);
}

s32 EnSw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Vec3f sightLineVec1 = { 1400.0f, -2600.0f, -800.0f };
    Vec3f sightLineVec2 = { 1400.0f, -1600.0f, 0.0f };
    Vec3f sightLineVec3 = { -1400.0f, -2600.0f, -800.0f };
    Vec3f sightLineVec4 = { -1400.0f, -1600.0f, 0.0f };
    Vec3f bodyLineVec = { 0.0, 0.0f, -600.0f };
    EnSw* this = (EnSw*)thisx;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2084);

    if (ENSW_TYPE(this) != ENSW_SKULLWALLTULA) {
        switch (limbIndex) {
            case 23:
                *dList = object_st_DL_004788;
                break;
            case 8:
                *dList = object_st_DL_0046F0;
                break;
            case 14:
                *dList = object_st_DL_004658;
                break;
            case 11:
                *dList = object_st_DL_0045C0;
                break;
            case 26:
                *dList = object_st_DL_004820;
                break;
            case 20:
                *dList = object_st_DL_0048B8;
                break;
            case 17:
                *dList = object_st_DL_004950;
                break;
            case 29:
                *dList = object_st_DL_0049E8;
                break;
            case 5:
                *dList = object_st_DL_003FB0;
                break;
            case 4:
                *dList = object_st_DL_0043D8;
                break;
        }
    }

    // Update sightlines for Skullwalltula
    if (limbIndex == 1) {
        Matrix_MultVec3f(&sightLineVec1, &this->sightLine1S);
        Matrix_MultVec3f(&sightLineVec2, &this->sightLine2S);
        Matrix_MultVec3f(&sightLineVec3, &this->sightLine3S);
        Matrix_MultVec3f(&sightLineVec4, &this->sightLine4S);
        Matrix_MultVec3f(&bodyLineVec, &this->bodyLineS);
    }

    if (limbIndex == 5) {
        Matrix_MultVec3f(&zeroVec, &this->actor.focus.pos);
    }

    // The color is not set, but works fine if set.
    if (limbIndex == 4) {
        gDPSetEnvColor(POLY_OPA_DISP++, this->teethColor.r, this->teethColor.g, this->teethColor.b, 0);
    }

    Collider_UpdateSpheres(limbIndex, &this->collider);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2145);

    return false;
}

void EnSw_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
}

/**
 * Skullwalltula: Set angry color (targeting and attack state)
 * arg2 = 20, arg3 = 30
 */
void EnSw_S_SetColor(PlayState* play, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 far;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2181);

    far = (11500.0f / arg3) * (arg3 - arg2);

    if (0.0f == far) {
        far = 11500;
    }

    POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP, color->r, color->g, color->b, color->a, 0, (s16)far);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2197);
}

/**
 * Skullwalltula: Set angry fog effect (targeting and attack state)
 */
void EnSw_S_SetFog(PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2205);

    POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2207);
}

void EnSw_Draw(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;
    Color_RGBA8 angryColor = { 184, 0, 228, 255 };

    if (ENSW_TYPE(this) != ENSW_SKULLWALLTULA) {
        Matrix_RotateX(DEG_TO_RAD(-80), MTXMODE_APPLY);
        if (this->actor.colChkInfo.health != 0) {
            Matrix_Translate(0.0f, 0.0f, 200.0f, MTXMODE_APPLY);
        }
        func_8002EBCC(&this->actor, play, 0);
    } else if (this->actionFunc == EnSw_ActionS_TargetAttack) {
        EnSw_S_SetColor(play, &angryColor, 20, 30);
    }

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnSw_OverrideLimbDraw,
                      EnSw_PostLimbDraw, this);
    if (this->actionFunc == EnSw_ActionS_TargetAttack) {
        EnSw_S_SetFog(play);
    }
}
