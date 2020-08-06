/*
 * File: z_en_wonder_talk.c
 * Overlay: ovl_En_Wonder_Talk
 * Description: Checkable spot (Green Navi)
 */

#include "z_en_wonder_talk.h"

#define FLAGS 0x08000009

#define THIS ((EnWonderTalk*)thisx)

void EnWonderTalk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWonderTalk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWonderTalk_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80B391CC(EnWonderTalk* this, GlobalContext* globalCtx);
void func_80B395F0(EnWonderTalk* this, GlobalContext* globalCtx);
void func_80B3943C(EnWonderTalk* this, GlobalContext* globalCtx);

const ActorInit En_Wonder_Talk_InitVars = {
    ACTOR_EN_WONDER_TALK,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWonderTalk),
    (ActorFunc)EnWonderTalk_Init,
    (ActorFunc)EnWonderTalk_Destroy,
    (ActorFunc)EnWonderTalk_Update,
    NULL,
};

void EnWonderTalk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnWonderTalk_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWonderTalk* this = THIS;

    osSyncPrintf("\n\n");
    osSyncPrintf("\x1b[32m☆☆☆☆☆ 特殊会話くん ☆☆☆☆☆ %x\n\x1b[m", this->actor.params);

    this->unk_150 = (this->actor.params >> 0xB) & 0x1F;
    this->unk_152 = (this->actor.params >> 6) & 0x1F;
    this->unk_154 = this->actor.params & 0x3F;
    if (this->unk_154 == 0x3F) {
        this->unk_154 = -1;
    }
    this->actor.unk_1F = 1;
    if (this->unk_154 >= 0) {
        if (Flags_GetSwitch(globalCtx, this->unk_154)) {
            osSyncPrintf("\x1b[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n\x1b[m", this->unk_154);
            Actor_Kill(&this->actor);
            return;
        }
    }
    this->actionFunc = func_80B391CC;
    this->unk_15C = 40.0f;
}

void func_80B391CC(EnWonderTalk* this, GlobalContext* globalCtx) {
    if (this->unk_154 < 0 || Flags_GetSwitch(globalCtx, this->unk_154) == 0) {
        switch (this->unk_150) {
            case 1:
                osSyncPrintf("\x1b[32m ☆☆☆☆☆ 石板ＧＯ！ ☆☆☆☆☆ \n\x1b[m");
                this->fHeight = 0.0f;
                this->unk_15C = 80.0f;
                osSyncPrintf("\x1b[35m☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n\x1b[m", 0.0f);
                if (LINK_IS_CHILD) {
                    this->actor.textId = 0x7040;
                    osSyncPrintf("\x1b[32m ☆☆☆☆☆ こども ☆☆☆☆☆ \n\x1b[m");
                } else {
                    osSyncPrintf("\x1b[36m ☆☆☆☆☆ おとな ☆☆☆☆☆ \n\x1b[m");
                    this->actor.textId = 0x7088;
                }

                this->unk_156 = 5;
                osSyncPrintf("\x1b[36m☆☆☆☆☆ this->actor.talk_message    ☆☆☆☆☆ %x\n\x1b[m", this->actor.textId);
                break;
            case 2:
                osSyncPrintf("\x1b[32m ☆☆☆☆☆ 日記帳スタート！ ☆☆☆☆☆ \n\x1b[m");
                this->actor.textId = 0x5002;
                this->unk_156 = 4;
                this->fHeight = 30.0f;
                this->unk_15C = 40.0f;
                osSyncPrintf("\x1b[35m☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n\x1b[m", 30.0f);
                break;
            case 3:
                this->actor.textId = 0x501E;
                this->unk_156 = 5;
                this->fHeight = 0.0f;
                this->unk_15C = 110.0f;
                osSyncPrintf("\x1b[35m☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n\x1b[m", 0.0f);
                break;
            case 4:
                this->actor.textId = 0x5020;
                this->unk_156 = 6;
                this->fHeight = 0.0f;
                osSyncPrintf("\x1b[35m☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n\x1b[m", 0.0f);
                this->unk_15C = 120.0f;
                if ((gSaveContext.eventChkInf[1] & 0x2000) != 0) {
                    Actor_Kill(&this->actor);
                }
                break;
            case 5:
                this->actor.textId = 0x501F;
                this->unk_156 = 5;
                this->fHeight = 0.0f;
                this->unk_15C = 110.0f;
                osSyncPrintf("\x1b[35m☆☆☆☆☆ 注目座標\t       \t☆☆☆☆☆ %f\n\x1b[m", 0.0f);
                break;
            default:
                this->actor.textId = 0x7072;
                this->unk_156 = 5;
                break;
        }

        osSyncPrintf("\x1b[36m☆☆☆☆☆ this->actor.talk_message    ☆☆☆☆☆ %x\n\x1b[m", this->actor.textId);
        this->actionFunc = func_80B3943C;
    }
}

void func_80B3943C(EnWonderTalk* this, GlobalContext* globalCtx) {
    s16 yawDiff;
    s16 phi_v1;

    this->unk_15A++;
    if (this->unk_150 == 4 && (gSaveContext.eventChkInf[1] & 0x2000)) {
        Actor_Kill(&this->actor);
    } else if ((this->unk_154 < 0) || (Flags_GetSwitch(globalCtx, this->unk_154) == 0)) {
        if ((func_8002F194(&this->actor, globalCtx))) {
            if (this->unk_156 != 6) {
                this->actionFunc = func_80B395F0;
            } else {
                if (this->unk_154 >= 0) {
                    this->actor.flags &= -2;
                    Flags_SetSwitch(globalCtx, this->unk_154);
                }
                this->actionFunc = func_80B391CC;
            }
        } else if (!(this->unk_15C < this->actor.xzDistFromLink)) {
            yawDiff = (this->actor.yawTowardsLink - this->actor.posRot.rot.y);
            if (yawDiff >= 0) {
                phi_v1 = yawDiff;
            } else {
                phi_v1 = -yawDiff;
            }
            if (phi_v1 < 0x4000) {
                if (this->unk_15A >= 2) {
                    osSyncPrintf("\n\n");
                    osSyncPrintf("\x1b[33m☆☆☆☆☆ セーブ情報\t\t☆☆☆☆☆ %d\n\x1b[m", this->unk_154);
                    osSyncPrintf("\x1b[35m☆☆☆☆☆ 種類インデックス\t☆☆☆☆☆ %d\n\x1b[m", this->unk_150);
                    osSyncPrintf("\x1b[36m☆☆☆☆☆ 実質メッセージ種類     %x\n\x1b[m", this->actor.textId);
                    osSyncPrintf("\x1b[32m☆☆☆☆☆ 指定範囲               %d\n\x1b[m", this->actor.posRot.rot.z);
                    osSyncPrintf("\n\n");
                }
                this->unk_15A = 0;
                func_8002F2CC(&this->actor, globalCtx, this->unk_15C);
            }
        }
    }
}

void func_80B395F0(EnWonderTalk* this, GlobalContext* globalCtx) {
    if (this->unk_156 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx)) {
            if (this->unk_154 >= 0) {
                this->actor.flags &= -2;
                Flags_SetSwitch(globalCtx, this->unk_154);
            }
            switch (this->unk_150) {
                case 1:
                    func_80106CCC(globalCtx);
                    this->actionFunc = func_80B391CC;
                    break;
                case 2:
                    switch (globalCtx->msgCtx.choiceIndex) {
                        case 0:
                            if (LINK_IS_CHILD) {
                                // I'm still a child!
                                osSyncPrintf("\x1b[32m ☆☆☆☆☆ まだコドモなの！ ☆☆☆☆☆ \n\x1b[m");
                                this->actor.textId = 0x5001;
                            } else {
                                // I'm an adult. .. ..
                                osSyncPrintf("\x1b[33m ☆☆☆☆☆ アダルトなの。。。 ☆☆☆☆☆ \n\x1b[m");
                                this->actor.textId = 0x5003;
                            }
                            break;
                        case 1:
                            // Out!
                            osSyncPrintf("\x1b[35m ☆☆☆☆☆ はずれ！ ☆☆☆☆☆ \n\x1b[m");
                            this->actor.textId = 0x5004U;
                            break;
                    }

                    this->unk_156 = 6;
                    func_8010B720(globalCtx, this->actor.textId);
                    this->actionFunc = func_80B391CC;
                    break;
                case 3:
                    func_80106CCC(globalCtx);
                    if (this->unk_164 == 0) {
                        Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0xD, this->actor.posRot.pos.x,
                                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 2);
                        this->unk_164 = 1;
                    }

                    this->actionFunc = func_80B391CC;
                    break;
                case 5:
                    func_80106CCC(globalCtx);
                    if (this->unk_164 == 0) {
                        Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0xD, this->actor.posRot.pos.x,
                                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 3);
                        this->unk_164 = 1;
                    }
                    this->actionFunc = func_80B391CC;
                    break;
            }
        }
    }
}

void EnWonderTalk_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWonderTalk* this = THIS;

    if (this->unk_158) {
        this->unk_158 -= 1;
    }
    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, this->fHeight);

    if (BREG(0) != 0) {
        if (this->unk_15A) {
            if ((this->unk_15A & 1) == 0) {
                DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                       this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                       1.0f, 1.0f, 1.0f, 0xA, 0xA, 0xA, 0xFF, 4, globalCtx->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                   this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f,
                                   1.0f, 1.0f, 0, 0xFF, 0, 0xFF, 4, globalCtx->state.gfxCtx);
        }
    }
}
