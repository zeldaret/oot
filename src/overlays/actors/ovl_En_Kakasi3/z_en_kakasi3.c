/*
 * File: z_en_kakasi3.c
 * Overlay: ovl_En_Kakasi3
 * Description: Bonooru the Scarecrow
 */

#include "z_en_kakasi3.h"
#include "vt.h"

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
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060065B0;
extern AnimationHeader D_06000214;

const ActorInit En_Kakasi3_InitVars = {
    ACTOR_EN_KAKASI3,
    ACTORTYPE_NPC,
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
    //! @bug Skelanime_Free is not called
}

void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    osSyncPrintf("\n\n");
    // Translates to: Obonur -- Related to the name of the scarecrow (Bonooru)
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ おーボヌール ☆☆☆☆☆ \n" VT_RST);
    this->actor.unk_1F = 6;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060065B0, &D_06000214, NULL, NULL, 0);
    this->actor.flags |= 0x400;
    this->rot = this->actor.posRot.rot;
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc = func_80A911F0;
}

void func_80A90E28(EnKakasi3* this) {
    this->unk_1A4 = 0;
    this->skelAnime.animPlaybackSpeed = 0.0f;
    this->unk_1AA = this->unk_1AE = 0x0;

    Math_SmoothDownscaleMaxF(&this->skelAnime.animCurrentFrame, 0.5f, 1.0f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->rot.x, 5, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->rot.y, 5, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->rot.z, 5, 0x2710, 0);
}

void func_80A90EBC(EnKakasi3* this, GlobalContext* globalCtx, s32 arg) {
    s16 currentFrame;
    s16 phi_v0;

    phi_v0 = globalCtx->msgCtx.unk_E410[0];
    if (arg != 0) {
        if (this->unk_19C[3] == 0) {
            this->unk_19C[3] = (s16)Math_Rand_ZeroFloat(10.99f) + 30;
            this->unk_1A6 = (s16)Math_Rand_ZeroFloat(4.99f);
        }

        this->unk_19A = (s16)Math_Rand_ZeroFloat(2.99f) + 5;
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
        Math_SmoothScaleMaxF(&this->skelAnime.animPlaybackSpeed, this->unk_1B8, 0.1f, 0.2f);
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->unk_1AA, 0x5, 0x3E8, 0);
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->unk_1AE, 0x5, 0x3E8, 0);

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
        currentFrame = this->skelAnime.animCurrentFrame;
        if (currentFrame == 11 || currentFrame == 17) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_SWING);
        }
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }
}

void func_80A911F0(EnKakasi3* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000214.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000214, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = func_80A91284;
}

void func_80A91284(EnKakasi3* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    this->actor.textId = 0x40A1;
    this->dialogState = 6;
    this->unk_19A = 0;

    if (LINK_IS_CHILD) {
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
    Player* player = PLAYER;
    s16 angleTowardsLink;
    s16 absAngleTowardsLink;

    func_80A90E28(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->camId = -1;
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
        return;
    }

    angleTowardsLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (!(this->actor.xzDistFromLink > 120.0f)) {
        absAngleTowardsLink = ABS(angleTowardsLink);

        if (absAngleTowardsLink < 0x4300) {
            if (!this->unk_194) {

                if (player->stateFlags2 & 0x1000000) {
                    this->camId = func_800800F8(globalCtx, 0x8D4, -0x63, &this->actor, 0);
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->dialogState = 5;
                    this->unk_1B8 = 0.0f;
                    func_8010B680(globalCtx, 0x40A4, NULL);
                    player->stateFlags2 |= 0x800000;
                    this->actionFunc = func_80A915B8;
                    return;
                }
                if (this->actor.xzDistFromLink < 80.0f) {
                    player->stateFlags2 |= 0x800000;
                }
            } else if (gSaveContext.scarecrowSpawnSongSet && !this->unk_195) {

                if (player->stateFlags2 & 0x1000000) {
                    this->camId = func_800800F8(globalCtx, 0x8D4, -0x63, &this->actor, 0);
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->dialogState = 5;
                    this->unk_1B8 = 0.0f;
                    func_8010B680(globalCtx, 0x40A8, NULL);
                    player->stateFlags2 |= 0x800000;
                    this->actionFunc = func_80A9187C;
                    return;
                }
                if (this->actor.xzDistFromLink < 80.0f) {
                    player->stateFlags2 |= 0x800000;
                }
            }
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
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
    Player* player = PLAYER;

    if ((globalCtx->msgCtx.unk_E3EE == 4 || (globalCtx->msgCtx.unk_E3EE >= 5 && globalCtx->msgCtx.unk_E3EE < 11)) &&
        (globalCtx->msgCtx.msgMode == 0)) {

        func_800803F0(globalCtx, this->camId);
        if (globalCtx->cameraPtrs[this->camId] == NULL) {
            this->camId = -1;
        }
        if (this->camId != -1) {
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
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->dialogState == func_8010BDBC(&globalCtx->msgCtx) && func_80106BC8(globalCtx)) {
        globalCtx->msgCtx.msgMode = 0x37;
        func_8010BD58(globalCtx, 0x2D);
        this->actionFunc = func_80A917FC;
        this->camId = func_800800F8(globalCtx, 0x8E8, -0x63, &this->actor, 0);
    }
}

void func_80A917FC(EnKakasi3* this, GlobalContext* globalCtx) {

    if (globalCtx->msgCtx.unk_E3EE != 15) {
        func_80A90EBC(this, globalCtx, 1);
    } else {
        globalCtx->msgCtx.unk_E3EE = 4;
        func_80106CCC(globalCtx);
        func_800803F0(globalCtx, this->camId);
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
    Player* player = PLAYER;

    if (BREG(3) != 0) {
        // No way!
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ まさか！ ☆☆☆☆☆ %d\n" VT_RST, globalCtx->msgCtx.unk_E3EE);
    }
    if ((globalCtx->msgCtx.unk_E3EE == 4 || (globalCtx->msgCtx.unk_E3EE >= 5 && globalCtx->msgCtx.unk_E3EE < 11)) &&
        globalCtx->msgCtx.msgMode == 0) {

        func_8010B680(globalCtx, 0x40A6, NULL);
        this->dialogState = 5;
        func_800803F0(globalCtx, this->camId);
        this->camId = -1;
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
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_8002DF54(globalCtx, NULL, 8);

    if (this->dialogState == func_8010BDBC(&globalCtx->msgCtx) && func_80106BC8(globalCtx)) {
        if (this->unk_195) {
            if (!(gSaveContext.eventChkInf[9] & 0x1000)) {
                gSaveContext.eventChkInf[9] |= 0x1000;
            }
        }
        if (globalCtx->cameraPtrs[this->camId] == NULL) {
            this->camId = -1;
        }
        if (this->camId != -1) {
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
    this->actor.posRot.rot = this->actor.shape.rot;
    for (i = 0; i < ARRAY_COUNT(this->unk_19C); i++) {
        if (this->unk_19C[i] != 0) {
            this->unk_19C[i]--;
        }
    }

    Actor_SetHeight(&this->actor, 60.0f);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 28);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnKakasi3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL,
                     NULL, &this->actor);
}
