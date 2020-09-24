/*
 * File: z_en_fhg.c
 * Overlay: ovl_En_fHG
 * Description: Phantom Ganon's Horse
 */

#include "z_en_fhg.h"
#include "../ovl_Boss_Ganondrof/z_boss_ganondrof.h"
#include "../ovl_En_fHG/z_en_fhg.h"

#define FLAGS 0x00000010

#define THIS ((EnfHG*)thisx)

void EnfHG_Init(Actor* thisx, GlobalContext* globalCtx);
void EnfHG_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnfHG_Update(Actor* thisx, GlobalContext* globalCtx);
void EnfHG_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B62B04(EnfHG* this, GlobalContext* globalCtx);
void func_80B62B6C(EnfHG* this, GlobalContext* globalCtx);
void func_80B63D84(EnfHG* this, GlobalContext* globalCtx, s16 arg2);
void func_80B6404C(EnfHG* this, GlobalContext* globalCtx);
void func_80B6424C(EnfHG* this, GlobalContext* globalCtx);
void func_80B6476C(EnfHG* this, GlobalContext* globalCtx);
void func_80B64AA8(EnfHG* this, GlobalContext* globalCtx);
void func_80B64CF4(EnfHG* this, GlobalContext* globalCtx);

void func_80B64E94(s32 arg0, s32 arg1, s32 arg2);

extern SkeletonHeader D_0600B098;
extern AnimationHeader D_0600B4C8;
extern AnimationHeader D_0600B9D0;
extern AnimationHeader D_0600C65C;
extern AnimationHeader D_0600CB1C;
extern AnimationHeader D_0600DDB8;
extern AnimationHeader D_0600E8A0;

extern UNK_TYPE D_060059A0;

const ActorInit En_fHG_InitVars = {
    ACTOR_EN_FHG,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_FHG,
    sizeof(EnfHG),
    (ActorFunc)EnfHG_Init,
    (ActorFunc)EnfHG_Destroy,
    (ActorFunc)EnfHG_Update,
    (ActorFunc)EnfHG_Draw,
};

EnfHGPainting D_80B65190[] = { { { 0.0f, 60.0f, -315.0f }, 0x0000 },   { { -260.0f, 60.0f, -145.0f }, 0x2AAA },
                               { { -260.0f, 60.0f, 165.0f }, 0x5554 }, { { 0.0f, 60.0f, 315.0f }, 0x7FFE },
                               { { 260.0f, 60.0f, 155.0f }, 0xAAA8 },  { { 260.0f, 60.0f, -155.0f }, 0xD552 } };

InitChainEntry D_80B651F0[] = {
    ICHAIN_S8(naviEnemyId, 26, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1200, ICHAIN_STOP),
};

Vec3f D_80B651F8 = { 0.0f, 0.0f, 50.0f };

void EnfHG_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnfHG* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80B651F0);
    Flags_SetSwitch(globalCtx, 0x14);
    Actor_SetScale(&this->actor, 0.011499999f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, -2600.0f, NULL, 20.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    func_800A663C(globalCtx, &this->skin, &D_0600B098, &D_0600B4C8);

    if (this->actor.params >= 0xA) {
        func_80B63D84(this, globalCtx, this->actor.params - 0xA);
    } else {
        func_80B62B04(this, globalCtx);
    }
}

void EnfHG_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnfHG* this = THIS;

    osSyncPrintf("F DT1\n");
    func_800A6888(globalCtx, &this->skin);
    osSyncPrintf("F DT2\n");
}

void func_80B62B04(EnfHG* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skin.skelAnime, &D_0600E8A0);
    this->actionFunc = func_80B62B6C;
    VEC_SET(this->actor.posRot.pos, 14.0f, -300.0f, -3315.0f);
}

void func_80B62B6C(EnfHG* this, GlobalContext* globalCtx) {
    s32 pad64;
    Player* player = PLAYER;
    BossGanondrof* bossPG = (BossGanondrof*)this->actor.parent;
    s32 pad58;
    s32 pad54;
    Camera* camera;

    if (this->unk_1CA != 9) {
        SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
    }
    switch (this->unk_1CA) {
        case 0:
            if ((fabsf(player->actor.posRot.pos.x - 14.0f) < 150.0f) &&
                (fabsf(player->actor.posRot.pos.z - -3315.0f) < 150.0f)) {
                this->unk_1CA = 15;
            }
            break;
        case 15:
            if ((fabsf(player->actor.posRot.pos.x - 14.0f) < 100.0f) &&
                (fabsf(player->actor.posRot.pos.z - -3000.0f) < 100.0f)) {
                this->unk_1CA = 1;
                if (gSaveContext.eventChkInf[7] & 4) {
                    this->timers[0] = 57;
                }
            }
            break;
        case 1:
            if (gSaveContext.eventChkInf[7] & 4) {
                if (this->timers[0] == 55) {
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x2E, 14.0f, -130.0f, -3007.0f, 0,
                                       0, 0, 0x100);
                }
                if (this->timers[0] == 51) {
                    Audio_PlayActorSound2(this->actor.child, 0x283C);
                    Audio_SetBGM(0x1B);
                }
                if (this->timers[0] == 0) {
                    func_80B63D84(this, globalCtx, Math_Rand_ZeroOne() * 5.99f);
                    this->unk_14C = 0xFF;
                }
                break;
            }
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->unk_1CC = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_1CC, 7);
            this->unk_1CA = 2;
            this->timers[0] = 60;
            this->actor.posRot.pos.y = -40.0f;
            Audio_SetBGM(0x100100FF);
            gSaveContext.eventChkInf[7] |= 4;
            Flags_SetSwitch(globalCtx, 0x23);
        case 2:
            VEC_SET(player->actor.posRot.pos, 14.0f, -26.0f, -3160.0f);
            player->actor.posRot.rot.y = player->actor.shape.rot.y = 0;
            player->actor.speedXZ = 0.0f;
            VEC_SET(this->unk_150, 14.0f, 4.0f, -3145.0f);
            this->unk_15C.x = this->unk_15C.y = 14.0f;
            this->unk_15C.z = -3000.0f;
            if (this->timers[0] == 25) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x2E, 14.0f, -130.0f, -3007.0f, 0, 0,
                                   0, 0x100);
            }
            if (this->timers[0] == 21) {
                Audio_PlayActorSound2(this->actor.child, 0x283C);
            }
            if (this->timers[0] == 0) {
                this->unk_1CA = 3;
                this->timers[0] = 0x50;
            }
            break;
        case 3:
            if (this->timers[0] == 25) {
                Audio_PlayActorSound2(&this->actor, 0x283E);
            }
            if (this->timers[0] == 20) {
                func_8002DF54(globalCtx, &this->actor, 9);
            }
            if (this->timers[0] == 1) {
                Audio_SetBGM(0x23);
            }
            Math_SmoothScaleMaxF(&this->unk_150.x, 54.0f, 0.05f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_150.y, 4.0f, 0.05f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_150.z, -3235.0f, 0.05f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.x, -86.0f, 0.05f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.y, 14.0f, 0.05f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.z, -2980.0f, 0.05f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_1A8, 1.0f, 1.0f, 0.01f);
            if (this->timers[0] == 0) {
                this->unk_1CA = 4;
                this->timers[0] = 50;
                this->unk_1A8 = 0.0f;
            }
            break;
        case 4:
            Math_SmoothScaleMaxF(&this->unk_150.x, 84.0f, 0.1f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_150.y, -26.0f, 0.1f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_150.z, -3115.0f, 0.1f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.x, -136.0f, 0.1f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.y, 74.0f, 0.1f, this->unk_1A8 * 20.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.z, -3380.0f, 0.1f, this->unk_1A8 * 40.0f);
            Math_SmoothScaleMaxF(&this->unk_1A8, 1.0f, 1.0f, 0.05f);
            if (this->timers[0] == 5) {
                Audio_PlayActorSound2(&this->actor, 0x282C);
            }
            if (this->timers[0] == 0) {
                this->unk_1CA = 5;
                this->timers[0] = 50;
                this->unk_1A8 = 0.0f;
            }
            break;
        case 5:
            this->unk_1CA = 6;
            VEC_SET(this->unk_150, 64.0f, -16.0f, -3205.0f);
            VEC_SET(this->unk_15C, -136.0f, 174.0f, -3470.0f);
            this->unk_168.x = fabsf(this->unk_150.x - 34.0f);
            this->unk_168.y = fabsf(this->unk_150.y - 69.0f);
            this->unk_168.z = fabsf(this->unk_150.z - -3290.0f);
            this->unk_174.x = fabsf(this->unk_15C.x - -136.0f);
            this->unk_174.y = fabsf(this->unk_15C.y - 164.0f);
            this->unk_174.z = fabsf(this->unk_15C.z - -3380.0f);
            this->timers[0] = 250;
        case 6:
            Math_SmoothScaleMaxF(&this->unk_150.x, 34.0f, 0.05f, this->unk_1A8 * this->unk_168.x);
            Math_SmoothScaleMaxF(&this->unk_150.y, 69.0f, 0.05f, this->unk_1A8 * this->unk_168.y);
            Math_SmoothScaleMaxF(&this->unk_150.z, -3290.0f, 0.05f, this->unk_1A8 * this->unk_168.z);
            Math_SmoothScaleMaxF(&this->unk_15C.x, -136.0f, 0.05f, this->unk_1A8 * this->unk_174.x);
            Math_SmoothScaleMaxF(&this->unk_15C.y, 164.0f, 0.05f, this->unk_1A8 * this->unk_174.y);
            Math_SmoothScaleMaxF(&this->unk_15C.z, -3380.0f, 0.05f, this->unk_1A8 * this->unk_174.z);
            Math_SmoothScaleMaxF(&this->unk_1A8, 0.01f, 1.0f, 0.001f);
            if ((this->timers[0] == 245) || (this->timers[0] == 3)) {
                SkelAnime_ChangeAnimTransitionStop(&this->skin.skelAnime, &D_0600DDB8, -8.0f);
                this->unk_14C = 2;
                Audio_PlayActorSound2(&this->actor, 0x283D);
                if (this->timers[0] == 3) {
                    Audio_PlayActorSound2(&this->actor, 0x38B2);
                }
            }
            if (this->timers[0] == 0xC0) {
                Audio_PlayActorSound2(&this->actor, 0x282C);
            }
            if (this->timers[0] == 0xD4) {
                Audio_PlayActorSound2(&this->actor, 0x282B);
                SkelAnime_ChangeAnim(&this->skin.skelAnime, &D_0600E8A0, 0.3f, 0.0f, 5.0f, 1, -10.0f);
            }
            if (this->timers[0] == 0x5A) {
                globalCtx->envCtx.unk_BF = 2;
                globalCtx->envCtx.unk_D6 = 0x14;
            }
            if (this->timers[0] == 0x64) {
                this->unk_14C = 3;
            }
            if (this->timers[0] == 0x3C) {
                this->unk_14C = 5;
            }
            if (this->timers[0] == 0x82) {
                Audio_SetBGM(0x105000FF);
            }
            if (this->timers[0] == 0x1E) {
                bossPG->unk_1AA = 2;
            }
            if (this->timers[0] == 0x23) {
                func_80078914(&D_80B651F8, 0x38AB);
            }
            if (this->timers[0] == 0x82) {
                bossPG->unk_1AA = 1;
                func_80078914(&D_80B651F8, 0x39D6);
            }
            if (this->timers[0] == 0x14) {
                Audio_SetBGM(0x1B);
            }
            if (this->timers[0] == 2) {
                this->unk_1A8 = 0.0f;
                this->unk_1CA = 7;
                this->unk_168.x = fabsf(this->unk_150.x - 194.0f);
                this->unk_168.y = fabsf(this->unk_150.y - -26.0f);
                this->unk_168.z = fabsf(this->unk_150.z - -3175.0f);
                this->timers[0] = 0x64;
                this->timers[1] = 0x22;
                this->unk_174.x = fabsf(this->unk_15C.x - this->actor.posRot.pos.x);
                this->unk_174.y = fabsf(this->unk_15C.y - ((this->actor.posRot.pos.y + 70.0f) - 20.0f));
                this->unk_174.z = fabsf(this->unk_15C.z - this->actor.posRot.pos.z);
            }
            break;
        case 7:
            if (this->timers[1] == 1) {
                SkelAnime_ChangeAnim(&this->skin.skelAnime, &D_0600E8A0, 0.5f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600E8A0.genericHeader), 1, -3.0f);
            }
            Math_SmoothScaleMaxF(&this->unk_150.x, 194.0f, 0.1f, this->unk_1A8 * this->unk_168.x);
            Math_SmoothScaleMaxF(&this->unk_150.y, -26.0f, 0.1f, this->unk_1A8 * this->unk_168.y);
            Math_SmoothScaleMaxF(&this->unk_150.z, this->unk_1AC + -3175.0f, 0.1f, this->unk_1A8 * this->unk_168.z);
            Math_SmoothScaleMaxF(&this->unk_1AC, -100.0f, 0.1f, 1.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.x, this->actor.posRot.pos.x, 0.1f, this->unk_1A8 * 10.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.y, (this->actor.posRot.pos.y + 70.0f) - 20.0f, 0.1f,
                                 this->unk_1A8 * 10.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.z, this->actor.posRot.pos.z, 0.1f, this->unk_1A8 * 10.0f);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 60.0f, 0.1f, 2.0f);
            this->actor.posRot.pos.y += 2.0f * Math_Sins(this->unk_1C0 * 0x5DC);
            Math_SmoothScaleMaxF(&this->unk_1A8, 1.0f, 1.0f, 0.05f);
            if (this->timers[0] == 0x4B) {
                TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_060059A0),
                                       0xA0, 0xB4, 0x80, 0x28);
            }
            if (this->timers[0] == 0) {
                this->unk_1CA = 8;
                this->timers[0] = 0xC8;
                this->timers[1] = 0x17;
                this->unk_1A8 = 0.0f;
                SkelAnime_ChangeAnim(&this->skin.skelAnime, &D_0600C65C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600C65C.genericHeader), 3, -4.0f);
                this->unk_14C = 0xA;
                Audio_PlayActorSound2(&this->actor, 0x38B2);
                Audio_PlayActorSound2(&this->actor, 0x283D);
            }
            break;
        case 8:
            if (this->timers[1] == 1) {
                SkelAnime_ChangeAnim(&this->skin.skelAnime, &D_0600CB1C, 0.5f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600CB1C.genericHeader), 3, -3.0f);
                this->unk_14C = 0xB;
            }
            if (this->timers[0] == 0xAA) {
                func_8002DF54(globalCtx, &this->actor, 8);
                Audio_PlayActorSound2(&this->actor, 0x38A6);
            }
            Math_SmoothScaleMaxF(&this->unk_150.z, this->unk_1AC + -3215.0f, 0.1f, this->unk_1A8 * 1.5f);
            Math_SmoothScaleMaxF(&this->unk_1AC, -100.0f, 0.1f, 1.0f);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, -2915.5f, 1.0f, this->unk_1A8 * 10.0f);
            Math_SmoothScaleMaxF(&this->unk_1A8, 1.0f, 1.0f, 0.05f);
            if ((fabsf(this->actor.posRot.pos.z - -2915.5f) < 300.0f) && (this->unk_1C8 == 0)) {
                this->unk_1C8 = 1;
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x6D, 14.0f,
                                   this->actor.posRot.pos.y + 50.0f, -2915.5f, 0, this->actor.shape.rot.y, 0, 0x28);
                this->unk_14F = 1;
            }
            Math_SmoothScaleMaxF(&this->unk_15C.x, this->actor.posRot.pos.x, 0.2f, 50.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.z, this->actor.posRot.pos.z, 0.2f, 50.0f);
            osSyncPrintf("TIME %d-------------------------------------------------\n", this->timers[0]);
            if (fabsf(this->actor.posRot.pos.z - -2915.5f) < 1.0f) {
                globalCtx->envCtx.unk_BF = 0;
                globalCtx->envCtx.unk_D6 = 0x14;
                this->unk_1CA = 9;
                SkelAnime_ChangeAnimTransitionRepeat(&this->skin.skelAnime, &D_0600B4C8, -3.0f);
                this->unk_14C = 0xFF;
                this->timers[1] = 0x4B;
                this->timers[0] = 0x8C;
            }
            break;
        case 9:
            func_80B64AA8(this, globalCtx);
            Math_SmoothScaleMaxF(&this->unk_150.z, this->unk_1AC + -3215.0f, 0.1f, this->unk_1A8 * 1.5f);
            Math_SmoothScaleMaxF(&this->unk_1AC, -100.0f, 0.1f, 1.0f);
            Math_SmoothScaleMaxF(&this->unk_15C.y, (this->actor.posRot.pos.y + 70.0f) - 20.0f, 0.1f,
                                 this->unk_1A8 * 10.0f);
            if (this->timers[1] == 0) {
                camera = Gameplay_GetCamera(globalCtx, 0);
                camera->eye = this->unk_150;
                camera->eyeNext = this->unk_150;
                camera->at = this->unk_15C;
                func_800C08AC(globalCtx, this->unk_1CC, 0);
                this->unk_1CC = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->actionFunc = func_80B64AA8;
            }
            break;
    }
    if (this->unk_1CC != 0) {
        func_800C04D8(globalCtx, this->unk_1CC, &this->unk_15C, &this->unk_150);
    }
}

void func_80B63D84(EnfHG* this, GlobalContext* globalCtx, s16 arg2) {
    s16 D_80B65204[] = { 3, 4, 5, 0, 1, 2 };

    SkelAnime_ChangeAnimTransitionRepeat(&this->skin.skelAnime, &D_0600B4C8, 0.0f);
    this->actionFunc = func_80B6404C;
    this->unk_1C2 = arg2;
    this->unk_1C4 = D_80B65204[this->unk_1C2];
    osSyncPrintf("KABE NO 1 = %d\n", this->unk_1C2);
    osSyncPrintf("KABE NO 2 = %d\n", this->unk_1C4);
    this->actor.posRot.pos.x = (1.3f * D_80B65190[this->unk_1C2].pos.x) + 10.0f;
    this->actor.posRot.pos.y = D_80B65190[this->unk_1C2].pos.y + 120.0f;
    this->actor.posRot.pos.z = (1.3f * D_80B65190[this->unk_1C2].pos.z) - 3325.0f;
    this->actor.posRot.rot.y = D_80B65190[this->unk_1C2].yRot;
    osSyncPrintf("XP1  = %f\n", this->actor.posRot.pos.x);
    osSyncPrintf("ZP1  = %f\n", this->actor.posRot.pos.z);
    this->unk_18C.x = (D_80B65190[this->unk_1C4].pos.x * 1.3f) + 10.0f;
    this->unk_18C.y = D_80B65190[this->unk_1C4].pos.y;
    this->unk_18C.z = (D_80B65190[this->unk_1C4].pos.z * 1.3f) - 3325.0f;
    this->unk_198 = (fabsf(this->unk_18C.x - this->actor.posRot.pos.x) * 2) * 0.01f;
    if (this->unk_198 < 1.0f) {
        this->unk_198 = 1.0f;
    }
    this->unk_19C = (fabsf(this->unk_18C.z - this->actor.posRot.pos.z) * 2) * 0.01f;
    if (this->unk_19C < 1.0f) {
        this->unk_19C = 1.0f;
    }
    this->timers[0] = 100;
    this->actor.scale.x = 0.002f;
    this->actor.scale.y = 0.002f;
    this->actor.scale.z = 0.001f;
    this->unk_1A4 = 0.0f;

    this->unk_1E8 = globalCtx->lightCtx.unk_07;
    this->unk_1EC = globalCtx->lightCtx.unk_08;
    this->unk_1F0 = globalCtx->lightCtx.unk_09;
    this->unk_1F4 = 0.0f;
    this->unk_1F8 = 0.0f;
    this->unk_1E0 = 0;
    this->unk_1C6 = 0;
    this->unk_1C8 = 0;
}

void func_80B6404C(EnfHG* this, GlobalContext* globalCtx) {
    osSyncPrintf("STANDBY !!\n");
    osSyncPrintf("XP2  = %f\n", this->actor.posRot.pos.x);
    osSyncPrintf("ZP2  = %f\n", this->actor.posRot.pos.z);
    if (this->actor.params == 1) {
        this->unk_180.x = this->actor.projectedPos.x / (this->actor.scale.x * 100.0f);
        this->unk_180.y = this->actor.projectedPos.y / (this->actor.scale.x * 100.0f);
        this->unk_180.z = this->actor.projectedPos.z / (this->actor.scale.x * 100.0f);
        if ((this->unk_1C0 % 8) == 0) {
            func_80078914(&this->unk_180, 0x2804);
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
    Math_SmoothScaleMaxF(&this->actor.scale.x, 0.011499999f, 1.0f, this->unk_1A4);
    Math_SmoothScaleMaxF(&this->unk_1A4, 0.0002f, 1.0f, 0.0000015f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 60.0f, 0.1f, 1.0f);
    this->actor.scale.y = this->actor.scale.x;
    if (this->timers[0] == 0) {
        osSyncPrintf("arg_data ------------------------------------>%d\n", this->actor.params);
        if (this->actor.params != 1) {
            this->timers[0] = 140;
            this->actionFunc = func_80B64AA8;
            SkelAnime_ChangeAnimTransitionRepeat(&this->skin.skelAnime, &D_0600B4C8, 0.0f);
            this->unk_1C6 = -0x8000;
        } else {
            this->actionFunc = func_80B6424C;
            Audio_PlayActorSound2(&this->actor, 0x283D);
            this->timers[0] = 40;
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x6D, this->actor.posRot.pos.x,
                               this->actor.posRot.pos.y + 50.0f, this->actor.posRot.pos.z, 0,
                               this->actor.shape.rot.y + 0x8000, 0, 0x27);
            this->unk_14F = 0;
        }
    }
}

void func_80B6424C(EnfHG* this, GlobalContext* globalCtx) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;

    osSyncPrintf("KABE OUT !!\n");
    this->unk_14D = 0;
    SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
    if (this->timers[0] != 0) {
        Math_SmoothScaleMaxF(&this->actor.scale.z, 0.011499999f, 1.0f, 0.0002f);
        if (this->timers[0] == 1) {
            this->unk_14C = 1;
            this->timers[1] = 50;
            SkelAnime_ChangeAnimTransitionStop(&this->skin.skelAnime, &D_0600C65C, 0.0f);
        }
        Math_SmoothScaleMaxF(&this->unk_1E8, 255.0f, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_1EC, 255.0f, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_1F0, 255.0f, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_1F4, -60.0f, 1.0f, 5.0f);
    } else {
        Math_SmoothScaleMaxF(&this->unk_1E8, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_1EC, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_1F0, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
        Math_SmoothScaleMaxF(&this->unk_1F4, 0.0f, 1.0f, 5.0f);
        if (this->timers[1] == 29) {
            Audio_PlayActorSound2(&this->actor, 0x38A6);
            Audio_PlayActorSound2(&this->actor, 0x38B2);
        }
        if (this->unk_1DE == 0) {
            if (this->timers[1] == 24) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x6D, this->actor.posRot.pos.x,
                                   (this->actor.posRot.pos.y + 100.0f) + 25.0f, this->actor.posRot.pos.z, 0, 0, 0, 1);
            }
            if (this->timers[1] == 45) {
                SkelAnime_ChangeAnimTransitionRepeat(&this->skin.skelAnime, &D_0600B9D0, 0.0f);
            }
            if (this->timers[1] == 38) {
                this->unk_14C = 3;
            }
            if (this->timers[1] == 16) {
                SkelAnime_ChangeAnimTransitionStop(&this->skin.skelAnime, &D_0600CB1C, 0.0f);
                this->unk_14C = 4;
            }
        }
        Math_SmoothScaleMaxF(&this->actor.scale.z, 0.011499999f, 1.0f, 0.002f);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_18C.x, 1.0f, this->unk_198);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 60.0f, 0.1f, 1.0f);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->unk_18C.z, 1.0f, this->unk_19C);
    }
    if (this->unk_1DE == 20) {
        this->actionFunc = func_80B6476C;
        this->unk_1C8 = 0;
        SkelAnime_ChangeAnim(&this->skin.skelAnime, &D_0600CB1C, -1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_0600CB1C.genericHeader), 2, -5.0f);
        this->timers[0] = 10;
        this->unk_14C = 4;
        this->unk_1A0 = 1.0f;
    } else {
        sp54 = this->actor.posRot.pos.x - this->unk_18C.x;
        sp50 = this->actor.posRot.pos.z - this->unk_18C.z;
        sp4C = sqrtf(SQ(sp54) + SQ(sp50));
        if (sp4C < 350.0f) {
            this->unk_14D = 1;
        }
        if ((sp4C < 300.0f) && (this->unk_1C8 == 0)) {
            this->unk_1C8 = 1;
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x6D, this->unk_18C.x,
                               this->actor.posRot.pos.y + 50.0f, this->unk_18C.z, 0, this->actor.shape.rot.y, 0, 0x28);
            this->unk_14F = 1;
        }
        osSyncPrintf("SPD X %f\n", this->unk_198);
        osSyncPrintf("SPD Z %f\n", this->unk_19C);
        osSyncPrintf("X=%f\n", sp54);
        osSyncPrintf("Z=%f\n", sp50);
        if (sp4C == 0.0f) {
            this->timers[0] = 140;
            this->actionFunc = func_80B64AA8;
            SkelAnime_ChangeAnimTransitionRepeat(&this->skin.skelAnime, &D_0600B4C8, 0.0f);
            this->unk_14C = 5;
        }
    }
}

void func_80B6476C(EnfHG* this, GlobalContext* globalCtx) {
    f32 dx;
    f32 dz;
    f32 dxz2;

    osSyncPrintf("REVISE !!\n");
    SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
    Math_SmoothScaleMaxF(&this->unk_1E8, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->unk_1EC, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->unk_1F0, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
    Math_SmoothScaleMaxF(&this->unk_1F4, 0.0f, 1.0f, 5.0f);
    Math_SmoothScaleMaxF(&this->actor.scale.z, 0.011499999f, 1.0f, 0.002f);
    if (this->timers[0] != 0) {
        Math_SmoothDownscaleMaxF(&this->unk_1A0, 1.0f, 0.1f);
        if (this->timers[0] == 1) {
            this->unk_1C4 = this->unk_1C2;
            this->unk_18C.x = (D_80B65190[this->unk_1C4].pos.x * 1.3f) + 10.0f;
            this->unk_18C.y = D_80B65190[this->unk_1C4].pos.y;
            this->unk_18C.z = (D_80B65190[this->unk_1C4].pos.z * 1.3f) - 3325.0f;
        }
    } else {
        Math_SmoothScaleMaxF(&this->unk_1A0, 1.0f, 1.0f, 0.1f);
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_18C.x, 1.0f, this->unk_1A0 * this->unk_198);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 60.0f, 0.1f, 1.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->unk_18C.z, 1.0f, this->unk_1A0 * this->unk_19C);
    dx = this->actor.posRot.pos.x - this->unk_18C.x;
    dz = this->actor.posRot.pos.z - this->unk_18C.z;
    dxz2 = sqrtf(SQ(dx) + SQ(dz));
    if (dxz2 < 300.0f) {
        if (this->unk_1C8 == 0) {
            this->unk_1C8 = 1;
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x6D, this->unk_18C.x,
                               this->actor.posRot.pos.y + 50.0f, this->unk_18C.z, 0, this->actor.shape.rot.y + 0x8000,
                               0, 0x28);
        }
    }
    if (dxz2 == 0.0f) {
        BossGanondrof* bossPG = (BossGanondrof*)this->actor.parent;
        this->timers[0] = 140;
        this->actionFunc = func_80B64AA8;
        SkelAnime_ChangeAnimTransitionRepeat(&this->skin.skelAnime, &D_0600B4C8, 0.0f);
        if (bossPG->actor.colChkInfo.health > 24) {
            this->unk_14C = 5;
        } else {
            bossPG->attackMode = 1;
        }
        this->unk_1C6 = -0x8000;
    }
}

void func_80B64AA8(EnfHG* this, GlobalContext* globalCtx) {
    s16 temp_rand1;
    s16 temp_rand2;

    osSyncPrintf("KABE IN !!\n");
    if (this->unk_1C6 != 0) {
        Math_SmoothScaleMaxS(&this->unk_1E0, this->unk_1C6, 5, 2000);
    }
    if (this->actor.params == 1) {
        this->unk_180.x = this->actor.projectedPos.x / (this->actor.scale.x * 100.0f);
        this->unk_180.y = this->actor.projectedPos.y / (this->actor.scale.x * 100.0f);
        this->unk_180.z = this->actor.projectedPos.z / (this->actor.scale.x * 100.0f);
        if ((this->unk_1C0 % 8) == 0) {
            func_80078914(&this->unk_180, 0x2804);
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
    Math_SmoothScaleMaxF(&this->actor.scale.z, 0.001f, 1.0f, 0.001f);
    Math_SmoothScaleMaxF(&this->actor.scale.x, 0.002f, 0.05f, 0.0001f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 200.0f, 0.05f, 1.0f);
    this->actor.scale.y = this->actor.scale.x;
    if ((this->timers[0] == 80) && (this->actor.params == 1)) {
        Audio_PlayActorSound2(&this->actor, 0x38B0);
    }
    if (this->timers[0] == 0) {
        BossGanondrof* bossPG = (BossGanondrof*)this->actor.parent;
        if (this->actor.params != 1) {
            this->unk_14E = 1;
            bossPG->killActor = 1;
        } else if (bossPG->attackMode != 0) {
            this->actionFunc = func_80B64CF4;
            this->actor.draw = NULL;
        } else {
            temp_rand1 = Math_Rand_ZeroOne() * 5.99f;
            func_80B63D84(this, globalCtx, temp_rand1);
            do {
                temp_rand2 = Math_Rand_ZeroOne() * 5.99f;
            } while (temp_rand2 == temp_rand1);
            osSyncPrintf("ac1 = %x `````````````````````````````````````````````````\n",
                         Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x52,
                                            this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                            this->actor.posRot.pos.z, 0, 0, 0, temp_rand2 + 0xA));
        }
    }
}

void func_80B64CF4(EnfHG* this, GlobalContext* globalCtx) {
    this->unk_14D = 0;
}

void EnfHG_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnfHG* this = THIS;
    u8 iv0;

    if (this->unk_14E != 0) {
        Actor_Kill(&this->actor);
        return;
    }
    this->unk_1C0++;
    this->unk_14D = 1;
    for (iv0 = 0; iv0 < 5; iv0++) {
        DECR(this->timers[iv0]);
    }

    this->actionFunc(this, globalCtx);

    DECR(this->unk_1DE);

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    this->actor.shape.unk_08 = Math_Sins(this->unk_1DE * 0x9000) * 700.0f * (this->unk_1DE / 20.0f);
    this->actor.shape.rot.z = (s16)(Math_Sins(this->unk_1DE * 0x7000) * 1500.0f) * (this->unk_1DE / 20.0f);
}

void func_80B64E94(s32 arg0, s32 arg1, s32 arg2) {
}

void EnfHG_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnfHG* this = THIS;
    BossGanondrof* bossPG = (BossGanondrof*)this->actor.parent;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fhg.c", 2439);
    func_80093D18(globalCtx->state.gfxCtx);

    oGfxCtx->polyOpa.p = (((bossPG->invincibilityTimer & 4) != 0) && (bossPG->attackMode == 0))
                             ? Gfx_SetFog(oGfxCtx->polyOpa.p, 0xFF, 50, 0, 0, 900, 1099)
                             : Gfx_SetFog(oGfxCtx->polyOpa.p, (u32)this->unk_1E8, (u32)this->unk_1EC,
                                          (u32)this->unk_1F0, 0, (s32)this->unk_1F4 + 995, (s32)this->unk_1F8 + 1000);
    func_800A6330(&this->actor, globalCtx, &this->skin, func_80B64E94, 0x23);
    oGfxCtx->polyOpa.p = func_800BC8A0(globalCtx, oGfxCtx->polyOpa.p);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fhg.c", 2480);
}
