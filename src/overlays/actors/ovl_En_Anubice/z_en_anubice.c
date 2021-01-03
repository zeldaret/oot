/*
 * File: z_en_anubice.c
 * Overlay: ovl_En_Anubice
 * Description: Anubis Body
 */

#include "z_en_anubice.h"
#include "vt.h"

#define FLAGS 0x00000015

#define THIS ((EnAnubice*)thisx)

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx);
// void EnAnubice_Destroy(Actor* thisx, GlobalContext* globalCtx);
// void EnAnubice_Update(Actor* thisx, GlobalContext* globalCtx);
// void EnAnubice_Draw(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Destroy(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_Update(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_Draw(EnAnubice* this, GlobalContext* globalCtx);

void func_809B142C(EnAnubice* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000348;
extern UNK_TYPE D_0600078C;
extern AnimationHeader D_06000F74;
extern UNK_TYPE D_06003468;
extern SkeletonHeader D_06003990;

const ActorInit En_Anubice_InitVars = {
    ACTOR_EN_ANUBICE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubice),
    (ActorFunc)EnAnubice_Init,
    (ActorFunc)EnAnubice_Destroy,
    (ActorFunc)EnAnubice_Update,
    (ActorFunc)EnAnubice_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 29, 103, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable[] = { {
    0x00, 0xF0, 0xF0, 0xF0, 0xF0, 0xF0, 0xF1, 0xF2, 0xF0, 0xF2, 0xF6, 0x22, 0xF0, 0xF0, 0xF0, 0xF0,
    0xF0, 0x23, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xF6, 0xF2, 0xF0, 0xFC, 0xF4, 0x00, 0x00, 0x00, 0x00,
} };

s32 D_809B231C[] = { 0, 0, 0 };
s32 D_809B2328[] = { 0, 0, 0 };
s32 D_809B2334[] = { 0, 0, 0 };

void func_809B1120(EnAnubice* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_268 += 1500.0f;
    this->unk_270 = player->actor.posRot.pos.y + this->unk_274;
    Math_ApproachF(&this->actor.posRot.pos.y, this->unk_270, 0.1f, 10.0f);
    Math_ApproachF(&this->unk_274, 10.0f, 0.1f, 0.5f);
    this->actor.velocity.y = Math_SinS(this->unk_268);
}

void func_809B11C0(EnAnubice* this, GlobalContext* globalCtx) {
    f32 xzdist;
    f32 x;
    f32 y;
    f32 z;
    Player* player = PLAYER;

    x = player->actor.posRot.pos.x - this->unk_280.x;
    y = player->actor.posRot.pos.y + 10.0f - this->unk_280.y;
    z = player->actor.posRot.pos.z - this->unk_280.z;
    xzdist = sqrtf(SQ(x) + SQ(z));

    this->unk_28C = 0 - (s16)(Math_FAtan2F(y, xzdist) * 10430.378f);
    this->unk_290 = (s16)(Math_FAtan2F(x, z) * 10430.378f);
}

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003990, &D_06000F74, this->jointTable, this->morphTable, 16);

    osSyncPrintf("\n\n");
    // ☆☆☆☆☆ Anubis occurence ☆☆☆☆☆
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ アヌビス発生 ☆☆☆☆☆ \n" VT_RST);

    this->actor.naviEnemyId = 0x3A;

    Collider_InitCylinder(globalCtx, &this->col);
    Collider_SetCylinder(globalCtx, &this->col, &this->actor, &sCylinderInit);

    Actor_SetScale(&this->actor, 0.015f);

    this->actor.colChkInfo.damageTable = sDamageTable;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.shape.unk_08 = -4230.0f;
    this->unk_27C = 0.0f;
    this->actor.flags &= ~1;
    this->unk_298 = this->actor.posRot.pos;
    this->actor.unk_1F = 3;
    this->actionFunc = &func_809B142C;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B142C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B15CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B16AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B17FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B2104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B2150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Draw.s")
