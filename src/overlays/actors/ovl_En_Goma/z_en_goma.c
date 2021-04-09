#include "z_en_goma.h"
#include "objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"
#include "overlays/actors/ovl_Boss_Goma/z_boss_goma.h"

#define FLAGS 0x00000035

#define THIS ((EnGoma*)thisx)

void EnGoma_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Draw(Actor* thisx, GlobalContext* globalCtx);

extern AnimationHeader D_0600017C;
extern AnimationHeader D_06000334;
extern AnimationHeader D_06000544;
extern AnimationHeader D_06000838;
extern AnimationHeader D_06000B78;
extern AnimationHeader D_06000E4C;
extern AnimationHeader D_06001548;
extern Gfx D_06002A70[];
extern SkeletonHeader D_06003B40;
extern AnimationHeader D_06003D78;

const ActorInit En_Goma_InitVars = {
    ACTOR_BOSS_GOMA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_GOL,
    sizeof(EnGoma),
    (ActorFunc)EnGoma_Init,
    (ActorFunc)EnGoma_Destroy,
    (ActorFunc)EnGoma_Update,
    (ActorFunc)EnGoma_Draw,
};

static ColliderCylinderInit D_80A4B7A0 = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A4B7CC = {
    {
        COLTYPE_HIT3,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};

static u8 D_80A4B7F8 = 0;
static Vec3f D_80A4B7FC = {0.0f, 0.0f, 0.0f};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 3, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 3, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 20, ICHAIN_STOP),
};

void func_80A4B554(EnGoma* this, GlobalContext* globalCtx);
void func_80A493D8(EnGoma* this, GlobalContext* globalCtx);
void func_80A4B3AC(EnGoma* this, GlobalContext* globalCtx);
void func_80A49668(EnGoma* this, GlobalContext* globalCtx);
void func_80A498A8(EnGoma* this, GlobalContext *globalCtx);

void EnGoma_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnGoma *this = THIS;
    s16 params;

    this->unk_2C0 = Rand_ZeroOne() * 200.0f;
    Actor_ProcessInitChain(thisx, sInitChain);
    Actor_SetScale(thisx, 0.01f);
    params = this->actor.params;
    if (params >= 100) {
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_BOSS);
        this->actionFunc = func_80A4B554;
        this->unk_2B8 = 3;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
        this->unk_2CC = thisx->params + 150;
        this->actor.flags = this->actor.flags & ~1;
        return;
    }
    if (params > 9) {
        this->actor.gravity = -1.3f;
        this->actor.flags &= ~1;
        this->unk_2CC = 50;
        this->unk_2B8 = 2;
        this->unk_2D0 = 1.0f;
        this->actor.velocity.y = Rand_ZeroOne() * 5 + 5;
        this->actionFunc = func_80A4B3AC;
        this->actor.speedXZ = Rand_ZeroOne() * 2.3f + 1.5f;
        this->unk_2CC = 30;
        this->actor.scale.x = Rand_ZeroOne() * 0.005f + 0.01f;
        this->actor.scale.y = Rand_ZeroOne() * 0.005f + 0.01f;
        this->actor.scale.z = Rand_ZeroOne() * 0.005f + 0.01f;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
        return;
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 40.0f);
    SkelAnime_Init(globalCtx, &this->skelanime, &D_06003B40, &D_06001548, this->jointTable, this->morphTable, 24);
    Animation_PlayLoop(&this->skelanime, &D_06001548);
    this->actor.colChkInfo.health = 2;
    if (thisx->params < 3) {
        this->actionFunc = func_80A493D8;
        this->unk_2CA = 10;
        this->actor.speedXZ = 1.5f;
    } else if (thisx->params == 8 || thisx->params == 6) {
        this->actionFunc = func_80A49668;
        this->unk_2C8 = D_80A4B7F8++;
    } else if (thisx->params == 9 || thisx->params == 7) {
        this->actionFunc = func_80A49668;
    }
    if (thisx->params >= 8) {
        this->unk_2F0 = -1500.0f;
    } else {
        this->unk_2F0 = 1500.0f;
    }
    this->unk_2B8 = 1;
    this->unk_2D0 = 1.0f;
    this->unk_2D8 = Rand_ZeroOne() * 1000.0f;
    this->unk_2CC = 50;
    Collider_InitCylinder(globalCtx, &this->colCyl1);
    Collider_SetCylinder(globalCtx, &this->colCyl1, thisx, &D_80A4B7A0);
    Collider_InitCylinder(globalCtx, &this->colCyl2);
    Collider_SetCylinder(globalCtx, &this->colCyl2, thisx, &D_80A4B7CC);
}

void EnGoma_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnGoma* this = THIS;

    if (this->actor.params < 10) {
        Collider_DestroyCylinder(globalCtx, &this->colCyl1);
        Collider_DestroyCylinder(globalCtx, &this->colCyl2);
    }
}

void func_80A49338(EnGoma *this, GlobalContext *globalCtx);

void func_80A49294(EnGoma *this) {
    Animation_Change(&this->skelanime, &D_06003D78, 2.0f, 0.0f, Animation_GetLastFrame(&D_06003D78), 0, -2.0f);
    this->actionFunc = &func_80A49338;
    this->unk_2CC = 20;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, (u16)0x3819U);
    } else {
        Audio_PlayActorSound2(&this->actor, (u16)0x395FU);
    }
}

void func_80A49E80(EnGoma *this);

void func_80A49338(EnGoma *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachF(&this->actor.speedXZ, 6.6666665f, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor) + 0x8000, 3, 2000);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, (u16)2, (u16)0xBB8);

    if (this->unk_2CC == 0) {
        func_80A49E80(this);
    }
}

void func_80A493D8(EnGoma *this, GlobalContext *globalCtx) {
    f32 *temp_a0;

    this->actor.gravity = -1.3f;
    this->unk_2DC += 0.03f;
    this->unk_2D8 += 1.0f + this->unk_2DC;
    Math_ApproachZeroF(&this->unk_2EC, 1.0f, 0.005f);
    Math_ApproachF(&this->unk_2F0, 1500.0f, 1.0f, 150.0f);
    switch (this->unk_2BE) {
        case 0:
            if (this->actor.bgCheckFlags & 1) {
                if (this->actor.params < 6) {
                    Audio_PlayActorSound2(&this->actor, 0x3814U);
                } else {
                    Audio_PlayActorSound2(&this->actor, 0x3961U);
                }
                if (this->actor.params > 5) {
                    func_80A498A8(this, globalCtx);
                } else {
                    this->unk_2BE = 1;
                    this->unk_2CC = 3;
                    Math_ApproachF(&this->unk_2D0, 1.5f, 0.5f, 1.0f);
                }
            }
            break;

        case 1:
            if (this->unk_2CC == 0) {
                this->unk_2BE = 2;
                this->unk_2CC = 3;
                Math_ApproachF(&this->unk_2D0, 0.75f, 0.5f, 1.0f);
                this->actor.velocity.y = 5.0f;
                this->actor.speedXZ = 2.0f;
            } else {
                Math_ApproachF(&this->unk_2D0, 1.5f, 0.5f, 1.0f);
            }
            break;

        case 2:
            if (this->unk_2CC == 0) {
                this->unk_2BE = 3;
                this->unk_2CC = 0x50;
            } else {
                Math_ApproachF(&this->unk_2D0, 0.75f, 0.5f, 1.0f);
            }
            break;

        case 3:
            Math_ApproachF(&this->unk_2D0, 1.0f, 0.1f, 0.1f);
            if (this->unk_2CC == 0) {
                func_80A498A8(this, globalCtx);
            }
            break;
    }
    if (this->actor.bgCheckFlags & 1) {
        Math_ApproachZeroF(&this->actor.speedXZ, 0.2f, 0.05f);
    }
    this->unk_2D4 += (this->actor.speedXZ * 0.1f);
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void func_80A49668(EnGoma *this, GlobalContext *globalCtx) {
    Player *player;
    s32 i;

    player = PLAYER;
    this->unk_2D8 = this->unk_2D8 + 1.0f;
    Math_ApproachF(&this->unk_2EC, 0.1f, 1.0f, 0.005f);
    if (fabsf(this->actor.world.pos.x - player->actor.world.pos.x) < 100.0f &&
            fabsf(this->actor.world.pos.z - player->actor.world.pos.z) < 100.0f) {
        if (++this->unk_2C6 > 9) {
            this->actionFunc = func_80A493D8;
        }
    } else {
        this->unk_2C6 = 0;
    }

    if (!(this->unk_2C0 & 0xF) && Rand_ZeroOne() < 0.5f) {
        for (i = 0; i < 2; i++) {
            Vec3f vel = {0.0f, 0.0f, 0.0f};
            Vec3f acc = {0.0f, -0.5f, 0.0f};
            Vec3f pos;

            pos.x = Rand_CenteredFloat(30.0f) + this->actor.world.pos.x;
            pos.y = Rand_ZeroFloat(30.0f) + this->actor.world.pos.y;
            pos.z = Rand_CenteredFloat(30.0f) + this->actor.world.pos.z;
            EffectSsHahen_Spawn(globalCtx, &pos, &vel, &acc, 0, (s16) (Rand_ZeroOne() * 5.0f) + 10, -1, 0xA, 0);
        }
    }

}

void func_80A49974(EnGoma *this, GlobalContext *globalCtx);
void func_80A4B3F0(EnGoma *this, GlobalContext *globalCtx);

void func_80A498A8(EnGoma *this, GlobalContext *globalCtx) {
    Animation_Change(&this->skelanime, &D_06000544, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000544), 2, 0.0f);
    this->actionFunc = &func_80A49974;
    Actor_SetScale(&this->actor, 0.005f);
    this->unk_2B8 = 0;
    this->unk_2CC = 5;
    this->actor.shape.rot.y = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80A4B3F0(this, globalCtx);
    this->unk_2D0 = 1.0f;
    this->actor.speedXZ = 0.0f;
}

void func_80A49E80(EnGoma *this);

void func_80A49974(EnGoma *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    if (this->unk_2CC == 0) {
        func_80A49E80(this);
    }
}

void func_80A49AA8(EnGoma *this, GlobalContext *globalCtx);

void func_80A499BC(EnGoma *this, GlobalContext *globalCtx) {
    Animation_Change(&this->skelanime, &D_06000838, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000838), 2, -2.0f);
    this->actionFunc = &func_80A49AA8;

    if ((s8) this->actor.colChkInfo.health <= 0) {
        this->unk_2CC = 5;
        func_80032C7C(globalCtx, &this->actor);
    } else {
        this->unk_2CC = 10;
    }

    this->actor.speedXZ = 20.0f;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, 0x3818U);
    } else {
        Audio_PlayActorSound2(&this->actor, 0x395EU);
    }
}

void func_80A49B30(EnGoma *this);
void func_80A49294(EnGoma *this);

void func_80A49AA8(EnGoma *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    }

    if (this->unk_2CC == 0) {
        if ((s8) this->actor.colChkInfo.health <= 0) {
            func_80A49B30(this);
        } else {
            func_80A49294(this);
        }
    }
}

void func_80A49BF0(EnGoma *this, GlobalContext *globalCtx);

void func_80A49B30(EnGoma *this) {
    Animation_Change(&this->skelanime, &D_06000B78, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000B78), 2, -2.0f);
    this->actionFunc = &func_80A49BF0;
    this->unk_2CC = 30;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, 0x381AU);
    } else {
        Audio_PlayActorSound2(&this->actor, 0x3960U);
    }

    this->unk_2CA = 100;
    this->actor.flags &= ~1;
}

void func_80A49C94(EnGoma *this);

void func_80A49BF0(EnGoma *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    }

    if (this->unk_2CC == 17) {
        if (this->actor.params < 6) {
            Audio_PlayActorSound2(&this->actor, 0x39E3U);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x39E5U);
        }
    }

    if (this->unk_2CC == 0) {
        func_80A49C94(this);
    }
}

void func_80A49D0C(EnGoma *this, GlobalContext *globalCtx);

void func_80A49C94(EnGoma *this) {
    Animation_Change(&this->skelanime, &D_06000334, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000334), 0, -2.0f);
    this->actionFunc = &func_80A49D0C;
    this->unk_2CC = 3;
}

void func_80A49D0C(EnGoma *this, GlobalContext *globalCtx) {
    Vec3f sp3C;
    Vec3f sp30;

    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    if (this->unk_2CC == 2) {
        sp30.x = this->actor.world.pos.x;
        sp30.y = (this->actor.world.pos.y + 5.0f) - 10.0f;
        sp30.z = this->actor.world.pos.z;
        sp3C = D_80A4B7FC;
        sp3C.y = 0.03f;
        EffectSsKFire_Spawn(globalCtx, &sp30, &D_80A4B7FC, &sp3C, 40, 0);
    }
    if (this->unk_2CC == 0 && Math_SmoothStepToF(&this->actor.scale.y, 0.0f, 0.5f, 0.00225f, 0.00001f) <= 0.001f) {
        if (this->actor.params < 6) {
            BossGoma* parent = (BossGoma*)this->actor.parent;
            parent->childrenGohmaState[this->actor.params] = -1;
        }
        Audio_PlaySoundGeneral(0x3878U, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        Actor_Kill(&this->actor);
        Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.world.pos, 48);
    }
    this->unk_2C4 = 2;
}

void func_80A4A2EC(EnGoma* this, GlobalContext* globalCtx);

void func_80A49E80(EnGoma *this) {
    f32 sp2C;

    sp2C = Animation_GetLastFrame((void *) &D_06001548);
    this->unk_2CC = Rand_S16Offset(10, 30);
    Animation_Change(&this->skelanime, &D_06001548, 1.0f, 0.0f, sp2C, 0, -5.0f);
    this->actionFunc = &func_80A4A2EC;
    this->unk_2B8 = 0;
}

void func_80A4A368(EnGoma *this, GlobalContext* globalCtx);

void func_80A49F10(EnGoma *this) {
    Animation_Change(&this->skelanime, &D_06003D78, 1.0f, 0.0f, Animation_GetLastFrame(&D_06003D78), 0, -5.0f);
    this->actionFunc = &func_80A4A368;
    this->unk_2CC = Rand_S16Offset(70, 110);
}

void func_80A4A010(EnGoma* this, GlobalContext* globalCtx);

void func_80A49F94(EnGoma *this) {
    Animation_Change(&this->skelanime, &D_06000E4C, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000E4C), 2, -5.0f);
    this->actionFunc = &func_80A4A010;
    this->unk_2CC = 30;
}

void func_80A4A18C(EnGoma* this);

void func_80A4A010(EnGoma *this, GlobalContext *globalCtx) {
    s16 targetAngle;

    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);

    targetAngle = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor);
    Math_ApproachS(&this->actor.world.rot.y, targetAngle, 2, 4000);
    Math_ApproachS(&this->actor.shape.rot.y, targetAngle, 2, 3000);

    if (this->unk_2CC == 0) {
        func_80A4A18C(this);
    }
    this->unk_2C4 = 0;
}

void func_80A4A120(EnGoma* this, GlobalContext* globalCtx);

void func_80A4A0A8(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_0600017C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600017C), 2, 0.0f);
    this->actionFunc = &func_80A4A120;
    this->unk_2CC = 10;
}

void func_80A4A120(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    }
    if (this->unk_2CC == 0) {
        func_80A49E80(this);
    }
}

void func_80A4A234(EnGoma* this, GlobalContext* globalCtx);

void func_80A4A18C(EnGoma *this) {
    Animation_Change(&this->skelanime, &D_06000544, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000544), 2, 0.0f);
    this->actionFunc = &func_80A4A234;
    this->actor.velocity.y = 8.0f;
    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, 0x3817U);
    } else {
        Audio_PlayActorSound2(&this->actor, 0x395DU);
    }
}

void func_80A4A234(EnGoma *this, GlobalContext *globalCtx) {
    this->actor.flags |= 0x1000000;
    SkelAnime_Update(&this->skelanime);
    Math_ApproachF(&this->actor.speedXZ, 10.0f, 0.5f, 5.0f);

    if (this->actor.velocity.y <= 0.0f && (this->actor.bgCheckFlags & 1)) {
        func_80A4A0A8(this);
        if (this->actor.params < 6) {
            Audio_PlayActorSound2(&this->actor, 0x39E4U);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x39E6U);
        }
    }
    this->unk_2C4 = 0;
}

void func_80A4A2EC(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.shape.rot.y, Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor), 2, 3000);
    if (this->unk_2CC == 0) {
        func_80A49F10(this);
    }
}

void func_80A4A368(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);
    if (Animation_OnFrame(&this->skelanime, 1.0f) || Animation_OnFrame(&this->skelanime, 5.0f)) {
        if (this->actor.params < 6) {
            Audio_PlayActorSound2(&this->actor, 0x3816U);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x395CU);
        }
    }
    Math_ApproachF(&this->actor.speedXZ, 3.3333333f, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 3, 2000);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, 3000);
    if ((this->actor.bgCheckFlags & 1) != 0) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->actor.xzDistToPlayer <= 150.0f) {
        func_80A49F94(this);
    }
}

void func_80A4A50C(EnGoma* this, GlobalContext* globalCtx);

void func_80A4A470(EnGoma *this, GlobalContext *globalCtx) {
    this->actionFunc = func_80A4A50C;
    this->unk_2F8 = 100;
    Animation_MorphToLoop(&this->skelanime, &D_06001548, -5.0f);
    this->unk_2CC = (s16) Rand_ZeroFloat(15.0f) + 3;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, 0x381FU);
    } else {
        Audio_PlayActorSound2(&this->actor, 0x389EU);
    }
}

void func_80A4A50C(EnGoma *this, GlobalContext *globalCtx) {
    Actor_SetColorFilter(&this->actor, 0, 180, 0, 2);
    this->unk_2C4 = 2;

    if (this->unk_2CC != 0) {
        SkelAnime_Update(&this->skelanime);
    }

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
        Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);
    }

    if (this->unk_2F8 == 0) {
        func_80A49E80(this);
    } else if (--this->unk_2F8 < 30) {
        if (this->unk_2F8 & 1) {
            this->actor.world.pos.x += 1.5f;
            this->actor.world.pos.z += 1.5f;
        } else {
            this->actor.world.pos.x -= 1.5f;
            this->actor.world.pos.z -= 1.5f;
        }
    }
}

void func_80A4A608(EnGoma* this, GlobalContext* globalCtx) {
    s16 sp26;
    s16 phi_s1;

    phi_s1 = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor) - this->actor.shape.rot.y;
    sp26 = Actor_WorldPitchTowardActor(&this->actor, &PLAYER->actor) - this->actor.shape.rot.x;

    if (phi_s1 > 6000) {
        phi_s1 = 6000;
    }
    if (phi_s1 < -6000) {
        phi_s1 = -6000;
    }
    Math_ApproachS(&this->unk_2BC, phi_s1, 3, 2000);
    Math_ApproachS(&this->unk_2BA, sp26, 3, 2000);
}

void func_80A4A6AC(EnGoma* this, GlobalContext* globalCtx);
void func_80A4A470(EnGoma* this, GlobalContext* globalCtx);
void func_80A499BC(EnGoma* this, GlobalContext* globalCtx);

Vec3f D_80A4B830 = {0, 0, 20};
void func_80A4A6AC(EnGoma *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;

    if (this->unk_2C2 != 0) {
        this->unk_2C2--;
    } else {
        ColliderInfo* acHitInfo;
        u8 swordDamage;

        if ((this->colCyl1.base.atFlags & 2) && this->actionFunc == func_80A4A234) {
            func_80A4A0A8(this);
            this->actor.speedXZ = 0.0f;
            this->actor.velocity.y = 0.0f;
        }

        if ((this->colCyl2.base.acFlags & 2) && (s8)this->actor.colChkInfo.health > 0) {
            acHitInfo = this->colCyl2.info.acHitInfo;
            this->colCyl2.base.acFlags &= ~2;

            if (this->unk_2B8 == 0) {
                u32 dmgFlags = acHitInfo->toucher.dmgFlags;

                if (dmgFlags & 0x100000) {
                    if (this->actionFunc == func_80A4A234) {
                        func_80A4A0A8(this);
                        this->actor.velocity.y = 0.0f;
                        this->actor.speedXZ = -5.0f;
                    } else {
                        Matrix_RotateY(player->actor.shape.rot.y / 32768.0f * 3.1415927f, 0);
                        Matrix_MultVec3f(&D_80A4B830, &this->unk_2FC);
                        this->unk_2CA = 5;
                    }
                } else if (dmgFlags & 1)  {
                    if (this->actionFunc != func_80A4A50C) {
                        func_80A4A470(this, globalCtx);
                        this->unk_2C2 = 8;
                    }
                } else {
                    swordDamage = CollisionCheck_GetSwordDamage(dmgFlags);

                    if (swordDamage) {
                        EffectSsSibuki_SpawnBurst(globalCtx, &this->actor.focus.pos);
                    } else {
                        swordDamage = 1;
                    }

                    this->actor.colChkInfo.health -= swordDamage;
                    func_80A499BC(this, globalCtx);
                    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 5);
                    this->unk_2C2 = 13;
                }
            } else {
                if (this->actor.params < 6) {
                    BossGoma* parent = (BossGoma*)this->actor.parent;
                    parent->childrenGohmaState[this->actor.params] = -1;
                }

                func_80A4B3F0(this, globalCtx);
                Actor_Kill(&this->actor);
            }
        }
    }
}

f32 D_80A4B83C[] = {255.0f,   0.0f, 50.0f};
f32 D_80A4B848[] = { 17.0f, 255.0f, 50.0f};
f32 D_80A4B854[] = {  0.0f, 170.0f, 50.0f};

void func_80A4A8D4(EnGoma* this) {
    Math_ApproachF(&this->unk_2E0[0], D_80A4B83C[this->unk_2C4], 0.5f, 20.0f);
    Math_ApproachF(&this->unk_2E0[1], D_80A4B848[this->unk_2C4], 0.5f, 20.0f);
    Math_ApproachF(&this->unk_2E0[2], D_80A4B854[this->unk_2C4], 0.5f, 20.0f);
}

void func_80A4A964(EnGoma *this) {
    f32 nx;
    f32 ny;
    f32 nz;

    if (this->actor.floorPoly != 0) {
        nx = this->actor.floorPoly->normal.x * 0.00003051851f;
        ny = this->actor.floorPoly->normal.y * 0.00003051851f;
        nz = this->actor.floorPoly->normal.z * 0.00003051851f;
        Math_ApproachS(&this->unk_2B4, -Math_FAtan2F(-nz * ny, 1.0f) * 10430.378f, 1, 1000);
        Math_ApproachS(&this->unk_2B6, Math_FAtan2F(-nx * ny, 1.0f) * 10430.378f, 1, 1000);
    }
}

void EnGoma_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnGoma *this = THIS;
    s32 pad;
    Player *player = PLAYER;

    if (this->unk_2CC != 0) {
        this->unk_2CC--;
    }
    if (this->unk_2CA != 0) {
        this->unk_2CA--;
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(thisx);
    this->actor.world.pos.x = this->actor.world.pos.x + this->unk_2FC.x;
    this->actor.world.pos.z = this->actor.world.pos.z + this->unk_2FC.z;
    Math_ApproachZeroF(&this->unk_2FC.x, 1.0f, 3.0f);
    Math_ApproachZeroF(&this->unk_2FC.z, 1.0f, 3.0f);
    if (this->actor.params < 10) {
        this->unk_2C0 = this->unk_2C0 + 1;
        Math_SmoothStepToF(&this->actor.scale.x, 0.01f, 0.5f, 0.00075f, 0.000001f);
        Math_SmoothStepToF(&this->actor.scale.y, 0.01f, 0.5f, 0.00075f, 0.000001f);
        Math_SmoothStepToF(&this->actor.scale.z, 0.01f, 0.5f, 0.00075f, 0.000001f);
        func_80A4A6AC(this, globalCtx);
        Actor_UpdateBgCheckInfo(globalCtx, thisx, 50.0f, 50.0f, 100.0f, 5);
        func_80A4A964(this);
        Actor_SetFocus(thisx, 20.0f);
        func_80A4A608(this, globalCtx);
        func_80A4A8D4(this);
        this->unk_2C4 = 1;
        if (player->swordState != 0) {
            this->colCyl2.dim.radius = 35;
            this->colCyl2.dim.height = 35;
            this->colCyl2.dim.yShift = 0;
        } else {
            this->colCyl2.dim.radius = 15;
            this->colCyl2.dim.height = 30;
            this->colCyl2.dim.yShift = 10;
        }
        if (this->unk_2CA == 0) {
            Collider_UpdateCylinder(thisx, &this->colCyl1);
            Collider_UpdateCylinder(thisx, &this->colCyl2);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colCyl1.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCyl2.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colCyl1.base);
        }
    }
}

s32 func_80A4ACC0(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx) {
    EnGoma *this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 1976);
    gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->unk_2E0[0], (s16)this->unk_2E0[1], (s16)this->unk_2E0[2], 255);

    if (limbIndex == 7) {
        rot->x = rot->x + this->unk_2BA;
        rot->y = rot->y + this->unk_2BC;
    } else if ((limbIndex == 3) && (this->unk_2C2 != 0)) {
        gDPSetEnvColor(POLY_OPA_DISP++, (s16)(Rand_ZeroOne() * 255.0f), (s16)(Rand_ZeroOne() * 255.0f), (s16)(Rand_ZeroOne() * 255.0f), 255);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 2011);
    return 0;
}

Gfx *func_80A4AE60(GraphicsContext *gfxCtx) {
    Gfx *dl;
    Gfx *dlStart;

    dl = dlStart = Graph_Alloc(gfxCtx, 32);
    gDPPipeSync(dl++);
    gDPSetRenderMode(dl++, G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(dl++, G_CULL_BACK);
    gSPEndDisplayList(dl++);
    return dlStart;
}

void EnGoma_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnGoma* this = THIS;
    s32 y;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 2040);
    func_80093D18(globalCtx->state.gfxCtx);

    switch (this->unk_2B8) {
        case 0:
            this->actor.naviEnemyId = 3;
            Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y + ((this->actor.shape.yOffset * this->actor.scale.y) + globalCtx->mainCamera.skyboxOffset.y), this->actor.world.pos.z, 0);
            Matrix_RotateX(this->unk_2B4 / 32768.0f * 3.1415927f, 1);
            Matrix_RotateZ(this->unk_2B6 / 32768.0f * 3.1415927f, 1);
            Matrix_RotateY(this->actor.shape.rot.y / 32768.0f * 3.1415927f, 1);
            Matrix_RotateX(this->actor.shape.rot.x / 32768.0f * 3.1415927f, 1);
            Matrix_RotateZ(this->actor.shape.rot.z / 32768.0f * 3.1415927f, 1);
            Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
            SkelAnime_DrawOpa(globalCtx, this->skelanime.skeleton, this->skelanime.jointTable, &func_80A4ACC0, 0, this);
            break;

        case 1:
            this->actor.naviEnemyId = 2;
            y = (s16)(sinf((this->unk_2C0 * 5.0f * 3.1415f) / 180.0f) * 31.9f);
            y = (s16)(y + 31);
            gSPSegment(POLY_OPA_DISP++, 0x08, func_80094E78(globalCtx->state.gfxCtx, 0, y));
            Matrix_Push();
            Matrix_Scale(this->unk_2D0, 1.0f / this->unk_2D0, this->unk_2D0, 1);
            Matrix_RotateY(this->unk_2D8 * 0.15f, 1);
            Matrix_RotateZ(this->unk_2D8 * 0.1f, 1);
            Matrix_Scale(0.95f - this->unk_2EC, this->unk_2EC + 1.05f, 0.95f - this->unk_2EC, 1);
            Matrix_RotateZ(-(this->unk_2D8 * 0.1f), 1);
            Matrix_RotateY(-(this->unk_2D8 * 0.15f), 1);
            Matrix_Translate(0.0f, this->unk_2F0, 0.0f, 1);
            Matrix_RotateX(this->unk_2D4, 1);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_goma.c", 2101),
                    G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_06002A70);
            Matrix_Pop();
            break;


        case 2:
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_goma.c", 2107),
                    G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gBrownFragmentDL);
            break;

        case 3:
            if (this->unk_308 != NULL) {
                gSPSegment(POLY_OPA_DISP++, 0x08, func_80A4AE60(globalCtx->state.gfxCtx));
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_goma.c", 2114),
                        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, this->unk_308);
            }
            break;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 2119);
}

void func_80A4B3AC(EnGoma *this, GlobalContext *globalCtx) {
    this->actor.shape.rot.y += 2500;
    this->actor.shape.rot.x += 3500;
    if (this->unk_2CC == 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A4B3F0(EnGoma *this, GlobalContext *globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    s16 i;

    if (this->actor.params < 6) {
        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 0x28, 0x3815U);
    } else {
        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 0x28, 0x3962U);
    }

    for (i = 0; i < 15; i++) {
        Actor_SpawnAsChild(&globalCtx2->actorCtx, &this->actor, globalCtx2, 43, Rand_CenteredFloat(10.0f) + this->actor.world.pos.x, Rand_CenteredFloat(10.0f) + this->actor.world.pos.y + 15.0f, Rand_CenteredFloat(10.0f) + this->actor.world.pos.z, 0, Rand_CenteredFloat(65535.99f), 0, i + 10);
    }
}

void func_80A4B554(EnGoma *this, GlobalContext *globalCtx) {
    Vec3f sp64 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp58 = { 0.0f, 1.0f, 0.0f };
    Color_RGBA8 sp54 = { 255, 255, 255, 255};
    Color_RGBA8 sp50 = { 0, 100, 255, 255 };
    Vec3f sp44;

    this->actor.world.pos.y -= 5.0f;
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    this->actor.world.pos.y += 5.0f;

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    } else if (this->unk_2CC < 250) {
        this->actor.shape.rot.y = this->actor.shape.rot.y + 0x7D0;
    }

    if (this->unk_2CC == 250) {
        this->actor.gravity = -1.0f;
    }

    if (this->unk_2CC < 121) {
        if (Math_SmoothStepToF(&this->actor.scale.y, 0.0f, 1.0f, 0.00075f, 0) <= 0.001f) {
            Actor_Kill(&this->actor);
        }
        this->actor.scale.x = this->actor.scale.z = this->actor.scale.y;
    }

    if (((this->unk_2CC & 7) == 0) && (this->unk_2CC != 0)) {
        sp44.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
        sp44.y = Rand_CenteredFloat(10.0f) + this->actor.world.pos.y;
        sp44.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
        func_8002836C(globalCtx, &sp44, (Vec3f *) &sp64, (Vec3f *) &sp58, &sp54, &sp50, 0x1F4, 0xA, 0xA);
    }
}
