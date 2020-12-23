#include "z_en_dnt_jiji.h"
#include "overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.h"

#define FLAGS 0x00000019

#define THIS ((EnDntJiji*)thisx)

void EnDntJiji_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntJiji_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntJiji_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDntJiji_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809F1C04(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F29E0(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2254(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1DA8(EnDntJiji* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000560;
extern UNK_TYPE D_06000944;
extern UNK_TYPE D_06000A70;
extern UNK_TYPE D_06000BD0;
extern UNK_TYPE D_06000DF8;
extern UNK_TYPE D_060012B0;
extern Gfx D_06002310[];
extern SkeletonHeader D_060033E0;
extern UNK_TYPE D_060037C0;

const ActorInit En_Dnt_Jiji_InitVars = {
    ACTOR_EN_DNT_JIJI,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DNS,
    sizeof(EnDntJiji),
    (ActorFunc)EnDntJiji_Init,
    (ActorFunc)EnDntJiji_Destroy,
    (ActorFunc)EnDntJiji_Update,
    (ActorFunc)EnDntJiji_Draw,
};

static ColliderCylinderInit D_809F2FA0 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 30, 80, 0, { 0, 0, 0 } },
};

void EnDntJiji_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDntJiji* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060033E0, &D_06000560, this->limbDrawTbl, this->transitionDrawTbl,
                   13);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_809F2FA0);
    this->unk_258 = (EnDntDemo*)this->actor.parent;
    osSyncPrintf("\n\n");
    osSyncPrintf("\x1b[33m☆☆☆☆☆ デグナッツお面品評会長老 ☆☆☆☆☆ %x\n\x1b[m", this->unk_258);
    this->actor.flags &= ~1;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.unk_1F = 6;
    this->actionFunc = func_809F1C04;
    this->actor.gravity = -2.0f;
}

void EnDntJiji_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntJiji* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1C04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1C44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1DA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1EFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F1FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2118.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F236C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F24AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F25E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F26B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2720.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F28DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F29E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Jiji/func_809F2A90.s")

void EnDntJiji_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntJiji* this = THIS;

    Actor_SetScale(&this->actor, 0.015f);
    this->unk_246++;
    if (BREG(0)) {
        osSyncPrintf("\x1b[33m☆☆☆☆☆ 時間 ☆☆☆☆☆ %d\n\x1b[m", this->unk_240);
    }
    if ((this->unk_240 > 1) && (this->unk_240 != 0)) {
        this->unk_240--;
    }
    if (this->unk_242 != 0) {
        this->unk_242--;
    }
    if (this->unk_244 != 0) {
        this->unk_244--;
    }
    switch (this->unk_24E) {
        case 1:
            this->unk_23C = 1;
            this->unk_23E = 1;
            this->actionFunc = func_809F1DA8;
            break;
        case 2:
            this->unk_23C = 0;
            this->unk_23E = 0;
            this->actionFunc = func_809F2254;
            break;
        case 3:
            this->actionFunc = func_809F29E0;
            break;
        case 0:
            break;
    }
    if (this->actor.textId != 0) {
        Actor_SetHeight(&this->actor, 30.0f);
    }
    if (this->unk_24E != 0) {
        this->unk_24E = 0;
    }
    if (this->unk_244 == 0) {
        this->unk_24C++;
        if (this->unk_24C > 2) {
            this->unk_24C = 0;
            this->unk_244 = (s16)Math_Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1D);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    if (this->unk_23C != 0) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void EnDntJiji_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static void* D_809F2FCC[] = { 0x060030A0, 0x06002EA0, 0x06003020 };
    EnDntJiji* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_jiji.c", 0x3FB);
    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Push();
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809F2FCC[this->unk_24C]));
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, NULL, this);
    Matrix_Pull();
    Matrix_Translate(this->unk_230.x, this->unk_230.y, this->unk_230.z, 0);
    Matrix_Scale(0.01f, 0.01f, 0.01f, 1);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_jiji.c", 0x410), 2);
    gSPDisplayList(POLY_OPA_DISP++, D_06002310);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_jiji.c", 0x413);
}
