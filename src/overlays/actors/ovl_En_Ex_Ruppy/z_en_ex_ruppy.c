#include "z_en_ex_ruppy.h"
#include "vt.h"
#include "../ovl_En_Diving_Game/z_en_diving_game.h"

#define FLAGS 0x00000010

#define THIS ((EnExRuppy*)thisx)

void EnExRuppy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnExRuppy_DropIntoWater(EnExRuppy* this, GlobalContext* globalCtx);
void EnExRuppy_WaitToBlowUp(EnExRuppy* this, GlobalContext* globalCtx);
void EnExRuppy_WaitAsCollectible(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0B0F4(EnExRuppy* this, GlobalContext* globalCtx);
void EnExRuppy_EnterWater(EnExRuppy* this, GlobalContext* globalCtx);
void EnExRuppy_Sink(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AD88(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AEE0(EnExRuppy* this, GlobalContext* globalCtx);

static s16 sEnExRuppyCollectibleTypes[] = {
    ITEM00_RUPEE_GREEN, ITEM00_RUPEE_BLUE, ITEM00_RUPEE_RED, ITEM00_RUPEE_ORANGE, ITEM00_RUPEE_PURPLE,
};

static s16 D_80A0B32B[] = {
    1, 5, 20, 500, 50,
};

const ActorInit En_Ex_Ruppy_InitVars = {
    ACTOR_EN_EX_RUPPY,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnExRuppy),
    (ActorFunc)EnExRuppy_Init,
    (ActorFunc)EnExRuppy_Destroy,
    (ActorFunc)EnExRuppy_Update,
    (ActorFunc)EnExRuppy_Draw,
};

void EnExRuppy_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnExRuppy* this = THIS;
    EnDivingGame* divingGame;
    f32 temp1;
    f32 temp2;
    s16 temp3;

    this->unk_152 = this->actor.params;

    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ インデックス ☆☆☆☆☆ %x\n" VT_RST, this->unk_152); // "Index"
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 25.0f);

    switch (this->unk_152) {
        case 0:
            this->unk_160 = 0.01f;
            Actor_SetScale(&this->actor, this->unk_160);
            this->actor.room = -1;
            this->actor.gravity = 0.0f;

            // If you haven't won the diving game before, you will always get 5 rupees
            if (!(gSaveContext.eventChkInf[3] & 0x100)) {
                this->rupeeValue = 5;
                this->unk_150 = 1;
            } else {
                temp1 = 200.99f;
                if (this->actor.parent != NULL) {
                    divingGame = (EnDivingGame*)this->actor.parent;
                    if (divingGame->actor.update != NULL) {
                        temp2 = divingGame->unk_2AA * 10.0f;
                        temp1 += temp2;
                    }
                }

                temp3 = Math_Rand_ZeroFloat(temp1);
                if ((temp3 >= 0) && (temp3 < 40)) {
                    this->rupeeValue = 1;
                    this->unk_150 = 0;
                } else if ((temp3 >= 40) && (temp3 < 170)) {
                    this->rupeeValue = 5;
                    this->unk_150 = 1;
                } else if ((temp3 >= 170) && (temp3 < 190)) {
                    this->rupeeValue = 20;
                    this->unk_150 = 2;
                } else if ((temp3 >= 190) && (temp3 < 200)) {
                    this->rupeeValue = 50;
                    this->unk_150 = 4;
                } else {
                    this->unk_160 = 0.02f;
                    Actor_SetScale(&this->actor, this->unk_160);
                    this->rupeeValue = 500;
                    this->unk_150 = 3;
                    if (this->actor.parent != NULL) {
                        divingGame = (EnDivingGame*)this->actor.parent;
                        if (divingGame->actor.update != NULL) {
                            divingGame->unk_2AA = 0;
                        }
                    }
                }
            }

            this->actor.shape.unk_10 = 7.0f;
            this->actor.shape.unk_08 = 700.0f;
            this->unk_15A = this->actor.posRot.rot.z;
            this->actor.posRot.rot.z = 0;
            this->timer = 30;
            this->actor.flags &= ~1;
            this->actionFunc = EnExRuppy_DropIntoWater;
            break;

        case 1:
        case 2: // Giant pink ruppe that explodes when you touch it
            if (this->unk_152 == 1) {
                Actor_SetScale(&this->actor, 0.1f);
                this->unk_150 = 4;
            } else {
                Actor_SetScale(thisx, 0.02f);
                this->unk_150 = (s16)Math_Rand_ZeroFloat(3.99f) + 1;
            }
            this->actor.gravity = -3.0f;
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ わーなーコイン ☆☆☆☆☆ \n" VT_RST); // "Wow Coin"
            this->actor.shape.unk_10 = 6.0f;
            this->actor.shape.unk_08 = 700.0f;
            this->actor.flags &= ~1;
            this->actionFunc = EnExRuppy_WaitToBlowUp;
            break;

        case 3: // Spawned by the guard in Hyrule courtyard
            Actor_SetScale(&this->actor, 0.02f);
            this->unk_150 = 0;
            switch ((s16)Math_Rand_ZeroFloat(30.99f)) {
                case 0:
                    this->unk_150 = 2;
                    break;
                case 10:
                case 20:
                case 30:
                    this->unk_150 = 1;
                    break;
            }
            this->actor.gravity = -3.0f;
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ノーマルルピー ☆☆☆☆☆ \n" VT_RST); // "Normal rupee"
            this->actor.shape.unk_10 = 6.0f;
            this->actor.shape.unk_08 = 700.0f;
            this->actor.flags &= ~1;
            this->actionFunc = EnExRuppy_WaitAsCollectible;
            break;

        case 4:
            this->actor.gravity = -3.0f;
            this->actor.flags &= ~1;
            Actor_SetScale(&this->actor, 0.01f);
            this->actor.shape.unk_10 = 6.0f;
            this->actor.shape.unk_08 = -700.0f;
            this->actionFunc = func_80A0B0F4;
            break;
    }
}

void EnExRuppy_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnExRuppy_SpawnSparkles(EnExRuppy* this, GlobalContext* globalCtx, s16 numSparkles, s32 movementType) {
    static Vec3f velocities[] = { { 0.0f, 0.1f, 0.0f }, { 0.0f, 0.0f, 0.0f } };
    static Vec3f accelerations[] = { { 0.0f, 0.01f, 0.0f }, { 0.0f, 0.0f, 0.0f } };
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    s32 i;
    s16 scale;
    s16 life;

    if (numSparkles < 1) {
        numSparkles = 1;
    }

    primColor.r = 255;
    primColor.g = 255;
    primColor.b = 0;
    envColor.r = 255;
    envColor.g = 255;
    envColor.b = 255;
    velocity = velocities[movementType];
    accel = accelerations[movementType];
    scale = 3000;
    life = 16;

    for (i = 0; i < numSparkles; i++) {
        if (movementType == 1) {
            accel.x = Math_Rand_CenteredFloat(20.0f);
            accel.z = Math_Rand_CenteredFloat(20.0f);
            scale = 5000;
            life = 20;
        }
        pos.x = (Math_Rand_ZeroOne() - 0.5f) * 10.0f + this->actor.posRot.pos.x;
        pos.y = (Math_Rand_ZeroOne() - 0.5f) * 10.0f + (this->actor.posRot.pos.y + this->unk_160 * 600.0f);
        pos.z = (Math_Rand_ZeroOne() - 0.5f) * 10.0f + this->actor.posRot.pos.z;
        EffectSsKiraKira_SpawnDispersed(globalCtx, &pos, &velocity, &accel, &primColor, &envColor, scale, life);
    }
}

void EnExRuppy_DropIntoWater(EnExRuppy* this, GlobalContext* globalCtx) {
    this->actor.shape.rot.y = (this->actor.shape.rot.y + 1960);
    Math_SmoothScaleMaxF(&this->actor.gravity, -2.0f, 0.3f, 1.0f);
    EnExRuppy_SpawnSparkles(this, globalCtx, 2, 0);
    func_80078884(NA_SE_EV_RAINBOW_SHOWER - SFX_FLAG);
    if ((this->actor.parent != NULL) && (this->actor.parent->update != NULL) &&
        (((((EnDivingGame*)this->actor.parent)->unk_296 == 0) || (this->actor.bgCheckFlags & 0x20)) ||
         (this->timer == 0))) {
        this->isFalling = 1;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.z = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.velocity.x = 0.0f;
        this->actor.gravity = 0.0f;
        func_80078914(&this->actor.projectedPos, NA_SE_EV_BOMB_DROP_WATER);
        this->actionFunc = EnExRuppy_EnterWater;
    }
}

void EnExRuppy_EnterWater(EnExRuppy* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 temp_f2;

    if (((this->actor.parent != NULL) && (this->actor.parent->update != NULL)) &&
        (((EnDivingGame*)this->actor.parent)->unk_2A2 == 2)) {
        this->isFalling = 0;
        this->actor.posRot.pos.x = ((Math_Rand_ZeroOne() - 0.5f) * 300.0f) + -260.0f;
        this->actor.posRot.pos.y = ((Math_Rand_ZeroOne() - 0.5f) * 200.0f) + 370.0f;
        temp_f2 = this->unk_15A * -50.0f;
        if (!(gSaveContext.eventChkInf[3] & 0x100)) {
            temp_f2 += -500.0f;
            this->actor.posRot.pos.z = ((Math_Rand_ZeroOne() - 0.5f) * 80.0f) + temp_f2;
        } else {
            temp_f2 += -300.0f;
            this->actor.posRot.pos.z = ((Math_Rand_ZeroOne() - 0.5f) * 60.0f) + temp_f2;
        }
        this->actionFunc = EnExRuppy_Sink;
        this->actor.gravity = -1.0f;
    }
}

void EnExRuppy_Sink(EnExRuppy* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f pos;

    if ((this->actor.bgCheckFlags & 0x20) && (15.0f < this->actor.waterY)) {
        pos = this->actor.posRot.pos;
        pos.y += this->actor.waterY;
        this->actor.velocity.y = -1.0f;
        this->actor.gravity = -0.2f;
        EffectSsGSplash_Spawn(globalCtx, &pos, 0, 0, 0, 800);
        func_80078914(&this->actor.projectedPos, NA_SE_EV_BOMB_DROP_WATER);
        this->actionFunc = func_80A0AD88;
    }
    if (((this->actor.parent != NULL) && (this->actor.parent->update != NULL) &&
         ((EnDivingGame*)this->actor.parent)->unk_29C == 0)) {
        this->timer = 20;
        this->actionFunc = func_80A0AEE0;
    }
}

void func_80A0AD88(EnExRuppy* this, GlobalContext* globalCtx) {
    EnDivingGame* divingGame;
    Vec3f D_80A0B388 = { 0.0f, 0.1f, 0.0f };
    Vec3f D_80A0B394 = { 0.0f, 0.0f, 0.0f };
    f32 localConst = 30.0f;

    if (this->timer == 0) {
        this->timer = 10;
        EffectSsBubble_Spawn(globalCtx, &this->actor.posRot.pos, 0.0f, 5.0f, 5.0f, Math_Rand_ZeroFloat(0.03f) + 0.07f);
    }
    if (this->actor.parent != NULL) {
        divingGame = (EnDivingGame*)this->actor.parent;
        if (divingGame->actor.update != NULL) {
            if (divingGame->unk_29C == 0) {
                this->timer = 20;
                this->actionFunc = func_80A0AEE0;
                return;
            }
            if (this->actor.xyzDistFromLinkSq < SQ(localConst)) {
                Rupees_ChangeBy(this->rupeeValue);
                func_80078884(NA_SE_SY_GET_RUPY);
                divingGame->unk_2A4++;
                Actor_Kill(&this->actor);
            }
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void func_80A0AEE0(EnExRuppy* this, GlobalContext* globalCtx) {
    this->isFalling += 1;
    this->isFalling &= 1;
    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnExRuppy_WaitToBlowUp(EnExRuppy* this, GlobalContext* globalCtx) {
    f32 distToBlowUp;
    Vec3f accel = { 0.0f, 0.1f, 0.0f };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    s16 explosionScale;
    s16 explosionScaleStep;
    distToBlowUp = 50.0f;
    if (this->unk_152 == 2) {
        distToBlowUp = 30.0f;
    }
    if (this->actor.xyzDistFromLinkSq < SQ(distToBlowUp)) {
        if (this->actor.parent != NULL) {
            if (this->actor.parent->update != NULL) {
                ((EnDivingGame*)this->actor.parent)->transitionDrawTable[15].z = 1;
            }
        } else {
            // "That idiot! error"
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ そ、そんなばかな！エラー！！！！！ ☆☆☆☆☆ \n" VT_RST);
        }

        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ バカめ！ ☆☆☆☆☆ \n" VT_RST); // "Stupid!"
        explosionScale = 100;
        explosionScaleStep = 30;
        if (this->unk_152 == 2) {
            explosionScale = 20;
            explosionScaleStep = 6;
        }
        EffectSsBomb2_SpawnLayered(globalCtx, &this->actor.posRot.pos, &velocity, &accel, explosionScale,
                                   explosionScaleStep);
        func_8002F71C(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f);
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
        Actor_Kill(&this->actor);
    }
}

void EnExRuppy_WaitAsCollectible(EnExRuppy* this, GlobalContext* globalCtx) {
    f32 localConst = 30.0f;
    if (this->actor.xyzDistFromLinkSq < SQ(localConst)) {
        func_80078884(NA_SE_SY_GET_RUPY);
        Item_DropCollectible(globalCtx, &this->actor.posRot.pos, (sEnExRuppyCollectibleTypes[this->unk_150] | 0x8000));
        Actor_Kill(&this->actor);
    }
}

void func_80A0B0F4(EnExRuppy* this, GlobalContext* globalCtx) {
    if (this->unk_15C != 0) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_08, 700.0f, 0.5f, 200.0f);
    } else {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_08, -700.0f, 0.5f, 200.0f);
    }
}

void EnExRuppy_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnExRuppy* this = THIS;

    this->actor.shape.rot.y += 1960;
    this->actionFunc(this, globalCtx);
    if (this->timer != 0) {
        this->timer--;
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 50.0f, 0x1C);
}

UNK_PTR D_80A0B3B8[] = { 0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0 };

void EnExRuppy_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnExRuppy* this = THIS;
    s32 pad;

    if (this->isFalling == 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ex_ruppy.c", 774);

        func_80093D18(globalCtx->state.gfxCtx);
        func_8002EBCC(thisx, globalCtx, 0);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ex_ruppy.c", 780),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A0B3B8[this->unk_150]));
        gSPDisplayList(POLY_OPA_DISP++, D_04042440);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ex_ruppy.c", 784);
    }
}
