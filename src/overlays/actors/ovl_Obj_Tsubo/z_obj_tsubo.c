/*
 * File: z_obj_tsubo.c
 * Overlay: ovl_Obj_Tsubo
 * Description: Breakable pot
 */

#include "z_obj_tsubo.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"
#include "assets/objects/object_tsubo/object_tsubo.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_THROW_ONLY)

void ObjTsubo_Init(Actor* thisx, PlayState* play);
void ObjTsubo_Destroy(Actor* thisx, PlayState* play2);
void ObjTsubo_Update(Actor* thisx, PlayState* play);
void ObjTsubo_Draw(Actor* thisx, PlayState* play);

void ObjTsubo_SpawnCollectible(ObjTsubo* this, PlayState* play);
void ObjTsubo_ApplyGravity(ObjTsubo* this);
s32 ObjTsubo_SnapToFloor(ObjTsubo* this, PlayState* play);
void ObjTsubo_InitCollider(Actor* thisx, PlayState* play);
void ObjTsubo_AirBreak(ObjTsubo* this, PlayState* play);
void ObjTsubo_WaterBreak(ObjTsubo* this, PlayState* play);
void ObjTsubo_SetupWaitForObject(ObjTsubo* this);
void ObjTsubo_WaitForObject(ObjTsubo* this, PlayState* play);
void ObjTsubo_SetupIdle(ObjTsubo* this);
void ObjTsubo_Idle(ObjTsubo* this, PlayState* play);
void ObjTsubo_SetupLiftedUp(ObjTsubo* this);
void ObjTsubo_LiftedUp(ObjTsubo* this, PlayState* play);
void ObjTsubo_SetupThrown(ObjTsubo* this);
void ObjTsubo_Thrown(ObjTsubo* this, PlayState* play);

static s16 D_80BA1B50 = 0;
static s16 D_80BA1B54 = 0;
static s16 D_80BA1B58 = 0;
static s16 D_80BA1B5C = 0;

ActorProfile Obj_Tsubo_Profile = {
    /**/ ACTOR_OBJ_TSUBO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(ObjTsubo),
    /**/ ObjTsubo_Init,
    /**/ ObjTsubo_Destroy,
    /**/ ObjTsubo_Update,
    /**/ NULL,
};

static s16 sObjectIds[] = { OBJECT_GAMEPLAY_DANGEON_KEEP, OBJECT_TSUBO };

static Gfx* D_80BA1B84[] = { gPotDL, object_tsubo_DL_0017C0 };

static Gfx* D_80BA1B8C[] = { gPotFragmentDL, object_tsubo_DL_001960 };

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HARD,
        AT_ON | AT_TYPE_PLAYER,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000002, 0x00, 0x01 },
        { 0x4FC1FFFE, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 9, 26, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit[] = { 0, 12, 60, MASS_IMMOVABLE };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32_DIV1000(gravity, -1200, ICHAIN_CONTINUE),  ICHAIN_F32_DIV1000(minVelocityY, -20000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 150, ICHAIN_CONTINUE),    ICHAIN_F32(cullingVolumeDistance, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 100, ICHAIN_CONTINUE), ICHAIN_F32(cullingVolumeDownward, 800, ICHAIN_STOP),
};

void ObjTsubo_SpawnCollectible(ObjTsubo* this, PlayState* play) {
    s16 dropParams = PARAMS_GET_U(this->actor.params, 0, 5);

    if ((dropParams >= 0) && (dropParams < ITEM00_MAX)) {
        Item_DropCollectible(play, &this->actor.world.pos, dropParams | (PARAMS_GET_U(this->actor.params, 9, 6) << 8));
    }
}

void ObjTsubo_ApplyGravity(ObjTsubo* this) {
    this->actor.velocity.y += this->actor.gravity;
    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

s32 ObjTsubo_SnapToFloor(ObjTsubo* this, PlayState* play) {
    CollisionPoly* groundPoly;
    Vec3f pos;
    s32 bgId;
    f32 groundY;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y + 20.0f;
    pos.z = this->actor.world.pos.z;
    groundY = BgCheck_EntityRaycastDown4(&play->colCtx, &groundPoly, &bgId, &this->actor, &pos);
    if (groundY > BGCHECK_Y_MIN) {
        this->actor.world.pos.y = groundY;
        Math_Vec3f_Copy(&this->actor.home.pos, &this->actor.world.pos);
        return true;
    } else {
        PRINTF("地面に付着失敗\n");
        return false;
    }
}

void ObjTsubo_InitCollider(Actor* thisx, PlayState* play) {
    ObjTsubo* this = (ObjTsubo*)thisx;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    Collider_UpdateCylinder(&this->actor, &this->collider);
}

void ObjTsubo_Init(Actor* thisx, PlayState* play) {
    ObjTsubo* this = (ObjTsubo*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ObjTsubo_InitCollider(&this->actor, play);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, sColChkInfoInit);
    if (!ObjTsubo_SnapToFloor(this, play)) {
        Actor_Kill(&this->actor);
        return;
    }
    this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, sObjectIds[PARAMS_GET_U(this->actor.params, 8, 1)]);
    if (this->requiredObjectSlot < 0) {
        PRINTF("Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n", this->actor.params, "../z_obj_tsubo.c", 410);
        Actor_Kill(&this->actor);
    } else {
        ObjTsubo_SetupWaitForObject(this);
        PRINTF("(dungeon keep 壷)(arg_data 0x%04x)\n", this->actor.params);
    }
}

void ObjTsubo_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    ObjTsubo* this = (ObjTsubo*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void ObjTsubo_AirBreak(ObjTsubo* this, PlayState* play) {
    s32 pad;
    f32 rand;
    s16 angle;
    Vec3f pos;
    Vec3f velocity;
    f32 sins;
    f32 coss;
    s32 arg5;
    s32 i;

    for (i = 0, angle = 0; i < 15; i++, angle += 0x4E20) {
        sins = Math_SinS(angle);
        coss = Math_CosS(angle);
        pos.x = sins * 8.0f;
        pos.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        pos.z = coss * 8.0f;
        velocity.x = pos.x * 0.23f;
        velocity.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        velocity.z = pos.z * 0.23f;
        Math_Vec3f_Sum(&pos, &this->actor.world.pos, &pos);
        rand = Rand_ZeroOne();
        if (rand < 0.2f) {
            arg5 = 96;
        } else if (rand < 0.6f) {
            arg5 = 64;
        } else {
            arg5 = 32;
        }
        EffectSsKakera_Spawn(play, &pos, &velocity, &this->actor.world.pos, -240, arg5, 10, 10, 0,
                             (Rand_ZeroOne() * 95.0f) + 15.0f, 0, 32, 60, KAKERA_COLOR_NONE,
                             sObjectIds[PARAMS_GET_U(this->actor.params, 8, 1)],
                             D_80BA1B8C[PARAMS_GET_U(this->actor.params, 8, 1)]);
    }
    func_80033480(play, &this->actor.world.pos, 30.0f, 4, 20, 50, 1);
}

void ObjTsubo_WaterBreak(ObjTsubo* this, PlayState* play) {
    s32 pad[2];
    s16 angle;
    Vec3f pos = this->actor.world.pos;
    Vec3f velocity;
    s32 phi_s0;
    s32 i;

    pos.y += this->actor.depthInWater;
    EffectSsGSplash_Spawn(play, &pos, NULL, NULL, 0, 400);
    for (i = 0, angle = 0; i < 15; i++, angle += 0x4E20) {
        f32 sins = Math_SinS(angle);
        f32 coss = Math_CosS(angle);

        pos.x = sins * 8.0f;
        pos.y = (Rand_ZeroOne() * 5.0f) + 2.0f;
        pos.z = coss * 8.0f;
        velocity.x = pos.x * 0.2f;
        velocity.y = (Rand_ZeroOne() * 4.0f) + 2.0f;
        velocity.z = pos.z * 0.2f;
        Math_Vec3f_Sum(&pos, &this->actor.world.pos, &pos);
        phi_s0 = (Rand_ZeroOne() < .2f) ? 64 : 32;
        EffectSsKakera_Spawn(play, &pos, &velocity, &this->actor.world.pos, -180, phi_s0, 30, 30, 0,
                             (Rand_ZeroOne() * 95.0f) + 15.0f, 0, 32, 70, KAKERA_COLOR_NONE,
                             sObjectIds[PARAMS_GET_U(this->actor.params, 8, 1)],
                             D_80BA1B8C[PARAMS_GET_U(this->actor.params, 8, 1)]);
    }
}

void ObjTsubo_SetupWaitForObject(ObjTsubo* this) {
    this->actionFunc = ObjTsubo_WaitForObject;
}

void ObjTsubo_WaitForObject(ObjTsubo* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->actor.draw = ObjTsubo_Draw;
        this->actor.objectSlot = this->requiredObjectSlot;
        ObjTsubo_SetupIdle(this);
        this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    }
}

void ObjTsubo_SetupIdle(ObjTsubo* this) {
    this->actionFunc = ObjTsubo_Idle;
}

void ObjTsubo_Idle(ObjTsubo* this, PlayState* play) {
    s32 pad;
    s16 temp_v0;
    s32 phi_v1;

    if (Actor_HasParent(&this->actor, play)) {
        ObjTsubo_SetupLiftedUp(this);
    } else if ((this->actor.bgCheckFlags & BGCHECKFLAG_WATER) && (this->actor.depthInWater > 15.0f)) {
        ObjTsubo_WaterBreak(this, play);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_POT_BROKEN);
        ObjTsubo_SpawnCollectible(this, play);
        Actor_Kill(&this->actor);
    } else if ((this->collider.base.acFlags & AC_HIT) &&
               (this->collider.elem.acHitElem->atDmgInfo.dmgFlags &
                (DMG_SWORD | DMG_RANGED | DMG_HAMMER | DMG_BOOMERANG | DMG_EXPLOSIVE))) {
        ObjTsubo_AirBreak(this, play);
        ObjTsubo_SpawnCollectible(this, play);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_POT_BROKEN);
        Actor_Kill(&this->actor);
    } else {
        if (this->actor.xzDistToPlayer < 600.0f) {
            Collider_UpdateCylinder(&this->actor, &this->collider);
            this->collider.base.acFlags &= ~AC_HIT;
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
            if (this->actor.xzDistToPlayer < 150.0f) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
            }
        }
        if (this->actor.xzDistToPlayer < 100.0f) {
            temp_v0 = this->actor.yawTowardsPlayer - GET_PLAYER(play)->actor.world.rot.y;
            phi_v1 = ABS(temp_v0);
            if (phi_v1 >= 0x5556) {
                // GI_NONE in this case allows the player to lift the actor
                Actor_OfferGetItem(&this->actor, play, GI_NONE, 30.0f, 30.0f);
            }
        }
    }
}

void ObjTsubo_SetupLiftedUp(ObjTsubo* this) {
    this->actionFunc = ObjTsubo_LiftedUp;
    this->actor.room = -1;
    //! @bug: This is an unsafe cast, although the sound effect will still play
    Player_PlaySfx((Player*)&this->actor, NA_SE_PL_PULL_UP_POT);
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
}

void ObjTsubo_LiftedUp(ObjTsubo* this, PlayState* play) {
    if (Actor_HasNoParent(&this->actor, play)) {
        this->actor.room = play->roomCtx.curRoom.num;
        ObjTsubo_SetupThrown(this);
        ObjTsubo_ApplyGravity(this);
        Actor_UpdatePos(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 15.0f, 0.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_7);
    }
}

void ObjTsubo_SetupThrown(ObjTsubo* this) {
    this->actor.velocity.x = Math_SinS(this->actor.world.rot.y) * this->actor.speed;
    this->actor.velocity.z = Math_CosS(this->actor.world.rot.y) * this->actor.speed;
    this->actor.colChkInfo.mass = 240;
    D_80BA1B50 = (Rand_ZeroOne() - 0.7f) * 2800.0f;
    D_80BA1B58 = (Rand_ZeroOne() - 0.5f) * 2000.0f;
    D_80BA1B54 = 0;
    D_80BA1B5C = 0;
    this->actionFunc = ObjTsubo_Thrown;
}

void ObjTsubo_Thrown(ObjTsubo* this, PlayState* play) {
    s32 pad[2];

    if ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH | BGCHECKFLAG_WALL)) ||
        (this->collider.base.atFlags & AT_HIT)) {
        ObjTsubo_AirBreak(this, play);
        ObjTsubo_SpawnCollectible(this, play);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_POT_BROKEN);
        Actor_Kill(&this->actor);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH) {
        ObjTsubo_WaterBreak(this, play);
        ObjTsubo_SpawnCollectible(this, play);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EV_POT_BROKEN);
        Actor_Kill(&this->actor);
    } else {
        ObjTsubo_ApplyGravity(this);
        Actor_UpdatePos(&this->actor);
        Math_StepToS(&D_80BA1B54, D_80BA1B50, 0x64);
        Math_StepToS(&D_80BA1B5C, D_80BA1B58, 0x64);
        this->actor.shape.rot.x += D_80BA1B54;
        this->actor.shape.rot.y += D_80BA1B5C;
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 15.0f, 0.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_7);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
}

void ObjTsubo_Update(Actor* thisx, PlayState* play) {
    ObjTsubo* this = (ObjTsubo*)thisx;

    this->actionFunc(this, play);
}

void ObjTsubo_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, D_80BA1B84[PARAMS_GET_U(thisx->params, 8, 1)]);
}
