/*
 * File: z_en_anubice.c
 * Overlay: ovl_En_Anubice
 * Description: Anubis Body
 */

#include "z_en_anubice.h"
#include "assets/objects/object_anubice/object_anubice.h"
#include "overlays/actors/ovl_En_Anubice_Tag/z_en_anubice_tag.h"
#include "overlays/actors/ovl_Bg_Hidan_Curtain/z_bg_hidan_curtain.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnAnubice_Init(Actor* thisx, PlayState* play);
void EnAnubice_Destroy(Actor* thisx, PlayState* play);
void EnAnubice_Update(Actor* thisx, PlayState* play);
void EnAnubice_Draw(Actor* thisx, PlayState* play);

void EnAnubice_FindFlameCircles(EnAnubice* this, PlayState* play);
void EnAnubice_SetupIdle(EnAnubice* this, PlayState* play);
void EnAnubice_Idle(EnAnubice* this, PlayState* play);
void EnAnubice_GoToHome(EnAnubice* this, PlayState* play);
void EnAnubice_SetupShootFireball(EnAnubice* this, PlayState* play);
void EnAnubice_ShootFireball(EnAnubice* this, PlayState* play);
void EnAnubice_Die(EnAnubice* this, PlayState* play);

ActorProfile En_Anubice_Profile = {
    /**/ ACTOR_EN_ANUBICE,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_ANUBICE,
    /**/ sizeof(EnAnubice),
    /**/ EnAnubice_Init,
    /**/ EnAnubice_Destroy,
    /**/ EnAnubice_Update,
    /**/ EnAnubice_Draw,
};

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
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 29, 103, 0, { 0, 0, 0 } },
};

typedef enum AnubiceDamageEffect {
    /* 0x0 */ ANUBICE_DMGEFF_NONE,
    /* 0x2 */ ANUBICE_DMGEFF_FIRE = 2,
    /* 0xF */ ANUBICE_DMGEFF_0xF = 0xF // Treated the same as ANUBICE_DMGEFF_NONE in code
} AnubiceDamageEffect;

static DamageTable sDamageTable[] = {
    /* Deku nut      */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Deku stick    */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Slingshot     */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Explosive     */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Boomerang     */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Normal arrow  */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Hammer swing  */ DMG_ENTRY(1, ANUBICE_DMGEFF_0xF),
    /* Hookshot      */ DMG_ENTRY(2, ANUBICE_DMGEFF_0xF),
    /* Kokiri sword  */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Master sword  */ DMG_ENTRY(2, ANUBICE_DMGEFF_0xF),
    /* Giant's Knife */ DMG_ENTRY(6, ANUBICE_DMGEFF_0xF),
    /* Fire arrow    */ DMG_ENTRY(2, ANUBICE_DMGEFF_FIRE),
    /* Ice arrow     */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Light arrow   */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Unk arrow 1   */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Unk arrow 2   */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Unk arrow 3   */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Fire magic    */ DMG_ENTRY(3, ANUBICE_DMGEFF_FIRE),
    /* Ice magic     */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Light magic   */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Shield        */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Kokiri spin   */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Giant spin    */ DMG_ENTRY(6, ANUBICE_DMGEFF_0xF),
    /* Master spin   */ DMG_ENTRY(2, ANUBICE_DMGEFF_0xF),
    /* Kokiri jump   */ DMG_ENTRY(0, ANUBICE_DMGEFF_0xF),
    /* Giant jump    */ DMG_ENTRY(12, ANUBICE_DMGEFF_0xF),
    /* Master jump   */ DMG_ENTRY(4, ANUBICE_DMGEFF_0xF),
    /* Unknown 1     */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Unblockable   */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Hammer jump   */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, ANUBICE_DMGEFF_NONE),
};

void EnAnubice_Hover(EnAnubice* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->hoverVelocityTimer += 1500.0f;
    this->targetHeight = player->actor.world.pos.y + this->playerHeightOffset;
    Math_ApproachF(&this->actor.world.pos.y, this->targetHeight, 0.1f, 10.0f);
    Math_ApproachF(&this->playerHeightOffset, 10.0f, 0.1f, 0.5f);
    this->actor.velocity.y = Math_SinS(this->hoverVelocityTimer);
}

void EnAnubice_AimFireball(EnAnubice* this, PlayState* play) {
    f32 xzDist;
    f32 x;
    f32 y;
    f32 z;
    Player* player = GET_PLAYER(play);

    x = player->actor.world.pos.x - this->headPos.x;
    y = player->actor.world.pos.y + 10.0f - this->headPos.y;
    z = player->actor.world.pos.z - this->headPos.z;
    xzDist = sqrtf(SQ(x) + SQ(z));

    this->fireballRot.x = -RAD_TO_BINANG(Math_FAtan2F(y, xzDist));
    this->fireballRot.y = RAD_TO_BINANG(Math_FAtan2F(x, z));
}

void EnAnubice_Init(Actor* thisx, PlayState* play) {
    EnAnubice* this = (EnAnubice*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
    SkelAnime_Init(play, &this->skelAnime, &gAnubiceSkel, &gAnubiceIdleAnim, this->jointTable, this->morphTable,
                   ANUBICE_LIMB_MAX);

    PRINTF("\n\n");
    // "☆☆☆☆☆ Anubis occurence ☆☆☆☆☆"
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ アヌビス発生 ☆☆☆☆☆ \n" VT_RST);

    this->actor.naviEnemyId = NAVI_ENEMY_ANUBIS;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);

    Actor_SetScale(&this->actor, 0.015f);

    this->actor.colChkInfo.damageTable = sDamageTable;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.shape.yOffset = -4230.0f;
    this->focusHeightOffset = 0.0f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->home = this->actor.world.pos;
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->actionFunc = EnAnubice_FindFlameCircles;
}

void EnAnubice_Destroy(Actor* thisx, PlayState* play) {
    EnAnubice* this = (EnAnubice*)thisx;
    EnAnubiceTag* tag;

    Collider_DestroyCylinder(play, &this->collider);

    if (this->actor.params != 0) {
        if (this->actor.parent) {}

        tag = (EnAnubiceTag*)this->actor.parent;
        if (tag != NULL && tag->actor.update != NULL) {
            tag->anubis = NULL;
        }
    }
}

void EnAnubice_FindFlameCircles(EnAnubice* this, PlayState* play) {
    Actor* currentProp;
    s32 flameCirclesFound;

    if (this->isMirroringPlayer) {
        if (!this->hasSearchedForFlameCircles) {
            flameCirclesFound = 0;
            currentProp = play->actorCtx.actorLists[ACTORCAT_PROP].head;
            while (currentProp != NULL) {
                if (currentProp->id != ACTOR_BG_HIDAN_CURTAIN) {
                    currentProp = currentProp->next;
                } else {
                    this->flameCircles[flameCirclesFound] = (BgHidanCurtain*)currentProp;
                    // "☆☆☆☆☆ How many fires? ☆☆☆☆☆"
                    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %d\n" VT_RST, flameCirclesFound);
                    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %x\n" VT_RST,
                           this->flameCircles[flameCirclesFound]);
                    if (flameCirclesFound < ARRAY_COUNT(this->flameCircles) - 1) {
                        flameCirclesFound++;
                    }
                    currentProp = currentProp->next;
                }
            }
            this->hasSearchedForFlameCircles = true;
        }
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        this->actionFunc = EnAnubice_SetupIdle;
    }
}

void EnAnubice_SetupIdle(EnAnubice* this, PlayState* play) {
    f32 lastFrame = Animation_GetLastFrame(&gAnubiceIdleAnim);

    Animation_Change(&this->skelAnime, &gAnubiceIdleAnim, 1.0f, 0.0f, (s16)lastFrame, ANIMMODE_LOOP, -10.0f);

    this->actionFunc = EnAnubice_Idle;
    this->actor.velocity.x = this->actor.velocity.z = this->actor.gravity = 0.0f;
}

void EnAnubice_Idle(EnAnubice* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.shape.yOffset, 0.5f, 300.0f);
    Math_ApproachF(&this->focusHeightOffset, 70.0f, 0.5f, 5.0f);

    if (!this->isKnockedback) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }

    if (this->actor.shape.yOffset > -2.0f) {
        this->actor.shape.yOffset = 0.0f;

        if (player->meleeWeaponState != 0) {
            this->actionFunc = EnAnubice_SetupShootFireball;
        } else if (this->isPlayerOutOfRange) {
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = -1.0f;
            this->actionFunc = EnAnubice_GoToHome;
        }
    }
}

void EnAnubice_GoToHome(EnAnubice* this, PlayState* play) {
    f32 xzDist;
    f32 normalizedX;
    f32 normalizedY;
    f32 x;
    f32 z;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.shape.yOffset, -4230.0f, 0.5f, 300.0f);
    Math_ApproachZeroF(&this->focusHeightOffset, 0.5f, 5.0f);

    if (!this->isKnockedback) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }

    if ((fabsf(this->home.x - this->actor.world.pos.x) > 3.0f) &&
        (fabsf(this->home.z - this->actor.world.pos.z) > 3.0f)) {
        x = this->home.x - this->actor.world.pos.x;
        z = this->home.z - this->actor.world.pos.z;
        xzDist = sqrtf(SQ(x) + SQ(z));
        normalizedX = x / xzDist;
        normalizedY = z / xzDist;
        this->actor.world.pos.x += normalizedX * 8;
        this->actor.world.pos.z += normalizedY * 8.0f;
    } else if (this->actor.shape.yOffset < -4220.0f) {
        this->actor.shape.yOffset = -4230.0f;
        this->isMirroringPlayer = this->isPlayerOutOfRange = false;
        this->actionFunc = EnAnubice_FindFlameCircles;
        this->actor.gravity = 0.0f;
    }
}

void EnAnubice_SetupShootFireball(EnAnubice* this, PlayState* play) {
    f32 lastFrame = Animation_GetLastFrame(&gAnubiceAttackingAnim);

    this->animLastFrame = lastFrame;
    Animation_Change(&this->skelAnime, &gAnubiceAttackingAnim, 1.0f, 0.0f, lastFrame, ANIMMODE_ONCE, -10.0f);
    this->actionFunc = EnAnubice_ShootFireball;
    this->actor.velocity.x = this->actor.velocity.z = 0.0f;
}

void EnAnubice_ShootFireball(EnAnubice* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);

    if (!this->isKnockedback) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }

    EnAnubice_AimFireball(this, play);

    if (curFrame == 12.0f) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ANUBICE_FIRE, this->headPos.x, this->headPos.y + 15.0f,
                    this->headPos.z, this->fireballRot.x, this->fireballRot.y, 0, 0);
    }

    if (this->animLastFrame <= curFrame) {
        this->actionFunc = EnAnubice_SetupIdle;
    }
}

void EnAnubice_SetupDie(EnAnubice* this, PlayState* play) {
    f32 lastFrame = Animation_GetLastFrame(&gAnubiceFallDownAnim);

    this->animLastFrame = lastFrame;
    Animation_Change(&this->skelAnime, &gAnubiceFallDownAnim, 1.0f, 0.0f, lastFrame, ANIMMODE_ONCE, -20.0f);

    this->isNearWall = false;
    this->fallTargetYaw = 0;
    this->deathTimer = 20;
    this->actor.velocity.x = this->actor.velocity.z = 0.0f;
    this->actor.gravity = -1.0f;

    if (BgCheck_SphVsFirstPoly(&play->colCtx, &this->headPos, 70.0f)) {
        this->isNearWall = true;
        this->fallTargetYaw = this->actor.shape.rot.x - 0x7F00;
    }

    this->actionFunc = EnAnubice_Die;
}

void EnAnubice_Die(EnAnubice* this, PlayState* play) {
    f32 curFrame;
    f32 rotX;
    Vec3f baseFireEffectPos = { 0.0f, 0.0f, 0.0f };
    Vec3f rotatedFireEffectPos = { 0.0f, 0.0f, 0.0f };
    s32 pad;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.shape.shadowScale, 0.4f, 0.25f);

    // If near a wall, turn away from it while dying to avoid going through it.
    // The implementation of this is bugged in the sense that the target angle is hardcoded in practice. If the poly
    // already has an angle of -0x7F00, the expected behavior won't occur.
    if (this->isNearWall) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->fallTargetYaw, 1, 10000, 0);
        if (fabsf(this->actor.shape.rot.y - this->fallTargetYaw) < 100.0f) {
            this->isNearWall = false;
        }
    }

    curFrame = this->skelAnime.curFrame;
    rotX = curFrame * -3000.0f;
    rotX = CLAMP_MIN(rotX, -11000.0f);

    Matrix_RotateY(BINANG_TO_RAD_ALT(this->actor.shape.rot.y), MTXMODE_NEW);
    Matrix_RotateX(BINANG_TO_RAD_ALT(rotX), MTXMODE_APPLY);
    baseFireEffectPos.y = Rand_CenteredFloat(10.0f) + 30.0f;
    Matrix_MultVec3f(&baseFireEffectPos, &rotatedFireEffectPos);
    rotatedFireEffectPos.x += this->actor.world.pos.x + Rand_CenteredFloat(40.0f);
    rotatedFireEffectPos.y += this->actor.world.pos.y + Rand_CenteredFloat(40.0f);
    rotatedFireEffectPos.z += this->actor.world.pos.z + Rand_CenteredFloat(30.0f);
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 128, COLORFILTER_BUFFLAG_OPA, 8);
    EffectSsEnFire_SpawnVec3f(play, &this->actor, &rotatedFireEffectPos, 100, 0, 0, -1);

    if ((this->animLastFrame <= curFrame) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        Math_ApproachF(&this->actor.shape.yOffset, -4230.0f, 0.5f, 300.0f);
        if (this->actor.shape.yOffset < -2000.0f) {
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0xC0);
            Actor_Kill(&this->actor);
        }
    }
}

void EnAnubice_Update(Actor* thisx, PlayState* play) {
    f32 zero;
    BgHidanCurtain* flameCircle;
    s32 i;
    Vec3f baseKnockbackVelocity;
    Vec3f rotatedKnockbackVelocity;
    EnAnubice* this = (EnAnubice*)thisx;

    if ((this->actionFunc != EnAnubice_SetupDie) && (this->actionFunc != EnAnubice_Die) &&
        (this->actor.shape.yOffset == 0.0f)) {
        EnAnubice_Hover(this, play);
        for (i = 0; i < ARRAY_COUNT(this->flameCircles); i++) {
            flameCircle = this->flameCircles[i];

            if ((flameCircle != NULL) && (fabsf(flameCircle->actor.world.pos.x - this->actor.world.pos.x) < 60.0f) &&
                (fabsf(this->flameCircles[i]->actor.world.pos.z - this->actor.world.pos.z) < 60.0f) &&
                (flameCircle->timer != 0)) {
                Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                Enemy_StartFinishingBlow(play, &this->actor);
                Actor_PlaySfx(&this->actor, NA_SE_EN_ANUBIS_DEAD);
                this->actionFunc = EnAnubice_SetupDie;
                return;
            }
        }

        if (this->collider.base.acFlags & AC_HIT) {
            this->collider.base.acFlags &= ~AC_HIT;
            if (this->actor.colChkInfo.damageEffect == ANUBICE_DMGEFF_FIRE) {
                Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                Enemy_StartFinishingBlow(play, &this->actor);
                Actor_PlaySfx(&this->actor, NA_SE_EN_ANUBIS_DEAD);
                this->actionFunc = EnAnubice_SetupDie;
                return;
            }

            if (!this->isKnockedback) {
                this->knockbackTimer = 10;
                this->isKnockedback = true;

                baseKnockbackVelocity.x = 0.0f;
                baseKnockbackVelocity.y = 0.0f;
                baseKnockbackVelocity.z = -10.0f;
                rotatedKnockbackVelocity.x = 0.0f;
                rotatedKnockbackVelocity.y = 0.0f;
                rotatedKnockbackVelocity.z = 0.0f;

                Matrix_RotateY(BINANG_TO_RAD_ALT(this->actor.shape.rot.y), MTXMODE_NEW);
                Matrix_MultVec3f(&baseKnockbackVelocity, &rotatedKnockbackVelocity);

                this->actor.velocity.x = rotatedKnockbackVelocity.x;
                this->actor.velocity.z = rotatedKnockbackVelocity.z;
                this->knockbackRecoveryVelocity.x = -rotatedKnockbackVelocity.x;
                this->knockbackRecoveryVelocity.z = -rotatedKnockbackVelocity.z;

                Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_CUTBODY);
            }
        }

        if (this->isKnockedback) {
            this->actor.shape.rot.y += 6500;
            Math_ApproachF(&this->actor.velocity.x, this->knockbackRecoveryVelocity.x, 0.3f, 1.0f);
            Math_ApproachF(&this->actor.velocity.z, this->knockbackRecoveryVelocity.z, 0.3f, 1.0f);

            zero = 0.0f;
            if (zero) {}

            if (this->knockbackTimer == 0) {
                this->actor.velocity.x = this->actor.velocity.z = 0.0f;
                this->knockbackRecoveryVelocity.x = this->knockbackRecoveryVelocity.z = 0.0f;
                this->isKnockedback = false;
            }
        }
    }

    this->timeAlive++;

    if (this->knockbackTimer != 0) {
        this->knockbackTimer--;
    }

    if (this->deathTimer != 0) {
        this->deathTimer--;
    }

    this->actionFunc(this, play);

    this->actor.velocity.y += this->actor.gravity;
    Actor_UpdatePos(&this->actor);

    if (!this->isPlayerOutOfRange) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 5.0f, 10.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
    } else {
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 5.0f, 10.0f,
                                UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
    }

    if ((this->actionFunc != EnAnubice_SetupDie) && (this->actionFunc != EnAnubice_Die)) {
        Actor_SetFocus(&this->actor, this->focusHeightOffset);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);

        if (!this->isKnockedback && (this->actor.shape.yOffset == 0.0f)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
    }
}

s32 EnAnubice_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnAnubice* this = (EnAnubice*)thisx;

    if (limbIndex == ANUBICE_LIMB_HEAD) {
        rot->z += this->headPitch;
    }

    return false;
}

void EnAnubice_PostLimbDraw(struct PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnAnubice* this = (EnAnubice*)thisx;
    Vec3f pos = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == ANUBICE_LIMB_HEAD) {
        OPEN_DISPS(play->state.gfxCtx, "../z_en_anubice.c", 853);

        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_anubice.c", 856);
        gSPDisplayList(POLY_XLU_DISP++, gAnubiceEyesDL);
        Matrix_MultVec3f(&pos, &this->headPos);

        CLOSE_DISPS(play->state.gfxCtx, "../z_en_anubice.c", 868);
    }
}

void EnAnubice_Draw(Actor* thisx, PlayState* play) {
    EnAnubice* this = (EnAnubice*)thisx;

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnAnubice_OverrideLimbDraw,
                      EnAnubice_PostLimbDraw, this);
}
