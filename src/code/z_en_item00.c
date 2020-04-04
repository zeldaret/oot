#include <ultra64.h>
#include <global.h>

typedef enum {
    /* 0x00 */ DROP_RUPEE_GREEN,
    /* 0x01 */ DROP_RUPEE_BLUE,
    /* 0x02 */ DROP_RUPEE_RED,
    /* 0x03 */ DROP_HEART,
    /* 0x04 */ DROP_BOMBS_A,
    /* 0x05 */ DROP_ARROWS_SINGLE,
    /* 0x06 */ DROP_HEART_PIECE,
    /* 0x07 */ DROP_HEART_CONTAINER,
    /* 0x08 */ DROP_ARROWS_SMALL,
    /* 0x09 */ DROP_ARROWS_MEDIUM,
    /* 0x0A */ DROP_ARROWS_LARGE,
    /* 0x0B */ DROP_BOMBS_B,
    /* 0x0C */ DROP_NUTS,
    /* 0x0D */ DROP_STICK,
    /* 0x0E */ DROP_MAGIC_LARGE,
    /* 0x0F */ DROP_MAGIC_SMALL,
    /* 0x10 */ DROP_SEEDS,
    /* 0x11 */ DROP_SMALL_KEY,
    /* 0x12 */ DROP_FLEXIBLE,
    /* 0x13 */ DROP_RUPEE_ORANGE,
    /* 0x14 */ DROP_RUPEE_PURPLE,
    /* 0x15 */ DROP_SHIELD_DEKU,
    /* 0x16 */ DROP_SHIELD_HYLIAN,
    /* 0x17 */ DROP_TUNIC_ZORA,
    /* 0x18 */ DROP_TUNIC_GORON,
    /* 0x19 */ DROP_BOMBS_SPECIAL
} DropType;

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ActorFunc updateFunc;
    /* 0x150 */ s16 collectibleFlag;
    /* 0x152 */ s16 unk_152;
    /* 0x154 */ s16 unk_154;
    /* 0x156 */ s16 unk_156;
    /* 0x158 */ s16 unk_158;
    /* 0x15A */ s16 unk_15A;
    /* 0x15C */ f32 unk_15C;
    /* 0x160 */ ColliderCylinderMain cylinderCollider;
} ActorEnItem00;

void func_8001DFC8(ActorEnItem00* this, GlobalContext* globalCtx);
void func_8001E1C8(ActorEnItem00* this, GlobalContext* globalCtx);
void func_8001E304(ActorEnItem00* this, GlobalContext* globalCtx);
void func_8001E5C8(ActorEnItem00* this, GlobalContext* globalCtx);

// TODO: Define this part of code .data here and rename the symbols
extern ActorInit En_Item00_InitVars;
extern ColliderCylinderInit D_801154E0;
extern InitChainEntry D_8011550C[];
extern Color_RGB8 D_80115510;
extern Color_RGB8 D_80115514;
extern UNK_TYPE D_80115518;
extern UNK_TYPE D_80115524;
extern u32 D_80115530[];
extern u32 D_80115544[];
extern u8 D_80115574[];
extern u8 D_80115664[];

// Internal Actor Functions

void En_Item00_SetNewUpdate(ActorEnItem00* this, ActorFunc newUpdateFunc) {
    this->updateFunc = newUpdateFunc;
}

#ifdef NON_MATCHING
// Very close to matching, just a single ordering issue
void En_Item00_Init(ActorEnItem00* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    f32 sp34;
    f32 sp30;
    s32 sp2C;
    s16 spawnParam8000;
    s32 pad3;

    sp34 = 980.0f;
    sp30 = 6.0f;
    sp2C = 0;

    spawnParam8000 = this->actor.params & 0x8000;
    this->collectibleFlag = (this->actor.params & 0x3F00) >> 8;

    this->actor.params = this->actor.params & 0x00FF;

    if (Flags_GetCollectible(globalCtx, this->collectibleFlag)) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_ProcessInitChain(&this->actor, D_8011550C);
    ActorCollider_AllocCylinder(globalCtx, &this->cylinderCollider);
    ActorCollider_InitCylinder(globalCtx, &this->cylinderCollider, &this->actor, &D_801154E0);

    this->unk_158 = 1;

    switch (this->actor.params) {
        case DROP_RUPEE_GREEN:
        case DROP_RUPEE_BLUE:
        case DROP_RUPEE_RED:
            Actor_SetScale(&this->actor, 0.015f);
            this->unk_15C = 0.015f;
            sp34 = 750.0f;
            break;
        case DROP_SMALL_KEY:
            this->unk_158 = 0;
            Actor_SetScale(&this->actor, 0.03f);
            this->unk_15C = 0.03f;
            sp34 = 350.0f;
            break;
        case DROP_HEART_PIECE:
            this->unk_158 = 0;
            sp34 = 650.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case DROP_HEART:
            this->actor.initPosRot.rot.z = Math_Rand_CenteredFloat(65535.0f);
            sp34 = 430.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case DROP_HEART_CONTAINER:
            sp34 = 430.0f;
            this->unk_158 = 0;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case DROP_ARROWS_SINGLE:
            sp34 = 400.0f;
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_15C = 0.02f;
            break;
        case DROP_ARROWS_SMALL:
        case DROP_ARROWS_MEDIUM:
        case DROP_ARROWS_LARGE:
            Actor_SetScale(&this->actor, 0.035f);
            this->unk_15C = 0.035f;
            sp34 = 250.0f;
            break;
        case DROP_BOMBS_A:
        case DROP_BOMBS_B:
        case DROP_NUTS:
        case DROP_STICK:
        case DROP_MAGIC_SMALL:
        case DROP_SEEDS:
        case DROP_BOMBS_SPECIAL:
            Actor_SetScale(&this->actor, 0.03f);
            this->unk_15C = 0.03f;
            sp34 = 320.0f;
            break;
        case DROP_MAGIC_LARGE:
            Actor_SetScale(&this->actor, 0.045 - 1e-10);
            this->unk_15C = 0.045 - 1e-10;
            sp34 = 320.0f;
            break;
        case DROP_RUPEE_ORANGE:
            Actor_SetScale(&this->actor, 0.045 - 1e-10);
            this->unk_15C = 0.045 - 1e-10;
            sp34 = 750.0f;
            break;
        case DROP_RUPEE_PURPLE:
            Actor_SetScale(&this->actor, 0.03f);
            this->unk_15C = 0.03f;
            sp34 = 750.0f;
            break;
        case DROP_FLEXIBLE:
            sp34 = 500.0f;
            Actor_SetScale(&this->actor, 0.01f);
            this->unk_15C = 0.01f;
            break;
        case DROP_SHIELD_DEKU:
            this->actor.objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GI_SHIELD_1);
            Actor_SetObjectDependency(globalCtx, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->unk_15C = 0.5f;
            sp34 = 0.0f;
            sp30 = 0.6f;
            this->actor.posRot.rot.x = 0x4000;
            break;
        case DROP_SHIELD_HYLIAN:
            this->actor.objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GI_SHIELD_2);
            Actor_SetObjectDependency(globalCtx, &this->actor);
            Actor_SetScale(&this->actor, 0.5f);
            this->unk_15C = 0.5f;
            sp34 = 0.0f;
            sp30 = 0.6f;
            this->actor.posRot.rot.x = 0x4000;
            break;
        case DROP_TUNIC_ZORA:
        case DROP_TUNIC_GORON:
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

    // MISMATCH: minor ordering issues here
    if (!spawnParam8000) {
        En_Item00_SetNewUpdate(this, (ActorFunc)func_8001DFC8);
        this->unk_15A = -1;
        return;
    }

    this->unk_15A = 15;
    this->unk_154 = 35;

    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;

    switch (this->actor.params) {
        case DROP_RUPEE_GREEN:
            Item_Give(globalCtx, ITEM_RUPEE_GREEN);
            break;
        case DROP_RUPEE_BLUE:
            Item_Give(globalCtx, ITEM_RUPEE_BLUE);
            break;
        case DROP_RUPEE_RED:
            Item_Give(globalCtx, ITEM_RUPEE_RED);
            break;
        case DROP_RUPEE_PURPLE:
            Item_Give(globalCtx, ITEM_RUPEE_PURPLE);
            break;
        case DROP_RUPEE_ORANGE:
            Item_Give(globalCtx, ITEM_RUPEE_GOLD);
            break;
        case DROP_HEART:
            Item_Give(globalCtx, ITEM_HEART);
            break;
        case DROP_FLEXIBLE:
            Health_ChangeBy(globalCtx, 0x70);
            break;
        case DROP_BOMBS_A:
        case DROP_BOMBS_B:
            Item_Give(globalCtx, ITEM_BOMBS_5);
            break;
        case DROP_ARROWS_SINGLE:
            Item_Give(globalCtx, ITEM_BOW);
            break;
        case DROP_ARROWS_SMALL:
            Item_Give(globalCtx, ITEM_ARROWS_SMALL);
            break;
        case DROP_ARROWS_MEDIUM:
            Item_Give(globalCtx, ITEM_ARROWS_MEDIUM);
            break;
        case DROP_ARROWS_LARGE:
            Item_Give(globalCtx, ITEM_ARROWS_LARGE);
            break;
        case DROP_MAGIC_SMALL:
            sp2C = GI_MAGIC_SMALL;
            break;
        case DROP_MAGIC_LARGE:
            sp2C = GI_MAGIC_LARGE;
            break;
        case DROP_SMALL_KEY:
            Item_Give(globalCtx, ITEM_KEY_SMALL);
            break;
        case DROP_SEEDS:
            sp2C = GI_SEEDS_5;
            break;
        case DROP_NUTS:
            sp2C = GI_NUTS_5;
            break;
        case DROP_STICK:
            sp2C = GI_STICKS_1;
            break;
        case DROP_HEART_PIECE:
        case DROP_HEART_CONTAINER:
        case DROP_SHIELD_DEKU:
        case DROP_SHIELD_HYLIAN:
        case DROP_TUNIC_ZORA:
        case DROP_TUNIC_GORON:
        case DROP_BOMBS_SPECIAL:
            break;
    }

    if ((sp2C != 0) && !func_8002F410(&this->actor, globalCtx)) {
        func_8002F554(&this->actor, globalCtx, sp2C);
    }

    En_Item00_SetNewUpdate(this, (ActorFunc)func_8001E5C8);
    this->updateFunc(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_en_item00/En_Item00_Init.s")
#endif

void En_Item00_Destroy(ActorEnItem00* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* cylinderCollider = &this->cylinderCollider;
    ActorCollider_FreeCylinder(globalCtx, cylinderCollider);
}

void func_8001DFC8(ActorEnItem00* this, GlobalContext* globalCtx) {
    if ((this->actor.params <= DROP_RUPEE_RED) || ((this->actor.params == DROP_HEART) && (this->unk_15A < 0)) ||
        (this->actor.params == DROP_HEART_PIECE)) {
        this->actor.shape.rot.y += 960;
    } else {
        if ((this->actor.params >= DROP_SHIELD_DEKU) && (this->actor.params != DROP_BOMBS_SPECIAL)) {
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

    if (this->actor.params == DROP_HEART_PIECE) {
        this->actor.shape.unk_08 = Math_Sins(this->actor.shape.rot.y) * 150.0f + 850.0f;
    }

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);

    if (this->unk_154 == 0) {
        if ((this->actor.params != DROP_SMALL_KEY) && (this->actor.params != DROP_HEART_PIECE) &&
            (this->actor.params != DROP_HEART_CONTAINER)) {
            this->unk_154 = -1;
        }
    }

    if (this->unk_15A == 0) {
        if ((this->actor.params != DROP_SMALL_KEY) && (this->actor.params != DROP_HEART_PIECE) &&
            (this->actor.params != DROP_HEART_CONTAINER)) {
            Actor_Kill(&this->actor);
        }
    }

    if ((this->actor.gravity != 0.0f) && !(this->actor.bgCheckFlags & 0x0001)) {
        En_Item00_SetNewUpdate(this, (ActorFunc)func_8001E1C8);
    }
}

void func_8001E1C8(ActorEnItem00* this, GlobalContext* globalCtx) {
    f32 originalVelocity;
    Vec3f pos;

    if (this->actor.params <= DROP_RUPEE_RED) {
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
            En_Item00_SetNewUpdate(this, (ActorFunc)func_8001DFC8);
            this->actor.velocity.y = 0.0f;
        } else {
            this->actor.velocity.y = originalVelocity * -0.8f;
            this->actor.bgCheckFlags = this->actor.bgCheckFlags & 0xFFFE;
        }
    }
}

void func_8001E304(ActorEnItem00* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f pos;
    s32 var1;

    this->unk_15A++;

    if (this->actor.params == DROP_HEART) {
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

    if (this->actor.params <= DROP_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    } else if ((this->actor.params >= DROP_SHIELD_DEKU) && (this->actor.params != DROP_BOMBS_SPECIAL)) {
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
        En_Item00_SetNewUpdate(this, (ActorFunc)func_8001DFC8);
        this->actor.shape.rot.z = 0;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

void func_8001E5C8(ActorEnItem00* this, GlobalContext* globalCtx) {
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

    if (this->actor.params <= DROP_RUPEE_RED) {
        this->actor.shape.rot.y += 960;
    } else if (this->actor.params == DROP_HEART) {
        this->actor.shape.rot.y = 0;
    }

    this->actor.posRot.pos.y += 40.0f + Math_Sins(this->unk_15A * 15000) * (this->unk_15A * 0.3f);

    if
        LINK_IS_ADULT
    this->actor.posRot.pos.y += 20.0f;
}

extern s32 D_80157D90;
extern u32 D_80157D90_; // these must be defined separately for En_Item00_Update to match
extern s16 D_80157D94;

#ifdef NON_MATCHING
// Almost matching, just a few minor ordering issues
void En_Item00_Update(ActorEnItem00* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    s32 sp3C;
    s16 sp3A;
    Actor* dynaActor;
    s16 i;

    sp3C = 0;
    sp3A = 0;

    if (this->unk_15A > 0) {
        this->unk_15A--;
    }

    if ((this->unk_15A > 0) && (this->unk_15A < 41) && (this->unk_154 <= 0)) {
        this->unk_156 = this->unk_15A;
    }

    this->updateFunc(this, globalCtx);

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

    ActorCollider_Cylinder_Update(&this->actor, &this->cylinderCollider);
    Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, &this->cylinderCollider);

    if ((this->actor.params == DROP_SHIELD_DEKU) || (this->actor.params == DROP_SHIELD_HYLIAN) ||
        (this->actor.params == DROP_TUNIC_ZORA) || (this->actor.params == DROP_TUNIC_GORON)) {
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

    // MISMATCH: The first function argument is loaded too early here
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
        case DROP_RUPEE_GREEN:
            Item_Give(globalCtx, ITEM_RUPEE_GREEN);
            break;
        case DROP_RUPEE_BLUE:
            Item_Give(globalCtx, ITEM_RUPEE_BLUE);
            break;
        case DROP_RUPEE_RED:
            Item_Give(globalCtx, ITEM_RUPEE_RED);
            break;
        case DROP_RUPEE_PURPLE:
            Item_Give(globalCtx, ITEM_RUPEE_PURPLE);
            break;
        case DROP_RUPEE_ORANGE:
            Item_Give(globalCtx, ITEM_RUPEE_GOLD);
            break;
        case DROP_STICK:
            sp3C = GI_STICKS_1;
            break;
        case DROP_NUTS:
            sp3C = GI_NUTS_5;
            break;
        case DROP_HEART:
            Item_Give(globalCtx, ITEM_HEART);
            break;
        case DROP_FLEXIBLE:
            Health_ChangeBy(globalCtx, 0x70);
            break;
        case DROP_BOMBS_A:
        case DROP_BOMBS_B:
            Item_Give(globalCtx, ITEM_BOMBS_5);
            break;
        case DROP_ARROWS_SINGLE:
            Item_Give(globalCtx, ITEM_BOW);
            break;
        case DROP_ARROWS_SMALL:
            Item_Give(globalCtx, ITEM_ARROWS_SMALL);
            break;
        case DROP_ARROWS_MEDIUM:
            Item_Give(globalCtx, ITEM_ARROWS_MEDIUM);
            break;
        case DROP_ARROWS_LARGE:
            Item_Give(globalCtx, ITEM_ARROWS_LARGE);
            break;
        case DROP_SEEDS:
            sp3C = GI_SEEDS_5;
            break;
        case DROP_SMALL_KEY:
            sp3C = GI_KEY_SMALL;
            break;
        case DROP_HEART_PIECE:
            sp3C = GI_HEART_PIECE;
            break;
        case DROP_HEART_CONTAINER:
            sp3C = GI_HEART_CONTAINER;
            break;
        case DROP_MAGIC_LARGE:
            sp3C = GI_MAGIC_LARGE;
            break;
        case DROP_MAGIC_SMALL:
            sp3C = GI_MAGIC_SMALL;
            break;
        case DROP_SHIELD_DEKU:
            sp3C = GI_SHIELD_DEKU;
            break;
        case DROP_SHIELD_HYLIAN:
            sp3C = GI_SHIELD_HYLIAN;
            break;
        case DROP_TUNIC_ZORA:
            sp3C = GI_TUNIC_ZORA;
            break;
        case DROP_TUNIC_GORON:
            sp3C = GI_TUNIC_GORON;
            break;
        case DROP_BOMBS_SPECIAL:
            break;
    }

    // MISMATCH: The first function argument is also loaded too early here
    if ((sp3C != 0) && !func_8002F410(&this->actor, globalCtx)) {
        func_8002F554(&this->actor, globalCtx, sp3C);
    }

    switch (this->actor.params) {
        case DROP_HEART_PIECE:
        case DROP_HEART_CONTAINER:
        case DROP_SMALL_KEY:
        case DROP_SHIELD_DEKU:
        case DROP_SHIELD_HYLIAN:
        case DROP_TUNIC_ZORA:
        case DROP_TUNIC_GORON:
            if (func_8002F410(&this->actor, globalCtx)) {
                Flags_SetCollectible(globalCtx, this->collectibleFlag);
                Actor_Kill(&this->actor);
            }
            return;
    }

    if ((this->actor.params <= DROP_RUPEE_RED) || (this->actor.params == DROP_RUPEE_ORANGE)) {
        Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (sp3C != 0) {
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
    En_Item00_SetNewUpdate(this, (ActorFunc)func_8001E5C8);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_en_item00/En_Item00_Update.s")
#endif

// Draw Function prototypes (used in En_Item00_Draw)
void func_8001EF30(ActorEnItem00* this, GlobalContext* globalCtx);
void func_8001F080(ActorEnItem00* this, GlobalContext* globalCtx);
void func_8001F1F4(ActorEnItem00* this, GlobalContext* globalCtx);
void func_8001F334(ActorEnItem00* this, GlobalContext* globalCtx);

void En_Item00_Draw(ActorEnItem00* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 unkFloat;

    if (!(this->unk_156 & this->unk_158)) {
        switch (this->actor.params) {
            case DROP_RUPEE_GREEN:
            case DROP_RUPEE_BLUE:
            case DROP_RUPEE_RED:
            case DROP_RUPEE_ORANGE:
            case DROP_RUPEE_PURPLE:
                func_8001EF30(this, globalCtx);
                break;
            case DROP_HEART_PIECE:
                func_8001F334(this, globalCtx);
                break;
            case DROP_HEART_CONTAINER:
                func_8001F1F4(this, globalCtx);
                break;
            case DROP_HEART:
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
            case DROP_BOMBS_A:
            case DROP_BOMBS_B:
            case DROP_BOMBS_SPECIAL:
            case DROP_ARROWS_SINGLE:
            case DROP_ARROWS_SMALL:
            case DROP_ARROWS_MEDIUM:
            case DROP_ARROWS_LARGE:
            case DROP_NUTS:
            case DROP_STICK:
            case DROP_MAGIC_LARGE:
            case DROP_MAGIC_SMALL:
            case DROP_SEEDS:
            case DROP_SMALL_KEY:
                func_8001F080(this, globalCtx);
                break;
            case DROP_SHIELD_DEKU:
                func_800694A0(globalCtx, 0x1C);
                break;
            case DROP_SHIELD_HYLIAN:
                func_800694A0(globalCtx, 0x2B);
                break;
            case DROP_TUNIC_ZORA:
                func_800694A0(globalCtx, 0x3C);
                break;
            case DROP_TUNIC_GORON:
                func_800694A0(globalCtx, 0x3B);
                break;
            case DROP_FLEXIBLE:
                break;
        }
    }
}

/**
 * Draw Function used for Rupee types of En_Item00.
 */
void func_8001EF30(ActorEnItem00* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 iconNb;
    Gfx* gfxArr[5];

    Graph_OpenDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1546);

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);

    if (1) { // Necessary to match
        if (this->actor.params <= DROP_RUPEE_RED) {
            iconNb = this->actor.params;
        } else {
            iconNb = this->actor.params - 0x10;
        }
    }

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1562),
              G_MTX_MODELVIEW | G_MTX_LOAD);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80115530[iconNb]));

    gSPDisplayList(gfxCtx->polyOpa.p++, &D_04042440);

    Graph_CloseDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1568);
}

/**
 * Draw Function used for most collectible types of En_Item00 (ammo, bombs, sticks, nuts, magic...).
 */
void func_8001F080(ActorEnItem00* this, GlobalContext* globalCtx) {
    s32 iconNb;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    iconNb = this->actor.params - 3;

    Graph_OpenDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1594);

    gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);

    if (this->actor.params == DROP_BOMBS_SPECIAL) {
        iconNb = 1;
    } else if (this->actor.params >= DROP_ARROWS_SMALL) {
        iconNb -= 3;
    }

    gfxCtx->polyOpa.p = func_800946E4(gfxCtx->polyOpa.p);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80115544[iconNb]));

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1607),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_0403F070);

    Graph_CloseDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1611);
}

/**
 * Draw Function used for the Heart Container type of En_Item00.
 */
void func_8001F1F4(ActorEnItem00* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[5];

    Graph_OpenDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1623);

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

    Graph_CloseDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1647);
}

/**
 * Draw Function used for the Piece of Heart type of En_Item00.
 */
void func_8001F334(ActorEnItem00* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[5];

    Graph_OpenDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1658);

    func_80093D84(globalCtx->state.gfxCtx);
    func_8002ED80(&this->actor, globalCtx, 0);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_item00.c", 1670),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_0403B030);

    Graph_CloseDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_item00.c", 1673);
}

/**
 * Converts a given drop type ID based on link's current age, health and owned items.
 * Returns a new drop type ID or -1 to cancel the drop.
 */
s16 func_8001F404(s16 dropId) {
    if (LINK_IS_ADULT) {
        if (dropId == DROP_SEEDS) {
            dropId = DROP_ARROWS_SMALL;
        } else if (dropId == DROP_STICK) {
            dropId = DROP_RUPEE_GREEN;
        }
    } else {
        if (dropId == DROP_ARROWS_SMALL || dropId == DROP_ARROWS_MEDIUM || dropId == DROP_ARROWS_LARGE) {
            dropId = DROP_SEEDS;
        }
    }

    // This is convoluted but it seems like it must be a single condition to match
    // clang-format off
    if (((dropId == DROP_BOMBS_A      || dropId == DROP_BOMBS_SPECIAL || dropId == DROP_BOMBS_B)      && INV_CONTENT(ITEM_BOMB) == ITEM_NONE) ||
        ((dropId == DROP_ARROWS_SMALL || dropId == DROP_ARROWS_MEDIUM || dropId == DROP_ARROWS_LARGE) && INV_CONTENT(ITEM_BOW) == ITEM_NONE) ||
        ((dropId == DROP_MAGIC_LARGE  || dropId == DROP_MAGIC_SMALL)                                  && gSaveContext.magic_level == 0) ||
        ((dropId == DROP_SEEDS)                                                                       && INV_CONTENT(ITEM_SLINGSHOT) == ITEM_NONE)) {
        return -1;
    }
    // clang-format on

    if (dropId == DROP_HEART && gSaveContext.health_capacity == gSaveContext.health) {
        return DROP_RUPEE_GREEN;
    }

    return dropId;
}

// External functions used by other actors to drop collectibles, which usually results in spawning an En_Item00 actor.

Actor* Item_DropCollectible(GlobalContext* globalCtx, Vec3f* spawnPos, s16 params) {
    s32 pad[2];
    ActorEnItem00* spawnedActor = NULL;
    s16 param4000 = params & 0x4000;
    s16 param8000 = params & 0x8000;
    s16 param3F00 = params & 0x3F00;

    params = params & 0x3FFF;

    if (((params & 0x00FF) == DROP_FLEXIBLE) && !param4000) {
        // TODO: Prevent the cast to ActorEnItem00 here since this is a different actor (En_Elf)
        spawnedActor = (ActorEnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, spawnPos->x,
                                                   spawnPos->y + 40.0f, spawnPos->z, 0, 0, 0, 0x0002);
        func_8002A9F4(globalCtx, spawnPos, 0x28E7, 1, 1, 0x28);
    } else {
        if (!param8000) {
            params = func_8001F404(params & 0x00FF);
        }

        if (params != -1) {
            spawnedActor =
                (ActorEnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, spawnPos->x, spawnPos->y,
                                            spawnPos->z, 0, 0, 0, params | param8000 | param3F00);
            if ((spawnedActor != NULL) && !param8000) {
                spawnedActor->actor.velocity.y = !param4000 ? 8.0f : -2.0f;
                spawnedActor->actor.speedXZ = 2.0f;
                spawnedActor->actor.gravity = -0.9f;
                spawnedActor->actor.posRot.rot.y = Math_Rand_CenteredFloat(65536.0f);
                Actor_SetScale(&spawnedActor->actor, 0.0f);
                En_Item00_SetNewUpdate(spawnedActor, (ActorFunc)func_8001E304);
                spawnedActor->unk_15A = 220;
                if ((spawnedActor->actor.params != DROP_SMALL_KEY) &&
                    (spawnedActor->actor.params != DROP_HEART_PIECE) &&
                    (spawnedActor->actor.params != DROP_HEART_CONTAINER)) {
                    spawnedActor->actor.room = -1;
                }
                spawnedActor->actor.flags |= 0x0010;
            }
        }
    }

    return (Actor*)spawnedActor;
}

Actor* Item_DropCollectible2(GlobalContext* globalCtx, Vec3f* spawnPos, s16 params) {
    ActorEnItem00* spawnedActor = NULL;
    s32 pad;
    s16 param4000 = params & 0x4000;
    s16 param8000 = params & 0x8000;
    s16 param3F00 = params & 0x3F00;

    params = params & 0x3FFF;

    if (((params & 0x00FF) == DROP_FLEXIBLE) && !param4000) {
        // TODO: Prevent the cast to ActorEnItem00 here since this is a different actor (En_Elf)
        spawnedActor = (ActorEnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, spawnPos->x,
                                                   spawnPos->y + 40.0f, spawnPos->z, 0, 0, 0, 0x0002);
        func_8002A9F4(globalCtx, spawnPos, 0x28E7, 1, 1, 0x28);
    } else {
        params = func_8001F404(params & 0x00FF);
        if (params != -1) {
            spawnedActor =
                (ActorEnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, spawnPos->x, spawnPos->y,
                                            spawnPos->z, 0, 0, 0, params | param8000 | param3F00);
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
    ActorEnItem00* spawnedActor;
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
            dropId = DROP_RUPEE_PURPLE;
        } else {
            dropId = D_80115574[params + dropTableIndex];
        }
    } else {
        dropId = D_80115574[params + dropTableIndex];
    }

    if (dropId == DROP_FLEXIBLE) {
        if (gSaveContext.health <= 0x10) { // 1 heart or less
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, spawnPos->x, spawnPos->y + 40.0f, spawnPos->z, 0,
                        0, 0, 0x0002);
            func_8002A9F4(globalCtx, spawnPos, 0x28E7, 1, 1, 0x28);
            return;
        } else if (gSaveContext.health <= 0x30) { // 3 hearts or less
            params = 0xB * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_HEART;
        } else if (gSaveContext.health <= 0x50) { // 5 hearts or less
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_HEART;
        } else if ((gSaveContext.magic_level != 0) && (gSaveContext.magic == 0)) { // Empty magic meter
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_MAGIC_LARGE;
        } else if ((gSaveContext.magic_level != 0) &&
                   (gSaveContext.magic <= (gSaveContext.magic_level >> 1))) { // Half magic or less
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_MAGIC_SMALL;
        } else if (LINK_IS_CHILD && (AMMO(ITEM_SLINGSHOT) < 6)) { // Child and less then 6 deku seeds
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_SEEDS;
        } else if (LINK_IS_ADULT && (AMMO(ITEM_BOW) < 6)) { // Adult and less than 6 arrows
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_ARROWS_MEDIUM;
        } else if (AMMO(ITEM_BOMB) < 6) { // Less than 6 bombs
            params = 0xD * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_BOMBS_A;
        } else if (gSaveContext.rupees < 11) { // Less than 11 Rupees
            params = 0xA * 0x10;
            dropTableIndex = 0x0;
            dropId = DROP_RUPEE_RED;
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
                    spawnedActor = (ActorEnItem00*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00,
                                                               spawnPos->x, spawnPos->y, spawnPos->z, 0, 0, 0, dropId);
                    if ((spawnedActor != NULL) && (dropId != 0xFF)) {
                        spawnedActor->actor.velocity.y = 8.0f;
                        spawnedActor->actor.speedXZ = 2.0f;
                        spawnedActor->actor.gravity = -0.9f;
                        spawnedActor->actor.posRot.rot.y = Math_Rand_ZeroOne() * 40000.0f;
                        Actor_SetScale(&spawnedActor->actor, 0.0f);
                        En_Item00_SetNewUpdate(spawnedActor, (ActorFunc)func_8001E304);
                        spawnedActor->actor.flags |= 0x0010;
                        if ((spawnedActor->actor.params != DROP_SMALL_KEY) &&
                            (spawnedActor->actor.params != DROP_HEART_PIECE) &&
                            (spawnedActor->actor.params != DROP_HEART_CONTAINER)) {
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
