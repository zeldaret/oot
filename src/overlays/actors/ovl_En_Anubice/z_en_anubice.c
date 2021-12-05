/*
 * File: z_en_anubice.c
 * Overlay: ovl_En_Anubice
 * Description: Anubis Body
 */

#include "z_en_anubice.h"
#include "objects/object_anubice/object_anubice.h"
#include "overlays/actors/ovl_En_Anubice_Tag/z_en_anubice_tag.h"
#include "overlays/actors/ovl_Bg_Hidan_Curtain/z_bg_hidan_curtain.h"
#include "vt.h"

#define FLAGS 0x00000015

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnAnubice_FindFlameCircles(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_SetupIdle(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_Idle(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_GoToHome(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubis_SetupShootFireball(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubis_ShootFireball(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_Die(EnAnubice* this, GlobalContext* globalCtx);

const ActorInit En_Anubice_InitVars = {
    ACTOR_EN_ANUBICE,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubice),
    (ActorFunc)EnAnubice_Init,
    (ActorFunc)EnAnubice_Destroy,
    (ActorFunc)EnAnubice_Update,
    (ActorFunc)EnAnubice_Draw,
};

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
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 29, 103, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable[] = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0xF),
    /* Slingshot     */ DMG_ENTRY(0, 0xF),
    /* Explosive     */ DMG_ENTRY(0, 0xF),
    /* Boomerang     */ DMG_ENTRY(0, 0xF),
    /* Normal arrow  */ DMG_ENTRY(0, 0xF),
    /* Hammer swing  */ DMG_ENTRY(1, 0xF),
    /* Hookshot      */ DMG_ENTRY(2, 0xF),
    /* Kokiri sword  */ DMG_ENTRY(0, 0xF),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(6, 0xF),
    /* Fire arrow    */ DMG_ENTRY(2, 0x2),
    /* Ice arrow     */ DMG_ENTRY(0, 0xF),
    /* Light arrow   */ DMG_ENTRY(0, 0xF),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0xF),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0xF),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0xF),
    /* Fire magic    */ DMG_ENTRY(3, 0x2),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(0, 0xF),
    /* Giant spin    */ DMG_ENTRY(6, 0xF),
    /* Master spin   */ DMG_ENTRY(2, 0xF),
    /* Kokiri jump   */ DMG_ENTRY(0, 0xF),
    /* Giant jump    */ DMG_ENTRY(12, 0xF),
    /* Master jump   */ DMG_ENTRY(4, 0xF),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

void EnAnubice_Hover(EnAnubice* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    this->hoverVelocityTimer += 1500.0f;
    this->targetHeight = player->actor.world.pos.y + this->playerHeightOffset;
    Math_ApproachF(&this->actor.world.pos.y, this->targetHeight, 0.1f, 10.0f);
    Math_ApproachF(&this->playerHeightOffset, 10.0f, 0.1f, 0.5f);
    this->actor.velocity.y = Math_SinS(this->hoverVelocityTimer);
}

void EnAnubice_SetFireballRot(EnAnubice* this, GlobalContext* globalCtx) {
    f32 xzdist;
    f32 x;
    f32 y;
    f32 z;
    Player* player = GET_PLAYER(globalCtx);

    x = player->actor.world.pos.x - this->fireballPos.x;
    y = player->actor.world.pos.y + 10.0f - this->fireballPos.y;
    z = player->actor.world.pos.z - this->fireballPos.z;
    xzdist = sqrtf(SQ(x) + SQ(z));

    this->fireballRot.x = -RADF_TO_BINANG(Math_FAtan2F(y, xzdist));
    this->fireballRot.y = RADF_TO_BINANG(Math_FAtan2F(x, z));
}

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = (EnAnubice*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &gAnubiceSkel, &gAnubiceIdleAnim, this->jointTable, this->morphTable,
                   16);

    osSyncPrintf("\n\n");
    // "☆☆☆☆☆ Anubis occurence ☆☆☆☆☆"
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ アヌビス発生 ☆☆☆☆☆ \n" VT_RST);

    this->actor.naviEnemyId = 0x3A;

    Collider_InitCylinder(globalCtx, &this->col);
    Collider_SetCylinder(globalCtx, &this->col, &this->actor, &sCylinderInit);

    Actor_SetScale(&this->actor, 0.015f);

    this->actor.colChkInfo.damageTable = sDamageTable;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.shape.yOffset = -4230.0f;
    this->focusHeightOffset = 0.0f;
    this->actor.flags &= ~1;
    this->home = this->actor.world.pos;
    this->actor.targetMode = 3;
    this->actionFunc = EnAnubice_FindFlameCircles;
}

void EnAnubice_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = (EnAnubice*)thisx;
    EnAnubiceTag* temp_v1;

    Collider_DestroyCylinder(globalCtx, &this->col);

    if (this->actor.params != 0) {
        if (this->actor.parent) {}

        temp_v1 = (EnAnubiceTag*)this->actor.parent;
        if (temp_v1 != NULL && temp_v1->actor.update != NULL) {
            temp_v1->anubis = NULL;
        }
    }
}

void EnAnubice_FindFlameCircles(EnAnubice* this, GlobalContext* globalCtx) {
    Actor* currentProp;
    s32 flameCirclesFound;

    if (this->isMirroringLink) {
        if (!this->hasSearchedForFlameCircles) {
            flameCirclesFound = 0;
            currentProp = globalCtx->actorCtx.actorLists[ACTORCAT_PROP].head;
            while (currentProp != NULL) {
                if (currentProp->id != ACTOR_BG_HIDAN_CURTAIN) {
                    currentProp = currentProp->next;
                } else {
                    this->flameCircles[flameCirclesFound] = (BgHidanCurtain*)currentProp;
                    // "☆☆☆☆☆ How many fires? ☆☆☆☆☆"
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %d\n" VT_RST, flameCirclesFound);
                    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %x\n" VT_RST,
                                 this->flameCircles[flameCirclesFound]);
                    if (flameCirclesFound < 4) {
                        flameCirclesFound++;
                    }
                    currentProp = currentProp->next;
                }
            }
            this->hasSearchedForFlameCircles = true;
        }
        this->actor.flags |= 1;
        this->actionFunc = EnAnubice_SetupIdle;
    }
}

void EnAnubice_SetupIdle(EnAnubice* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&gAnubiceIdleAnim);

    Animation_Change(&this->skelAnime, &gAnubiceIdleAnim, 1.0f, 0.0f, (s16)lastFrame, ANIMMODE_LOOP, -10.0f);

    this->actionFunc = EnAnubice_Idle;
    this->actor.velocity.x = this->actor.velocity.z = this->actor.gravity = 0.0f;
}

void EnAnubice_Idle(EnAnubice* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.shape.yOffset, 0.5f, 300.0f);
    Math_ApproachF(&this->focusHeightOffset, 70.0f, 0.5f, 5.0f);

    if (!this->isKnockedback) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }

    if (this->actor.shape.yOffset > -2.0f) {
        this->actor.shape.yOffset = 0.0f;

        if (player->swordState != 0) {
            this->actionFunc = EnAnubis_SetupShootFireball;
        } else if (this->isLinkOutOfRange) {
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = -1.0f;
            this->actionFunc = EnAnubice_GoToHome;
        }
    }
}

void EnAnubice_GoToHome(EnAnubice* this, GlobalContext* globalCtx) {
    f32 xzdist;
    f32 xRatio;
    f32 zRatio;
    f32 x;
    f32 z;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.shape.yOffset, -4230.0f, 0.5f, 300.0f);
    Math_ApproachZeroF(&this->focusHeightOffset, 0.5f, 5.0f);

    if (!this->isKnockedback) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }

    if (fabsf(this->home.x - this->actor.world.pos.x) > 3.0f && fabsf(this->home.z - this->actor.world.pos.z) > 3.0f) {
        x = this->home.x - this->actor.world.pos.x;
        z = this->home.z - this->actor.world.pos.z;
        xzdist = sqrtf(SQ(x) + SQ(z));
        xRatio = ((x) / xzdist);
        zRatio = ((z) / xzdist);
        this->actor.world.pos.x += (xRatio * 8);
        this->actor.world.pos.z += (zRatio * 8.0f);
    } else if (this->actor.shape.yOffset < -4220.0f) {
        this->actor.shape.yOffset = -4230.0f;
        this->isMirroringLink = this->isLinkOutOfRange = false;
        this->actionFunc = EnAnubice_FindFlameCircles;
        this->actor.gravity = 0.0f;
    }
}

void EnAnubis_SetupShootFireball(EnAnubice* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&gAnubiceAttackingAnim);

    this->animLastFrame = lastFrame;
    Animation_Change(&this->skelAnime, &gAnubiceAttackingAnim, 1.0f, 0.0f, lastFrame, ANIMMODE_ONCE, -10.0f);
    this->actionFunc = EnAnubis_ShootFireball;
    this->actor.velocity.x = this->actor.velocity.z = 0.0f;
}

void EnAnubis_ShootFireball(EnAnubice* this, GlobalContext* globalCtx) {
    f32 curFrame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);

    if (!this->isKnockedback) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }

    EnAnubice_SetFireballRot(this, globalCtx);

    if (curFrame == 12.0f) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ANUBICE_FIRE, this->fireballPos.x,
                    this->fireballPos.y + 15.0f, this->fireballPos.z, this->fireballRot.x, this->fireballRot.y, 0, 0);
    }

    if (this->animLastFrame <= curFrame) {
        this->actionFunc = EnAnubice_SetupIdle;
    }
}

void EnAnubice_SetupDie(EnAnubice* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&gAnubiceFallDownAnim);

    this->animLastFrame = lastFrame;
    Animation_Change(&this->skelAnime, &gAnubiceFallDownAnim, 1.0f, 0.0f, lastFrame, ANIMMODE_ONCE, -20.0f);

    this->unk_256 = false;
    this->unk_258 = 0;
    this->deathTimer = 20;
    this->actor.velocity.x = this->actor.velocity.z = 0.0f;
    this->actor.gravity = -1.0f;

    if (BgCheck_SphVsFirstPoly(&globalCtx->colCtx, &this->fireballPos, 70.0f)) {
        this->unk_256 = true;
        this->unk_258 = this->actor.shape.rot.x - 0x7F00;
    }

    this->actionFunc = EnAnubice_Die;
}

void EnAnubice_Die(EnAnubice* this, GlobalContext* globalCtx) {
    f32 curFrame;
    f32 phi_f2;
    Vec3f sp4C = { 0.0f, 0.0f, 0.0f };
    Vec3f fireEffectPos = { 0.0f, 0.0f, 0.0f };
    s32 pad;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.shape.shadowScale, 0.4f, 0.25f);

    if (this->unk_256) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->unk_258, 1, 10000, 0);
        if (fabsf(this->actor.shape.rot.y - this->unk_258) < 100.0f) {
            this->unk_256 = false;
        }
    }

    curFrame = this->skelAnime.curFrame;
    phi_f2 = curFrame * -3000.0f;
    phi_f2 = CLAMP_MIN(phi_f2, -11000.0f);

    Matrix_RotateY(BINANG_TO_RAD(this->actor.shape.rot.y), MTXMODE_NEW);
    Matrix_RotateX(BINANG_TO_RAD(phi_f2), MTXMODE_APPLY);
    sp4C.y = Rand_CenteredFloat(10.0f) + 30.0f;
    Matrix_MultVec3f(&sp4C, &fireEffectPos);
    fireEffectPos.x += this->actor.world.pos.x + Rand_CenteredFloat(40.0f);
    fireEffectPos.y += this->actor.world.pos.y + Rand_CenteredFloat(40.0f);
    fireEffectPos.z += this->actor.world.pos.z + Rand_CenteredFloat(30.0f);
    Actor_SetColorFilter(&this->actor, 0x4000, 0x80, 0, 8);
    EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &fireEffectPos, 100, 0, 0, -1);

    if (this->animLastFrame <= curFrame && (this->actor.bgCheckFlags & 1)) {
        Math_ApproachF(&this->actor.shape.yOffset, -4230.0f, 0.5f, 300.0f);
        if (this->actor.shape.yOffset < -2000.0f) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xC0);
            Actor_Kill(&this->actor);
        }
    }
}

void EnAnubice_Update(Actor* thisx, GlobalContext* globalCtx) {
    f32 zero;
    BgHidanCurtain* flameCircle;
    s32 i;
    Vec3f sp48;
    Vec3f sp3C;
    EnAnubice* this = (EnAnubice*)thisx;

    if (this->actionFunc != EnAnubice_SetupDie && this->actionFunc != EnAnubice_Die &&
        this->actor.shape.yOffset == 0.0f) {
        EnAnubice_Hover(this, globalCtx);
        for (i = 0; i < 5; i++) {
            flameCircle = this->flameCircles[i];

            if (flameCircle != NULL && fabsf(flameCircle->actor.world.pos.x - this->actor.world.pos.x) < 60.0f &&
                fabsf(this->flameCircles[i]->actor.world.pos.z - this->actor.world.pos.z) < 60.0f &&
                flameCircle->timer != 0) {
                Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
                this->actor.flags &= ~1;
                Enemy_StartFinishingBlow(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_DEAD);
                this->actionFunc = EnAnubice_SetupDie;
                return;
            }
        }

        if (this->col.base.acFlags & 2) {
            this->col.base.acFlags &= ~2;
            if (this->actor.colChkInfo.damageEffect == 2) {
                Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
                this->actor.flags &= ~1;
                Enemy_StartFinishingBlow(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_DEAD);
                this->actionFunc = EnAnubice_SetupDie;
                return;
            }

            if (!this->isKnockedback) {
                this->knockbackTimer = 10;
                this->isKnockedback = true;

                sp48.x = 0.0f;
                sp48.y = 0.0f;
                sp48.z = -10.0f;
                sp3C.x = 0.0f;
                sp3C.y = 0.0f;
                sp3C.z = 0.0f;

                Matrix_RotateY(BINANG_TO_RAD(this->actor.shape.rot.y), MTXMODE_NEW);
                Matrix_MultVec3f(&sp48, &sp3C);

                this->actor.velocity.x = sp3C.x;
                this->actor.velocity.z = sp3C.z;
                this->knockbackRecoveryVelocity.x = -sp3C.x;
                this->knockbackRecoveryVelocity.z = -sp3C.z;

                Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_CUTBODY);
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

    this->actionFunc(this, globalCtx);

    this->actor.velocity.y += this->actor.gravity;
    func_8002D7EC(&this->actor);

    if (!this->isLinkOutOfRange) {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 5.0f, 5.0f, 10.0f, 0x1D);
    } else {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 5.0f, 5.0f, 10.0f, 0x1C);
    }

    if (this->actionFunc != EnAnubice_SetupDie && this->actionFunc != EnAnubice_Die) {
        Actor_SetFocus(&this->actor, this->focusHeightOffset);
        Collider_UpdateCylinder(&this->actor, &this->col);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->col.base);

        if (!this->isKnockedback && this->actor.shape.yOffset == 0.0f) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->col.base);
        }
    }
}

s32 EnAnubis_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                              void* thisx) {
    EnAnubice* this = (EnAnubice*)thisx;

    if (limbIndex == 13) {
        rot->z += this->unk_278;
    }

    return false;
}

void EnAnubis_PostLimbDraw(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnAnubice* this = (EnAnubice*)thisx;
    Vec3f pos = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_anubice.c", 853);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_anubice.c", 856),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gAnubiceEyesDL);
        Matrix_MultVec3f(&pos, &this->fireballPos);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_anubice.c", 868);
    }
}

void EnAnubice_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = (EnAnubice*)thisx;

    func_80093D84(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnAnubis_OverrideLimbDraw,
                      EnAnubis_PostLimbDraw, this);
}
