/*
 * File: z_en_poh.c
 * Overlay: ovl_En_Poh
 * Description: Graveyard Poe
 */

#include "z_en_poh.h"

#define FLAGS 0x00001015

#define THIS ((EnPoh*)thisx)

void EnPoh_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_Update(Actor* thisx, GlobalContext* globalCtx);

void EnPoh_UpdateLiving(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_UpdateDead(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_DrawRegular(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_DrawComposer(Actor* thisx, GlobalContext* globalCtx);
void EnPoh_DrawSoul(Actor* thisx, GlobalContext* globalCtx);

void func_80ADEAC4(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Idle(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEC9C(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Attack(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEECC(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF894(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_ComposerAppear(EnPoh* this, GlobalContext* globalCtx);
void func_80ADEF38(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF15C(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF574(EnPoh* this, GlobalContext* globalCtx);
void func_80ADF5E0(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Disappear(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Appear(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_Death(EnPoh* this, GlobalContext* globalCtx);
void func_80ADFE28(EnPoh* this, GlobalContext* globalCtx);
void func_80ADFE80(EnPoh* this, GlobalContext* globalCtx);
void func_80AE009C(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_TalkRegular(EnPoh* this, GlobalContext* globalCtx);
void EnPoh_TalkComposer(EnPoh* this, GlobalContext* globalCtx);

static s16 D_80AE1A50 = 0;

const ActorInit En_Poh_InitVars = {
    ACTOR_EN_POH,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnPoh),
    (ActorFunc)EnPoh_Init,
    (ActorFunc)EnPoh_Destroy,
    (ActorFunc)EnPoh_Update,
    NULL,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK3, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, 20, { 0, 0, 0 } },
};

static ColliderJntSphItemInit D_80AE1AA0[] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 18, { { 0, 1400, 0 }, 10 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = { { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH }, 1, D_80AE1AA0 };

static CollisionCheckInfoInit sColChkInfoInit = { 0x04, 0x0019, 0x0032, 0x28 };

static DamageTable sDamageTable = {
    0x00, 0x02, 0x01, 0x02, 0x11, 0x02, 0x02, 0x12, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static EnPohInfo sPoeInfo[2] = {
    {
        { 255, 170, 255 },
        { 100, 0, 150 },
        18,
        5,
        248,
        0x060015B0,
        0x06000A60,
        0x060004EC,
        0x060006E0,
        0x06002D28,
        0x06002608,
        0x06003850,
    },
    {
        { 255, 255, 170 },
        { 0, 150, 0 },
        9,
        1,
        244,
        0x06001440,
        0x060009DC,
        0x06000570,
        0x06000708,
        0x060045A0,
        0x06005220,
        0x06001C90,
    },
};

static Color_RGBA8 D_80AE1B4C = { 75, 20, 25, 255 };
static Color_RGBA8 D_80AE1B50 = { 80, 110, 90, 255 };
static Color_RGBA8 D_80AE1B54 = { 90, 85, 50, 255 };
static Color_RGBA8 D_80AE1B58 = { 100, 90, 100, 255 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 3200, ICHAIN_STOP),
};

static Vec3f D_80AE1B60 = { 0.0f, 3.0f, 0.0f };
static Vec3f D_80AE1B6C = { 0.0f, 0.0f, 0.0f };

extern FlexSkeletonHeader D_06006F90;
extern AnimationHeader D_060009DC;
extern SkeletonHeader D_060050D0;
extern AnimationHeader D_06000A60;

extern AnimationHeader D_060001A8;
extern AnimationHeader D_0600020C;
extern AnimationHeader D_060004EC;
extern AnimationHeader D_06000570;
extern AnimationHeader D_06000FE4;
extern AnimationHeader D_060011C4;

extern Gfx D_06004638[];

extern Gfx D_06004498[];
extern Gfx D_06004530[];

void EnPoh_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnItem00* collectible;
    EnPoh* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    Collider_InitJntSph(globalCtx, &this->colliderSph);
    Collider_SetJntSph(globalCtx, &this->colliderSph, &this->actor, &sJntSphInit, &this->colliderSphItem);
    this->colliderSph.list[0].dim.worldSphere.radius = 0;
    this->colliderSph.list[0].dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->colliderSph.list[0].dim.worldSphere.center.y = this->actor.posRot.pos.y;
    this->colliderSph.list[0].dim.worldSphere.center.z = this->actor.posRot.pos.z;
    Collider_InitCylinder(globalCtx, &this->colliderCyl);
    Collider_SetCylinder(globalCtx, &this->colliderCyl, &this->actor, &sCylinderInit);
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->unk_194 = 0;
    this->unk_195 = 32;
    this->visibilityTimer = Rand_S16Offset(700, 300);
    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y,
                            this->actor.initPosRot.pos.z, 255, 255, 255, 0);
    if (this->actor.params >= 4) {
        this->actor.params = EN_POH_NORMAL;
    }
    if (this->actor.params == EN_POH_RUPEE) {
        D_80AE1A50++;
        if (D_80AE1A50 >= 3) {
            Actor_Kill(&this->actor);
        } else {
            collectible = Item_DropCollectible(globalCtx, &this->actor.posRot.pos, 0x4000 | ITEM00_RUPEE_BLUE);
            if (collectible != NULL) {
                collectible->actor.speedXZ = 0.0f;
            }
        }
    } else if (this->actor.params == EN_POH_FLAT) {
        if (Flags_GetSwitch(globalCtx, 0x28) || Flags_GetSwitch(globalCtx, 0x9)) {
            Actor_Kill(&this->actor);
        } else {
            Flags_SetSwitch(globalCtx, 0x28);
        }
    } else if (this->actor.params == EN_POH_SHARP) {
        if (Flags_GetSwitch(globalCtx, 0x29) || Flags_GetSwitch(globalCtx, 0x9)) {
            Actor_Kill(&this->actor);
        } else {
            Flags_SetSwitch(globalCtx, 0x29);
        }
    }
    if (this->actor.params < EN_POH_SHARP) {
        this->objectIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_POH);
        this->infoIdx = EN_POH_INFO_NORMAL;
        this->actor.naviEnemyId = 0x44;
    } else {
        this->objectIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_PO_COMPOSER);
        this->infoIdx = EN_POH_INFO_COMPOSER;
        this->actor.naviEnemyId = 0x43;
    }
    this->info = &sPoeInfo[this->infoIdx];
    if (this->objectIdx < 0) {
        Actor_Kill(&this->actor);
    }
}

void EnPoh_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
    Collider_DestroyJntSph(globalCtx, &this->colliderSph);
    Collider_DestroyCylinder(globalCtx, &this->colliderCyl);
    if (this->actor.params == EN_POH_RUPEE) {
        D_80AE1A50--;
    }
}

void func_80ADE114(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->info->unk_C);
    this->unk_198 = Rand_S16Offset(2, 3);
    this->actionFunc = func_80ADEAC4;
    this->actor.speedXZ = 0.0f;
}

void EnPoh_SetupIdle(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->info->unk_10);
    this->unk_198 = Rand_S16Offset(15, 3);
    this->actionFunc = EnPoh_Idle;
}

void func_80ADE1BC(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->info->unk_10);
    this->actionFunc = func_80ADEC9C;
    this->unk_198 = 0;
    this->actor.speedXZ = 2.0f;
}

void EnPoh_SetupAttack(EnPoh* this) {
    if (this->infoIdx == EN_POH_INFO_NORMAL) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060001A8, -6.0f);
    } else {
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600020C);
    }
    this->unk_198 = 12;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = EnPoh_Attack;
}

void func_80ADE28C(EnPoh* this) {
    if (this->infoIdx == EN_POH_INFO_NORMAL) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060004EC, -6.0f);
    } else {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000570);
    }
    if (this->colliderCyl.body.acHitItem->toucher.flags & 0x0001F824) {
        this->actor.posRot.rot.y = this->colliderCyl.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->colliderCyl.base.ac) + 0x8000;
    }
    this->colliderCyl.base.acFlags &= ~1;
    this->actor.speedXZ = 5.0f;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x10);
    this->actionFunc = func_80ADEECC;
}

void func_80ADE368(EnPoh* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, this->info->unk_18, -5.0f);
    this->actor.speedXZ = 5.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    this->colliderCyl.base.acFlags |= 1;
    this->unk_198 = 200;
    this->actionFunc = func_80ADF894;
}

void EnPoh_SetupInitialAction(EnPoh* this) {
    this->lightColor.a = 0;
    this->actor.flags &= ~1;
    if (this->infoIdx == EN_POH_INFO_NORMAL) {
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_060011C4, 0.0f);
        this->actionFunc = func_80ADEF38;
    } else {
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_06000FE4, 1.0f);
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 20.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
        this->actionFunc = EnPoh_ComposerAppear;
    }
}

void func_80ADE48C(EnPoh* this) {
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_198 = 0;
    this->actor.naviEnemyId = 0xFF;
    this->actor.flags &= ~1;
    this->actionFunc = func_80ADF15C;
}

void func_80ADE4C8(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, this->info->unk_10);
    this->actionFunc = func_80ADF574;
    this->actor.speedXZ = -5.0f;
}

void func_80ADE514(EnPoh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, this->info->unk_C);
    this->unk_19C = this->actor.posRot.rot.y + 0x8000;
    this->actionFunc = func_80ADF5E0;
    this->actor.speedXZ = 0.0f;
}

void EnPoh_SetupDisappear(EnPoh* this) {
    this->unk_194 = 32;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = EnPoh_Disappear;
}

void EnPoh_SetupAppear(EnPoh* this) {
    this->unk_194 = 0;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    this->actionFunc = EnPoh_Appear;
}

void EnPoh_SetupDeath(EnPoh* this, GlobalContext* globalCtx) {
    this->actor.update = EnPoh_UpdateDead;
    this->actor.draw = EnPoh_DrawSoul;
    this->actor.shape.shadowDrawFunc = NULL;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.flags |= 0x10;
    this->actor.gravity = -1.0f;
    this->actor.shape.unk_08 = 1500.0f;
    this->actor.posRot.pos.y -= 15.0f;
    if (this->infoIdx != EN_POH_INFO_COMPOSER) {
        this->actor.shape.rot.x = -0x8000;
    }
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 8);
    this->unk_198 = 60;
    this->actionFunc = EnPoh_Death;
}

void func_80ADE6D4(EnPoh* this) {
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, 0, 0, 0, 0);
    this->visibilityTimer = 0;
    this->actor.shape.rot.y = 0;
    this->lightColor.r = 0;
    this->lightColor.a = 0;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    if (this->actor.params >= EN_POH_SHARP) {
        this->lightColor.g = 200;
        this->lightColor.b = 0;
    } else {
        this->lightColor.g = 0;
        this->lightColor.b = 200;
    }
    this->actor.scale.x = 0.0f;
    this->actor.scale.y = 0.0f;
    this->actor.shape.rot.x = 0;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_METAL_BOX_BOUND);
    this->actionFunc = func_80ADFE28;
}

void EnPoh_Talk(EnPoh* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Actor_SetHeight(&this->actor, -10.0f);
    this->colliderCyl.dim.radius = 13;
    this->colliderCyl.dim.height = 30;
    this->colliderCyl.dim.yShift = 0;
    this->colliderCyl.dim.pos.x = this->actor.posRot.pos.x;
    this->colliderCyl.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    this->colliderCyl.dim.pos.z = this->actor.posRot.pos.z;
    this->colliderCyl.base.maskA = 9;
    if (this->actor.params == EN_POH_FLAT || this->actor.params == EN_POH_SHARP) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_SUN)) {
            this->actor.textId = 0x5000;
        } else if (!Flags_GetSwitch(globalCtx, 0xA) && !Flags_GetSwitch(globalCtx, 0xB)) {
            this->actor.textId = 0x500F;
        } else if ((this->actor.params == EN_POH_FLAT && Flags_GetSwitch(globalCtx, 0xA)) ||
                   (this->actor.params == EN_POH_SHARP && Flags_GetSwitch(globalCtx, 0xB))) {
            this->actor.textId = 0x5013;
        } else {
            this->actor.textId = 0x5012;
        }
    } else {
        this->actor.textId = 0x5005;
    }
    this->unk_198 = 200;
    this->unk_195 = 32;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADFE80;
}

void func_80ADE950(EnPoh* this, s32 arg1) {
    if (arg1) {
        func_800F8A44(&this->actor.projectedPos, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    }
    this->actionFunc = func_80AE009C;
}

void func_80ADE998(EnPoh* this) {
    this->actionFunc = EnPoh_TalkRegular;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y - 15.0f;
}

void func_80ADE9BC(EnPoh* this) {
    this->actionFunc = EnPoh_TalkComposer;
}

void EnPoh_MoveTowardsPlayerHeight(EnPoh* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Math_StepToF(&this->actor.posRot.pos.y, player->actor.posRot.pos.y, 1.0f);
    this->actor.posRot.pos.y += 2.5f * Math_SinS(this->unk_195 * 0x800);
    if (this->unk_195 != 0) {
        this->unk_195 -= 1;
    }
    if (this->unk_195 == 0) {
        this->unk_195 = 32;
    }
}

void func_80ADEA5C(EnPoh* this) {
    if (func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) > 400.0f) {
        this->unk_19C = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);
    }
    Math_ScaledStepToS(&this->actor.posRot.rot.y, this->unk_19C, 0x71C);
}

void func_80ADEAC4(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) && this->unk_198 != 0) {
        this->unk_198--;
    }
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    if (this->actor.xzDistFromLink < 200.0f) {
        func_80ADE1BC(this);
    } else if (this->unk_198 == 0) {
        EnPoh_SetupIdle(this);
    }
    if (this->lightColor.a == 255) {
        func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
    }
}

void EnPoh_Idle(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_StepToF(&this->actor.speedXZ, 1.0f, 0.2f);
    if (func_800A56C8(&this->skelAnime, 0.0f) && this->unk_198 != 0) {
        this->unk_198--;
    }
    func_80ADEA5C(this);
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    if (this->actor.xzDistFromLink < 200.0f && this->unk_198 < 19) {
        func_80ADE1BC(this);
    } else if (this->unk_198 == 0) {
        if (Rand_ZeroOne() < 0.1f) {
            func_80ADE514(this);
        } else {
            func_80ADE114(this);
        }
    }
    if (this->lightColor.a == 255) {
        func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
    }
}

void func_80ADEC9C(EnPoh* this, GlobalContext* globalCtx) {
    Player* player;
    s16 facingDiff;

    player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_198 != 0) {
        this->unk_198--;
    }
    facingDiff = this->actor.yawTowardsLink - player->actor.shape.rot.y;
    if (facingDiff >= 0x3001) {
        Math_ScaledStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x3000, 0x71C);
    } else if (facingDiff < -0x3000) {
        Math_ScaledStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink - 0x3000, 0x71C);
    } else {
        Math_ScaledStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x71C);
    }
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    if (this->actor.xzDistFromLink > 280.0f) {
        EnPoh_SetupIdle(this);
    } else if (this->unk_198 == 0 && this->actor.xzDistFromLink < 140.0f &&
               func_8002DFC8(&this->actor, 0x2AAA, globalCtx) == 0) {
        EnPoh_SetupAttack(this);
    }
    if (this->lightColor.a == 255) {
        func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
    }
}

void EnPoh_Attack(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_KANTERA);
        if (this->unk_198 != 0) {
            this->unk_198--;
        }
    }
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    if (this->unk_198 >= 10) {
        Math_ScaledStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0xE38);
    } else if (this->unk_198 == 9) {
        this->actor.speedXZ = 5.0f;
        this->skelAnime.animPlaybackSpeed = 2.0f;
    } else if (this->unk_198 == 0) {
        EnPoh_SetupIdle(this);
        this->unk_198 = 23;
    }
}

void func_80ADEECC(EnPoh* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->actor.speedXZ, 0.0f, 0.5f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actor.colChkInfo.health != 0) {
            func_80ADE368(this);
        } else {
            func_80ADE48C(this);
        }
    }
}

void func_80ADEF38(EnPoh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->lightColor.a = 255;
        this->visibilityTimer = Rand_S16Offset(700, 300);
        this->actor.flags |= 1;
        EnPoh_SetupIdle(this);
    } else if (this->skelAnime.animCurrentFrame > 10.0f) {
        this->lightColor.a = ((this->skelAnime.animCurrentFrame - 10.0f) * 0.05f) * 255.0f;
    }
    if (this->skelAnime.animPlaybackSpeed < 0.5f && this->actor.xzDistFromLink < 280.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
}

void EnPoh_ComposerAppear(EnPoh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->lightColor.a = 255;
        this->visibilityTimer = Rand_S16Offset(700, 300);
        this->actor.flags |= 1;
        EnPoh_SetupIdle(this);
    } else {
        this->lightColor.a = CLAMP_MAX((s32)(this->skelAnime.animCurrentFrame * 25.5f), 255);
    }
}

void func_80ADF15C(EnPoh* this, GlobalContext* globalCtx) {
    Vec3f vec;
    f32 multiplier;
    f32 newScale;
    s32 pad;
    s32 pad1;

    this->unk_198++;
    if (this->unk_198 < 8) {
        if (this->unk_198 < 5) {
            vec.y = Math_SinS((this->unk_198 * 0x1000) - 0x4000) * 23.0f + (this->actor.posRot.pos.y + 40.0f);
            multiplier = Math_CosS((this->unk_198 * 0x1000) - 0x4000) * 23.0f;
            vec.x = Math_SinS(Camera_GetCamDirYaw(ACTIVE_CAM) + 0x4800) * multiplier + this->actor.posRot.pos.x;
            vec.z = Math_CosS(Camera_GetCamDirYaw(ACTIVE_CAM) + 0x4800) * multiplier + this->actor.posRot.pos.z;
        } else {
            vec.y = (this->actor.posRot.pos.y + 40.0f) + (15.0f * (this->unk_198 - 5));
            vec.x = Math_SinS(Camera_GetCamDirYaw(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.x;
            vec.z = Math_CosS(Camera_GetCamDirYaw(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.z;
        }
        EffectSsDeadDb_Spawn(globalCtx, &vec, &D_80AE1B60, &D_80AE1B6C, this->unk_198 * 10 + 80, 0, 255, 255, 255, 255,
                             0, 0, 255, 1, 9, 1);
        vec.x = (this->actor.posRot.pos.x + this->actor.posRot.pos.x) - vec.x;
        vec.z = (this->actor.posRot.pos.z + this->actor.posRot.pos.z) - vec.z;
        EffectSsDeadDb_Spawn(globalCtx, &vec, &D_80AE1B60, &D_80AE1B6C, this->unk_198 * 10 + 80, 0, 255, 255, 255, 255,
                             0, 0, 255, 1, 9, 1);
        vec.x = this->actor.posRot.pos.x;
        vec.z = this->actor.posRot.pos.z;
        EffectSsDeadDb_Spawn(globalCtx, &vec, &D_80AE1B60, &D_80AE1B6C, this->unk_198 * 10 + 80, 0, 255, 255, 255, 255,
                             0, 0, 255, 1, 9, 1);
        if (this->unk_198 == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_EXTINCT);
        }
    } else if (this->unk_198 == 28) {
        EnPoh_SetupDeath(this, globalCtx);
    } else if (this->unk_198 >= 19) {
        newScale = (28 - this->unk_198) * 0.001f;
        this->actor.posRot.pos.y += 5.0f;
        this->actor.scale.z = newScale;
        this->actor.scale.y = newScale;
        this->actor.scale.x = newScale;
    }
    if (this->unk_198 == 18) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

void func_80ADF574(EnPoh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        EnPoh_SetupIdle(this);
        this->unk_198 = 23;
    } else {
        Math_StepToF(&this->actor.speedXZ, 0.0f, 0.5f);
        this->actor.shape.rot.y += 0x1000;
    }
}

void func_80ADF5E0(EnPoh* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (Math_ScaledStepToS(&this->actor.posRot.rot.y, this->unk_19C, 1820) != 0) {
        EnPoh_SetupIdle(this);
    }
    if (this->actor.xzDistFromLink < 200.0f) {
        func_80ADE1BC(this);
    }
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
}

void EnPoh_Disappear(EnPoh* this, GlobalContext* globalCtx) {
    if (this->unk_194 != 0) {
        this->unk_194--;
    }
    this->actor.posRot.rot.y += 0x1000;
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    this->lightColor.a = this->unk_194 * 7.96875f;
    if (this->unk_194 == 0) {
        this->visibilityTimer = Rand_S16Offset(100, 50);
        EnPoh_SetupIdle(this);
    }
}

void EnPoh_Appear(EnPoh* this, GlobalContext* globalCtx) {
    this->unk_194++;
    this->actor.posRot.rot.y -= 0x1000;
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    this->lightColor.a = this->unk_194 * 7.96875f;
    if (this->unk_194 == 32) {
        this->visibilityTimer = Rand_S16Offset(700, 300);
        this->unk_194 = 0;
        EnPoh_SetupIdle(this);
    }
}

void func_80ADF894(EnPoh* this, GlobalContext* globalCtx) {
    f32 multiplier;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    multiplier = Math_SinS(this->unk_195 * 0x800) * 3.0f;
    this->actor.posRot.pos.x -= multiplier * Math_CosS(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += multiplier * Math_SinS(this->actor.shape.rot.y);
    Math_ScaledStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 0x71C);
    EnPoh_MoveTowardsPlayerHeight(this, globalCtx);
    if (this->unk_198 == 0 || this->actor.xzDistFromLink > 250.0f) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        EnPoh_SetupIdle(this);
    }
    func_8002F974(&this->actor, NA_SE_EN_PO_AWAY - SFX_FLAG);
}

void EnPoh_Death(EnPoh* this, GlobalContext* globalCtx) {
    s32 objId;

    if (this->unk_198 != 0) {
        this->unk_198--;
    }
    if (this->actor.bgCheckFlags & 1) {
        objId = (this->infoIdx == EN_POH_INFO_COMPOSER) ? OBJECT_PO_COMPOSER : OBJECT_POH;
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 1, 1, 15, objId, 10, this->info->unk_1C);
        func_80ADE6D4(this);
    } else if (this->unk_198 == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 10.0f, 4);
}

void func_80ADFA90(EnPoh* this, s32 arg1) {
    f32 multiplier;

    this->lightColor.a = CLAMP(this->lightColor.a + arg1, 0, 255);
    if (arg1 < 0) {
        multiplier = this->lightColor.a * 0.003921569f;
        this->actor.scale.z = 0.0056000002f * multiplier + 0.00140000006f;
        this->actor.scale.x = 0.0056000002f * multiplier + 0.00140000006f;
        this->actor.scale.y = (0.007f - 0.007f * multiplier) + 0.007f;
    } else {
        multiplier = 1.0f;
        this->actor.scale.z = this->lightColor.a * 2.7450982e-05f;
        this->actor.scale.y = this->lightColor.a * 2.7450982e-05f;
        this->actor.scale.x = this->lightColor.a * 2.7450982e-05f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 0.05882353f * this->lightColor.a;
    }
    this->lightColor.r = this->info->lightColor.r * multiplier;
    this->lightColor.g = this->info->lightColor.g * multiplier;
    this->lightColor.b = this->info->lightColor.b * multiplier;
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, this->info->lightColor.r, this->info->lightColor.g,
                              this->info->lightColor.b, this->lightColor.a * 0.78431373f);
}

void func_80ADFE28(EnPoh* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y += 2.0f;
    func_80ADFA90(this, 20);
    if (this->lightColor.a == 255) {
        EnPoh_Talk(this, globalCtx);
    }
}

void func_80ADFE80(EnPoh* this, GlobalContext* globalCtx) {
    if (this->unk_198 != 0) {
        this->unk_198--;
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if (this->actor.params >= EN_POH_SHARP) {
            func_80ADE9BC(this);
        } else {
            func_80ADE998(this);
        }
        return;
    }
    if (this->unk_198 == 0) {
        func_80ADE950(this, 1);
        this->actor.flags &= ~0x10000;
        return;
    }
    if (this->colliderCyl.base.maskA & 2) {
        this->actor.flags |= 0x10000;
        func_8002F2F4(&this->actor, globalCtx);
    } else {
        this->actor.flags &= ~0x10000;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
    }
    this->actor.posRot.pos.y = Math_SinS(this->unk_195 * 0x800) * 5.0f + this->actor.initPosRot.pos.y;
    if (this->unk_195 != 0) {
        this->unk_195 -= 1;
    }
    if (this->unk_195 == 0) {
        this->unk_195 = 32;
    }
    this->colliderCyl.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    Actor_SetHeight(&this->actor, -10.0f);
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, this->info->lightColor.r, this->info->lightColor.g,
                              this->info->lightColor.b, this->lightColor.a * 0.78431373f);
}

void func_80AE009C(EnPoh* this, GlobalContext* globalCtx) {
    func_80ADFA90(this, -13);
    if (this->lightColor.a == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnPoh_TalkRegular(EnPoh* this, GlobalContext* globalCtx) {
    if (this->actor.textId != 0x5005) {
        func_80ADFA90(this, -13);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            func_800F8A44(&this->actor.projectedPos, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
            if (globalCtx->msgCtx.choiceIndex == 0) {
                if (Inventory_HasEmptyBottle()) {
                    this->actor.textId = 0x5008;
                    Item_Give(globalCtx, ITEM_POE);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_BIG_GET);
                } else {
                    this->actor.textId = 0x5006;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
                }
            } else {
                this->actor.textId = 0x5007;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
            }
            func_8010B720(globalCtx, this->actor.textId);
        }
    } else if (func_8002F334(&this->actor, globalCtx) != 0) {
        func_80ADE950(this, 0);
    }
}

void EnPoh_TalkComposer(EnPoh* this, GlobalContext* globalCtx) {
    func_8002F974(&this->actor, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            if (globalCtx->msgCtx.choiceIndex == 0) {
                if (!Flags_GetSwitch(globalCtx, 0xB) && !Flags_GetSwitch(globalCtx, 0xA)) {
                    this->actor.textId = 0x5010;
                } else {
                    this->actor.textId = 0x5014;
                }
                func_8010B720(globalCtx, this->actor.textId);
            } else {
                if (this->actor.params == EN_POH_SHARP) {
                    Flags_SetSwitch(globalCtx, 0xB);
                } else {
                    Flags_SetSwitch(globalCtx, 0xA);
                }
                func_80ADE950(this, 1);
            }
        }
    } else if (func_8002F334(&this->actor, globalCtx) != 0) {
        if (this->actor.textId == 0x5000) {
            Flags_SetSwitch(globalCtx, 9);
        }
        func_80ADE950(this, 1);
    }
}

void func_80AE032C(EnPoh* this, GlobalContext* globalCtx) {
    if (this->colliderCyl.base.acFlags & 2) {
        this->colliderCyl.base.acFlags &= ~2;
        if (this->actor.colChkInfo.damageEffect != 0 || this->actor.colChkInfo.damage != 0) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DAMAGE);
            }
            func_80ADE28C(this);
        }
    }
}

void EnPoh_UpdateVisibility(EnPoh* this) {
    if (this->actionFunc != EnPoh_Appear && this->actionFunc != EnPoh_Disappear && this->actionFunc != func_80ADEF38 &&
        this->actionFunc != EnPoh_ComposerAppear) {
        if (this->visibilityTimer != 0) {
            this->visibilityTimer--;
        }
        if (this->lightColor.a == 255) {
            if (this->actor.unk_10C != 0) {
                this->unk_194++;
                this->unk_194 = CLAMP_MAX(this->unk_194, 20);
            } else {
                this->unk_194 = 0;
            }
            if ((this->unk_194 == 20 || this->visibilityTimer == 0) &&
                (this->actionFunc == func_80ADEAC4 || this->actionFunc == EnPoh_Idle ||
                 this->actionFunc == func_80ADEC9C || this->actionFunc == func_80ADF894 ||
                 this->actionFunc == func_80ADF5E0)) {
                EnPoh_SetupDisappear(this);
            }
        } else if (this->lightColor.a == 0 && this->visibilityTimer == 0 &&
                   (this->actionFunc == func_80ADEAC4 || this->actionFunc == EnPoh_Idle ||
                    this->actionFunc == func_80ADEC9C || this->actionFunc == func_80ADF5E0)) {
            EnPoh_SetupAppear(this);
        }
    }
}

void EnPoh_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objectIdx) != 0) {
        this->actor.objBankIndex = this->objectIdx;
        this->actor.update = EnPoh_UpdateLiving;
        Actor_SetObjectDependency(globalCtx, &this->actor);
        if (this->infoIdx == EN_POH_INFO_NORMAL) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_060050D0, &D_06000A60, this->limbDrawTable,
                           this->transitionDrawTable, 21);
            this->actor.draw = EnPoh_DrawRegular;
        } else {
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06006F90, &D_060009DC, this->limbDrawTable,
                               this->transitionDrawTable, 12);
            this->actor.draw = EnPoh_DrawComposer;
            this->colliderSph.list[0].dim.joint = 9;
            this->colliderSph.list->dim.modelSphere.center.y *= -1;
            this->actor.shape.rot.y = this->actor.posRot.rot.y = -0x4000;
            this->colliderCyl.dim.radius = 20;
            this->colliderCyl.dim.height = 55;
            this->colliderCyl.dim.yShift = 15;
        }
        this->actor.flags &= ~0x10;
        EnPoh_SetupInitialAction(this);
    }
}

void func_80AE067C(EnPoh* this) {
    s16 temp_var;

    if (this->actionFunc == EnPoh_Attack) {
        this->lightColor.r = CLAMP_MAX((s16)(this->lightColor.r + 5), 255);
        this->lightColor.g = CLAMP_MIN((s16)(this->lightColor.g - 5), 50);
        temp_var = this->lightColor.b - 5;
        this->lightColor.b = CLAMP_MIN(temp_var, 0);
    } else if (this->actionFunc == func_80ADF894) {
        this->lightColor.r = CLAMP_MAX((s16)(this->lightColor.r + 5), 80);
        this->lightColor.g = CLAMP_MAX((s16)(this->lightColor.g + 5), 255);
        temp_var = this->lightColor.b + 5;
        this->lightColor.b = CLAMP_MAX(temp_var, 225);
    } else if (this->actionFunc == func_80ADEECC) {
        if (this->actor.dmgEffectTimer & 2) {
            this->lightColor.r = 0;
            this->lightColor.g = 0;
            this->lightColor.b = 0;
        } else {
            this->lightColor.r = 80;
            this->lightColor.g = 255;
            this->lightColor.b = 225;
        }
    } else {
        this->lightColor.r = CLAMP_MAX((s16)(this->lightColor.r + 5), 255);
        this->lightColor.g = CLAMP_MAX((s16)(this->lightColor.g + 5), 255);
        if (this->lightColor.b >= 211) {
            temp_var = this->lightColor.b - 5;
            this->lightColor.b = CLAMP_MIN(temp_var, 210);
        } else {
            temp_var = this->lightColor.b + 5;
            this->lightColor.b = CLAMP_MAX(temp_var, 210);
        }
    }
}

void func_80AE089C(EnPoh* this) {
    f32 rand;

    if ((this->actionFunc == func_80ADEF38 || this->actionFunc == EnPoh_ComposerAppear) &&
        this->skelAnime.animCurrentFrame < 12.0f) {
        this->envColor.r = this->envColor.g = this->envColor.b = (s16)(this->skelAnime.animCurrentFrame * 16.66f) + 55;
        this->envColor.a = this->skelAnime.animCurrentFrame * 16.666666f;
    } else {
        rand = Rand_ZeroOne();
        this->envColor.r = (s16)(rand * 30.0f) + 225;
        this->envColor.g = (s16)(rand * 100.0f) + 155;
        this->envColor.b = (s16)(rand * 160.0f) + 95;
        this->envColor.a = 200;
    }
}

void EnPoh_UpdateLiving(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;
    s32 pad;
    Vec3f vec;
    UNK_TYPE sp38;

    if (this->colliderSph.base.atFlags & 2) {
        this->colliderSph.base.atFlags &= ~2;
        func_80ADE4C8(this);
    }
    func_80AE032C(this, globalCtx);
    EnPoh_UpdateVisibility(this);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    if (this->actionFunc == EnPoh_Attack && this->unk_198 < 10) {
        this->actor.flags |= 0x1000000;
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    }
    Collider_CylinderUpdate(&this->actor, &this->colliderCyl);
    if ((this->colliderCyl.base.acFlags & 1) && this->lightColor.a == 255) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCyl.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    Actor_SetHeight(&this->actor, 42.0f);
    if (this->actionFunc != func_80ADEECC && this->actionFunc != func_80ADF574) {
        if (this->actionFunc == func_80ADF894) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y + 0x8000;
        } else {
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }
    }
    vec.x = this->actor.posRot.pos.x;
    vec.y = this->actor.posRot.pos.y + 20.0f;
    vec.z = this->actor.posRot.pos.z;
    this->actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp38, &this->actor, &vec);
    func_80AE089C(this);
    this->actor.shape.unk_14 = this->lightColor.a;
}

s32 EnPoh_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                           Gfx** gfxP) {
    EnPoh* this = THIS;

    if ((this->lightColor.a == 0 || limbIndex == this->info->unk_6) ||
        (this->actionFunc == func_80ADF15C && this->unk_198 >= 2)) {
        *dList = NULL;
    } else if (this->actor.params == EN_POH_FLAT && limbIndex == 0xA) {
        *dList = D_06004638;
    }
    if (limbIndex == 0x13 && this->infoIdx == EN_POH_INFO_NORMAL) {
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, this->lightColor.r, this->lightColor.g, this->lightColor.b, this->lightColor.a);
    }
    return 0;
}

void EnPoh_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfxP) {
    EnPoh* this = THIS;

    func_800628A4(limbIndex, &this->colliderSph);
    if (this->actionFunc == func_80ADF15C && this->unk_198 >= 2 && limbIndex == this->info->unk_7) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2460),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, this->info->unk_20);
    }
    if (limbIndex == this->info->unk_6) {
        if (this->actionFunc == func_80ADF15C && this->unk_198 >= 19 && 0.0f != this->actor.scale.x) {
            f32 mtxScale = 0.01f / this->actor.scale.x;
            Matrix_Scale(mtxScale, mtxScale, mtxScale, MTXMODE_APPLY);
        }
        Matrix_Get(&this->unk_368);
        if (this->actionFunc == func_80ADF15C && this->unk_198 == 27) {
            this->actor.posRot.pos.x = this->unk_368.wx;
            this->actor.posRot.pos.y = this->unk_368.wy;
            this->actor.posRot.pos.z = this->unk_368.wz;
        }
        Lights_PointGlowSetInfo(&this->lightInfo, this->colliderSph.list[0].dim.worldSphere.center.x,
                                this->colliderSph.list[0].dim.worldSphere.center.y,
                                this->colliderSph.list[0].dim.worldSphere.center.z, this->envColor.r, this->envColor.g,
                                this->envColor.b, this->envColor.a * 0.78431374f);
    }
}

void EnPoh_DrawRegular(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_poh.c", 2629);
    func_80AE067C(this);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->lightColor.a == 255 || this->lightColor.a == 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, this->lightColor.r, this->lightColor.g, this->lightColor.b, this->lightColor.a);
        gSPSegment(POLY_OPA_DISP++, 0x08, D_80116280 + 2);
        POLY_OPA_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                       EnPoh_OverrideLimbDraw, EnPoh_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->lightColor.a);
        gSPSegment(POLY_XLU_DISP++, 0x08, D_80116280);
        POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                       EnPoh_OverrideLimbDraw, EnPoh_PostLimbDraw, &this->actor, POLY_XLU_DISP);
    }
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, this->envColor.r, this->envColor.g, this->envColor.b, 255);
    Matrix_Put(&this->unk_368);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2676),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, this->info->unk_1C);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_poh.c", 2681);
}

void EnPoh_DrawComposer(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;
    Color_RGBA8* sp90;
    Color_RGBA8* phi_t0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_poh.c", 2694);
    func_80AE067C(this);
    if (this->actor.params == EN_POH_SHARP) {
        sp90 = &D_80AE1B4C;
        phi_t0 = &D_80AE1B54;
    } else {
        sp90 = &D_80AE1B50;
        phi_t0 = &D_80AE1B58;
    }
    if (this->lightColor.a == 255 || this->lightColor.a == 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, this->lightColor.r, this->lightColor.g, this->lightColor.b,
                                this->lightColor.a));
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, sp90->r, sp90->g, sp90->b, this->lightColor.a));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, phi_t0->r, phi_t0->g, phi_t0->b, this->lightColor.a));
        gSPSegment(POLY_OPA_DISP++, 0x0C, D_80116280 + 2);
        POLY_OPA_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                           this->skelAnime.dListCount, EnPoh_OverrideLimbDraw, EnPoh_PostLimbDraw,
                                           &this->actor, POLY_OPA_DISP);
    } else {
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, this->lightColor.r, this->lightColor.g, this->lightColor.b,
                                this->lightColor.a));
        gSPSegment(POLY_XLU_DISP++, 0x0A,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, sp90->r, sp90->g, sp90->b, this->lightColor.a));
        gSPSegment(POLY_XLU_DISP++, 0x0B,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, phi_t0->r, phi_t0->g, phi_t0->b, this->lightColor.a));
        gSPSegment(POLY_XLU_DISP++, 0x0C, D_80116280);
        POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                           this->skelAnime.dListCount, EnPoh_OverrideLimbDraw, EnPoh_PostLimbDraw,
                                           &this->actor, POLY_XLU_DISP);
    }
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, this->envColor.r, this->envColor.g, this->envColor.b, 255);
    Matrix_Put(&this->unk_368);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2787),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, this->info->unk_1C);
    gSPDisplayList(POLY_OPA_DISP++, D_06004498);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp90->r, sp90->g, sp90->b, 255);
    gSPDisplayList(POLY_OPA_DISP++, D_06004530);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_poh.c", 2802);
}

void EnPoh_UpdateDead(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc != EnPoh_Death) {
        this->visibilityTimer++;
    }
    func_80AE089C(this);
}

void EnPoh_DrawSoul(Actor* thisx, GlobalContext* globalCtx) {
    EnPoh* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_poh.c", 2833);

    if (this->actionFunc == EnPoh_Death) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, this->envColor.r, this->envColor.g, this->envColor.b, 255);
        Lights_PointGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                this->actor.posRot.pos.z, this->envColor.r, this->envColor.g, this->envColor.b, 200);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2854),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, this->info->unk_1C);
        if (this->infoIdx == EN_POH_INFO_COMPOSER) {
            Color_RGBA8* envColor = (this->actor.params == EN_POH_SHARP) ? &D_80AE1B4C : &D_80AE1B50;
            s32 pad;
            gSPDisplayList(POLY_OPA_DISP++, D_06004498);
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetEnvColor(POLY_OPA_DISP++, envColor->r, envColor->g, envColor->b, 255);
            gSPDisplayList(POLY_OPA_DISP++, D_06004530);
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                    (this->visibilityTimer * this->info->unk_8) % 512U, 0x20, 0x80));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, this->info->primColor.r, this->info->primColor.g,
                        this->info->primColor.b, this->lightColor.a);
        gDPSetEnvColor(POLY_XLU_DISP++, this->lightColor.r, this->lightColor.g, this->lightColor.b, 255);
        Matrix_RotateY((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) + 0x8000) * 9.58738e-05f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_poh.c", 2910),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, this->info->soulDisplayList);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_poh.c", 2916);
}
