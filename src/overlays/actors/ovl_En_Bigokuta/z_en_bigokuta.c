#include "z_en_bigokuta.h"

#define FLAGS 0x00000035

#define THIS ((EnBigokuta*)thisx)

void EnBigokuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809BD318(EnBigokuta* this);
void func_809BD84C(EnBigokuta* this, GlobalContext* globalCtx);
void func_809BD8DC(EnBigokuta* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000444;
extern UNK_TYPE D_06000A74;
extern UNK_TYPE D_06000D1C;
extern AnimationHeader D_060014B8;
extern UNK_TYPE D_06001CA4;
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
s32 D_809BF488[] = { 0xB04C07D0, 0x801F0002, 0xB06CFFFF, 0x89170059, 0x48500021,
                     0xFFFFFFFF, 0x969696FF, 0x00000000, 0x00000000, 0x00000000 };

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCE3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCEBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCF68.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD3F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD47C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD4A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD6B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD7F0.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDAE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDB90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDC08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDFC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE3E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE4A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BEBBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Draw.s")
