#include "z_en_encount2.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnEncount2*)thisx)

void EnEncount2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnEncount2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnEncount2_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A07A4C(EnEncount2* this, GlobalContext* globalCtx);
void func_80A07CA4(EnEncount2* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000DE0;

/*
const ActorInit En_Encount2_InitVars = {
    ACTOR_EN_ENCOUNT2,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnEncount2),
    (ActorFunc)EnEncount2_Init,
    NULL,
    (ActorFunc)EnEncount2_Update,
    (ActorFunc)EnEncount2_Draw,
};
*/

void EnEncount2_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnEncount2* this = THIS;

    if (globalCtx->sceneNum != 0x60) {
        this->unk15A = 1;
    }
    if (this->unk15A == 0) {
        osSyncPrintf("\n\n");
        // "☆☆☆☆☆ Death Mountain Encount2 set ☆☆☆☆☆"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ デスマウンテンエンカウント２セットされました ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        if (LINK_IS_ADULT && (gSaveContext.eventChkInf[4] & 0x200)) { //flag for having used fire temple blue warp
            Actor_Kill(thisx);
        }
    } else {
        osSyncPrintf("\n\n");
        // "☆☆☆☆☆ Ganon Tower Escape Encount2 set ☆☆☆☆☆"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ガノンタワー脱出エンカウント２セットされました ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
    }
    this->unk14C = func_80A07A4C;
}

void func_80A07A4C(EnEncount2* this, GlobalContext *globalCtx) {
    s32 pad;
    s16 quakeIndex;
    s16 phi_v1;
    Player* player = PLAYER;

    phi_v1 = 0;
    if (this->unk15A == 0) {
        if ((player->actor.posRot.pos.y > 1500.0f) && (player->actor.posRot.pos.x > -700.0f) && (player->actor.posRot.pos.x < 100.0f) && (player->actor.posRot.pos.z < -1290.0f) && (player->actor.posRot.pos.z > -3600.0f)) {
            phi_v1 = 1;
        }
    } else {
        if ((this->actor.xzDistToLink < 700.0f) && (Flags_GetSwitch(globalCtx, 0x37))) {
            if ((globalCtx->sceneNum == 0x4F) || (globalCtx->sceneNum == 0x1A) || (globalCtx->sceneNum == 0xE) || (globalCtx->sceneNum == 0xF)) {
                if (this->unk_15C == 0) {
                    phi_v1 = 2;
                }
            }
        }
    }
    switch (phi_v1){
        case 0:
            this->unk180 = 0;
            this->unk178--;
            
            if (this->unk178 <= 0) {
                this->unk178 = 0;
            }
            break;
        case 1:
            if ((this->unk154 == 1) || (this->unk180 == 0)){
                quakeIndex = Quake_Add(ACTIVE_CAM, 1);
                Quake_SetSpeed(quakeIndex, 0x7FFF);
                Quake_SetQuakeValues(quakeIndex, 0x32, 0, 0, 0);
                Quake_SetCountdown(quakeIndex, 0x12C);
                this->unk180 = 1;
            }
        case 2:
            this->unk178++;
            if (this->unk178 >= 0x3D) {
                this->unk178 = 0x3C;
            }
            if (this->unk154 == 0) {
                this->unk154 = 0xC8;
                this->unk158 = 0;
                this->unk14C = func_80A07CA4;
            }
            break;
    }
    return;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A07CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A08694.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A08748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A0891C.s")
