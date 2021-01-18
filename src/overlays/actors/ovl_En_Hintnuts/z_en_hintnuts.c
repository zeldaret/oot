/*
 * File: z_en_hintnuts.c
 * Overlay: ovl_En_Hintnuts
 * Description: Hint Deku Scrubs (Deku Tree)
 */

#include "z_en_hintnuts.h"

#define FLAGS 0x00000005

#define THIS ((EnHintnuts*)thisx)

void EnHintnuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnHintnuts_SetupWait(EnHintnuts* this);
void EnHintnuts_Wait(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_LookAround(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_Stand(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_ThrowNut(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_Burrow(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_BeginRun(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_BeginFreeze(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_Run(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_Talk(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_Leave(EnHintnuts* this, GlobalContext* globalCtx);
void EnHintnuts_Freeze(EnHintnuts* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000168;
extern Gfx D_060014E0[];
extern SkeletonHeader D_060023B8;
extern AnimationHeader D_060024CC;
extern AnimationHeader D_060026C4;
extern AnimationHeader D_06002B90;
extern AnimationHeader D_06002894;
extern AnimationHeader D_060029BC;
extern AnimationHeader D_06002E84;
extern AnimationHeader D_06002F7C;
extern AnimationHeader D_06003128;

const ActorInit En_Hintnuts_InitVars = {
    ACTOR_EN_HINTNUTS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_HINTNUTS,
    sizeof(EnHintnuts),
    (ActorFunc)EnHintnuts_Init,
    (ActorFunc)EnHintnuts_Destroy,
    (ActorFunc)EnHintnuts_Update,
    (ActorFunc)EnHintnuts_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT6,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 18, 32, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 18, 32, MASS_HEAVY };

static s16 sPuzzleCounter = 0;

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(gravity, -1, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2600, ICHAIN_STOP),
};

void EnHintnuts_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (this->actor.params == 0xA) {
        this->actor.flags &= ~5;
    } else {
        ActorShape_Init(&this->actor.shape, 0x0, ActorShadow_DrawFunc_Circle, 35.0f);
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_060023B8, &D_06002F7C, this->jointTable, this->morphTable, 10);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
        Actor_SetTextWithPrefix(globalCtx, &this->actor, (this->actor.params >> 8) & 0xFF);
        this->textIdCopy = this->actor.textId;
        this->actor.params &= 0xFF;
        sPuzzleCounter = 0;
        if (this->actor.textId == 0x109B) { // "Please forgive me, master!..."
            if (Flags_GetClear(globalCtx, 0x9) != 0) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        EnHintnuts_SetupWait(this);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_HINTNUTS, this->actor.posRot.pos.x,
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.posRot.rot.y, 0, 0xA);
    }
}

void EnHintnuts_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    if (this->actor.params != 0xA) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void EnHintnuts_HitByScrubProjectile1(EnHintnuts* this, GlobalContext* globalCtx) {
    if (this->actor.textId != 0 && this->actor.type == ACTORTYPE_ENEMY &&
        ((this->actor.params == 0) || (sPuzzleCounter == 2))) {
        this->actor.flags &= ~0x5;
        this->actor.flags |= 0x9;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_BG);
    }
}

void EnHintnuts_SetupWait(EnHintnuts* this) {
    Animation_PlayOnceSetSpeed(&this->skelAnime, &D_06002B90, 0.0f);
    this->animFlagAndTimer = Rand_S16Offset(100, 50);
    this->collider.dim.height = 5;
    this->actor.posRot.pos = this->actor.initPosRot.pos;
    this->collider.base.acFlags &= ~AC_ON;
    this->actionFunc = EnHintnuts_Wait;
}

void EnHintnuts_SetupLookAround(EnHintnuts* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06002894);
    this->animFlagAndTimer = 2;
    this->actionFunc = EnHintnuts_LookAround;
}

void EnHintnuts_SetupThrowScrubProjectile(EnHintnuts* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06000168);
    this->actionFunc = EnHintnuts_ThrowNut;
}

void EnHintnuts_SetupStand(EnHintnuts* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_06002F7C, -3.0f);
    if (this->actionFunc == EnHintnuts_ThrowNut) {
        this->animFlagAndTimer = 2 | 0x1000; // sets timer and flag
    } else {
        this->animFlagAndTimer = 1;
    }
    this->actionFunc = EnHintnuts_Stand;
}

void EnHintnuts_SetupBurrow(EnHintnuts* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_060024CC, -5.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DOWN);
    this->actionFunc = EnHintnuts_Burrow;
}

void EnHintnuts_HitByScrubProjectile2(EnHintnuts* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_060026C4, -3.0f);
    this->collider.dim.height = 0x25;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DAMAGE);
    this->collider.base.acFlags &= ~AC_ON;

    if (this->actor.params > 0 && this->actor.params < 4 && this->actor.type == ACTORTYPE_ENEMY) {
        if (sPuzzleCounter == -4) {
            sPuzzleCounter = 0;
        }
        if (this->actor.params == sPuzzleCounter + 1) {
            sPuzzleCounter++;
        } else {
            if (sPuzzleCounter > 0) {
                sPuzzleCounter = -sPuzzleCounter;
            }
            sPuzzleCounter--;
        }
        this->actor.flags |= 0x10;
        this->actionFunc = EnHintnuts_BeginFreeze;
    } else {
        this->actionFunc = EnHintnuts_BeginRun;
    }
}

void EnHintnuts_SetupRun(EnHintnuts* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06003128);
    this->animFlagAndTimer = 5;
    this->actionFunc = EnHintnuts_Run;
}

void EnHintnuts_SetupTalk(EnHintnuts* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_06002E84, -5.0f);
    this->actionFunc = EnHintnuts_Talk;
    this->actor.speedXZ = 0.0f;
}

void EnHintnuts_SetupLeave(EnHintnuts* this, GlobalContext* globalCtx) {
    Animation_MorphToLoop(&this->skelAnime, &D_06003128, -5.0f);
    this->actor.speedXZ = 3.0f;
    this->animFlagAndTimer = 100;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->collider.base.ocFlags1 &= ~OC1_ON;
    this->actor.flags |= 0x10;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DAMAGE);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                this->actor.posRot.pos.z, 0x0, 0x0, 0x0, 0x3); // recovery heart
    this->actionFunc = EnHintnuts_Leave;
}

void EnHintnuts_SetupFreeze(EnHintnuts* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060029BC);
    this->actor.flags &= ~1;
    func_8003426C(&this->actor, 0, 0xFF, 0, 100);
    this->actor.dmgEffectTimer = 1;
    this->animFlagAndTimer = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_FAINT);
    if (sPuzzleCounter == -3) {
        func_80078884(NA_SE_SY_ERROR);
        sPuzzleCounter = -4;
    }
    this->actionFunc = EnHintnuts_Freeze;
}

void EnHintnuts_Wait(EnHintnuts* this, GlobalContext* globalCtx) {
    s32 hasSlowPlaybackSpeed = false;

    if (this->skelAnime.playSpeed < 0.5f) {
        hasSlowPlaybackSpeed = true;
    }
    if (hasSlowPlaybackSpeed && (this->animFlagAndTimer != 0)) {
        this->animFlagAndTimer--;
    }
    if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
        this->collider.base.acFlags |= AC_ON;
    } else if (Animation_OnFrame(&this->skelAnime, 8.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
    }

    this->collider.dim.height = 5.0f + ((CLAMP(this->skelAnime.curFrame, 9.0f, 12.0f) - 9.0f) * 9.0f);
    if (!hasSlowPlaybackSpeed && (this->actor.xzDistToLink < 120.0f)) {
        EnHintnuts_SetupBurrow(this);
    } else if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.xzDistToLink < 120.0f) {
            EnHintnuts_SetupBurrow(this);
        } else if ((this->animFlagAndTimer == 0) && (this->actor.xzDistToLink > 320.0f)) {
            EnHintnuts_SetupLookAround(this);
        } else {
            EnHintnuts_SetupStand(this);
        }
    }
    if (hasSlowPlaybackSpeed && 160.0f < this->actor.xzDistToLink && fabsf(this->actor.yDistToLink) < 120.0f &&
        ((this->animFlagAndTimer == 0) || (this->actor.xzDistToLink < 480.0f))) {
        this->skelAnime.playSpeed = 1.0f;
    }
}

void EnHintnuts_LookAround(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) && this->animFlagAndTimer != 0) {
        this->animFlagAndTimer--;
    }
    if ((this->actor.xzDistToLink < 120.0f) || (this->animFlagAndTimer == 0)) {
        EnHintnuts_SetupBurrow(this);
    }
}

void EnHintnuts_Stand(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) && this->animFlagAndTimer != 0) {
        this->animFlagAndTimer--;
    }
    if (!(this->animFlagAndTimer & 0x1000)) {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
    }
    if (this->actor.xzDistToLink < 120.0f || this->animFlagAndTimer == 0x1000) {
        EnHintnuts_SetupBurrow(this);
    } else if (this->animFlagAndTimer == 0) {
        EnHintnuts_SetupThrowScrubProjectile(this);
    }
}

void EnHintnuts_ThrowNut(EnHintnuts* this, GlobalContext* globalCtx) {
    Vec3f nutPos;

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
    if (this->actor.xzDistToLink < 120.0f) {
        EnHintnuts_SetupBurrow(this);
    } else if (SkelAnime_Update(&this->skelAnime)) {
        EnHintnuts_SetupStand(this);
    } else if (Animation_OnFrame(&this->skelAnime, 6.0f)) {
        nutPos.x = this->actor.posRot.pos.x + (Math_SinS(this->actor.shape.rot.y) * 23.0f);
        nutPos.y = this->actor.posRot.pos.y + 12.0f;
        nutPos.z = this->actor.posRot.pos.z + (Math_CosS(this->actor.shape.rot.y) * 23.0f);
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_NUTSBALL, nutPos.x, nutPos.y, nutPos.z,
                        this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 1) != NULL) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
        }
    }
}

void EnHintnuts_Burrow(EnHintnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnHintnuts_SetupWait(this);
    } else {
        this->collider.dim.height = 5.0f + ((3.0f - CLAMP(this->skelAnime.curFrame, 1.0f, 3.0f)) * 12.0f);
    }
    if (Animation_OnFrame(&this->skelAnime, 4.0f)) {
        this->collider.base.acFlags &= ~AC_ON;
    }

    Math_ApproachF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.5f, 3.0f);
    Math_ApproachF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 0.5f, 3.0f);
}

void EnHintnuts_BeginRun(EnHintnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->unk_196 = this->actor.yawTowardsLink + 0x8000;
        EnHintnuts_SetupRun(this);
    }
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
}

void EnHintnuts_BeginFreeze(EnHintnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnHintnuts_SetupFreeze(this);
    }
}

void EnHintnuts_CheckProximity(EnHintnuts* this, GlobalContext* globalCtx) {
    if (this->actor.type != ACTORTYPE_ENEMY) {
        if ((this->collider.base.ocFlags1 & OC1_HIT) || (this->actor.unk_10C != 0)) {
            this->actor.flags |= 0x10000;
        } else {
            this->actor.flags &= ~0x10000;
        }
        if (this->actor.xzDistToLink < 130.0f) {
            this->actor.textId = this->textIdCopy;
            func_8002F2F4(&this->actor, globalCtx);
        }
    }
}

void EnHintnuts_Run(EnHintnuts* this, GlobalContext* globalCtx) {
    s32 temp_ret;
    s16 diffRotInit;
    s16 diffRot;
    f32 phi_f0;

    SkelAnime_Update(&this->skelAnime);
    temp_ret = Animation_OnFrame(&this->skelAnime, 0.0f);
    if (temp_ret != 0 && this->animFlagAndTimer != 0) {
        this->animFlagAndTimer--;
    }
    if ((temp_ret != 0) || (Animation_OnFrame(&this->skelAnime, 6.0f))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }

    Math_StepToF(&this->actor.speedXZ, 7.5f, 1.0f);
    if (Math_SmoothStepToS(&this->actor.posRot.rot.y, this->unk_196, 1, 0xE38, 0xB6) == 0) {
        if (this->actor.bgCheckFlags & 0x20) {
            this->unk_196 = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);
        } else if (this->actor.bgCheckFlags & 8) {
            this->unk_196 = this->actor.wallPolyRot;
        } else if (this->animFlagAndTimer == 0) {
            diffRotInit = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);
            diffRot = diffRotInit - this->actor.yawTowardsLink;
            if (ABS(diffRot) >= 0x2001) {
                this->unk_196 = diffRotInit;
            } else {
                phi_f0 = (0.0f <= (f32)diffRot) ? 1.0f : -1.0f;
                this->unk_196 = (s16)((phi_f0 * -8192.0f) + (f32)this->actor.yawTowardsLink);
            }
        } else {
            this->unk_196 = (s16)(this->actor.yawTowardsLink + 0x8000);
        }
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y + 0x8000;
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        EnHintnuts_SetupTalk(this);
    } else if (this->animFlagAndTimer == 0 && func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) < 20.0f &&
               fabsf(this->actor.posRot.pos.y - this->actor.initPosRot.pos.y) < 2.0f) {
        this->actor.speedXZ = 0.0f;
        if (this->actor.type == ACTORTYPE_BG) {
            this->actor.flags &= ~0x00010009;
            this->actor.flags |= 0x5;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
        }
        EnHintnuts_SetupBurrow(this);
    } else {
        EnHintnuts_CheckProximity(this, globalCtx);
    }
}

void EnHintnuts_Talk(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x3, 0x400, 0x100);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        EnHintnuts_SetupLeave(this, globalCtx);
    }
}

void EnHintnuts_Leave(EnHintnuts* this, GlobalContext* globalCtx) {
    s16 temp_a1;

    SkelAnime_Update(&this->skelAnime);
    if (this->animFlagAndTimer != 0) {
        this->animFlagAndTimer--;
    }
    if ((Animation_OnFrame(&this->skelAnime, 0.0f)) || (Animation_OnFrame(&this->skelAnime, 6.0f))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if (this->actor.bgCheckFlags & 8) {
        temp_a1 = this->actor.wallPolyRot;
    } else {
        temp_a1 =
            this->actor.yawTowardsLink - Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) - 0x8000;
        if (ABS(temp_a1) >= 0x4001) {
            temp_a1 = Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) + 0x8000;
        } else {
            temp_a1 = Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) - (temp_a1 >> 1) + 0x8000;
        }
    }
    Math_ScaledStepToS(&this->actor.shape.rot.y, temp_a1, 0x800);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if ((this->animFlagAndTimer == 0) || (this->actor.projectedPos.z < 0.0f)) {
        func_80106CCC(globalCtx);
        if (this->actor.params == 3) {
            Flags_SetClear(globalCtx, this->actor.room);
            sPuzzleCounter = 3;
        }
        if (this->actor.child != NULL) {
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this->actor.child, ACTORTYPE_PROP);
        }
        Actor_Kill(&this->actor);
    }
}

void EnHintnuts_Freeze(EnHintnuts* this, GlobalContext* globalCtx) {
    this->actor.dmgEffectTimer = 1;
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_FAINT);
    }
    if (this->animFlagAndTimer == 0) {
        if (sPuzzleCounter == 3) {
            if (this->actor.child != NULL) {
                Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this->actor.child, ACTORTYPE_PROP);
            }
            this->animFlagAndTimer = 1;
        } else if (sPuzzleCounter == -4) {
            this->animFlagAndTimer = 2;
        }
    } else if (Math_StepToF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 35.0f, 7.0f) != 0) {
        if (this->animFlagAndTimer == 1) {
            Actor_Kill(&this->actor);
        } else {
            this->actor.flags |= 1;
            this->actor.flags &= ~0x10;
            this->actor.colChkInfo.health = sColChkInfoInit.health;
            this->actor.dmgEffectTimer = 0;
            EnHintnuts_SetupWait(this);
        }
    }
}

void EnHintnuts_ColliderCheck(EnHintnuts* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        func_80035650(&this->actor, &this->collider.info, 1);
        if (this->collider.base.ac->id != ACTOR_EN_NUTSBALL) {
            EnHintnuts_SetupBurrow(this);
        } else {
            EnHintnuts_HitByScrubProjectile1(this, globalCtx);
            EnHintnuts_HitByScrubProjectile2(this);
        }
    } else if (globalCtx->actorCtx.unk_02 != 0) {
        EnHintnuts_HitByScrubProjectile1(this, globalCtx);
        EnHintnuts_HitByScrubProjectile2(this);
    }
}

void EnHintnuts_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    s32 pad;

    if (this->actor.params != 0xA) {
        EnHintnuts_ColliderCheck(this, globalCtx);
        this->actionFunc(this, globalCtx);
        if (this->actionFunc != EnHintnuts_Freeze && this->actionFunc != EnHintnuts_BeginFreeze) {
            Actor_MoveForward(&this->actor);
            func_8002E4B4(globalCtx, &this->actor, 20.0f, this->collider.dim.radius, this->collider.dim.height, 0x1D);
        }
        Collider_UpdateCylinder(&this->actor, &this->collider);
        if (this->collider.base.acFlags & AC_ON) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (this->actionFunc == EnHintnuts_Wait) {
            Actor_SetHeight(&this->actor, this->skelAnime.curFrame);
        } else if (this->actionFunc == EnHintnuts_Burrow) {
            Actor_SetHeight(&this->actor,
                            20.0f - ((this->skelAnime.curFrame * 20.0f) / Animation_GetLastFrame(&D_060024CC)));
        } else {
            Actor_SetHeight(&this->actor, 20.0f);
        }
    }
}

s32 EnHintnuts_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void* thisx) {
    Vec3f vec;
    f32 curFrame;
    EnHintnuts* this = THIS;

    if (limbIndex == 5 && this->actionFunc == EnHintnuts_ThrowNut) {
        curFrame = this->skelAnime.curFrame;
        if (curFrame <= 6.0f) {
            vec.y = 1.0f - (curFrame * 0.0833f);
            vec.z = 1.0f + (curFrame * 0.1167f);
            vec.x = 1.0f + (curFrame * 0.1167f);
        } else if (curFrame <= 7.0f) {
            curFrame -= 6.0f;
            vec.y = 0.5f + curFrame;
            vec.z = 1.7f - (curFrame * 0.7f);
            vec.x = 1.7f - (curFrame * 0.7f);
        } else if (curFrame <= 10.0f) {
            vec.y = 1.5f - ((curFrame - 7.0f) * 0.1667f);
            vec.z = 1.0f;
            vec.x = 1.0f;
        } else {
            return false;
        }
        Matrix_Scale(vec.x, vec.y, vec.z, MTXMODE_APPLY);
    }
    return false;
}

void EnHintnuts_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;

    if (this->actor.params == 0xA) {
        Gfx_DrawDListOpa(globalCtx, D_060014E0);
    } else {
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHintnuts_OverrideLimbDraw,
                          NULL, this);
    }
}
