#include "z_en_okarina_tag.h"

#define FLAGS 0x02000010

#define THIS ((EnOkarinaTag*)thisx)

void EnOkarinaTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOkarinaTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOkarinaTag_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80ABEF2C(EnOkarinaTag* this, GlobalContext* globalCtx);
void func_80ABF708(EnOkarinaTag* this, GlobalContext* globalCtx);
void func_80ABF28C(EnOkarinaTag* this, GlobalContext* globalCtx);
void func_80ABF0CC(EnOkarinaTag* this, GlobalContext* globalCtx);

#include "z_en_okarina_tag_cutscene_data.c" EARLY

const ActorInit En_Okarina_Tag_InitVars = {
    ACTOR_EN_OKARINA_TAG,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnOkarinaTag),
    (ActorFunc)EnOkarinaTag_Init,
    (ActorFunc)EnOkarinaTag_Destroy,
    (ActorFunc)EnOkarinaTag_Update,
    NULL,
};

void EnOkarinaTag_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnOkarinaTag_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnOkarinaTag* this = THIS;
    osSyncPrintf("\n\n");
    osSyncPrintf("\x1b[32m☆☆☆☆☆ オカリナタグ発生 ☆☆☆☆☆ %x\n\x1b[m", this->actor.params);
    this->actor.flags &= ~1;
    this->unk_150 = (this->actor.params >> 0xA) & 0x3F;
    this->unk_152 = (this->actor.params >> 6) & 0xF;
    this->unk_154 = this->actor.params & 0x3F;
    if (this->unk_154 == 0x3F) {
        this->unk_154 = -1;
    }
    if (this->unk_152 == 0xF) {
        this->unk_152 = 0;
        this->unk_158 = 1;
    }
    this->actor.unk_1F = 1;
    if (this->actor.posRot.rot.z > 0) {
        this->unk_15C = this->actor.posRot.rot.z * 40.0f;
    }
    osSyncPrintf("\x1b[32m☆☆☆☆☆ セーブ情報\t ☆☆☆☆☆ %d\n\x1b[m", this->unk_154);
    osSyncPrintf("\x1b[33m☆☆☆☆☆ 種類インデックス ☆☆☆☆☆ %d\n\x1b[m", this->unk_150);
    osSyncPrintf("\x1b[35m☆☆☆☆☆ 正解情報\t ☆☆☆☆☆ %d\n\x1b[m", this->unk_152);
    osSyncPrintf("\x1b[36m☆☆☆☆☆ 範囲情報\t ☆☆☆☆☆ %d\n\x1b[m", this->actor.posRot.rot.z);
    osSyncPrintf("\x1b[36m☆☆☆☆☆ 処理範囲情報\t ☆☆☆☆☆ %f\n\x1b[m", (f64)this->unk_15C);
    osSyncPrintf("\x1b[32m☆☆☆☆☆ 当り？\t\t ☆☆☆☆☆ %d\n\x1b[m", this->unk_158);
    osSyncPrintf("\n\n");
    if (this->unk_154 >= 0) {
        if (Flags_GetSwitch(globalCtx, this->unk_154) != 0) {
            Actor_Kill(&this->actor);
            return;
        }
    }

    switch (this->unk_150) {
        case 7:
            this->actionFunc = func_80ABEF2C;
            break;
        case 2:
            if (LINK_IS_ADULT) {
                Actor_Kill(&this->actor);
                break;
            }
        case 1:
        case 4:
        case 6:
            this->actionFunc = func_80ABF28C;
            break;
        case 5:
            this->actor.textId = 0x5021;
            this->actionFunc = func_80ABF708;
            break;
        default:
            Actor_Kill(&this->actor);
            break;
    }
}

void func_80ABEF2C(EnOkarinaTag* this, GlobalContext* globalCtx) {
    Player* player;
    f32 temp_f14;
    u16 phi_v0;

    player = PLAYER;
    this->unk_15A++;
    if (this->unk_154 >= 0) {
        if (Flags_GetSwitch(globalCtx, this->unk_154) != 0) {
            this->actor.flags &= ~1;
            return;
        }
    }
    if ((this->unk_152 != 6) || (gSaveContext.unk_F3C[905] != 0)) {
        if ((s32)(player->stateFlags2 << 7) < 0) {
            osSyncPrintf("\x1b[31m☆☆☆☆☆ 北！！！！！ ☆☆☆☆☆ %f\n\x1b[m", (f64)this->actor.xzDistFromLink);
        }
        if ((this->actor.xzDistFromLink < (90.0f + this->unk_15C)) &&
            (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 80.0f)) {
            {
                if ((s32)(player->stateFlags2 << 6) < 0) {
                    phi_v0 = this->unk_152;
                    if (phi_v0 == 6) {
                        phi_v0 = 0xA;
                    }
                    player->stateFlags2 |= 0x800000;
                    func_8010BD58(globalCtx, phi_v0 + 0x22);
                    this->actionFunc = func_80ABF0CC;
                } else if ((this->actor.xzDistFromLink < (50.0f + this->unk_15C) &&
                            ((fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 40.0f)))) {
                    this->unk_15A = 0;
                    *(EnOkarinaTag**)&player->unk_6A8 = this;
                }
            }
        }
    }
}

void func_80ABF0CC(EnOkarinaTag* this, GlobalContext* globalCtx) {
    Player* player;
    s16 temp_a1;
    s16 temp_a1_2;

    player = PLAYER;
    if (globalCtx->msgCtx.unk_E3EE == 4) {
        this->actionFunc = func_80ABEF2C;
        return;
    }
    if (globalCtx->msgCtx.unk_E3EE == 3) {
        if (this->unk_154 >= 0) {
            Flags_SetSwitch(globalCtx, this->unk_154);
        }
        if (globalCtx->sceneNum == 5) {
            globalCtx->msgCtx.msgMode = 0x37;
        }
        if (globalCtx->sceneNum != 0x3B) {
            if (globalCtx->sceneNum != 0x3D) {
                globalCtx->msgCtx.unk_E3EE = 4;
            }
        }
        func_80078884(0x4802);
        this->actionFunc = func_80ABEF2C;
        return;
    }
    if (this->unk_158 != 0) {
        if ((globalCtx->msgCtx.unk_E3EE == 5) || (globalCtx->msgCtx.unk_E3EE == 6) ||
            (globalCtx->msgCtx.unk_E3EE == 7) || (globalCtx->msgCtx.unk_E3EE == 8) ||
            (globalCtx->msgCtx.unk_E3EE == 9) || (globalCtx->msgCtx.unk_E3EE == 10) ||
            (globalCtx->msgCtx.unk_E3EE == 13)) {
            if (this->unk_154 >= 0) {
                Flags_SetSwitch(globalCtx, this->unk_154);
            }
            globalCtx->msgCtx.unk_E3EE = 4;
            func_80078884(0x4802);
            this->actionFunc = func_80ABEF2C;
            return;
        }
    }
    if ((globalCtx->msgCtx.unk_E3EE >= 5) && (globalCtx->msgCtx.unk_E3EE < 0xE)) {
        globalCtx->msgCtx.unk_E3EE = 4;
        this->actionFunc = func_80ABEF2C;
    } else if (globalCtx->msgCtx.unk_E3EE == 1) {
        player->stateFlags2 |= 0x800000;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF28C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF4C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF708.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/EnOkarinaTag_Update.s")
