/*
 * File: z_en_diving_game.c
 * Overlay: ovl_En_Diving_Game
 * Description: Diving minigame
 */

#include "z_en_diving_game.h"
#include <vt.h>
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"

#define FLAGS 0x00000019

#define THIS ((EnDivingGame*)thisx)

void EnDivingGame_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDivingGame_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDivingGame_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDivingGame_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809EDCB0(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EDD4C(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EDD4C(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EDEDC(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE048(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE0FC(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE194(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE1F4(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE1F4(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE408(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE6C8(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE780(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE800(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE8F0(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EE96C(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EEA00(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EEA90(EnDivingGame* this, GlobalContext* globalCtx);
void func_809EEAF8(EnDivingGame* this, GlobalContext* globalCtx);
s32 func_809EEDE4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void EnDivingGame_SpawnRuppy(EnDivingGame* this, GlobalContext* globalCtx);
s32 func_809EDB08(EnDivingGame* this, GlobalContext* globalCtx);
Gfx* EnDivingGame_EmptyDList(GraphicsContext* gfxCtx);

const ActorInit En_Diving_Game_InitVars = {
    ACTOR_EN_DIVING_GAME,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_ZO,
    sizeof(EnDivingGame),
    (ActorFunc)EnDivingGame_Init,
    (ActorFunc)EnDivingGame_Destroy,
    (ActorFunc)EnDivingGame_Update,
    (ActorFunc)EnDivingGame_Draw,
};

static u8 D_809EF0B0 = 0;

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 10, 10, 0, { 0, 0, 0 } },
};

static u64* sEyeTextures[] = {
    0x06003E40,
    0x06004640,
    0x06004E40,
};

extern FlexSkeletonHeader D_0600BFA8;
extern AnimationHeader D_06002FE8;
extern AnimationHeader D_0600219C;

void EnDivingGame_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDivingGame* this = THIS;

    this->actor.gravity = -3.0f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600BFA8, &D_06002FE8, this->jointTable, this->morphTable, 20);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 素もぐりＧＯ ☆☆☆☆☆ \n" VT_RST);
    this->actor.room = -1;
    this->actor.scale.x = 0.01f;
    this->actor.scale.y = 0.012999999f;
    this->actor.scale.z = 0.0139999995f;
    if (D_809EF0B0 != 0) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ もういてる原 ☆☆☆☆☆ \n" VT_RST);
        this->unk_31F = 1;
        Actor_Kill(&this->actor);
    } else {
        D_809EF0B0 = 1;
        this->actor.targetMode = 0;
        this->actor.colChkInfo.mass = MASS_IMMOVABLE;
        this->actionFunc = func_809EDCB0;
    }
}

void EnDivingGame_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDivingGame* this = THIS;

    if (this->unk_31F == 0) {
        gSaveContext.timer1State = 0;
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnDivingGame_SpawnRuppy(EnDivingGame* this, GlobalContext* globalCtx) {
    EnExRuppy* attached;
    Vec3f rupeePos;

    rupeePos.x = (Rand_ZeroOne() - 0.5f) * 30.0f + this->actor.world.pos.x;
    rupeePos.y = (Rand_ZeroOne() - 0.5f) * 20.0f + (this->actor.world.pos.y + 30.0f);
    rupeePos.z = (Rand_ZeroOne() - 0.5f) * 20.0f + this->actor.world.pos.z;
    attached = (EnExRuppy*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_RUPPY,
                                              rupeePos.x, rupeePos.y, rupeePos.z, 0,
                                              (s16)Rand_CenteredFloat(3500.0f) - 1000, this->unk_2A6, 0);
    if (attached != NULL) {
        attached->actor.speedXZ = 12.0f;
        attached->actor.velocity.y = 6.0f;
    }
}

s32 func_809EDB08(EnDivingGame* this, GlobalContext* globalCtx) {
    s32 var;

    if (gSaveContext.timer1State == 10 && Gameplay_InCsMode(globalCtx) == 0) {
        gSaveContext.timer1State = 0;
        func_800F5B58();
        func_80078884(NA_SE_SY_FOUND);
        this->actor.textId = 0x71AD;
        func_8010B680(globalCtx, this->actor.textId, NULL);
        this->unk_292 = 5;
        this->unk_31E = this->unk_2A8 = this->unk_29C = this->unk_2A2 = this->grabbedRuppiesCounter = 0;
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = func_809EE048;
        return 1;
    } else {
        var = 5;
        if (gSaveContext.eventChkInf[3] & 0x100) {
            var = 10;
        }
        if (this->grabbedRuppiesCounter >= var) {
            gSaveContext.timer1State = 0;
            this->unk_31E = this->unk_2A8 = this->unk_29C = this->unk_2A2 = this->grabbedRuppiesCounter = 0;
            if (!(gSaveContext.eventChkInf[3] & 0x100)) {
                this->actor.textId = 0x4055;
            } else {
                this->actor.textId = 0x405D;
                if (this->unk_2AA < 100) {
                    this->unk_2AA++;
                }
            }
            func_8010B680(globalCtx, this->actor.textId, NULL);
            this->unk_292 = 5;
            func_800F5B58();
            func_800F5C64(0x39);
            func_8002DF54(globalCtx, NULL, 8);
            if (!(gSaveContext.eventChkInf[3] & 0x100)) {
                this->actionFunc = func_809EE96C;
            } else {
                this->actionFunc = func_809EE048;
            }
            return 1;
        }
    }
    return 0;
}

void func_809EDCB0(EnDivingGame* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&D_06002FE8.common);
    Animation_Change(&this->skelAnime, &D_06002FE8, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->unk_31D = 1;
    this->actionFunc = func_809EDD4C;
}

void func_809EDD4C(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_2A8 != 2 || (func_809EDB08(this, globalCtx) == 0)) {
        if (func_8002F194(&this->actor, globalCtx)) {
            if (this->unk_292 != 6) {
                switch (this->unk_2A8) {
                    case 0:
                        func_8002DF54(globalCtx, NULL, 8);
                        this->actionFunc = func_809EDEDC;
                        break;
                    case 1:
                        this->actionFunc = func_809EEA00;
                        break;
                    case 2:
                        this->actionFunc = func_809EE8F0;
                        break;
                }
            }
        } else {
            if (Text_GetFaceReaction(globalCtx, 0x1D) != 0) {
                this->actor.textId = Text_GetFaceReaction(globalCtx, 0x1D);
                this->unk_292 = 6;
            } else {
                switch (this->unk_2A8) {
                    case 0:
                        this->unk_292 = 4;
                        if (!(gSaveContext.eventChkInf[3] & 0x100)) {
                            this->actor.textId = 0x4053;
                            this->unk_29C = 1;
                        } else {
                            this->actor.textId = 0x405C;
                            this->unk_29C = 2;
                        }
                        break;
                    case 1:
                        this->actor.textId = 0x4056;
                        this->unk_292 = 5;
                        break;
                    case 2:
                        this->actor.textId = 0x405B;
                        this->unk_292 = 5;
                        break;
                    default:
                        break;
                }
            }
            func_8002F2CC(&this->actor, globalCtx, 80.0f);
        }
    }
}

void func_809EDEDC(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_292 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            switch (globalCtx->msgCtx.choiceIndex) {
                case 0:
                    if (gSaveContext.rupees >= 20) {
                        Rupees_ChangeBy(-20);
                        this->actor.textId = 0x4054;
                    } else {
                        this->actor.textId = 0x85;
                        this->unk_31E = this->unk_2A8 = this->unk_29C = this->unk_2A2 = this->grabbedRuppiesCounter = 0;
                    }
                    break;
                case 1:
                    this->actor.textId = 0x2D;
                    this->unk_31E = this->unk_2A8 = this->unk_29C = this->unk_2A2 = this->grabbedRuppiesCounter = 0;
                    break;
            }
            if (!(gSaveContext.eventChkInf[3] & 0x100) || this->actor.textId == 0x85 || this->actor.textId == 0x2D) {
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_292 = 5;
                this->actionFunc = func_809EE048;
            } else {
                globalCtx->msgCtx.msgMode = 0x37;
                func_8002DF54(globalCtx, NULL, 8);
                this->actionFunc = func_809EE0FC;
            }
        }
    }
}

void func_809EE048(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_292 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            if (this->unk_29C == 0) {
                func_80106CCC(globalCtx);
                func_8002DF54(globalCtx, NULL, 7);
                this->actionFunc = func_809EDCB0;
            } else {
                globalCtx->msgCtx.msgMode = 0x37;
                func_8002DF54(globalCtx, NULL, 8);
                this->actionFunc = func_809EE0FC;
            }
        }
    }
}

void func_809EE0FC(EnDivingGame* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&D_0600219C.common);
    Animation_Change(&this->skelAnime, &D_0600219C, 1.0f, 0.0f, (s16)frameCount, 2, -10.0f);
    this->unk_31D = 0;
    this->actionFunc = func_809EE194;
}

void func_809EE194(EnDivingGame* this, GlobalContext* globalCtx) {
    f32 currentFrame;
    currentFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    if (currentFrame >= 15.0f) {
        this->actionFunc = func_809EE1F4;
    }
}

// Starts throwing the rupees
void func_809EE1F4(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    this->camId = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->camId, 7);
    this->spawnRuppyTimer = 10;
    this->unk_2F4 = -210.0f;
    this->unk_2F8 = -80.0f;
    this->unk_2FC = -1020.0f;
    this->unk_2D0 = -280.0f;
    this->unk_2D4 = -20.0f;
    this->unk_2D8 = -240.0f;
    if (!(gSaveContext.eventChkInf[3] & 0x100)) {
        this->unk_2A6 = 5;
    } else {
        this->unk_2A6 = 10;
    }
    this->unk_2DC = this->unk_2E0 = this->unk_2E4 = this->unk_300 = this->unk_304 = this->unk_308 = 0.1f;
    this->vec_2B8.x = globalCtx->view.lookAt.x;
    this->vec_2B8.y = globalCtx->view.lookAt.y;
    this->vec_2B8.z = globalCtx->view.lookAt.z;
    this->vec_2C4.x = globalCtx->view.eye.x;
    this->vec_2C4.y = globalCtx->view.eye.y + 80.0f;
    this->vec_2C4.z = globalCtx->view.eye.z + 250.0f;
    this->unk_2E8 = fabsf(this->vec_2C4.x - this->unk_2D0) * 0.04f;
    this->unk_2EC = fabsf(this->vec_2C4.y - this->unk_2D4) * 0.04f;
    this->unk_2F0 = fabsf(this->vec_2C4.z - this->unk_2D8) * 0.04f;
    this->unk_30C = fabsf(this->vec_2B8.x - this->unk_2F4) * 0.04f;
    this->unk_310 = fabsf(this->vec_2B8.y - this->unk_2F8) * 0.04f;
    this->unk_314 = fabsf(this->vec_2B8.z - this->unk_2FC) * 0.04f;
    Gameplay_CameraSetAtEye(globalCtx, this->camId, &this->vec_2B8, &this->vec_2C4);
    Gameplay_CameraSetFov(globalCtx, this->camId, globalCtx->mainCamera.fov);
    this->csCameraTimer = 60;
    this->actionFunc = func_809EE408;
    this->unk_318 = 0.0f;
}

void func_809EE408(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (func_800C0DB4(globalCtx, &this->actor.projectedPos) != 0) {
        func_800F6828(0);
    }
    if (this->camId != 0) {
        Math_ApproachF(&this->vec_2C4.x, this->unk_2D0, this->unk_2DC, this->unk_2E8 * this->unk_318);
        Math_ApproachF(&this->vec_2C4.z, this->unk_2D8, this->unk_2E4, this->unk_2F0 * this->unk_318);
        Math_ApproachF(&this->vec_2B8.x, this->unk_2F4, this->unk_300, this->unk_30C * this->unk_318);
        Math_ApproachF(&this->vec_2B8.y, this->unk_2F8, this->unk_304, this->unk_310 * this->unk_318);
        Math_ApproachF(&this->vec_2B8.z, this->unk_2FC, this->unk_308, this->unk_314 * this->unk_318);
        Math_ApproachF(&this->unk_318, 1.0f, 1.0f, 0.02f);
    }
    Gameplay_CameraSetAtEye(globalCtx, this->camId, &this->vec_2B8, &this->vec_2C4);
    if (this->unk_31E == 0) {
        if (this->spawnRuppyTimer == 0) {
            this->spawnRuppyTimer = 5;
            EnDivingGame_SpawnRuppy(this, globalCtx);
            this->unk_2A6 = this->unk_2A6 - 1;
            if (!(gSaveContext.eventChkInf[3] & 0x100)) {
                this->unk_296 = 30;
            } else {
                this->unk_296 = 5;
            }
            if (this->unk_2A6 <= 0) {
                this->unk_2A6 = 0;
                this->unk_31E = 1;
            }
        }
    }
    if (this->csCameraTimer == 0 ||
        ((fabsf(this->vec_2C4.x - this->unk_2D0) < 2.0f) && (fabsf(this->vec_2C4.y - this->unk_2D4) < 2.0f) &&
         (fabsf(this->vec_2C4.z - this->unk_2D8) < 2.0f) && (fabsf(this->vec_2B8.x - this->unk_2F4) < 2.0f) &&
         (fabsf(this->vec_2B8.y - this->unk_2F8) < 2.0f) && (fabsf(this->vec_2B8.z - this->unk_2FC) < 2.0f))) {
        if (this->unk_2A2 != 0) {
            this->csCameraTimer = 70;
            this->unk_2A2 = 2;
            this->actionFunc = func_809EE780;
        } else {
            this->actionFunc = func_809EE6C8;
        }
    }
}

void func_809EE6C8(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_296 == 0) {
        this->unk_2A2 = 1;
        this->csCameraTimer = 100;
        this->actionFunc = func_809EE408;
        this->unk_2F4 = -210.0f;
        this->vec_2B8.x = -210.0f;
        this->unk_2F8 = -80.0f;
        this->vec_2B8.y = -80.0f;
        this->unk_2FC = -1020.0f;
        this->vec_2B8.z = -1020.0f;
        this->unk_2D0 = -280.0f;
        this->vec_2C4.x = -280.0f;
        this->unk_2D4 = -20.0f;
        this->vec_2C4.y = -20.0f;
        this->unk_2D8 = -240.0f;
        this->vec_2C4.z = -240.0f;
    }
}

// EnDivingGame_StartMinigame ?
void func_809EE780(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->csCameraTimer == 0) {
        Gameplay_ClearCamera(globalCtx, this->camId);
        Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
        this->actor.textId = 0x405A;
        func_8010B720(globalCtx, this->actor.textId);
        this->unk_292 = 5;
        this->actionFunc = func_809EE800;
    }
}

void func_809EE800(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_292 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_80106CCC(globalCtx);
            if (!(gSaveContext.eventChkInf[3] & 0x100)) {
                func_80088B34(BREG(2) + 50);
            } else {
                func_80088B34(BREG(2) + 50);
            }
            func_800F5ACC(0x6C);
            func_8002DF54(globalCtx, NULL, 7);
            this->actor.textId = 0x405B;
            this->unk_292 = 5;
            this->unk_2A8 = 2;
            this->actionFunc = func_809EDD4C;
        }
    }
}

void func_809EE8F0(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_292 == func_8010BDBC(&globalCtx->msgCtx) && (func_80106BC8(globalCtx) != 0))) {
        func_80106CCC(globalCtx);
        this->actionFunc = func_809EDD4C;
    } else {
        func_809EDB08(this, globalCtx);
    }
}

void func_809EE96C(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_292 == func_8010BDBC(&globalCtx->msgCtx) && (func_80106BC8(globalCtx) != 0))) {
        func_80106CCC(globalCtx);
        func_8002DF54(globalCtx, NULL, 7);
        this->actor.textId = 0x4056;
        this->unk_292 = 5;
        this->unk_2A8 = 1;
        this->actionFunc = func_809EDD4C;
    }
}

void func_809EEA00(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_292 == func_8010BDBC(&globalCtx->msgCtx) && (func_80106BC8(globalCtx) != 0))) {
        func_80106CCC(globalCtx);
        this->actor.parent = NULL;
        func_8002F434(&this->actor, globalCtx, GI_SCALE_SILVER, 90.0f, 10.0f);
        this->actionFunc = func_809EEA90;
    }
}

void func_809EEA90(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_809EEAF8;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_SCALE_SILVER, 90.0f, 10.0f);
    }
}

void func_809EEAF8(EnDivingGame* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
        if (func_80106BC8(globalCtx) != 0) {
            // "Successful completion"
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
            this->unk_31E = this->unk_2A8 = this->unk_29C = this->unk_2A2 = this->grabbedRuppiesCounter = 0;
            gSaveContext.eventChkInf[3] |= 0x100;
            this->actionFunc = func_809EDCB0;
        }
    }
}

void EnDivingGame_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnDivingGame* this = THIS;
    Player* player = PLAYER;
    Vec3f pos;

    if (this->csCameraTimer != 0) {
        this->csCameraTimer--;
    }
    if (this->unk_296 != 0) {
        this->unk_296--;
    }
    if (this->eyeTimer != 0) {
        this->eyeTimer--;
    }
    if (this->spawnRuppyTimer != 0) {
        this->spawnRuppyTimer--;
    }

    if (1) {}

    if (gSaveContext.timer1Value == 10) {
        func_800F5918();
    }
    if (this->eyeTimer == 0) {
        this->eyeTimer = 2;
        this->eyeTexIndex++;
        if (this->eyeTexIndex >= 3) {
            this->eyeTexIndex = 0;
            this->eyeTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_SetFocus(&this->actor, 80.0f);
    this->unk_324.unk_18 = player->actor.world.pos;
    this->unk_324.unk_18.y = player->actor.world.pos.y;
    func_80034A14(&this->actor, &this->unk_324, 2, 4);
    this->vec_284 = this->unk_324.unk_08;
    this->vec_28A = this->unk_324.unk_0E;
    if ((globalCtx->gameplayFrames % 16) == 0) {
        pos = this->actor.world.pos;
        pos.y += 20.0f;
        EffectSsGRipple_Spawn(globalCtx, &pos, 100, 500, 30);
    }
    this->unk_290++;
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 29);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

Gfx* EnDivingGame_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* displayList = Graph_Alloc(gfxCtx, sizeof(Gfx));

    gSPEndDisplayList(displayList);
    return displayList;
}

s32 EnDivingGame_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                  void* thisx) {
    EnDivingGame* this = THIS;
    s32 pad;

    if (limbIndex == 6) {
        rot->x += this->vec_28A.y;
    }

    if (limbIndex == 15) {
        rot->x += this->vec_284.y;
        rot->z += this->vec_284.z;
    }

    if (this->unk_31D != 0 && (limbIndex == 8 || limbIndex == 9 || limbIndex == 12)) {
        rot->y += Math_SinS((globalCtx->state.frames * (limbIndex * 50 + 0x814))) * 200.0f;
        rot->z += Math_CosS((globalCtx->state.frames * (limbIndex * 50 + 0x940))) * 200.0f;
    }

    return 0;
}

void EnDivingGame_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDivingGame* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_diving_game.c", 1212);
    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, EnDivingGame_EmptyDList(globalCtx->state.gfxCtx));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnDivingGame_OverrideLimbDraw, NULL, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_diving_game.c", 1232);
}
