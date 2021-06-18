#include "z_en_bigokuta.h"

#define FLAGS 0x00000035

#define THIS ((EnBigokuta*)thisx)

void EnBigokuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809BD318(EnBigokuta* this);
void func_809BD3E0(EnBigokuta* this);
void func_809BD84C(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BD8DC(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BDAE8(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BDB90(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BDC08(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BE3E4(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BE4A4(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BE518(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BCF68(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BDFC8(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BE26C(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BE180(EnBigokuta* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000444;
extern UNK_TYPE D_06000A74;
extern AnimationHeader D_06000D1C;
extern AnimationHeader D_060014B8;
extern AnimationHeader D_06001CA4;
extern FlexSkeletonHeader D_06006BC0;

s32 D_809BF3A0 = 0xFFFFFFFF;
s32 D_809BF3A4 = 0x64FFFFFF;
s32 D_809BF3A8[] = { 0x00000000, 0x00000000, 0x00000000 };

const ActorInit En_Bigokuta_InitVars = {
    ACTOR_EN_BIGOKUTA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BIGOKUTA,
    sizeof(EnBigokuta),
    (ActorFunc)EnBigokuta_Init,
    (ActorFunc)EnBigokuta_Destroy,
    (ActorFunc)EnBigokuta_Update,
    (ActorFunc)EnBigokuta_Draw,
};

static ColliderJntSphElementInit D_809BF3D4[1] = {
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_HARD,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 45, -30 }, 75 }, 100 },
    },
};

static ColliderJntSphInit D_809BF3F8 = {
    {
        COLTYPE_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    D_809BF3D4,
};

static ColliderCylinderInit D_809BF408[] = {
    { {
          COLTYPE_HARD,
          AT_ON | AT_TYPE_ENEMY,
          AC_ON | AC_HARD | AC_TYPE_PLAYER,
          OC1_ON | OC1_TYPE_ALL,
          OC2_TYPE_1,
          COLSHAPE_CYLINDER,
      },
      {
          ELEMTYPE_UNK1,
          { 0x20000000, 0x00, 0x08 },
          { 0xFFCFFFE7, 0x00, 0x00 },
          TOUCH_ON | TOUCH_SFX_HARD,
          BUMP_ON,
          OCELEM_ON,
      },
      { 50, 100, 0, { 30, 0, 12 } } },
    { {
          COLTYPE_HARD,
          AT_ON | AT_TYPE_ENEMY,
          AC_ON | AC_HARD | AC_TYPE_PLAYER,
          OC1_ON | OC1_TYPE_ALL,
          OC2_TYPE_1,
          COLSHAPE_CYLINDER,
      },
      {
          ELEMTYPE_UNK1,
          { 0x20000000, 0x00, 0x08 },
          { 0xFFCFFFE7, 0x00, 0x00 },
          TOUCH_ON | TOUCH_SFX_HARD,
          BUMP_ON,
          OCELEM_ON,
      },
      { 50, 100, 0, { -30, 0, 12 } } },
};

CollisionCheckInfoInit D_809BF460[] = { 0x04, 0x0082, 0x0078, 0xC8 };

DamageTable D_809BF468 = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(0, 0xF),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(0, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(0, 0x0),
    /* Giant's Knife */ DMG_ENTRY(0, 0x0),
    /* Fire arrow    */ DMG_ENTRY(0, 0x0),
    /* Ice arrow     */ DMG_ENTRY(0, 0x0),
    /* Light arrow   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0x0),
    /* Giant spin    */ DMG_ENTRY(0, 0x0),
    /* Master spin   */ DMG_ENTRY(0, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(0, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};
/*
TODO this doesn't match for whatever reason
InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(gravity, -1, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 89, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 33, ICHAIN_STOP),
};*/
s32 D_809BF488[] = { 0xB04C07D0, 0x801F0002, 0xB06CFFFF, 0x89170059, 0x48500021 };
s32 data[] = { 0xFFFFFFFF, 0x969696FF, 0x00000000, 0x00000000, 0x00000000 };

void EnBigokuta_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBigokuta* this = THIS;
    s32 i;

    Actor_ProcessInitChain(&this->actor, (InitChainEntry*)D_809BF488);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06006BC0, &D_060014B8, this->jointTable, this->morphTable, 20);

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_809BF3F8, &this->element);

    this->collider.elements->dim.worldSphere.radius = this->collider.elements->dim.modelSphere.radius;

    for (i = 0; i < ARRAY_COUNT(D_809BF408); i++) {
        Collider_InitCylinder(globalCtx, &this->cylinder[i]);
        Collider_SetCylinder(globalCtx, &this->cylinder[i], &this->actor, &D_809BF408[i]);
    }

    CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_809BF468, D_809BF460);

    this->unk_194 = 1;

    if (this->actor.params == 0) {
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
        func_809BD318(this);
    } else {
        func_809BD3E0(this);
        this->unk_19A = 0;
        this->unk_196 = 1;
        this->actor.home.pos.y = -1025.0f;
    }
}

void EnBigokuta_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBigokuta* this = THIS;
    s32 i;
    Collider_DestroyJntSph(globalCtx, &this->collider);
    for (i = 0; i < ARRAY_COUNT(this->cylinder); i++) {
        Collider_DestroyCylinder(globalCtx, &this->cylinder[i]);
    }
}

void func_809BCE3C(EnBigokuta* this);
#ifdef NON_MATCHING
// t9 vs t0 swap
void func_809BCE3C(EnBigokuta* this) {
    this->actor.world.rot.y = this->actor.shape.rot.y + ((-this->unk_194) * 0x4000);
    this->actor.world.pos.x = (Math_SinS(this->actor.world.rot.y) * 263.0f) + this->actor.home.pos.x;
    this->actor.world.pos.z = (Math_CosS(this->actor.world.rot.y) * 263.0f) + this->actor.home.pos.z;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCE3C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCEBC.s")

// TODO check this when this file is done
#ifdef NON_MATCHING
void func_809BCF68(EnBigokuta* this, GlobalContext* globalCtx) {
    Vec3f effectPos;
    s16 temp_a0;

    if ((globalCtx->gameplayFrames & 1) != 0) {
        temp_a0 = ((Rand_S16Offset(0x1200, 0xC00) + this->actor.shape.rot.y) - (this->unk_194 * 0xA00));
    } else {
        temp_a0 = this->actor.shape.rot.y - this->unk_194 * 0xA00 - Rand_S16Offset(0x1200, 0xC00);
    }
    if (func_809BE4A4 != this->actionFunc) {
        if ((this->actionFunc == func_809BE3E4) || ((globalCtx->gameplayFrames & 2) != 0)) {
            effectPos.x = this->actor.world.pos.x - (Math_SinS(temp_a0) * 80.0f);
            effectPos.z = this->actor.world.pos.z - (Math_CosS(temp_a0) * 80.0f);
            effectPos.y = this->actor.home.pos.y + 1.0f;
            EffectSsGRipple_Spawn(globalCtx, &effectPos, 100, 500, 0);
        } else {
            effectPos.x = this->actor.world.pos.x - (Math_SinS(temp_a0) * 120.0f);
            effectPos.z = this->actor.world.pos.z - (Math_CosS(temp_a0) * 120.0f);
            effectPos.y = this->actor.home.pos.y + 5.0f;
        }
    } else {
        effectPos.x = this->actor.world.pos.x - (Math_SinS(temp_a0) * 50.0f);
        effectPos.z = this->actor.world.pos.z - (Math_CosS(temp_a0) * 50.0f);
        effectPos.y = this->actor.home.pos.y + 1.0f;
        EffectSsGRipple_Spawn(globalCtx, &effectPos, 100, 500, 0);
    }
    EffectSsGSplash_Spawn(globalCtx, &effectPos, NULL, NULL, 1, 800);
    if (func_809BE4A4 != this->actionFunc) {
        func_8002F974(&this->actor, NA_SE_EN_DAIOCTA_SPLASH - SFX_FLAG);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCF68.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD1C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD2E4.s")

void func_809BD318(EnBigokuta* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060014B8);
    this->unk_19A = 0;
    this->actor.home.pos.y = -1025.0f;
    this->unk_196 = 0x79;
    this->actionFunc = func_809BD84C;
}

void func_809BD370(EnBigokuta* this) {
    this->unk_196 = 21;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actionFunc = func_809BD8DC;
}

void func_809BD3AC(EnBigokuta* this) {
    this->actor.world.pos.x = this->actor.home.pos.x + 263.0f;
    this->unk_196 = 10;
    this->actionFunc = func_809BDAE8;
    this->actor.world.pos.y = this->actor.home.pos.y;
}

void func_809BD3E0(EnBigokuta* this) {
    this->unk_196 = (u16)0x28;
    this->actionFunc = func_809BDB90;
}

void func_809BD3F8(EnBigokuta* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_06001CA4, -5.0f);
    this->unk_196 = 350;
    this->unk_198 = 80;
    this->unk_19A = this->unk_194 * -0x200;
    func_809BCE3C(this);
    this->cylinder[0].base.atFlags |= 1;
    this->collider.base.acFlags |= 1;
    this->actionFunc = func_809BDC08;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD47C.s")

void func_809BD4A4(EnBigokuta* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_060014B8, -5.0f);
    this->unk_195 = 1;
    this->actor.world.rot.x = this->actor.shape.rot.y + 0x8000;
    this->unk_19A = this->unk_194 << 9;
    this->collider.base.acFlags &= ~1;
    this->cylinder[0].base.atFlags |= 1;
    this->actionFunc = func_809BDFC8;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD6B8.s")

void func_809BD768(EnBigokuta* this) {
    this->unk_194 = (Rand_ZeroOne() < 0.5f) ? -1 : 1;
    this->unk_19A = 0;
    this->actor.flags &= ~1;
    this->cylinder[0].base.atFlags &= ~1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DAIOCTA_SINK);
    this->actionFunc = func_809BE4A4;
}

void func_809BD7F0(EnBigokuta* this, GlobalContext* globalCtx) {

    this->actor.world.rot.y = Actor_WorldYawTowardPoint(globalCtx->actorCtx.actorLists[2].head, &this->actor.home.pos);
    this->actor.shape.rot.y = this->actor.world.rot.y + (this->unk_194 << 0xE);
    func_809BCE3C(this);
    this->actionFunc = func_809BE518;
}

void func_809BD84C(EnBigokuta* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    this->unk_196--;

    if ((this->unk_196 == 13) || (this->unk_196 == -20)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DAIOCTA_VOICE);
    }
    if (this->unk_196 == 1) {
        func_800F5ACC(0x38U);
    }
    if (this->actor.params == 1) {
        func_809BD370(this);
    }
}

void func_809BD8DC(EnBigokuta* this, GlobalContext* globalCtx) {
    Vec3f effectPos;

    this->unk_196--;

    if (this->unk_196 >= 0) {
        Math_StepToF(&this->actor.world.pos.x, this->actor.home.pos.x + 263.0f, 12.523809f);

        if (this->unk_196 < 0xE) {
            this->actor.world.pos.y = (sinf((f32)this->unk_196 * 0.11219974f) * 200.0f) + this->actor.home.pos.y;
        } else {
            this->actor.world.pos.y =
                (sinf((f32)(this->unk_196 - 7) * 0.22439948f) * 130.0f) + (this->actor.home.pos.y + 70.0f);
        }
        if (this->unk_196 == 0) {
            effectPos.x = this->actor.world.pos.x + 40.0f;
            effectPos.y = this->actor.world.pos.y;
            effectPos.z = this->actor.world.pos.z - 70.0f;
            EffectSsGSplash_Spawn(globalCtx, &effectPos, NULL, NULL, 1, 2000);
            effectPos.x = this->actor.world.pos.x - 40.0f;
            EffectSsGSplash_Spawn(globalCtx, &effectPos, NULL, NULL, 1, 2000);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DAIOCTA_LAND_WATER);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_LAND_BIG);
            func_800AA000(0.0f, 0xFF, 0x14, 0x96);
            return;
        }
    } else if (this->unk_196 < -1) {
        this->actor.world.pos.y = this->actor.home.pos.y - (sinf((f32)(this->unk_196 + 1) * 0.31415927f) * 20.0f);
        if (this->unk_196 == -0xA) {
            func_809BD3AC(this);
        }
    }
}

void func_809BDAE8(EnBigokuta* this, GlobalContext* globalCtx) {
    if (Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.home.rot.y + 0x4000, 0x400) != 0) {
        if (this->unk_196 != 0) {
            this->unk_196 = this->unk_196 - 1;
        }
        if (this->unk_196 == 0) {
            func_809BCE3C(this);
            this->actor.home.pos.y = this->actor.world.pos.y;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_ENEMY);
            this->actor.params = 2;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DAIOCTA_VOICE);
            func_809BD3E0(this);
        }
    }
}

void func_809BDB90(EnBigokuta* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->unk_196 == 0) {
        if (this->actor.params == 3) {
            func_800F5ACC(0x38U);
        }
        func_809BD3F8(this);
    }
}

void func_809BDC08(EnBigokuta* this, GlobalContext* globalCtx) {
    Player* player;
    s16 phi_v0;
    s16 pad;
    s16 phi_v1;
    Vec3f sp28;

    player = PLAYER;
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_BUBLE);
    }

    if (this->unk_196 < 0) {
        this->actor.shape.rot.y += this->unk_194 * 0x200;
        func_809BCE3C(this);
        this->unk_196++;
        if (this->unk_196 == 0) {
            this->unk_196 = 0x15E;
        }
        func_809BCF68(this, globalCtx);
        return;
    }

    phi_v1 = (Actor_WorldDistXZToPoint(&player->actor, &this->actor.home.pos) - 180.0f) * 0.53333336f;
    func_8002DBD0(&this->actor, &sp28, &player->actor.world.pos);
    if (fabsf(sp28.x) > 263.0f ||
        ((sp28.z > 0.0f) && !func_8002E084(&this->actor, 0x1B00) && !func_8002DFC8(&this->actor, 0x2000, globalCtx))) {
        phi_v1 -= 0x80;
        if (this->unk_196 != 0) {
            this->unk_196--;
        }
    }

    if ((this->actor.xzDistToPlayer < 250.0f) && (func_8002E084(&this->actor, 0x6000) == 0)) {
        if (this->unk_198 != 0) {
            this->unk_198--;
        }
        if (this->actor.xzDistToPlayer < 180.0f) {
            phi_v1 += 0x20;
        }
    } else {
        this->unk_198 = 0x50;
    }
    if (this->actor.colChkInfo.health == 1) {
        phi_v1 = (phi_v1 + 0x130) * 1.1f;
    } else {
        phi_v1 += 0x130;
    }
    this->actor.shape.rot.y += phi_v1 * this->unk_194;
    func_809BCE3C(this);
    func_809BCF68(this, globalCtx);
    if (this->unk_198 == 0) {
        func_809BD768(this);
        return;
    }
    if (this->unk_196 == 0) {
        func_809BD4A4(this);
        return;
    }
    if (this->unk_195 != 0) {
        phi_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (phi_v0 < 0) {
            phi_v0 = -phi_v0;
        }
        if ((phi_v0 < 0x4100) && (phi_v0 >= 0x3F01)) {
            if (Rand_ZeroOne() < 0.6f) {
                this->unk_196 = 0;
                func_809BD4A4(this);
            }
            this->unk_195 = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDF34.s")

void func_809BDFC8(EnBigokuta* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->unk_196 == 20) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DAIOCTA_VOICE);
    }
    if ((this->unk_196 == 0) && (Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.world.rot.x, 0x800) != 0)) {
        this->unk_194 = -this->unk_194;
        func_809BD3F8(this);
    }
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE3E4.s")

void func_809BE4A4(EnBigokuta* this, GlobalContext* globalCtx) {
    this->actor.world.pos.y -= 10.0f;
    this->actor.shape.rot.y += 0x2000;
    if (this->actor.world.pos.y < (this->actor.home.pos.y + -200.0f)) {
        func_809BD7F0(this, globalCtx);
    }
    func_809BCF68(this, globalCtx);
}
void func_809BE518(EnBigokuta* this, GlobalContext* globalCtx) {

    if (Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 10.0f) != 0) {
        this->actor.flags |= 1;
        func_809BD3F8(this);
    }
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Update.s")

s32 func_809BEBBC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BEBBC.s")

/*void EnBigokuta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBigokuta* this = THIS;
    f32 rotX;
    f32 rotY;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bigokuta.c", 0x7E1);

    if ((&func_809BE26C != this->actionFunc) || (this->unk_196 != 0) || (this->unk_198 != 0)) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x0C, D_80116280);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 254);

        if ((this->unk_196 & 1) != 0) {
            if ((this->actionFunc != func_809BE180) || (this->unk_196 < 8)) {
                if ((this->actionFunc == func_809BE26C) && (this->unk_196 >= 0xA)) {
                block_8:
                    rotX = Rand_ZeroOne() * 6.2831855f;
                    rotY = Rand_ZeroOne() * 6.2831855f;

                    Matrix_RotateY(rotY, (u8)1U);
                    Matrix_RotateX(rotX, (u8)1U);
                    Matrix_Scale(0.78999996f, 1.3f, 0.78999996f, (u8)1U);
                    Matrix_RotateX(-rotX, (u8)1U);
                    Matrix_RotateY(-rotY, (u8)1U);
                }
            } else {
                goto block_8;
            }
        }
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              (s32)this->skelAnime.dListCount, func_809BEBBC, NULL, this);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x0C, D_80116280);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->actor.scale.y * 7727.273f);
        POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                           (s32)this->skelAnime.dListCount, NULL, NULL, NULL, this);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bigokuta.c", 0x81C);
}*/

void EnBigokuta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBigokuta* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bigokuta.c", 0x7E1);

    if ((this->actionFunc != func_809BE26C) || (this->unk_196 != 0) || (this->unk_198 != 0)) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x0C, &D_80116280[2]);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 255);
        if ((this->unk_196 & 1) != 0) {
            if (((this->actionFunc == func_809BE180) && (this->unk_196 >= 8)) ||
                ((this->actionFunc == func_809BE26C) && (this->unk_196 >= 0xA))) {
                f32 rotX;
                f32 rotY;

                rotX = Rand_ZeroOne() * (M_PI * 2.0f); // 6.2831855f;
                rotY = Rand_ZeroOne() * (M_PI * 2.0f); // 6.2831855f;

                Matrix_RotateY(rotY, MTXMODE_APPLY);
                Matrix_RotateX(rotX, MTXMODE_APPLY);
                Matrix_Scale(0.78999996f, 1.3f, 0.78999996f, MTXMODE_APPLY);
                Matrix_RotateX(-rotX, MTXMODE_APPLY);
                Matrix_RotateY(-rotY, MTXMODE_APPLY);
            }
        }
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_809BEBBC, NULL, (void*)this);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x0C, D_80116280);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, (this->actor.scale.y * 7727.273f));
        POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                           this->skelAnime.dListCount, NULL, NULL, NULL, this);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bigokuta.c", 0x81C);
}