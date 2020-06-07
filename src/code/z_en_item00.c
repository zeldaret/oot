#include <ultra64.h>
#include <global.h>

typedef enum {
    /* 0x00 */ ITEM00_RUPEE_GREEN,
    /* 0x01 */ ITEM00_RUPEE_BLUE,
    /* 0x02 */ ITEM00_RUPEE_RED,
    /* 0x03 */ ITEM00_HEART,
    /* 0x04 */ ITEM00_BOMBS_A,
    /* 0x05 */ ITEM00_ARROWS_SINGLE,
    /* 0x06 */ ITEM00_HEART_PIECE,
    /* 0x07 */ ITEM00_HEART_CONTAINER,
    /* 0x08 */ ITEM00_ARROWS_SMALL,
    /* 0x09 */ ITEM00_ARROWS_MEDIUM,
    /* 0x0A */ ITEM00_ARROWS_LARGE,
    /* 0x0B */ ITEM00_BOMBS_B,
    /* 0x0C */ ITEM00_NUTS,
    /* 0x0D */ ITEM00_STICK,
    /* 0x0E */ ITEM00_MAGIC_LARGE,
    /* 0x0F */ ITEM00_MAGIC_SMALL,
    /* 0x10 */ ITEM00_SEEDS,
    /* 0x11 */ ITEM00_SMALL_KEY,
    /* 0x12 */ ITEM00_FLEXIBLE,
    /* 0x13 */ ITEM00_RUPEE_ORANGE,
    /* 0x14 */ ITEM00_RUPEE_PURPLE,
    /* 0x15 */ ITEM00_SHIELD_DEKU,
    /* 0x16 */ ITEM00_SHIELD_HYLIAN,
    /* 0x17 */ ITEM00_TUNIC_ZORA,
    /* 0x18 */ ITEM00_TUNIC_GORON,
    /* 0x19 */ ITEM00_BOMBS_SPECIAL
} Item00Type;

struct EnItem00;

typedef void (*EnItem00ActionFunc)(struct EnItem00*, GlobalContext*);

typedef struct EnItem00 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnItem00ActionFunc actionFunc;
    /* 0x150 */ s16 collectibleFlag;
    /* 0x152 */ s16 unk_152;
    /* 0x154 */ s16 unk_154;
    /* 0x156 */ s16 unk_156;
    /* 0x158 */ s16 unk_158;
    /* 0x15A */ s16 unk_15A;
    /* 0x15C */ f32 unk_15C;
    /* 0x160 */ ColliderCylinder collider;
} EnItem00; // size = 0x1AC

#define FLAGS 0x00000000

#define THIS ((EnItem00*)thisx)

void EnItem00_Init(Actor* thisx, GlobalContext* globalCtx);
void EnItem00_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnItem00_Update(Actor* thisx, GlobalContext* globalCtx);
void EnItem00_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8001DFC8(EnItem00* this, GlobalContext* globalCtx);
void func_8001E1C8(EnItem00* this, GlobalContext* globalCtx);
void func_8001E304(EnItem00* this, GlobalContext* globalCtx);
void func_8001E5C8(EnItem00* this, GlobalContext* globalCtx);

const ActorInit En_Item00_InitVars = {
    ACTOR_EN_ITEM00,
    ACTORTYPE_MISC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnItem00),
    (ActorFunc)EnItem00_Init,
    (ActorFunc)EnItem00_Destroy,
    (ActorFunc)EnItem00_Update,
    (ActorFunc)EnItem00_Draw,
};

// TODO: Define this section of .data here and rename the symbols
extern ColliderCylinderInit D_801154E0; // rename to sCylinderInit when data is moved
extern InitChainEntry D_8011550C[];     // rename to sInitChain when data is moved
extern Color_RGB8 D_80115510;
extern Color_RGB8 D_80115514;
extern UNK_TYPE D_80115518;
extern UNK_TYPE D_80115524;
extern u32 D_80115530[];
extern u32 D_80115544[];
extern u8 D_80115574[];
extern u8 D_80115664[];

// Internal Actor Functions

void EnItem00_SetupAction(EnItem00* this, EnItem00ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnItem00_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnItem00* this = THIS;
    s32 pad2;
    f32 sp34;
    f32 sp30;
    s32 getItemId;
    s16 spawnParam8000;
    s32 pad3;

    sp34 = 980.0f;
    sp30 = 6.0f;
    getItemId = 0;

    spawnParam8000 = this->actor.params & 0x8000;
    this->collectibleFlag = (this->actor.params & 0x3F00) >> 8;

    this->actor.params &= 0xFF;

    if (Flags_GetCollectible(globalCtx, this->collectibleFlag)) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_ProcessInitChain(&this->actor, D_8011550C);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_801154E0);

    this->unk_158 = 1;

    switch (this->actor.params) {
        case ITEM00_RUPEE_GREEN:
        case ITEM00_RUPEE_BLUE:
        case ITEM00_RUPEE_RED:
            Actor_SetScale(&this->actor, 0.015f);
            this->unk_15C = 0.015f;
            sp34 = 750.0f;
            break;
        case ITEM00_SMALL_KEY:
            this->unk_158 = 0;
            Actor_SetScale(&this->actor, 0.03f);
            this->unk_15C = 0.03f;
            sp34 = 350.0f;
            break;
        case ITEM00_HEART_PIECE:
            this->unk_158 = 0;
            sp34 = 650.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case ITEM00_HEART:
            this->actor.initPosRot.rot.z = Math_Rand_CenteredFloat(65535.0f);
            sp34 = 430.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case ITEM00_HEART_CONTAINER:
            sp34 = 430.0f;
            this->unk_158 = 0;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case ITEM00_ARROWS_SINGLE:
            sp34 = 400.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case ITEM00_ARROWS_SMALL:
        case ITEM00_ARROWS_MEDIUM:
        case ITEM00_ARROWS_LARGE:
            Actor_SetScale(&this->actor, 0.035f);
            this->unk_15C = 0.035f;
            sp34 = 250.0f;
            break;
        case ITEM00_BOMBS_A:
        case ITEM00_BOMBS_B:
        case ITEM00_NUTS:
        case ITEM00_STICK:
        case ITEM00_MAGIC_SMALL:
        case ITEM00_SEEDS:
        case ITEM00_BOMBS_SPECIAL:
            Actor_SetScale(&this->actor, 0.03f);
            this->unk_15C = 0.03f;
            sp34 = 320.0f;
            break;
        case ITEM00_MAGIC_LARGE:
            Actor_SetScale(&this->actor, 0.045 - 1e-10);
            this->unk_15C = 0.045 - 1e-10;
            sp34 = 320.0f;
            break;
        case ITEM00_RUPEE_ORANGE:
            Actor_SetScale(&this->actor, 0.045 - 1e-10);
            this->unk_15C = 0.045 - 1e-10;
            sp34 = 750.0f;
            break;
        case ITEM00_RUPEE_PURPLE:
            Actor_SetScale(&this->actor, 0.03f);
            this->unk_15C = 0.03f;
            sp34 = 750.0f;
            break;
        case ITEM00_FLEXIBLE:
            sp34 = 500.0f;
            Actor_SetScale(&this->actor, 0.01f);
            this->unk_15C = 0.01f;
            break;
        case ITEM00_SHIELD_DEKU:
            this->actor.objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GI_SHIELD_1);
            Actor_SetObjectDependency(globalCtx, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->unk_15C = 0.5f;
            sp34 = 0.0f;
            sp30 = 0.6f;
            this->actor.posRot.rot.x = 0x4000;
            break;
        case ITEM00_SHIELD_HYLIAN:
            this->actor.objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GI_SHIELD_2);
            Actor_SetObjectDependency(globalCtx, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->unk_15C = 0.5f;
            sp34 = 0.0f;
            sp30 = 0.6f;
            this->actor.posRot.rot.x = 0x4000;
            break;
        case ITEM00_TUNIC_ZORA:
        case ITEM00_TUNIC_GORON:
            this->actor.objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GI_CLOTHES);
            Actor_SetObjectDependency(globalCtx, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->unk_15C = 0.5f;
            sp34 = 0.0f;
            sp30 = 0.6f;
            this->actor.posRot.rot.x = 0x4000;
            break;
    }

    this->unk_156 = 0;
    ActorShape_Init(&this->actor.shape, sp34, ActorShadow_DrawFunc_Circle, sp30);
    this->actor.shape.unk_14 = 0xB4;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->unk_152 = 0;

    if (!spawnParam8000) {
        EnItem00_SetupAction(this, func_8001DFC8);
        this->unk_15A = -1;
        return;
    }

    this->unk_15A = 15;
    this->unk_154 = 35;

    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;

    switch (this->actor.params) {
        case ITEM00_RUPEE_GREEN:
            Item_Give(globalCtx, ITEM_RUPEE_GREEN);
            break;
        case ITEM00_RUPEE_BLUE:
            Item_Give(globalCtx, ITEM_RUPEE_BLUE);
            break;
        case ITEM00_RUPEE_RED:
            Item_Give(globalCtx, ITEM_RUPEE_RED);
            break;
        case ITEM00_RUPEE_PURPLE:
            Item_Give(globalCtx, ITEM_RUPEE_PURPLE);
            break;
        case ITEM00_RUPEE_ORANGE:
            Item_Give(globalCtx, ITEM_RUPEE_GOLD);
            break;
        case ITEM00_HEART:
            Item_Give(globalCtx, ITEM_HEART);
            break;
        case ITEM00_FLEXIBLE:
            Health_ChangeBy(globalCtx, 0x70);
            break;
        case ITEM00_BOMBS_A:
        case ITEM00_BOMBS_B:
            Item_Give(globalCtx, ITEM_BOMBS_5);
            break;
        case ITEM00_ARROWS_SINGLE:
            Item_Give(globalCtx, ITEM_BOW);
            break;
        case ITEM00_ARROWS_SMALL:
            Item_Give(globalCtx, ITEM_ARROWS_SMALL);
            break;
        case ITEM00_ARROWS_MEDIUM:
            Item_Give(globalCtx, ITEM_ARROWS_MEDIUM);
            break;
        case ITEM00_ARROWS_LARGE:
            Item_Give(globalCtx, ITEM_ARROWS_LARGE);
            break;
        case ITEM00_MAGIC_LARGE:
            getItemId = GI_MAGIC_SMALL;
            break;
        case ITEM00_MAGIC_SMALL:
            getItemId = GI_MAGIC_LARGE;
            break;
        case ITEM00_SMALL_KEY:
            Item_Give(globalCtx, ITEM_KEY_SMALL);
            break;
        case ITEM00_SEEDS:
            getItemId = GI_SEEDS_5;
            break;
        case ITEM00_NUTS:
            getItemId = GI_NUTS_5;
            break;
        case ITEM00_STICK:
            getItemId = GI_STICKS_1;
            break;
        case ITEM00_HEART_PIECE:
        case ITEM00_HEART_CONTAINER:
        case ITEM00_SHIELD_DEKU:
        case ITEM00_SHIELD_HYLIAN:
        case ITEM00_TUNIC_ZORA:
        case ITEM00_TUNIC_GORON:
        case ITEM00_BOMBS_SPECIAL:
            break;
    }

    if ((getItemId != 0) && !func_8002F410(&this->actor, globalCtx)) {
        func_8002F554(&this->actor, globalCtx, getItemId);
    }

    EnItem00_SetupAction(this, func_8001E5C8);
    this->actionFunc(this, globalCtx);
}

void EnItem00_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnItem00* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_8001DFC8(EnItem00* this, GlobalContext* globalCtx) {
    if ((this->actor.params <= ITEM00_RUPEE_RED) || ((this->actor.params == ITEM00_HEART) && (this->unk_15A < 0)) ||
        (this->actor.params == ITEM00_HEART_PIECE)) {
        this->actor.shape.rot.y += 960;
    } else {
        if ((this->actor.params >= ITEM00_SHIELD_DEKU) && (this->actor.params != ITEM00_BOMBS_SPECIAL)) {
            if (this->unk_15A == -1) {
                if (!Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->actor.posRot.rot.x - 0x4000, 2, 3000,
                                             1500)) {
                    this->unk_15A = -2;
                }
            } else {
                if (!Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, -this->actor.posRot.rot.x - 0x4000, 2, 3000,
                                             1500)) {
                    this->unk_15A = -1;
                }
            }
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.x, 0, 2, 2500, 500);
        }
    }

    if (this->actor.params == ITEM00_HEART_PIECE) {
        this->actor.shape.unk_08 = Math_Sins(this->actor.shape.rot.y) * 150.0f + 850.0f;
    }

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);

    if (this->unk_154 == 0) {
        if ((this->actor.params != ITEM00_SMALL_KEY) && (this->actor.params != ITEM00_HEART_PIECE) &&
            (this->actor.params != ITEM00_HEART_CONTAINER)) {
            this->unk_154 = -1;
        }
    }

    if (this->unk_15A == 0) {
        if ((this->actor.params != ITEM00_SMALL_KEY) && (this->actor.params != ITEM00_HEART_PIECE) &&
            (this->actor.params != ITEM00_HEART_CONTAINER)) {
            Actor_Kill(&this->actor);
        }
    }

    if ((this->actor.gravity != 0.0f) && !(this->actor.bgCheckFlags & 0x0001)) {
        EnItem00_SetupAction(this, func_8001E1C8);
    }
}

void func_8001E1C8(EnItem00* this, GlobalContext* globalCtx) {
    f32 originalVelocity;
    Vec3f pos;

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    }

    if (globalCtx->gameplayFrames & 1) {
        pos.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(10.0f);
        pos.y = this->actor.posRot.pos.y + Math_Rand_CenteredFloat(10.0f);
        pos.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(10.0f);
        func_80028B74(globalCtx, &pos, &D_80115518, &D_80115524, &D_80115510, &D_80115514);
    }

    if (this->actor.bgCheckFlags & 0x0003) {
        originalVelocity = this->actor.velocity.y;
        if (originalVelocity > -2.0f) {
            EnItem00_SetupAction(this, func_8001DFC8);
            this->actor.velocity.y = 0.0f;
        } else {
            this->actor.velocity.y = originalVelocity * -0.8f;
            this->actor.bgCheckFlags = this->actor.bgCheckFlags & 0xFFFE;
        }
    }
}

void func_8001E304(EnItem00* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f pos;
    s32 var1;

    this->unk_15A++;

    if (this->actor.params == ITEM00_HEART) {
        if (this->actor.velocity.y < 0.0f) {
            this->actor.speedXZ = 0.0f;
            this->actor.gravity = -0.4f;
            if (this->actor.velocity.y < -1.5f) {
                this->actor.velocity.y = -1.5f;
            }
            this->actor.initPosRot.rot.z += (s16)((this->actor.velocity.y + 3.0f) * 1000.0f);
            this->actor.posRot.pos.x +=
                Math_Coss(this->actor.rotTowardsLinkY) * (-3.0f * Math_Coss(this->actor.initPosRot.rot.z));
            this->actor.posRot.pos.z +=
                Math_Sins(this->actor.rotTowardsLinkY) * (-3.0f * Math_Coss(this->actor.initPosRot.rot.z));
        }
    }

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    } else if ((this->actor.params >= ITEM00_SHIELD_DEKU) && (this->actor.params != ITEM00_BOMBS_SPECIAL)) {
        this->actor.posRot.rot.x -= 700;
        this->actor.shape.rot.y += 400;
        this->actor.shape.rot.x = this->actor.posRot.rot.x - 0x4000;
    }

    if (this->actor.velocity.y <= 2.0f) {
        var1 = (u16)this->actor.shape.rot.z + 10000;
        if (var1 < 65535) {
            this->actor.shape.rot.z += 10000;
        } else {
            this->actor.shape.rot.z = -1;
        }
    }

    if (!(globalCtx->gameplayFrames & 1)) {
        pos.x = this->actor.posRot.pos.x + (Math_Rand_ZeroOne() - 0.5f) * 10.0f;
        pos.y = this->actor.posRot.pos.y + (Math_Rand_ZeroOne() - 0.5f) * 10.0f;
        pos.z = this->actor.posRot.pos.z + (Math_Rand_ZeroOne() - 0.5f) * 10.0f;
        func_80028B74(globalCtx, &pos, &D_80115518, &D_80115524, &D_80115510, &D_80115514);
    }

    if (this->actor.bgCheckFlags & 0x0003) {
        EnItem00_SetupAction(this, func_8001DFC8);
        this->actor.shape.rot.z = 0;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

void func_8001E5C8(EnItem00* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_152 != 0) {
        if (!func_8002F410(&this->actor, globalCtx)) {
            func_8002F434(&this->actor, globalCtx, this->unk_152, 50.0f, 80.0f);
            this->unk_15A++;
        } else {
            this->unk_152 = 0;
        }
    }

    if (this->unk_15A == 0) {
        Actor_Kill(&this->actor);
        return;
    }

    this->actor.posRot.pos = player->actor.posRot.pos;

    if (this->actor.params <= ITEM00_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    } else if (this->actor.params == ITEM00_HEART) {
        this->actor.shape.rot.y = 0;
    }

    this->actor.posRot.pos.y += 40.0f + Math_Sins(this->unk_15A * 15000) * (this->unk_15A * 0.3f);

    if (LINK_IS_ADULT) {
        this->actor.posRot.pos.y += 20.0f;
    }
}

extern s32 D_80157D90;
extern u32 D_80157D90_; // these must be defined separately for EnItem00_Update to match
extern s16 D_80157D94;

void EnItem00_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnItem00* this = THIS;
    s16* params;
    s32 getItemId;
    s16 sp3A;
    Actor* dynaActor;
    s16 i;

    getItemId = 0;
    sp3A = 0;

    if (this->unk_15A > 0) {
        this->unk_15A--;
    }

    if ((this->unk_15A > 0) && (this->unk_15A < 41) && (this->unk_154 <= 0)) {
        this->unk_156 = this->unk_15A;
    }

    this->actionFunc(this, globalCtx);

    Math_SmoothScaleMaxMinF(&this->actor.scale.x, this->unk_15C, 0.1f, this->unk_15C * 0.1f, 0.0f);
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;

    if (this->actor.gravity) {
        if (this->actor.bgCheckFlags & 0x0003) {
            // Separate symbols seem to be used here for 0x80157D90 since the loads and stores are completely separate
            if (D_80157D90 != globalCtx->gameplayFrames) {
                D_80157D90_ = globalCtx->gameplayFrames;
                D_80157D94 = 0;
                for (i = 0; i < 50; i++) {
                    if (globalCtx->colCtx.dyna.flags[i] & 1) {
                        dynaActor = globalCtx->colCtx.dyna.actorMeshArr[i].actor;
                        if ((dynaActor != NULL) && (dynaActor->update != NULL) &&
                            ((dynaActor->posRot.pos.x != dynaActor->pos4.x) ||
                             (dynaActor->posRot.pos.y != dynaActor->pos4.y) ||
                             (dynaActor->posRot.pos.z != dynaActor->pos4.z))) {
                            D_80157D94++;
                            break;
                        }
                    }
                }
            }
        } else {
            sp3A = 1;
            Actor_MoveForward(&this->actor);
        }

        if (sp3A || D_80157D94) {
            func_8002E4B4(globalCtx, &this->actor, 10.0f, 15.0f, 15.0f, 0x1D);

            if (this->actor.unk_80 <= -10000.0f) {
                Actor_Kill(&this->actor);
                return;
            }
        }
    }

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);

    if ((this->actor.params == ITEM00_SHIELD_DEKU) || (this->actor.params == ITEM00_SHIELD_HYLIAN) ||
        (this->actor.params == ITEM00_TUNIC_ZORA) || (this->actor.params == ITEM00_TUNIC_GORON)) {
        f32 newUnkBC = Math_Coss(this->actor.shape.rot.x) * 37.0f;
        this->actor.shape.unk_08 = newUnkBC;
        if (newUnkBC >= 0.0f) {
            this->actor.shape.unk_08 = this->actor.shape.unk_08;
        } else {
            this->actor.shape.unk_08 = -this->actor.shape.unk_08;
        }
    }

    if (this->unk_154 > 0) {
        return;
    }

    if (!((this->actor.xzDistanceFromLink <= 30.0f) && (this->actor.yDistanceFromLink >= -50.0f) &&
          (this->actor.yDistanceFromLink <= 50.0f))) {
        if (!func_8002F410(&this->actor, globalCtx)) {
            return;
        }
    }

    if (globalCtx->unk_10A20 != 0) {
        return;
    }

    switch (this->actor.params) {
        case ITEM00_RUPEE_GREEN:
            Item_Give(globalCtx, ITEM_RUPEE_GREEN);
            break;
        case ITEM00_RUPEE_BLUE:
            Item_Give(globalCtx, ITEM_RUPEE_BLUE);
            break;
        case ITEM00_RUPEE_RED:
            Item_Give(globalCtx, ITEM_RUPEE_RED);
            break;
        case ITEM00_RUPEE_PURPLE:
            Item_Give(globalCtx, ITEM_RUPEE_PURPLE);
            break;
        case ITEM00_RUPEE_ORANGE:
            Item_Give(globalCtx, ITEM_RUPEE_GOLD);
            break;
        case ITEM00_STICK:
            getItemId = GI_STICKS_1;
            break;
        case ITEM00_NUTS:
            getItemId = GI_NUTS_5;
            break;
        case ITEM00_HEART:
            Item_Give(globalCtx, ITEM_HEART);
            break;
        case ITEM00_FLEXIBLE:
            Health_ChangeBy(globalCtx, 0x70);
            break;
        case ITEM00_BOMBS_A:
        case ITEM00_BOMBS_B:
            Item_Give(globalCtx, ITEM_BOMBS_5);
            break;
        case ITEM00_ARROWS_SINGLE:
            Item_Give(globalCtx, ITEM_BOW);
            break;
        case ITEM00_ARROWS_SMALL:
            Item_Give(globalCtx, ITEM_ARROWS_SMALL);
            break;
        case ITEM00_ARROWS_MEDIUM:
            Item_Give(globalCtx, ITEM_ARROWS_MEDIUM);
            break;
        case ITEM00_ARROWS_LARGE:
            Item_Give(globalCtx, ITEM_ARROWS_LARGE);
            break;
        case ITEM00_SEEDS:
            getItemId = GI_SEEDS_5;
            break;
        case ITEM00_SMALL_KEY:
            getItemId = GI_KEY_SMALL;
            break;
        case ITEM00_HEART_PIECE:
            getItemId = GI_HEART_PIECE;
            break;
        case ITEM00_HEART_CONTAINER:
            getItemId = GI_HEART_CONTAINER;
            break;
        case ITEM00_MAGIC_LARGE:
            getItemId = GI_MAGIC_LARGE;
            break;
        case ITEM00_MAGIC_SMALL:
            getItemId = GI_MAGIC_SMALL;
            break;
        case ITEM00_SHIELD_DEKU:
            getItemId = GI_SHIELD_DEKU;
            break;
        case ITEM00_SHIELD_HYLIAN:
            getItemId = GI_SHIELD_HYLIAN;
            break;
        case ITEM00_TUNIC_ZORA:
            getItemId = GI_TUNIC_ZORA;
            break;
        case ITEM00_TUNIC_GORON:
            getItemId = GI_TUNIC_GORON;
            break;
        case ITEM00_BOMBS_SPECIAL:
            break;
    }

    params = &this->actor.params;

    if ((getItemId != 0) && !func_8002F410(&this->actor, globalCtx)) {
        func_8002F554(&this->actor, globalCtx, getItemId);
    }

    switch (*params) {
        case ITEM00_HEART_PIECE:
        case ITEM00_HEART_CONTAINER:
        case ITEM00_SMALL_KEY:
        case ITEM00_SHIELD_DEKU:
        case ITEM00_SHIELD_HYLIAN:
        case ITEM00_TUNIC_ZORA:
        case ITEM00_TUNIC_GORON:
            if (func_8002F410(&this->actor, globalCtx)) {
                Flags_SetCollectible(globalCtx, this->collectibleFlag);
                Actor_Kill(&this->actor);
            }
            return;
    }

    if ((*params <= ITEM00_RUPEE_RED) || (*params == ITEM00_RUPEE_ORANGE)) {
        Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (getItemId != 0) {
        if (func_8002F410(&this->actor, globalCtx)) {
            Flags_SetCollectible(globalCtx, this->collectibleFlag);
            Actor_Kill(&this->actor);
        }
        return;
    } else {
        Audio_PlaySoundGeneral(NA_SE_SY_GET_ITEM, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    Flags_SetCollectible(globalCtx, this->collectibleFlag);

    this->unk_15A = 15;
    this->unk_154 = 35;
    this->actor.shape.rot.z = 0;
    this->actor.speedXZ = 0;
    this->actor.velocity.y = 0;
    this->actor.gravity = 0;

    Actor_SetScale(&this->actor, this->unk_15C);

    this->unk_152 = 0;
    EnItem00_SetupAction(this, func_8001E5C8);
}

// Draw Function prototypes (used in EnItem00_Draw)
void func_8001EF30(EnItem00* this, GlobalContext* globalCtx);
void func_8001F080(EnItem00* this, GlobalContext* globalCtx);
void func_8001F1F4(EnItem00* this, GlobalContext* globalCtx);
void func_8001F334(EnItem00* this, GlobalContext* globalCtx);

void EnItem00_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnItem00* this = THIS;
    f32 unkFloat;

    if (!(this->unk_156 & this->unk_158)) {
        switch (this->actor.params) {
            case ITEM00_RUPEE_GREEN:
            case ITEM00_RUPEE_BLUE:
            case ITEM00_RUPEE_RED:
            case ITEM00_RUPEE_ORANGE:
            case ITEM00_RUPEE_PURPLE:
                func_8001EF30(this, globalCtx);
                break;
            case ITEM00_HEART_PIECE:
                func_8001F334(this, globalCtx);
                break;
            case ITEM00_HEART_CONTAINER:
                func_8001F1F4(this, globalCtx);
                break;
            case ITEM00_HEART:
                if (this->unk_15A < 0) {
                    if (this->unk_15A == -1) {
                        s8 bankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GI_HEART);
                        if (Object_IsLoaded(&globalCtx->objectCtx, bankIndex)) {
                            this->actor.objBankIndex = bankIndex;
                            Actor_SetObjectDependency(globalCtx, &this->actor);
                            this->unk_15A = -2;
                        }
                    } else {
                        unkFloat = 16.0f;
                        Matrix_Scale(unkFloat, unkFloat, unkFloat, MTXMODE_APPLY);
                        func_800694A0(globalCtx, 0x08);
                    }
                    break;
                }
            case ITEM00_BOMBS_A:
            case ITEM00_BOMBS_B:
            case ITEM00_BOMBS_SPECIAL:
            case ITEM00_ARROWS_SINGLE:
            case ITEM00_ARROWS_SMALL:
            case ITEM00_ARROWS_MEDIUM:
            case ITEM00_ARROWS_LARGE:
            case ITEM00_NUTS:
            case ITEM00_STICK:
            case ITEM00_MAGIC_LARGE:
            case ITEM00_MAGIC_SMALL:
            case ITEM00_SEEDS:
            case ITEM00_SMALL_KEY:
                func_8001F080(this, globalCtx);
                break;
            case ITEM00_SHIELD_DEKU:
                func_800694A0(globalCtx, 0x1C);
                break;
            case ITEM00_SHIELD_HYLIAN:
                func_800694A0(globalCtx, 0x2B);
                break;
            case ITEM00_TUNIC_ZORA:
                func_800694A0(globalCtx, 0x3C);
                break;
            case ITEM00_TUNIC_GORON:
                func_800694A0(globalCtx, 0x3B);
                break;
            case ITEM00_FLEXIBLE:
                break;
        }
    }
}

/**
 * Draw Function used for Rupee types of En_Item00.
 */
void func_8001EF30(EnItem00* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 iconNb;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1546);

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);

    if (1) { // Necessary to match
        if (this->actor.params <= ITEM00_RUPEE_RED) {
            iconNb = this->actor.params;
        } else {
            iconNb = this->actor.params - 0x10;
        }
    }

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1562),
              G_MTX_MODELVIEW | G_MTX_LOAD);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80115530[iconNb]));

    gSPDisplayList(gfxCtx->polyOpa.p++, &D_04042440);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1568);
}

/**
 * Draw Function used for most collectible types of En_Item00 (ammo, bombs, sticks, nuts, magic...).
 */
void func_8001F080(EnItem00* this, GlobalContext* globalCtx) {
    s32 iconNb;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    iconNb = this->actor.params - 3;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1594);

    gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);

    if (this->actor.params == ITEM00_BOMBS_SPECIAL) {
        iconNb = 1;
    } else if (this->actor.params >= ITEM00_ARROWS_SMALL) {
        iconNb -= 3;
    }

    gfxCtx->polyOpa.p = func_800946E4(gfxCtx->polyOpa.p);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80115544[iconNb]));

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1607),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_0403F070);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1611);
}

/**
 * Draw Function used for the Heart Container type of En_Item00.
 */
void func_8001F1F4(EnItem00* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1623);

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1634),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_0403BBA0);

    func_80093D84(globalCtx->state.gfxCtx);
    func_8002ED80(&this->actor, globalCtx, 0);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1644),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_0403BCD8);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1647);
}

/**
 * Draw Function used for the Piece of Heart type of En_Item00.
 */
void func_8001F334(EnItem00* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1658);

    func_80093D84(globalCtx->state.gfxCtx);
    func_8002ED80(&this->actor, globalCtx, 0);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1670),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_0403B030);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_item00.c", 1673);
}

/**
 * Converts a given drop type ID based on link's current age, health and owned items.
 * Returns a new drop type ID or -1 to cancel the drop.
 */
s16 func_8001F404(s16 dropId) {
    if (LINK_IS_ADULT) {
        if (dropId == ITEM00_SEEDS) {
            dropId = ITEM00_ARROWS_SMALL;
        } else if (dropId == ITEM00_STICK) {
            dropId = ITEM00_RUPEE_GREEN;
        }
    } else {
        if (dropId == ITEM00_ARROWS_SMALL || dropId == ITEM00_ARROWS_MEDIUM || dropId == ITEM00_ARROWS_LARGE) {
            dropId = ITEM00_SEEDS;
        }
    }

    // This is convoluted but it seems like it must be a single condition to match
    // clang-format off
    if (((dropId == ITEM00_BOMBS_A      || dropId == ITEM00_BOMBS_SPECIAL || dropId == ITEM00_BOMBS_B)      && INV_CONTENT(ITEM_BOMB) == ITEM_NONE) ||
        ((dropId == ITEM00_ARROWS_SMALL || dropId == ITEM00_ARROWS_MEDIUM || dropId == ITEM00_ARROWS_LARGE) && INV_CONTENT(ITEM_BOW) == ITEM_NONE) ||
        ((dropId == ITEM00_MAGIC_LARGE  || dropId == ITEM00_MAGIC_SMALL)                                    && gSaveContext.magicLevel == 0) ||
        ((dropId == ITEM00_SEEDS)                                                                           && INV_CONTENT(ITEM_SLINGSHOT) == ITEM_NONE)) {
        return -1;
    }
    // clang-format on

    if (dropId == ITEM00_HEART && gSaveContext.healthCapacity == gSaveContext.health) {
        return ITEM00_RUPEE_GREEN;
    }

    return dropId;
}

// External functions used by other actors to drop collectibles, which usually results in spawning an En_Item00 actor.

Actor* Item_DropCollectible(GlobalContext* globalCtx, Vec3f* spawnPos, s16 params) {
    s32 pad[2];
    EnItem00* spawnedActor = NULL;
    s16 param4000 = params & 0x4000;
    s16 param8000 = params & 0x8000;
    s16 param3F00 = params & 0x3F00;

    params = params & 0x3FFF;

    if (((params & 0x00FF) == ITEM00_FLEXIBLE) && !param4000) {
        // TODO: Prevent the cast to EnItem00 here since this is a different actor (En_Elf)
        spawnedActor = (EnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, spawnPos->x,
                                              spawnPos->y + 40.0f, spawnPos->z, 0, 0, 0, 0x0002);
        func_8002A9F4(globalCtx, spawnPos, 0x28E7, 1, 1, 0x28);
    } else {
        if (!param8000) {
            params = func_8001F404(params & 0x00FF);
        }

        if (params != -1) {
            spawnedActor = (EnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, spawnPos->x,
                                                  spawnPos->y, spawnPos->z, 0, 0, 0, params | param8000 | param3F00);
            if ((spawnedActor != NULL) && !param8000) {
                spawnedActor->actor.velocity.y = !param4000 ? 8.0f : -2.0f;
                spawnedActor->actor.speedXZ = 2.0f;
                spawnedActor->actor.gravity = -0.9f;
                spawnedActor->actor.posRot.rot.y = Math_Rand_CenteredFloat(65536.0f);
                Actor_SetScale(&spawnedActor->actor, 0.0f);
                EnItem00_SetupAction(spawnedActor, func_8001E304);
                spawnedActor->unk_15A = 220;
                if ((spawnedActor->actor.params != ITEM00_SMALL_KEY) &&
                    (spawnedActor->actor.params != ITEM00_HEART_PIECE) &&
                    (spawnedActor->actor.params != ITEM00_HEART_CONTAINER)) {
                    spawnedActor->actor.room = -1;
                }
                spawnedActor->actor.flags |= 0x0010;
            }
        }
    }

    return (Actor*)spawnedActor;
}

Actor* Item_DropCollectible2(GlobalContext* globalCtx, Vec3f* spawnPos, s16 params) {
    EnItem00* spawnedActor = NULL;
    s32 pad;
    s16 param4000 = params & 0x4000;
    s16 param8000 = params & 0x8000;
    s16 param3F00 = params & 0x3F00;

    params = params & 0x3FFF;

    if (((params & 0x00FF) == ITEM00_FLEXIBLE) && !param4000) {
        // TODO: Prevent the cast to EnItem00 here since this is a different actor (En_Elf)
        spawnedActor = (EnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, spawnPos->x,
                                              spawnPos->y + 40.0f, spawnPos->z, 0, 0, 0, 0x0002);
        func_8002A9F4(globalCtx, spawnPos, 0x28E7, 1, 1, 0x28);
    } else {
        params = func_8001F404(params & 0x00FF);
        if (params != -1) {
            spawnedActor = (EnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, spawnPos->x,
                                                  spawnPos->y, spawnPos->z, 0, 0, 0, params | param8000 | param3F00);
            if ((spawnedActor != NULL) && !param8000) {
                spawnedActor->actor.velocity.y = 0.0f;
                spawnedActor->actor.speedXZ = 0.0f;
                spawnedActor->actor.gravity = param4000 ? 0.0f : -0.9f;
                spawnedActor->actor.posRot.rot.y = Math_Rand_CenteredFloat(65536.0f);
                spawnedActor->actor.flags |= 0x0010;
            }
        }
    }

    return (Actor*)spawnedActor;
}

void Item_DropCollectibleRandom(GlobalContext* globalCtx, Actor* fromActor, Vec3f* spawnPos, s16 params) {
    s32 pad;
    EnItem00* spawnedActor;
    s16 dropQuantity;
    s16 param8000;
    s16 dropTableIndex;
    u8 dropId;

    dropTableIndex = Math_Rand_ZeroOne() * 16.0f;
    param8000 = params & 0x8000;
    params = params & 0x7FFF;

    if (fromActor != NULL) {
        if (fromActor->unk_116) {
            if (fromActor->unk_116 & 0x01) {
                params = 1 * 0x10;
                dropTableIndex = 0xB;
            } else if (fromActor->unk_116 & 0x02) {
                params = 1 * 0x10;
                dropTableIndex = 0x6;
            } else if (fromActor->unk_116 & 0x04) {
                params = 6 * 0x10;
                dropTableIndex = 0x9;
            } else if (fromActor->unk_116 & 0x08) {
                params = 3 * 0x10;
                dropTableIndex = 0xB;
            } else if (fromActor->unk_116 & 0x10) {
                params = 6 * 0x10;
                dropTableIndex = 0xC;
            } else if (fromActor->unk_116 & 0x20) {
                params = 0 * 0x10;
                dropTableIndex = 0x0;
            } else if (fromActor->unk_116 & 0x40) {
                params = 0 * 0x10;
                dropTableIndex = 0x1;
            }
        }
        if (fromActor->unk_116 & 0x20) {
            dropId = ITEM00_RUPEE_PURPLE;
        } else {
            dropId = D_80115574[params + dropTableIndex];
        }
    } else {
        dropId = D_80115574[params + dropTableIndex];
    }

    if (dropId == ITEM00_FLEXIBLE) {
        if (gSaveContext.health <= 0x10) { // 1 heart or less
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, spawnPos->x, spawnPos->y + 40.0f, spawnPos->z, 0,
                        0, 0, 0x0002);
            func_8002A9F4(globalCtx, spawnPos, 0x28E7, 1, 1, 0x28);
            return;
        } else if (gSaveContext.health <= 0x30) { // 3 hearts or less
            params = 0xB * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_HEART;
        } else if (gSaveContext.health <= 0x50) { // 5 hearts or less
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_HEART;
        } else if ((gSaveContext.magicLevel != 0) && (gSaveContext.magic == 0)) { // Empty magic meter
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_MAGIC_LARGE;
        } else if ((gSaveContext.magicLevel != 0) &&
                   (gSaveContext.magic <= (gSaveContext.magicLevel >> 1))) { // Half magic or less
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_MAGIC_SMALL;
        } else if (LINK_IS_CHILD && (AMMO(ITEM_SLINGSHOT) < 6)) { // Child and less then 6 deku seeds
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_SEEDS;
        } else if (LINK_IS_ADULT && (AMMO(ITEM_BOW) < 6)) { // Adult and less than 6 arrows
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_ARROWS_MEDIUM;
        } else if (AMMO(ITEM_BOMB) < 6) { // Less than 6 bombs
            params = 0xD * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_BOMBS_A;
        } else if (gSaveContext.rupees < 11) { // Less than 11 Rupees
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = ITEM00_RUPEE_RED;
        } else {
            return;
        }
    }

    if (dropId != 0xFF) {
        dropQuantity = D_80115664[params + dropTableIndex];
        while (dropQuantity > 0) {
            if (!param8000) {
                dropId = func_8001F404(dropId);
                if (dropId != 0xFF) {
                    spawnedActor = (EnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, spawnPos->x,
                                                          spawnPos->y, spawnPos->z, 0, 0, 0, dropId);
                    if ((spawnedActor != NULL) && (dropId != 0xFF)) {
                        spawnedActor->actor.velocity.y = 8.0f;
                        spawnedActor->actor.speedXZ = 2.0f;
                        spawnedActor->actor.gravity = -0.9f;
                        spawnedActor->actor.posRot.rot.y = Math_Rand_ZeroOne() * 40000.0f;
                        Actor_SetScale(&spawnedActor->actor, 0.0f);
                        EnItem00_SetupAction(spawnedActor, func_8001E304);
                        spawnedActor->actor.flags |= 0x0010;
                        if ((spawnedActor->actor.params != ITEM00_SMALL_KEY) &&
                            (spawnedActor->actor.params != ITEM00_HEART_PIECE) &&
                            (spawnedActor->actor.params != ITEM00_HEART_CONTAINER)) {
                            spawnedActor->actor.room = -1;
                        }
                        spawnedActor->unk_15A = 220;
                    }
                }
            } else {
                Item_DropCollectible(globalCtx, spawnPos, params | 0x8000);
            }
            dropQuantity--;
        }
    }
}
