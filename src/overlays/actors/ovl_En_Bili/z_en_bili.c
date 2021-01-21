#include "z_en_bili.h"

#define FLAGS 0x00005005

#define THIS ((EnBili*)thisx)

void EnBili_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBili_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBili_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBili_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809BF9BC(EnBili* this);
void func_809BFA14(EnBili* this);
void func_809C0174(EnBili* this, GlobalContext* globalCtx);
void func_809C0260(EnBili* this, GlobalContext* globalCtx);
void func_809C02B8(EnBili* this, GlobalContext* globalCtx);
void func_809C04B4(EnBili* this, GlobalContext* globalCtx);
void func_809C0570(EnBili* this, GlobalContext* globalCtx);
void func_809C0600(EnBili* this, GlobalContext* globalCtx);
void func_809C067C(EnBili* this, GlobalContext* globalCtx);
void func_809C06E0(EnBili* this, GlobalContext* globalCtx);
void EnBili_Die(EnBili* this, GlobalContext* globalCtx);
void EnBili_Stunned(EnBili* this, GlobalContext* globalCtx);
void func_809C09E0(EnBili* this, GlobalContext* globalCtx);

const ActorInit En_Bili_InitVars = {
    ACTOR_EN_BILI,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BL,
    sizeof(EnBili),
    (ActorFunc)EnBili_Init,
    (ActorFunc)EnBili_Destroy,
    (ActorFunc)EnBili_Update,
    (ActorFunc)EnBili_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT8,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x03, 0x08 },
        { 0xFFCFFFFF, 0x01, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 9, 28, -20, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 1, 9, 28, -20, 30 };

DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0xE),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(1, 0x0),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(2, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1, 0xF),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(4, 0xF),
    /* Fire arrow    */ DMG_ENTRY(4, 0x2),
    /* Ice arrow     */ DMG_ENTRY(4, 0x3),
    /* Light arrow   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(2, 0x0),
    /* Fire magic    */ DMG_ENTRY(4, 0x2),
    /* Ice magic     */ DMG_ENTRY(4, 0x3),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
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
    ICHAIN_S8(naviEnemyId, 23, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_STOP),
};

extern AnimationHeader D_06000024;
extern AnimationHeader D_06000064;
extern AnimationHeader D_060000A4;
extern SkeletonHeader D_06005848;

void EnBili_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBili* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 17.0f);
    this->actor.shape.unk_14 = 0x9B;
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06005848, &D_060000A4, this->jointTable, this->morphTable, 5);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->playFlySound = false;
    if (this->actor.params == EN_BILI_TYPE_NORMAL) {
        func_809BF9BC(this);
    } else {
        func_809BFA14(this);
    }
}

void EnBili_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBili* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// Setup Action Functions

void func_809BF9BC(EnBili* this) {
    this->actor.speedXZ = 0.7f;
    this->collider.info.bumper.effect = 1;
    this->timer = 32;
    this->collider.base.atFlags |= 1;
    this->collider.base.acFlags |= 1;
    this->actionFunc = func_809C0174;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
}

void func_809BFA14(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    this->timer = 25;
    this->actor.velocity.y = 6.0f;
    this->actor.gravity = -0.3f;
    this->collider.base.atFlags &= ~1;
    this->actionFunc = func_809C0260;
    this->actor.speedXZ = 3.0f;
}

void func_809BFA8C(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000024);
    this->timer = 10;
    this->actionFunc = func_809C02B8;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = -1.0f;
}

void func_809BFAE8(EnBili* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06000064);
    this->collider.base.atFlags &= ~1;
    this->actionFunc = func_809C04B4;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
}

void func_809BFB40(EnBili* this) {
    this->actor.speedXZ = 1.2f;
    this->actionFunc = func_809C0570;
}

void func_809BFB5C(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    this->timer = 96;
    this->actor.speedXZ = 0.9f;
    this->collider.base.atFlags |= 1;
    this->actionFunc = func_809C0600;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
}

void func_809BFBC4(EnBili* this) {
    if (this->skelAnime.animation != &D_060000A4) {
        Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    }
    this->actor.posRot.rot.y = func_8002DAC0(&this->actor, &this->collider.base.ac->pos4) + 0x8000;
    this->actor.posRot.rot.x = func_8002DB28(&this->actor, &this->collider.base.ac->pos4);
    this->actionFunc = func_809C067C;
    this->actor.speedXZ = 5.0f;
}

void func_809BFC48(EnBili* this) {
    if (this->actionFunc == func_809C04B4) {
        Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    }
    this->timer = 20;
    this->collider.base.atFlags &= ~1;
    this->collider.base.acFlags &= ~1;
    this->actor.flags = this->actor.flags | 0x10;
    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0x4000, 0xC8, 0x2000, 0x14);
    this->actionFunc = func_809C06E0;
}

void EnBili_SetupDie(EnBili* this) {
    this->timer = 18;
    this->actor.flags &= ~1;
    this->actionFunc = EnBili_Die;
    this->actor.speedXZ = 0.0f;
}

void EnBili_SetupStunned(EnBili* this) {
    this->timer = 80;
    this->collider.info.bumper.effect = 0;
    this->actor.gravity = -1.0f;
    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0, 0x96, 0x2000, 0x50);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->collider.base.atFlags &= ~1;
    this->actionFunc = EnBili_Stunned;
}

void func_809BFD94(EnBili* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f sp80;

    if (!(this->actor.flags & 0x8000)) {
        this->actor.gravity = -1.0f;
    }

    this->actor.velocity.y = 0.0f;
    sp80.y = this->actor.posRot.pos.y - 15.0f;

    for (i = 0; i < 8; i++) {

        sp80.x = this->actor.posRot.pos.x + ((i & 1) ? 7.0f : -7.0f);
        sp80.y += 2.5f;
        sp80.z = this->actor.posRot.pos.z + ((i & 4) ? 7.0f : -7.0f);

        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp80, 150, 150, 150, 250, 235, 245, 255,
                                       (Rand_ZeroOne() * 0.2f) + 0.7f);
    }

    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0, 0x96, 0x2000, 0xA);
    this->collider.base.atFlags &= ~1;
    this->collider.base.acFlags &= ~1;
    this->timer = 300;
    this->actionFunc = func_809C09E0;
}

// ?

void EnBili_UpdateOralArmsIndex(EnBili* this) {
    s16 curFrame;
    // s16 temp_v1_3;

    curFrame = this->skelAnime.curFrame;

    if (this->actionFunc == func_809C02B8) {
        this->oralArmsTexIndex = (ABS((s16)(3 - curFrame)) + 5) % 8;
    } else if (this->actionFunc == func_809C04B4) {
        if (curFrame < 10) {
            // temp_v1_3 = curFrame >> 1;

            this->oralArmsTexIndex = (((s16)(curFrame >> 1) > 3) ? 3 : (s16)(curFrame >> 1));

        } else if (curFrame < 19) {
            this->oralArmsTexIndex = CLAMP_MIN((s16)(17 - curFrame), 0) >> 1;
        } else if (curFrame < 37) {
            this->oralArmsTexIndex = ((36 - curFrame) / 3) + 2;
        } else {
            this->oralArmsTexIndex = (40 - curFrame) >> 1;
        }
    } else {
        this->oralArmsTexIndex = curFrame >> 1;
    }
}

void func_809C008C(EnBili* this) {
    f32 temp_f0;
    f32 phi_f12;
    f32 phi_f14;

    temp_f0 = this->actor.posRot.pos.y + this->actor.yDistToLink;

    phi_f14 = ((this->actionFunc == func_809C0600) ? 100.0f : 40.0f);
    phi_f12 = CLAMP_MIN(this->actor.groundY, temp_f0);

    Math_StepToF(&this->actor.initPosRot.pos.y, phi_f12 + phi_f14, 1.0f);
    this->actor.posRot.pos.y = (sinf(this->timer * (M_PI / 16)) * 3.0f) + this->actor.initPosRot.pos.y;
    if (this->actor.bgCheckFlags & 8) {
        this->actor.posRot.rot.y = this->actor.wallPolyRot;
    }
}

// Action functions

void func_809C0174(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->timer != 0) {
        this->timer--;
    }

    if (!(this->timer % 4)) {
        this->actor.posRot.rot.y += Rand_CenteredFloat(1820.0f);
    }

    func_809C008C(this);

    if (this->timer == 0) {
        this->timer = 32;
    }

    if ((this->actor.xzDistToLink < 160.0f) && (fabsf(this->actor.yDistToLink) < 45.0f)) {
        func_809BFB40(this);
    }
}

void func_809C0260(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        func_809BF9BC(this);
    }
}

void func_809C02B8(EnBili* this, GlobalContext* globalCtx) {
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 200, 255, 255, 255 };
    s32 i;
    Vec3f effectPos;
    s16 temp_s1;

    for (i = 0; i < 4; i++) {
        if (!((this->timer + (i << 1)) % 4)) {
            temp_s1 = (s16)Rand_CenteredFloat(12288.0f) + (i * 0x4000) + 0x2000;
            effectPos.x = Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.x;
            effectPos.y = (Rand_ZeroOne() * 5.0f) + this->actor.posRot.pos.y + 2.5f;
            effectPos.z = Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.z;
            EffectSsLightning_Spawn(globalCtx, &effectPos, &primColor, &envColor, 15, temp_s1, 6, 2);
        }
    }

    SkelAnime_Update(&this->skelAnime);
    func_8002F974(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);

    if (this->timer != 0) {
        this->timer--;
    }
    this->actor.velocity.y *= -1.0f;
    if ((this->timer == 0) && Animation_OnFrame(&this->skelAnime, 0.0f)) {
        if (this->actor.params == EN_BILI_TYPE_DYING) {
            EnBili_SetupDie(this);
        } else {
            func_809BFAE8(this);
        }
    }
}

void func_809C04B4(EnBili* this, GlobalContext* globalCtx) {
    s32 skelAnimeUpdate = SkelAnime_Update(&this->skelAnime);
    f32 curFrame = this->skelAnime.curFrame;

    if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIRI_JUMP);
    }

    if (curFrame > 9.0f) {
        Math_ApproachF(&this->actor.posRot.pos.y, this->actor.posRot.pos.y + this->actor.yDistToLink + 100.0f, 0.5f,
                       5.0f);
    }

    if (skelAnimeUpdate) {
        func_809BFB5C(this);
    }
}

void func_809C0570(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 2, 0x71C);

    if (this->timer != 0) {
        this->timer--;
    }

    func_809C008C(this);

    if (this->timer == 0) {
        this->timer = 32;
    }

    if (this->actor.xzDistToLink > 200.0f) {
        func_809BF9BC(this);
    }
}

void func_809C0600(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->timer != 0) {
        this->timer--;
    }

    Math_ScaledStepToS(&this->actor.posRot.rot.y, (s16)(this->actor.yawTowardsLink + 0x8000), 0x38E);
    func_809C008C(this);

    if (this->timer == 0) {
        func_809BF9BC(this);
    }
}

void func_809C067C(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (Math_StepToF(&this->actor.speedXZ, 0.0f, 0.3f)) {
        this->actor.posRot.rot.y += 0x8000;
        func_809BF9BC(this);
    }
}

void func_809C06E0(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->actor.flags & 0x8000) {
        this->actor.dmgEffectTimer = 20;
    } else {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            EnBili_SetupDie(this);
        }
    }
}

void EnBili_Die(EnBili* this, GlobalContext* globalCtx) {
    static Vec3f effectVelocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f effectAccel = { 0.0f, 0.0f, 0.0f };
    s16 effectScale;
    Vec3f effectPos;
    s32 i;

    if (this->actor.draw != NULL) {
        if (this->actor.flags & 0x8000) {
            return;
        }
        this->actor.draw = NULL;
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x50);
    }

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer != 0) {
        for (i = 0; i < 2; i++) {
            effectPos.x = ((Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.x) - 5.0f;
            effectPos.y = ((Rand_ZeroOne() * 5.0f) + this->actor.posRot.pos.y) - 2.5f;
            effectPos.z = ((Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.z) - 5.0f;

            effectVelocity.y = Rand_ZeroOne() + 1.0f;
            effectScale = Rand_S16Offset(40, 40);

            if (Rand_ZeroOne() < 0.7f) {
                EffectSsDtBubble_SpawnColorProfile(globalCtx, &effectPos, &effectVelocity, &effectAccel, effectScale,
                                                   25, 2, 1);
            } else {
                EffectSsDtBubble_SpawnColorProfile(globalCtx, &effectPos, &effectVelocity, &effectAccel, effectScale,
                                                   25, 0, 1);
            }
        }
    } else {
        Actor_Kill(&this->actor);
    }

    if (this->timer == 14) {
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EN_BIRI_BUBLE);
    }
}

void EnBili_Stunned(EnBili* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }
    if (this->timer == 0) {
        func_809BF9BC(this);
    }
}

void func_809C09E0(EnBili* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (!(this->actor.flags & 0x8000)) {
        this->actor.gravity = -1.0f;
    }

    if ((this->actor.bgCheckFlags & 1) || (this->actor.groundY == -32000.0f)) {
        this->actor.dmgEffectTimer = 0;
        EnBili_SetupDie(this);
    } else {
        this->actor.dmgEffectTimer = 10;
    }
}

void func_809C0A70(EnBili* this, GlobalContext* globalCtx) {
    u8 damageEffect;

    if ((this->actor.colChkInfo.health != 0) && (this->collider.base.acFlags & 2)) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.info, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIRI_DEAD);
                func_80032C7C(globalCtx, &this->actor);
                this->actor.flags &= ~1;
            }

            damageEffect = this->actor.colChkInfo.damageEffect;

            if (damageEffect == 1) {
                if (this->actionFunc != EnBili_Stunned) {
                    EnBili_SetupStunned(this);
                }
            } else if (damageEffect == 0xF) {
                if (this->actionFunc != EnBili_Stunned) {
                    func_8003426C(&this->actor, 0x4000, 0xC8, 0x2000, 0xA);

                    if (this->actor.colChkInfo.health == 0) {
                        this->actor.params = EN_BILI_TYPE_DYING;
                    }
                    func_809BFA8C(this);
                } else {
                    func_809BFC48(this);
                }
            } else if (damageEffect == 2) {
                func_809BFC48(this);
                this->timer = 2;
            } else if (damageEffect == 3) {
                func_809BFD94(this, globalCtx);
            } else if (damageEffect == 0xE) {
                func_809BFBC4(this);
            } else { // damageEffect == 0
                func_809BFC48(this);
            }
            if (this->collider.info.acHitInfo->toucher.dmgFlags & 0x1F820) { // DMG_ARROW
                this->actor.flags |= 0x10;
            }
        }
    }
}

void EnBili_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnBili* this = THIS;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        func_809BFA8C(this);
    }

    func_809C0A70(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if (this->actionFunc != EnBili_Die) {
        EnBili_UpdateOralArmsIndex(this);
        if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
            if ((this->actionFunc == func_809C0174) || (this->actionFunc == func_809C0600) ||
                (this->actionFunc == func_809C0570) || (this->actionFunc == func_809C067C)) {
                if (this->playFlySound) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIRI_FLY);
                    this->playFlySound = false;
                } else {
                    this->playFlySound = true;
                }
            }
        }
        if (this->actionFunc == func_809C067C) {
            func_8002D97C(&this->actor);
        } else {
            Actor_MoveForward(&this->actor);
        }

        func_8002E4B4(globalCtx, &this->actor, 5.0f, this->collider.dim.radius, this->collider.dim.height, 7);
        Collider_UpdateCylinder(&this->actor, &this->collider);

        if (this->collider.base.atFlags & 1) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        if (this->collider.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        Actor_SetHeight(&this->actor, 0.0f);
    }
}

// Draw calculating functions

void func_809C0E08(EnBili* this, f32 frame, Vec3f* arg2) {
    f32 cos;
    f32 sin;

    if (this->actionFunc == func_809C02B8) {
        arg2->y = 1.0f - (sinf((M_PI * 0.16667f) * frame) * 0.26f);
    } else if (this->actionFunc == func_809C04B4) {
        if (frame <= 8.0f) {
            arg2->y = (cosf((M_PI / 8) * frame) * 0.15f) + 0.85f;
        } else if (frame <= 18.0f) {
            cos = cosf((frame - 8.0f) * (M_PI / 10));
            arg2->y = 1.0f - (0.3f * cos);
            arg2->x = (0.2f * cos) + 0.8f;
        } else {
            cos = cosf((frame - 18.0f) * (M_PI * 0.0227f));
            arg2->y = (0.31f * cos) + 1.0f;
            arg2->x = 1.0f - (0.4f * cos);
        }
        arg2->z = arg2->x;
    } else if (this->actionFunc == EnBili_Stunned) {
        sin = sinf(this->timer * (M_PI / 10)) * 0.08f;
        arg2->x -= sin;
        arg2->y += sin;
        arg2->z -= sin;
    } else {
        arg2->y = (cosf((M_PI / 8) * frame) * 0.13f) + 0.87f;
    }
}

void func_809C1020(EnBili* this, f32 frame, Vec3f* arg2) {
    f32 cos;
    f32 sin;

    if (this->actionFunc == func_809C02B8) {
        arg2->y = (sinf((M_PI * 0.16667f) * frame) * 0.2f) + 1.0f;
    } else if (this->actionFunc == func_809C04B4) {
        if (frame <= 8.0f) {
            arg2->x = 1.125f - (cosf((M_PI * 0.125f) * frame) * 0.125f);
        } else if (frame <= 18.0f) {
            cos = cosf((frame - 8.0f) * (M_PI * 0.1f));
            arg2->x = (0.275f * cos) + 0.975f;
            arg2->y = 1.25f - (0.25f * cos);
        } else {
            cos = cosf((frame - 18.0f) * (M_PI * 0.0227f));
            arg2->x = 1.0f - (0.3f * cos);
            arg2->y = (0.48f * cos) + 1.0f;
        }
        arg2->z = arg2->x;
    } else if (this->actionFunc == EnBili_Stunned) {
        sin = sinf(this->timer * (M_PI / 10)) * 0.08f;
        arg2->x += sin;
        arg2->y -= sin;
        arg2->z += sin;
    } else {
        arg2->y = 1.1f - (cosf((M_PI / 8) * frame) * 0.1f);
    }
}

void func_809C1240(EnBili* this, f32 frame, Vec3f* arg2) {
    f32 cos;

    if (this->actionFunc == func_809C04B4) {
        if (frame <= 8.0f) {
            cos = cosf((M_PI / 8) * frame);
            arg2->x = 1.125f - (0.125f * cos);
            arg2->y = (0.3f * cos) + 0.7f;
        } else if (frame <= 18.0f) {
            cos = cosf((frame - 8.0f) * (M_PI / 10));
            arg2->x = (0.325f * cos) + 0.925f;
            arg2->y = 0.95f - (0.55f * cos);
        } else {
            cos = cosf((frame - 18.0f) * (M_PI * 0.0227f));
            arg2->x = 1.0f - (0.4f * cos);
            arg2->y = (0.52f * cos) + 1.0f;
        }
        arg2->z = arg2->x;
    }
}

s32 EnBili_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                            Gfx** gfx) {
    EnBili* this = THIS;
    Vec3f sp20 = { 1.0f, 1.0f, 1.0f };
    f32 curFrame = this->skelAnime.curFrame;

    if (limbIndex == 3) {
        func_809C0E08(this, curFrame, &sp20);
    } else if (limbIndex == 2) {
        func_809C1020(this, curFrame, &sp20);
    } else if (limbIndex == 4) {
        func_809C1240(this, curFrame, &sp20);
        rot->y = (Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y) + 0x8000;
    }

    Matrix_Scale(sp20.x, sp20.y, sp20.z, MTXMODE_APPLY);
    return false;
}

static u64* sOralArmsTextures[] = { 0x06000E08, 0x06001708, 0x06002008, 0x06002908,
                                    0x06003208, 0x06003B08, 0x06004408, 0x06004D08 };

static Gfx D_809C16F0[] = { 0xFC621603, 0x1F5BFFF8, 0xDF000000, 0x00000000 };

static Gfx D_809C1700[] = { 0xFC121603, 0xFF5BFFF8, 0xDF000000, 0x00000000 };

void EnBili_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBili* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bili.c", 1521);
    func_80093D84(globalCtx->state.gfxCtx);

    this->oralArmsTexIndex = CLAMP_MAX(this->oralArmsTexIndex, 7);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sOralArmsTextures[this->oralArmsTexIndex]));

    if ((this->actionFunc == func_809C02B8) && ((this->timer & 1) != 0)) {
        gSPSegment(POLY_XLU_DISP++, 0x09, &D_809C16F0);
    } else {
        gSPSegment(POLY_XLU_DISP++, 0x09, &D_809C1700);
    }

    POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                   &EnBili_OverrideLimbDraw, NULL, this, POLY_XLU_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bili.c", 1552);
}
