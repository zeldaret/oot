#include "z_en_skj.h"
#include "../ovl_En_Skjneedle/z_en_skjneedle.h"
#include "objects/object_skj/object_skj.h"

#define FLAGS 0x02000015

#define THIS ((EnSkj*)thisx)

void EnSkj_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSkj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSkj_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSkj_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B00964(Actor* thisx, GlobalContext* globalCtx); // update for params 5
void func_80B01244(Actor* thisx, GlobalContext* globalCtx); // update for params 6

void func_80AFEE84(EnSkj* this);
void func_80AFF2A0(EnSkj* this);
void func_80AFF334(EnSkj* this);

void func_80AFE390(EnSkj* this);
void func_80B00514(EnSkj* this);
void func_80AFF038(EnSkj* this);
void func_80B006F8(EnSkj* this);
void func_80B00680(EnSkj* this);
void func_80AFEE84(EnSkj* this);
void func_80AFF5F0(EnSkj* this);
void func_80AFF660(EnSkj* this);
void func_80AFF3D0(EnSkj* this);
void func_80AFF9E8(EnSkj* this);
void func_80AFFD64(EnSkj* this);
void func_80AFFF38(EnSkj* this);
void func_80B003F4(EnSkj* this);
void func_80AFFCE0(EnSkj* this);
void func_80AFFE24(EnSkj* this);
void func_80AFFEB4(EnSkj* this);
void func_80AFFFBC(EnSkj* this);
void func_80B00068(EnSkj* this);
void func_80B000EC(EnSkj* this);
void func_80B00370(EnSkj* this);
void func_80B0047C(EnSkj* this);
void func_80AFF16C(EnSkj* this);
void func_80AFF16C(EnSkj* this);
void func_80AFF1F0(EnSkj* this);
void func_80AFF1F0(EnSkj* this);
void func_80B00F2C(EnSkj* this, GlobalContext* globalCtx);
void func_80B001CC(EnSkj* this, GlobalContext* globalCtx);
f32 func_80AFE968(EnSkj* this);
s32 func_80AFEC3C(EnSkj* this, GlobalContext* globalCtx);
void func_80B002A4(EnSkj* this, GlobalContext* globalCtx);
void func_80B00A08(EnSkj* this, Player* player);

// ocarina minigame action funcs
void func_80B00A54(EnSkj* this, GlobalContext* globalCtx);
void func_80B00BB0(EnSkj* this, GlobalContext* globalCtx);
void func_80B00B0C(EnSkj* this, GlobalContext* globalCtx);
void func_80B00C38(EnSkj* this, GlobalContext* globalCtx);
void func_80B00EA4(EnSkj* this, GlobalContext* globalCtx);
void func_80B01004(EnSkj* this, GlobalContext* globalCtx);
void func_80B01040(EnSkj* this, GlobalContext* globalCtx);
void func_80B010C4(EnSkj* this, GlobalContext* globalCtx);
void func_80B01134(EnSkj* this, GlobalContext* globalCtx);
void func_80B00EE0(EnSkj* this, GlobalContext* globalCtx);
void func_80B00F64(EnSkj* this, GlobalContext* globalCtx);
void func_80B00A54(EnSkj* this, GlobalContext* globalCtx);
void func_80B011CC(EnSkj* this, GlobalContext* globalCtx);

// actionFuncs enemy?
void func_80AFEECC(EnSkj* this, GlobalContext* globalCtx);
void func_80AFEF98(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF07C(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF19C(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF220(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF2E0(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF380(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF424(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF620(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF688(EnSkj* this, GlobalContext* globalCtx);
void func_80AFF7D8(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFA0C(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFD14(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFD84(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFE44(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFED4(EnSkj* this, GlobalContext* globalCtx);
void func_80AFFF58(EnSkj* this, GlobalContext* globalCtx);
void func_80B00018(EnSkj* this, GlobalContext* globalCtx);
void func_80B00098(EnSkj* this, GlobalContext* globalCtx);
void func_80B00130(EnSkj* this, GlobalContext* globalCtx);
void func_80B00210(EnSkj* this, GlobalContext* globalCtx);
void func_80B002D8(EnSkj* this, GlobalContext* globalCtx);
void func_80B00390(EnSkj* this, GlobalContext* globalCtx);
void func_80B0042C(EnSkj* this, GlobalContext* globalCtx);
void func_80B0049C(EnSkj* this, GlobalContext* globalCtx);
void func_80B00554(EnSkj* this, GlobalContext* globalCtx);
void func_80B00638(EnSkj* this, GlobalContext* globalCtx);
void func_80B006B0(EnSkj* this, GlobalContext* globalCtx);
void func_80B00740(EnSkj* this, GlobalContext* globalCtx);

void func_80AFEAEC(GlobalContext* globalCtx, Vec3f* pos);

void func_80AFF7A0(EnSkj* this);

typedef struct {
    u8 unk0;
    EnSkj* skullkid;
} unkSkjStruct;

unkSkjStruct D_80B01640 = { 0, NULL };
unkSkjStruct D_80B01648[] = { { 0, NULL }, { 0, NULL } };

const ActorInit En_Skj_InitVars = {
    ACTOR_EN_SKJ,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_SKJ,
    sizeof(EnSkj),
    (ActorFunc)EnSkj_Init,
    (ActorFunc)EnSkj_Destroy,
    (ActorFunc)EnSkj_Update,
    (ActorFunc)EnSkj_Draw,
};

ColliderCylinderInitType1 D_80B01678 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, ANIMMODE_LOOP, 0x08 },
        { 0xFFCFFFFF, ANIMMODE_LOOP, ANIMMODE_LOOP },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 8, 48, 0, { 0, 0, 0 } },
};

DamageTable D_80B016A4 = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(0, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x0),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(1, 0xF),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(4, 0xF),
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
    /* Giant spin    */ DMG_ENTRY(4, 0x0),
    /* Master spin   */ DMG_ENTRY(2, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(8, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static s32 sOcarinaGameRewards[] = {
    GI_RUPEE_GREEN,
    GI_RUPEE_BLUE,
    GI_HEART_PIECE,
    GI_RUPEE_RED,
};

typedef struct {
    AnimationHeader* animation;
    u8 mode;
    f32 morphFrames;
} SkullkidAnimationEntry;

static SkullkidAnimationEntry sSkullKidAnimations[] = {
    { &gSkullKidAnimBackflip, ANIMMODE_ONCE, 0.0f },
    { &gSkullKidAnimShootNeedle, ANIMMODE_ONCE, 0.0f },
    { &gSkullKidAnimPlayFlute, ANIMMODE_LOOP, 0.0f },
    { &gSkullKidAnimDie, ANIMMODE_ONCE, 0.0f },
    { &gSkullKidAnimHit, ANIMMODE_ONCE, 0.0f },
    { &gSkullKidAnimLand, ANIMMODE_ONCE, 0.0f },
    { &gSkullKidAnimLookLeftAndRight, ANIMMODE_LOOP, 0.0f }, // Unused
    { &gSkullKidAnimFightingStance, ANIMMODE_LOOP, 0.0f },
    { &gSkullKidAnimWalkToPlayer, ANIMMODE_LOOP, 0.0f },
    { &gSkullKidAnimWait, ANIMMODE_LOOP, 0.0f },
};

static EnSkjActionFunc sActionFuncs[] = {
    func_80AFEECC, func_80AFEF98, func_80AFF07C, func_80AFF19C, func_80AFF220, func_80AFF2E0,
    func_80AFF380, func_80AFF424, func_80AFF620, func_80AFF688, func_80AFF7D8, func_80AFFA0C,
    func_80AFFD14, func_80AFFD84, func_80AFFE44, func_80AFFED4, func_80AFFF58, func_80B00018,
    func_80B00098, func_80B00130, func_80B00210, func_80B002D8, func_80B00390, func_80B0042C,
    func_80B0049C, func_80B00554, func_80B00638, func_80B006B0, func_80B00740,
};

InitChainEntry D_80B017C0[] = {
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 30, ICHAIN_STOP),
};

static s32 D_80B01EA0; // gets set if actor flags & 0x100 is set

void EnSkj_ChangeAnim(EnSkj* this, u8 animIndex) {
    f32 startFrame = Animation_GetLastFrame(sSkullKidAnimations[animIndex].animation);

    this->animIndex = animIndex;
    Animation_Change(&this->skelAnime, sSkullKidAnimations[animIndex].animation, 1.0f, 0.0f, startFrame,
                     sSkullKidAnimations[animIndex].mode, sSkullKidAnimations[animIndex].morphFrames);
}

void EnSkj_SetupAction(EnSkj* this, u8 action) {
    this->action = action;
    this->actionFunc = sActionFuncs[action];

    switch (action) {
        case 0:
        case 3:
        case 4:
        case 9:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
            this->unk_2D3 = 0;
            break;
        default:
            this->unk_2D3 = 1;
            break;
    }
}

void func_80AFE390(EnSkj* this) {
    Vec3f mult;

    mult.x = 0.0f;
    mult.y = 0.0f;
    mult.z = 120.0f;

    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
    Matrix_MultVec3f(&mult, &this->center);

    this->center.x += this->actor.world.pos.x;
    this->center.z += this->actor.world.pos.z;
}

// EnSkj_SetNaviEnemyID
void func_80AFE428(EnSkj* this) {
    switch (this->actor.params) {
        case 0:
            if (gSaveContext.itemGetInf[3] & 0x200) {
                this->actor.naviEnemyId = 0x41;
            } else if (gSaveContext.itemGetInf[1] & 0x40) {
                this->actor.naviEnemyId = 0x40;
            } else {
                this->actor.naviEnemyId = 0x3F;
            }
            break;

        case 1:
        case 2:
            this->actor.naviEnemyId = 0x3F;
            break;

        default:
            this->actor.naviEnemyId = 0x36;
            break;
    }
}

//#define NON_MATCHING
#ifdef NON_MATCHING
void EnSkj_Init(Actor* thisx, GlobalContext* globalCtx) {
    s16 type = (thisx->params >> 0xA) & 0x3F;
    EnSkj* this = (EnSkj*)thisx;
    GlobalContext* globalCtx2;
    s32 pad[1];
    Player* player;

    Actor_ProcessInitChain(thisx, D_80B017C0);
    switch (type) {
        case 5:
            D_80B01640.unk0 = 1;
            D_80B01640.skullkid = THIS;
            this->actor.destroy = NULL;
            this->actor.draw = NULL;
            this->actor.update = func_80B00964;
            this->actor.flags &= ~5;
            this->actor.flags |= 0;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_PROP);
            break;

        case 6:
            D_80B01640.unk0 = 1;
            D_80B01640.skullkid = THIS;
            this->actor.destroy = NULL;
            this->actor.draw = NULL;
            this->actor.update = func_80B01244;
            this->actor.flags &= ~5;
            this->actor.flags |= 0;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_PROP);
            this->actor.focus.pos.x = 1230.0f;
            this->actor.focus.pos.y = -90.0f;
            this->actor.focus.pos.z = 450.0f;
            this->actionFunc = func_80B00A54;
            break;

        default:
            this->actor.params = type;
            if (((this->actor.params != 0) && (this->actor.params != 1)) && (this->actor.params != 2)) {
                if (gSaveContext.inventory.items[gItemSlots[ITEM_POCKET_EGG]] < ITEM_SAW) {
                    //  Actor_Kill(&this->actor);
                    // return;
                }
            }

            func_80AFE428(this);
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gSkullKidSkel, &gSkullKidAnimPlayFlute, this->jointTable,
                               this->morphTable, 19);
            if ((type >= 0) && (type < 3)) {
                this->actor.flags &= ~5;
                this->actor.flags |= 9;
                Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_NPC);
            }

            if ((type < 0) || (type >= 7)) {
                this->actor.flags &= ~0x02000000;
            }

            if ((type > 0) && (type < 3)) {
                this->actor.targetMode = 7;
                this->posCopy = this->actor.world.pos;
                D_80B01648[type - 1].unk0 = 1;
                D_80B01648[type - 1].skullkid = this;
                this->unk_2D8 = 0;
                this->alpha = 0;
                func_80B00514(this);
            } else {
                this->alpha = 255;
                func_80AFF038(this);
            }

            this->actor.colChkInfo.damageTable = &D_80B016A4;
            this->actor.colChkInfo.health = 10;
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinderType1(globalCtx, &this->collider, &this->actor, &D_80B01678);
            ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 40.0f);
            Actor_SetScale(thisx, 0.01f);
            this->textId = 0;
            this->actor.textId = 0;
            this->playbackTimer = 0;
            this->unk_2D2 = 0;
            this->unk_2D4 = 3;
            this->unk_2D5 = 3;
            this->actor.speedXZ = 0.0f;
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = -1.0f;
            func_80AFE390(this);
            globalCtx2 = globalCtx;
            player = ((Player*)globalCtx2->actorCtx.actorLists[ACTORCAT_PLAYER].head);
            osSyncPrintf("Player_X : %f\n", player->actor.world.pos.x);
            osSyncPrintf("Player_Z : %f\n", player->actor.world.pos.z);
            osSyncPrintf("World_X  : %f\n", this->actor.world.pos.x);
            osSyncPrintf("World_Z  : %f\n", this->actor.world.pos.z);
            osSyncPrintf("Center_X : %f\n", this->center.x);
            osSyncPrintf("Center_Z : %f\n\n", this->center.z);

            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skj/EnSkj_Init.s")
#endif

void EnSkj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSkj* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80AFE8EC(Player* player, EnSkj* this) {
    f32 xDiff = player->actor.world.pos.x - this->actor.world.pos.x;
    f32 zDiff = player->actor.world.pos.z - this->actor.world.pos.z;
    f32 yDiff = player->actor.world.pos.y - this->actor.world.pos.y;

    return (SQ(xDiff) + SQ(zDiff) <= 676.0f) && ((yDiff) >= 0.0f);
}

f32 func_80AFE968(EnSkj* this) { // GI_xzRange
    EnSkj* temp_v0;
    f32 zDiff;
    f32 xDiff;

    temp_v0 = D_80B01640.skullkid;
    xDiff = temp_v0->actor.world.pos.x - this->actor.world.pos.x;
    zDiff = temp_v0->actor.world.pos.z - this->actor.world.pos.z;
    return sqrtf(SQ(xDiff) + SQ(zDiff)) + 26.0f;
}

f32 func_80AFE9AC(EnSkj* this) { // GI_yRange
    return fabsf(D_80B01640.skullkid->actor.world.pos.y - this->actor.world.pos.y) + 10.0f;
}

// Spawn/shoot needle
s32 func_80AFE9D4(EnSkj* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f pos;
    Vec3f pos2;
    EnSkjneedle* needle;

    pos.x = 1.5f;
    pos.y = 0.0f;
    pos.z = 40.0f;

    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
    Matrix_MultVec3f(&pos, &pos2);

    pos2.x += this->actor.world.pos.x;
    pos2.z += this->actor.world.pos.z;
    pos2.y = this->actor.world.pos.y + 27.0f;

    needle = (EnSkjneedle*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_SKJNEEDLE, pos2.x, pos2.y, pos2.z,
                                       this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 0);
    if (needle != 0) {
        needle->unk_1E2 = 100;
        needle->actor.speedXZ = 24.0f;
        return 1;
    }
    return 0;
}

// Create Spark
void func_80AFEAEC(GlobalContext* globalCtx, Vec3f* pos) {
    EffectSparkInit effect;
    s32 sp20;

    effect.position.x = pos->x;
    effect.position.y = pos->y;
    effect.position.z = pos->z;
    effect.uDiv = 5;
    effect.vDiv = 5;

    effect.colorStart[0].r = 0;
    effect.colorStart[0].g = 0;
    effect.colorStart[0].b = 128;
    effect.colorStart[0].a = 255;

    effect.colorStart[1].r = 0;
    effect.colorStart[1].g = 0;
    effect.colorStart[1].b = 128;
    effect.colorStart[1].a = 255;

    effect.colorStart[2].r = 0;
    effect.colorStart[2].g = 0;
    effect.colorStart[2].b = 128;
    effect.colorStart[2].a = 255;

    effect.colorStart[3].r = 0;
    effect.colorStart[3].g = 0;
    effect.colorStart[3].b = 128;
    effect.colorStart[3].a = 255;

    effect.colorEnd[0].r = 0;
    effect.colorEnd[0].g = 0;
    effect.colorEnd[0].b = 32;
    effect.colorEnd[0].a = 0;

    effect.colorEnd[1].r = 0;
    effect.colorEnd[1].g = 0;
    effect.colorEnd[1].b = 32;
    effect.colorEnd[1].a = 0;

    effect.colorEnd[2].r = 0;
    effect.colorEnd[2].g = 0;
    effect.colorEnd[2].b = 64;
    effect.colorEnd[2].a = 0;

    effect.colorEnd[3].r = 0;
    effect.colorEnd[3].g = 0;
    effect.colorEnd[3].b = 64;
    effect.colorEnd[3].a = 0;

    effect.speed = 8.0f;
    effect.gravity = -1.0f;

    effect.timer = 0;
    effect.duration = 8;
    Effect_Add(globalCtx, &sp20, EFFECT_SPARK, 0, 1, &effect);
}

s32 func_80AFEC3C(EnSkj* this, GlobalContext* globalCtx) {
    s16 yawDiff;
    Vec3f effectPos;

    if (!((this->unk_2D3 == 0) || (D_80B01EA0 != 0) || ((this->collider.base.acFlags & 2) == 0))) {
        this->collider.base.acFlags = this->collider.base.acFlags & 0xFFFD;
        if (this->actor.colChkInfo.damageEffect != 0) {
            if (this->actor.colChkInfo.damageEffect == 0xF) {
                effectPos.x = this->collider.info.bumper.hitPos.x;
                effectPos.y = this->collider.info.bumper.hitPos.y;
                effectPos.z = this->collider.info.bumper.hitPos.z;

                func_80AFEAEC(globalCtx, &effectPos);
                EffectSsHitMark_SpawnFixedScale(globalCtx, 1, &effectPos);

                yawDiff = this->actor.yawTowardsPlayer - this->actor.world.rot.y;
                if ((this->action == 2) || (this->action == 6)) {
                    if ((yawDiff >= 0x6001) || (yawDiff < -0x6000)) {
                        Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0, 8);
                        func_80AFF16C(this);
                        return 1;
                    }
                }

                Actor_ApplyDamage(&this->actor);
                Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0, 8);

                if (this->actor.colChkInfo.health != 0) {
                    if (this->unk_2D5 != 0) {
                        this->unk_2D5--;
                    }
                    if (this->unk_2CE == 0) {
                        this->unk_2CE = 0x3C;
                    }
                    func_80AFF1F0(this);
                    return 1;
                }
                func_80AFF16C(this);
                return 1;
            }
        } else {
            this->unk_2D2 = 1;
            func_80AFEE84(this);
            return 1;
        }
    }
    return 0;
}

s32 func_80AFEDF8(EnSkj* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    if (this->actor.xzDistToPlayer < this->unk_2EC) {
        this = this;
        if (func_8002DDE4(globalCtx) != 0) {
            return 1;
        }
    }

    yawDiff = this->actor.yawTowardsPlayer - this->actor.world.rot.y;

    if ((yawDiff < this->unk_2C8) && (-this->unk_2C8 < yawDiff)) {
        return 1;
    }

    return 0;
}

void func_80AFEE84(EnSkj* this) {
    this->actor.velocity.y = 8.0f;
    this->actor.speedXZ = -8.0f;

    EnSkj_ChangeAnim(this, SKJ_ANIM_BACKFLIP);
    EnSkj_SetupAction(this, 0);
}

void func_80AFEECC(EnSkj* this, GlobalContext* globalCtx) {
    u32 alpha = this->alpha;

    if (this->unk_2D6 == 2) {
        globalCtx->msgCtx.unk_E3EE = 0;
        this->unk_2D6 = 0;
    }

    alpha -= 20;

    if (this->unk_2D2 != 0) {
        if (alpha > 255) {
            alpha = 0;
        }

        this->alpha = alpha;
        this->actor.shape.shadowAlpha = alpha;
    }

    if (this->actor.velocity.y <= 0.0f) {
        if (this->actor.bgCheckFlags & 2) {
            this->actor.bgCheckFlags &= ~2;
            func_80AFF2A0(this);
        }
    }
}

void func_80AFEF5C(EnSkj* this) {
    this->unk_2D4 = 3;
    this->unk_2CC = 0;
    EnSkj_ChangeAnim(this, SKJ_ANIM_SHOOT_NEEDLE);
    EnSkj_SetupAction(this, 1);
}

void func_80AFEF98(EnSkj* this, GlobalContext* globalCtx) {
    u8 val;
    s16 lastFrame = Animation_GetLastFrame(&gSkullKidAnimShootNeedle);

    if ((this->skelAnime.curFrame == lastFrame) && (this->unk_2CC == 0)) {
        val = this->unk_2D4;
        if (this->unk_2D4 != 0) {
            func_80AFE9D4(this, globalCtx);
            this->unk_2CC = 4;
            val--;
            this->unk_2D4 = val;

        } else {
            func_80AFF5F0(this);
        }
    }
}

void func_80AFF038(EnSkj* this) {
    this->unk_2C8 = 0xAAA;
    this->unk_2EC = 200.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_PLAY_FLUTE);
    EnSkj_SetupAction(this, 2);
}

void func_80AFF07C(EnSkj* this, GlobalContext* globalCtx) {
    if (this->actor.params == 0) {
        if ((!(gSaveContext.itemGetInf[1] & 0x40)) && (this->actor.xzDistToPlayer < 200.0f)) {
            this->unk_2D2 = 1;
            func_80AFEE84(this);
        } else if (D_80B01640.unk0 != 0) {
            Player* player = PLAYER;
            if (func_80AFE8EC(player, D_80B01640.skullkid) != 0) {
                func_80AFF7A0(this);
                player->stateFlags2 |= 0x800000;
                player->unk_6A8 = &D_80B01640.skullkid->actor;
            }
        }
    } else {
        if (func_80AFEDF8(this, globalCtx) != 0) {
            func_80AFF334(this);
        }
    }
}

void func_80AFF16C(EnSkj* this) {
    EnSkj_ChangeAnim(this, SKJ_ANIM_DIE);
    EnSkj_SetupAction(this, 3);
}

void func_80AFF19C(EnSkj* this, GlobalContext* globalCtx) {
    s16 lastFrame = Animation_GetLastFrame(&gSkullKidAnimDie);

    if (this->skelAnime.curFrame == lastFrame) {
        func_80AFF660(this);
    }
}

void func_80AFF1F0(EnSkj* this) {
    EnSkj_ChangeAnim(this, SKJ_ANIM_HIT);
    EnSkj_SetupAction(this, 4);
}

void func_80AFF220(EnSkj* this, GlobalContext* globalCtx) {
    s16 lastFrame = Animation_GetLastFrame(&gSkullKidAnimHit);

    if (this->skelAnime.curFrame == lastFrame) {
        if (this->unk_2D5 == 0) {
            this->unk_2D5 = 3;
            func_80AFEE84(this);
        } else {
            func_80AFF3D0(this);
        }
    }
}

void func_80AFF2A0(EnSkj* this) {
    func_80AFE390(this);
    this->actor.speedXZ = 0.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_LAND);
    EnSkj_SetupAction(this, 5);
}

void func_80AFF2E0(EnSkj* this, GlobalContext* globalCtx) {
    s16 lastFrame = Animation_GetLastFrame(&gSkullKidAnimLand);
    if (this->skelAnime.curFrame == lastFrame) {
        func_80AFF3D0(this);
    }
}

void func_80AFF334(EnSkj* this) {
    this->unk_2C8 = 0x2000;
    this->playbackTimer = 400;
    this->unk_2EC = 600.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_LOOK_LEFT_RIGHT);
    EnSkj_SetupAction(this, 6);
}

void func_80AFF380(EnSkj* this, GlobalContext* globalCtx) {
    if (this->playbackTimer == 0) {
        func_80AFF038(this);
    } else if (func_80AFEDF8(this, globalCtx) != 0) {
        this->playbackTimer = 600;
        func_80AFF3D0(this);
    }
}

void func_80AFF3D0(EnSkj* this) {
    this->unk_2CC = 0x3C;
    this->unk_2C8 = 0x2000;
    this->unk_2F0 = 0.0f;
    this->unk_2EC = 600.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_FIGHTING_STANCE);
    EnSkj_SetupAction(this, 7);
}

void func_80AFF424(EnSkj* this, GlobalContext* globalCtx) {
    Vec3f pos1;
    Vec3f pos2;
    s32 pad[3];
    f32 prevPosX;
    f32 prevPosZ;
    f32 phi_f14;
    s16 yawDistToPlayer;

    if (this->unk_2CC == 0) {
        func_80AFEF5C(this);
    } else if (this->playbackTimer != 0) {
        yawDistToPlayer =
            Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->unk_2F0, 0);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Math_ApproachF(&this->unk_2F0, 2000.0f, 1.0f, 200.0f);

        pos1.x = 0.0f;
        pos1.y = 0.0f;
        pos1.z = -120.0f;

        Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
        Matrix_MultVec3f(&pos1, &pos2);
        prevPosX = this->actor.world.pos.x;
        prevPosZ = this->actor.world.pos.z;
        if (1) {}
        this->actor.world.pos.x = this->center.x + pos2.x;
        this->actor.world.pos.z = this->center.z + pos2.z;

        phi_f14 = sqrtf(SQ(this->actor.world.pos.x - prevPosX) + SQ(this->actor.world.pos.z - prevPosZ));
        phi_f14 = CLAMP_MAX(phi_f14, 10.0f);
        phi_f14 /= 10.0f;

        this->skelAnime.playSpeed = (yawDistToPlayer < 0) ? -(1.0f + phi_f14) : (1.0f + phi_f14);

    } else if (func_80AFEDF8(this, globalCtx) != 0) {
        this->unk_2D2 = 1;
        func_80AFEE84(this);
    } else {
        func_80AFF038(this);
    }
}

void func_80AFF5F0(EnSkj* this) {
    Animation_Reverse(&this->skelAnime);
    EnSkj_SetupAction(this, 8);
}

void func_80AFF620(EnSkj* this, GlobalContext* globalCtx) {
    if (this->skelAnime.curFrame == 0.0f) {
        func_80AFF3D0(this);
    }
}

void func_80AFF660(EnSkj* this) {
    this->unk_2D2 = 1;
    EnSkj_SetupAction(this, 9);
}

void func_80AFF688(EnSkj* this, GlobalContext* globalCtx) {
    Vec3f effectPos;
    Vec3f effectVel;
    Vec3f effectAccel;
    u32 phi_v0;

    phi_v0 = this->alpha - 4;

    if (phi_v0 > 255) {
        phi_v0 = 0;
    }
    this->alpha = phi_v0;
    this->actor.shape.shadowAlpha = phi_v0;

    effectPos.x = Rand_CenteredFloat(30.0f) + this->actor.world.pos.x;
    effectPos.y = Rand_CenteredFloat(30.0f) + this->actor.world.pos.y;
    effectPos.z = Rand_CenteredFloat(30.0f) + this->actor.world.pos.z;

    effectAccel.z = 0.0f;
    effectAccel.y = 0.0f;
    effectAccel.x = 0.0f;

    effectVel.z = 0.0f;
    effectVel.y = 0.0f;
    effectVel.x = 0.0f;

    EffectSsDeadDb_Spawn(globalCtx, &effectPos, &effectVel, &effectAccel, 100, 10, 255, 255, 255, 255, 0, 0, 255, 1, 9,
                         1);
}

void func_80AFF7A0(EnSkj* this) {
    this->textId = 0x10BC;

    EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
    EnSkj_SetupAction(this, 10);
}

void func_80AFF7D8(EnSkj* this, GlobalContext* globalCtx) { // Mask quest?
    Player* player;
    u16 temp_v0;

    player = PLAYER;

    if (player->stateFlags2 & 0x1000000) {
        player->stateFlags2 |= 0x2000000;
        player->unk_6A8 = &D_80B01640.skullkid->actor;
        player->actor.world.pos.x = D_80B01640.skullkid->actor.world.pos.x;
        player->actor.world.pos.y = D_80B01640.skullkid->actor.world.pos.y;
        player->actor.world.pos.z = D_80B01640.skullkid->actor.world.pos.z;
        func_80B00A08(D_80B01640.skullkid, player);
        func_8010BD88(globalCtx, 0x22);
        func_80AFF9E8(this);
    } else if (D_80B01EA0 != 0) {
        player->actor.world.pos.x = D_80B01640.skullkid->actor.world.pos.x;
        player->actor.world.pos.y = D_80B01640.skullkid->actor.world.pos.y;
        player->actor.world.pos.z = D_80B01640.skullkid->actor.world.pos.z;
        if ((Player_GetMask(globalCtx) == 2) && !(gSaveContext.itemGetInf[3] & 0x200)) {
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            func_80AFFF38(this);
        } else {
            func_80AFFD64(this);
        }
    } else if (func_80AFE8EC(player, D_80B01640.skullkid) == 0) {
        func_80AFF038(this);
    } else {
        player->stateFlags2 |= 0x800000;
        if (gSaveContext.itemGetInf[1] & 0x40) {
            if (gSaveContext.itemGetInf[3] & 0x200) {
                temp_v0 = Text_GetFaceReaction(globalCtx, 0x15U);
                this->textId = temp_v0;
                if ((temp_v0 & 0xFFFF) == 0) {
                    this->textId = 0x1020;
                }
            } else if (Player_GetMask(globalCtx) == PLAYER_MASK_NONE) {
                this->textId = 0x10BC;
            } else if (Player_GetMask(globalCtx) == PLAYER_MASK_SKULL) {
                this->textId = 0x101B;
            } else {
                this->textId = Text_GetFaceReaction(globalCtx, 0x15);
            }
            func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
        }
    }
}

void func_80AFF9E8(EnSkj* this) {
    this->unk_2D6 = 0;
    EnSkj_SetupAction(this, 0xB);
}

void func_80AFFA0C(EnSkj* this, GlobalContext* globalCtx) { // Has to do with ocarina game
    Player* player = PLAYER;

    if ((!(gSaveContext.itemGetInf[1] & 0x40)) &&
        ((globalCtx->msgCtx.msgMode == 0xE) || (globalCtx->msgCtx.msgMode == 0xF))) {
        globalCtx->msgCtx.unk_E3EE = 4;
        func_80106CCC(globalCtx);
        player->unk_6A8 = &this->actor;
        func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
        func_80B003F4(this);
    } else {
        if ((globalCtx->msgCtx.msgMode == 0xD) && (this->unk_2D6 == 0)) {
            this->unk_2D6 = 1;
            EnSkj_ChangeAnim(this, SKJ_ANIM_PLAY_FLUTE);
        } else if ((this->unk_2D6 != 0) && (globalCtx->msgCtx.msgMode == 0x1A)) {
            this->unk_2D6 = 0;
            EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
        }
        if (globalCtx->msgCtx.unk_E3EE == 4) {
            globalCtx->msgCtx.unk_E3EE = 0;
            this->unk_2D6 = 0;
            EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
            EnSkj_SetupAction(this, 0xA);
        } else if (globalCtx->msgCtx.unk_E3EE == 3) {
            if (!(gSaveContext.itemGetInf[1] & 0x40)) {
                globalCtx->msgCtx.unk_E3EE = 4;
                func_80078884(NA_SE_SY_CORRECT_CHIME);
                player->unk_6A8 = &this->actor;
                func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
                this->textId = 0x10BB;
                func_80AFFCE0(this);
            } else {
                globalCtx->msgCtx.unk_E3EE = 5;
            }
        } else if (globalCtx->msgCtx.unk_E3EE == 2) {
            player->stateFlags2 &= ~0x1000000;
            Actor_Kill(&this->actor);
        } else if (globalCtx->msgCtx.unk_E3EE == 1) {
            player->stateFlags2 |= 0x800000;
        } else {
            if (globalCtx->msgCtx.unk_E3EE >= 5) {
                gSaveContext.unk_1422 = 0;
                if ((gSaveContext.itemGetInf[1] & 0x40) != 0) {
                    globalCtx->msgCtx.unk_E3EE = 4;
                    player->unk_6A8 = &this->actor;
                    func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
                    this->textId = 0x10BD;
                    func_80AFFCE0(this);
                } else {
                    globalCtx->msgCtx.unk_E3EE = 4;
                    player->unk_6A8 = &this->actor;
                    func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
                    func_80B003F4(this);
                }
            }
        }
    }
}

void func_80AFFCE0(EnSkj* this) {
    this->unk_2D6 = 0;
    EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
    EnSkj_SetupAction(this, 0xC);
}

void func_80AFFD14(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01EA0 != 0) {
        func_80AFFD64(this);
    } else {
        func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
    }
}

void func_80AFFD64(EnSkj* this) {
    EnSkj_SetupAction(this, 0xD);
}

void func_80AFFD84(EnSkj* this, GlobalContext* globalCtx) {
    s32 pad;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
        if ((gSaveContext.itemGetInf[1] & 0x40) != 0) {
            func_80AFF7A0(this);
        } else {
            func_80AFFE24(this);
            func_8002F434(&this->actor, globalCtx, GI_HEART_PIECE, func_80AFE968(this), func_80AFE9AC(this));
        }
    }
}

void func_80AFFE24(EnSkj* this) {
    EnSkj_SetupAction(this, 0xE);
}

void func_80AFFE44(EnSkj* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx) != 0) {
        this->actor.parent = NULL;
        func_80AFFEB4(this);
    } else {
        func_8002F434(&this->actor, globalCtx, GI_HEART_PIECE, func_80AFE968(this), func_80AFE9AC(this));
    }
}

void func_80AFFEB4(EnSkj* this) {
    EnSkj_SetupAction(this, 0xF);
}

void func_80AFFED4(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
        gSaveContext.itemGetInf[1] |= 0x40;
        func_80AFE428(this);
        func_80AFF7A0(this);
    }
}

void func_80AFFF38(EnSkj* this) {
    EnSkj_SetupAction(this, 0x10);
}

void func_80AFFF58(EnSkj* this, GlobalContext* globalCtx) {
    u8 sp1F;

    sp1F = func_8010BDBC(&globalCtx->msgCtx);
    func_8002DF54(globalCtx, &this->actor, 1);
    if ((sp1F == 6) && (func_80106BC8(globalCtx) != 0)) {
        func_80AFFFBC(this);
    }
}

void func_80AFFFBC(EnSkj* this) {
    this->actor.velocity.y = 8.0f;
    this->actor.speedXZ = 2.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_BACKFLIP);
    Animation_Reverse(&this->skelAnime);
    this->skelAnime.curFrame = this->skelAnime.startFrame;
    EnSkj_SetupAction(this, 0x11);
}

void func_80B00018(EnSkj* this, GlobalContext* globalCtx) {
    if (this->actor.velocity.y <= 0.0f) {
        if ((this->actor.bgCheckFlags & 2) != 0) {
            this->actor.bgCheckFlags &= 0xFFFD;
            this->actor.speedXZ = 0.0f;
            func_80B00068(this);
        }
    }
}

void func_80B00068(EnSkj* this) {
    EnSkj_ChangeAnim(this, SKJ_ANIM_LAND);
    EnSkj_SetupAction(this, 0x12);
}

void func_80B00098(EnSkj* this, GlobalContext* globalCtx) {
    s16 lastFrame = Animation_GetLastFrame(&gSkullKidAnimLand);
    if (this->skelAnime.curFrame == lastFrame) {
        func_80B000EC(this);
    }
}

void func_80B000EC(EnSkj* this) {
    this->unk_2F0 = 0.0f;
    this->actor.speedXZ = 2.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_WALK_TO_PLAYER);
    EnSkj_SetupAction(this, 0x13);
}

void func_80B00130(EnSkj* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xA, this->unk_2F0, 0);
    Math_ApproachF(&this->unk_2F0, 2000.0f, 1.0f, 100.0f);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (this->actor.xzDistToPlayer < 120.0f) {
        this->actor.speedXZ = 0.0f;
        func_80B001CC(this, globalCtx);
    }
}

void func_80B001CC(EnSkj* this, GlobalContext* globalCtx) {
    func_8010B680(globalCtx, 0x101C, &this->actor);
    EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
    EnSkj_SetupAction(this, 0x14);
}

void func_80B00210(EnSkj* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            switch (globalCtx->msgCtx.choiceIndex) {
                case 0:
                    func_80B002A4(this, globalCtx);
                    break;
                case 1:
                    func_8010B720(globalCtx, 0x101D);
                    func_80B00370(this);
                    break;
            }
        }
    }
}

void func_80B002A4(EnSkj* this, GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x101E);
    EnSkj_SetupAction(this, 0x15);
}

// Trade mask
void func_80B002D8(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
        Rupees_ChangeBy(10);
        gSaveContext.itemGetInf[3] |= 0x200;
        func_80AFE428(this);
        Player_UnsetMask(globalCtx);
        Item_Give(globalCtx, ITEM_SOLD_OUT);
        func_8010B720(globalCtx, 0x101F);
        func_80B00370(this);
    }
}

void func_80B00370(EnSkj* this) {
    EnSkj_SetupAction(this, 0x16);
}

void func_80B00390(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
        func_8002DF54(globalCtx, &this->actor, 7);
        this->unk_2D2 = 1;
        func_80AFEE84(this);
    }
}

void func_80B003F4(EnSkj* this) {
    this->textId = 0x1041;
    EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
    EnSkj_SetupAction(this, 0x17);
}

void func_80B0042C(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01EA0 != 0) {
        func_80B0047C(this);
    } else {
        func_8002F2CC(&this->actor, globalCtx, func_80AFE968(this));
    }
}

void func_80B0047C(EnSkj* this) {
    EnSkj_SetupAction(this, 0x18);
}

void func_80B0049C(EnSkj* this, GlobalContext* globalCtx) {
    u8 state;
    Player* player;

    if (((state = func_8010BDBC(&globalCtx->msgCtx)), player = PLAYER, state == 6) && func_80106BC8(globalCtx)) {
        func_80AFF7A0(this);
        player->stateFlags2 |= 0x800000;
        player->unk_6A8 = (Actor*)D_80B01640.skullkid;
    }
}

void func_80B00514(EnSkj* this) {
    this->actor.flags &= ~1;
    EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
    EnSkj_SetupAction(this, 25);
}

void func_80B00554(EnSkj* this, GlobalContext* globalCtx) {
    if (this->unk_2D7 != 0) {
        this->actor.flags |= 1;
        EnSkj_SetupAction(this, 26);
    }
}

s32 func_80B00590(EnSkj* this) {
    s32 paramDecr = this->actor.params - 1;

    if (D_80B01648[paramDecr].unk0 == 2) {
        func_80B006F8(this);
        return 1;
    }
    return 0;
}

void func_80B005E0(EnSkj* this) {
    EnSkj_ChangeAnim(this, SKJ_ANIM_WAIT);
    EnSkj_SetupAction(this, 26);
}

// EnSkj_Appear
void func_80B00610(EnSkj* this) {
    if (this->alpha != 255) {
        this->alpha += 20;

        if (this->alpha > 255) {
            this->alpha = 255;
        }
    }
}

void func_80B00638(EnSkj* this, GlobalContext* globalCtx) {
    func_80B00610(this);

    if ((func_80B00590(this) == 0) && (this->unk_2D8 != 0)) {
        func_80B00680(this);
    }
}

void func_80B00680(EnSkj* this) {
    EnSkj_ChangeAnim(this, SKJ_ANIM_PLAY_FLUTE);
    EnSkj_SetupAction(this, 27);
}

void func_80B006B0(EnSkj* this, GlobalContext* globalCtx) {
    func_80B00610(this);

    if ((func_80B00590(this) == 0) && (this->unk_2D8 == 0)) {
        func_80B005E0(this);
    }
}

void func_80B006F8(EnSkj* this) {
    this->actor.velocity.y = 8.0f;
    this->actor.speedXZ = -8.0f;
    EnSkj_ChangeAnim(this, SKJ_ANIM_BACKFLIP);
    EnSkj_SetupAction(this, 28);
}

void func_80B00740(EnSkj* this, GlobalContext* globalCtx) {
    s32 paramsDecr = this->actor.params - 1;

    D_80B01648[paramsDecr].unk0 = 0;
    D_80B01648[paramsDecr].skullkid = NULL;
    this->unk_2D2 = 1;
    func_80AFEE84(this);
}

void EnSkj_Update(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f dropPos;
    s32 pad;
    EnSkj* this = THIS;

    D_80B01EA0 = func_8002F194(&this->actor, globalCtx);

    this->timer++;

    if (this->playbackTimer != 0) {
        this->playbackTimer--;
    }

    if (this->unk_2CC != 0) {
        this->unk_2CC--;
    }

    if (this->unk_2CE != 0) {
        this->unk_2CE--;
    }

    if (this->unk_2CE == 0) {
        this->unk_2D5 = 3;
    }

    if ((this->unk_2D2 != 0) && (this->alpha == 0)) {
        if (this->action == 9) {
            dropPos.x = this->actor.world.pos.x;
            dropPos.y = this->actor.world.pos.y;
            dropPos.z = this->actor.world.pos.z;

            Item_DropCollectible(globalCtx, &dropPos, ITEM00_RUPEE_ORANGE);
        }
        Actor_Kill(&this->actor);
        return;
    }

    Actor_SetFocus(&this->actor, 30.0f);
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc(this, globalCtx);
    this->actor.textId = this->textId;
    func_80AFEC3C(this, globalCtx);
    Collider_UpdateCylinder(&this->actor, &this->collider);

    if ((this->unk_2D3 != 0) && (D_80B01EA0 == 0)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

        if (this->actor.colorFilterTimer == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 20.0f, 20.0f, 20.0f, 7);
}

void func_80B00964(Actor* thisx, GlobalContext* globalCtx) {
    EnSkj* this = THIS;

    D_80B01EA0 = func_8002F194(&this->actor, globalCtx);

    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
}

// EnSkj_TurnPlayer
void func_80B00A08(EnSkj* this, Player* player) {
    Math_SmoothStepToS(&player->actor.shape.rot.y, this->actor.world.rot.y, 5, 2000, 0);
    player->actor.world.rot.y = player->actor.shape.rot.y;
    player->currentYaw = player->actor.shape.rot.y;
}

// EnSkj_StartWaitingForOcarina
void func_80B00A54(EnSkj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (func_80AFE8EC(player, this) != 0) {
        D_80B01648[0].skullkid->unk_2D7 = 1;
        D_80B01648[1].skullkid->unk_2D7 = 1;

        if (player->stateFlags2 & 0x1000000) {
            player->stateFlags2 |= 0x2000000;
            func_800F5BF0(4);
            func_80B00A08(this, player);
            player->unk_6A8 = &this->actor;
            func_8010B680(globalCtx, 0x10BE, &this->actor);
            this->actionFunc = func_80B00BB0;
        } else {
            this->actionFunc = func_80B00B0C;
        }
    }
}

// EnSkj_WaitForOcarina
void func_80B00B0C(EnSkj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (player->stateFlags2 & 0x1000000) {
        player->stateFlags2 |= 0x2000000;
        func_800F5BF0(4);
        func_80B00A08(this, player);
        player->unk_6A8 = &this->actor;
        func_8010B680(globalCtx, 0x10BE, &this->actor);
        this->actionFunc = func_80B00BB0;
    } else if (func_80AFE8EC(player, this) != 0) {
        player->stateFlags2 |= 0x800000;
    }
}

// EnSkj_StartMinigame
void func_80B00BB0(EnSkj* this, GlobalContext* globalCtx) {
    u8 dialogState = func_8010BDBC(&globalCtx->msgCtx);
    Player* player = PLAYER;

    func_80B00A08(this, player);

    if (dialogState == 2) {
        func_8010BD58(globalCtx, 0x2E); // play song?
        if (D_80B01648[0].skullkid != NULL) {
            D_80B01648[0].skullkid->unk_2D8 = 1;
        }
        this->playbackTimer = 160;
        this->actionFunc = func_80B00C38;
    }
}

// EnSkj_WaitForPlayback
void func_80B00C38(EnSkj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    func_80B00A08(this, player);

    if (globalCtx->msgCtx.unk_E3EE == 3) { // failed the game
        func_80106CCC(globalCtx);
        globalCtx->msgCtx.unk_E3EE = 4;
        player->unk_6A8 = &this->actor;
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
        this->textId = 0x102D;
        this->actionFunc = func_80B00EA4;
    } else if (globalCtx->msgCtx.unk_E3EE == 0xF) { // completed the game
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        func_80106CCC(globalCtx);
        globalCtx->msgCtx.unk_E3EE = 4;
        player->unk_6A8 = &this->actor;
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
        this->textId = 0x10BF;
        this->actionFunc = func_80B01004;
    } else { // playing the game
        switch (globalCtx->msgCtx.msgMode) {
            case 0x2B:
                if (D_80B01648[0].skullkid != NULL) {
                    D_80B01648[0].skullkid->unk_2D8 = 0;
                }
                if (func_800F8FF4(NA_SE_SY_METRONOME) == 0) {
                    if (D_80B01648[1].skullkid != NULL) {
                        D_80B01648[1].skullkid->unk_2D8 = 1;
                    }
                    func_80106AA8(globalCtx);
                }
                break;

            case 0x2D:
                if (D_80B01648[1].skullkid != NULL) {
                    D_80B01648[1].skullkid->unk_2D8 = 0;
                }
                if (func_800F8FF4(NA_SE_SY_METRONOME) == 0) {
                    func_80106AA8(globalCtx);
                    this->playbackTimer = 160;
                }
                break;

            case 0x2E:
                if (this->playbackTimer != 0) {
                    this->playbackTimer--;
                } else { // took too long, game failed
                    func_80078884(NA_SE_SY_OCARINA_ERROR);
                    func_80106CCC(globalCtx);
                    globalCtx->msgCtx.unk_E3EE = 4;
                    player->unk_6A8 = &this->actor;
                    func_8002F2CC(&this->actor, globalCtx, 26.0f);
                    this->textId = 0x102D;
                    this->actionFunc = func_80B00EA4;
                }
                break;

            case 0x30:
                if (func_800F8FF4(NA_SE_SY_METRONOME) == 0) {
                    if (D_80B01648[0].skullkid != NULL) {
                        D_80B01648[0].skullkid->unk_2D8 = 1;
                    }
                    this->playbackTimer = 160;
                    func_800ED858(6); // related instrument sound (flute?)
                    func_800ED93C(0xE, 1);
                    globalCtx->msgCtx.msgMode = 0x2A;
                    globalCtx->msgCtx.unk_E3E7 = 2;
                }
                break;
        }
    }
}

void func_80B00EA4(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01EA0) {
        this->actionFunc = func_80B00EE0;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
    }
}

void func_80B00EE0(EnSkj* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        func_80B00F2C(this, globalCtx);
    }
}

// EnSkj_OfferNextRound
void func_80B00F2C(EnSkj* this, GlobalContext* globalCtx) {
    func_8010B720(globalCtx, 0x102E); // wanna play again? yes/no
    this->actionFunc = func_80B00F64;
}

// EnSkj_WaitForOfferResponse
void func_80B00F64(EnSkj* this, GlobalContext* globalCtx) {
    Player* player;

    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && func_80106BC8(globalCtx)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // yes
                player = PLAYER;
                player->stateFlags3 |= 0x20; // makes player take ocarina out right away after closing box
                this->actionFunc = func_80B00A54;
                break;
            case 1: // no
                this->actionFunc = func_80B011CC;
                break;
        }
    }
}

void func_80B01004(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01EA0) {
        this->actionFunc = func_80B01040;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 26.0f);
    }
}

// EnSkj_WaitToGiveReward
void func_80B01040(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        func_8002F434(&this->actor, globalCtx, sOcarinaGameRewards[gSaveContext.ocarinaGameReward], 26.0f, 26.0f);
        this->actionFunc = func_80B010C4;
    }
}

// EnSkj_GiveMinigameReward
void func_80B010C4(EnSkj* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80B01134;
    } else {
        func_8002F434(&this->actor, globalCtx, sOcarinaGameRewards[gSaveContext.ocarinaGameReward], 26.0f, 26.0f);
    }
}

// EnSkj_FinishRound
void func_80B01134(EnSkj* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        s32 ocarinaGameReward = gSaveContext.ocarinaGameReward;

        if (gSaveContext.ocarinaGameReward < 3) {
            gSaveContext.ocarinaGameReward++;
        }

        if (ocarinaGameReward == 2) {
            gSaveContext.itemGetInf[1] |= 0x80;
            this->actionFunc = func_80B011CC;
        } else {
            func_80B00F2C(this, globalCtx);
        }
    }
}

// EnSkj_DissapearFromMinigame
void func_80B011CC(EnSkj* this, GlobalContext* globalCtx) {
    if (D_80B01648[0].skullkid != NULL) {
        D_80B01648[0].unk0 = 2;
    }

    if (D_80B01648[1].skullkid != NULL) {
        D_80B01648[1].unk0 = 2;
    }

    if ((D_80B01648[0].unk0 == 2) && (D_80B01648[1].unk0 == 2)) {
        func_800F5C2C();
        Actor_Kill(&this->actor);
    }
}

void func_80B01244(Actor* thisx, GlobalContext* globalCtx) {
    EnSkj* this = THIS;

    D_80B01EA0 = func_8002F194(&this->actor, globalCtx);
    this->timer++;

    this->actor.focus.pos.x = 1230.0f;
    this->actor.focus.pos.y = -90.0f;
    this->actor.focus.pos.z = 450.0f;

    //if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    //}

    this->actionFunc(this, globalCtx);

    this->actor.textId = this->textId;
    this->actor.xzDistToPlayer = 50.0;
}

s32 func_80B01348(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    return 0;
}

void func_80B01360(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2417);

    if ((limbIndex == 11) && (gSaveContext.itemGetInf[3] & 0x200)) {
        func_80093D18(globalCtx->state.gfxCtx);
        Matrix_Push();
        Matrix_RotateRPY(-0x4000, 0, 0, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_skj.c", 2430),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, gSKJskullMaskDList);
        Matrix_Pop();
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2437);
}

Gfx* func_80B01474(GraphicsContext* gfxCtx, u32 alpha) {
    Gfx* dList;
    Gfx* dListHead;

    dList = dListHead = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gDPSetRenderMode(dListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
    gDPSetEnvColor(dListHead++, 0, 0, 0, alpha);
    gSPEndDisplayList(dListHead++);

    return dList;
}

Gfx* func_80B014E4(GraphicsContext* gfxCtx, u32 alpha) {
    Gfx* dList;
    Gfx* dListHead;

    dList = dListHead = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gDPSetEnvColor(dListHead++, 0, 0, 0, alpha);
    gSPEndDisplayList(dListHead++);

    return dList;
}

void EnSkj_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSkj* this = THIS;
    GfxPrint printer;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2475);

    func_80093D18(globalCtx->state.gfxCtx);

    if (this->alpha < 0xFF) {
        gSPSegment(POLY_OPA_DISP++, 0x0C, func_80B01474(globalCtx->state.gfxCtx, this->alpha));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0C, func_80B014E4(globalCtx->state.gfxCtx, this->alpha));
    }

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80B01348, func_80B01360, this);
    {
        u32 offset = (u32)(this->actionFunc) - (u32)(this->actor.overlayEntry->loadedRamAddr);
        u32 vram = (u32)this->actor.overlayEntry->vramStart + offset;
        GfxPrint_Init(&printer);
        GfxPrint_Open(&printer, globalCtx->state.gfxCtx->polyOpa.p);
        GfxPrint_SetPos(&printer, 0, 8);
        GfxPrint_SetColor(&printer, 255, 255, 255, 255);
        // GfxPrint_SetPosPx(&printer, this->actor.projectedPos.x, this->actor.projectedPos.z);
        GfxPrint_Printf(&printer, "Action %x\n", vram);
        GfxPrint_Printf(&printer, "params %d\n", (s16)thisx->params);
        GfxPrint_Printf(&printer, "xzDist %.2f", thisx->xzDistToPlayer);
        globalCtx->state.gfxCtx->polyOpa.p = GfxPrint_Close(&printer);
        GfxPrint_Destroy(&printer);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_skj.c", 2495);
}
