/*
 * File: z_en_wonder_talk2.c
 * Overlay: ovl_En_Wonder_Talk2
 * Description: Dialog spot
 */

#include "z_en_wonder_talk2.h"

#define FLAGS 0x08000009

#define THIS ((EnWonderTalk2*)thisx)

void EnWonderTalk2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWonderTalk2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWonderTalk2_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80B3A10C(EnWonderTalk2* this, GlobalContext* globalCtx);
void func_80B3A4F8(EnWonderTalk2* this, GlobalContext* globalCtx);
void func_80B3A15C(EnWonderTalk2* this, GlobalContext* globalCtx);
void func_80B3A3D4(EnWonderTalk2* this, GlobalContext* globalCtx);
void EnWonderTalk2_DoNothing(EnWonderTalk2* this, GlobalContext* globalCtx);

const ActorInit En_Wonder_Talk2_InitVars = {
    ACTOR_EN_WONDER_TALK2,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWonderTalk2),
    (ActorFunc)EnWonderTalk2_Init,
    (ActorFunc)EnWonderTalk2_Destroy,
    (ActorFunc)EnWonderTalk2_Update,
    NULL,
};

// u32 D_80B3A8E0[] = {0x00060000, 0x00010002, 0x00030004, 0x00050000};

s16 D_80B3A8E0[] = { 0x6, 0x0, 0x1, 0x2, 0x3, 0x4, 0x5 };
void EnWonderTalk2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnWonderTalk2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWonderTalk2* this = THIS;
    s32 offsetCounter;
    s16 zOffset;

    osSyncPrintf("\n\n");
    osSyncPrintf("\x1b[32m☆☆☆☆☆ 透明メッセージ君 ☆☆☆☆☆ %x\n\x1b[m", this->actor.params);
    this->unk_150 = (this->actor.params >> 6) & 0xFF;
    if (this->actor.posRot.rot.z > 0) {
        offsetCounter = 0;
        zOffset = this->actor.posRot.rot.z;

        while (zOffset > 10) {
            zOffset -= 10;
            offsetCounter += 1;
        }

        this->unk_15C = zOffset * 40.0f;
        if (offsetCounter > 6) {
            offsetCounter = 0;
        }

        this->actor.unk_1F = D_80B3A8E0[offsetCounter];

        osSyncPrintf("\n\n");
        osSyncPrintf("\x1b[33m☆☆☆☆☆ 元は？       ☆☆☆☆☆ %d\n\x1b[m", this->actor.posRot.rot.z);
        osSyncPrintf("\x1b[35m☆☆☆☆☆ レンジは？   ☆☆☆☆☆ %d\n\x1b[m", this->actor.unk_1F);
        osSyncPrintf("\x1b[36m☆☆☆☆☆ は、範囲わ？ ☆☆☆☆☆ %f\n\x1b[m", this->unk_15C);
        osSyncPrintf("\n\n");
        osSyncPrintf("\n\n");
        osSyncPrintf("\n\n");
    }
    this->posRot = this->actor.posRot.pos;
    this->unk_152 = (this->actor.params & 0x3F);
    this->unk_154 = ((this->actor.params >> 0xE) & 3);

    if (this->unk_152 == 0x3F) {
        this->unk_152 = -1;
    }
    if (this->unk_152 >= 0 && (Flags_GetSwitch(globalCtx, this->unk_152) != 0)) {
        osSyncPrintf("\x1b[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n\x1b[m", this->unk_152);
        Actor_Kill(&this->actor);
        return;
    }
    if ((this->unk_154 == 1) && (globalCtx->sceneNum == 0xB) && (this->unk_152 != 8) && (this->unk_152 != 0x16) &&
        (this->unk_152 != 0x2F)) {

        this->unk_15A = 0;
        this->unk_154 = 4;
    }
    if (this->unk_154 == 3) {
        this->actor.flags &= 0xF7FFFFFF;
        this->actionFunc = EnWonderTalk2_DoNothing;
    } else {
        this->actionFunc = func_80B3A10C;
    }
}

void func_80B3A10C(EnWonderTalk2* this, GlobalContext* globalCtx) {
    this->actor.textId = 0x200;
    this->actor.textId |= this->unk_150;
    if (this->unk_154 == 1 || this->unk_154 == 4) {
        this->actionFunc = func_80B3A4F8;
    } else {
        this->actionFunc = func_80B3A15C;
    }
}

void func_80B3A15C(EnWonderTalk2* this, GlobalContext* globalCtx) {
    Player* player;
    Actor* actor;
    s16 yawDiff;
    s16 phi_v1;

    actor = &this->actor;
    player = PLAYER;
    this->unk_158++;
    if (((this->unk_152) >= 0) && (Flags_GetSwitch(globalCtx, this->unk_152) != 0)) {
        if (this->unk_15A == 0) {
            this->actor.flags &= -2;
            this->unk_15A = 1;
            return;
        }

    } else {
        if (func_8002F194(&this->actor, globalCtx) != 0) {
            if ((this->unk_152 >= 0) && (this->unk_154 != 2)) {
                Flags_SetSwitch(globalCtx, this->unk_152);
                osSyncPrintf("\x1b[35m☆☆☆☆☆ セーブしたよ！おもいっきり！ %x\n\x1b[m", this->unk_152);
            }

            this->actionFunc = func_80B3A10C;
            return;
        }

        yawDiff = this->actor.yawTowardsLink - this->actor.posRot.rot.y;
        phi_v1 = (yawDiff >= 0) ? yawDiff : -yawDiff;

        if ((!((40.0f + this->unk_15C) < (*actor).xzDistFromLink)) &&
            ((!(fabsf(player->actor.posRot.pos.y - (*actor).posRot.pos.y) > 100.0f)) && (phi_v1 < 0x4000))) {
            if (this->unk_158 >= 2) {
                osSyncPrintf("\n\n");
                osSyncPrintf("\x1b[32m☆☆☆☆☆ 透明メッセージ君せっと %x\n\x1b[m", this->actor.params);
                osSyncPrintf("\x1b[33m☆☆☆☆☆ セーブ情報 \t           %x\n\x1b[m", this->unk_152);
                osSyncPrintf("\x1b[35m☆☆☆☆☆ 指定メッセージ種類     %x\n\x1b[m", this->unk_150);
                osSyncPrintf("\x1b[36m☆☆☆☆☆ 実質メッセージ種類     %x\n\x1b[m", this->actor.textId);
                osSyncPrintf("\x1b[32m☆☆☆☆☆ 指定範囲               %d\n\x1b[m", this->actor.posRot.rot.z);
                osSyncPrintf("\x1b[33m☆☆☆☆☆ 処理範囲               %f\n\x1b[m", this->unk_15C);
                switch (this->unk_154) {
                    case 0:
                        osSyncPrintf("\x1b[35m ☆☆ 通常 ☆☆ \n\x1b[m");
                        break;

                    case 2:
                        osSyncPrintf("\x1b[35m ☆☆ チェックのみ ☆☆ \n\x1b[m");
                        break;

                    case 3:
                        osSyncPrintf("\x1b[35m ☆☆ ロックのみ ☆☆ \n\x1b[m");
                        break;
                }
            }

            this->unk_158 = 0;
            func_8002F1C4(&this->actor, globalCtx, this->unk_15C + 50.0f, 100.0f, 0);
        }
    }
}
void func_80B3A3D4(EnWonderTalk2* this, GlobalContext* globalCtx) {
    u8 dialogState;

    if (BREG(2) != 0) {
        osSyncPrintf("\x1b[35m☆☆☆☆☆ わー %d\n\x1b[m", func_8010BDBC(&globalCtx->msgCtx));
    }
    dialogState = func_8010BDBC(&globalCtx->msgCtx);

    switch (dialogState) {
        case 5:
        case 6:
            if (func_80106BC8(globalCtx) != 0){
                if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
                    func_80106CCC(globalCtx);
                }
            } else {
                return;
            }
        case 0:
            if ((this->unk_152 >= 0) && (this->unk_154 != 4)) {
                Flags_SetSwitch(globalCtx, this->unk_152);
                osSyncPrintf("\x1b[35m☆☆☆☆☆ (強制)セーブしたよ！おもいっきり！ %x\n\x1b[m", this->unk_152);
            }

            if (this->unk_154 == 4) {
                this->unk_15A = 1;
            }
            this->actor.flags &= -0x12;
            func_8002DF54(globalCtx, NULL, 7U);
            this->unk_156 = 1;
            this->actionFunc = func_80B3A4F8;
        break;
    }
}

void func_80B3A4F8(EnWonderTalk2* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
    this->unk_158++;
    if ((this->unk_152 >= 0) && (Flags_GetSwitch(globalCtx, this->unk_152) != 0)) {
        if (this->unk_15A == 0) {
            this->actor.flags &= -2;
            this->unk_15A = 1;
            return;
        }
    } else {
        if ((this->unk_154 != 4) || (this->unk_15A == 0)) {
            if (BREG(2) != 0) {
                osSyncPrintf("\x1b[35m☆☆☆☆☆ きょり %f\n\x1b[m", this->actor.xzDistFromLink);
            }
            if (((this->actor.xzDistFromLink < (40.0f + this->unk_15C)) &&
                 (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 100.0f)) &&
                (Gameplay_InCsMode(globalCtx) == 0)) {
                if (this->unk_158 >= 2) {
                    osSyncPrintf("\n\n");
                    osSyncPrintf("\x1b[32m☆☆☆☆☆ 透明メッセージ君せっと %x\n\x1b[m", this->actor.params);
                    osSyncPrintf("\x1b[33m☆☆☆☆☆ セーブ情報 \t           %x\n\x1b[m", this->unk_152);
                    osSyncPrintf("\x1b[35m☆☆☆☆☆ 指定メッセージ種類     %x\n\x1b[m", this->unk_150);
                    osSyncPrintf("\x1b[36m☆☆☆☆☆ 実質メッセージ種類     %x\n\x1b[m", this->actor.textId);
                    osSyncPrintf("\x1b[32m☆☆☆☆☆ 指定範囲               %d\n\x1b[m", this->actor.posRot.rot.z);
                    osSyncPrintf("\x1b[33m☆☆☆☆☆ 処理範囲               %f\n\x1b[m", this->unk_15C);
                    osSyncPrintf("\x1b[35m☆☆☆☆☆ レンジは？ \t\t   %d\n\x1b[m", this->actor.unk_1F);
                    osSyncPrintf("\n\n");
                    osSyncPrintf("\n\n");
                    switch (this->unk_154) {
                        case 1:
                            osSyncPrintf("\x1b[35m ☆☆ 強制 ☆☆ \n\x1b[m");
                            break;
                        case 4:
                            osSyncPrintf("\x1b[31m ☆☆ ゲルドの修練場強制チェックのみ ☆☆ \n\x1b[m");
                            break;
                    }

                    osSyncPrintf("\n\n");
                }
                this->unk_158 = 0;
                if (this->unk_156 == 0) {
                    func_8010B680(globalCtx, this->actor.textId, NULL);
                    func_8002DF54(globalCtx, NULL, 8);
                    this->actor.flags |= 0x11;
                    this->actionFunc = func_80B3A3D4;
                    return;
                }

            } else {
                this->unk_156 = 0;
            }
        } else {
        }
    }
}

void EnWonderTalk2_DoNothing(EnWonderTalk2* this, GlobalContext* globalCtx) {
}

void EnWonderTalk2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWonderTalk2* this = THIS;

    this->actionFunc(this, globalCtx);
    this->actor.posRot.pos.y = this->posRot.y;

    Actor_SetHeight(&this->actor, this->height);
    if (BREG(0)) {
        if (this->unk_158) {
            if ((this->unk_158 & 1) == 0) {
                DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                       this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                       1.0f, 1.0f, 1.0f, 0x46, 0x46, 0x46, 0xFF, 4, globalCtx->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                   this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f,
                                   1.0f, 1.0f, 0, 0, 0xFF, 0xFF, 4, globalCtx->state.gfxCtx);
        }
    }
}
