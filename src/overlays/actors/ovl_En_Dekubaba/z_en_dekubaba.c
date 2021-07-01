#include "z_en_dekubaba.h"
#include "objects/object_dekubaba/object_dekubaba.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.h"

#define FLAGS 0x00000005

#define THIS ((EnDekubaba*)thisx)

void EnDekubaba_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDekubaba_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDekubaba_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDekubaba_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnDekubaba_SetupWait(EnDekubaba* this);
void func_809E5D28(EnDekubaba* this);
void EnDekubaba_Wait(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E65A0(EnDekubaba* this, GlobalContext* globalCtx);
void EnDekubaba_Retract(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E6ED4(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E7104(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E738C(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E7458(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E77E4(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E78DC(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E79EC(EnDekubaba* this, GlobalContext* globalCtx);
void func_809E7A88(EnDekubaba* this, GlobalContext* globalCtx);
void EnDekubaba_PrunedSomersault(EnDekubaba* this, GlobalContext* globalCtx);
void EnDekubaba_ShrinkDie(EnDekubaba* this, GlobalContext* globalCtx);
void EnDekubaba_DeadStickDrop(EnDekubaba* this, GlobalContext* globalCtx);

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

const ActorInit En_Dekubaba_InitVars = {
    ACTOR_EN_DEKUBABA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_DEKUBABA,
    sizeof(EnDekubaba),
    (ActorFunc)EnDekubaba_Init,
    (ActorFunc)EnDekubaba_Destroy,
    (ActorFunc)EnDekubaba_Update,
    (ActorFunc)EnDekubaba_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[7] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x08 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_HARD,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 100, 1000 }, 15 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 51, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 52, { { 0, 0, 500 }, 8 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 53, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 54, { { 0, 0, 500 }, 8 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 55, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 56, { { 0, 0, 500 }, 8 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    7,
    sJntSphElementsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 2, 25, 25, MASS_IMMOVABLE };

typedef enum {
    /* 0x0 */ DEKUBABA_DMGEFF_NONE,
    /* 0x1 */ DEKUBABA_DMGEFF_DEKUNUT,
    /* 0x2 */ DEKUBABA_DMGEFF_FIRE,
    /* 0xE */ DEKUBABA_DMGEFF_BOOMERANG = 14,
    /* 0xF */ DEKUBABA_DMGEFF_SWORD
} DekuBabaDamageEffect;

static DamageTable sDekuBabaDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, DEKUBABA_DMGEFF_DEKUNUT),
    /* Deku stick    */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Slingshot     */ DMG_ENTRY(1, DEKUBABA_DMGEFF_NONE),
    /* Explosive     */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Boomerang     */ DMG_ENTRY(2, DEKUBABA_DMGEFF_BOOMERANG),
    /* Normal arrow  */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Hookshot      */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Kokiri sword  */ DMG_ENTRY(1, DEKUBABA_DMGEFF_SWORD),
    /* Master sword  */ DMG_ENTRY(2, DEKUBABA_DMGEFF_SWORD),
    /* Giant's Knife */ DMG_ENTRY(4, DEKUBABA_DMGEFF_SWORD),
    /* Fire arrow    */ DMG_ENTRY(4, DEKUBABA_DMGEFF_FIRE),
    /* Ice arrow     */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Light arrow   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Fire magic    */ DMG_ENTRY(4, DEKUBABA_DMGEFF_FIRE),
    /* Ice magic     */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Light magic   */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Shield        */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, DEKUBABA_DMGEFF_SWORD),
    /* Giant spin    */ DMG_ENTRY(4, DEKUBABA_DMGEFF_SWORD),
    /* Master spin   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_SWORD),
    /* Kokiri jump   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_SWORD),
    /* Giant jump    */ DMG_ENTRY(8, DEKUBABA_DMGEFF_SWORD),
    /* Master jump   */ DMG_ENTRY(4, DEKUBABA_DMGEFF_SWORD),
    /* Unknown 1     */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Unblockable   */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, DEKUBABA_DMGEFF_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
};

// The only difference is that for Big Deku Babas, Hookshot will act the same as Deku Nuts: i.e. it will stun, but
// cannot kill.
static DamageTable sBigDekuBabaDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, DEKUBABA_DMGEFF_DEKUNUT),
    /* Deku stick    */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Slingshot     */ DMG_ENTRY(1, DEKUBABA_DMGEFF_NONE),
    /* Explosive     */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Boomerang     */ DMG_ENTRY(2, DEKUBABA_DMGEFF_BOOMERANG),
    /* Normal arrow  */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Hookshot      */ DMG_ENTRY(0, DEKUBABA_DMGEFF_DEKUNUT),
    /* Kokiri sword  */ DMG_ENTRY(1, DEKUBABA_DMGEFF_SWORD),
    /* Master sword  */ DMG_ENTRY(2, DEKUBABA_DMGEFF_SWORD),
    /* Giant's Knife */ DMG_ENTRY(4, DEKUBABA_DMGEFF_SWORD),
    /* Fire arrow    */ DMG_ENTRY(4, DEKUBABA_DMGEFF_FIRE),
    /* Ice arrow     */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Light arrow   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_NONE),
    /* Fire magic    */ DMG_ENTRY(4, DEKUBABA_DMGEFF_FIRE),
    /* Ice magic     */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Light magic   */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Shield        */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, DEKUBABA_DMGEFF_SWORD),
    /* Giant spin    */ DMG_ENTRY(4, DEKUBABA_DMGEFF_SWORD),
    /* Master spin   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_SWORD),
    /* Kokiri jump   */ DMG_ENTRY(2, DEKUBABA_DMGEFF_SWORD),
    /* Giant jump    */ DMG_ENTRY(8, DEKUBABA_DMGEFF_SWORD),
    /* Master jump   */ DMG_ENTRY(4, DEKUBABA_DMGEFF_SWORD),
    /* Unknown 1     */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Unblockable   */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, DEKUBABA_DMGEFF_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, DEKUBABA_DMGEFF_NONE),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 1500, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Init.s")
void EnDekubaba_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDekubaba* this = THIS;
    s32 i;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 22.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &gDekuBabaSkel, &gDekuBabaFastChompAnim, this->jointTable,
                   this->morphTable, 8);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);

    if (this->actor.params == DEKUBABA_BIG) {
        this->unk_230 = 2.5f;

        for (i = 0; i < sJntSphInit.count; i++) {
            this->collider.elements[i].dim.worldSphere.radius = this->collider.elements[i].dim.modelSphere.radius =
                (sJntSphElementsInit[i].dim.modelSphere.radius * 2.50f);
        }

        // This and its counterpart below mean that a Deku Stick jumpslash will not trigger the Deku Stick drop route.
        // (Of course they reckoned without each age being able to use the other's items, so Stick and Master Sword
        // jumpslash can give the Stick drop as adult, and neither will as child.)
        if (LINK_IS_CHILD) {
            sBigDekuBabaDamageTable.table[0x1B] = DMG_ENTRY(4, DEKUBABA_DMGEFF_NONE);
        }

        CollisionCheck_SetInfo(&this->actor.colChkInfo, &sBigDekuBabaDamageTable, &sColChkInfoInit);
        this->actor.colChkInfo.health = 4;
        this->actor.naviEnemyId = 8; // Big Deku Baba
        this->actor.targetMode = 2;
    } else {
        this->unk_230 = 1.0f;

        for (i = 0; i < sJntSphInit.count; i++) {
            this->collider.elements[i].dim.worldSphere.radius = this->collider.elements[i].dim.modelSphere.radius;
        }

        if (LINK_IS_CHILD) {
            sDekuBabaDamageTable.table[0x1B] = DMG_ENTRY(4, DEKUBABA_DMGEFF_NONE);
        }

        CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDekuBabaDamageTable, &sColChkInfoInit);
        this->actor.naviEnemyId = 7; // Deku Baba
        this->actor.targetMode = 1;
    }

    EnDekubaba_SetupWait(this);
    this->timer = 0;
    this->boundFloor = NULL;
    this->bodyPartsPos[3] = this->actor.home.pos;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Destroy.s")
void EnDekubaba_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDekubaba* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5A38.s")
void func_809E5A38(EnDekubaba* this) {
    s32 i;

    for (i = 1; i < 7; i++) {
        this->collider.elements[i].info.bumperFlags &= ~BUMP_ON;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5ABC.s")
void EnDekubaba_SetupWait(EnDekubaba* this) {
    s32 i;
    ColliderJntSphElement* element;

    this->actor.shape.rot.x = -0x4000;
    this->unk_1CA[0] = this->unk_1CA[1] = this->unk_1CA[2] = this->actor.shape.rot.x;

    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.y = this->actor.home.pos.y + (14.0f * this->unk_230);

    Actor_SetScale(&this->actor, this->unk_230 * 0.01f * 0.5f);

    this->collider.base.colType = COLTYPE_HARD;
    this->collider.base.acFlags |= AC_HARD;
    this->timer = 45;

    for (i = 1; i < 7; i++) {
        element = &this->collider.elements[i];
        element->dim.worldSphere.center.x = this->actor.world.pos.x;
        element->dim.worldSphere.center.y = (s16)this->actor.world.pos.y - 7;
        element->dim.worldSphere.center.z = this->actor.world.pos.z;
    }

    this->actionFunc = EnDekubaba_Wait;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5D28.s")
void func_809E5D28(EnDekubaba* this) {
    s32 i;

    Animation_Change(&this->skelAnime, &gDekuBabaFastChompAnim,
                     Animation_GetLastFrame(&gDekuBabaFastChompAnim) * 0.06666667f, 0.0f,
                     Animation_GetLastFrame(&gDekuBabaFastChompAnim), 2, 0.0f);

    this->timer = 15;

    for (i = 2; i < 7; i++) {
        this->collider.elements[i].info.ocElemFlags |= OCELEM_ON;
    }

    this->collider.base.colType = COLTYPE_HIT6;
    this->collider.base.acFlags &= ~AC_HARD;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DUMMY482);
    this->actionFunc = func_809E65A0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5E58.s")
void EnDekubaba_SetupRetract(EnDekubaba* this) {
    s32 i;

    Animation_Change(&this->skelAnime, &gDekuBabaFastChompAnim, -1.5f, Animation_GetLastFrame(&gDekuBabaFastChompAnim),
                     0.0f, 2, -3.0f);

    this->timer = 15;

    for (i = 2; i < 7; i++) {
        this->collider.elements[i].info.ocElemFlags &= ~OCELEM_ON;
    }

    this->actionFunc = EnDekubaba_Retract;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5F44.s")
void func_809E5F44(EnDekubaba* this) {
    this->timer = Animation_GetLastFrame(&gDekuBabaFastChompAnim) * 2;
    Animation_MorphToLoop(&this->skelAnime, &gDekuBabaFastChompAnim, -3.0f);
    this->actionFunc = func_809E6ED4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5F9C.s")
void func_809E5F9C(EnDekubaba* this) {
    this->timer = 8;
    this->skelAnime.playSpeed = 0.0f;
    this->actionFunc = func_809E738C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E5FBC.s")
void func_809E5FBC(EnDekubaba* this) {
    Animation_PlayOnce(&this->skelAnime, &gDekuBabaPauseChompAnim);
    this->timer = 0;
    this->actionFunc = func_809E7104;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6000.s")
void func_809E6000(EnDekubaba* this) {
    Animation_Change(&this->skelAnime, &gDekuBabaPauseChompAnim, 1.0f, 15.0f,
                     Animation_GetLastFrame(&gDekuBabaPauseChompAnim), 2, -3.0f);
    this->timer = 0;
    this->actionFunc = func_809E7458;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6078.s")
void func_809E6078(EnDekubaba* this) {
    this->timer = 9;
    this->collider.base.acFlags |= AC_ON;
    this->skelAnime.playSpeed = -1.0f;
    this->actionFunc = func_809E77E4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E60A8.s")
void func_809E60A8(EnDekubaba* this, s32 arg1) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gDekuBabaPauseChompAnim, -5.0f);
    this->timer = arg1;
    this->collider.base.acFlags &= ~AC_ON;
    Actor_SetScale(&this->actor, this->unk_230 * 0.01f);

    if (arg1 == 2) {
        Actor_SetColorFilter(&this->actor, 0, 155, 0, 62);
    } else {
        Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 42);
    }

    this->actionFunc = func_809E78DC;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6170.s")
void EnDekubaba_SetupPrunedSomersault(EnDekubaba* this) {
    this->timer = 0;
    this->skelAnime.playSpeed = 0.0f;
    this->actor.gravity = -0.8f;
    this->actor.velocity.y = 4.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x8000;
    this->collider.base.acFlags &= ~AC_ON;
    this->actor.speedXZ = this->unk_230 * 3.0f;
    this->actor.flags |= 0x30;
    this->actionFunc = EnDekubaba_PrunedSomersault;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E61E0.s")
void EnDekubaba_SetupShrinkDie(EnDekubaba* this) {
    Animation_Change(&this->skelAnime, &gDekuBabaFastChompAnim, -1.5f, Animation_GetLastFrame(&gDekuBabaFastChompAnim),
                     0.0f, 2, -3.0f);
    this->collider.base.acFlags &= ~AC_ON;
    this->actionFunc = EnDekubaba_ShrinkDie;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6264.s")
void func_809E6264(EnDekubaba* this) {
    s32 i;

    for (i = 1; i < 7; i++) {
        this->collider.elements[i].info.bumperFlags |= BUMP_ON;
    }

    if (this->timer == 1) {
        Animation_Change(&this->skelAnime, &gDekuBabaFastChompAnim, 4.0f, 0.0f,
                         Animation_GetLastFrame(&gDekuBabaFastChompAnim), 0, -3.0f);
        this->timer = 40;
    } else {
        Animation_Change(&this->skelAnime, &gDekuBabaFastChompAnim, 0.0f, 0.0f,
                         Animation_GetLastFrame(&gDekuBabaFastChompAnim), 0, -3.0f);
        this->timer = 60;
    }

    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.y = this->actor.home.pos.y + (60.0f * this->unk_230);
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actionFunc = func_809E79EC;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E63EC.s")
void func_809E63EC(EnDekubaba* this) {
    this->unk_1C8 = -0x6000;
    this->unk_1CA[2] = -0x5000;
    this->unk_1CA[1] = -0x4800;

    func_809E5A38(this);
    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 35);
    this->collider.base.acFlags &= ~AC_ON;
    this->actionFunc = func_809E7A88;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E645C.s")
void EnDekubaba_SetupDeadStickDrop(EnDekubaba* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->actor, 0.03f);
    this->actor.shape.rot.x += -0x4000;
    this->actor.shape.yOffset = 1000.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.shape.shadowScale = 3.0f;
    Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_MISC);
    this->actor.flags &= ~0x20;
    this->timer = 200;
    this->actionFunc = EnDekubaba_DeadStickDrop;
}

// Action functions

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E64F4.s")
void EnDekubaba_Wait(EnDekubaba* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.y = this->actor.home.pos.y + (14.0f * this->unk_230);

    if ((this->timer == 0) && (this->actor.xzDistToPlayer < 200.0f * this->unk_230) &&
        (fabsf(this->actor.yDistToPlayer) < 30.0f * this->unk_230)) {
        func_809E5D28(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E65A0.s")
void func_809E65A0(EnDekubaba* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 phi_f12;
    f32 sp5C;
    f32 sp58;
    f32 temp_f18;

    if (this->timer != 0) {
        this->timer--;
    }

    SkelAnime_Update(&this->skelAnime);

    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z =
        this->unk_230 * 0.01f * (0.5f + (((15 - this->timer) * 0.5f) / 15.0f));
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x800);

    sp5C = (sinf(CLAMP_MAX((15 - this->timer) * 0.06666667f, 0.7f) * M_PI) * 32.0f) + 14.0f;

    if (this->actor.shape.rot.x < -0x38E3) {
        phi_f12 = 0.0f;
    } else if (this->actor.shape.rot.x < -0x238E) {
        Math_ScaledStepToS(&this->unk_1CA[0], -0x5555, 0x38E);
        phi_f12 = Math_CosS(this->unk_1CA[0]) * 20.0f;
    } else if (this->actor.shape.rot.x < -0xE38) {
        Math_ScaledStepToS(&this->unk_1CA[0], -0xAAA, 0x38E);
        Math_ScaledStepToS(&this->unk_1CA[1], -0x5555, 0x38E);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x5555, 0x222);

        phi_f12 = (20.0f * (Math_CosS(this->unk_1CA[0]) + Math_CosS(this->unk_1CA[1]))) +
                  (((sp5C - (20.0f * (-Math_SinS(this->unk_1CA[0]) - Math_SinS(this->unk_1CA[1])))) *
                    Math_CosS(this->unk_1CA[2])) /
                   -Math_SinS(this->unk_1CA[2]));
    } else {
        Math_ScaledStepToS(&this->unk_1CA[0], -0xAAA, 0x38E);
        Math_ScaledStepToS(&this->unk_1CA[1], -0x31C7, 0x222);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x5555, 0x222);

        phi_f12 = (20.0f * (Math_CosS(this->unk_1CA[0]) + Math_CosS(this->unk_1CA[1]))) +
                  (((sp5C - (20.0f * (-Math_SinS(this->unk_1CA[0]) - Math_SinS(this->unk_1CA[1])))) *
                    Math_CosS(this->unk_1CA[2])) /
                   -Math_SinS(this->unk_1CA[2]));
    }

    if (this->timer < 10) {
        Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2,
                       0xE38);
        if (temp_f18) {} // One way of fake-matching
    }

    this->actor.world.pos.y = this->actor.home.pos.y + (sp5C * this->unk_230);
    sp58 = Math_SinS(this->actor.shape.rot.y) * (phi_f12 * this->unk_230);
    temp_f18 = Math_CosS(this->actor.shape.rot.y) * (phi_f12 * this->unk_230);
    this->actor.world.pos.x = this->actor.home.pos.x + sp58;
    this->actor.world.pos.z = this->actor.home.pos.z + temp_f18;

    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.home.pos, this->unk_230 * 3.0f, 0, this->unk_230 * 12.0f,
                             this->unk_230 * 5.0f, 1, HAHEN_OBJECT_DEFAULT, 10, NULL);

    if (this->timer == 0) {
        if (Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) < 240.0f * this->unk_230) {
            func_809E5F9C(this);
        } else {
            EnDekubaba_SetupRetract(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6A04.s")
void EnDekubaba_Retract(EnDekubaba* this, GlobalContext* globalCtx) {
    f32 horizontalScale;
    f32 sp58;
    f32 xShift;
    f32 zShift;

    if (this->timer != 0) {
        this->timer--;
    }

    SkelAnime_Update(&this->skelAnime);

    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z =
        this->unk_230 * 0.01f * (0.5f + this->timer * 0.033333335f);
    Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0x300);

    sp58 = (sinf(CLAMP_MAX(this->timer * 0.033f, 0.7f) * M_PI) * 32.0f) + 14.0f;

    if (this->actor.shape.rot.x < -0x38E3) {
        horizontalScale = 0.0f;
    } else if (this->actor.shape.rot.x < -0x238E) {
        Math_ScaledStepToS(&this->unk_1CA[0], -0x4000, 0x555);
        horizontalScale = Math_CosS(this->unk_1CA[0]) * 20.0f;
    } else if (this->actor.shape.rot.x < -0xE38) {
        Math_ScaledStepToS(&this->unk_1CA[0], -0x5555, 0x555);
        Math_ScaledStepToS(&this->unk_1CA[1], -0x4000, 0x555);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x4000, 0x333);

        horizontalScale = (20.0f * (Math_CosS(this->unk_1CA[0]) + Math_CosS(this->unk_1CA[1]))) +
                          (((sp58 - (20.0f * (-Math_SinS(this->unk_1CA[0]) - Math_SinS(this->unk_1CA[1])))) *
                            Math_CosS(this->unk_1CA[2])) /
                           -Math_SinS(this->unk_1CA[2]));
    } else {
        Math_ScaledStepToS(&this->unk_1CA[0], -0x5555, 0x555);
        Math_ScaledStepToS(&this->unk_1CA[1], -0x5555, 0x333);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x4000, 0x333);

        horizontalScale = (20.0f * (Math_CosS(this->unk_1CA[0]) + Math_CosS(this->unk_1CA[1]))) +
                          (((sp58 - (20.0f * (-Math_SinS(this->unk_1CA[0]) - Math_SinS(this->unk_1CA[1])))) *
                            Math_CosS(this->unk_1CA[2])) /
                           -Math_SinS(this->unk_1CA[2]));
    }

    this->actor.world.pos.y = this->actor.home.pos.y + (sp58 * this->unk_230);
    xShift = Math_SinS(this->actor.shape.rot.y) * (horizontalScale * this->unk_230);
    zShift = Math_CosS(this->actor.shape.rot.y) * (horizontalScale * this->unk_230);
    this->actor.world.pos.x = this->actor.home.pos.x + xShift;
    this->actor.world.pos.z = this->actor.home.pos.z + zShift;

    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.home.pos, this->unk_230 * 3.0f, 0, this->unk_230 * 12.0f,
                             this->unk_230 * 5.0f, 1, HAHEN_OBJECT_DEFAULT, 0xA, NULL);

    if (this->timer == 0) {
        EnDekubaba_SetupWait(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6DCC.s")
void func_809E6DCC(EnDekubaba* this) {
    f32 sp2C = (Math_CosS(this->unk_1CA[0]) + Math_CosS(this->unk_1CA[1]) + Math_CosS(this->unk_1CA[2])) * 20.0f;

    this->actor.world.pos.x = this->actor.home.pos.x + (Math_SinS(this->actor.shape.rot.y) * (sp2C * this->unk_230));
    this->actor.world.pos.y =
        this->actor.home.pos.y -
        ((Math_SinS(this->unk_1CA[0]) + Math_SinS(this->unk_1CA[1]) + Math_SinS(this->unk_1CA[2])) * 20.0f *
         this->unk_230);
    this->actor.world.pos.z = this->actor.home.pos.z + (Math_CosS(this->actor.shape.rot.y) * (sp2C * this->unk_230));
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E6ED4.s")
void func_809E6ED4(EnDekubaba* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 12.0f)) {
        if (this->actor.params == DEKUBABA_BIG) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_MOUTH);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
        }
    }

    if (this->timer != 0) {
        this->timer--;
    }

    Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2,
                   (this->timer % 5) * 0x222);

    if (this->timer < 10) {
        this->unk_1CA[0] += 0x16C;
        this->unk_1CA[1] += 0x16C;
        this->unk_1CA[2] += 0xB6;
        this->actor.shape.rot.x += 0x222;
    } else if (this->timer < 20) {
        this->unk_1CA[0] += -0x16C;
        this->unk_1CA[1] += 0x111;
        this->actor.shape.rot.x += 0x16C;
    } else if (this->timer < 30) {
        this->unk_1CA[1] += -0x111;
        this->actor.shape.rot.x += -0xB6;
    } else {
        this->unk_1CA[1] += -0xB6;
        this->unk_1CA[2] += 0xB6;
        this->actor.shape.rot.x -= 0x16C;
    }

    func_809E6DCC(this);

    if (240.0f * this->unk_230 < Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos)) {
        EnDekubaba_SetupRetract(this);
    } else if ((this->timer == 0) || (this->actor.xzDistToPlayer < 80.0f * this->unk_230)) {
        func_809E5F9C(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E7104.s")
void func_809E7104(EnDekubaba* this, GlobalContext* globalCtx) {
    static Color_RGBA8 primColor = { 105, 255, 105, 255 };
    static Color_RGBA8 envColor = { 150, 250, 150, 0 };
    s32 allStepsDone;
    s16 curFrame10;
    Vec3f velocity;

    SkelAnime_Update(&this->skelAnime);

    if (this->timer == 0) {
        if (Animation_OnFrame(&this->skelAnime, 1.0f) != 0) {
            if (this->actor.params == DEKUBABA_BIG) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_ATTACK);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_ATTACK);
            }
        }

        Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x222);

        curFrame10 = this->skelAnime.curFrame * 10.0f;
        allStepsDone = Math_ScaledStepToS(&this->unk_1CA[0], -0xE38, curFrame10 + 0x38E) & 1;
        allStepsDone &= Math_ScaledStepToS(&this->unk_1CA[1], -0xE38, curFrame10 + 0x71C);
        allStepsDone &= Math_ScaledStepToS(&this->unk_1CA[2], -0xE38, curFrame10 + 0xE38);

        if (allStepsDone) {
            Animation_PlayLoopSetSpeed(&this->skelAnime, &gDekuBabaFastChompAnim, 4.0f);
            velocity.x = Math_SinS(this->actor.shape.rot.y) * 5.0f;
            velocity.y = 0.0f;
            velocity.z = Math_CosS(this->actor.shape.rot.y) * 5.0f;

            func_8002829C(globalCtx, &this->actor.world.pos, &velocity, &sZeroVec, &primColor, &envColor, 1,
                          this->unk_230 * 100.0f);
            this->timer = 1;
            this->collider.base.acFlags |= AC_ON;
        }
    } else if (this->timer > 10) {
        func_809E6000(this);
    } else {
        this->timer++;

        if ((this->timer >= 4) && !func_8002E084(&this->actor, 0x16C)) {
            Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xF, 0x71C);
        }

        if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 12.0f)) {
            if (this->actor.params == DEKUBABA_BIG) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_MOUTH);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
            }
        }
    }

    func_809E6DCC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E738C.s")
void func_809E738C(EnDekubaba* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->timer != 0) {
        this->timer--;
    }

    Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1800, 2, 0xE38, 0x71C);
    Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2, 0xE38);
    Math_ScaledStepToS(&this->unk_1CA[0], 0xAAA, 0x444);
    Math_ScaledStepToS(&this->unk_1CA[1], -0x4718, 0x888);
    Math_ScaledStepToS(&this->unk_1CA[2], -0x6AA4, 0x888);

    if (this->timer == 0) {
        func_809E5FBC(this);
    }
    
    func_809E6DCC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E7458.s")
void func_809E7458(EnDekubaba* this, GlobalContext* globalCtx) {
    Vec3f dustPos;
    f32 xIncr;
    f32 zIncr;
    s32 i;

    SkelAnime_Update(&this->skelAnime);

    if (this->timer == 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x93E, 0x38E);
        Math_ScaledStepToS(&this->unk_1CA[0], -0x888, 0x16C);
        Math_ScaledStepToS(&this->unk_1CA[1], -0x888, 0x16C);
        if (Math_ScaledStepToS(&this->unk_1CA[2], -0x888, 0x16C)) {
            xIncr = Math_SinS(this->actor.shape.rot.y) * 30.0f * this->unk_230;
            zIncr = Math_CosS(this->actor.shape.rot.y) * 30.0f * this->unk_230;
            dustPos = this->actor.home.pos;

            for (i = 0; i < 3; i++) {
                func_800286CC(globalCtx, &dustPos, &sZeroVec, &sZeroVec, this->unk_230 * 500.0f, this->unk_230 * 50.0f);
                dustPos.x += xIncr;
                dustPos.z += zIncr;
            }

            this->timer = 1;
        }
    } else if (this->timer == 11) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x93E, 0x200);
        Math_ScaledStepToS(&this->unk_1CA[0], -0xAAA, 0x200);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x5C71, 0x200);

        if (Math_ScaledStepToS(&this->unk_1CA[1], 0x238C, 0x200)) {
            this->timer = 12;
        }
    } else if (this->timer == 18) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x2AA8, 0xAAA);

        if (Math_ScaledStepToS(&this->unk_1CA[0], 0x1554, 0x5B0)) {
            this->timer = 25;
        }

        Math_ScaledStepToS(&this->unk_1CA[1], -0x38E3, 0xAAA);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x5C71, 0x2D8);
    } else if (this->timer == 25) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x5550, 0xAAA);

        if (Math_ScaledStepToS(&this->unk_1CA[0], -0x6388, 0x93E)) {
            this->timer = 26;
        }

        Math_ScaledStepToS(&this->unk_1CA[1], -0x3FFC, 0x4FA);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x238C, 0x444);
    } else if (this->timer == 26) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x93E);

        if (Math_ScaledStepToS(&this->unk_1CA[0], -0x1555, 0x71C)) {
            this->timer = 27;
        }

        Math_ScaledStepToS(&this->unk_1CA[1], -0x38E3, 0x2D8);
        Math_ScaledStepToS(&this->unk_1CA[2], -0x5C71, 0x5B0);
    } else if (this->timer >= 27) {
        this->timer++;

        if (this->timer > 30) {
            if (this->actor.xzDistToPlayer < 80.0f * this->unk_230) {
                func_809E5F9C(this);
            } else {
                func_809E5F44(this);
            }
        }
    } else {
        this->timer++;

        if (this->timer == 10) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_SCRAPE);
        }

        if (this->timer >= 12) {
            Math_ScaledStepToS(&this->unk_1CA[2], -0x5C71, 0x88);
        }
    }
    func_809E6DCC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E77E4.s")
void func_809E77E4(EnDekubaba* this, GlobalContext* globalCtx) {
    s32 anyStepsDone;

    SkelAnime_Update(&this->skelAnime);

    if (this->timer > 8) {
        anyStepsDone = Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1800, 1, 0x11C6, 0x71C);
        anyStepsDone |= Math_SmoothStepToS(&this->unk_1CA[0], -0x1555, 1, 0xAAA, 0x71C);
        anyStepsDone |= Math_SmoothStepToS(&this->unk_1CA[1], -0x38E3, 1, 0xE38, 0x71C);
        anyStepsDone |= Math_SmoothStepToS(&this->unk_1CA[2], -0x5C71, 1, 0x11C6, 0x71C);

        if (!anyStepsDone) {
            this->timer = 8;
        }
    } else {
        if (this->timer != 0) {
            this->timer--;
        }

        if (this->timer == 0) {
            func_809E5F44(this);
        }
    }
    func_809E6DCC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E78DC.s")
void func_809E78DC(EnDekubaba* this, GlobalContext* globalCtx) {
    s32 allStepsDone;

    SkelAnime_Update(&this->skelAnime);

    allStepsDone = Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0xE38) & 1;
    allStepsDone &= Math_ScaledStepToS(&this->unk_1CA[0], -0x4000, 0xE38);
    allStepsDone &= Math_ScaledStepToS(&this->unk_1CA[1], -0x4000, 0xE38);
    allStepsDone &= Math_ScaledStepToS(&this->unk_1CA[2], -0x4000, 0xE38);

    if (allStepsDone) {
        if (this->actor.colChkInfo.health == 0) {
            EnDekubaba_SetupShrinkDie(this);
        } else {
            this->collider.base.acFlags |= AC_ON;
            if (this->timer == 0) {
                if (this->actor.xzDistToPlayer < 80.0f * this->unk_230) {
                    func_809E5F9C(this);
                } else {
                    func_809E6078(this);
                }
            } else {
                func_809E6264(this);
            }
        }
    }
    func_809E6DCC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E79EC.s")
void func_809E79EC(EnDekubaba* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        func_809E5A38(this);

        if (this->actor.xzDistToPlayer < 80.0f * this->unk_230) {
            func_809E5F9C(this);
        } else {
            func_809E6078(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E7A88.s")
void func_809E7A88(EnDekubaba* this, GlobalContext* globalCtx) {
    s16 temp_v0;
    s32 phi_v1;

    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, this->unk_1CA[0], 0x71C);
    Math_ScaledStepToS(&this->unk_1CA[0], this->unk_1CA[1], 0x71C);
    Math_ScaledStepToS(&this->unk_1CA[1], this->unk_1CA[2], 0x71C);

    if (Math_ScaledStepToS(&this->unk_1CA[2], this->unk_1C8, 0x71C)) {
        this->unk_1C8 = -0x4000 - (this->unk_1C8 + 0x4000) * 0.8f;
    }
    temp_v0 = this->unk_1C8 + 0x4000;
    phi_v1 = ABS(temp_v0);

    if (phi_v1 < 0x100) {
        this->collider.base.acFlags |= AC_ON;
        if (this->actor.xzDistToPlayer < 80.0f * this->unk_230) {
            func_809E5F9C(this);
        } else {
            func_809E6078(this);
        }
    }
    func_809E6DCC(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E7BB0.s")
void EnDekubaba_PrunedSomersault(EnDekubaba* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f sp78;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;

    Math_StepToF(&this->actor.speedXZ, 0.0f, this->unk_230 * 0.1f);

    if (this->timer == 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x4800, 0x71C);
        Math_ScaledStepToS(&this->unk_1CA[0], 0x4800, 0x71C);
        Math_ScaledStepToS(&this->unk_1CA[1], 0x4800, 0x71C);

        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.world.pos, this->unk_230 * 3.0f, 0, this->unk_230 * 12.0f,
                                 this->unk_230 * 5.0f, 1, HAHEN_OBJECT_DEFAULT, 10, NULL);

        if ((this->actor.scale.x > 0.005f) && ((this->actor.bgCheckFlags & 2) || (this->actor.bgCheckFlags & 8))) {
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 0.0f;
            this->actor.speedXZ = 0.0f;
            this->actor.flags &= -6;
            EffectSsHahen_SpawnBurst(globalCtx, &this->actor.world.pos, this->unk_230 * 3.0f, 0, this->unk_230 * 12.0f,
                                     this->unk_230 * 5.0f, 15, HAHEN_OBJECT_DEFAULT, 10, NULL);
        }

        if (this->actor.bgCheckFlags & 2) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
            this->timer = 1;
        }
    } else if (this->timer == 1) {
        sp78 = this->actor.world.pos;

        temp_f24 = 20.0f * Math_SinS(this->actor.shape.rot.x);
        temp_f20 = -20.0f * Math_CosS(this->actor.shape.rot.x) * Math_SinS(this->actor.shape.rot.y);
        temp_f22 = -20.0f * Math_CosS(this->actor.shape.rot.x) * Math_CosS(this->actor.shape.rot.y);

        for (i = 0; i < 4; i++) {
            func_800286CC(globalCtx, &sp78, &sZeroVec, &sZeroVec, 500, 50);
            sp78.x += temp_f20;
            sp78.y += temp_f24;
            sp78.z += temp_f22;
        }

        func_800286CC(globalCtx, &this->actor.home.pos, &sZeroVec, &sZeroVec, this->unk_230 * 500.0f,
                      this->unk_230 * 100.0f);
        EnDekubaba_SetupDeadStickDrop(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E7F14.s")
/**
 * Die and drop Deku Nuts (Stick drop is handled elsewhere)
 */
void EnDekubaba_ShrinkDie(EnDekubaba* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, this->unk_230 * 5.0f);

    if (Math_StepToF(&this->actor.scale.x, this->unk_230 * 0.1f * 0.01f, this->unk_230 * 0.1f * 0.01f)) {
        func_800286CC(globalCtx, &this->actor.home.pos, &sZeroVec, &sZeroVec, this->unk_230 * 500.0f,
                      this->unk_230 * 100.0f);
        if (this->actor.dropFlag == 0) {
            Item_DropCollectible(globalCtx, &this->actor.world.pos, ITEM00_NUTS);

            if (this->actor.params == DEKUBABA_BIG) {
                Item_DropCollectible(globalCtx, &this->actor.world.pos, ITEM00_NUTS);
                Item_DropCollectible(globalCtx, &this->actor.world.pos, ITEM00_NUTS);
            }
        } else {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0x30);
        }
        Actor_Kill(&this->actor);
    }

    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    this->actor.shape.rot.z += 0x1C70;
    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.home.pos, this->unk_230 * 3.0f, 0, this->unk_230 * 12.0f,
                             this->unk_230 * 5.0f, 1, HAHEN_OBJECT_DEFAULT, 10, NULL);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E80D8.s")
void EnDekubaba_DeadStickDrop(EnDekubaba* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (Actor_HasParent(&this->actor, globalCtx) || (this->timer == 0)) {
        Actor_Kill(&this->actor);
        return;
    }

    func_8002F554(&this->actor, globalCtx, 7);
}

// Update and associated functions

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E8140.s")
void EnDekubaba_UpdateDamage(EnDekubaba* this, GlobalContext* globalCtx) {
    Vec3f* firePos;
    f32 fireScale;
    s32 phi_s0; // Used for both health and iterator

    if ((this->collider.base.acFlags & AC_HIT)) {
        this->collider.base.acFlags &= ~AC_HIT;
        func_8003573C(&this->actor, &this->collider, 1);

        if ((this->collider.base.colType != COLTYPE_HARD) &&
            ((this->actor.colChkInfo.damageEffect != DEKUBABA_DMGEFF_NONE) || (this->actor.colChkInfo.damage != 0))) {

            phi_s0 = this->actor.colChkInfo.health - this->actor.colChkInfo.damage;

            if (this->actionFunc != func_809E79EC) {
                if ((this->actor.colChkInfo.damageEffect == DEKUBABA_DMGEFF_BOOMERANG) || (this->actor.colChkInfo.damageEffect == DEKUBABA_DMGEFF_DEKUNUT)) {
                    if (this->actor.colChkInfo.damageEffect == DEKUBABA_DMGEFF_BOOMERANG) {
                        phi_s0 = this->actor.colChkInfo.health;
                    }

                    func_809E60A8(this, 2);
                } else if (this->actionFunc == func_809E7458) {
                    if (phi_s0 <= 0) {
                        phi_s0 = 1;
                    }

                    func_809E60A8(this, 1);
                } else {
                    func_809E60A8(this, 0);
                }
            } else if ((this->actor.colChkInfo.damageEffect == DEKUBABA_DMGEFF_BOOMERANG) || (this->actor.colChkInfo.damageEffect == DEKUBABA_DMGEFF_SWORD)) {
                if (phi_s0 > 0) {
                    func_809E63EC(this);
                } else {
                    EnDekubaba_SetupPrunedSomersault(this);
                }
            } else if (this->actor.colChkInfo.damageEffect != DEKUBABA_DMGEFF_DEKUNUT) {
                func_809E60A8(this, 0);
            } else {
                return;
            }

            this->actor.colChkInfo.health = CLAMP_MIN(phi_s0, 0);

            if (this->actor.colChkInfo.damageEffect == DEKUBABA_DMGEFF_FIRE) {
                firePos = &this->actor.world.pos;
                fireScale = (this->unk_230 * 70.0f);

                for (phi_s0 = 0; phi_s0 < 4; phi_s0++) {
                    EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, firePos, fireScale, 0, 0, phi_s0);
                }
            }
        } else {
            return;
        }
    } else if ((globalCtx->actorCtx.unk_02 != 0) && (this->collider.base.colType != COLTYPE_HARD) &&
               (this->actionFunc != func_809E79EC) && (this->actionFunc != func_809E78DC) &&
               (this->actor.colChkInfo.health != 0)) {
        this->actor.colChkInfo.health--;
        this->actor.dropFlag = 0;
        func_809E60A8(this, 1);
    } else {
        return;
    }

    if (this->actor.colChkInfo.health != 0) {
        if (this->timer == 2) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_DAMAGE);
        }
    } else {
        func_80032C7C(globalCtx, &this->actor);
        if (this->actor.params == DEKUBABA_BIG) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_DEAD);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_DEAD);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Update.s")
void EnDekubaba_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDekubaba* this = THIS;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        func_809E6078(this);
    }

    EnDekubaba_UpdateDamage(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if (this->actionFunc == EnDekubaba_PrunedSomersault) {
        Actor_MoveForward(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 10.0f, this->unk_230 * 15.0f, 10.0f, 5);
    } else if (this->actionFunc != EnDekubaba_DeadStickDrop) {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
        if (this->boundFloor == NULL) {
            this->boundFloor = this->actor.floorPoly;
        }
    }
    if (this->actionFunc == func_809E7104) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        this->actor.flags |= 0x1000000;
    }

    if (this->collider.base.acFlags & AC_ON) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    if (this->actionFunc != EnDekubaba_DeadStickDrop) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

// Draw functions

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E858C.s")
void EnDekubaba_DrawStemRetracted(EnDekubaba* this, GlobalContext* globalCtx) {
    f32 horizontalScale;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2445);

    horizontalScale = this->unk_230 * 0.01f;

    Matrix_Translate(this->actor.home.pos.x, this->actor.home.pos.y + (-6.0f * this->unk_230), this->actor.home.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateRPY(this->unk_1CA[0], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
    Matrix_Scale(horizontalScale, horizontalScale, horizontalScale, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2461),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gDekuBabaStemTop);

    Actor_SetFocus(&this->actor, 0.0f);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2468);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E86B8.s")
void EnDekubaba_DrawStemExtended(EnDekubaba* this, GlobalContext* globalCtx) {
    static Gfx* stemDLists[] = { gDekuBabaStemTop, gDekuBabaStemMiddle, gDekuBabaStemBase };
    MtxF mtx;
    s32 i;
    f32 horizontalStepSize;
    f32 spA4;
    f32 scale;
    s32 stemSections;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2487);

    if (this->actionFunc == EnDekubaba_PrunedSomersault) {
        stemSections = 2;
    } else {
        stemSections = 3;
    }

    scale = this->unk_230 * 0.01f;
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    Matrix_Get(&mtx);
    if (this->actor.colorFilterTimer != 0) {
        spA4 = this->unk_230 * 20.0f;
        this->bodyPartsPos[2].x = this->actor.world.pos.x;
        this->bodyPartsPos[2].y = this->actor.world.pos.y - spA4;
        this->bodyPartsPos[2].z = this->actor.world.pos.z;
    }

    for (i = 0; i < stemSections; i++) {
        mtx.wy += 20.0f * Math_SinS(this->unk_1CA[i]) * this->unk_230;
        horizontalStepSize = 20.0f * Math_CosS(this->unk_1CA[i]) * this->unk_230;
        mtx.wx -= horizontalStepSize * Math_SinS(this->actor.shape.rot.y);
        mtx.wz -= horizontalStepSize * Math_CosS(this->actor.shape.rot.y);

        Matrix_Put(&mtx);
        Matrix_RotateRPY(this->unk_1CA[i], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2533),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, stemDLists[i]);

        Collider_UpdateSpheres(51 + 2 * i, &this->collider);
        Collider_UpdateSpheres(52 + 2 * i, &this->collider);

        if (i == 0) {
            if (this->actionFunc != func_809E7A88) {
                this->actor.focus.pos.x = mtx.wx;
                this->actor.focus.pos.y = mtx.wy;
                this->actor.focus.pos.z = mtx.wz;
            } else {
                this->actor.focus.pos.x = this->actor.home.pos.x;
                this->actor.focus.pos.y = this->actor.home.pos.y + (40.0f * this->unk_230);
                this->actor.focus.pos.z = this->actor.home.pos.z;
            }
        }

        if ((i < 2) && (this->actor.colorFilterTimer != 0)) {
            // checking colorFilterTimer ensures that spA4 has been initialized earlier, so not a bug
            this->bodyPartsPos[i].x = mtx.wx;
            this->bodyPartsPos[i].y = mtx.wy - spA4;
            this->bodyPartsPos[i].z = mtx.wz;
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2569);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E89E4.s")
void EnDekubaba_DrawStemBasePruned(EnDekubaba* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2579);

    Matrix_RotateRPY(this->unk_1CA[2], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2586),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gDekuBabaStemBase);

    Collider_UpdateSpheres(55, &this->collider);
    Collider_UpdateSpheres(56, &this->collider);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2596);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E8AD8.s")
void EnDekubaba_DrawBaseShadow(EnDekubaba* this, GlobalContext* globalCtx) {
    MtxF mtx;
    // s32 pad;
    f32 horizontalScale;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2692);
    func_80094044(globalCtx->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 255);

    func_80038A28(this->boundFloor, this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, &mtx);
    Matrix_Mult(&mtx, MTXMODE_NEW);

    horizontalScale = this->unk_230 * 0.15f;
    Matrix_Scale(horizontalScale, 1.0f, horizontalScale, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2710),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, gCircleShadowDL);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2715);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_ 809E8C0C.s")
void EnDekubaba_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnDekubaba* this = THIS;

    if (limbIndex == 1) {
        Collider_UpdateSpheres(limbIndex, &this->collider);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Draw.s")
void EnDekubaba_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDekubaba* this = THIS;
    f32 scale;

    if (1) {}
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2752);
    func_80093D18(globalCtx->state.gfxCtx);

    if (this->actionFunc != EnDekubaba_DeadStickDrop) {
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL,
                          EnDekubaba_PostLimbDraw, this);

        if (this->actionFunc == EnDekubaba_Wait) {
            EnDekubaba_DrawStemRetracted(this, globalCtx);
        } else {
            EnDekubaba_DrawStemExtended(this, globalCtx);
        }

        scale = this->unk_230 * 0.01f;
        Matrix_Translate(this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, MTXMODE_NEW);
        Matrix_RotateY(this->actor.home.rot.y * (M_PI / 0x8000), MTXMODE_APPLY);
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2780),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, gDekuBabaBaseLeavesDL);

        if (this->actionFunc == EnDekubaba_PrunedSomersault) {
            EnDekubaba_DrawStemBasePruned(this, globalCtx);
        }

        if (this->boundFloor != NULL) {
            EnDekubaba_DrawBaseShadow(this, globalCtx);
        }

        // Display solid until 40 frames left, then blink until killed.
    } else if ((this->timer > 40) || (this->timer & 1)) {
        Matrix_Translate(0.0f, 0.0f, 200.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2797),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, gDekuBabaStickDropDL);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dekubaba.c", 2804);
}
