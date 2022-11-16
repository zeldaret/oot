/*
 * File: z_en_horse_zelda.c
 * Overlay: ovl_En_Horse_Zelda
 * Description: Zelda's Horse
 */

#include "z_en_horse_zelda.h"
#include "assets/objects/object_horse_zelda/object_horse_zelda.h"

#define FLAGS ACTOR_FLAG_4

void EnHorseZelda_Init(Actor* thisx, PlayState* play);
void EnHorseZelda_Destroy(Actor* thisx, PlayState* play);
void EnHorseZelda_Update(Actor* thisx, PlayState* play);
void EnHorseZelda_Draw(Actor* thisx, PlayState* play);

void EnHorseZelda_Stop(EnHorseZelda* this, PlayState* play);
void EnHorseZelda_Gallop(EnHorseZelda* this, PlayState* play);
void EnHorseZelda_SetupStop(EnHorseZelda* this);

ActorInit En_Horse_Zelda_InitVars = {
    ACTOR_EN_HORSE_ZELDA,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HORSE_ZELDA,
    sizeof(EnHorseZelda),
    (ActorFunc)EnHorseZelda_Init,
    (ActorFunc)EnHorseZelda_Destroy,
    (ActorFunc)EnHorseZelda_Update,
    (ActorFunc)EnHorseZelda_Draw,
};

static AnimationHeader* sAnimationHeaders[] = { &gHorseZeldaGallopingAnim };

static f32 splaySpeeds[] = { 2.0f / 3.0f };

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 40, 100, 0, { 0, 0, 0 } },
};

static ColliderJntSphElementInit sJntSphElementsInit[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 10, 35, 100, MASS_HEAVY };

typedef struct {
    /* 0x0 */ Vec3s pos;
    /* 0x6 */ u8 speed;
} HorsePosSpeed; // size = 0x8

// these seem to be valid coords on Hyrule field, along with target speeds
static HorsePosSpeed sHorseFieldPositions[] = {
    { { -1682, -500, 12578 }, 7 }, { { -3288, -500, 13013 }, 7 }, { { -5142, -417, 11630 }, 7 },
    { { -5794, -473, 9573 }, 7 },  { { -6765, -500, 8364 }, 7 },  { { -6619, -393, 6919 }, 7 },
    { { -5193, 124, 5433 }, 7 },   { { -2970, 2, 4537 }, 7 },     { { -2949, -35, 4527 }, 7 },
    { { -1907, -47, 2978 }, 7 },   { { 2488, 294, 3628 }, 7 },    { { 3089, 378, 4713 }, 7 },
    { { 1614, -261, 7596 }, 7 },   { { 754, -187, 9295 }, 7 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1200, ICHAIN_STOP),
};

static EnHorseZeldaActionFunc sActionFuncs[] = {
    EnHorseZelda_Stop,
    EnHorseZelda_Gallop,
};

void EnHorseZelda_GetFieldPosition(HorsePosSpeed* data, s32 index, Vec3f* fieldPos) {
    fieldPos->x = data[index].pos.x;
    fieldPos->y = data[index].pos.y;
    fieldPos->z = data[index].pos.z;
}

void EnHorseZelda_Move(EnHorseZelda* this, PlayState* play) {
    s32 pad;
    Vec3f fieldPos;
    s16 yawDiff;

    EnHorseZelda_GetFieldPosition(sHorseFieldPositions, this->fieldPosIndex, &fieldPos);
    if (Math3D_Vec3f_DistXYZ(&fieldPos, &this->actor.world.pos) <= 400.0f) {
        this->fieldPosIndex++;
        if (this->fieldPosIndex >= ARRAY_COUNT(sHorseFieldPositions)) {
            this->fieldPosIndex = 0;
            EnHorseZelda_GetFieldPosition(sHorseFieldPositions, 0, &fieldPos);
        }
    }
    yawDiff = Math_Vec3f_Yaw(&this->actor.world.pos, &fieldPos) - this->actor.world.rot.y;
    if (yawDiff > 300) {
        this->actor.world.rot.y += 300;
    } else if (yawDiff < -300) {
        this->actor.world.rot.y -= 300;
    } else {
        this->actor.world.rot.y += yawDiff;
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;

    if (Actor_WorldDistXZToActor(&this->actor, &GET_PLAYER(play)->actor) <= 300.0f) {
        if (this->actor.speedXZ < 12.0f) {
            this->actor.speedXZ += 1.0f;
        } else {
            this->actor.speedXZ -= 1.0f;
        }
    } else if (this->actor.speedXZ < sHorseFieldPositions[this->fieldPosIndex].speed) {
        this->actor.speedXZ += 0.5f;
    } else {
        this->actor.speedXZ -= 0.5f;
    }
}

void EnHorseZelda_Init(Actor* thisx, PlayState* play) {
    EnHorseZelda* this = (EnHorseZelda*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.0115f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawHorse, 20.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.focus.pos = this->actor.world.pos;
    this->action = 0;
    this->actor.focus.pos.y += 70.0f;
    Skin_Init(play, &this->skin, &gHorseZeldaSkel, &gHorseZeldaGallopingAnim);
    this->animationIndex = 0;
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[0]);
    Collider_InitCylinder(play, &this->colliderCylinder);
    Collider_SetCylinderType1(play, &this->colliderCylinder, &this->actor, &sCylinderInit);
    Collider_InitJntSph(play, &this->colliderSphere);
    Collider_SetJntSph(play, &this->colliderSphere, &this->actor, &sJntSphInit, &this->colliderSphereItem);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    this->animationIndex = 0;
    EnHorseZelda_SetupStop(this);
}

void EnHorseZelda_Destroy(Actor* thisx, PlayState* play) {
    EnHorseZelda* this = (EnHorseZelda*)thisx;

    Collider_DestroyCylinder(play, &this->colliderCylinder);
    Collider_DestroyJntSph(play, &this->colliderSphere);
    Skin_Free(play, &this->skin);
}

void EnHorseZelda_SetupStop(EnHorseZelda* this) {
    this->action = 0;
    this->animationIndex++;
    if (this->animationIndex > 0) {
        this->animationIndex = 0;
    }
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->animationIndex]);
}

void EnHorseZelda_Stop(EnHorseZelda* this, PlayState* play) {
    this->actor.speedXZ = 0.0f;
    if (SkelAnime_Update(&this->skin.skelAnime)) {
        EnHorseZelda_SetupStop(this);
    }
}

void EnHorseZelda_Spur(EnHorseZelda* this) {
    f32 speedMod;

    this->action = 1;
    this->animationIndex = 0;
    speedMod = this->actor.speedXZ / 6.0f;
    Audio_PlaySfxGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->animationIndex],
                     splaySpeeds[this->animationIndex] * speedMod * 1.5f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->animationIndex]), ANIMMODE_ONCE, 0.0f);
}

void EnHorseZelda_Gallop(EnHorseZelda* this, PlayState* play) {
    EnHorseZelda_Move(this, play);
    if (SkelAnime_Update(&this->skin.skelAnime)) {
        EnHorseZelda_Spur(this);
    }
}

void EnHorseZelda_SetRotate(EnHorseZelda* this, PlayState* play) {
    s32 pad;
    CollisionPoly* poly;
    s32 pad2;
    Vec3f checkPos;
    s32 bgId;

    checkPos.x = (Math_SinS(this->actor.shape.rot.y) * 30.0f) + this->actor.world.pos.x;
    checkPos.y = this->actor.world.pos.y + 60.0f;
    checkPos.z = (Math_CosS(this->actor.shape.rot.y) * 30.0f) + this->actor.world.pos.z;
    this->floorYForwards = BgCheck_EntityRaycastDown3(&play->colCtx, &poly, &bgId, &checkPos);
    this->actor.shape.rot.x = RAD_TO_BINANG(Math_FAtan2F(this->actor.world.pos.y - this->floorYForwards, 30.0f));
}

void EnHorseZelda_Update(Actor* thisx, PlayState* play) {
    EnHorseZelda* this = (EnHorseZelda*)thisx;
    s32 pad;

    sActionFuncs[this->action](this, play);
    this->actor.speedXZ = 0.0f;
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 55.0f, 100.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 70.0f;
    Collider_UpdateCylinder(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliderCylinder.base);
}

void EnHorseZelda_PostDraw(Actor* thisx, PlayState* play, Skin* skin) {
    Vec3f offset;
    Vec3f dst;
    EnHorseZelda* this = (EnHorseZelda*)thisx;
    s32 i;

    for (i = 0; i < this->colliderSphere.count; i++) {
        offset.x = this->colliderSphere.elements[i].dim.modelSphere.center.x;
        offset.y = this->colliderSphere.elements[i].dim.modelSphere.center.y;
        offset.z = this->colliderSphere.elements[i].dim.modelSphere.center.z;

        Skin_GetLimbPos(skin, this->colliderSphere.elements[i].dim.limb, &offset, &dst);

        this->colliderSphere.elements[i].dim.worldSphere.center.x = dst.x;
        this->colliderSphere.elements[i].dim.worldSphere.center.y = dst.y;
        this->colliderSphere.elements[i].dim.worldSphere.center.z = dst.z;

        this->colliderSphere.elements[i].dim.worldSphere.radius =
            this->colliderSphere.elements[i].dim.modelSphere.radius * this->colliderSphere.elements[i].dim.scale;
    }

    //! @bug see relevant comment in `EnHorse_SkinCallback1`
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliderSphere.base);
}

void EnHorseZelda_Draw(Actor* thisx, PlayState* play) {
    EnHorseZelda* this = (EnHorseZelda*)thisx;

    EnHorseZelda_SetRotate(this, play);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    func_800A6330(&this->actor, play, &this->skin, EnHorseZelda_PostDraw, true);
}
