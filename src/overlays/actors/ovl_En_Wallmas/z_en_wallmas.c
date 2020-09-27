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
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnWallmas),
    (ActorFunc)EnWallmas_Init,
    (ActorFunc)EnWallmas_Destroy,
    (ActorFunc)EnWallmas_Update,
    (ActorFunc)EnWallmas_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 40, 0, { 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = {
    0x04,
    0x001E,
    0x0028,
    0x96,
};

static DamageTable sDamageTable = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x24, 0x02, 0x44, 0x04, 0x02,
    0x02, 0x24, 0x00, 0x44, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 0x30, 1),
    ICHAIN_F32(unk_4C, 0x157C, 1),
    ICHAIN_F32_DIV1000(gravity, 0xFA24, 0),
};

extern AnimationHeader D_06000EA4;
extern AnimationHeader D_06000590;
extern AnimationHeader D_0600299C;
extern SkeletonHeader D_06008FB0;
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
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008FB0, &D_06009DB0, &this->unkSkelAnimeStruct, &this->unk_22e,
                     0x19);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    func_80061ED4(&thisx->colChkInfo, &sDamageTable, &sColChkInfoInit);
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
    this->actor.posRot.pos.y = player->actor.posRot.pos.y;
    this->actor.groundY = player->actor.groundY;
    this->actor.draw = EnWallmas_Draw;
    this->actionFunc = EnWallmas_WaitToDrop;
}

void EnWallmas_SetupDrop(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    AnimationHeader* objSegChangeAnime = &D_0600299C;

    SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 0.0f, 20.0f, SkelAnime_GetFrameCount(&D_0600299C), 2,
                         0.0f);

    this->unk_2c4 = player->actor.posRot.pos.y;
    this->actor.posRot.pos.y = player->actor.posRot.pos.y + 300.0f;
    this->actor.posRot.rot.y = player->actor.shape.rot.y + 0x8000;
    this->actor.groundY = player->actor.groundY;
    this->actor.flags |= 1;
    this->actor.flags &= ~0x20;
    this->actionFunc = EnWallmas_Drop;
}

void EnWallmas_SetupLand(EnWallmas* this, GlobalContext* globalCtx) {
    AnimationHeader* objSegFrameCount = &D_060019CC;
    AnimationHeader* objSegChangeAnime = &D_060019CC;

    SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 1.0f, 41.0f, SkelAnime_GetFrameCount(objSegFrameCount), 2,
                         -3.0f);

    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 15.0f, 6, 20.0f, 0x12C, 0x64, 1);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_LAND);
    this->actionFunc = EnWallmas_Land;
}

void EnWallmas_SetupStand(EnWallmas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600A054);
    this->actionFunc = EnWallmas_Stand;
}

void EnWallmas_SetupWalk(EnWallmas* this) {
    SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_060041F4, 3.0f);
    this->actionFunc = EnWallmas_Walk;
    this->actor.speedXZ = 3.0f;
}

void EnWallmas_SetupJumpToCeiling(EnWallmas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009244);
    this->actionFunc = EnWallmas_JumpToCeiling;
    this->actor.speedXZ = 0.0f;
}
void EnWallmas_SetupReturnToCeiling(EnWallmas* this) {
    AnimationHeader* objSegFrameCount = &D_060019CC;
    AnimationHeader* objSegChangeAnime = &D_060019CC;

    this->timer = 0;
    this->actor.speedXZ = 0.0f;

    SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 3.0f, 0.0f, SkelAnime_GetFrameCount(objSegFrameCount), 2,
                         -3.0f);

    this->actionFunc = EnWallmas_ReturnToCeiling;
}

void EnWallmas_SetupTakeDamage(EnWallmas* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000590, -3.0f);
    if ((this->collider.body.acHitItem->toucher.flags & 0x1F824) != 0) {
        this->actor.posRot.rot.y = this->collider.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }

    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x14);
    this->actionFunc = EnWallmas_TakeDamage;
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 10.0f;
}

void EnWallmas_SetupCooldown(EnWallmas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000EA4);
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actionFunc = EnWallmas_Cooldown;
}

void EnWallmas_SetupDie(EnWallmas* this, GlobalContext* globalCtx) {
    static Vec3f D_80B30D70 = { 0.0f, 0.0f, 0.0f };
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;

    func_8002A6B8(globalCtx, &this->actor.posRot.pos, &D_80B30D70, &D_80B30D70, 0xFA, -0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0,
                  0, 0xFF, 1, 9, 1);

    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
    this->actionFunc = EnWallmas_Die;
}

void EnWallmas_SetupTakePlayer(EnWallmas* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06009520, -5.0f);
    this->timer = -0x1e;
    this->actionFunc = EnWallmas_TakePlayer;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;

    this->unk_2c4 = this->actor.yDistFromLink;
    func_8002DF38(globalCtx, &this->actor, 0x25);
    func_800800F8(globalCtx, 0x251C, 0x270F, &this->actor, 0);
}

void EnWallmas_ProximityOrSwitchInit(EnWallmas* this) {
    this->timer = 0;
    this->actor.draw = NULL;
    this->actor.flags = this->actor.flags & ~1;
    if (this->actor.params == WMT_PROXIMITY) {
        this->actionFunc = EnWallmas_WaitForProximity;
    } else {
        this->actionFunc = EnWallmas_WaitForSwitchFlag;
    }
}

void EnWallmas_SetupStun(EnWallmas* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 1.5f, 0, 20.0f, 2, -3.0f);

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
    Vec3f* playerPos = &player->actor.posRot.pos;

    this->actor.posRot.pos = *playerPos;
    this->actor.groundY = player->actor.groundY;
    this->actor.floorPoly = player->actor.floorPoly;

    if (this->timer != 0) {
        this->timer--;
    }

    if ((player->stateFlags1 & 0x100000) || (player->stateFlags1 & 0x8000000) || !(player->actor.bgCheckFlags & 1) ||
        ((this->actor.params == 1) && (320.0f < Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, playerPos)))) {
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
        (this->actor.xzDistFromLink < 30.0f) && (this->actor.yDistFromLink < -5.0f) &&
        (-(f32)(player->cylinder.dim.height + 10) < this->actor.yDistFromLink)) {
        EnWallmas_SetupTakePlayer(this, globalCtx);
    }
}

void EnWallmas_Land(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_SetupStand(this);
    }
}

void EnWallmas_Stand(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_SetupWalk(this);
    }

    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 0xB6);
}

void EnWallmas_Walk(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_SetupJumpToCeiling(this);
    }

    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, (s16)((s32)this->actor.yawTowardsLink + 0x8000), 0xB6);

    if ((func_800A56C8(&this->skelAnime, 0.0f) != 0) || (func_800A56C8(&this->skelAnime, 12.0f) != 0) ||
        (func_800A56C8(&this->skelAnime, 24.0f) != 0) || (func_800A56C8(&this->skelAnime, 36.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }
}

void EnWallmas_JumpToCeiling(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_SetupReturnToCeiling(this);
    }
}

void EnWallmas_ReturnToCeiling(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->skelAnime.animCurrentFrame > 20.0f) {
        this->timer += 9;
        this->actor.posRot.pos.y = this->actor.posRot.pos.y + 30.0f;
    }

    if (func_800A56C8(&this->skelAnime, 20.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_UP);
    }

    if (this->actor.yDistFromLink < -900.0f) {
        if (this->actor.params == WMT_FLAG) {
            Actor_Kill(&this->actor);
            return;
        }

        if (this->actor.params == WMT_TIMER ||
            Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) < 200.0f) {
            EnWallmas_TimerInit(this, globalCtx);
            return;
        } else {
            EnWallmas_ProximityOrSwitchInit(this);
        }
    }
}

void EnWallmas_TakeDamage(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnWallmas_SetupDie(this, globalCtx);
        } else {
            EnWallmas_SetupCooldown(this);
        }
    }
    if (func_800A56C8(&this->skelAnime, 13.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }

    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f);
}

void EnWallmas_Cooldown(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_SetupReturnToCeiling(this);
    }
}

void EnWallmas_Die(EnWallmas* this, GlobalContext* globalCtx) {
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0015) != 0) {
        Actor_SetScale(&this->actor, 0.01f);
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
        Actor_Kill(&this->actor);
    }
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;
}

void EnWallmas_TakePlayer(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (func_800A56C8(&this->skelAnime, 1.0f) != 0) {
        if (LINK_IS_CHILD) {
            func_8002F7DC(&this->actor, NA_SE_VO_LI_DAMAGE_S_KID);
        } else {
            func_8002F7DC(&this->actor, NA_SE_VO_LI_DAMAGE_S);
        }

        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_CATCH);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        player->actor.posRot.pos.x = this->actor.posRot.pos.x;
        player->actor.posRot.pos.z = this->actor.posRot.pos.z;

        if (this->timer < 0) {
            this->actor.posRot.pos.y = this->actor.posRot.pos.y + 2.0f;
        } else {
            this->actor.posRot.pos.y = this->actor.posRot.pos.y + 10.0f;
        }

        if (LINK_IS_CHILD) {
            player->actor.posRot.pos.y = this->actor.posRot.pos.y - 30.0f;
        } else {
            player->actor.posRot.pos.y = this->actor.posRot.pos.y - 50.0f;
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
        Math_ApproxF(&this->actor.posRot.pos.y, player->actor.posRot.pos.y + (LINK_IS_CHILD ? 30.0f : 50.0f), 5.0f);
    }

    Math_ApproxF(&this->actor.posRot.pos.x, player->actor.posRot.pos.x, 3.0f);
    Math_ApproxF(&this->actor.posRot.pos.z, player->actor.posRot.pos.z, 3.0f);

    if (this->timer == 0x1E) {
        func_80078884(NA_SE_OC_ABYSS);
        Gameplay_TriggerRespawn(globalCtx);
    }
}

void EnWallmas_WaitForProximity(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    if (Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) < 200.0f) {
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
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
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
    if ((this->collider.base.acFlags & 2) != 0) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.body, 1);
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
                    func_8002A65C(globalCtx, &this->actor, &this->actor.posRot.pos, 0x28, 0x28);
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
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 25.0f, 0.0f, 0x1D);
    } else if (this->actor.posRot.pos.y <= this->unk_2c4) {
        this->actor.posRot.pos.y = this->unk_2c4;
        this->actor.velocity.y = 0.0f;
        EnWallmas_SetupLand(this, globalCtx);
    }

    if ((this->actionFunc != EnWallmas_Die) && (this->actionFunc != EnWallmas_Drop)) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);

        if ((this->actionFunc != EnWallmas_TakeDamage) && (this->actor.bgCheckFlags & 1) != 0 &&
            (this->actor.freezeTimer == 0)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
    }

    Actor_SetHeight(&this->actor, 25.0f);

    if (this->actionFunc == EnWallmas_TakeDamage) {
        return;
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
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
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0, 0, 0, 255);

    func_80038A28(this->actor.floorPoly, this->actor.posRot.pos.x, this->actor.groundY, this->actor.posRot.pos.z, &mf);
    Matrix_Mult(&mf, MTXMODE_NEW);

    if ((this->actionFunc != EnWallmas_WaitToDrop) && (this->actionFunc != EnWallmas_ReturnToCeiling) &&
        (this->actionFunc != EnWallmas_TakePlayer) && (this->actionFunc != EnWallmas_WaitForSwitchFlag)) {
        xzScale = this->actor.scale.x * 50.0f;
    } else {
        xzScale = ((0x50 - this->timer) >= 0x51 ? 0x50 : (0x50 - this->timer)) * TIMER_SCALE;
    }

    Matrix_Scale(xzScale, 1.0f, xzScale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1421), G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyXlu.p++, &D_04049210);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1426);
}

s32 EnWallMas_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx) {
    EnWallmas* this = THIS;

    if (limbIndex == 1) {
        if (this->actionFunc != EnWallmas_TakePlayer) {
            pos->z -= 1600.0f;
        } else {
            pos->z -= ((1600.0f * (this->skelAnime.animFrameCount - this->skelAnime.animCurrentFrame)) /
                       this->skelAnime.animFrameCount);
        }
    }
    return 0;
}

void EnWallMas_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    if (limbIndex == 2) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1478);

        Matrix_Push();
        Matrix_Translate(1600.0f, -700.0f, -1700.0f, MTXMODE_APPLY);
        Matrix_RotateY(DEGREE_60_RAD, MTXMODE_APPLY);
        Matrix_RotateZ(DEGREE_15_RAD, MTXMODE_APPLY);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);

        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1489), G_MTX_LOAD);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06008688);

        Matrix_Pull();

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1495);
    }
}

void EnWallmas_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnWallmas* this = THIS;

    if (this->actionFunc != EnWallmas_WaitToDrop) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                         EnWallMas_OverrideLimbDraw, EnWallMas_PostLimbDraw, &this->actor);
    }

    EnWallmas_DrawXlu(this, globalCtx);
}
