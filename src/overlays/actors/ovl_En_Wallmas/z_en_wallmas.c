/*
 * File: z_en_wallmas
 * Overlay: En_Wallmas
 * Description: Wallmaster (Ceiling monster)
 */

#include "z_en_wallmas.h"

#define ROOM 0x00
#define FLAGS 0x00000015

#define TIMER_SCALE 0.0062500000931322574615478515625f
#define DEGREE_60_RAD 1.0471975803375244140625f
#define DEGREE_15_RAD 0.261799395084381103515625f

#define DAMAGE_EFFECT_BURN 2
#define DAMAGE_EFFECT_STUN_WHITE 4
#define DAMAGE_EFFECT_STUN_BLUE 1

static void EnWallmas_Init(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Destroy(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_TimerInit(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_ProximityOrSwitchInit(EnWallmas* this);
static void EnWallmas_WaitToDrop(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Drop(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Land(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Stand(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_JumpToCeiling(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_ReturnToCeiling(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_TakeDamage(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_DamageCoolDown(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Die(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_TakePlayer(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_WaitForProximity(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_WaitForSwitchFlag(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Stun(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Update(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Walk(EnWallmas* this, GlobalContext* globalCtx);
static void EnWallmas_Draw(EnWallmas* this, GlobalContext* globalCtx);

const ActorInit En_Wallmas_InitVars = {
    ACTOR_EN_WALLMAS,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnWallmas),
    (ActorFunc)EnWallmas_Init,
    (ActorFunc)EnWallmas_Destroy,
    (ActorFunc)EnWallmas_Update,
    (ActorFunc)EnWallmas_Draw,
};

static ColliderCylinderInit colCylinderInit = {
    0x00, 0x00,       0x09, 0x39, 0x10,   0x01,   0x00,       0x00,   0x00,   0x00,   0x00,
    0x00, 0x00000000, 0x00, 0x00, 0x00,   0x00,   0xFFCFFFFF, 0x00,   0x00,   0x00,   0x00,
    0x00, 0x01,       0x01, 0x00, 0x001E, 0x0028, 0x0000,     0x0000, 0x0000, 0x0000,
};

static Sub98Init4 sub98Init = {
    0x04,
    0x001E,
    0x0028,
    0x96,
};

static ActorDamageChart damageChart = { {
    { 0x1, 0x0 }, { 0x0, 0x2 }, { 0x0, 0x1 }, { 0x0, 0x2 }, { 0x1, 0x0 }, { 0x0, 0x2 }, { 0x0, 0x2 }, { 0x1, 0x0 },
    { 0x0, 0x1 }, { 0x0, 0x2 }, { 0x0, 0x4 }, { 0x2, 0x4 }, { 0x0, 0x2 }, { 0x4, 0x4 }, { 0x0, 0x4 }, { 0x0, 0x2 },
    { 0x0, 0x2 }, { 0x2, 0x4 }, { 0x0, 0x0 }, { 0x4, 0x4 }, { 0x0, 0x0 }, { 0x0, 0x0 }, { 0x0, 0x1 }, { 0x0, 0x4 },
    { 0x0, 0x2 }, { 0x0, 0x2 }, { 0x0, 0x8 }, { 0x0, 0x4 }, { 0x0, 0x0 }, { 0x0, 0x0 }, { 0x0, 0x4 }, { 0x0, 0x0 },
} };

static InitChainEntry initChain[3] = {
    ICHAIN_S8(naviEnemyId, 0x30, 1),
    ICHAIN_F32(unk_4C, 0x157C, 1),
    ICHAIN_F32_DIV1000(gravity, 0xFA24, 0),
};

static Vec3f D_80B30D70 = { 0.0f, 0.0f, 0.0f };

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

static void EnWallmas_Init(EnWallmas* this, GlobalContext* globalCtx) {
    EnWallmas* this2 = this;

    Actor_ProcessInitChain(&this->actor, initChain);
    ActorShape_Init(&this->actor.shape, 0, NULL, 0.5f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008FB0, &D_06009DB0, &this->unkSkelAnimeStruct, &this->unk_22e,
                     0x19);

    ActorCollider_AllocCylinder(globalCtx, &this->colCylinder);
    ActorCollider_InitCylinder(globalCtx, &this->colCylinder, &this->actor, &colCylinderInit);
    func_80061ED4(&this->actor.sub_98, &damageChart, &sub98Init);
    this2->switchFlag = (u8)(this2->actor.params >> 0x8);
    this->actor.params = this->actor.params & 0xFF;

    if (this->actor.params == WMT_FLAG) {
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            Actor_Kill(&this->actor);
            return;
        }

        EnWallmas_ProximityOrSwitchInit(this);
    } else if (this->actor.params == WMT_PROXIMITY) {
        EnWallmas_ProximityOrSwitchInit(this);
    } else {
        EnWallmas_TimerInit(this, globalCtx);
    }
}

static void EnWallmas_Destroy(EnWallmas* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* col = &this->colCylinder;
    ActorCollider_FreeCylinder(globalCtx, col);
}

static void EnWallmas_TimerInit(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->actor.flags &= ~1;
    this->actor.flags |= 0x20;
    this->timer = 0x82;
    this->actor.velocity.y = 0.0f;
    this->actor.posRot.pos.y = player->actor.posRot.pos.y;
    this->actor.unk_80 = player->actor.unk_80;
    this->actor.draw = (ActorFunc)&EnWallmas_Draw;
    this->actionFunc = (ActorFunc)&EnWallmas_WaitToDrop;
}

static void EnWallmas_DropStart(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    AnimationHeader* objSegChangeAnime = &D_0600299C;

    SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 0.0f, 20.0f, (f32)SkelAnime_GetFrameCount(&D_0600299C), 2,
                         0.0f);

    this->unk_2c4 = player->actor.posRot.pos.y;
    this->actor.posRot.pos.y = player->actor.posRot.pos.y + 300.0f;
    this->actor.posRot.rot.y = player->actor.shape.rot.y + 0x8000;
    this->actor.unk_80 = player->actor.unk_80;
    this->actor.flags |= 1;
    this->actor.flags &= ~0x20;
    this->actionFunc = (ActorFunc)&EnWallmas_Drop;
}

static void EnWallmas_LandStart(EnWallmas* this, GlobalContext* globalCtx) {
    AnimationHeader* objSegFrameCount = &D_060019CC;
    AnimationHeader* objSegChangeAnime = &D_060019CC;

    SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 1.0f, 41.0f, SkelAnime_GetFrameCount(objSegFrameCount), 2,
                         -3.0f);

    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 15.0f, 6, 20.0f, 0x12C, 0x64, 1);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_LAND);
    this->actionFunc = (ActorFunc)&EnWallmas_Land;
}

static void EnWallmas_StandStart(EnWallmas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600A054);
    this->actionFunc = (ActorFunc)&EnWallmas_Stand;
}

static void EnWallmas_WalkStart(EnWallmas* this) {
    SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_060041F4, 3.0f);
    this->actionFunc = (ActorFunc)&EnWallmas_Walk;
    this->actor.speedXZ = 3.0f;
}

static void EnWallmas_JumpToCeilingStart(EnWallmas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009244);
    this->actionFunc = (ActorFunc)&EnWallmas_JumpToCeiling;
    this->actor.speedXZ = 0.0f;
}
static void EnWallmas_ReturnToCeilingStart(EnWallmas* this) {
    AnimationHeader* objSegFrameCount = &D_060019CC;
    AnimationHeader* objSegChangeAnime = &D_060019CC;

    this->timer = 0;
    this->actor.speedXZ = 0.0f;

    SkelAnime_ChangeAnim(&this->skelAnime, objSegChangeAnime, 3.0f, 0.0f,
                         (f32)SkelAnime_GetFrameCount(objSegFrameCount), 2, -3.0f);

    this->actionFunc = (ActorFunc)&EnWallmas_ReturnToCeiling;
}

static void EnWallmas_TakeDamageStart(EnWallmas* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000590, -3.0f);
    if ((this->colCylinder.body.colliding->toucher.flags & 0x1F824) != 0) {
        this->actor.posRot.rot.y = this->colCylinder.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->colCylinder.base.ac) + 0x8000;
    }

    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x14);
    this->actionFunc = (ActorFunc)&EnWallmas_TakeDamage;
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 10.0f;
}

static void EnWallmas_DamageCoolDownStart(EnWallmas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000EA4);
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actionFunc = (ActorFunc)&EnWallmas_DamageCoolDown;
}

static void EnWallMas_DieBegin(EnWallmas* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;

    func_8002A6B8(globalCtx, &this->actor.posRot.pos, &D_80B30D70, &D_80B30D70, 0xFA, -0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0,
                  0, 0xFF, 1, 9, 1);

    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
    this->actionFunc = (ActorFunc)&EnWallmas_Die;
}

static void EnWallmas_TakePlayerBegin(EnWallmas* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06009520, -5.0f);
    this->timer = -0x1e;
    this->actionFunc = (ActorFunc)&EnWallmas_TakePlayer;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;

    this->unk_2c4 = this->actor.yDistanceFromLink;
    func_8002DF38(globalCtx, &this->actor, 0x25);
    func_800800F8(globalCtx, 0x251C, 0x270F, &this->actor, 0);
}

static void EnWallmas_ProximityOrSwitchInit(EnWallmas* this) {
    this->timer = 0;
    this->actor.draw = NULL;
    this->actor.flags = this->actor.flags & ~1;
    if (this->actor.params == WMT_PROXIMITY) {
        this->actionFunc = (ActorFunc)&EnWallmas_WaitForProximity;
    } else {
        this->actionFunc = (ActorFunc)&EnWallmas_WaitForSwitchFlag;
    }
}

static void EnWallmas_StunBegin(EnWallmas* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 1.5f, 0, 20.0f, 2, -3.0f);

    this->actor.speedXZ = 0.0f;
    if (this->actor.sub_98.damageEffect == 4) {
        func_8003426C(&this->actor, -0x8000, 0xFF, 0, 0x50);
    } else {
        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    }

    this->timer = 0x50;
    this->actionFunc = (ActorFunc)&EnWallmas_Stun;
}

static void EnWallmas_WaitToDrop(EnWallmas* this, GlobalContext* globalCtx) {
    Vec3f* playerPos;
    Player* player;

    player = PLAYER;
    playerPos = &player->actor.posRot.pos;
    this->actor.posRot.pos = *playerPos;
    this->actor.unk_80 = player->actor.unk_80;
    this->actor.floorPoly = player->actor.floorPoly;

    if (this->timer != 0) {
        this->timer--;
    }

    if (((s32)(player->stateFlags1 << 0xB) < 0) || ((s32)(player->stateFlags1 << 4) < 0) ||
        ((player->actor.bgCheckFlags & 1) == 0) ||
        ((this->actor.params == 1) && (320.0f < Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, playerPos)))) {
        func_800F8D04(NA_SE_EN_FALL_AIM);
        this->timer = 0x82;
    }

    if (this->timer == 0x50) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_AIM);
    }

    if (this->timer == 0) {
        EnWallmas_DropStart(this, globalCtx);
    }
}

static void EnWallmas_Drop(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    if ((func_8008E988(globalCtx) == 0) && (player->stateFlags2 & 0x10) == 0 && (player->unk_A78 >= 0) &&
        (this->actor.xzDistanceFromLink < 30.0f) && (this->actor.yDistanceFromLink < -5.0f) &&
        (-(f32)(player->unk_4DA + 0xA) < this->actor.yDistanceFromLink)) {
        EnWallmas_TakePlayerBegin(this, globalCtx);
    }
}

static void EnWallmas_Land(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_StandStart(this);
    }
}

static void EnWallmas_Stand(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_WalkStart(this);
    }

    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.rotTowardsLinkY + 0x8000, 0xB6);
}

static void EnWallmas_Walk(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_JumpToCeilingStart(this);
    }

    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, (s16)((s32)this->actor.rotTowardsLinkY + 0x8000), 0xB6);

    if ((func_800A56C8(&this->skelAnime, 0.0f) != 0) || (func_800A56C8(&this->skelAnime, 12.0f) != 0) ||
        (func_800A56C8(&this->skelAnime, 24.0f) != 0) || (func_800A56C8(&this->skelAnime, 36.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }
}

static void EnWallmas_JumpToCeiling(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_ReturnToCeilingStart(this);
    }
}

static void EnWallmas_ReturnToCeiling(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->skelAnime.animCurrentFrame > 20.0f) {
        this->timer += 9;
        this->actor.posRot.pos.y = this->actor.posRot.pos.y + 30.0f;
    }

    if (func_800A56C8(&this->skelAnime, 20.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_UP);
    }

    if (this->actor.yDistanceFromLink < -900.0f) {
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

static void EnWallmas_TakeDamage(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.sub_98.health == 0) {
            EnWallMas_DieBegin(this, globalCtx);
        } else {
            EnWallmas_DamageCoolDownStart(this);
        }
    }
    if (func_800A56C8(&this->skelAnime, 13.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }

    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f);
}

static void EnWallmas_DamageCoolDown(EnWallmas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnWallmas_ReturnToCeilingStart(this);
    }
}

static void EnWallmas_Die(EnWallmas* this, GlobalContext* globalCtx) {
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0015) != 0) {
        Actor_SetScale(&this->actor, 0.01f);
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
        Actor_Kill(&this->actor);
    }
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;
}

static void EnWallmas_TakePlayer(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
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

        if (gSaveContext.link_age != 0) {
            player->actor.posRot.pos.y = this->actor.posRot.pos.y - 30.0f;
        } else {
            player->actor.posRot.pos.y = this->actor.posRot.pos.y - 50.0f;
        }

        if (this->timer == -0x1E) {
            if (gSaveContext.link_age != 0) {
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
        Math_ApproxF(&this->actor.posRot.pos.y,
                     player->actor.posRot.pos.y + (gSaveContext.link_age != 0 ? 30.0f : 50.0f), 5.0f);
    }

    Math_ApproxF(&this->actor.posRot.pos.x, player->actor.posRot.pos.x, 3.0f);
    Math_ApproxF(&this->actor.posRot.pos.z, player->actor.posRot.pos.z, 3.0f);

    if (this->timer == 0x1E) {
        func_80078884(NA_SE_OC_ABYSS);
        func_800C0C88(globalCtx);
    }
}

static void EnWallmas_WaitForProximity(EnWallmas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    if (Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos) < 200.0f) {
        EnWallmas_TimerInit(this, globalCtx);
    }
}

static void EnWallmas_WaitForSwitchFlag(EnWallmas* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
        EnWallmas_TimerInit(this, globalCtx);
        this->timer = 0x51;
    }
}

static void EnWallmas_Stun(EnWallmas* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        if (this->actor.sub_98.health == 0) {
            EnWallMas_DieBegin(this, globalCtx);
        } else {
            EnWallmas_ReturnToCeilingStart(this);
        }
    }
}

static void EnWallmas_ColUpdate(EnWallmas* this, GlobalContext* globalCtx) {
    if ((this->colCylinder.base.collideFlags & 2) != 0) {
        this->colCylinder.base.collideFlags &= ~2;
        func_80035650(&this->actor, &this->colCylinder.body, 1);
        if ((this->actor.sub_98.damageEffect != 0) || (this->actor.sub_98.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DEAD);
                this->actor.flags &= ~1;
            } else {
                if (this->actor.sub_98.damage != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DAMAGE);
                }
            }

            if ((this->actor.sub_98.damageEffect == DAMAGE_EFFECT_STUN_WHITE) ||
                (this->actor.sub_98.damageEffect == DAMAGE_EFFECT_STUN_BLUE)) {
                if (this->actionFunc != (ActorFunc)&EnWallmas_Stun) {
                    EnWallmas_StunBegin(this);
                }
            } else {
                if (this->actor.sub_98.damageEffect == DAMAGE_EFFECT_BURN) {
                    func_8002A65C(globalCtx, &this->actor, &this->actor.posRot.pos, 0x28, 0x28);
                }

                EnWallmas_TakeDamageStart(this);
            }
        }
    }
}

static void EnWallmas_Update(EnWallmas* this, GlobalContext* globalCtx) {
    EnWallmas* this2 = this;
    char pad[4];

    EnWallmas_ColUpdate(this2, globalCtx);
    this2->actionFunc(&this->actor, globalCtx);

    if ((this2->actionFunc == (ActorFunc)&EnWallmas_WaitToDrop) ||
        (this2->actionFunc == (ActorFunc)&EnWallmas_WaitForProximity) ||
        (this2->actionFunc == (ActorFunc)&EnWallmas_TakePlayer) ||
        (this2->actionFunc == (ActorFunc)&EnWallmas_WaitForSwitchFlag)) {
        return;
    }

    if ((this2->actionFunc != (ActorFunc)&EnWallmas_ReturnToCeiling) &&
        (this2->actionFunc != (ActorFunc)&EnWallmas_TakePlayer)) {
        Actor_MoveForward(&this->actor);
    }

    if (this2->actionFunc != (ActorFunc)&EnWallmas_Drop) {
        func_8002E4B4(globalCtx, &this2->actor, 20.0f, 25.0f, 0.0f, 0x1D);
    } else if (this2->actor.posRot.pos.y <= this2->unk_2c4) {
        this2->actor.posRot.pos.y = this2->unk_2c4;
        this2->actor.velocity.y = 0.0f;
        EnWallmas_LandStart(this2, globalCtx);
    }

    if ((this2->actionFunc != (ActorFunc)&EnWallmas_Die) && (this2->actionFunc != (ActorFunc)&EnWallmas_Drop)) {
        ActorCollider_Cylinder_Update(&this2->actor, &this2->colCylinder);
        Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this2->colCylinder);

        if ((this2->actionFunc != (ActorFunc)&EnWallmas_TakeDamage) && (this2->actor.bgCheckFlags & 1) != 0 &&
            (this2->actor.freeze == 0)) {
            Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, &this2->colCylinder);
        }
    }

    Actor_SetHeight(&this2->actor, 25.0f);

    if (this->actionFunc == (ActorFunc)&EnWallmas_TakeDamage) {
        return;
    }

    this2->actor.shape.rot.y = this2->actor.posRot.rot.y;
}

static void EnWallmas_DrawXlu(EnWallmas* this, GlobalContext* globalCtx) {
    char pad[8];
    MtxF mf;
    GraphicsContext* gfxCtx;
    f32 xzScale;
    Gfx* gfx[3];

    if ((this->actor.floorPoly == NULL) ||
        ((this->timer >= 0x51) && (this->actionFunc != (ActorFunc)&EnWallmas_Stun))) {
        return;
    }

    // clang-format off
    gfxCtx = globalCtx->state.gfxCtx; Graph_OpenDisp(gfx, globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1386);
    // clang-format on

    func_80094044(globalCtx->state.gfxCtx);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0x00, 0x00, 0x00, 0xFF);

    func_80038A28(this->actor.floorPoly, this->actor.posRot.pos.x, this->actor.unk_80, this->actor.posRot.pos.z, &mf);
    Matrix_Mult(&mf, MTXMODE_NEW);

    if ((this->actionFunc != (ActorFunc)EnWallmas_WaitToDrop) &&
        (this->actionFunc != (ActorFunc)EnWallmas_ReturnToCeiling) &&
        (this->actionFunc != (ActorFunc)EnWallmas_TakePlayer) &&
        (this->actionFunc != (ActorFunc)EnWallmas_WaitForSwitchFlag)) {
        xzScale = this->actor.scale.x * 50.0f;
    } else {
        xzScale = ((0x50 - this->timer) >= 0x51 ? 0x50 : (0x50 - this->timer)) * TIMER_SCALE;
    }

    Matrix_Scale(xzScale, 1.0f, xzScale, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1421), G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_04049210);
    Graph_CloseDisp(gfx, globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1426);
}

static s32 EnWallMas_UpdatePos(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* actor) {
    EnWallmas* this = (EnWallmas*)actor;
    if (limbIndex == 1) {
        if (this->actionFunc != (ActorFunc)EnWallmas_TakePlayer) {
            pos->z -= 1600.0f;
        } else {
            pos->z -= ((1600.0f * (this->skelAnime.animFrameCount - this->skelAnime.animCurrentFrame)) /
                       this->skelAnime.animFrameCount);
        }
    }
    return 0;
}

static void EnWallmas_DrawOpa(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor) {
    GraphicsContext* gfxCtx;
    Gfx* gfx[4];

    if (limbIndex == 2) {
        gfxCtx = globalCtx->state.gfxCtx;

        Graph_OpenDisp(&gfx, globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1478);
        Matrix_Push();
        Matrix_Translate(1600.0f, -700.0f, -1700.0f, MTXMODE_APPLY);
        Matrix_RotateY(DEGREE_60_RAD, MTXMODE_APPLY);
        Matrix_RotateZ(DEGREE_15_RAD, MTXMODE_APPLY);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);

        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1489), G_MTX_LOAD);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_06008688);

        Matrix_Pull();
        Graph_CloseDisp(&gfx, globalCtx->state.gfxCtx, "../z_en_wallmas.c", 1495);
    }
}

static void EnWallmas_Draw(EnWallmas* this, GlobalContext* globalCtx) {
    if (this->actionFunc != (ActorFunc)&EnWallmas_WaitToDrop) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.actorDrawTbl, this->skelAnime.dListCount,
                         &EnWallMas_UpdatePos, &EnWallmas_DrawOpa, &this->actor);
    }

    EnWallmas_DrawXlu(this, globalCtx);
}
