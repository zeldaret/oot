/*
 * File: z_en_zf.c
 * Overlay: ovl_En_Zf
 * Description: Lizalfos and Dinolfos
 */

#include "z_en_zf.h"
#include "objects/object_zf/object_zf.h"

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
void func_80B456B4(EnZf* this, GlobalContext* globalCtx);
void func_80B45748(EnZf* this, GlobalContext* globalCtx);
void func_80B45E30(EnZf* this);
void func_80B45EF0(EnZf* this, GlobalContext* globalCtx);
void func_80B4604C(EnZf* this);
void func_80B46098(EnZf* this, GlobalContext* globalCtx);
void func_80B462E4(EnZf* this, GlobalContext* globalCtx);
void func_80B463E4(EnZf* this, GlobalContext* globalCtx);
void func_80B46A24(EnZf* this);
void func_80B46AE0(EnZf* this, GlobalContext* globalCtx);
void func_80B46DD4(EnZf* this, GlobalContext* globalCtx);
void func_80B46E8C(EnZf* this);
void func_80B46F2C(EnZf* this, GlobalContext* globalCtx);
void func_80B47120(EnZf* this, GlobalContext* globalCtx);
void func_80B47360(EnZf* this, GlobalContext* globalCtx);
void func_80B4743C(EnZf* this, GlobalContext* globalCtx);
void func_80B47544(EnZf* this, GlobalContext* globalCtx);
void func_80B4779C(EnZf* this, GlobalContext* globalCtx);
void func_80B4781C(EnZf* this, GlobalContext* globalCtx);
void func_80B47CF8(EnZf* this, GlobalContext* globalCtx);
void func_80B47EB4(EnZf* this, GlobalContext* globalCtx);
void func_80B48210(EnZf* this);
void func_80B482B8(EnZf* this, GlobalContext* globalCtx);
void func_80B483E4(EnZf* this, GlobalContext* globalCtx);
void func_80B48578(EnZf* this, GlobalContext* globalCtx);
void func_80B48CEC(EnZf* this);
void func_80B48E50(EnZf* this, GlobalContext* globalCtx);
void func_80B49B60(EnZf* this, f32 arg1);
s32 func_80B49C2C(GlobalContext* globalCtx, EnZf* this);
s32 func_80B49E4C(GlobalContext* globalCtx, EnZf* this);

// Array of platform positions in Dodongo's Cavern miniboss room
static Vec3f sPlatformPositions[] = {
    // Downstairs
    { 3560.0f, 100.0f, -1517.0f },
    { 3170.0f, 100.0f, -1767.0f },
    { 3165.0f, 100.0f, -2217.0f },
    { 3563.0f, 100.0f, -2437.0f },
    { 3946.0f, 100.0f, -2217.0f },
    { 3942.0f, 100.0f, -1765.0f },
    { 2861.0f, 100.0f, -2394.0f },
    { 2776.0f, 100.0f, -1987.0f },

    // Upstairs
    { 4527.0f, 531.0f, -1146.0f },
    { 4442.0f, 531.0f, -1405.0f },
    { 4170.0f, 531.0f, -1395.0f },
    { 4030.0f, 531.0f, -1162.0f },
    { 4010.0f, 531.0f, -883.0f },
    { 4270.0f, 531.0f, -810.0f },
    { 4520.0f, 531.0f, -880.0f },
    { 4260.0f, 531.0f, -1035.0f },
    { 4757.0f, 531.0f, -1146.0f },
    { 3850.0f, 531.0f, -883.0f },
    { 4380.0f, 531.0f, -690.0f },
    { 4197.0f, 531.0f, -646.0f },
    { 4070.0f, 531.0f, -1575.0f },
    { 3930.0f, 531.0f, -1705.0f },
    { 3780.0f, 531.0f, -1835.0f },
    { 3560.0f, 531.0f, -1985.0f },
};

static s16 D_80B4A1B0 = 0;

static s16 D_80B4A1B4 = 1;

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

static ColliderCylinderInit sBodyCylinderInit = {
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

static ColliderQuadInit sSwordQuadInit = {
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

typedef enum {
    /* 0x0 */ ENZF_DMGEFF_NONE,
    /* 0x1 */ ENZF_DMGEFF_STUN,
    /* 0x6 */ ENZF_DMGEFF_IMMUNE = 6,       // Does nothing
    /* 0xD */ ENZF_DMGEFF_PROJECTILE = 0xD, // But not one of the others
    /* 0xF */ ENZF_DMGEFF_ICE = 0xF
} EnZfDamageEffect;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, ENZF_DMGEFF_STUN),
    /* Deku stick    */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Slingshot     */ DMG_ENTRY(1, ENZF_DMGEFF_PROJECTILE),
    /* Explosive     */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Boomerang     */ DMG_ENTRY(0, ENZF_DMGEFF_STUN),
    /* Normal arrow  */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Hookshot      */ DMG_ENTRY(0, ENZF_DMGEFF_STUN),
    /* Kokiri sword  */ DMG_ENTRY(1, ENZF_DMGEFF_NONE),
    /* Master sword  */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Giant's Knife */ DMG_ENTRY(4, ENZF_DMGEFF_NONE),
    /* Fire arrow    */ DMG_ENTRY(2, ENZF_DMGEFF_PROJECTILE),
    /* Ice arrow     */ DMG_ENTRY(4, ENZF_DMGEFF_ICE),
    /* Light arrow   */ DMG_ENTRY(2, ENZF_DMGEFF_PROJECTILE),
    /* Unk arrow 1   */ DMG_ENTRY(2, ENZF_DMGEFF_PROJECTILE),
    /* Unk arrow 2   */ DMG_ENTRY(2, ENZF_DMGEFF_PROJECTILE),
    /* Unk arrow 3   */ DMG_ENTRY(2, ENZF_DMGEFF_PROJECTILE),
    /* Fire magic    */ DMG_ENTRY(0, ENZF_DMGEFF_IMMUNE),
    /* Ice magic     */ DMG_ENTRY(3, ENZF_DMGEFF_ICE),
    /* Light magic   */ DMG_ENTRY(0, ENZF_DMGEFF_IMMUNE),
    /* Shield        */ DMG_ENTRY(0, ENZF_DMGEFF_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, ENZF_DMGEFF_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, ENZF_DMGEFF_NONE),
    /* Giant spin    */ DMG_ENTRY(4, ENZF_DMGEFF_NONE),
    /* Master spin   */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Kokiri jump   */ DMG_ENTRY(2, ENZF_DMGEFF_NONE),
    /* Giant jump    */ DMG_ENTRY(8, ENZF_DMGEFF_NONE),
    /* Master jump   */ DMG_ENTRY(4, ENZF_DMGEFF_NONE),
    /* Unknown 1     */ DMG_ENTRY(0, ENZF_DMGEFF_NONE),
    /* Unblockable   */ DMG_ENTRY(0, ENZF_DMGEFF_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, ENZF_DMGEFF_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, ENZF_DMGEFF_NONE),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

static AnimationHeader* D_80B4A280[] = { 0x0601081C, 0x06010CAC, 0x06011070 };

static s32 D_80B4AB30;

extern SkeletonHeader D_06006690;
extern AnimationHeader D_06008138;
extern AnimationHeader D_06008C6C;
extern AnimationHeader D_06009530;
extern AnimationHeader D_0600A3D4;
extern AnimationHeader D_0600B10C;
extern Gfx D_0600E198[];
extern Gfx D_06010060[];
extern SkeletonHeader D_060104B8;
extern AnimationHeader D_060119F4;
extern AnimationHeader D_0601366C;
extern AnimationHeader D_06014E60;
extern AnimationHeader D_060157F8;
extern AnimationHeader D_06016388;

void EnZf_SetupAction(EnZf* this, EnZfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

/**
 * Tests if it will still be on a floor after moving forwards a distance determined by dist, in the shape forward
 * direction (special case for 0, testing using the speed instead).
 */
s32 func_80B44058(EnZf* this, GlobalContext* globalCtx, f32 dist) {
    s16 ret;
    s16 curBgCheckFlags;
    f32 sin;
    f32 cos;
    Vec3f curPos;

    if (dist == 0.0f) {
        dist = ((this->actor.speedXZ >= 0.0f) ? 1.0f : -1.0f);
        dist = ((this->actor.params >= ENZF_TYPE_LIZALFOS_MINIBOSS_A) ? dist * 45.0f : dist * 30.0f);
    }

    // Save currents to restore later
    curPos = this->actor.world.pos;
    curBgCheckFlags = this->actor.bgCheckFlags;

    sin = Math_SinS(this->actor.world.rot.y) * dist;
    cos = Math_CosS(this->actor.world.rot.y) * dist;

    this->actor.world.pos.x += sin;
    this->actor.world.pos.z += cos;

    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 0x1C);
    this->actor.world.pos = curPos;
    ret = !(this->actor.bgCheckFlags & 1);
    this->actor.bgCheckFlags = curBgCheckFlags;
    return ret;
}

/**
 * Supplementary floor test. Only used twice.
 */
s16 func_80B441C4(EnZf* this, GlobalContext* globalCtx, f32 dist) {
    s16 ret;
    s16 curBgCheckFlags;
    f32 sin;
    f32 cos;
    Vec3f curPos;

    if ((this->actor.speedXZ != 0.0f) && func_80B44058(this, globalCtx, this->actor.speedXZ)) {
        return true;
    }

    // Save currents to restore later
    curPos = this->actor.world.pos;
    curBgCheckFlags = this->actor.bgCheckFlags;

    sin = Math_SinS(this->actor.shape.rot.y) * dist;
    cos = Math_CosS(this->actor.shape.rot.y) * dist;

    this->actor.world.pos.x += sin;
    this->actor.world.pos.z += cos;

    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 0x1C);
    this->actor.world.pos = curPos;
    ret = !(this->actor.bgCheckFlags & 1);
    this->actor.bgCheckFlags = curBgCheckFlags;
    return ret;
}

void EnZf_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;
    Player* player = PLAYER;
    EffectBlureInit1 blureInit;
    f32 posDiff;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->targetMode = 3;
    this->clearFlag = (thisx->params & 0xFF00) >> 8;
    thisx->params &= 0xFF;

    if (thisx->params & 0x80) { // unused in game
        thisx->params |= 0xFF00;
    }

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFeet, 90.0f);
    this->unk_3E0 = 0;
    thisx->colChkInfo.mass = MASS_HEAVY;
    thisx->colChkInfo.damageTable = &sDamageTable;

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

    this->alpha = 255;
    thisx->colChkInfo.cylRadius = 40;
    thisx->colChkInfo.cylHeight = 100;
    Collider_InitCylinder(globalCtx, &this->bodyCollider);
    Collider_SetCylinder(globalCtx, &this->bodyCollider, thisx, &sBodyCylinderInit);
    Collider_InitQuad(globalCtx, &this->swordCollider);
    Collider_SetQuad(globalCtx, &this->swordCollider, thisx, &sSwordQuadInit);

    if (thisx->params == ENZF_TYPE_DINOLFOS) { // Dinalfos
        thisx->colChkInfo.health = 12;
        thisx->naviEnemyId = 0x10;
        SkelAnime_Init(globalCtx, &this->skelAnime, &gZfDinolfosSkel, &D_0600B10C, this->jointTable, this->morphTable,
                       ENZF_LIMB_MAX);
    } else { // Lizalfos
        thisx->colChkInfo.health = 6;
        thisx->naviEnemyId = 0xF;
        SkelAnime_Init(globalCtx, &this->skelAnime, &gZfLizalfosSkel, &D_0600B10C, this->jointTable, this->morphTable,
                       ENZF_LIMB_MAX);
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

        if ((ABS(posDiff) <= 100.0f) && !Flags_GetSwitch(globalCtx, this->clearFlag)) {
            this->unk_400 = this->unk_3FE = func_80B446A8(&thisx->world.pos, 0);
            func_80B450AC(this);
            D_80B4A1B4 = 1;
        } else {
            Actor_Kill(thisx);
        }
    }
}

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

/**
 * Finds the platform position highest in the array that satisfies the range check.
 */
s16 func_80B446A8(Vec3f* pos, s16 arg1) {
    f32 rangeXZ;
    s16 i;

    rangeXZ = 210.0f;

    // Upstairs
    if (pos->y >= 420.0f) {
        rangeXZ = 110.0f;
    }

    if ((arg1 != -1) && ((sPlatformPositions[arg1].y - 150.0f) <= pos->y) &&
        (pos->y <= (sPlatformPositions[arg1].y + 150.0f)) && ((sPlatformPositions[arg1].x - rangeXZ) <= pos->x) &&
        (pos->x <= (sPlatformPositions[arg1].x + rangeXZ)) && ((sPlatformPositions[arg1].z - rangeXZ) <= pos->z) &&
        (pos->z <= (sPlatformPositions[arg1].z + rangeXZ))) {
        return arg1;
    }

    for (i = ARRAY_COUNT(sPlatformPositions) - 1; i > -1; i--) {
        if (((sPlatformPositions[i].y - 150.0f) <= pos->y) && (pos->y <= (sPlatformPositions[i].y + 150.0f)) &&
            ((sPlatformPositions[i].x - rangeXZ) <= pos->x) && (pos->x <= (sPlatformPositions[i].x + rangeXZ)) &&
            ((sPlatformPositions[i].z - rangeXZ) <= pos->z) && (pos->z <= (sPlatformPositions[i].z + rangeXZ))) {
            break;
        }
    }
    return i;
}

s16 func_80B44870(Vec3f* pos, s16 arg1, s16 arg2, GlobalContext* globalCtx) {
    f32 temp_f0;
    f32 phi_f24 = 585.0f;
    Player* player = PLAYER;
    s16 temp_fp = arg1;
    f32 phi_f26 = 400.0f;
    f32 smallMaxRange = 99998.0f;
    s16 loopIndex = 5;
    s16 minIndex = 0;
    f32 largeMaxRange = 99999.0f;
    s16 phi_s4 = -1;
    s16 phi_s5 = -1;
    s16 temp_s3 = func_80B446A8(&player->actor.world.pos, temp_fp);

    // Upstairs
    if (pos->y > 420.0f) {
        minIndex = 8;
        phi_f26 = 50.0f;

        if (temp_fp > 14) {
            loopIndex = ARRAY_COUNT(sPlatformPositions) - 1;
            phi_f24 = 400.0f;
        } else {
            loopIndex = 14;
            phi_f24 = 380.0f;
        }
    }

    for (; loopIndex >= minIndex; loopIndex--) {
        if ((loopIndex == temp_fp) || (loopIndex == temp_s3)) {
            continue;
        }
        if (((temp_s3 == -1) &&
             (Math_Vec3f_DistXYZ(&player->actor.world.pos, &sPlatformPositions[loopIndex]) < phi_f26))) {
            continue;
        }
        temp_f0 = Math_Vec3f_DistXYZ(pos, &sPlatformPositions[loopIndex]);

        if ((phi_f24 < temp_f0)) {
            continue;
        }
        if (temp_f0 < smallMaxRange) {
            largeMaxRange = smallMaxRange;
            phi_s4 = phi_s5;
            smallMaxRange = temp_f0;
            phi_s5 = loopIndex;
        } else if (temp_f0 < largeMaxRange) {
            largeMaxRange = temp_f0;
            phi_s4 = loopIndex;
        }
    }

    Math_Vec3f_DistXYZ(&player->actor.world.pos, &sPlatformPositions[phi_s5]);
    Math_Vec3f_DistXYZ(&player->actor.world.pos, &sPlatformPositions[phi_s4]);

    if (phi_s4 > 0) {
        s16 temp_v1 = Math_Vec3f_Yaw(pos, &sPlatformPositions[phi_s5]) - Math_Vec3f_Yaw(pos, &player->actor.world.pos);

        if (ABS(temp_v1) < 0x36B0) {
            phi_s5 = phi_s4;
        }
    }

    if (phi_s5 < 0) {
        phi_s5 = arg2;
    }
    return phi_s5;
}

s16 func_80B44B14(Vec3f* pos, s16 arg1, s16 arg2, GlobalContext* globalCtx) {
    s16 loopIndex = 7;
    s16 minIndex = 0;
    Player* player = PLAYER;
    s16 temp_fp = func_80B446A8(&player->actor.world.pos, -1);
    f32 minRange = 500.0f;
    f32 smallMaxRange = 99998.0f;
    f32 largeMaxRange = 99999.0f;
    s16 phi_s2 = arg1;
    s16 phi_s3 = arg2;

    // Upstairs
    if (pos->y > 200.0f) {
        loopIndex = ARRAY_COUNT(sPlatformPositions) - 1;
        minIndex = 8;
        minRange = 290.0f;
    }

    for (; loopIndex >= minIndex; loopIndex--) {
        if (minRange < Math_Vec3f_DistXYZ(pos, &sPlatformPositions[loopIndex])) {
            continue;
        }
        if (loopIndex != temp_fp) {
            f32 curPlatformDistToPlayer = Math_Vec3f_DistXYZ(&player->actor.world.pos, &sPlatformPositions[loopIndex]);

            if (curPlatformDistToPlayer < smallMaxRange) {
                largeMaxRange = smallMaxRange;
                phi_s3 = phi_s2;
                smallMaxRange = curPlatformDistToPlayer;
                phi_s2 = loopIndex;
            } else if (curPlatformDistToPlayer < largeMaxRange) {
                largeMaxRange = curPlatformDistToPlayer;
                phi_s3 = loopIndex;
            }
        } else {
            phi_s2 = temp_fp;
            break;
        }
    }

    if (phi_s3 != temp_fp) {
        temp_fp = phi_s2;
    } else {
        temp_fp = phi_s3;
    }

    return temp_fp;
}

// Player not targeting this or another EnZf
s32 func_80B44CF0(GlobalContext* globalCtx, EnZf* this) {
    Actor* targetedActor;
    Player* player = PLAYER;

    if (this->actor.params >= 0) {
        if (player->stateFlags1 & 0x6000) { // Hanging or climbing
            return false;
        } else {
            return true;
        }
    } else {
        if (!Actor_OtherIsTargeted(globalCtx, &this->actor)) {
            return true;
        }
        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            targetedActor = player->unk_664;
            if (targetedActor == NULL) {
                return false;
            } else {
                if (targetedActor->category != ACTORCAT_ENEMY) {
                    return true;
                }
                if (targetedActor->id != ACTOR_EN_ZF) {
                    return false;
                } else if (targetedActor->colorFilterTimer != 0) {
                    return true;
                }
            }
        }
    }
    return false;
}

void func_80B44DC4(EnZf* this, GlobalContext* globalCtx) {
    s16 angleDiff;

    angleDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if (angleDiff < 0) {
        angleDiff = -angleDiff;
    }

    if (angleDiff >= 0x1B58) {
        func_80B483E4(this, globalCtx);
    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 7) != 0) &&
               func_80B44CF0(globalCtx, this)) {
        func_80B46A24(this);
    } else {
        func_80B45384(this);
    }
}

s32 func_80B44E8C(GlobalContext* globalCtx, EnZf* this) {
    s16 angleToWall;
    Actor* explosive;

    angleToWall = this->actor.wallYaw - this->actor.shape.rot.y;
    angleToWall = ABS(angleToWall);

    if (func_800354B4(globalCtx, &this->actor, 100.0f, 0x5DC0, 0x2AA8, this->actor.shape.rot.y)) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;

        if ((this->actor.bgCheckFlags & 8) && (ABS(angleToWall) < 0x2EE0) && (this->actor.xzDistToPlayer < 80.0f)) {
            func_80B48210(this);
            return true;
        } else if ((this->actor.xzDistToPlayer < 90.0f) && ((globalCtx->gameplayFrames & 1) != 0)) {
            func_80B48210(this);
            return true;
        } else {
            func_80B46E8C(this);
            return true;
        }
    }

    explosive = Actor_FindNearby(globalCtx, &this->actor, -1, ACTORCAT_EXPLOSIVE, 80.0f);

    if (explosive != NULL) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if (((this->actor.bgCheckFlags & 8) && (angleToWall < 0x2EE0)) || (explosive->id == ACTOR_EN_BOM_CHU)) {
            if ((explosive->id == ACTOR_EN_BOM_CHU) && (Actor_WorldDistXYZToActor(&this->actor, explosive) < 80.0f) &&
                ((s16)((this->actor.shape.rot.y - explosive->world.rot.y) + 0x8000) < 0x3E80)) {
                func_80B48210(this);
                return true;
            } else {
                func_80B49B60(this, 4.0f);
                return true;
            }
        } else {
            func_80B46E8C(this);
            return true;
        }
    }
    return false;
}

// Setup functions and action functions

void func_80B450AC(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_06009530, 0.0f, 9.0f, Animation_GetLastFrame(&D_06009530), ANIMMODE_LOOP,
                     0.0f);

    this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    this->alpha = this->actor.shape.shadowAlpha = 0;
    this->unk_3F0 = 0xA;
    this->unk_3E4 = 1;
    this->unk_3DC = 0;
    this->actor.bgCheckFlags &= ~2;
    this->actor.flags &= ~1;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    EnZf_SetupAction(this, func_80B45174);
}

void func_80B45174(EnZf* this, GlobalContext* globalCtx) {
    if (this->unk_3F0 == 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.flags |= 1;

        if (this->actor.params == 0) {
            func_800F5ACC(0x38);
        }
    }

    if (this->unk_3F0 != 0) {
        if (this->actor.params != -1) {
            this->unk_3F0--;
        } else if (this->actor.xzDistToPlayer <= 160.0f) {
            this->unk_3F0 = 0;
            this->actor.flags |= 1;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        }

        this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    } else if (this->alpha < 255) {
        this->alpha += 51;
    }

    if ((this->actor.bgCheckFlags & 3) && (this->unk_3E4 != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_ONGND);
        Animation_Change(&this->skelAnime, &D_06008C6C, 1.0f, 0.0f, 17.0f, ANIMMODE_ONCE, 0.0f);
        this->unk_3E4 = 0;
        this->actor.bgCheckFlags &= ~2;
        this->actor.world.pos.y = this->actor.floorHeight;
        this->actor.velocity.y = 0.0f;
        Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
        Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        this->alpha = 255;
        if (this->actor.params > 0) {
            func_80B47360(this, globalCtx);
        } else {
            func_80B45384(this);
        }
    }
    this->actor.shape.shadowAlpha = this->alpha;
}

void func_80B45384(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_0600B10C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600B10C), 1, -4.0f);
    this->unk_3DC = 3;
    this->unk_3F0 = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, func_80B4543C);
}

void func_80B4543C(EnZf* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s16 angleToPlayer;

    angleToPlayer = (this->actor.yawTowardsPlayer - this->unk_3EC) - this->actor.shape.rot.y;
    angleToPlayer = ABS(angleToPlayer);
    SkelAnime_Update(&this->skelAnime);

    if (!func_80B49C2C(globalCtx, this)) {
        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            if (this->unk_3F4 != 0) {
                this->unk_3F4--;
                if (angleToPlayer >= 0x1FFE) {
                    return;
                }
                this->unk_3F4 = 0;

            } else if (func_80B44E8C(globalCtx, this)) {
                return;
            }
        }
        angleToPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
        angleToPlayer = ABS(angleToPlayer);

        if ((this->actor.xzDistToPlayer < 100.0f) && (player->swordState != 0) && (angleToPlayer >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            func_80B483E4(this, globalCtx);
        } else {

            if (this->unk_3F0 != 0) {
                this->unk_3F0--;
            } else {
                if (Actor_IsFacingPlayer(&this->actor, 30 * 0x10000 / 360)) {
                    if ((this->actor.xzDistToPlayer < 200.0f) && (this->actor.xzDistToPlayer > 100.0f) &&
                        (Rand_ZeroOne() < 0.3f)) {
                        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
                            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                            func_80B45E30(this);
                        } else {
                            func_80B483E4(this, globalCtx);
                        }
                    } else if ((Rand_ZeroOne() > 0.3f)) {
                        func_80B456B4(this, globalCtx);
                    } else {
                        func_80B483E4(this, globalCtx);
                    }
                } else {
                    func_80B4604C(this);
                }

                if ((globalCtx->gameplayFrames & 0x5F) == 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
                }
            }
        }
    }
}

void func_80B456B4(EnZf* this, GlobalContext* globalCtx) {
    Animation_MorphToLoop(&this->skelAnime, &D_06008138, -4.0f);
    this->unk_3DC = 5;

    if (this->actor.params >= 0) {
        this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);
        this->unk_402 = func_80B44B14(&this->actor.world.pos, this->unk_3FE, this->unk_400, globalCtx);
        this->unk_3E4 = 0;
    }
    this->actor.speedXZ = 0.0f;
    EnZf_SetupAction(this, func_80B45748);
}

void func_80B45748(EnZf* this, GlobalContext* globalCtx) {
    s32 sp54;
    s32 sp50;
    s32 pad;
    s16 temp_v1;
    s16 sp48;
    f32 sp44;
    f32 sp40;
    Player* player;
    f32 sp30;

    sp48 = -1;
    sp44 = 350.0f;
    sp40 = 0.0f;
    player = PLAYER;

    if (this->actor.params >= 0) {
        sp48 = func_80B446A8(&player->actor.world.pos, sp48);
        this->unk_3FE = func_80B446A8(&this->actor.world.pos, sp48);

        if (this->actor.world.pos.y >= 420.0f) {
            sp44 = 270.0f;
        }
    }

    if (!func_80B49C2C(globalCtx, this)) {
        if (sp48 != this->unk_3FE) {
            this->unk_402 = func_80B44B14(&this->actor.world.pos, this->unk_3FE, this->unk_400, globalCtx);

            if ((sp48 < 0) && (this->unk_402 == this->unk_3FE)) {
                sp48 = this->unk_3FE;
                this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer =
                    Actor_WorldYawTowardPoint(&this->actor, &sPlatformPositions[this->unk_402]);

                temp_v1 = this->actor.wallYaw - this->actor.shape.rot.y;
                temp_v1 = ABS(temp_v1);

                if ((this->unk_3F8 && (this->actor.speedXZ > 0.0f)) ||
                    ((this->actor.bgCheckFlags & 8) && (temp_v1 >= 0x5C19))) {
                    if ((Actor_WorldDistXZToPoint(&this->actor, &sPlatformPositions[this->unk_402]) < sp44) &&
                        !func_80B44058(this, globalCtx, 191.9956f)) {
                        func_80B45E30(this);

                        if (this->actor.bgCheckFlags & 8) {
                            this->actor.velocity.y = 20.0f;
                        }

                        return;
                    } else {
                        this->actor.world.rot.y =
                            Actor_WorldYawTowardPoint(&this->actor, &sPlatformPositions[this->unk_3FE]);
                    }
                } else {
                    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    Math_SmoothStepToF(&this->actor.speedXZ, 8.0f, 1.0f, 1.5f, 0.0f);
                }
            }
        }

        if (Actor_OtherIsTargeted(globalCtx, &this->actor)) {
            sp40 = 100.0f;
        }

        if (this->actor.xzDistToPlayer <= (70.0f + sp40)) {
            Math_SmoothStepToF(&this->actor.speedXZ, -8.0f, 1.0f, 0.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->actor.speedXZ, 8.0f, 1.0f, 0.5f, 0.0f);
        }

        this->skelAnime.playSpeed = this->actor.speedXZ * 1.2f;

        temp_v1 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        temp_v1 = ABS(temp_v1);

        if ((sp48 == this->unk_3FE) && (this->actor.xzDistToPlayer < 150.0f) && (player->swordState != 0) &&
            (temp_v1 >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;

            if (Rand_ZeroOne() > 0.7f) {
                func_80B483E4(this, globalCtx);
                return;
            }
        }

        sp54 = this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        sp50 = this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed);
        sp30 = ((void)0, ABS(this->skelAnime.playSpeed));

        if (sp48 == this->unk_3FE) {
            if (!Actor_IsFacingPlayer(&this->actor, 0x11C7)) {
                if ((Rand_ZeroOne() > 0.5f)) {
                    func_80B462E4(this, globalCtx);
                } else {
                    func_80B45384(this);
                }
            } else if ((this->actor.xzDistToPlayer < 100.0f)) {
                if ((Rand_ZeroOne() > 0.05f) && func_80B44CF0(globalCtx, this)) {
                    func_80B46A24(this);
                } else if ((Rand_ZeroOne() > 0.5f)) {
                    func_80B483E4(this, globalCtx);
                } else {
                    func_80B45384(this);
                }
            } else {
                if (this->unk_3F8) {
                    func_80B462E4(this, globalCtx);
                } else if (Rand_ZeroOne() < 0.1f) {
                    func_80B45384(this);
                }
            }
        }

        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            if (func_80B44E8C(globalCtx, this)) {
                return;
            }

            if ((this->actor.xzDistToPlayer < 180.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
                Actor_IsFacingPlayer(&this->actor, 0x71C)) {
                if (Actor_IsTargeted(globalCtx, &this->actor)) {
                    if (Rand_ZeroOne() < 0.1f) {
                        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                        func_80B45E30(this);
                        return;
                    }
                } else {
                    func_80B483E4(this, globalCtx);
                    return;
                }
            }
        }

        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        }

        if ((sp54 != (s32)this->skelAnime.curFrame) &&
            (((sp50 < 2) && (sp54 + (s32)sp30 >= 4)) || ((sp50 < 0x20) && (sp54 + (s32)sp30 >= 0x22)))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
        }
    }
}

void func_80B45E30(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_06009530, 1.0f, 0.0f, 3.0f, 2, -3.0f);
    this->unk_3F0 = 0;
    this->unk_3E4 = 1;
    this->actor.velocity.y = 15.0f;

    if (this->actor.params >= 0) {
        this->actor.speedXZ = 16.0f;
    } else {
        this->actor.speedXZ = 10.0f;
    }

    this->unk_3DC = 0xD;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_JUMP);
    EnZf_SetupAction(this, func_80B45EF0);
}

void func_80B45EF0(EnZf* this, GlobalContext* globalCtx) {
    if ((this->unk_3F0 != 0) && (this->actor.world.pos.y <= this->actor.floorHeight)) {
        this->actor.world.pos.y = this->actor.floorHeight;
        this->unk_3E4 = 0;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->unk_3F0 == 0) {
            Animation_Change(&this->skelAnime, &D_06008C6C, 3.0f, 0.0f, 17.0f, 2, -3.0f);
            this->unk_3F0 = 0xA;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else {
            this->actor.speedXZ = 0.0f;
            this->unk_3E4 = 0;
            func_80B456B4(this, globalCtx);
        }
    }
    if ((globalCtx->gameplayFrames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
    }

    if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & 3)) {
        if (func_80B44CF0(globalCtx, this)) {
            func_80B46A24(this);
        } else {
            func_80B483E4(this, globalCtx);
        }
    }
}

void func_80B4604C(EnZf* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_06008138, -4.0f);
    this->unk_3DC = 6;
    EnZf_SetupAction(this, func_80B46098);
}

void func_80B46098(EnZf* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 phi_f2;
    Player* player = PLAYER;
    s16 temp_v0;
    s16 phi_v1;

    if (!func_80B49C2C(globalCtx, this)) {
        if ((this->actor.params != ENZF_TYPE_DINOLFOS) || !func_80B44E8C(globalCtx, this)) {
            temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

            if (temp_v0 > 0) {
                phi_v1 = (temp_v0 * 0.25f) + 2000.0f;
            } else {
                phi_v1 = (temp_v0 * 0.25f) - 2000.0f;
            }

            this->actor.shape.rot.y += phi_v1;
            this->actor.world.rot.y = this->actor.shape.rot.y;

            if (temp_v0 > 0) {
                phi_f2 = phi_v1 * 1.5f;
                if (phi_f2 > 2.0f) {
                    phi_f2 = 2.0f;
                }
            } else {
                phi_f2 = phi_v1 * 1.5f;
                if (phi_f2 < -2.0f) {
                    phi_f2 = -2.0f;
                }
            }

            this->skelAnime.playSpeed = -phi_f2;
            SkelAnime_Update(&this->skelAnime);

            if (this->actor.params >= 0) {
                this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);
                if (this->unk_3FE != func_80B446A8(&player->actor.world.pos, -1)) {
                    func_80B456B4(this, globalCtx);
                    return;
                }
            }
            if (Actor_IsFacingPlayer(&this->actor, 30 * 0x10000 / 360)) {
                if (Rand_ZeroOne() > 0.8f) {
                    func_80B462E4(this, globalCtx);
                } else {
                    func_80B456B4(this, globalCtx);
                }
            }
            if ((globalCtx->gameplayFrames & 0x5F) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
            }
        }
    }
}

void func_80B462E4(EnZf* this, GlobalContext* globalCtx) {
    if ((this->actor.params < 0) ||
        Actor_TestFloorInDirection(&this->actor, globalCtx, 40.0f, (s16)(this->actor.shape.rot.y + 0x3FFF)) ||
        Actor_TestFloorInDirection(&this->actor, globalCtx, -40.0f, (s16)(this->actor.shape.rot.y + 0x3FFF))) {
        Animation_PlayLoop(&this->skelAnime, &D_06016388);
        this->actor.speedXZ = Rand_CenteredFloat(12.0f);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        this->unk_3F0 = (Rand_ZeroOne() * 10.0f) + 20.0f;
        this->unk_3E4 = 0;
        this->unk_3DC = 7;
        this->unk_408 = 0.0f;
        EnZf_SetupAction(this, func_80B463E4);
    } else {
        func_80B456B4(this, globalCtx);
    }
}

void func_80B463E4(EnZf* this, GlobalContext* globalCtx) {
    s16 angleBehindPlayer;
    s16 phi_v0_3;
    s32 pad;
    s32 curKeyFrame;
    s32 prevKeyFrame;
    s32 nextKeyFrame;
    Player* player = PLAYER;
    f32 extraRange;
    s32 pad2;

    extraRange = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 4000, 1);

    if (!func_80B49C2C(globalCtx, this) &&
        ((this->actor.params != ENZF_TYPE_DINOLFOS) || !func_80B44E8C(globalCtx, this))) {
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3A98;
        angleBehindPlayer = player->actor.shape.rot.y + 0x8000;

        if (Math_SinS(angleBehindPlayer - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speedXZ -= 0.25f;
            if (this->actor.speedXZ < -8.0f) {
                this->actor.speedXZ = -8.0f;
            }
        } else if (Math_SinS(angleBehindPlayer - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speedXZ += 0.25f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        }

        if (this->actor.params >= 0) {
            if (this->unk_3F8) {
                this->actor.speedXZ = -this->actor.speedXZ;
            }
        } else if ((this->actor.bgCheckFlags & 8) ||
                   !Actor_TestFloorInDirection(&this->actor, globalCtx, this->actor.speedXZ,
                                               this->actor.shape.rot.y + 0x3FFF)) {
            if (this->actor.bgCheckFlags & 8) {
                if (this->actor.speedXZ >= 0.0f) {
                    phi_v0_3 = (this->actor.shape.rot.y + 0x3FFF);
                } else {
                    phi_v0_3 = (this->actor.shape.rot.y - 0x3FFF);
                    ;
                }

                phi_v0_3 = this->actor.wallYaw - phi_v0_3;
            } else {
                this->actor.speedXZ *= -0.8f;
                phi_v0_3 = 0;
            }

            if (ABS(phi_v0_3) > 0x4000) {
                this->actor.speedXZ *= -0.8f;
                if (this->actor.speedXZ < 0.0f) {
                    this->actor.speedXZ -= 0.5f;
                } else {
                    this->actor.speedXZ += 0.5f;
                }
            }
        }

        if (Actor_OtherIsTargeted(globalCtx, &this->actor)) {
            extraRange = 100.0f;
        }

        if (this->actor.xzDistToPlayer <= (70.0f + extraRange)) {
            Math_SmoothStepToF(&this->unk_408, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if ((90.0f + extraRange) < this->actor.xzDistToPlayer) {
            Math_SmoothStepToF(&this->unk_408, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->unk_408, 0.0f, 1.0f, 5.65f, 0.0f);
        }

        if ((this->unk_408 != 0.0f) && !func_80B441C4(this, globalCtx, this->unk_408)) {
            this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->unk_408;
            this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->unk_408;
        }

        if (ABS(this->actor.speedXZ) >= ABS(this->unk_408)) {
            this->skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
        } else if (this->skelAnime.playSpeed < 0.0f) {
            this->skelAnime.playSpeed = this->unk_408 * -0.75f;
        } else {
            this->skelAnime.playSpeed = this->unk_408 * 0.75f;
        }

        curKeyFrame = this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        prevKeyFrame = this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed);
        nextKeyFrame = (s32)ABS(this->skelAnime.playSpeed) + curKeyFrame;

        if ((curKeyFrame != (s32)this->skelAnime.curFrame) &&
            (((prevKeyFrame < 14) && (nextKeyFrame >= 16)) || ((prevKeyFrame < 27) && (nextKeyFrame >= 29)))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
        }

        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        }

        if ((Math_CosS((angleBehindPlayer - this->actor.shape.rot.y)) < -0.85f) || (this->unk_3F0 == 0)) {
            this->actor.world.rot.y = this->actor.shape.rot.y;

            if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 3) == 0) &&
                func_80B44CF0(globalCtx, this)) {
                func_80B46A24(this);
            } else {
                func_80B45384(this);
            }
        } else if (this->unk_3F0 != 0) {
            this->unk_3F0--;
        }
    }
}

void func_80B46A24(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_0600A3D4, 1.25f, 0.0f, Animation_GetLastFrame(&D_0600A3D4), 2, -4.0f);
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->skelAnime.playSpeed = 1.75f;
    }
    this->swordCollider.base.atFlags &= ~AT_BOUNCED;
    this->unk_3DC = 9;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
    this->actor.speedXZ = 0.0f;
    EnZf_SetupAction(this, func_80B46AE0);
}

void func_80B46AE0(EnZf* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 rotDiff;
    s16 yawDiff;

    this->actor.speedXZ = 0.0f;
    if ((s32)this->skelAnime.curFrame == 0xA) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_ATTACK);
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EffectBlure_AddSpace(Effect_GetByIndex(this->blureIndex));

        if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (Actor_IsFacingPlayer(&this->actor, 5460) == 0)) {
            func_80B45384(this);
            this->unk_3F0 = ((Rand_ZeroOne() * 5.0f) + 5.0f);
            this->unk_3F4 = ((Rand_ZeroOne() * 20.0f) + 100.0f);
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            func_80B45384(this);
            this->unk_3F0 = ((Rand_ZeroOne() * 5.0f) + 5.0f);
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;

            if (Rand_ZeroOne() > 0.7f) {
                func_80B483E4(this, globalCtx);
            } else {
                rotDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;
                rotDiff = ABS(rotDiff);

                if (rotDiff <= 10000) {
                    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
                    yawDiff = ABS(yawDiff);

                    if (yawDiff > 16000) {
                        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                        func_80B483E4(this, globalCtx);
                    } else if ((player->stateFlags1 & 0x6010)) {
                        if (this->actor.isTargeted) {
                            func_80B46A24(this);
                        } else {
                            func_80B483E4(this, globalCtx);
                        }
                    } else {
                        func_80B46A24(this);
                    }
                } else {
                    func_80B483E4(this, globalCtx);
                }
            }
        }
    }
}

void func_80B46D64(EnZf* this) {
    f32 frame = this->skelAnime.curFrame - 3.0f;

    Animation_Change(&this->skelAnime, &D_0600A3D4, -1.0f, frame, 0.0f, 2, 0.0f);
    this->unk_3DC = 8;
    EnZf_SetupAction(this, func_80B46DD4);
}

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

void func_80B46E8C(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_06009530, -1.0f, 3.0f, 0.0f, 2, -3.0f);
    this->unk_3F0 = 0;
    this->unk_3E4 = 1;
    this->unk_3DC = 0xB;
    this->actor.velocity.y = 15.0f;
    this->actor.speedXZ = -15.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_JUMP);
    EnZf_SetupAction(this, func_80B46F2C);
}

void func_80B46F2C(EnZf* this, GlobalContext* globalCtx) {
    if ((this->unk_3F0 != 0) && (this->actor.world.pos.y <= this->actor.floorHeight)) {
        this->actor.world.pos.y = this->actor.floorHeight;
        this->unk_3E4 = 0;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->unk_3F0 == 0) {
            Animation_Change(&this->skelAnime, &D_06008C6C, 3.0f, 0.0f, 17.0f, 2, -3.0f);
            this->unk_3F0 = 0xA;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else if ((globalCtx->gameplayFrames & 1) != 0) {
            func_80B483E4(this, globalCtx);
        } else {
            func_80B45384(this);
        }
    }

    if ((globalCtx->state.frames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
    }
}

void func_80B47050(EnZf* this) {
    if ((this->actor.bgCheckFlags & 1) && ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speedXZ = 0.0f;
        this->unk_3E4 = 0;
    } else {

        this->unk_3E4 = 1;
    }

    if (this->damageEffect == ENZF_DMGEFF_ICE) {
        this->iceTimer = 36;
    } else {
        Animation_PlayOnceSetSpeed(&this->skelAnime, &D_060157F8, 0.0f);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->unk_3DC = 0xE;
    EnZf_SetupAction(this, func_80B47120);
}

void func_80B47120(EnZf* this, GlobalContext* globalCtx) {
    s16 angleToWall;

    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
        this->unk_3E4 = 0;
    }

    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & 1)) {
        if (this->actor.colChkInfo.health == 0) {
            func_80B48CEC(this);
        } else if ((this->actor.params != ENZF_TYPE_DINOLFOS) || (!func_80B44E8C(globalCtx, this))) {
            if (D_80B4A1B4 != -1) {
                func_80B44DC4(this, globalCtx);
            } else {
                angleToWall = this->actor.wallYaw - this->actor.shape.rot.y;
                angleToWall = ABS(angleToWall);

                if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & 8) &&
                    (ABS(angleToWall) < 0x2EE0) && (this->actor.xzDistToPlayer < 90.0f)) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    func_80B48210(this);
                } else if (!func_80B49C2C(globalCtx, this)) {
                    if (this->actor.params != ENZF_TYPE_DINOLFOS) {
                        func_80B44DC4(this, globalCtx);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 3) != 0) &&
                               func_80B44CF0(globalCtx, this)) {
                        func_80B46A24(this);
                    } else {
                        func_80B44DC4(this, globalCtx);
                    }
                }
            }
        }
    }
}

void func_80B47360(EnZf* this, GlobalContext* globalCtx) {
    f32 morphFrames = 0.0f;
    f32 lastFrame = Animation_GetLastFrame(&D_060119F4);

    if (this->unk_3DC < 0x11) {
        morphFrames = -4.0f;
    }

    Animation_Change(&this->skelAnime, &D_060119F4, 2.0f, 0.0f, lastFrame, 2, morphFrames);
    this->unk_3DC = 0x12;
    this->actor.speedXZ = 0.0f;
    this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);
    this->unk_402 = func_80B44870(&this->actor.world.pos, this->unk_3FE, this->unk_400, globalCtx);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, func_80B4743C);
}

void func_80B4743C(EnZf* this, GlobalContext* globalCtx) {
    s16 yaw = Actor_WorldYawTowardPoint(&this->actor, &sPlatformPositions[this->unk_402]) + 0x8000;

    Math_SmoothStepToS(&this->actor.world.rot.y, yaw, 1, 1000, 0);
    this->actor.shape.rot.y = this->actor.world.rot.y;

    if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.world.rot.y = yaw - 0x8000;
        func_80B4779C(this, globalCtx);
        this->unk_3FA = 1;
    }
}

void func_80B474E4(EnZf* this) {
    this->unk_3E4 = 0;
    Animation_MorphToPlayOnce(&this->skelAnime, D_80B4A280[0], -4.0f);
    this->unk_3DC = 0x14;
    this->actor.speedXZ = 0.0f;
    this->unk_40C = 0.0f;
    this->unk_408 = 0.0f;
    EnZf_SetupAction(this, func_80B47544);
}

void func_80B47544(EnZf* this, GlobalContext* globalCtx) {
    f32 lastFrame;
    f32 maxDist = 400.0f;

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.y, (this->actor.yawTowardsPlayer + 0x8000), 1, 4000, 0);

    if (this->actor.world.pos.y >= 420.0f) {
        maxDist = 250.0f;
    }

    if ((this->actor.xzDistToPlayer < maxDist) && (this->unk_3E4 != 1)) {
        this->actor.shape.rot.y = this->actor.world.rot.y;
        func_80B47360(this, globalCtx);
    } else {
        if (this->unk_3E4 != 1) {
            func_80B49E4C(globalCtx, this);
        }

        if (SkelAnime_Update(&this->skelAnime)) {
            this->unk_3E4++;

            if (this->unk_3E4 >= 3) {
                this->unk_3E4 = 0;
            }

            if ((this->unk_408 != 0.0f) || (this->unk_40C != 0.0f)) {
                this->unk_3E4 = 1;
            }

            lastFrame = Animation_GetLastFrame(D_80B4A280[this->unk_3E4]);

            switch (this->unk_3E4) {
                case 0:
                    this->actor.velocity.y = 0.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;

                case 1:
                    this->actor.velocity.y = this->unk_40C + 10.0f;
                    this->actor.speedXZ = this->unk_408;
                    this->unk_408 = 0.0f;
                    this->unk_40C = 0.0f;
                    break;

                case 2:
                    this->actor.world.pos.y = this->actor.floorHeight;
                    lastFrame = 3.0f;
                    break;

                default:
                    break;
            }

            Animation_Change(&this->skelAnime, D_80B4A280[this->unk_3E4], 1.5f, 0.0f, lastFrame, 2, 0.0f);
        }

        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

void func_80B4779C(EnZf* this, GlobalContext* globalCtx) {
    this->unk_3E4 = 0;
    Animation_PlayOnce(&this->skelAnime, D_80B4A280[0]);
    this->unk_3DC = 0x13;
    this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);
    this->unk_402 = func_80B44870(&this->actor.world.pos, this->unk_3FE, this->unk_400, globalCtx);
    EnZf_SetupAction(this, func_80B4781C);
}

void func_80B4781C(EnZf* this, GlobalContext* globalCtx) {
    f32 sp74;
    f32 sp70;
    f32 phi_f20;
    s32 pad;
    f32 phi_f20_2;
    f32 phi_f0;
    s32 pad2;
    s16 sp5A;
    s32 sp54;
    s32 temp_v1_2;
    s32 phi_v1;

    sp70 = 1.0f;
    phi_f20 = 550.0f;
    sp74 = Actor_WorldDistXZToPoint(&this->actor, &sPlatformPositions[this->unk_402]);
    sp54 = this->unk_3E4;

    if (!(globalCtx->gameplayFrames & 0x5F)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
    }

    if ((this->actor.world.pos.y >= 420.0f)) {
        phi_f20 = 280.0f;
    }

    sp5A = Actor_WorldYawTowardPoint(&this->actor, &sPlatformPositions[this->unk_402]);

    switch (this->unk_3E4) {
        case 0:
            this->actor.world.rot.y = sp5A;
            this->actor.shape.rot.y = sp5A + 0x8000;
            D_80B4AB30 = 0;
            this->unk_400 = this->unk_3FE;
            temp_v1_2 = (func_80B44058(this, globalCtx, 107.0f) == 0);
            temp_v1_2 |= ((func_80B44058(this, globalCtx, 220.0f) == 0) * 2);
            this->unk_3E4++;

            switch (temp_v1_2) {
                case 1:
                case 3:
                    this->actor.velocity.y = 12.0f;
                    if (this->actor.bgCheckFlags & 8) {
                        this->actor.velocity.y += 8.0f;
                    }

                    this->actor.speedXZ = 8.0f;
                    break;

                case 2:
                    this->actor.velocity.y = 15.0f;
                    this->actor.speedXZ = 20.0f;
                    break;

                default:
                    phi_f20_2 = 107.0f;
                    phi_f20_2 += 10.0f;
                    phi_f0 = 8.0f;
                    phi_f0 += 1.2f;

                    for (phi_v1 = 20; phi_v1 >= 0; phi_v1--, phi_f20_2 += 10.0f, phi_f0 += 1.2f) {

                        if (!func_80B44058(this, globalCtx, phi_f20_2)) {
                            this->actor.speedXZ = phi_f0;
                            this->actor.velocity.y = 12.0f;
                            break;
                        }
                    }
                    if (this->actor.speedXZ == 0.0f) {
                        func_80B474E4(this);
                    }
                    // break;
            }
            break;

        case 1:
            if ((this->actor.bgCheckFlags & 2) || (this->actor.bgCheckFlags & 1)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_ONGND);
                this->actor.velocity.y = 0.0f;
                this->actor.world.pos.y = this->actor.floorHeight;
                this->actor.speedXZ = 0.0f;
                Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
                Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, 0);

                if ((phi_f20 <= this->actor.xzDistToPlayer)) {
                    func_80B474E4(this);
                } else if ((sp74 < 80.0f)) {
                    this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);
                    this->unk_402 = func_80B44870(&this->actor.world.pos, this->unk_3FE, this->unk_400, globalCtx);
                }

                this->unk_3E4 = 0;
                sp70 = 2.0f;
            } else {
                Math_SmoothStepToS(&this->actor.world.rot.y, sp5A, 1, 0xFA0, 0);
                this->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
                D_80B4AB30++;
            }
            break;

        case 2:
            if (this->skelAnime.curFrame == this->skelAnime.endFrame) {
                this->unk_3E4 = 0;
            }
            break;
    }

    if (sp54 != this->unk_3E4) {
        Animation_PlayOnceSetSpeed(&this->skelAnime, D_80B4A280[this->unk_3E4], sp70);
    }
    SkelAnime_Update(&this->skelAnime);
}

void func_80B47C64(EnZf* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnime, &D_0601366C);
    this->actor.world.rot.y += 0x8000;
    this->unk_3DC = 0x15;
    this->actor.speedXZ = 0.0f;
    this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);
    this->unk_402 = func_80B44870(&this->actor.world.pos, this->unk_3FE, this->unk_400, globalCtx);
    EnZf_SetupAction(this, func_80B47CF8);
}

void func_80B47CF8(EnZf* this, GlobalContext* globalCtx) {
    s16 yawTowardsPlayer = this->actor.yawTowardsPlayer;

    if (this->skelAnime.curFrame >= 26.0f) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, yawTowardsPlayer, 1, 6000, 0);
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.world.rot.y = yawTowardsPlayer;
        this->unk_3E4 = -1;
        func_80B45384(this);
    }

    if (this->skelAnime.curFrame == 22.0f) {
        this->unk_3FA = 0;
    }
}

void func_80B47DA8(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_060157F8, 1.5f, 0.0f, Animation_GetLastFrame(&D_060157F8), 2, -4.0f);

    if ((this->actor.bgCheckFlags & 1) && ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speedXZ = -4.0f;
        this->unk_3E4 = 0;
    } else {
        this->unk_3E4 = 1;
    }

    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->skelAnime.playSpeed = 4.5f;
    }

    if (this->actor.params < 0) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DAMAGE);
    this->unk_3DC = 0x10;
    EnZf_SetupAction(this, func_80B47EB4);
}

void func_80B47EB4(EnZf* this, GlobalContext* globalCtx) {
    s16 wallYawDiff;

    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
        this->unk_3E4 = 0;
    }

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 4500, 0);

    if (((this->actor.params != ENZF_TYPE_DINOLFOS) || !func_80B44E8C(globalCtx, this)) &&
        SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & 1)) {

        if (D_80B4A1B4 != -1) {
            if (this->damageEffect == ENZF_DMGEFF_PROJECTILE) {
                D_80B4A1B0++;
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y;

                if (!func_80B44058(this, globalCtx, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                    func_80B48210(this);
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 3) == 0)) {
                    func_80B46A24(this);
                } else {
                    func_80B44DC4(this, globalCtx);
                }
            }
        } else {

            wallYawDiff = this->actor.wallYaw - this->actor.shape.rot.y;
            wallYawDiff = ABS(wallYawDiff);

            if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & 8) &&
                (ABS(wallYawDiff) < 12000) && (this->actor.xzDistToPlayer < 90.0f)) {
                func_80B48210(this);
            } else if (!func_80B49C2C(globalCtx, this)) {
                if (this->actor.params != ENZF_TYPE_DINOLFOS) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;

                    if (!func_80B44058(this, globalCtx, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                        func_80B48210(this);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 3) == 0)) {
                        func_80B46A24(this);
                    } else {
                        func_80B44DC4(this, globalCtx);
                    }
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 3) == 0) &&
                           func_80B44CF0(globalCtx, this)) {
                    func_80B46A24(this);
                } else {
                    func_80B44DC4(this, globalCtx);
                }
            }
        }
    }
}

void func_80B48210(EnZf* this) {
    Animation_Change(&this->skelAnime, &D_06009530, 1.0f, 0.0f, 3.0f, 2, 0.0f);
    this->unk_3F0 = 0;
    this->unk_3E4 = 1;
    this->unk_3DC = 0x16;
    this->actor.velocity.y = 22.0f;
    this->actor.speedXZ = 7.5f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, func_80B482B8);
}

void func_80B482B8(EnZf* this, GlobalContext* globalCtx) {
    s16 temp_yaw; // Need this temp for stack size

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 4000, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(globalCtx, &this->leftFootPos);
        func_800355B8(globalCtx, &this->rightFootPos);
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->unk_3F0 == 0) {
            Animation_Change(&this->skelAnime, &D_0600A3D4, 3.0f, 0.0f, 13.0f, 2, -4.0f);
            this->unk_3F0 = 0xA;
        } else if (this->actor.bgCheckFlags & 3) {
            this->actor.velocity.y = 0.0f;
            temp_yaw = this->actor.yawTowardsPlayer;
            this->actor.shape.rot.y = temp_yaw;
            this->actor.world.rot.y = temp_yaw;
            this->actor.speedXZ = 0.0f;
            this->actor.world.pos.y = this->actor.floorHeight;
            func_80B46A24(this);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_ATTACK);
            this->skelAnime.curFrame = 13.0f;
        }
    }
}

void func_80B483E4(EnZf* this, GlobalContext* globalCtx) {
    s16 playerRotY;
    Player* player;

    if ((this->actor.params < 0) ||
        Actor_TestFloorInDirection(&this->actor, globalCtx, 40.0f, (s16)(this->actor.shape.rot.y + 0x3FFF)) ||
        Actor_TestFloorInDirection(&this->actor, globalCtx, -40.0f, (s16)(this->actor.shape.rot.y + 0x3FFF))) {
        Animation_PlayLoop(&this->skelAnime, &D_06016388);
        player = PLAYER;
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 4000, 1);
        playerRotY = player->actor.shape.rot.y;

        if (Math_SinS(playerRotY - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speedXZ = -6.0f;
        } else if (Math_SinS(playerRotY - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speedXZ = 6.0f;
        }

        this->unk_408 = 0.0f;
        this->unk_3E4 = 0;
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        this->unk_3F0 = (s32)(Rand_ZeroOne() * 10.0f + 5.0f);
        this->unk_3DC = 0xC;
        EnZf_SetupAction(this, func_80B48578);
    } else {
        func_80B456B4(this, globalCtx);
    }
}

void func_80B48578(EnZf* this, GlobalContext* globalCtx) {
    s16 playerRot;
    s16 phi_v0_4;
    Player* player = PLAYER;
    s32 curKeyFrame;
    s32 prevKeyFrame;
    f32 playSpeed;
    f32 extraRange = 0.0f;

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 1);
    playerRot = player->actor.shape.rot.y;

    if (this->actor.params >= 0) {

        if (this->unk_3F8) {
            this->actor.speedXZ = -this->actor.speedXZ;
        }
    } else if ((this->actor.bgCheckFlags & 8) ||
               !Actor_TestFloorInDirection(&this->actor, globalCtx, this->actor.speedXZ,
                                           this->actor.shape.rot.y + 0x3FFF)) {
        if (this->actor.bgCheckFlags & 8) {
            if (this->actor.speedXZ >= 0.0f) {
                phi_v0_4 = (this->actor.shape.rot.y + 0x3FFF);
            } else {
                phi_v0_4 = (this->actor.shape.rot.y - 0x3FFF);
            }

            phi_v0_4 = (this->actor.wallYaw - phi_v0_4);
        } else {
            this->actor.speedXZ *= -0.8f;
            phi_v0_4 = 0;
        }

        if (ABS(phi_v0_4) > 0x4000) {
            this->actor.speedXZ *= -0.8f;
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ -= 0.5f;
            } else {
                this->actor.speedXZ += 0.5f;
            }
        }
    }

    if (Math_SinS(playerRot - this->actor.shape.rot.y) >= 0.0f) {
        this->actor.speedXZ += 0.125f;
    } else {
        this->actor.speedXZ -= 0.125f;
    }

    this->actor.world.rot.y = this->actor.shape.rot.y + 0x4000;

    if (Actor_OtherIsTargeted(globalCtx, &this->actor)) {
        extraRange = 100.0f;
    }

    if (this->actor.xzDistToPlayer <= (70.0f + extraRange)) {
        Math_SmoothStepToF(&this->unk_408, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if ((90.0f + extraRange) < this->actor.xzDistToPlayer) {
        Math_SmoothStepToF(&this->unk_408, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->unk_408, 0.0f, 1.0f, 5.65f, 0.0f);
    }

    if ((this->unk_408 != 0.0f) && !func_80B441C4(this, globalCtx, this->unk_408)) {
        this->actor.world.pos.x += (Math_SinS(this->actor.shape.rot.y) * this->unk_408);
        this->actor.world.pos.z += (Math_CosS(this->actor.shape.rot.y) * this->unk_408);
    }

    if (ABS(this->actor.speedXZ) >= ABS(this->unk_408)) {
        this->skelAnime.playSpeed = -this->actor.speedXZ * 0.75f;
    } else if (this->skelAnime.playSpeed < 0.0f) {
        this->skelAnime.playSpeed = this->unk_408 * -0.75f;
    } else {
        this->skelAnime.playSpeed = this->unk_408 * 0.75f;
    }

    curKeyFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    prevKeyFrame = this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed);
    playSpeed = ((void)0, ABS(this->skelAnime.playSpeed));

    this->unk_3FE = func_80B446A8(&this->actor.world.pos, this->unk_3FE);

    if (func_80B446A8(&player->actor.world.pos, -1) != this->unk_3FE) {
        this->actor.speedXZ = 0.0f;
        if ((this->actor.params >= 0) && (D_80B4A1B4 == this->actor.params)) {
            func_80B474E4(this);
            return;
        }
        func_80B456B4(this, globalCtx);
        return;
    }
    if ((this->actor.params != ENZF_TYPE_DINOLFOS) || !func_80B44E8C(globalCtx, this)) {
        if (this->unk_3F0 == 0) {
            s16 angleFacingPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;

            angleFacingPlayer = ABS(angleFacingPlayer);

            if (angleFacingPlayer >= 0x3A98) {
                if ((this->actor.params >= 0) && (D_80B4A1B4 == this->actor.params)) {
                    func_80B474E4(this);
                } else {
                    func_80B45384(this);
                    this->unk_3F0 = (Rand_ZeroOne() * 5.0f) + 1.0f;
                }
            } else if ((this->actor.params >= 0) && (D_80B4A1B4 == this->actor.params)) {
                func_80B474E4(this);
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y;

                if ((this->actor.xzDistToPlayer <= 100.0f) && ((globalCtx->gameplayFrames & 3) == 0) &&
                    func_80B44CF0(globalCtx, this)) {
                    func_80B46A24(this);
                } else if ((this->actor.xzDistToPlayer < 280.0f) && (this->actor.xzDistToPlayer > 240.0f) &&
                           !func_80B44058(this, globalCtx, 191.9956f) && ((globalCtx->gameplayFrames & 1) == 0)) {
                    func_80B45E30(this);
                } else {
                    func_80B456B4(this, globalCtx);
                }
            }
        } else {
            this->unk_3F0--;
        }
        if ((curKeyFrame != (s32)this->skelAnime.curFrame) &&
            (((prevKeyFrame < 14) && (((s32)playSpeed + curKeyFrame) >= 16)) ||
             ((prevKeyFrame < 27) && (((s32)playSpeed + curKeyFrame) >= 29)))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
        }
        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

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
    EnZf_SetupAction(this, func_80B48E50);
}

void func_80B48E50(EnZf* this, GlobalContext* globalCtx) {

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
                Flags_SetSwitch(globalCtx, this->clearFlag);
                func_800F5B58();
            } else {
                D_80B4A1B4 = -1;
            }
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
        }

        if (this->alpha != 0) {
            this->actor.shape.shadowAlpha = this->alpha -= 5;

        } else {
            Actor_Kill(&this->actor);
            return;
        }
    } else {
        s32 curFrame = this->skelAnime.curFrame;
    
        if ((curFrame == 10) || (curFrame == 18)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        }
    }
}

void func_80B48F90(EnZf* this, GlobalContext* globalCtx) {
    s16 temp_angle;

    if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->unk_3DC == 3) && (this->unk_3F4 != 0)) {
        this->unk_3EC = (Math_SinS(this->unk_3F4 * 1400) * 10920.0f);
    } else {
        temp_angle = this->actor.yawTowardsPlayer;
        temp_angle -= (s16)(this->unk_3EC + this->actor.shape.rot.y);
        this->unk_3EE = CLAMP(temp_angle, -0x7D0, 0x7D0);
        this->unk_3EC += this->unk_3EE;
        this->unk_3EC = CLAMP(this->unk_3EC, -0x1CD7, 0x1CD7);
    }
}

void EnZf_UpdateDamage(EnZf* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 dropParams;

    if ((this->bodyCollider.base.acFlags & AC_HIT) && (this->unk_3DC < 0xF)) {
        this->bodyCollider.base.acFlags &= ~AC_HIT;
        if (((this->actor.params < 0) || (D_80B4A1B4 != this->actor.params)) &&
            (this->actor.colChkInfo.damageEffect != ENZF_DMGEFF_IMMUNE)) {
            this->damageEffect = this->actor.colChkInfo.damageEffect;
            Actor_SetDropFlag(&this->actor, &this->bodyCollider.info, 0);

            if ((this->actor.colChkInfo.damageEffect == ENZF_DMGEFF_STUN) ||
                (this->actor.colChkInfo.damageEffect == ENZF_DMGEFF_ICE)) {
                if (this->unk_3DC != 0xE) {
                    Actor_SetColorFilter(&this->actor, 0, 120, 0, 80);
                    Actor_ApplyDamage(&this->actor);
                    func_80B47050(this);
                }
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_CRY);
                Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 8);

                if (Actor_ApplyDamage(&this->actor) == 0) {
                    dropParams = 0x40;
                    func_80B48CEC(this);

                    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
                        dropParams = 0xE0;
                    }

                    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, dropParams);
                    Enemy_StartFinishingBlow(globalCtx, &this->actor);
                } else {
                    if ((D_80B4A1B4 != -1) && ((this->actor.colChkInfo.health + this->actor.colChkInfo.damage) >= 4) &&
                        (this->actor.colChkInfo.health < 4)) {
                        this->damageEffect = ENZF_DMGEFF_PROJECTILE;
                    }

                    func_80B47DA8(this);
                }
            }
        }
    }
}

void EnZf_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;
    s32 pad2;

    EnZf_UpdateDamage(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != ENZF_DMGEFF_IMMUNE) {
        this->unk_3F8 = 0;
        if ((this->unk_3E4 != 1) && (this->unk_3DC != 0x13)) {
            if (this->actor.speedXZ != 0.0f) {
                this->unk_3F8 = func_80B44058(this, globalCtx, this->actor.speedXZ * 1.5f);
            }
            if (!this->unk_3F8) {
                this->unk_3F8 = func_80B44058(this, globalCtx, 0);
            }
        }

        if (!this->unk_3F8) {
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

    if ((this->actor.colChkInfo.health > 0) && (this->alpha == 255)) {
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
        if (!(this->swordCollider.base.atFlags & AT_BOUNCED) && !(this->swordCollider.base.acFlags & AC_HIT)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->swordCollider.base);
        } else {
            this->swordCollider.base.atFlags &= ~AT_BOUNCED;
            this->swordCollider.base.acFlags &= ~AC_HIT;
            func_80B46D64(this);
        }
    }
}

s32 EnZf_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                          Gfx** gfx) {
    EnZf* this = THIS;

    switch (limbIndex) {
        case ENZF_LIMB_NECK_ROOT:
            rot->y -= this->unk_3EC;
            break;
        case ENZF_LIMB_SWORD:
            if (this->unk_3FA != 0) {
                *dList = D_0600E198;
            }
            break;
        case ENZF_LIMB_SCABBARD:
            if (this->unk_3FA != 0) {
                *dList = D_06010060;
            }
            break;
        default:
            break;
    }

    return false;
}

void EnZf_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    static Vec3f sUnused = { 1100.0f, -700.0f, 0.0f };
    static Vec3f footOffset = { 300.0f, 0.0f, 0.0f };
    static Vec3f D_80B4A2A4 = { 300.0f, -1700.0f, 0.0f }; // Sword tip?
    static Vec3f D_80B4A2B0 = { -600.0f, 300.0f, 0.0f };  // Sword hilt?
    static Vec3f swordQuadOffset1 = { 0.0f, 1500.0f, 0.0f };
    static Vec3f swordQuadOffset0 = { -600.0f, -3000.0f, 1000.0f };
    static Vec3f swordQuadOffset3 = { -600.0f, -3000.0f, -1000.0f };
    static Vec3f swordQuadOffset2 = { 1500.0f, -3000.0f, 0.0f };
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f sp54;
    Vec3f sp48;
    EnZf* this = THIS;
    s32 bodyPart = -1;

    if (limbIndex == ENZF_LIMB_SWORD) {
        Matrix_MultVec3f(&swordQuadOffset1, &this->swordCollider.dim.quad[1]);
        Matrix_MultVec3f(&swordQuadOffset0, &this->swordCollider.dim.quad[0]);
        Matrix_MultVec3f(&swordQuadOffset3, &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&swordQuadOffset2, &this->swordCollider.dim.quad[2]);
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
        Actor_SetFeetPos(&this->actor, limbIndex, ENZF_LIMB_LEFT_FOOT, &footOffset, ENZF_LIMB_RIGHT_FOOT, &footOffset);
    }

    switch (limbIndex) {
        case ENZF_LIMB_LEFT_FOOT:
            Matrix_MultVec3f(&footOffset, &this->leftFootPos);
            break;
        case ENZF_LIMB_RIGHT_FOOT:
            Matrix_MultVec3f(&footOffset, &this->rightFootPos);
            break;
    }

    if (this->iceTimer != 0) {
        switch (limbIndex) {
            case ENZF_LIMB_HEAD:
                bodyPart = 0;
                break;
            case ENZF_LIMB_NECK:
                bodyPart = 1;
                break;
            case ENZF_LIMB_CHEST_ARMOR:
                bodyPart = 2;
                break;
            case ENZF_LIMB_RIGHT_FOREARM:
                bodyPart = 3;
                break;
            case ENZF_LIMB_LEFT_FOREARM:
                bodyPart = 4;
                break;
            case ENZF_LIMB_TRUNK:
                bodyPart = 5;
                break;
            case ENZF_LIMB_SWORD_ROOT:
                bodyPart = 6;
                break;
            case ENZF_LIMB_RIGHT_SHIN:
                bodyPart = 7;
                break;
            case ENZF_LIMB_LEFT_SHIN_ROOT:
                bodyPart = 8;
                break;
            default:
                break;
        }
        if (bodyPart >= 0) {
            Matrix_MultVec3f(&zeroVec, &this->bodyPartsPos[bodyPart]);
        }
    }
}

static Gfx D_80B4A2F8[] = {
    gsSPTexture(0x0A00, 0x0A00, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

void EnZf_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZf* this = THIS;
    ; // Extra ";" required for matching. Cannot be if (1) {} or the like. Probably a typo.

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zf.c", 3533);

    func_8002EBCC(thisx, globalCtx, 1);

    gSPTexture(D_80B4A2F8, IREG(0), IREG(1), 0, G_TX_RENDERTILE, G_ON);

    gSPSegment(POLY_OPA_DISP++, 0x08, D_80B4A2F8);

    if (this->alpha == 255) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->alpha);
        gSPSegment(POLY_OPA_DISP++, 0x09, &D_80116280[2]);

        POLY_OPA_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnZf_OverrideLimbDraw, EnZf_PostLimbDraw, this, POLY_OPA_DISP);

        if (this->iceTimer != 0) {
            thisx->colorFilterTimer++;
            this->iceTimer--;

            if ((this->iceTimer % 4) == 0) {
                s32 icePosIndex = this->iceTimer >> 2;

                EffectSsEnIce_SpawnFlyingVec3f(globalCtx, thisx, &this->bodyPartsPos[icePosIndex], 150, 150, 150, 250,
                                               235, 245, 255, 1.4f);
            }
            if (1) {}
        }
    } else { // fades out when dead
        func_80093D84(globalCtx->state.gfxCtx);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
        gSPSegment(POLY_XLU_DISP++, 0x09, &D_80116280[0]);
        POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnZf_OverrideLimbDraw, EnZf_PostLimbDraw, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zf.c", 3601);
}

void func_80B49B60(EnZf* this, f32 arg1) {
    Animation_MorphToLoop(&this->skelAnime, &D_06016388, -1.0f);
    this->unk_3F0 = ((Rand_ZeroOne() * 10.0f) + 8.0f);

    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->actor.speedXZ = 2.0f * arg1;
        this->unk_3F0 /= 2;
    } else {
        this->actor.speedXZ = arg1;
    }

    this->unk_3E4 = 0;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->unk_3DC = 0xC;
    EnZf_SetupAction(this, func_80B48578);
}

s32 func_80B49C2C(GlobalContext* globalCtx, EnZf* this) {
    Actor* projectileActor;
    s16 yawToProjectile;
    s16 phi_t0;
    s16 phi_v1;

    projectileActor = Actor_GetProjectileActor(globalCtx, &this->actor, 600.0f);

    if (projectileActor != NULL) {
        yawToProjectile =
            Actor_WorldYawTowardActor(&this->actor, projectileActor) - (s16)(u16)(this->actor.shape.rot.y);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;

        phi_t0 = 0;

        if (func_80B44058(this, globalCtx, -8.0f)) {
            phi_t0 = 1;
        }

        if (func_80B44058(this, globalCtx, 8.0f)) {
            phi_t0 |= 2;
        }

        this->actor.world.rot.y = this->actor.shape.rot.y;

        if ((((this->actor.xzDistToPlayer < 90.0f) || (phi_t0 == 3)) && !func_80B44058(this, globalCtx, 135.0f)) ||
            (projectileActor->id == ACTOR_ARMS_HOOK)) {
            func_80B48210(this);
            return 1;
        }

        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;

        if (phi_t0 == 0) {
            phi_v1 = (globalCtx->gameplayFrames & 1);
        } else {
            phi_v1 = phi_t0;
        }

        if ((ABS(yawToProjectile) < 0x2000) || (ABS(yawToProjectile) >= 0x6000)) {
            if (phi_v1 & 1) {
                func_80B49B60(this, 8.0f);
                return 1;
            }
            func_80B49B60(this, -8.0f);
            return 1;
        }
        if (ABS(yawToProjectile) < 0x5FFF) {
            if (phi_v1 & 1) {
                func_80B49B60(this, 4.0f);
                return 1;
            }
            func_80B49B60(this, -4.0f);
        }
        return 1;
    }
    return 0;
}

s32 func_80B49E4C(GlobalContext* globalCtx, EnZf* this) {
    Actor* projectileActor;
    s16 yawToProjectile;
    s16 phi_t0;
    s16 sp1E;
    s16 sp1C = 0;

    projectileActor = Actor_GetProjectileActor(globalCtx, &this->actor, 600.0f);
    if (projectileActor != NULL) {
        yawToProjectile = Actor_WorldYawTowardActor(&this->actor, projectileActor) - (s16)(u16)this->actor.shape.rot.y;
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;

        phi_t0 = 0;

        if (func_80B44058(this, globalCtx, -70.0f)) {
            phi_t0 = 1;
        }

        if (func_80B44058(this, globalCtx, 70.0f)) {
            phi_t0 |= 2;
        }

        this->actor.speedXZ = 0.0f;

        if ((ABS(yawToProjectile) < 0x2000) || (ABS(yawToProjectile) >= 0x6000)) {
            if (phi_t0 == 0) {
                if ((globalCtx->gameplayFrames & 1) != 0) {
                    sp1E = 6;
                } else {
                    sp1E = -6;
                }
            } else {
                switch (phi_t0) {
                    case 1:
                        sp1E = 6;
                        break;
                    case 2:
                        sp1E = -6;
                        break;
                    case 3:
                        sp1C = 5;
                        sp1E = 0;
                        break;
                }
            }
        } else if (ABS(yawToProjectile) < 0x5FFF) {
            if (phi_t0 == 0) {
                if ((globalCtx->gameplayFrames & 1) != 0) {
                    sp1E = 6;
                } else {
                    sp1E = -6;
                }
            } else {
                switch (phi_t0) {
                    case 1:
                        sp1E = 6;
                        break;
                    case 2:
                        sp1E = -6;
                        break;
                    case 3:
                        sp1C = 10;
                        sp1E = 0;
                        break;
                }
            }
        }

        this->unk_408 = sp1E;
        this->unk_40C = sp1C;
        return true;
    }
    return false;
}
