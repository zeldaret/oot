#include "z_en_heishi1.h"
#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnHeishi1*)thisx)

void EnHeishi1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A5162C(EnHeishi1* this, Camera* activeCam, Player* player);
void func_80A521FC(EnHeishi1* this, Camera* activeCam, Player* player);

s32 D_80A527A0 = 0x00000000;

const ActorInit En_Heishi1_InitVars = {
    ACTOR_PLAYER,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi1),
    (ActorFunc)EnHeishi1_Init,
    (ActorFunc)EnHeishi1_Destroy,
    (ActorFunc)EnHeishi1_Update,
    (ActorFunc)EnHeishi1_Draw,
};

f32 D_80A527C4[][8] = {
    1.0f, -10.0f, 3.0f, 0.5f, 1000.0f, 200.0f, 0.3f, 1000.0f, 
    3.0f, -3.0f, 6.0f, 0.8f, 2000.0f, 400.0f, 0.5f, 2000.0f,
    1.0f, -10.0f, 3.0f, 0.5f, 1000.0f, 200.0f, 0.3f, 1000.0f, 
    3.0f, -3.0f, 6.0f, 0.8f, 2000.0f, 400.0f, 0.5f, 2000.0f,
};

s32 D_80A52844[] = { 0x0014000A, 0x0014000A, 0x000D0000 };

Vec3f D_80A52850[] = {
    { 0.0f, 0.0f, 90.0f },  { -55.0f, 0.0f, 90.0f }, { -55.0f, 0.0f, 30.0f }, { -55.0f, 0.0f, -30.0f },
    { 0.0f, 0.0f, -30.0f }, { 55.0f, 0.0f, -30.0f }, { 55.0f, 0.0f, 30.0f },  { 55.0f, 0.0f, 90.0f },
};

s32 D_80A528B0[] = {
    7, 7, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 4, 4, 5, 6,
};

s32 D_80A528F0[] = { 0x00000004, 0x00010005, 0x00020006, 0x00030007 };

s32 D_80A52900[] = { 0x00000000, 0x00000000, 0x00000000 };

Vec3f D_80A5290C = { 0.0f, 0.0f, 20.0f };

Vec3f D_80A52918 = { 0.3f, 0.3f, 0.3f };

extern AnimationHeader D_06005C30;
extern SkeletonHeader D_0600BAC8;

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Init.s")
void EnHeishi1_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHeishi1* this = THIS;
    Vec3f rupeePos;
    s32 i;

    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, &this->limbDrawTable,
                   &this->transitionDrawTable, 17);

    this->type = (this->actor.params >> 8) & 0xFF;
    this->path = this->actor.params & 0xFF;

    for (i = 0; i < ARRAY_COUNT(D_80A527C4[0]); i++) {
        this->animParams[i] = D_80A527C4[this->type][i];
    }

    // "type"
    osSyncPrintf(VT_FGCOL(GREEN) "種類☆☆☆☆☆☆☆☆☆☆☆☆☆ %d\n" VT_RST, this->type);

    // "path data"
    osSyncPrintf(VT_FGCOL(YELLOW) "れえるでぇたぁ☆☆☆☆☆☆☆☆ %d\n" VT_RST, this->path);

    osSyncPrintf(VT_FGCOL(PURPLE) "anime_frame_speed ☆☆☆☆☆☆ %f\n" VT_RST, this->animSpeed);

    // "interpolation frames"
    osSyncPrintf(VT_FGCOL(PURPLE) "補間フレーム☆☆☆☆☆☆☆☆☆ %f\n" VT_RST, this->interpolation);

    // "targeted movement speed value between points"
    osSyncPrintf(VT_FGCOL(PURPLE) "point間の移動スピード目標値 ☆ %f\n" VT_RST, this->moveSpeedTarget);

    // "maximum movement speed value between points"
    osSyncPrintf(VT_FGCOL(PURPLE) "point間の移動スピード最大 ☆☆ %f\n" VT_RST, this->moveSpeedMax);

    // "(body) targeted turning angle speed value"
    osSyncPrintf(VT_FGCOL(PURPLE) "(体)反転アングルスピード目標値 %f\n" VT_RST, this->bodyTurnSpeedTarget);

    // "(body) maximum turning angle speed"
    osSyncPrintf(VT_FGCOL(PURPLE) "(体)反転アングルスピード最大☆ %f\n" VT_RST, this->bodyTurnSpeedMax);

    // "(head) targeted turning angle speed value"
    osSyncPrintf(VT_FGCOL(PURPLE) "(頭)反転アングルスピード加算値 %f\n" VT_RST, this->headTurnSpeedTarget);

    // "(head) maximum turning angle speed"
    osSyncPrintf(VT_FGCOL(PURPLE) "(頭)反転アングルスピード最大☆ %f\n" VT_RST, this->headTurnSpeedMax);

    // "current time"
    osSyncPrintf(VT_FGCOL(GREEN) "今時間 %d\n" VT_RST, gSaveContext.dayTime);

    // "check time"
    osSyncPrintf(VT_FGCOL(YELLOW) "チェック時間 %d\n" VT_RST, 0xBAAA);
    osSyncPrintf("\n\n");

    if (this->path == 3) {
        for (i = 0; i < ARRAY_COUNT(D_80A52850); i++) {
            rupeePos = D_80A52850[i];
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_RUPPY, rupeePos.x,
                                rupeePos.y, rupeePos.z, 0, 0, 0, 3);
        }
    }

    if (this->type != 5) {
        if (((gSaveContext.dayTime < 0xB888) || (gSaveContext.nightFlag == 0)) && !(gSaveContext.eventChkInf[8] & 1)) {
            this->actionFunc = func_80A5162C;
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        if ((gSaveContext.dayTime >= 0xB889) || (gSaveContext.nightFlag != 0) || (gSaveContext.eventChkInf[8] & 1)) {
            this->actionFunc = func_80A521FC;
        } else {
            Actor_Kill(&this->actor);
        }
    }

    
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A5162C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A516E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51A98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51FEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A52098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A5212C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A521FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A52290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A5263C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Draw.s")
