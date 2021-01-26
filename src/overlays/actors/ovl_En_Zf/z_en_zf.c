/*
 * File: z_en_zf.c
 * Overlay: ovl_En_Zf
 * Description: Lizalfos and Dinolfos
 */

#include "z_en_zf.h"

#define FLAGS 0x00000015

#define THIS ((EnZf*)thisx)

void EnZf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZf_Draw(Actor* thisx, GlobalContext* globalCtx);

s16 func_80B446A8(Vec3f* pos, s16 arg1);
void func_80B450AC(EnZf* this);
void func_80B45174(EnZf* this, GlobalContext* globalCtx);
void func_80B45384(EnZf* this);
void func_80B4543C(EnZf* this, GlobalContext* globalCtx);
void func_80B46AE0(EnZf* this, GlobalContext* globalCtx);
void func_80B46DD4(EnZf* this, GlobalContext* globalCtx);
void func_80B47120(EnZf* this, GlobalContext* globalCtx);
void func_80B47EB4(EnZf* this, GlobalContext* globalCtx);
void func_80B483E4(EnZf* this, GlobalContext* globalCtx);
void func_80B48E50(EnZf* this, GlobalContext* globalCtx);

// extern Vec3f D_80B4A090[];
/* static */ Vec3f D_80B4A090[] = {
    { 3560.0f, 100.0f, -1517.0f }, { 3170.0f, 100.0f, -1767.0f }, { 3165.0f, 100.0f, -2217.0f },
    { 3563.0f, 100.0f, -2437.0f }, { 3946.0f, 100.0f, -2217.0f }, { 3942.0f, 100.0f, -1765.0f },
    { 2861.0f, 100.0f, -2394.0f }, { 2776.0f, 100.0f, -1987.0f }, { 4527.0f, 531.0f, -1146.0f },
    { 4442.0f, 531.0f, -1405.0f }, { 4170.0f, 531.0f, -1395.0f }, { 4030.0f, 531.0f, -1162.0f },
    { 4010.0f, 531.0f, -883.0f },  { 4270.0f, 531.0f, -810.0f },  { 4520.0f, 531.0f, -880.0f },
    { 4260.0f, 531.0f, -1035.0f }, { 4757.0f, 531.0f, -1146.0f }, { 3850.0f, 531.0f, -883.0f },
    { 4380.0f, 531.0f, -690.0f },  { 4197.0f, 531.0f, -646.0f },  { 4070.0f, 531.0f, -1575.0f },
    { 3930.0f, 531.0f, -1705.0f }, { 3780.0f, 531.0f, -1835.0f }, { 3560.0f, 531.0f, -1985.0f },
};

/* static */ s16 D_80B4A1B0 = 0;

/* static */ s16 D_80B4A1B4 = 1;

const ActorInit En_Zf_InitVars = {
    ACTOR_EN_ZF,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_ZF,
    sizeof(EnZf),
    (ActorFunc)EnZf_Init,
    (ActorFunc)EnZf_Destroy,
    (ActorFunc)EnZf_Update,
    (ActorFunc)EnZf_Draw,
};

static ColliderCylinderInit D_80B4A1D8 = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_80B4A204 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_ON,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable D_80B4A254 = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(1, 0xD),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x1),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(2, 0x0),
    /* Giant's Knife */ DMG_ENTRY(4, 0x0),
    /* Fire arrow    */ DMG_ENTRY(2, 0xD),
    /* Ice arrow     */ DMG_ENTRY(4, 0xF),
    /* Light arrow   */ DMG_ENTRY(2, 0xD),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0xD),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0xD),
    /* Unk arrow 3   */ DMG_ENTRY(2, 0xD),
    /* Fire magic    */ DMG_ENTRY(0, 0x6),
    /* Ice magic     */ DMG_ENTRY(3, 0xF),
    /* Light magic   */ DMG_ENTRY(0, 0x6),
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

static InitChainEntry D_80B4A274[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

s32 D_80B4A280[] = { 0x0601081C, 0x06010CAC, 0x06011070, 0x44898000, 0xC42F0000, 0x00000000 };

extern SkeletonHeader D_06006690;
extern UNK_TYPE D_06008138;
extern UNK_TYPE D_06008C6C;
extern AnimationHeader D_06009530;
extern AnimationHeader D_0600A3D4;
extern AnimationHeader D_0600B10C;
extern Gfx D_0600E198[];
extern Gfx D_06010060[];
extern SkeletonHeader D_060104B8;
extern UNK_TYPE D_060119F4;
extern UNK_TYPE D_0601366C;
extern AnimationHeader D_06014E60;
extern AnimationHeader D_060157F8;
extern UNK_TYPE D_06016388;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44050.s")
void func_80B44050(EnZf* this, EnZfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44058.s")
s16 func_80B44058(EnZf* this, GlobalContext* globalCtx, f32 arg2) {
    s16 ret;
    s16 oldBgCheckFlags;
    f32 sin;
    f32 cos;
    Vec3f oldPos;

    if (arg2 == 0.0f) {
        arg2 = ((this->actor.speedXZ >= 0.0f) ? 1.0f : -1.0f);
        arg2 = ((this->actor.params >= 0) ? arg2 * 45.0f : arg2 * 30.0f);
    }

    oldPos = this->actor.world.pos;
    oldBgCheckFlags = this->actor.bgCheckFlags;

    sin = Math_SinS(this->actor.world.rot.y) * arg2;
    cos = Math_CosS(this->actor.world.rot.y) * arg2;

    this->actor.world.pos.x += sin;
    this->actor.world.pos.z += cos;

    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 0x1C);
    this->actor.world.pos = oldPos;
    ret = !(this->actor.bgCheckFlags & 1);
    this->actor.bgCheckFlags = oldBgCheckFlags;
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B441C4.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Init.s")
void EnZf_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;
    Player* player = PLAYER;
    EffectBlureInit1 blureInit;
    f32 posDiff;

    Actor_ProcessInitChain(thisx, D_80B4A274);
    thisx->targetMode = 3;
    this->unk_3FC = (s32)(thisx->params & 0xFF00) >> 8;
    thisx->params &= 0xFF;

    if (thisx->params & 0x80) {
        thisx->params |= 0xFF00;
    }

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFeet, 90.0f);
    this->unk_3E0 = 0;
    thisx->colChkInfo.mass = MASS_HEAVY;
    thisx->colChkInfo.damageTable = &D_80B4A254;

    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p1StartColor[2] = blureInit.p1StartColor[3] =
        blureInit.p2StartColor[0] = blureInit.p2StartColor[1] = blureInit.p2StartColor[2] = blureInit.p1EndColor[0] =
            blureInit.p1EndColor[1] = blureInit.p1EndColor[2] = blureInit.p2EndColor[0] = blureInit.p2EndColor[1] =
                blureInit.p2EndColor[2] = 255;
    blureInit.p2StartColor[3] = 64;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;
    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIndex, EFFECT_BLURE1, 0, 0, &blureInit);

    Actor_UpdateBgCheckInfo(globalCtx, thisx, 75.0f, 45.0f, 45.0f, 0x1D);

    this->unk_404 = 0xFF;
    thisx->colChkInfo.cylRadius = 40;
    thisx->colChkInfo.cylHeight = 100;
    Collider_InitCylinder(globalCtx, &this->bodyCollider);
    Collider_SetCylinder(globalCtx, &this->bodyCollider, thisx, &D_80B4A1D8);
    Collider_InitQuad(globalCtx, &this->swordCollider);
    Collider_SetQuad(globalCtx, &this->swordCollider, thisx, &D_80B4A204);

    if (thisx->params == -2) { // Dinalfos
        thisx->colChkInfo.health = 12;
        thisx->naviEnemyId = 0x10;
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_06006690, &D_0600B10C, this->jointTable, this->morphTable, 49);
    } else { // Lizalfos
        thisx->colChkInfo.health = 6;
        thisx->naviEnemyId = 0xF;
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_060104B8, &D_0600B10C, this->jointTable, this->morphTable, 49);
    }

    if (thisx->params < 0) {
        this->unk_400 = this->unk_3FE = -1;
        D_80B4A1B4 = -1;
        this->unk_3E4 = 1;
        if (thisx->params == -1) {
            func_80B450AC(this);
        } else {
            func_80B45384(this);
        }
    } else {
        posDiff = player->actor.world.pos.y - thisx->world.pos.y;

        if ((ABS(posDiff) <= 100.0f) && !Flags_GetSwitch(globalCtx, this->unk_3FC)) {
            this->unk_400 = this->unk_3FE = func_80B446A8(&thisx->world.pos, 0);
            func_80B450AC(this);
            D_80B4A1B4 = 1;
        } else {
            Actor_Kill(thisx);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Destroy.s")
void EnZf_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZf* this = THIS;

    if ((this->actor.params >= 0) &&
        (Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_ZF, ACTORCAT_ENEMY, 10000.0f) == NULL)) {
        func_800F5B58();
    }
    Effect_Delete(globalCtx, this->blureIndex);
    Collider_DestroyCylinder(globalCtx, &this->bodyCollider);
    Collider_DestroyQuad(globalCtx, &this->swordCollider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B446A8.s")
s16 func_80B446A8(Vec3f* pos, s16 arg1) {
    f32 rangeXZ;
    s16 i;

    rangeXZ = 210.0f;
    if (pos->y >= 420.0f) {
        rangeXZ = 110.0f;
    }

    if ((arg1 != -1) && ((D_80B4A090[arg1].y - 150.0f) <= pos->y) && (pos->y <= (D_80B4A090[arg1].y + 150.0f)) &&
        ((D_80B4A090[arg1].x - rangeXZ) <= pos->x) && (pos->x <= (D_80B4A090[arg1].x + rangeXZ)) &&
        ((D_80B4A090[arg1].z - rangeXZ) <= pos->z) && (pos->z <= (D_80B4A090[arg1].z + rangeXZ))) {
        return arg1;
    }

    for (i = 23; i > -1; i--) {
        if (((D_80B4A090[i].y - 150.0f) <= pos->y) && (pos->y <= (D_80B4A090[i].y + 150.0f)) &&
            ((D_80B4A090[i].x - rangeXZ) <= pos->x) && (pos->x <= (D_80B4A090[i].x + rangeXZ)) &&
            ((D_80B4A090[i].z - rangeXZ) <= pos->z) && (pos->z <= (D_80B4A090[i].z + rangeXZ))) {
            break;
        }
    }
    return i;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44CF0.s")
s32 func_80B44CF0(GlobalContext* globalCtx, EnZf* this);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44E8C.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B450AC.s")
void func_80B450AC(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_06009530, 0.0f, 9.0f, Animation_GetLastFrame(&D_06009530), ANIMMODE_LOOP,
                     0.0f);

    this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    this->unk_404 = this->actor.shape.shadowAlpha = 0;
    this->unk_3F0 = 0xA;
    this->unk_3E4 = 1;
    this->unk_3DC = 0;
    this->actor.bgCheckFlags &= ~2;
    this->actor.flags &= ~1;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    func_80B44050(this, func_80B45174);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45174.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45384.s")
void func_80B45384(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_0600B10C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600B10C), 1, -4.0f);
    this->unk_3DC = 3;
    this->unk_3F0 = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B44050(this, func_80B4543C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4543C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B456B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B462E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B463E4.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46A24.s")
void func_80B46A24(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_0600A3D4, 1.25f, 0.0f, Animation_GetLastFrame(&D_0600A3D4), 2, -4.0f);
    if (this->actor.params == -2) {
        this->skelAnime.playSpeed = 1.75f;
    }
    this->swordCollider.base.atFlags &= ~4;
    this->unk_3DC = 9;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
    this->actor.speedXZ = 0.0f;
    func_80B44050(this, func_80B46AE0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46AE0.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46D64.s")
void func_80B46D64(EnZf* this) {
    f32 frame = this->skelAnime.curFrame - 3.0f;

    Animation_Change(&this->skelAnime, &D_0600A3D4, -1.0f, frame, 0.0f, 2, 0.0f);
    this->unk_3DC = 8;
    func_80B44050(this, func_80B46DD4);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46DD4.s")
void func_80B46DD4(EnZf* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (Rand_ZeroOne() > 0.7f) {
            func_80B45384(this);
        } else if ((Rand_ZeroOne() > 0.2f) && func_80B44CF0(globalCtx, this)) {
            func_80B46A24(this);
        } else {
            func_80B483E4(this, globalCtx);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46F2C.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47050.s")
void func_80B47050(EnZf* this) {
    if ((this->actor.bgCheckFlags & 1) && ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speedXZ = 0.0f;
        this->unk_3E4 = 0;
    } else {

        this->unk_3E4 = 1;
    }

    if (this->unk_410 == 0xF) {
        this->unk_3F6 = 0x24;
    } else {
        Animation_PlayOnceSetSpeed(&this->skelAnime, &D_060157F8, 0.0f);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->unk_3DC = 0xE;
    func_80B44050(this, func_80B47120);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47360.s")
void func_80B47360(EnZf* this, GlobalContext* globalCtx);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4743C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B474E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4779C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4781C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47C64.s")
void func_80B47C64(EnZf* this, GlobalContext* globalCtx);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47CF8.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47DA8.s")
void func_80B47DA8(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_060157F8, 1.5f, 0.0f, Animation_GetLastFrame(&D_060157F8), 2, -4.0f);

    if ((this->actor.bgCheckFlags & 1) && ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speedXZ = -4.0f;
        this->unk_3E4 = 0;
    } else {
        this->unk_3E4 = 1;
    }

    if (this->actor.params == -2) {
        this->skelAnime.playSpeed = 4.5f;
    }

    if (this->actor.params < 0) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DAMAGE);
    this->unk_3DC = 0x10;
    func_80B44050(this, func_80B47EB4);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B482B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B483E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48578.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48CEC.s")
void func_80B48CEC(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_06014E60, 1.5f, 0.0f, Animation_GetLastFrame(&D_06014E60), 2, -4.0f);

    if ((this->actor.bgCheckFlags & 1) && ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speedXZ = 0.0f;
        this->unk_3E4 = 0;
    } else {
        this->unk_3E4 = 1;
    }

    this->unk_3DC = 0xF;
    this->actor.flags &= ~1;

    if (D_80B4A1B4 != -1) {
        if (this->actor.prev != 0) {
            ((EnZf*)this->actor.prev)->unk_3F4 = 90;

            if (this->actor.prev->colChkInfo.health < 3) {
                this->actor.prev->colChkInfo.health = 3;
            }
        } else {
            ((EnZf*)this->actor.next)->unk_3F4 = 90;

            if (this->actor.next->colChkInfo.health < 3) {
                this->actor.next->colChkInfo.health = 3;
            }
        }
    }

    D_80B4A1B0 = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DEAD);
    func_80B44050(this, func_80B48E50);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48E50.s")
void func_80B48E50(EnZf* this, GlobalContext* globalCtx) {
    s32 curFrame;

    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actor.bgCheckFlags & 1) {
        Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.15f, 0.0f);
        this->unk_3E4 = 0;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.category != ACTORCAT_PROP) {
            if ((this->actor.params >= 0) && (D_80B4A1B4 == -1)) {
                Flags_SetSwitch(globalCtx, this->unk_3FC);
                func_800F5B58();
            } else {
                D_80B4A1B4 = -1;
            }
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
        }

        if (this->unk_404 != 0) {
            this->actor.shape.shadowAlpha = this->unk_404 -= 5;

        } else {
            Actor_Kill(&this->actor);
            return;
        }
    } else {
        curFrame = this->skelAnime.curFrame;
        if ((curFrame == 0xA) || (curFrame == 0x12)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48F90.s")
void func_80B48F90(EnZf* this, GlobalContext* globalCtx) {
    s16 temp_v0_2;

    if ((this->actor.params == -2) && (this->unk_3DC == 3) && (this->unk_3F4 != 0)) {
        this->unk_3EC = (Math_SinS(this->unk_3F4 * 1400) * 10920.0f);
    } else {
        temp_v0_2 = this->actor.yawTowardsPlayer;
        temp_v0_2 -= (s16)(s32)(this->unk_3EC + this->actor.shape.rot.y);
        this->unk_3EE = CLAMP(temp_v0_2, -0x7D0, 0x7D0);
        this->unk_3EC += this->unk_3EE;
        this->unk_3EC = CLAMP(this->unk_3EC, -0x1CD7, 0x1CD7);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B490B4.s")
void func_80B490B4(EnZf* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 dropParams;

    if ((this->bodyCollider.base.acFlags & 2) && (this->unk_3DC < 0xF)) {
        this->bodyCollider.base.acFlags &= ~2;
        if (((this->actor.params < 0) || (D_80B4A1B4 != this->actor.params)) &&
            (this->actor.colChkInfo.damageEffect != 6)) {
            this->unk_410 = this->actor.colChkInfo.damageEffect;
            func_80035650(&this->actor, &this->bodyCollider.info, 0);

            if ((this->actor.colChkInfo.damageEffect == 1) || (this->actor.colChkInfo.damageEffect == 0xF)) {
                if (this->unk_3DC != 0xE) {
                    func_8003426C(&this->actor, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(&this->actor);
                    func_80B47050(this);
                }
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
                func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);

                if (Actor_ApplyDamage(&this->actor) == 0) {
                    dropParams = 0x40;
                    func_80B48CEC(this);

                    if (this->actor.params == -2) {
                        dropParams = 0xE0;
                    }

                    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, dropParams);
                    func_80032C7C(globalCtx, &this->actor);
                } else {
                    if ((D_80B4A1B4 != -1) && ((this->actor.colChkInfo.health + this->actor.colChkInfo.damage) >= 4) &&
                        (this->actor.colChkInfo.health < 4)) {
                        this->unk_410 = 13;
                    }

                    func_80B47DA8(this);
                }
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Update.s")
void EnZf_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;
    s32 pad2;

    func_80B490B4(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != 6) {
        this->unk_3F8 = 0;
        if ((this->unk_3E4 != 1) && (this->unk_3DC != 0x13)) {
            if (this->actor.speedXZ != 0.0f) {
                this->unk_3F8 = func_80B44058(this, globalCtx, this->actor.speedXZ * 1.5f);
            }
            if (this->unk_3F8 == 0) {
                this->unk_3F8 = func_80B44058(this, globalCtx, 0);
            }
        }

        if (this->unk_3F8 == 0) {
            Actor_MoveForward(&this->actor);
        }

        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 25.0f, 30.0f, 60.0f, 0x1D);

        if (!(this->actor.bgCheckFlags & 1)) {
            this->unk_3E4 = 1;
        }

        this->actionFunc(this, globalCtx);
    }

    if (this->actor.colChkInfo.health > 0) {
        if ((this->unk_3DC != 9) && (this->unk_3DC != 0xE)) {
            func_80B48F90(this, globalCtx);
        }

        if ((D_80B4A1B0 != 0) && (D_80B4A1B4 != this->actor.params)) {
            func_80B47360(this, globalCtx);
            D_80B4A1B4 = this->actor.params;
            D_80B4A1B0 = 0;

            if (this->actor.prev != NULL) {
                ((EnZf*)this->actor.prev)->unk_3F4 = 90;
            } else {
                ((EnZf*)this->actor.next)->unk_3F4 = 90;
            }
        }
    }

    if (this->unk_3DC >= 0xF) {
        Math_SmoothStepToS(&this->unk_3EC, 0, 1, 2000, 0);
        if (this->unk_3DC < 0x15) {
            if ((this->unk_3F4 == 1) && (this->actor.bgCheckFlags & 1)) {
                if (this->actor.colChkInfo.health > 0) {
                    func_80B47C64(this, globalCtx);
                }
                this->unk_3F4--;
            }
        }

        if (this->unk_3F4 >= 2) {
            this->unk_3F4--;
        }
    }

    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 40.0f;

    if ((this->actor.colChkInfo.health > 0) && (this->unk_404 == 0xFF)) {
        Collider_UpdateCylinder(&this->actor, &this->bodyCollider);

        if ((this->actor.world.pos.y == this->actor.floorHeight) && (this->unk_3DC < 0x11)) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
        }

        if ((this->actor.params < 0) || (D_80B4A1B4 != this->actor.params)) {
            if ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000)) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
            }
        }
    }

    if ((this->unk_3DC == 9) && (this->skelAnime.curFrame >= 14.0f) && (this->skelAnime.curFrame <= 20.0f)) {
        if (!(this->swordCollider.base.atFlags & 4) && !(this->swordCollider.base.acFlags & 2)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->swordCollider.base);
        } else {
            this->swordCollider.base.atFlags &= ~4;
            this->swordCollider.base.acFlags &= ~2;
            func_80B46D64(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B495FC.s")
s32 func_80B495FC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                  Gfx** gfx) {
    EnZf* this = THIS;

    switch (limbIndex) {
        case 5:
            rot->y -= this->unk_3EC;
            break;
        case 15:
            if (this->unk_3FA != 0) {
                *dList = D_0600E198;
            }
            break;
        case 33:
            if (this->unk_3FA != 0) {
                *dList = D_06010060;
            }
            break;
        default:
            break;
    }

    return false;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49688.s")
void func_80B49688(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    static Vec3f D_80B4A298 = { 300.0f, 0.0f, 0.0f };
    static Vec3f D_80B4A2A4 = { 300.0f, -1700.0f, 0.0f };
    static Vec3f D_80B4A2B0 = { -600.0f, 300.0f, 0.0f };
    static Vec3f D_80B4A2BC = { 0.0f, 1500.0f, 0.0f };
    static Vec3f D_80B4A2C8 = { -600.0f, -3000.0f, 1000.0f };
    static Vec3f D_80B4A2D4 = { -600.0f, -3000.0f, -1000.0f };
    static Vec3f D_80B4A2E0 = { 1500.0f, -3000.0f, 0.0f };
    static Vec3f D_80B4A2EC = { 0.0f, 0.0f, 0.0f };
    Vec3f sp54;
    Vec3f sp48;
    EnZf* this = THIS;
    s32 phi_s1 = -1;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80B4A2BC, &this->swordCollider.dim.quad[1]);
        Matrix_MultVec3f(&D_80B4A2C8, &this->swordCollider.dim.quad[0]);
        Matrix_MultVec3f(&D_80B4A2D4, &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2E0, &this->swordCollider.dim.quad[2]);
        Collider_SetQuadVertices(&this->swordCollider, &this->swordCollider.dim.quad[0],
                                 &this->swordCollider.dim.quad[1], &this->swordCollider.dim.quad[2],
                                 &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2A4, &sp54);
        Matrix_MultVec3f(&D_80B4A2B0, &sp48);

        if (this->unk_3DC == 9) {
            if (this->skelAnime.curFrame < 14.0f) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIndex));
            } else if (this->skelAnime.curFrame < 20.0f) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIndex), &sp54, &sp48);
            }
        }
    } else {
        Actor_SetFeetPos(&this->actor, limbIndex, 45, &D_80B4A298, 38, &D_80B4A298);
    }

    switch (limbIndex) {
        case 45:
            Matrix_MultVec3f(&D_80B4A298, &this->unk_4F0);
            break;
        case 38:
            Matrix_MultVec3f(&D_80B4A298, &this->unk_4E4);
            break;
    }

    if (this->unk_3F6 != 0) {
        switch (limbIndex) {
            case 9:
                phi_s1 = 0;
                break;
            case 10:
                phi_s1 = 1;
                break;
            case 25:
                phi_s1 = 2;
                break;
            case 16:
                phi_s1 = 3;
                break;
            case 23:
                phi_s1 = 4;
                break;
            case 48:
                phi_s1 = 5;
                break;
            case 14:
                phi_s1 = 6;
                break;
            case 39:
                phi_s1 = 7;
                break;
            case 43:
                phi_s1 = 8;
                break;
            default:
                break;
        }
        if (phi_s1 >= 0) {
            Matrix_MultVec3f(&D_80B4A2EC, &this->unk_4FC[phi_s1]);
        }
    }
}

    static Gfx D_80B4A2F8[] = {
        gsSPTexture(0x0A00, 0x0A00, 0, G_TX_RENDERTILE, G_ON),
        gsSPEndDisplayList(),
    };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Draw.s")
void EnZf_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;; // Extra ';' required for matching. Cannot be if (1) {} or the like. Probably a typo.

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zf.c", 3533);

    func_8002EBCC(thisx, globalCtx, 1);

    gSPTexture(D_80B4A2F8, IREG(0), IREG(1), 0, G_TX_RENDERTILE, G_ON);

    gSPSegment(POLY_OPA_DISP++, 0x08, D_80B4A2F8);

    if (this->unk_404 == 0xFF) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->unk_404);
        gSPSegment(POLY_OPA_DISP++, 0x09, &D_80116280[2]);

        POLY_OPA_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_80B495FC,
                                       func_80B49688, this, POLY_OPA_DISP);

        if (this->unk_3F6 != 0) {
            thisx->colorFilterTimer++;
            this->unk_3F6--;

            if ((this->unk_3F6 % 4) == 0) {
                s32 icePosIndex = this->unk_3F6 >> 2;

                EffectSsEnIce_SpawnFlyingVec3f(globalCtx, thisx, &this->unk_4FC[icePosIndex], 150, 150, 150, 250, 235, 245,
                                               255, 1.4f);
            }
        if (1) {}
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->unk_404);
        gSPSegment(POLY_XLU_DISP++, 0x09, &D_80116280[0]);
        POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_80B495FC,
                                       func_80B49688, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zf.c", 3601);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49E4C.s")
