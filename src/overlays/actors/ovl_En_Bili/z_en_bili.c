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
void func_809C06E0(EnBili* this, GlobalContext* globalCtx);
void func_809C0980(EnBili* this, GlobalContext* globalCtx);
void func_809C09E0(EnBili* this, GlobalContext* globalCtx);

void func_809BFD94(EnBili* this, GlobalContext* globalCtx);
void func_809C0570(EnBili* this, GlobalContext* globalCtx);
void func_809C0600(EnBili* this, GlobalContext* globalCtx);
void func_809C067C(EnBili* this, GlobalContext* globalCtx);
void func_809C0754(EnBili* this, GlobalContext* globalCtx);
void func_809C0A70(EnBili* this, GlobalContext* globalCtx);

const ActorInit En_Bili_InitVars = {
    ACTOR_EN_BILI,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BL,
    sizeof(EnBili),
    (ActorFunc)EnBili_Init,
    (ActorFunc)EnBili_Destroy,
    (ActorFunc)EnBili_Update,
    (ActorFunc)EnBili_Draw,
};

// extern ColliderCylinderInit D_809C1640;
static ColliderCylinderInit D_809C1640 = {
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

DamageTable D_809C1678 = {
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

static Color_RGBA8 D_809C16A0 = { 255, 255, 255, 255 };

static Color_RGBA8 D_809C16A4 = { 200, 255, 255, 255 };


extern AnimationHeader D_06000024;
extern AnimationHeader D_06000064;
extern AnimationHeader D_060000A4;
extern SkeletonHeader D_06005848;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/EnBili_Init.s")
void EnBili_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBili* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 17.0f);
    this->actor.shape.unk_14 = 0x9B;
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06005848, &D_060000A4, this->jointTable, this->morphTable, 5);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_809C1640);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &D_809C1678, &sColChkInfoInit);
    this->unk_195 = 0;
    if (this->actor.params == -1) {
        func_809BF9BC(this);
    } else {
        func_809BFA14(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/EnBili_Destroy.s")
void EnBili_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBili* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// Setup Action Functions

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BF9BC.s")
void func_809BF9BC(EnBili* this) {
    this->actor.speedXZ = 0.7f;
    this->collider.info.bumper.effect = 1;
    this->unk_196 = 0x20;
    this->collider.base.atFlags |= 1;
    this->collider.base.acFlags |= 1;
    this->actionFunc = func_809C0174;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFA14.s")
void func_809BFA14(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    this->unk_196 = 0x19;
    this->actor.velocity.y = 6.0f;
    this->actor.gravity = -0.3f;
    this->collider.base.atFlags &= ~1;
    this->actionFunc = func_809C0260;
    this->actor.speedXZ = 3.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFA8C.s")
void func_809BFA8C(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000024);
    this->unk_196 = 0xA;
    this->actionFunc = func_809C02B8;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = -1.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFAE8.s")
void func_809BFAE8(EnBili* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06000064);
    this->collider.base.atFlags &= ~1;
    this->actionFunc = func_809C04B4;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFB40.s")
void func_809BFB40(EnBili* this) {
    this->actor.speedXZ = 1.2f;
    this->actionFunc = func_809C0570;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFB5C.s")
void func_809BFB5C(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    this->unk_196 = 0x60;
    this->actor.speedXZ = 0.9f;
    this->collider.base.atFlags |= 1;
    this->actionFunc = func_809C0600;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFBC4.s")
void func_809BFBC4(EnBili* this) {
    if (this->skelAnime.animation != &D_060000A4) {
        Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    }
    this->actor.posRot.rot.y = func_8002DAC0(&this->actor, &this->collider.base.ac->pos4) + 0x8000;
    this->actor.posRot.rot.x = func_8002DB28(&this->actor, &this->collider.base.ac->pos4);
    this->actionFunc = func_809C067C;
    this->actor.speedXZ = 5.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFC48.s")
void func_809BFC48(EnBili* this) {
    if (this->actionFunc == func_809C04B4) {
        Animation_PlayLoop(&this->skelAnime, &D_060000A4);
    }
    this->unk_196 = 0x14;
    this->collider.base.atFlags = this->collider.base.atFlags & 0xFFFE;
    this->collider.base.acFlags = this->collider.base.acFlags & 0xFFFE;
    this->actor.flags = this->actor.flags | 0x10;
    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, (u16)0x4000, (u16)0xC8, (u16)0x2000, 0x14);
    this->actionFunc = func_809C06E0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFCE8.s")
void func_809BFCE8(EnBili* this) {
    this->unk_196 = 0x12;
    this->actor.flags &= ~1;
    this->actionFunc = func_809C0754;
    this->actor.speedXZ = 0.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFD18.s")
void func_809BFD18(EnBili* this) {
    this->unk_196 = 0x50;
    this->collider.info.bumper.effect = 0;
    this->actor.gravity = -1.0f;
    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0, 0x96, 0x2000, 0x50);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->collider.base.atFlags &= ~1;
    this->actionFunc = func_809C0980;
}

// ?

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFD94.s")
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

        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp80, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF,
                                       (Rand_ZeroOne() * 0.2f) + 0.7f);
    }

    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0, 0x96, 0x2000, 0xA);
    this->collider.base.atFlags &= ~1;
    this->collider.base.acFlags &= ~1;
    this->unk_196 = 0x12C;
    this->actionFunc = func_809C09E0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809BFF6C.s")
void func_809BFF6C(EnBili* this) {
    s16 curFrame;
    // s16 temp_v1_3;

    curFrame = this->skelAnime.curFrame;

    if (this->actionFunc == func_809C02B8) {
        this->unk_194 = (ABS((s16)(3 - curFrame)) + 5) % 8;
    } else if (this->actionFunc == func_809C04B4) {
        if (curFrame < 10) {
            // temp_v1_3 = curFrame >> 1;

            this->unk_194 = (((s16)(curFrame >> 1) > 3) ? 3 : (s16)(curFrame >> 1));

        } else if (curFrame < 19) {
            this->unk_194 = CLAMP_MIN((s16)(17 - curFrame), 0) >> 1;
        } else if (curFrame < 37) {
            this->unk_194 = ((36 - curFrame) / 3) + 2;
        } else {
            this->unk_194 = (40 - curFrame) >> 1;
        }
    } else {
        this->unk_194 = curFrame >> 1;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C008C.s")
void func_809C008C(EnBili* this) {
    f32 temp_f0;
    f32 phi_f12;
    f32 phi_f14;

    temp_f0 = this->actor.posRot.pos.y + this->actor.yDistToLink;

    phi_f14 = ((this->actionFunc == func_809C0600) ? 100.0f : 40.0f);
    phi_f12 = CLAMP_MIN(this->actor.groundY, temp_f0);

    Math_StepToF(&this->actor.initPosRot.pos.y, phi_f12 + phi_f14, 1.0f);
    this->actor.posRot.pos.y = (sinf(this->unk_196 * (M_PI / 16)) * 3.0f) + this->actor.initPosRot.pos.y;
    if (this->actor.bgCheckFlags & 8) {
        this->actor.posRot.rot.y = this->actor.wallPolyRot;
    }
}

// Action functions

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0174.s")
void func_809C0174(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_196 != 0) {
        this->unk_196--;
    }

    if (!(this->unk_196 % 4)) {
        this->actor.posRot.rot.y += Rand_CenteredFloat(1820.0f);
    }

    func_809C008C(this);

    if (this->unk_196 == 0) {
        this->unk_196 = 0x20;
    }

    if ((this->actor.xzDistToLink < 160.0f) && (fabsf(this->actor.yDistToLink) < 45.0f)) {
        func_809BFB40(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0260.s")
void func_809C0260(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->unk_196 == 0) {
        func_809BF9BC(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C02B8.s")
void func_809C02B8(EnBili* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f sp78;
    s16 temp_s1;

    for (i = 0; i < 4; i++) {
        if (!((this->unk_196 + (i << 1)) % 4)) {
            temp_s1 = (s16)Rand_CenteredFloat(12288.0f) + (i * 0x4000) + 0x2000;
            sp78.x = Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.x;
            sp78.y = (Rand_ZeroOne() * 5.0f) + this->actor.posRot.pos.y + 2.5f;
            sp78.z = Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.z;
            EffectSsLightning_Spawn(globalCtx, &sp78, &D_809C16A0, &D_809C16A4, 0xF, temp_s1, 6, 2);
        }
    }

    SkelAnime_Update(&this->skelAnime);
    func_8002F974(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);

    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    this->actor.velocity.y *= -1.0f;
    if ((this->unk_196 == 0) && Animation_OnFrame(&this->skelAnime, 0.0f)) {
        if (this->actor.params == 1) {
            func_809BFCE8(this);
        } else {
            func_809BFAE8(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C04B4.s")
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0570.s")
void func_809C0570(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 2, 0x71C);

    if (this->unk_196 != 0) {
        this->unk_196--;
    }

    func_809C008C(this);

    if (this->unk_196 == 0) {
        this->unk_196 = 0x20;
    }

    if (this->actor.xzDistToLink > 200.0f) {
        func_809BF9BC(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0600.s")
void func_809C0600(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_196 != 0) {
        this->unk_196--;
    }

    Math_ScaledStepToS(&this->actor.posRot.rot.y, (s16)(this->actor.yawTowardsLink + 0x8000), 0x38E);
    func_809C008C(this);

    if (this->unk_196 == 0) {
        func_809BF9BC(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C067C.s")
void func_809C067C(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (Math_StepToF(&this->actor.speedXZ, 0.0f, 0.3f)) {
        this->actor.posRot.rot.y += 0x8000;
        func_809BF9BC(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C06E0.s")
void func_809C06E0(EnBili* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->actor.flags & 0x8000) {
        this->actor.dmgEffectTimer = 0x14;
    } else {
        if (this->unk_196 != 0) {
            this->unk_196--;
        }
        if (this->unk_196 == 0) {
            func_809BFCE8(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0754.s")
void func_809C0754(EnBili* this, GlobalContext* globalCtx) {
    static Vec3f D_809C16A8 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_809C16B4 = { 0.0f, 0.0f, 0.0f };
    s16 temp_s0;
    Vec3f sp78;
    s32 i;

    if (this->actor.draw != NULL) {
        if (this->actor.flags & 0x8000) {
            return;
        }
        this->actor.draw = NULL;
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x50);
    }

    if (this->unk_196 != 0) {
        this->unk_196--;
    }

    if (this->unk_196 != 0) {
        for (i = 0; i < 2; i++) {
            sp78.x = ((Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.x) - 5.0f;
            sp78.y = ((Rand_ZeroOne() * 5.0f) + this->actor.posRot.pos.y) - 2.5f;
            sp78.z = ((Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.z) - 5.0f;

            D_809C16A8.y = Rand_ZeroOne() + 1.0f;
            temp_s0 = Rand_S16Offset(40, 40);

            if (Rand_ZeroOne() < 0.7f) {
                EffectSsDtBubble_SpawnColorProfile(globalCtx, &sp78, &D_809C16A8, &D_809C16B4, temp_s0, 25, 2, 1);
            } else {
                EffectSsDtBubble_SpawnColorProfile(globalCtx, &sp78, &D_809C16A8, &D_809C16B4, temp_s0, 25, 0, 1);
            }
        }
    } else {
        Actor_Kill(&this->actor);
    }

    if (this->unk_196 == 14) {
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EN_BIRI_BUBLE);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0980.s")
void func_809C0980(EnBili* this, GlobalContext* globalCtx) {
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }
    if (this->unk_196 == 0) {
        func_809BF9BC(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C09E0.s")
void func_809C09E0(EnBili* this, GlobalContext* globalCtx) {
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (!(this->actor.flags & 0x8000)) {
        this->actor.gravity = -1.0f;
    }

    if ((this->actor.bgCheckFlags & 1) || (this->actor.groundY == -32000.0f)) {
        this->actor.dmgEffectTimer = 0;
        func_809BFCE8(this);
    } else {
        this->actor.dmgEffectTimer = 0xA;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0A70.s")
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
                if (this->actionFunc != func_809C0980) {
                    func_809BFD18(this);
                }
            } else if (damageEffect == 0xF) {
                if (this->actionFunc != func_809C0980) {
                    func_8003426C(&this->actor, 0x4000, 0xC8, 0x2000, 0xA);

                    if (this->actor.colChkInfo.health == 0) {
                        this->actor.params = 1;
                    }
                    func_809BFA8C(this);
                } else {
                    func_809BFC48(this);
                }
            } else if (damageEffect == 2) {
                func_809BFC48(this);
                this->unk_196 = 2;
            } else if (damageEffect == 3) {
                func_809BFD94(this, globalCtx);
            } else if (damageEffect == 0xE) {
                func_809BFBC4(this);
            } else {
                func_809BFC48(this);
            }
            if (this->collider.info.acHitInfo->toucher.dmgFlags & 0x1F820) {
                this->actor.flags |= 0x10;
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/EnBili_Update.s")
void EnBili_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnBili* this = THIS;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        func_809BFA8C(this);
    }

    func_809C0A70(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if (this->actionFunc != func_809C0754) {
        func_809BFF6C(this);
        if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
            if ((this->actionFunc == func_809C0174) || (this->actionFunc == func_809C0600) ||
                (this->actionFunc == func_809C0570) || (this->actionFunc == func_809C067C)) {
                if (this->unk_195 != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIRI_FLY);
                    this->unk_195 = 0;
                } else {
                    this->unk_195 = 1;
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C0E08.s")
void func_809C0E08(EnBili* this, f32 frame, Vec3f* arg2) {
    f32 cos;
    f32 sin;

    if (this->actionFunc == func_809C02B8) {
        arg2->y = 1.0f - (sinf(0.5236092f * frame) * 0.26f);
    } else if (this->actionFunc == func_809C04B4) {
        if (frame <= 8.0f) {
            arg2->y = (cosf((M_PI / 8) * frame) * 0.15f) + 0.85f;
        } else if (frame <= 18.0f) {
            cos = cosf((frame - 8.0f) * (M_PI / 10));
            arg2->y = 1.0f - (0.3f * cos);
            arg2->x = (0.2f * cos) + 0.8f;
        } else {
            cos = cosf((frame - 18.0f) * 0.071314156f);
            arg2->y = (0.31f * cos) + 1.0f;
            arg2->x = 1.0f - (0.4f * cos);
        }
        arg2->z = arg2->x;
    } else if (this->actionFunc == func_809C0980) {
        sin = sinf(this->unk_196 * (M_PI / 10)) * 0.08f;
        arg2->x -= sin;
        arg2->y += sin;
        arg2->z -= sin;
    } else {
        arg2->y = (cosf((M_PI / 8) * frame) * 0.13f) + 0.87f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C1020.s")
void func_809C1020(EnBili* this, f32 frame, Vec3f* arg2) {
    f32 cos;
    f32 sin;

    if (this->actionFunc == func_809C02B8) {
        arg2->y = (sinf(0.5236092f * frame) * 0.2f) + 1.0f;
    } else if (this->actionFunc == func_809C04B4) {
        if (frame <= 8.0f) {
            arg2->x = 1.125f - (cosf((M_PI / 8) * frame) * 0.125f);
        } else if (frame <= 18.0f) {
            cos = cosf((frame - 8.0f) * (M_PI / 10));
            arg2->x = (0.275f * cos) + 0.975f;
            arg2->y = 1.25f - (0.25f * cos);
        } else {
            cos = cosf((frame - 18.0f) * 0.071314156f);
            arg2->x = 1.0f - (0.3f * cos);
            arg2->y = (0.48f * cos) + 1.0f;
        }
        arg2->z = arg2->x;
    } else if (this->actionFunc == func_809C0980) {
        sin = sinf(this->unk_196 * (M_PI / 10)) * 0.08f;
        arg2->x += sin;
        arg2->y -= sin;
        arg2->z += sin;
    } else {
        arg2->y = 1.1f - (cosf((M_PI / 8) * frame) * 0.1f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C1240.s")
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
            cos = cosf((frame - 18.0f) * 0.071314156f);
            arg2->x = 1.0f - (0.4f * cos);
            arg2->y = (0.52f * cos) + 1.0f;
        }
        arg2->z = arg2->x;
    }
}


static Vec3f D_809C16C0 = { 1.0f, 1.0f, 1.0f };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/func_809C13A8.s")
s32 func_809C13A8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                  Gfx** gfx) {
    EnBili* this = THIS;
    Vec3f sp20;
    f32 curFrame;

    sp20 = D_809C16C0;
    curFrame = this->skelAnime.curFrame;

    if (limbIndex == 3) {
        func_809C0E08(this, curFrame, &sp20);
    } else if (limbIndex == 2) {
        func_809C1020(this, curFrame, &sp20);
    } else if (limbIndex == 4) {
        func_809C1240(this, curFrame, &sp20);
        rot->y = (Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y) + 0x8000;
    }

    Matrix_Scale(sp20.x, sp20.y, sp20.z, MTXMODE_APPLY);
    return 0;
}



static u64* D_809C16CC[] = { 0x06000E08, 0x06001708, 0x06002008, 0x06002908, 0x06003208,
                             0x06003B08, 0x06004408, 0x06004D08, 0x00000000 };

static Gfx D_809C16F0[] = { 0xFC621603, 0x1F5BFFF8, 0xDF000000, 0x00000000 };

static Gfx D_809C1700[] = { 0xFC121603, 0xFF5BFFF8, 0xDF000000, 0x00000000 };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bili/EnBili_Draw.s")
void EnBili_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBili* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bili.c", 1521);
    func_80093D84(globalCtx->state.gfxCtx);

    this->unk_194 = ((this->unk_194 > 7) ? 7 : this->unk_194);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809C16CC[this->unk_194]));

    if ((this->actionFunc == func_809C02B8) && ((this->unk_196 & 1) != 0)) {
        gSPSegment(POLY_XLU_DISP++, 0x09, &D_809C16F0);
    } else {
        gSPSegment(POLY_XLU_DISP++, 0x09, &D_809C1700);
    }

    POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, &func_809C13A8,
                                   NULL, this, POLY_XLU_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bili.c", 1552);
}
