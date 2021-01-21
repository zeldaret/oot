/*
 * File: z_en_wallmas
 * Overlay: En_Wallmas
 * Description: Wallmaster (Ceiling monster)
 */

#include "z_en_wallmas.h"

#define FLAGS 0x00000015

#define THIS ((EnWallmas*)thisx)

#define TIMER_SCALE ((f32)OS_CLOCK_RATE / 10000000000)
#define DEGREE_60_RAD 1.0471975803375244140625f
#define DEGREE_15_RAD 0.261799395084381103515625f

#define DAMAGE_EFFECT_BURN 2
#define DAMAGE_EFFECT_STUN_WHITE 4
#define DAMAGE_EFFECT_STUN_BLUE 1

void EnWallmas_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWallmas_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWallmas_Update(Actor* thisx, GlobalContext* globalCtx);
void EnWallmas_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnWallmas_TimerInit(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_ProximityOrSwitchInit(EnWallmas* this);
void EnWallmas_WaitToDrop(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Drop(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Land(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Stand(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_JumpToCeiling(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_ReturnToCeiling(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_TakeDamage(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Cooldown(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Die(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_TakePlayer(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_WaitForProximity(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_WaitForSwitchFlag(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Stun(EnWallmas* this, GlobalContext* globalCtx);
void EnWallmas_Walk(EnWallmas* this, GlobalContext* globalCtx);

const ActorInit En_Wallmas_InitVars = {
    ACTOR_EN_WALLMAS,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnWallmas),
    (ActorFunc)EnWallmas_Init,
    (ActorFunc)EnWallmas_Destroy,
    (ActorFunc)EnWallmas_Update,
    (ActorFunc)EnWallmas_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT0,
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
    { 30, 40, 0, { 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 4, 30, 40, 150 };

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(1, 0x0),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x1),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(2, 0x0),
    /* Giant's Knife */ DMG_ENTRY(4, 0x0),
    /* Fire arrow    */ DMG_ENTRY(4, 0x2),
    /* Ice arrow     */ DMG_ENTRY(2, 0x0),
    /* Light arrow   */ DMG_ENTRY(4, 0x4),
    /* Unk arrow 1   */ DMG_ENTRY(4, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(2, 0x0),
    /* Fire magic    */ DMG_ENTRY(4, 0x2),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(4, 0x4),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0x0),
    /* Giant spin    */ DMG_ENTRY(4, 0x0),
    /* Master spin   */ DMG_ENTRY(2, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(8, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 0x30, 1),
    ICHAIN_F32(targetArrowOffset, 0x157C, 1),
    ICHAIN_F32_DIV1000(gravity, -1500, 0),
};

extern AnimationHeader D_06000EA4;
extern AnimationHeader D_06000590;
extern AnimationHeader D_0600299C;
extern FlexSkeletonHeader D_06008FB0;
extern AnimationHeader D_06009DB0;
extern AnimationHeader D_060019CC;
extern AnimationHeader D_06009520;
extern AnimationHeader D_06009244;
extern AnimationHeader D_060041F4;
extern AnimationHeader D_0600A054;
extern Gfx D_06008688[];

void EnWallmas_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWallmas* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    ActorShape_Init(&thisx->shape, 0, NULL, 0.5f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06008FB0, &D_06009DB0, this->jointTable, this->morphTable, 25);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    CollisionCheck_SetInfo(&thisx->colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->switchFlag = (u8)(thisx->params >> 0x8);
    thisx->params = thisx->params & 0xFF;

    if (thisx->params == WMT_FLAG) {
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            Actor_Kill(thisx);
            return;
        }

        EnWallmas_ProximityOrSwitchInit(this);
    } else if (thisx->params == WMT_PROXIMITY) {
        EnWallmas_ProximityOrSwitchInit(this);
    } else {
        EnWallmas_TimerInit(this, globalCtx);
    }
}

void EnWallmas_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnWallmas* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnWallmas_TimerInit(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->actor.flags &= ~1;
    this->actor.flags |= 0x20;
    this->timer = 0x82;
    this->actor.velocity.y = 0.0f;
    this->actor.world.pos.y = player->actor.world.pos.y;
    this->actor.floorHeight = player->actor.floorHeight;
    this->actor.draw = EnWallmas_Draw;
    this->actionFunc = EnWallmas_WaitToDrop;
}

void EnWallmas_SetupDrop(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    AnimationHeader* objSegChangee = &D_0600299C;

    Animation_Change(&this->skelAnime, objSegChangee, 0.0f, 20.0f, Animation_GetLastFrame(&D_0600299C), ANIMMODE_ONCE,
                     0.0f);

    this->yTarget = player->actor.world.pos.y;
    this->actor.world.pos.y = player->actor.world.pos.y + 300.0f;
    this->actor.world.rot.y = player->actor.shape.rot.y + 0x8000;
    this->actor.floorHeight = player->actor.floorHeight;
    this->actor.flags |= 1;
    this->actor.flags &= ~0x20;
    this->actionFunc = EnWallmas_Drop;
}

void EnWallmas_SetupLand(EnWallmas* this, GlobalContext* globalCtx) {
    AnimationHeader* objSegFrameCount = &D_060019CC;
    AnimationHeader* objSegChangee = &D_060019CC;

    Animation_Change(&this->skelAnime, objSegChangee, 1.0f, 41.0f, Animation_GetLastFrame(objSegFrameCount),
                     ANIMMODE_ONCE, -3.0f);

    func_80033260(globalCtx, &this->actor, &this->actor.world.pos, 15.0f, 6, 20.0f, 0x12C, 0x64, 1);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_LAND);
    this->actionFunc = EnWallmas_Land;
}

void EnWallmas_SetupStand(EnWallmas* this) {
    Animation_PlayOnce(&this->skelAnime, &D_0600A054);
    this->actionFunc = EnWallmas_Stand;
}

void EnWallmas_SetupWalk(EnWallmas* this) {
    Animation_PlayOnceSetSpeed(&this->skelAnime, &D_060041F4, 3.0f);
    this->actionFunc = EnWallmas_Walk;
    this->actor.speedXZ = 3.0f;
}

void EnWallmas_SetupJumpToCeiling(EnWallmas* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06009244);
    this->actionFunc = EnWallmas_JumpToCeiling;
    this->actor.speedXZ = 0.0f;
}
void EnWallmas_SetupReturnToCeiling(EnWallmas* this) {
    AnimationHeader* objSegFrameCount = &D_060019CC;
    AnimationHeader* objSegChangee = &D_060019CC;

    this->timer = 0;
    this->actor.speedXZ = 0.0f;

    Animation_Change(&this->skelAnime, objSegChangee, 3.0f, 0.0f, Animation_GetLastFrame(objSegFrameCount),
                     ANIMMODE_ONCE, -3.0f);

    this->actionFunc = EnWallmas_ReturnToCeiling;
}

void EnWallmas_SetupTakeDamage(EnWallmas* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06000590, -3.0f);
    if (this->collider.info.acHitInfo->toucher.dmgFlags & 0x0001F824) {
        this->actor.world.rot.y = this->collider.base.ac->world.rot.y;
    } else {
        this->actor.world.rot.y = Actor_WorldYawTowardActor(&this->actor, this->collider.base.ac) + 0x8000;
    }

    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x14);
    this->actionFunc = EnWallmas_TakeDamage;
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 10.0f;
}

void EnWallmas_SetupCooldown(EnWallmas* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06000EA4);
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = EnWallmas_Cooldown;
}

void EnWallmas_SetupDie(EnWallmas* this, GlobalContext* globalCtx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;

    EffectSsDeadDb_Spawn(globalCtx, &this->actor.world.pos, &zeroVec, &zeroVec, 250, -10, 255, 255, 255, 255, 0, 0, 255,
                         1, 9, true);

    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xC0);
    this->actionFunc = EnWallmas_Die;
}

void EnWallmas_SetupTakePlayer(EnWallmas* this, GlobalContext* globalCtx) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06009520, -5.0f);
    this->timer = -0x1e;
    this->actionFunc = EnWallmas_TakePlayer;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;

    this->yTarget = this->actor.yDistToPlayer;
    func_8002DF38(globalCtx, &this->actor, 0x25);
    func_800800F8(globalCtx, 0x251C, 0x270F, &this->actor, 0);
}

void EnWallmas_ProximityOrSwitchInit(EnWallmas* this) {
    this->timer = 0;
    this->actor.draw = NULL;
    this->actor.flags &= ~1;
    if (this->actor.params == WMT_PROXIMITY) {
        this->actionFunc = EnWallmas_WaitForProximity;
    } else {
        this->actionFunc = EnWallmas_WaitForSwitchFlag;
    }
}

void EnWallmas_SetupStun(EnWallmas* this) {
    Animation_Change(&this->skelAnime, &D_060019CC, 1.5f, 0, 20.0f, ANIMMODE_ONCE, -3.0f);

    this->actor.speedXZ = 0.0f;
    if (this->actor.colChkInfo.damageEffect == 4) {
        func_8003426C(&this->actor, -0x8000, 0xFF, 0, 0x50);
    } else {
        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    }

    this->timer = 0x50;
    this->actionFunc = EnWallmas_Stun;
}

void EnWallmas_WaitToDrop(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f* playerPos = &player->actor.world.pos;

    this->actor.world.pos = *playerPos;
    this->actor.floorHeight = player->actor.floorHeight;
    this->actor.floorPoly = player->actor.floorPoly;

    if (this->timer != 0) {
        this->timer--;
    }

    if ((player->stateFlags1 & 0x100000) || (player->stateFlags1 & 0x8000000) || !(player->actor.bgCheckFlags & 1) ||
        ((this->actor.params == 1) && (320.0f < Math_Vec3f_DistXZ(&this->actor.home.pos, playerPos)))) {
        func_800F8D04(NA_SE_EN_FALL_AIM);
        this->timer = 0x82;
    }

    if (this->timer == 0x50) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_AIM);
    }

    if (this->timer == 0) {
        EnWallmas_SetupDrop(this, globalCtx);
    }
}

void EnWallmas_Drop(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (!Player_InCsMode(globalCtx) && !(player->stateFlags2 & 0x10) && (player->invincibilityTimer >= 0) &&
        (this->actor.xzDistToPlayer < 30.0f) && (this->actor.yDistToPlayer < -5.0f) &&
        (-(f32)(player->cylinder.dim.height + 10) < this->actor.yDistToPlayer)) {
        EnWallmas_SetupTakePlayer(this, globalCtx);
    }
}

void EnWallmas_Land(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        EnWallmas_SetupStand(this);
    }
}

void EnWallmas_Stand(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        EnWallmas_SetupWalk(this);
    }

    Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer + 0x8000, 0xB6);
}

void EnWallmas_Walk(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        EnWallmas_SetupJumpToCeiling(this);
    }

    Math_ScaledStepToS(&this->actor.world.rot.y, (s16)((s32)this->actor.yawTowardsPlayer + 0x8000), 0xB6);

    if ((Animation_OnFrame(&this->skelAnime, 0.0f) != 0) || (Animation_OnFrame(&this->skelAnime, 12.0f) != 0) ||
        (Animation_OnFrame(&this->skelAnime, 24.0f) != 0) || (Animation_OnFrame(&this->skelAnime, 36.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }
}

void EnWallmas_JumpToCeiling(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        EnWallmas_SetupReturnToCeiling(this);
    }
}

void EnWallmas_ReturnToCeiling(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    SkelAnime_Update(&this->skelAnime);
    if (this->skelAnime.curFrame > 20.0f) {
        this->timer += 9;
        this->actor.world.pos.y = this->actor.world.pos.y + 30.0f;
    }

    if (Animation_OnFrame(&this->skelAnime, 20.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_UP);
    }

    if (this->actor.yDistToPlayer < -900.0f) {
        if (this->actor.params == WMT_FLAG) {
            Actor_Kill(&this->actor);
            return;
        }

        if (this->actor.params == WMT_TIMER ||
            Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) < 200.0f) {
            EnWallmas_TimerInit(this, globalCtx);
        } else {
            EnWallmas_ProximityOrSwitchInit(this);
        }
    }
}

void EnWallmas_TakeDamage(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnWallmas_SetupDie(this, globalCtx);
        } else {
            EnWallmas_SetupCooldown(this);
        }
    }
    if (Animation_OnFrame(&this->skelAnime, 13.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }

    Math_StepToF(&this->actor.speedXZ, 0.0f, 0.2f);
}

void EnWallmas_Cooldown(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        EnWallmas_SetupReturnToCeiling(this);
    }
}

void EnWallmas_Die(EnWallmas* this, GlobalContext* globalCtx) {
    if (Math_StepToF(&this->actor.scale.x, 0.0f, 0.0015) != 0) {
        Actor_SetScale(&this->actor, 0.01f);
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xC0);
        Actor_Kill(&this->actor);
    }
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;
}

void EnWallmas_TakePlayer(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (Animation_OnFrame(&this->skelAnime, 1.0f) != 0) {
        if (LINK_IS_CHILD) {
            func_8002F7DC(&this->actor, NA_SE_VO_LI_DAMAGE_S_KID);
        } else {
            func_8002F7DC(&this->actor, NA_SE_VO_LI_DAMAGE_S);
        }

        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_CATCH);
    }
    if (SkelAnime_Update(&this->skelAnime) != 0) {
        player->actor.world.pos.x = this->actor.world.pos.x;
        player->actor.world.pos.z = this->actor.world.pos.z;

        if (this->timer < 0) {
            this->actor.world.pos.y = this->actor.world.pos.y + 2.0f;
        } else {
            this->actor.world.pos.y = this->actor.world.pos.y + 10.0f;
        }

        if (LINK_IS_CHILD) {
            player->actor.world.pos.y = this->actor.world.pos.y - 30.0f;
        } else {
            player->actor.world.pos.y = this->actor.world.pos.y - 50.0f;
        }

        if (this->timer == -0x1E) {
            if (LINK_IS_CHILD) {
                func_8002F7DC(&this->actor, NA_SE_VO_LI_TAKEN_AWAY_KID);
            } else {
                func_8002F7DC(&this->actor, NA_SE_VO_LI_TAKEN_AWAY);
            }
        }
        if (this->timer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_UP);
        }

        this->timer = this->timer + 2;
    } else {
        Math_StepToF(&this->actor.world.pos.y, player->actor.world.pos.y + (LINK_IS_CHILD ? 30.0f : 50.0f), 5.0f);
    }

    Math_StepToF(&this->actor.world.pos.x, player->actor.world.pos.x, 3.0f);
    Math_StepToF(&this->actor.world.pos.z, player->actor.world.pos.z, 3.0f);

    if (this->timer == 0x1E) {
        func_80078884(NA_SE_OC_ABYSS);
        Gameplay_TriggerRespawn(globalCtx);
    }
}

void EnWallmas_WaitForProximity(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    if (Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) < 200.0f) {
        EnWallmas_TimerInit(this, globalCtx);
    }
}

void EnWallmas_WaitForSwitchFlag(EnWallmas* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
        EnWallmas_TimerInit(this, globalCtx);
        this->timer = 0x51;
    }
}

void EnWallmas_Stun(EnWallmas* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnWallmas_SetupDie(this, globalCtx);
        } else {
            EnWallmas_SetupReturnToCeiling(this);
        }
    }
}

void EnWallmas_ColUpdate(EnWallmas* this, GlobalContext* globalCtx) {
    if ((this->collider.base.acFlags & AC_HIT) != 0) {
        this->collider.base.acFlags &= ~AC_HIT;
        func_80035650(&this->actor, &this->collider.info, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DEAD);
                this->actor.flags &= ~1;
            } else {
                if (this->actor.colChkInfo.damage != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DAMAGE);
                }
            }

            if ((this->actor.colChkInfo.damageEffect == DAMAGE_EFFECT_STUN_WHITE) ||
                (this->actor.colChkInfo.damageEffect == DAMAGE_EFFECT_STUN_BLUE)) {
                if (this->actionFunc != EnWallmas_Stun) {
                    EnWallmas_SetupStun(this);
                }
            } else {
                if (this->actor.colChkInfo.damageEffect == DAMAGE_EFFECT_BURN) {
                    EffectSsFCircle_Spawn(globalCtx, &this->actor, &this->actor.world.pos, 40, 40);
                }

                EnWallmas_SetupTakeDamage(this);
            }
        }
    }
}

void EnWallmas_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWallmas* this = THIS;
    char pad[4];

    EnWallmas_ColUpdate(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if ((this->actionFunc == EnWallmas_WaitToDrop) || (this->actionFunc == EnWallmas_WaitForProximity) ||
        (this->actionFunc == EnWallmas_TakePlayer) || (this->actionFunc == EnWallmas_WaitForSwitchFlag)) {
        return;
    }

    if ((this->actionFunc != EnWallmas_ReturnToCeiling) && (this->actionFunc != EnWallmas_TakePlayer)) {
        Actor_MoveForward(&this->actor);
    }

    if (this->actionFunc != EnWallmas_Drop) {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 20.0f, 25.0f, 0.0f, 0x1D);
    } else if (this->actor.world.pos.y <= this->yTarget) {
        this->actor.world.pos.y = this->yTarget;
        this->actor.velocity.y = 0.0f;
        EnWallmas_SetupLand(this, globalCtx);
    }

    if ((this->actionFunc != EnWallmas_Die) && (this->actionFunc != EnWallmas_Drop)) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

        if ((this->actionFunc != EnWallmas_TakeDamage) && (this->actor.bgCheckFlags & 1) != 0 &&
            (this->actor.freezeTimer == 0)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }

    Actor_SetFocus(&this->actor, 25.0f);

    if (this->actionFunc == EnWallmas_TakeDamage) {
        return;
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void EnWallmas_DrawXlu(EnWallmas* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 xzScale;
    MtxF mf;

    if ((this->actor.floorPoly == NULL) || ((this->timer >= 0x51) && (this->actionFunc != EnWallmas_Stun))) {
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1386);

    func_80094044(globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 255);

    func_80038A28(this->actor.floorPoly, this->actor.world.pos.x, this->actor.floorHeight, this->actor.world.pos.z,
                  &mf);
    Matrix_Mult(&mf, MTXMODE_NEW);

    if ((this->actionFunc != EnWallmas_WaitToDrop) && (this->actionFunc != EnWallmas_ReturnToCeiling) &&
        (this->actionFunc != EnWallmas_TakePlayer) && (this->actionFunc != EnWallmas_WaitForSwitchFlag)) {
        xzScale = this->actor.scale.x * 50.0f;
    } else {
        xzScale = ((0x50 - this->timer) >= 0x51 ? 0x50 : (0x50 - this->timer)) * TIMER_SCALE;
    }

    Matrix_Scale(xzScale, 1.0f, xzScale, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1421), G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, &D_04049210);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1426);
}

s32 EnWallMas_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               void* thisx) {
    EnWallmas* this = THIS;

    if (limbIndex == 1) {
        if (this->actionFunc != EnWallmas_TakePlayer) {
            pos->z -= 1600.0f;
        } else {
            pos->z -= ((1600.0f * (this->skelAnime.endFrame - this->skelAnime.curFrame)) / this->skelAnime.endFrame);
        }
    }
    return false;
}

void EnWallMas_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 2) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1478);

        Matrix_Push();
        Matrix_Translate(1600.0f, -700.0f, -1700.0f, MTXMODE_APPLY);
        Matrix_RotateY(DEGREE_60_RAD, MTXMODE_APPLY);
        Matrix_RotateZ(DEGREE_15_RAD, MTXMODE_APPLY);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1489), G_MTX_LOAD);
        gSPDisplayList(POLY_OPA_DISP++, D_06008688);

        Matrix_Pull();

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1495);
    }
}

void EnWallmas_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnWallmas* this = THIS;

    if (this->actionFunc != EnWallmas_WaitToDrop) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, EnWallMas_OverrideLimbDraw, EnWallMas_PostLimbDraw, this);
    }

    EnWallmas_DrawXlu(this, globalCtx);
}
