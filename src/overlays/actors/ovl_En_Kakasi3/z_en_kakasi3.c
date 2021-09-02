/*
 * File: z_en_kakasi3.c
 * Overlay: ovl_En_Kakasi3
 * Description: Bonooru the Scarecrow
 */

#include "z_en_kakasi3.h"
#include "vt.h"
#include "objects/object_ka/object_ka.h"

#define FLAGS 0x02000009

#define THIS ((EnKakasi3*)thisx)

void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A911F0(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91284(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91348(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A915B8(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91620(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91760(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A917FC(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A9187C(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A918E4(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91A90(EnKakasi3* this, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

const ActorInit En_Kakasi3_InitVars = {
    ACTOR_EN_KAKASI3,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi3),
    (ActorFunc)EnKakasi3_Init,
    (ActorFunc)EnKakasi3_Destroy,
    (ActorFunc)EnKakasi3_Update,
    (ActorFunc)EnKakasi3_Draw,
};

void EnKakasi3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
    //! @bug SkelAnime_Free is not called
}

void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    osSyncPrintf("\n\n");
    // Translates to: Obonur -- Related to the name of the scarecrow (Bonooru)
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ おーボヌール ☆☆☆☆☆ \n" VT_RST);
    this->actor.targetMode = 6;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_ka_Skel_0065B0, &object_ka_Anim_000214, NULL, NULL, 0);
    this->actor.flags |= 0x400;
    this->rot = this->actor.world.rot;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc = func_80A911F0;
}

void func_80A90E28(EnKakasi3* this) {
    this->unk_1A4 = 0;
    this->skelAnime.playSpeed = 0.0f;
    this->unk_1AA = this->unk_1AE = 0x0;

    Math_ApproachZeroF(&this->skelAnime.curFrame, 0.5f, 1.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.x, this->rot.x, 5, 0x2710, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->rot.y, 5, 0x2710, 0);
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->rot.z, 5, 0x2710, 0);
}

void func_80A90EBC(EnKakasi3* this, GlobalContext* globalCtx, s32 arg) {
    s16 currentFrame;
    s16 phi_v0;

    phi_v0 = globalCtx->msgCtx.unk_E410;
    if (arg != 0) {
        if (this->unk_19C[3] == 0) {
            this->unk_19C[3] = (s16)Rand_ZeroFloat(10.99f) + 30;
            this->unk_1A6 = (s16)Rand_ZeroFloat(4.99f);
        }

        this->unk_19A = (s16)Rand_ZeroFloat(2.99f) + 5;
        phi_v0 = this->unk_1A6;
    }
    switch (phi_v0) {
        case 0:
            this->unk_19A++;
            if (this->unk_1A4 == 0) {
                this->unk_1A4 = 1;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_ROLL);
            }
            break;
        case 1:
            this->unk_19A++;
            this->unk_1B8 = 1.0f;
            break;
        case 2:
            this->unk_19A++;
            if (this->unk_1AE == 0x0) {
                this->unk_1AE = 0x1388;
            }
            break;
        case 3:
            this->unk_19A++;
            if (this->unk_1AA == 0x0) {
                this->unk_1AA = 0x1388;
            }
            break;
        case 4:
            this->unk_19A++;
            this->unk_1B8 = 2.0f;
            break;
    }

    if (this->unk_19A > 8) {
        this->unk_19A = 8;
    }

    if (this->unk_19A != 0) {
        this->actor.gravity = -1.0f;
        if (this->unk_19A == 8 && (this->actor.bgCheckFlags & 1)) {
            this->actor.velocity.y = 3.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_KAKASHI_JUMP);
        }
        Math_ApproachF(&this->skelAnime.playSpeed, this->unk_1B8, 0.1f, 0.2f);
        Math_SmoothStepToS(&this->actor.shape.rot.x, this->unk_1AA, 0x5, 0x3E8, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.z, this->unk_1AE, 0x5, 0x3E8, 0);

        if (this->unk_1AA != 0x0 && fabsf(this->actor.shape.rot.x - this->unk_1AA) < 50.0f) {
            this->unk_1AA *= -1.0f;
        }
        if (this->unk_1AE != 0x0 && fabsf(this->actor.shape.rot.z - this->unk_1AE) < 50.0f) {
            this->unk_1AE *= -1.0f;
        }

        if (this->unk_1A4 != 0) {
            this->actor.shape.rot.y += 0x1000;
            if (this->actor.shape.rot.y == 0) {
                this->unk_1A4 = 0;
            }
        }
        currentFrame = this->skelAnime.curFrame;
        if (currentFrame == 11 || currentFrame == 17) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_SWING);
        }
        SkelAnime_Update(&this->skelAnime);
    }
}

void func_80A911F0(EnKakasi3* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&object_ka_Anim_000214);

    Animation_Change(&this->skelAnime, &object_ka_Anim_000214, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = func_80A91284;
}

void func_80A91284(EnKakasi3* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    this->actor.textId = 0x40A1;
    this->dialogState = 6;
    this->unk_19A = 0;

    if (!LINK_IS_ADULT) {
        this->unk_194 = false;
        if (gSaveContext.scarecrowSpawnSongSet) {
            this->actor.textId = 0x40A0;
            this->dialogState = 5;
            this->unk_1A8 = 1;
        }
    } else {
        this->unk_194 = true;
        if (gSaveContext.scarecrowSpawnSongSet) {
            if (this->unk_195) {
                this->actor.textId = 0x40A2;
            } else {
                this->actor.textId = 0x40A3;
            }
        }
    }
    this->actionFunc = func_80A91348;
}

void func_80A91348(EnKakasi3* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    func_80A90E28(this);
    SkelAnime_Update(&this->skelAnime);
    this->camId = SUBCAM_NONE;
    if (func_8002F194(&this->actor, globalCtx)) {
        if (!this->unk_194) {
            if (this->unk_1A8 == 0) {
                this->actionFunc = func_80A91284;
            } else {
                this->actionFunc = func_80A91760;
            }
        } else {
            this->actionFunc = func_80A91284;
        }
    } else {
        s16 angleTowardsLink = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

        if (!(this->actor.xzDistToPlayer > 120.0f)) {
            s16 absAngleTowardsLink = ABS(angleTowardsLink);

            if (absAngleTowardsLink < 0x4300) {
                if (!this->unk_194) {

                    if (player->stateFlags2 & 0x1000000) {
                        this->camId = OnePointCutscene_Init(globalCtx, 2260, -99, &this->actor, MAIN_CAM);
                        globalCtx->msgCtx.msgMode = 0x37;
                        this->dialogState = 5;
                        this->unk_1B8 = 0.0f;
                        func_8010B680(globalCtx, 0x40A4, NULL);
                        player->stateFlags2 |= 0x800000;
                        this->actionFunc = func_80A915B8;
                        return;
                    }
                    if (this->actor.xzDistToPlayer < 80.0f) {
                        player->stateFlags2 |= 0x800000;
                    }
                } else if (gSaveContext.scarecrowSpawnSongSet && !this->unk_195) {

                    if (player->stateFlags2 & 0x1000000) {
                        this->camId = OnePointCutscene_Init(globalCtx, 2260, -99, &this->actor, MAIN_CAM);
                        globalCtx->msgCtx.msgMode = 0x37;
                        this->dialogState = 5;
                        this->unk_1B8 = 0.0f;
                        func_8010B680(globalCtx, 0x40A8, NULL);
                        player->stateFlags2 |= 0x800000;
                        this->actionFunc = func_80A9187C;
                        return;
                    }
                    if (this->actor.xzDistToPlayer < 80.0f) {
                        player->stateFlags2 |= 0x800000;
                    }
                }
                func_8002F2CC(&this->actor, globalCtx, 100.0f);
            }
        }
    }
}

void func_80A915B8(EnKakasi3* this, GlobalContext* globalCtx) {

    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        func_8010BD58(globalCtx, 0x2C);
        this->actionFunc = func_80A91620;
    }
}

void func_80A91620(EnKakasi3* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if ((globalCtx->msgCtx.unk_E3EE == 4 || (globalCtx->msgCtx.unk_E3EE >= 5 && globalCtx->msgCtx.unk_E3EE < 11)) &&
        (globalCtx->msgCtx.msgMode == 0)) {

        OnePointCutscene_EndCutscene(globalCtx, this->camId);
        if (globalCtx->cameraPtrs[this->camId] == NULL) {
            this->camId = SUBCAM_NONE;
        }
        if (this->camId != SUBCAM_NONE) {
            func_8005B1A4(globalCtx->cameraPtrs[this->camId]);
        }
        this->actionFunc = func_80A911F0;
        return;
    }

    if (globalCtx->msgCtx.unk_E3EE == 3 && globalCtx->msgCtx.msgMode == 0) {
        this->dialogState = 5;
        func_8010B680(globalCtx, 0x40A5, NULL);
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = func_80A91A90;
        return;
    }

    if (globalCtx->msgCtx.unk_E3EE == 1) {
        func_80A90EBC(this, globalCtx, 0);
        player->stateFlags2 |= 0x800000;
    }
}

void func_80A91760(EnKakasi3* this, GlobalContext* globalCtx) {

    func_80A90E28(this);
    SkelAnime_Update(&this->skelAnime);
    if (this->dialogState == func_8010BDBC(&globalCtx->msgCtx) && func_80106BC8(globalCtx)) {
        globalCtx->msgCtx.msgMode = 0x37;
        func_8010BD58(globalCtx, 0x2D);
        this->actionFunc = func_80A917FC;
        this->camId = OnePointCutscene_Init(globalCtx, 2280, -99, &this->actor, MAIN_CAM);
    }
}

void func_80A917FC(EnKakasi3* this, GlobalContext* globalCtx) {

    if (globalCtx->msgCtx.unk_E3EE != 15) {
        func_80A90EBC(this, globalCtx, 1);
    } else {
        globalCtx->msgCtx.unk_E3EE = 4;
        func_80106CCC(globalCtx);
        OnePointCutscene_EndCutscene(globalCtx, this->camId);
        this->actionFunc = func_80A911F0;
    }
}

void func_80A9187C(EnKakasi3* this, GlobalContext* globalCtx) {

    if (func_8010BDBC(&globalCtx->msgCtx) == 5 && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        func_8010BD58(globalCtx, 0x28);
        this->actionFunc = func_80A918E4;
    }
}

void func_80A918E4(EnKakasi3* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (BREG(3) != 0) {
        // No way!
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ まさか！ ☆☆☆☆☆ %d\n" VT_RST, globalCtx->msgCtx.unk_E3EE);
    }
    if ((globalCtx->msgCtx.unk_E3EE == 4 || (globalCtx->msgCtx.unk_E3EE >= 5 && globalCtx->msgCtx.unk_E3EE < 11)) &&
        globalCtx->msgCtx.msgMode == 0) {

        func_8010B680(globalCtx, 0x40A6, NULL);
        this->dialogState = 5;
        OnePointCutscene_EndCutscene(globalCtx, this->camId);
        this->camId = SUBCAM_NONE;
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = func_80A91A90;
        return;
    }

    if (globalCtx->msgCtx.unk_E3EE == 3 && globalCtx->msgCtx.msgMode == 0) {
        globalCtx->msgCtx.unk_E3EE = 4;
        if (BREG(3) != 0) {
            osSyncPrintf("\n\n");
            // With this, other guys are OK! That's it!
            osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ これで、他の奴もＯＫ！だ！ ☆☆☆☆☆ %d\n" VT_RST,
                         globalCtx->msgCtx.unk_E3EE);
        }
        this->unk_195 = true;
        func_8010B680(globalCtx, 0x40A7, NULL);
        this->dialogState = 5;
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = func_80A91A90;
        return;
    }

    if (globalCtx->msgCtx.unk_E3EE == 1) {
        func_80A90EBC(this, globalCtx, 0);
        player->stateFlags2 |= 0x800000;
    }
}

void func_80A91A90(EnKakasi3* this, GlobalContext* globalCtx) {
    func_80A90E28(this);
    SkelAnime_Update(&this->skelAnime);
    func_8002DF54(globalCtx, NULL, 8);

    if (this->dialogState == func_8010BDBC(&globalCtx->msgCtx) && func_80106BC8(globalCtx)) {
        if (this->unk_195) {
            if (!(gSaveContext.eventChkInf[9] & 0x1000)) {
                gSaveContext.eventChkInf[9] |= 0x1000;
            }
        }
        if (globalCtx->cameraPtrs[this->camId] == NULL) {
            this->camId = SUBCAM_NONE;
        }
        if (this->camId != SUBCAM_NONE) {
            func_8005B1A4(globalCtx->cameraPtrs[this->camId]);
        }
        func_80106CCC(globalCtx);
        globalCtx->msgCtx.unk_E3EE = 4;
        func_8002DF54(globalCtx, NULL, 7);
        this->actionFunc = func_80A911F0;
    }
}

void EnKakasi3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;
    s32 pad;
    s32 i;

    if (BREG(2) != 0) {
        osSyncPrintf("\n\n");
        // flag!
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n" VT_RST, gSaveContext.scarecrowSpawnSongSet);
    }

    this->unk_198++;
    this->actor.world.rot = this->actor.shape.rot;
    for (i = 0; i < ARRAY_COUNT(this->unk_19C); i++) {
        if (this->unk_19C[i] != 0) {
            this->unk_19C[i]--;
        }
    }

    Actor_SetFocus(&this->actor, 60.0f);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 28);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnKakasi3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, NULL, this);
}
