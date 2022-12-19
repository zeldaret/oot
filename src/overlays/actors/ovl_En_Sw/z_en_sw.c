/*
 * File: z_en_sw.c
 * Overlay: ovl_En_Sw
 * Description: SkullWalltula and Gold Skulltula
 */

#include "z_en_sw.h"
#include "assets/objects/object_st/object_st.h"


#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_2 | ACTOR_FLAG_4)

void EnSw_Init(Actor* thisx, PlayState* play);
void EnSw_Destroy(Actor* thisx, PlayState* play);
void EnSw_Update(Actor* thisx, PlayState* play);
void EnSw_Draw(Actor* thisx, PlayState* play);
s32 EnSW_LineTestWall(EnSw* this, PlayState* play);
void EnSw_SetupGoldHidden(EnSw* this, PlayState* play);
void EnSw_SetupNormal(EnSw* this, PlayState* play);
void EnSw_Crawl(EnSw* this, PlayState* play);
void EnSw_SetupGoHome(EnSw* this, PlayState* play);
void EnSw_GoHome(EnSw* this, PlayState* play);
void EnSw_Dash(EnSw* this, PlayState* play);
void EnSw_DieNormal(EnSw* this, PlayState* play);
s32 EnSw_GoldClingToWall(EnSw* this, PlayState* play, s32);
void EnSw_GoldHiddenReveal(EnSw* this, PlayState* play);
void EnSw_FallNormal(EnSw* this, PlayState* play);
void EnSw_DieGold(EnSw* this, PlayState* play);

ActorInit En_Sw_InitVars = {
    ACTOR_EN_SW,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_ST,
    sizeof(EnSw),
    (ActorFunc)EnSw_Init,
    (ActorFunc)EnSw_Destroy,
    (ActorFunc)EnSw_Update,
    (ActorFunc)EnSw_Draw,
};

static ColliderJntSphElementInit sJntSphItemsInit[1] = {
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFC3FFFE, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
        { 2, { { 0, -300, 0 }, 21 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_HIT6, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static CollisionCheckInfoInit2 D_80B0F074 = { 1, 2, 25, 25, MASS_IMMOVABLE };

typedef enum {
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

s32 EnSw_ClingToWall(EnSw* this, CollisionPoly* poly) {
    Vec3f polyNormal;
    Vec3f sp38;
    f32 dot;
    f32 length;
    s32 pad;

    this->actor.floorPoly = poly;
    polyNormal.x = COLPOLY_GET_NORMAL(poly->normal.x);
    polyNormal.y = COLPOLY_GET_NORMAL(poly->normal.y);
    polyNormal.z = COLPOLY_GET_NORMAL(poly->normal.z);
    dot = Math_FAcosF(DOTXYZ(polyNormal, this->wallPolyNormal));
    EnSw_CrossProduct(&this->wallPolyNormal, &polyNormal, &sp38);
    Matrix_RotateAxis(dot, &sp38, MTXMODE_NEW);
    Matrix_MultVec3f(&this->unk_370, &sp38);
    this->unk_370 = sp38;
    EnSw_CrossProduct(&this->unk_370, &polyNormal, &this->unk_37C);
    length = Math3D_Vec3fMagnitude(&this->unk_37C);
    if (length < 0.001f) {
        return 0;
    }
    this->unk_37C.x *= (1.0f / length);
    this->unk_37C.y *= (1.0f / length);
    this->unk_37C.z *= (1.0f / length);
    this->wallPolyNormal = polyNormal;
    this->unk_3D8.xx = this->unk_370.x;
    this->unk_3D8.yx = this->unk_370.y;
    this->unk_3D8.zx = this->unk_370.z;
    this->unk_3D8.wx = 0.0f;
    this->unk_3D8.xy = this->wallPolyNormal.x;
    this->unk_3D8.yy = this->wallPolyNormal.y;
    this->unk_3D8.zy = this->wallPolyNormal.z;
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
    //! @bug: Does not return.
}

CollisionPoly* EnSw_GetPoly(PlayState* play, Vec3f* posA, Vec3f* posB, Vec3f* posOut, s32* bgId) {
    CollisionPoly* poly;
    s32 pad;

    if (!BgCheck_EntityLineTest1(&play->colCtx, posA, posB, posOut, &poly, true, true, true, false, bgId)) {
        return NULL;
    }

    if (SurfaceType_GetWallFlags(&play->colCtx, poly, *bgId) & WALL_FLAG_CRAWLSPACE) {
        return NULL;
    }

    if (SurfaceType_IsIgnoredByProjectiles(&play->colCtx, poly, *bgId)) {
        return NULL;
    }

    return poly;
}

s32 EnSw_GoldClingToWall(EnSw* this, PlayState* play, s32 arg2) {
    CollisionPoly* temp_v0_2;
    CollisionPoly* temp_s1;
    Vec3f sp9C;
    Vec3f posOut;
    Vec3f posA;
    Vec3f posB;
    s32 pad;
    s32 bgId;
    s32 sp6C;
    s32 phi_s1;
    s32 ret;

    ret = 0;
    this->unk_42C = 1;
    posA = posB = this->actor.world.pos;
    posA.x += this->wallPolyNormal.x * 18.0f;
    posA.y += this->wallPolyNormal.y * 18.0f;
    posA.z += this->wallPolyNormal.z * 18.0f;
    posB.x -= this->wallPolyNormal.x * 18.0f;
    posB.y -= this->wallPolyNormal.y * 18.0f;
    posB.z -= this->wallPolyNormal.z * 18.0f;
    temp_s1 = EnSw_GetPoly(play, &posA, &posB, &posOut, &bgId);

    if ((temp_s1 != NULL) && (this->goldHiddenBool == 0)) {
        posB.x = posA.x + (this->unk_37C.x * 24);
        posB.y = posA.y + (this->unk_37C.y * 24);
        posB.z = posA.z + (this->unk_37C.z * 24);
        temp_v0_2 = EnSw_GetPoly(play, &posA, &posB, &sp9C, &sp6C);
        if (temp_v0_2 != NULL) {
            if (arg2 == 1) {
                EnSw_ClingToWall(this, temp_v0_2);
                this->actor.world.pos = sp9C;
                this->actor.floorBgId = sp6C;
            }
        } else {
            if (this->actor.floorPoly != temp_s1) {
                EnSw_ClingToWall(this, temp_s1);
            }
            this->actor.world.pos = posOut;
            this->actor.floorBgId = bgId;
        }
        ret = 1;
    } else {
        posA = posB;
        for (phi_s1 = 0; phi_s1 < 3; phi_s1++) {
            if (phi_s1 == 0) {
                posB.x = posA.x - (this->unk_37C.x * 24.0f);
                posB.y = posA.y - (this->unk_37C.y * 24.0f);
                if (0) {}
                posB.z = posA.z - (this->unk_37C.z * 24.0f);
            } else if (phi_s1 == 1) {
                posB.x = posA.x + (this->unk_370.x * 24.0f);
                posB.y = posA.y + (this->unk_370.y * 24.0f);
                posB.z = posA.z + (this->unk_370.z * 24.0f);
            } else {
                posB.x = posA.x - (this->unk_370.x * 24.0f);
                posB.y = posA.y - (this->unk_370.y * 24.0f);
                posB.z = posA.z - (this->unk_370.z * 24.0f);
            }
            temp_v0_2 = EnSw_GetPoly(play, &posA, &posB, &sp9C, &sp6C);
            if (temp_v0_2 != NULL) {
                if (arg2 == 1) {
                    EnSw_ClingToWall(this, temp_v0_2);
                    this->actor.world.pos = sp9C;
                    this->actor.floorBgId = sp6C;
                }
                ret = 1;
                break;
            }
        }
    }

    Math_SmoothStepToS(&this->actor.shape.rot.x, this->actor.world.rot.x, 8, 0xFA0, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.world.rot.y, 8, 0xFA0, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->actor.world.rot.z, 8, 0xFA0, 1);

    return ret;
}

void EnSw_Init(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;
    s32 phi_v0;
    Vec3f sp4C = { 0.0f, 0.0f, 0.0f };
    s32 pad;

    if (thisx->params & 0x8000) {
        phi_v0 = ENSW_GET_GOLDTYPE((thisx->params - 0x8000)) + 1;
        thisx->params = (thisx->params & 0x1FFF) | (phi_v0 << 0xD);
    }

    if (ENSW_GET_GOLDTYPE(thisx->params) > SW_NORMALTYPE) {
        phi_v0 = ((thisx->params & 0x1F00) >> 8) - 1;
        thisx->params = (thisx->params & 0xE0FF) | (phi_v0 << 8);
    }

    // Check to see if this gold skull token has already been retrieved.
    if (GET_GS_FLAGS((thisx->params & 0x1F00) >> 8) & (thisx->params & 0xFF)) {
        Actor_Kill(&this->actor);
        return;
    }

    SkelAnime_Init(play, &this->skelAnime, &object_st_Skel_005298, NULL, this->jointTable, this->morphTable, 30);
    Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENSW_ANIM_0);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->sphs);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(0xE), &D_80B0F074);
    this->actor.scale.x = 0.02f;

    if (ENSW_GET_GOLDTYPE(thisx->params) == SW_NORMALTYPE) {
        this->actor.world.rot.x = 0;
        this->actor.world.rot.z = 0;
        thisx->shape.rot = this->actor.world.rot;
        this->walllCast.y = this->actor.world.pos.y;
        this->walllCast.x = this->actor.world.pos.x + (Math_SinS(this->actor.world.rot.y) * -60.0f);
        this->walllCast.z = this->actor.world.pos.z + (Math_CosS(this->actor.world.rot.y) * -60.0f);
        EnSW_LineTestWall(this, play);
        this->actor.home.pos = this->actor.world.pos;
    } else {
        this->unk_370.x = Math_SinS(thisx->shape.rot.y + 0x4000);
        this->unk_370.y = 0.0f;
        this->unk_370.z = Math_CosS(thisx->shape.rot.y + 0x4000);
        this->wallPolyNormal.x = 0.0f;
        this->wallPolyNormal.y = 1.0f;
        this->wallPolyNormal.z = 0.0f;
        this->unk_37C.x = Math_SinS(thisx->shape.rot.y);
        this->unk_37C.y = 0.0f;
        this->unk_37C.z = Math_CosS(thisx->shape.rot.y);
        EnSw_GoldClingToWall(this, play, 1);
    }

    if (ENSW_GET_GOLDTYPE(thisx->params) >= SW_GOLDTYPE_HIDDEN_SOIL) {
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }

    switch (ENSW_GET_GOLDTYPE(thisx->params)) {
        case SW_GOLDTYPE_HIDDEN_SOIL:
        case SW_GOLDTYPE_HIDDEN_TREE:
            // they spring out of their hidding spot
            this->goldHiddenBool = 1;
            this->actor.velocity.y = 8.0f;
            this->actor.speedXZ = 4.0f;
            this->actor.gravity = -1.0f;
            FALLTHROUGH;
        case SW_GOLDTYPE_NIGHT:
            this->actor.scale.x = 0.0f; // they expand at night
            FALLTHROUGH;
        case SW_GOLDTYPE_DEFAULT:
            this->collider.elements[0].info.toucher.damage *= 2;
            this->actor.naviEnemyId = NAVI_ENEMY_GOLD_SKULLTULA;
            this->actor.colChkInfo.health *= 2;
            this->actor.flags &= ~ACTOR_FLAG_0;
            break;

        default:
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_ENEMY);
            this->actor.naviEnemyId = NAVI_ENEMY_SKULLWALLTULA;
            break;

    }

    this->crawlTimer = Rand_S16Offset(15, 30);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.home.pos = this->actor.world.pos;
    thisx->shape.rot = this->actor.world.rot;

    if (ENSW_GET_GOLDTYPE(thisx->params) >= SW_GOLDTYPE_HIDDEN_SOIL) {
        this->waitTimer = 40;
        this->deathFlames = 1;
        this->actionFunc = EnSw_SetupGoldHidden;
    } else if (ENSW_GET_GOLDTYPE(thisx->params) == SW_NORMALTYPE) {
        this->actionFunc = EnSw_SetupNormal;
    } else {
        this->actionFunc = EnSw_Crawl;
    }
}

void EnSw_Destroy(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

s32 EnSw_CheckDamage(EnSw* this, PlayState* play) {
    s32 phi_v1 = false;

    if (this->actor.xyzDistToPlayerSq < SQ(400.0f) && ENSW_GET_GOLDTYPE(this->actor.params) == SW_NORMALTYPE &&
        play->actorCtx.unk_02 != 0) {

        this->actor.colChkInfo.damage = this->actor.colChkInfo.health;
        phi_v1 = true;
    }

    if (this->painTimer1 == 0) {
        if ((this->collider.base.acFlags & AC_HIT) || phi_v1) {
            this->collider.base.acFlags &= ~AC_HIT;
            this->painTimer1 = 0x10;
            Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_OPA, this->painTimer1);
            if (Actor_ApplyDamage(&this->actor) != 0) {
                Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALTU_DAMAGE);
                return true;
            }
            Enemy_StartFinishingBlow(play, &this->actor);
            if (ENSW_GET_GOLDTYPE(this->actor.params) != SW_NORMALTYPE) {
                this->skelAnime.playSpeed = 8.0f;
                if ((play->state.frames & 1) == 0) {
                    this->rotateMag = 0.1f;
                } else {
                    this->rotateMag = -0.1f;
                }
                this->deathFlames = 10;
                this->animationSpeed = 1;
                this->rotateMag *= 4.0f;
                this->actionFunc = EnSw_DieGold;
            } else {
                this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
                this->actor.shape.shadowAlpha = 0xFF;
                this->animationSpeed = 2;
                this->actor.shape.shadowScale = 16.0f;
                this->actor.gravity = -1.0f;
                this->actor.flags &= ~ACTOR_FLAG_0;
                this->actionFunc = EnSw_FallNormal;
            }

            Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALWALL_DEAD);
            return true;
        }
    }

    if ((this->painTimer0 == 0) && (this->collider.base.atFlags & AT_HIT)) {
        this->painTimer0 = 30;
    }

    return false;
}

void EnSw_SetCollider(EnSw* this, PlayState* play) {
    if ((ENSW_GET_GOLDTYPE(this->actor.params) > SW_NORMALTYPE) && (this->actionFunc != EnSw_Crawl)) {
        if (this->painTimer1 != 0) {
            this->painTimer1--;
        }
    } else {
        if ((DECR(this->painTimer0) == 0) && (this->actor.colChkInfo.health != 0)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }

        if ((DECR(this->painTimer1) == 0) && (this->actor.colChkInfo.health != 0)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

s32 EnSw_GetRotate(EnSw* this, f32* angle) {
    CollisionPoly* floorPoly;
    f32 length;
    Vec3f floorPolyNormal;
    MtxF rotMtxF;

    if (this->actor.floorPoly == NULL) {
        return false;
    }

    floorPoly = this->actor.floorPoly;
    floorPolyNormal.x = COLPOLY_GET_NORMAL(floorPoly->normal.x);
    floorPolyNormal.y = COLPOLY_GET_NORMAL(floorPoly->normal.y);
    floorPolyNormal.z = COLPOLY_GET_NORMAL(floorPoly->normal.z);
    Matrix_RotateAxis(*angle, &floorPolyNormal, MTXMODE_NEW);
    Matrix_MultVec3f(&this->unk_370, &floorPolyNormal);
    this->unk_370 = floorPolyNormal;
    EnSw_CrossProduct(&this->unk_370, &this->wallPolyNormal, &this->unk_37C);
    length = Math3D_Vec3fMagnitude(&this->unk_37C);
    if (length < 0.001f) {
        return false;
    }
    length = 1.0f / length;
    this->unk_37C.x *= length;
    this->unk_37C.y *= length;
    this->unk_37C.z *= length;
    rotMtxF.xx = this->unk_370.x;
    rotMtxF.yx = this->unk_370.y;
    rotMtxF.zx = this->unk_370.z;
    rotMtxF.wx = 0.0f;
    rotMtxF.xy = this->wallPolyNormal.x;
    rotMtxF.yy = this->wallPolyNormal.y;
    rotMtxF.zy = this->wallPolyNormal.z;
    rotMtxF.wy = 0.0f;
    rotMtxF.xz = this->unk_37C.x;
    rotMtxF.yz = this->unk_37C.y;
    rotMtxF.zz = this->unk_37C.z;
    rotMtxF.wz = 0.0f;
    rotMtxF.xw = 0.0f;
    rotMtxF.yw = 0.0f;
    rotMtxF.zw = 0.0f;
    rotMtxF.ww = 1.0f;
    Matrix_MtxFToYXZRotS(&rotMtxF, &this->actor.world.rot, 0);
    return true;
}

void EnSw_PlaySfxRoll(EnSw* this, PlayState* play) {
    if (!(this->actor.scale.x < 0.0139999995f)) {
        Camera* activeCam = GET_ACTIVE_CAM(play);

        if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &activeCam->eye) >= 380.0f)) {
            Audio_PlayActorSfx2(&this->actor, ENSW_GET_GOLDTYPE(this->actor.params) > SW_NORMALTYPE 
            ? NA_SE_EN_STALGOLD_ROLL : NA_SE_EN_STALWALL_ROLL);
        }
    }
}

void EnSw_SpawnDust(EnSw* this, PlayState* play, s32 cnt) {
    Color_RGBA8 primColor = { 80, 80, 50, 255 };
    Color_RGBA8 envColor = { 100, 100, 80, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = (Rand_ZeroOne() - 0.5f) * 65536.0f;
    s32 i;

    for (i = cnt; i >= 0; i--, angle += (s16)(0x10000 / cnt)) {
        accel.x = (Rand_ZeroOne() - 0.5f) * 2.0f;
        accel.z = (Rand_ZeroOne() - 0.5f) * 2.0f;
        pos.x = this->actor.world.pos.x + (Math_SinS(angle) * 2.0f);
        pos.y = this->actor.world.pos.y;
        pos.z = this->actor.world.pos.z + (Math_CosS(angle) * 2.0f);
        func_8002836C(play, &pos, &velocity, &accel, &primColor, &envColor, 20, 30, 12);
    }
}

void EnSw_SpawnDust2(EnSw* this, PlayState* play, s32 cnt) {
    Color_RGBA8 primColor = { 80, 80, 50, 255 };
    Color_RGBA8 envColor = { 100, 100, 80, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = (Rand_ZeroOne() - 0.5f) * 65536.0f;
    s32 i;

    for (i = cnt; i >= 0; i--, angle += (s16)(0x10000 / cnt)) {
        accel.x = (Rand_ZeroOne() - 0.5f) * 2.0f;
        accel.z = (Rand_ZeroOne() - 0.5f) * 2.0f;
        pos.x = this->actor.world.pos.x + (Math_SinS(angle) * 14.0f);
        pos.y = this->actor.world.pos.y;
        pos.z = this->actor.world.pos.z + (Math_CosS(angle) * 14.0f);
        func_8002836C(play, &pos, &velocity, &accel, &primColor, &envColor, 20, 40, 10);
    }
}

void EnSw_SetupGoldHidden(EnSw* this, PlayState* play) {
    if (ENSW_GET_GOLDTYPE(this->actor.params) == SW_GOLDTYPE_HIDDEN_TREE) {
        this->waitTimer = 0;
        this->actionFunc = EnSw_GoldHiddenReveal;
    } else {
        this->waitTimer = 10;
        this->actionFunc = EnSw_GoldHiddenReveal;
    }
}

void EnSw_GoldHiddenReveal(EnSw* this, PlayState* play) {
    if (this->waitTimer != 0) {
        if ((this->waitTimer & 4) != 0) {
            EnSw_SpawnDust(this, play, 5);
        }
        this->waitTimer--;
        if (this->waitTimer == 0) {
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EN_STALGOLD_UP_CRY);
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EN_DODO_M_UP);
        } else {
            return;
        }
    }

    Math_ApproachF(&this->actor.scale.x, 0.02f, 0.2f, 0.01f);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.world.pos.x += this->wallPolyNormal.x * this->actor.velocity.y;
    this->actor.world.pos.y += this->wallPolyNormal.y * this->actor.velocity.y;
    this->actor.world.pos.z += this->wallPolyNormal.z * this->actor.velocity.y;
    this->actor.world.pos.x += this->unk_37C.x * this->actor.speedXZ;
    this->actor.world.pos.y += this->unk_37C.y * this->actor.speedXZ;
    this->actor.world.pos.z += this->unk_37C.z * this->actor.speedXZ;
    this->actor.velocity.y += this->actor.gravity;
    this->actor.velocity.y = CLAMP_MIN(this->actor.velocity.y, this->actor.minVelocityY);

    if (this->actor.velocity.y < 0.0f) {
        this->goldHiddenBool = 0;
    }

    if (EnSw_GoldClingToWall(this, play, 1) == 1) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_DODO_M_GND);
        EnSw_SpawnDust2(this, play, 8);
        this->actor.scale.x = 0.02f;
        Actor_SetScale(&this->actor, 0.02f);
        this->actionFunc = EnSw_Crawl;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
        this->actor.gravity = 0.0f;
    }
}

void EnSw_Crawl(EnSw* this, PlayState* play) {
    f32 rotAngle;

    // Outdoor Gold Skulltula shrinks/expands based on time
    if (ENSW_GET_GOLDTYPE(this->actor.params) == SW_GOLDTYPE_NIGHT) {
        if (this->actor.scale.x < 0.0139999995f) {
            this->collider.elements[0].info.toucherFlags = TOUCH_NONE;
            this->collider.elements[0].info.bumperFlags = BUMP_NONE;
            this->collider.elements[0].info.ocElemFlags = OCELEM_NONE;
        }

        if (this->actor.scale.x >= 0.0139999995f) {
            this->collider.elements[0].info.toucherFlags = TOUCH_ON;
            this->collider.elements[0].info.bumperFlags = BUMP_ON;
            this->collider.elements[0].info.ocElemFlags = OCELEM_ON;
        }

        Math_ApproachF(&this->actor.scale.x, !IS_DAY ? 0.02f : 0.0f, 0.2f, 0.01f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
    }

    if (this->crawlTimer != 0) {
        this->crawlTimer--;
        if (this->crawlTimer == 0) {
            EnSw_PlaySfxRoll(this, play);
            this->rotateMag = ((play->state.frames % 2) == 0) ? 0.1f : -0.1f;
            this->animationSpeed = 1;
            this->waitTimer = Rand_S16Offset(30, 60);
            if (ENSW_GET_GOLDTYPE(this->actor.params) != SW_NORMALTYPE) {
                this->waitTimer *= 2;
                this->rotateMag *= 2.0f;
            }
        }
    } else {
        this->waitTimer--;
        if (this->waitTimer == 0) {
            this->crawlTimer = Rand_S16Offset(15, 30);
            this->animationSpeed = 0;
            this->skelAnime.playSpeed = 0.0f;
            if (ENSW_GET_GOLDTYPE(this->actor.params) != SW_NORMALTYPE) {
                this->crawlTimer /= 2;
            }
        } else if (this->animationSpeed != 0) {
            this->animationSpeed--;
            this->skelAnime.playSpeed = (this->animationSpeed == 0) ? 4.0f : 0.0f;

            if (this->skelAnime.playSpeed > 0.0f) {
                EnSw_PlaySfxRoll(this, play);
            }
            if (ENSW_GET_GOLDTYPE(this->actor.params) != SW_NORMALTYPE) {
                this->skelAnime.playSpeed *= 2.0f;
            }
        } else {
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame) == 1) {
                this->animationSpeed = 2;
            }
            rotAngle = 32768.0f / this->skelAnime.endFrame;
            rotAngle *= this->skelAnime.curFrame;
            rotAngle = Math_SinS(rotAngle) * this->rotateMag;
            EnSw_GetRotate(this, &rotAngle);
            this->actor.shape.rot = this->actor.world.rot;
        }
    }
}

void EnSw_DieGold(EnSw* this, PlayState* play) {
    Actor* token;
    Vec3f pos;
    Vec3f velAndAccel = { 0.0f, 0.5f, 0.0f };
    f32 x;
    f32 y;
    f32 z;

    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame) == 1) {
        EnSw_PlaySfxRoll(this, play);
    }

    EnSw_GetRotate(this, &this->rotateMag);
    this->actor.shape.rot = this->actor.world.rot;

    if ((this->deathFlames == 0) && (this->painTimer1 == 0)) {
        Audio_PlaySfxGeneral(NA_SE_SY_KINSTA_MARK_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        x = (this->wallPolyNormal.x * 10.0f);
        y = (this->wallPolyNormal.y * 10.0f);
        z = (this->wallPolyNormal.z * 10.0f);
        token =
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_SI, this->actor.world.pos.x + x,
                               this->actor.world.pos.y + y, this->actor.world.pos.z + z, 0, 0, 0, this->actor.params);
        if (token != NULL) {
            token->parent = NULL;
        }
        Actor_Kill(&this->actor);
        return;
    }

    if ((this->painTimer1 == 0) && (DECR(this->deathFlames) != 0)) {
        pos = this->actor.world.pos;
        pos.y += 10.0f + ((Rand_ZeroOne() - 0.5f) * 6.0f);
        pos.x += (Rand_ZeroOne() - 0.5f) * 32.0f;
        pos.z += (Rand_ZeroOne() - 0.5f) * 32.0f;
        EffectSsDeadDb_Spawn(play, &pos, &velAndAccel, &velAndAccel, 42, 0, 255, 255, 255, 255, 255, 0, 0, 1, 9, true);
    }
}

void EnSw_FallNormal(EnSw* this, PlayState* play) {
    Actor_MoveForward(&this->actor);
    this->actor.shape.rot.x += 0x1000;
    this->actor.shape.rot.z += 0x1000;
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && !(0.0f <= this->actor.velocity.y)) {
        if (this->actor.floorHeight <= BGCHECK_Y_MIN || this->actor.floorHeight >= 32000.0f) {
            Actor_Kill(&this->actor);
            return;
        }

        this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND;

        if (this->animationSpeed == 0) {
            this->actionFunc = EnSw_DieNormal;
            this->deathFlames = 10;
        } else {
            this->actor.velocity.y = ((this->animationSpeed--) * 8.0f) * 0.5f;
        }

        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_DODO_M_GND);
        Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 16.0f, 12, 2.0f, 120, 10, false);
    }
}

void EnSw_DieNormal(EnSw* this, PlayState* play) {
    Vec3f velAndAccel = { 0.0f, 0.5f, 0.0f };
    Vec3f pos = { 0.0f, 0.0f, 0.0f };

    if (DECR(this->deathFlames) != 0) {
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

s16 EnSw_GetTargetPitch(EnSw* this, Vec3f* target) {
    s16 pitch;
    s16 yaw;

    yaw = Math_Vec3f_Yaw(&this->actor.world.pos, target) - this->actor.wallYaw;
    pitch = Math_Vec3f_Pitch(&this->actor.world.pos, target) - 0x4000;
    return pitch * (yaw >= 0 ? -1 : 1);
}

s32 EnSW_CanDashPlayer(EnSw* this, PlayState* play, s32 arg2) {
    Player* player = GET_PLAYER(play);
    CollisionPoly* sp58;
    s32 sp54;
    Vec3f sp48;

    if (!(player->stateFlags1 & PLAYER_STATE1_21) && arg2) {
        return false;
    } else if (func_8002DDF4(play) && arg2) {
        return false;
    } else if (ABS(EnSw_GetTargetPitch(this, &player->actor.world.pos) - this->actor.shape.rot.z) >= 0x1FC2) {
        return false;
    } else if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &player->actor.world.pos) >= 130.0f) {
        return false;
    } else if (!BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &player->actor.world.pos, &sp48, &sp58,
                                        true, false, false, true, &sp54)) {
        return true;
    } else {
        return false;
    }
}

s32 EnSW_LineTestWall(EnSw* this, PlayState* play) {
    s32 pad;
    CollisionPoly* poly;
    s32 bgId;
    Vec3f posResult;
    s32 ret = true;

    if (this->collider.base.ocFlags1 & OC1_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        ret = false;
    } else if (((play->state.frames % 4) == 0) &&
               !BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->lineCast0, &posResult, &poly, true,
                                        false, false, true, &bgId)) {
        ret = false;
    } else if (((play->state.frames % 4) == 1) &&
               BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->lineCast1, &posResult, &poly, true, false,
                                       false, true, &bgId)) {
        ret = false;
    } else if (((play->state.frames % 4) == 2) &&
               !BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->lineCast2, &posResult, &poly, true,
                                        false, false, true, &bgId)) {
        if (0) {}
        ret = false;
    } else if (((play->state.frames % 4) == 3) &&
               BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->lineCast3, &posResult, &poly, true, false,
                                       false, true, &bgId)) {
        ret = false;
    }

    if (BgCheck_EntityLineTest1(&play->colCtx, &this->actor.world.pos, &this->walllCast, &posResult, &this->wallPoly, true,
                                false, false, true, &bgId)) {
        this->actor.wallYaw = RAD_TO_BINANG(Math_FAtan2F(this->wallPoly->normal.x, this->wallPoly->normal.z));
        this->actor.world.pos = posResult;
        this->actor.world.pos.x += 6.0f * Math_SinS(this->actor.world.rot.y);
        this->actor.world.pos.z += 6.0f * Math_CosS(this->actor.world.rot.y);
        this->unk_434 = posResult;
        this->unk_434.x += Math_SinS(this->actor.world.rot.y);
        this->unk_434.z += Math_CosS(this->actor.world.rot.y);
    }

    return ret;
}

void EnSw_Move(EnSw* this, Vec3f targetPos, f32 speedTarget) {
    f32 xDist;
    f32 yDist;
    f32 zDist;
    f32 dist;
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;

    Math_SmoothStepToF(&this->actor.speedXZ, speedTarget, 0.3f, 100.0f, 0.1f);
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
    xDist *= this->actor.speedXZ;
    yDist *= this->actor.speedXZ;
    zDist *= this->actor.speedXZ;
    this->actor.world.pos.x += xDist;
    this->actor.world.pos.y += yDist;
    this->actor.world.pos.z += zDist;
}

s32 EnSw_SetCrawlAnimation(EnSw* this, f32 target, s16 step, s32 arg3, PlayState* play) {
    Camera* activeCam;
    f32 lastFrame = Animation_GetLastFrame(&object_st_Anim_000304);

    if (DECR(this->aniTimer) != 0) {
        Math_SmoothStepToF(&this->skelAnime.playSpeed, 0.0f, 0.6f, 1000.0f, 0.01f);
        return 0;
    }

    Math_SmoothStepToF(&this->skelAnime.playSpeed, target, 0.6f, 1000.0f, 0.01f);

    if ((arg3 == 1) && (lastFrame < (this->skelAnime.curFrame + this->skelAnime.playSpeed))) {
        return 0;
    }

    activeCam = GET_ACTIVE_CAM(play);

    if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &activeCam->eye) < 380.0f) {
        if (DECR(this->sfxTimer) == 0) {
            Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALWALL_ROLL);
            this->sfxTimer = 4;
        }
    } else {
        this->sfxTimer = 0;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->rotZTarget, 4, step, step);
    this->actor.world.rot = this->actor.shape.rot;
    if (this->actor.shape.rot.z == this->rotZTarget) {
        return 1;
    }
    return 0;
}

void EnSw_SetupNormal(EnSw* this, PlayState* play) {
    s32 pad[2];
    f32 rand;

    if (EnSw_SetCrawlAnimation(this, 6.0f, 1000, 1, play)) {
        rand = Rand_ZeroOne();
        this->rotZTarget =
            ((s16)(20000.0f * rand) + 12000) * (Rand_ZeroOne() >= 0.5f ? 1.0f : -1.0f) + this->actor.world.rot.z;
        this->aniTimer = Rand_S16Offset(10, 30);
    }

    if ((DECR(this->dashTimer) == 0) && (EnSW_CanDashPlayer(this, play, 1))) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALWALL_LAUGH);
        this->dashTimer = 20;
        this->actionFunc = EnSw_Dash;
    }
}

void EnSw_Dash(EnSw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;

    if (DECR(this->dashTimer) != 0) {
        if (EnSW_CanDashPlayer(this, play, 1)) {
            this->targetPos = player->actor.world.pos;
            this->targetPos.y += 30.0f;
            this->rotZTarget = EnSw_GetTargetPitch(this, &this->targetPos);
            EnSw_SetCrawlAnimation(this, 6.0f, (u16)4000, 0, play);
        } else {
            this->actionFunc = EnSw_SetupNormal;
        }
    } else {
        if (!EnSW_LineTestWall(this, play)) {
            this->dashTimer = Rand_S16Offset(20, 10);
            this->rotZTarget = EnSw_GetTargetPitch(this, &this->actor.home.pos);
            this->targetPos = this->actor.home.pos;
            this->actionFunc = EnSw_GoHome;
        } else {
            EnSw_Move(this, this->targetPos, 8.0f);

            if (DECR(this->sfxTimer) == 0) {
                Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALWALL_DASH);
                this->sfxTimer = 4;
            }

            if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &this->targetPos) > 13.0f) || func_8002DDF4(play)) {
                this->actionFunc = EnSw_SetupGoHome;
            }
        }
    }
}

void EnSw_SetupGoHome(EnSw* this, PlayState* play) {
    s32 pad;

    EnSw_Move(this, this->targetPos, 0.0f);
    if (this->actor.speedXZ == 0.0f) {
        this->rotZTarget = EnSw_GetTargetPitch(this, &this->actor.home.pos);
        this->targetPos = this->actor.home.pos;
        this->actionFunc = EnSw_GoHome;
    }
}

void EnSw_GoHome(EnSw* this, PlayState* play) {
    s32 pad;

    if (EnSw_SetCrawlAnimation(this, 6.0f, 1000, 0, play)) {
        EnSw_Move(this, this->targetPos, 2.0f);
        if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &this->targetPos) > 4.0f)) {
            this->actionFunc = EnSw_SetupNormal;
        }
    }
}

void EnSw_Update(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;

    SkelAnime_Update(&this->skelAnime);
    EnSw_CheckDamage(this, play);
    this->actionFunc(this, play);
    EnSw_SetCollider(this, play);
}

s32 EnSw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Vec3f sp7C = { 1400.0f, -2600.0f, -800.0f };
    Vec3f sp70 = { 1400.0f, -1600.0f, 0.0f };
    Vec3f sp64 = { -1400.0f, -2600.0f, -800.0f };
    Vec3f sp58 = { -1400.0f, -1600.0f, 0.0f };
    Vec3f sp4C = { 0.0, 0.0f, -600.0f };
    EnSw* this = (EnSw*)thisx;
    Vec3f sp3C = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2084);

    if (ENSW_GET_GOLDTYPE(this->actor.params) != SW_NORMALTYPE) {
        switch (limbIndex) { // replace with Gold Skulltula body parts.
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

    if (limbIndex == 1) { // eyes?
        Matrix_MultVec3f(&sp7C, &this->lineCast0);
        Matrix_MultVec3f(&sp70, &this->lineCast1);
        Matrix_MultVec3f(&sp64, &this->lineCast2);
        Matrix_MultVec3f(&sp58, &this->lineCast3);
        Matrix_MultVec3f(&sp4C, &this->walllCast);
    }

    if (limbIndex == 5) {
        Matrix_MultVec3f(&sp3C, &this->actor.focus.pos);
    }

    if (limbIndex == 4) { // head?
        gDPSetEnvColor(POLY_OPA_DISP++, this->limb4Col.r, this->limb4Col.g, this->limb4Col.b, 0);
    }

    Collider_UpdateSpheres(limbIndex, &this->collider);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2145);

    return false;
}

void EnSw_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
}

void EnSw_SetFog(PlayState* play, Color_RGBA8* col, s16 arg2, s16 arg3) {
    f32 temp_f2;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2181);

    temp_f2 = (11500.0f / arg3) * (arg3 - arg2);

    if (0.0f == temp_f2) {
        temp_f2 = 11500;
    }

    POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP, col->r, col->g, col->b, col->a, 0, (s16)temp_f2);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2197);
}

void EnSw_RestoreFog(PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2205);

    POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sw.c", 2207);
}

void EnSw_Draw(Actor* thisx, PlayState* play) {
    EnSw* this = (EnSw*)thisx;
    Color_RGBA8 col = { 184, 0, 228, 255 };

    if (ENSW_GET_GOLDTYPE(this->actor.params) != SW_NORMALTYPE) {
        Matrix_RotateX(DEG_TO_RAD(-80), MTXMODE_APPLY);
        if (this->actor.colChkInfo.health != 0) {
            Matrix_Translate(0.0f, 0.0f, 200.0f, MTXMODE_APPLY);
        }
        func_8002EBCC(&this->actor, play, 0);
    } else if (this->actionFunc == EnSw_Dash) {
        EnSw_SetFog(play, &col, 20, 30);
    }

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnSw_OverrideLimbDraw,
                      EnSw_PostLimbDraw, this);
    if (this->actionFunc == EnSw_Dash) {
        EnSw_RestoreFog(play);
    }
}
