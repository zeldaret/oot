#include "z_en_eiyer.h"

#define FLAGS 0x00000005

#define THIS ((EnEiyer*)thisx)

void EnEiyer_Init(Actor* thisx, GlobalContext* globalCtx);
void EnEiyer_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnEiyer_Update(Actor* thisx, GlobalContext* globalCtx);
void EnEiyer_Draw(Actor* thisx, GlobalContext* globalCtx);

extern AnimationHeader D_06000288;
extern AnimationHeader D_060004C4;
extern AnimationHeader D_06000704;
extern AnimationHeader D_06000FC0;
extern AnimationHeader D_060012AC;
extern SkeletonHeader D_06003410;

const ActorInit En_Eiyer_InitVars = {
    ACTOR_EN_EIYER,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_EI,
    sizeof(EnEiyer),
    (ActorFunc)EnEiyer_Init,
    (ActorFunc)EnEiyer_Destroy,
    (ActorFunc)EnEiyer_Update,
    (ActorFunc)EnEiyer_Draw,
};

static ColliderCylinderInit sColCylInit = {
    {
        COLTYPE_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x04, 0x08 },
        { 0x00000019, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_HARD,
        BUMP_ON,
        OCELEM_ON,
    },
    { 27, 17, -10, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0x2, 0x2d, 0xf, 0x64 };

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0 , 0x1),
    /* Deku stick    */ DMG_ENTRY(2 , 0x0),
    /* Slingshot     */ DMG_ENTRY(1 , 0x0),
    /* Explosive     */ DMG_ENTRY(2 , 0x0),
    /* Boomerang     */ DMG_ENTRY(0 , 0x1),
    /* Normal arrow  */ DMG_ENTRY(2 , 0x0),
    /* Hammer swing  */ DMG_ENTRY(2 , 0x0),
    /* Hookshot      */ DMG_ENTRY(2 , 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1 , 0x0),
    /* Master sword  */ DMG_ENTRY(2 , 0x0),
    /* Giant's Knife */ DMG_ENTRY(4 , 0x0),
    /* Fire arrow    */ DMG_ENTRY(2 , 0x0),
    /* Ice arrow     */ DMG_ENTRY(2 , 0x0),
    /* Light arrow   */ DMG_ENTRY(2 , 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(2 , 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(2 , 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(2 , 0x0),
    /* Fire magic    */ DMG_ENTRY(0 , 0x0),
    /* Ice magic     */ DMG_ENTRY(4 , 0x0),
    /* Light magic   */ DMG_ENTRY(4 , 0x0),
    /* Shield        */ DMG_ENTRY(0 , 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0 , 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1 , 0x0),
    /* Giant spin    */ DMG_ENTRY(4 , 0x0),
    /* Master spin   */ DMG_ENTRY(2 , 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2 , 0x0),
    /* Giant jump    */ DMG_ENTRY(8 , 0x0),
    /* Master jump   */ DMG_ENTRY(4 , 0x0),
    /* Unknown 1     */ DMG_ENTRY(0 , 0x0),
    /* Unblockable   */ DMG_ENTRY(0 , 0x0),
    /* Hammer jump   */ DMG_ENTRY(4 , 0x0),
    /* Unknown 2     */ DMG_ENTRY(0 , 0x0),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 25, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 5, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 2500, ICHAIN_STOP),
};

void func_80A00218(EnEiyer *this);
void func_80A003B4(EnEiyer *this);

void EnEiyer_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnEiyer *this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 600.0f, ActorShadow_DrawCircle, 65.0f);
    SkelAnime_Init(globalCtx, &this->skelanime, &D_06003410, &D_060012AC, this->jointTable, this->morphTable, 0x13);
    Collider_InitCylinder(globalCtx, &this->colCyl);
    Collider_SetCylinder(globalCtx, &this->colCyl, &this->actor, &sColCylInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    if (this->actor.params < 3) {
        if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EIYER,
                    this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z,
                    0, this->actor.shape.rot.y + 0x4000, 0, this->actor.params + 1) == 0) {
            Actor_Kill(&this->actor);
            return;
        }

        if (this->actor.params == 0) {
            Actor *child = this->actor.child;
            s32 numChildren = 0;
            
            while (numChildren != 3) {
                if (child != NULL) {
                    child = child->child;
                    numChildren++;
                } else {
                    break;
                }
            }

            if (numChildren != 3) {
                for (child = &this->actor; child != NULL; child = child->child) {
                    Actor_Kill(child);
                }
                return;
            } else {
                this->actor.child->parent = &this->actor;
                this->actor.child->child->parent = &this->actor;
                this->actor.child->child->child->parent = &this->actor;
            }
        }
    }

    if (this->actor.params == 0 || this->actor.params == 10) {
        func_80A00218(this);
        return;
    }
    func_80A003B4(this);
}

void EnEiyer_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnEiyer *this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->colCyl);
}

void func_80A001A4(EnEiyer *this) {
    this->actor.world.pos.x = Math_SinS(this->actor.world.rot.y) * 80.0f + this->actor.home.pos.x;
    this->actor.world.pos.z = Math_CosS(this->actor.world.rot.y) * 80.0f + this->actor.home.pos.z;
    this->actor.shape.rot.y = this->actor.world.rot.y + 0x4000;
}

void func_80A00858(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00218(EnEiyer *this) {
    this->colCyl.info.bumper.dmgFlags = 0x19;
    Animation_PlayLoop(&this->skelanime, &D_060012AC);

    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.y = this->actor.home.pos.y - 40.0f;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    if (this->actor.params != 0xA) {
        if (this->actor.params == 0) {
            this->actor.world.rot.y = Rand_ZeroOne() * 65536.0f;
        } else {
            this->actor.world.rot.y = this->actor.parent->world.rot.y + (this->actor.params << 14);
        }
        func_80A001A4(this);
    } else {
        this->actor.world.rot.y = this->actor.shape.rot.y = Rand_ZeroOne() * 65536.0f;
    }

    this->colCyl.base.atFlags &= ~1;
    this->colCyl.base.acFlags &= ~1;
    this->actor.flags &= ~0x1001;
    this->actor.shape.shadowScale = 0.0f;
    this->actor.shape.yOffset = 0.0f;
    this->actionFunc = func_80A00858;
}

void func_80A00950(EnEiyer *this, GlobalContext *globalCtx);
void func_80A008D4(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00358(EnEiyer *this) {
    if (this->actor.params == 0xA) {
        this->actor.speedXZ = -0.5f;
        this->actionFunc = func_80A00950;
    } else {
        this->actionFunc = func_80A008D4;
    }
    this->colCyl.base.acFlags |= 1;
    this->actor.flags &= ~0x10;
    this->actor.flags |= 1;
}

void func_80A00A84(EnEiyer *this, GlobalContext *globalCtx);

void func_80A003B4(EnEiyer *this) {
    this->actor.flags &= -2;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = func_80A00A84;
}

void func_80A00B18(EnEiyer *this, GlobalContext *globalCtx);

void func_80A003DC(EnEiyer *this, GlobalContext *globalCtx) {

    this->actor.speedXZ = 0.0f;
    Animation_PlayOnce(&this->skelanime, &D_06000704);
    this->colCyl.info.bumper.dmgFlags = 0xFFCFFFFF;
    this->unk_27C = this->actor.world.pos;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.flags |= 0x1000;
    this->colCyl.base.acFlags &= 0xFFFE;
    this->actor.shape.shadowScale = 65.0f;
    this->actor.shape.yOffset = 600.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_JUMP);
    EffectSsGSplash_Spawn(globalCtx, &this->actor.world.pos, NULL, NULL, 1, 700);
    this->actionFunc = func_80A00B18;
}

void func_80A00C70(EnEiyer *this, GlobalContext *globalCtx);

void func_80A004BC(EnEiyer *this) {
    this->targetYaw = this->actor.shape.rot.y;
    this->unk_27C.y = (cosf(-M_PI/8) * 5.0f) + this->actor.world.pos.y;
    Animation_MorphToLoop(&this->skelanime, &D_06000FC0, -5.0f);
    this->unk_194 = 60;
    this->actionFunc = func_80A00C70;
}

void func_80A00E8C(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00534(EnEiyer *this) {
    this->actionFunc = func_80A00E8C;
}

void func_80A00F84(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00544(EnEiyer *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    this->actor.velocity.y = 0.0f;
    this->unk_27C.y = player->actor.world.pos.y + 15.0f;
    this->colCyl.base.atFlags |= 1;
    this->colCyl.base.atFlags &= ~2;
    this->actionFunc = func_80A00F84;
}

void func_80A01010(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00588(EnEiyer *this) {
    Animation_MorphToPlayOnce(&this->skelanime, &D_060004C4, -3.0f);
    this->colCyl.base.atFlags &= ~1;
    this->actor.flags |= 0x10;
    this->unk_194 = -1;
    this->actor.gravity = 0.0f;
    this->colCyl.dim.height = sColCylInit.dim.height;
    this->actionFunc = func_80A01010;
}

void func_80A01104(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00600(EnEiyer *this) {
    this->unk_27C.y = this->actor.world.pos.y;
    Animation_Change(&this->skelanime, &D_06000FC0, 2.0f, 0.0f, 0.0f, (u8) 0, -3.0f);
    this->unk_194 = 40;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 5.0f;
    Actor_SetColorFilter(&this->actor, 0x4000, 200, 0, 40);
    this->colCyl.base.acFlags &= ~1;
    this->actionFunc = func_80A01104;
}

void func_80A01240(EnEiyer *this, GlobalContext *globalCtx);

void func_80A006B0(EnEiyer *this) {
    this->unk_194 = 20;
    Actor_SetColorFilter(&this->actor, 0x4000, 200, 0, 40);
    if (this->colCyl.info.bumper.dmgFlags != 0x19) {
        this->actor.speedXZ = 6.0f;
        Animation_MorphToLoop(&this->skelanime, &D_06000FC0, -3.0f);
    } else {
        this->actor.speedXZ -= 6.0f;
    }
    this->colCyl.info.bumper.dmgFlags = ~0x00300000;
    this->colCyl.base.atFlags &= ~1;
    this->colCyl.base.acFlags &= ~1;
    this->actionFunc = func_80A01240;
}

void func_80A012F4(EnEiyer *this, GlobalContext *globalCtx);

void func_80A0076C(EnEiyer *this) {
    this->actor.colorFilterParams |= 0x2000;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actionFunc = func_80A012F4;
}

void func_80A01374(EnEiyer *this, GlobalContext *globalCtx);

void func_80A00794(EnEiyer *this) {
    Animation_Change(&this->skelanime, &D_06000288, 2.0f, 0.0f, 0.0f, 0, -8.0f);
    this->unk_194 = 0x50;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -1.0f;
    this->colCyl.dim.height = sColCylInit.dim.height + 8;
    Actor_SetColorFilter(&this->actor, 0, 200, 0, 80);
    this->colCyl.base.atFlags &= ~1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = func_80A01374;
}

void func_80A00858(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    if (Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.75f) != 0) {
        func_80A00358(this);
    }
}

void func_80A008A4(EnEiyer *this, GlobalContext *globalCtx) {
    if ((this->colCyl.base.ocFlags2 & 1) != 0) {
        this->colCyl.base.ocFlags2 &= ~1;
        func_80A003DC(this, globalCtx);
    }
}

void func_80A008D4(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    this->actor.world.rot.y += -0x60;
    func_80A001A4(this);
    func_80A008A4(this, globalCtx);
    if (this->actor.params != 0 && ((EnEiyer*)this->actor.parent)->actionFunc != func_80A008D4) {
        func_80A003B4(this);
    }
}

void func_80A00950(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    if (Actor_WorldDistXZToPoint(&this->actor, &this->actor.home.pos) > 100.0f) {
        this->targetYaw = Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos) + 0x8000;
    } else if (this->targetYaw == this->actor.world.rot.y && Rand_ZeroOne() > 0.99f) {
        this->targetYaw = (Rand_ZeroOne() < 0.5f ? -1 : 1) * (Rand_ZeroOne() * 8192.0f + 8192.0f) + this->actor.world.rot.y;
    }
    Math_ScaledStepToS(&this->actor.world.rot.y, this->targetYaw, 0xB6);
    func_80A008A4(this, globalCtx);
}

void func_80A00A84(EnEiyer *this, GlobalContext *globalCtx) {
    EnEiyer *parent;

    if ((this->actor.home.pos.y - 50.0f) - this->actor.world.pos.y < 0) {
        this->actor.world.pos.y -= 0.5f;
    }

    parent = (EnEiyer*)this->actor.parent;
    if (parent->actionFunc == func_80A012F4) {
        Actor_Kill(&this->actor);
    } else if (parent->actionFunc == func_80A00858) {
        func_80A00218(this);
    }
}

void func_80A00B18(EnEiyer *this, GlobalContext *globalCtx) {
    s32 animFinished;
    s32 pad;
    f32 sp34;
    s32 sp30;
    f32 curFrame;

    animFinished = SkelAnime_Update(&this->skelanime);
    curFrame = this->skelanime.curFrame;
    if (this->skelanime.curFrame < 12.0f) {
        curFrame = 0.2607522f * curFrame;
        this->actor.world.pos.y = ((1.0f - cosf(curFrame)) * 40.0f) + this->actor.home.pos.y;
        sp34 = sinf(curFrame) * -40.0f;
        this->actor.world.pos.x = (Math_SinS(this->actor.shape.rot.y) * sp34) + this->unk_27C.x;
        this->actor.world.pos.z = (Math_CosS(this->actor.shape.rot.y) * sp34) + this->unk_27C.z;
    } else {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 80.0f, 0.5f);
        this->actor.speedXZ = 0.8f;
    }

    if (animFinished) {
        this->colCyl.base.acFlags |= 1;
        func_80A004BC(this);
    } else {
        this->actor.floorHeight = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->actor.floorPoly, &sp30, &this->actor, &this->actor.world.pos);
    }
}

void func_80A00C70(EnEiyer *this, GlobalContext *globalCtx) {
    f32 curFrame;
    s32 pad;
    s16 sp26;

    SkelAnime_Update(&this->skelanime);
    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    curFrame = this->skelanime.curFrame;
    Math_ApproachF(&this->unk_27C.y, this->actor.floorHeight + 80.0f + 5.0f, 0.3f, this->actor.speedXZ);
    this->actor.world.pos.y = this->unk_27C.y - cosf((curFrame - 5.0f) * 0.07853982f) * 5.0f;

    if (curFrame <= 45.0f) {
        Math_StepToF(&this->actor.speedXZ, 1.0f, 0.03f);
    } else {
        Math_StepToF(&this->actor.speedXZ, 1.5f, 0.03f);
    }

    if (this->actor.bgCheckFlags & 8) {
        this->targetYaw = this->actor.wallYaw;
    }

    if (Math_ScaledStepToS(&this->actor.world.rot.y, this->targetYaw, 0xB6) != 0) {
        if (this->unk_194 != 0 || Rand_ZeroOne() > 0.05f) {
            this->actor.world.rot.y += 0x100;
        } else {
            sp26 = Rand_S16Offset(0x2000, 0x2000);
            this->targetYaw = (Rand_ZeroOne() < 0.5f ? -1 : 1) * sp26 + this->actor.world.rot.y;
        }
    }

    if (this->unk_194 == 0 && this->actor.yDistToPlayer < 0.0f && this->actor.xzDistToPlayer < 120.0f) {
        func_80A00534(this);
    }

    func_8002F974(&this->actor, NA_SE_EN_EIER_FLY - SFX_FLAG);
}

void func_80A00E8C(EnEiyer *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;
    Vec3f sp28;

    SkelAnime_Update(&this->skelanime);
    if (this->actor.shape.rot.x > 0 && (s32)this->actor.shape.rot.x < 0x8000) {
        sp28.x = player->actor.world.pos.x;
        sp28.y = player->actor.world.pos.y + 20.0f;
        sp28.z = player->actor.world.pos.z;
        if (Math_ScaledStepToS(&this->actor.shape.rot.x, Actor_WorldPitchTowardPoint(&this->actor, &sp28), 0x1000) != 0) {
            func_80A00544(this, globalCtx);
        }
    } else {
        this->actor.shape.rot.x -= 0x1000;
    }
    this->actor.world.rot.x = -this->actor.shape.rot.x;
    Math_StepToF(&this->actor.speedXZ, 5.0f, 0.3f);
    Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x71C);
    func_8002F974(&this->actor, NA_SE_EN_EIER_FLY - SFX_FLAG);
}

void func_80A00F84(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    this->actor.speedXZ *= 1.1f;

    if (this->actor.bgCheckFlags & 8 || this->actor.bgCheckFlags & 1) {
        func_80A00588(this);
    }

    if (this->colCyl.base.atFlags & 2) {
        this->colCyl.base.atFlags &= ~3;
    }

    func_8002F974(&this->actor, NA_SE_EN_EIER_FLY - SFX_FLAG);
}

void func_80A01010(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    Math_ScaledStepToS((s16 *) &this->actor.world.rot, -0x4000, 0x450);
    Math_StepToF(&this->actor.speedXZ, 7.0f, 1.0f);

    if (this->unk_194 == -1) {
        if (this->actor.bgCheckFlags & 8 || this->actor.bgCheckFlags & 1) {
            this->unk_194 = 0xA;
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 0x1E, NA_SE_EN_OCTAROCK_SINK);
            if ((this->actor.bgCheckFlags & 1) != 0) {
                EffectSsGSplash_Spawn(globalCtx, &this->actor.world.pos, NULL, NULL, 1, 0x2BC);
            }
        }
    } else {
        if (this->unk_194 != 0) {
            this->unk_194--;
        }
        if (this->unk_194 == 0) {
            this->actor.shape.rot.x = 0;
            this->actor.world.rot.x = 0;
            func_80A00218(this);
        }
    }
}

void func_80A01104(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);
    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    Math_ApproachF(&this->unk_27C.y, this->actor.floorHeight + 80.0f + 5.0f, 0.5f, this->actor.speedXZ);
    this->actor.world.pos.y = this->unk_27C.y - 5.0f;

    if (this->actor.bgCheckFlags & 8) {
        this->targetYaw = this->actor.wallYaw;
    } else {
        this->targetYaw = this->actor.yawTowardsPlayer + 0x8000;
    }

    Math_ScaledStepToS(&this->actor.world.rot.y, this->targetYaw, 0x38E);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x200);
    this->actor.shape.rot.z = sinf(this->unk_194 * (M_PI/5)) * 5120.0f;

    if (this->unk_194 == 0) {
        this->actor.shape.rot.x = 0;
        this->actor.shape.rot.z = 0;
        this->colCyl.base.acFlags = this->colCyl.base.acFlags | 1;
        func_80A004BC(this);
    }
    this->actor.world.rot.x = -this->actor.shape.rot.x;
}

void func_80A01240(EnEiyer *this, GlobalContext *globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if (this->actor.speedXZ > 0.0f) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0x400);
    } else {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x4000, 0x400);
    }

    this->actor.shape.rot.z += 0x1000;
    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    this->actor.world.rot.x = -this->actor.shape.rot.x;
    if ((this->unk_194 == 0) || ((this->actor.bgCheckFlags & 0x10) != 0)) {
        func_80A0076C(this);
    }
}

void func_80A012F4(EnEiyer *this, GlobalContext *globalCtx) {
    s16 temp_v0;

    temp_v0 = this->actor.shape.shadowAlpha - 5;
    if (temp_v0 < 0) {
        this->actor.shape.shadowAlpha = 0;
    } else {
        this->actor.shape.shadowAlpha = temp_v0;
    }
    this->actor.world.pos.y -= 2.0f;
    if (this->actor.shape.shadowAlpha == 0) {
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 80);
        Actor_Kill(&this->actor);
    }
}

void func_80A01374(EnEiyer *this, GlobalContext *globalCtx) {
    if (this->unk_194 != 0) {
        this->unk_194--;
    }

    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x200);
    SkelAnime_Update(&this->skelanime);

    if (Animation_OnFrame(&this->skelanime, 0.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_EIER_FLUTTER);
    }

    if ((this->actor.bgCheckFlags & 2) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }

    if (this->unk_194 == 0) {
        this->actor.gravity = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->colCyl.dim.height = sColCylInit.dim.height;
        func_80A004BC(this);
    }
}

void func_80A0142C(EnEiyer *this, GlobalContext *globalCtx) {
    if (this->colCyl.base.acFlags & 2) {
        this->colCyl.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->colCyl.info, 1);

        if (this->actor.colChkInfo.damageEffect != 0 || this->actor.colChkInfo.damage != 0) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_EIER_DEAD);
                this->actor.flags &= ~1;
            }

            if (this->colCyl.info.bumper.dmgFlags == 0x19) {
                if (this->actor.colChkInfo.damage == 0) {
                    func_80A003DC(this, globalCtx);
                } else {
                    func_80A006B0(this);
                }
                return;
            }

            if (this->actor.colChkInfo.damageEffect == 1) {
                if (this->actionFunc != func_80A01374) {
                    func_80A00794(this);
                }
            } else {
                if (this->actor.colChkInfo.health != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_EIER_DAMAGE);
                    func_80A00600(this);
                } else {
                    this->colCyl.dim.height = sColCylInit.dim.height;
                    func_80A006B0(this);
                }
            }
        }
    }
}

void EnEiyer_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnEiyer *this = THIS;
    s32 pad;

    func_80A0142C(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (this->actor.world.rot.x == 0 || this->actionFunc == func_80A01374) {
        Actor_MoveForward(&this->actor);
    } else {
        func_8002D97C(&this->actor);
    }
    if (this->actionFunc == func_80A00C70 ||
            this->actionFunc == func_80A00F84 ||
            this->actionFunc == func_80A01374 ||
            this->actionFunc == func_80A01240 ||
            this->actionFunc == func_80A01104 ||
            (this->actionFunc == func_80A01010 && this->unk_194 == -1)) {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 5.0f, 27.0f, 30.0f, 7);
    }

    if (this->actor.params == 0xA
            || (this->actionFunc != func_80A00858 && this->actionFunc != func_80A008D4)) {
        this->actor.shape.rot.y = this->actor.world.rot.y;
    }

    if (this->actor.params == 0 || this->actor.params == 0xA) {
        Collider_UpdateCylinder(&this->actor, &this->colCyl);
        if (this->colCyl.base.atFlags & 1) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, (Collider *) &this->colCyl);
        }
        if (this->colCyl.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, (Collider *) &this->colCyl);
        }
        if (this->actionFunc != func_80A00B18) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, (Collider *) &this->colCyl);
        }
    }
    if (this->actor.flags & 1) {
        this->actor.focus.pos.x = this->actor.world.pos.x + Math_SinS(this->actor.shape.rot.y) * 12.5f;
        this->actor.focus.pos.z = this->actor.world.pos.z + Math_CosS(this->actor.shape.rot.y) * 12.5f;
        this->actor.focus.pos.y = this->actor.world.pos.y;
    }
}

s32 func_80A0178C(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx, Gfx **gfx) {
    EnEiyer *this = THIS;
    if (limbIndex == 1) {
        pos->z += 2500.0f;
    }
    if (this->colCyl.info.bumper.dmgFlags == 0x19 && limbIndex != 9 && limbIndex != 10) {
        *dList = NULL;
    }
    return 0;
}

void EnEiyer_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnEiyer *this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_eiyer.c", 1494);
    if (this->actionFunc != func_80A012F4) {
        func_80093D18(globalCtx->state.gfxCtx);
        

        gSPSegment(POLY_OPA_DISP++, 0x08, &D_80116280[2]);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 255);
        
        POLY_OPA_DISP = SkelAnime_Draw(globalCtx, this->skelanime.skeleton, this->skelanime.jointTable, func_80A0178C, NULL, this, POLY_OPA_DISP);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08, D_80116280);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->actor.shape.shadowAlpha);
        
        POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelanime.skeleton, this->skelanime.jointTable, func_80A0178C, NULL, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_eiyer.c", 1541);
}
