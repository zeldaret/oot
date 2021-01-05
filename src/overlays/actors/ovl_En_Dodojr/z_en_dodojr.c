/*
 * File: z_en_dodojr.c
 * Overlay: ovl_En_Dodojr
 * Description: Baby Dodongo
 */

#include "z_en_dodojr.h"

#define FLAGS 0x00000005

#define THIS ((EnDodojr*)thisx)

void EnDodojr_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809F73AC(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7BE4(EnDodojr* this, GlobalContext* globalCtx);
void func_809F74C4(EnDodojr* this, GlobalContext* globalCtx);
void func_809F758C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F786C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F799C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F78EC(EnDodojr* this, GlobalContext* globalCtx);
void func_809F773C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F77AC(EnDodojr* this, GlobalContext* globalCtx);
void func_809F784C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7AB8(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7A00(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7B3C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F6A20(EnDodojr* this);
void func_809F7C48(EnDodojr* this, GlobalContext* globalCtx);

extern UNK_TYPE D_060004A0;
extern UNK_TYPE D_060005F0;
extern UNK_TYPE D_06000724;
extern UNK_TYPE D_06000860;
extern UNK_TYPE D_060009D4;
extern UNK_TYPE D_060020E0;

const ActorInit En_Dodojr_InitVars = {
    ACTOR_EN_DODOJR,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DODOJR,
    sizeof(EnDodojr),
    (ActorFunc)EnDodojr_Init,
    (ActorFunc)EnDodojr_Destroy,
    (ActorFunc)EnDodojr_Update,
    (ActorFunc)EnDodojr_Draw,
};

u32 D_809F7EB0[] = {
    0x06110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFC5FFFF,
    0x00000000, 0x01010100, 0x00120014, 0x00000000, 0x00000000,
};

u32 D_809F7EDC[] = {
    0x01000002,
    0x00190019,
    0xFF000000,
};

u32 D_809F7EE8[] = {
    0xAA825AFF,
};

u32 D_809F7EEC[] = {
    0x643C1400,
};

Vec3f D_809F7EF0[] = { 0.0f, 0.0f, 0.0f };

Vec3f D_809F7EFC[] = { 0.0f, 0.3f, 0.0f };

u32 D_809F7F08[] = {
    0xAA825AFF,
};

u32 D_809F7F0C[] = {
    0x643C1400,
};

Vec3f D_809F7F10 = { 0.0f, 0.0f, 0.0f };

Vec3f D_809F7F1C = { 0.0f, 0.3f, 0.0f };

Vec3f D_809F7F28 = { 99999.0f, 99999.0f, 99999.0f };

f32 D_809F7F34[] = {
    0.0f, 210.0f, 60.0f, 270.0f, 120.0f, 330.0f, 180.0f, 30.0f, 240.0f, 90.0f, 300.0f, 150.0f,
};

void EnDodojr_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    ActorShape_Init(&this->actor.shape.rot.x, 0.0f, NULL, 18.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060020E0, &D_060009D4, &this->jointTable, &this->morphTable, 15);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, D_809F7EB0);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(4), D_809F7EDC);

    this->actor.naviEnemyId = 0xE;
    this->actor.flags &= ~1;

    Actor_SetScale(&this->actor, 0.02f);

    this->actionFunc = func_809F73AC;
}

void EnDodojr_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F64D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F68B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6BBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F706C.s")

void func_809F709C(EnDodojr *this) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_DEAD);
    this->actor.flags &= ~1;
    func_809F6A20(this);
    this->actionFunc = func_809F7AB8;
}

s32 func_809F70E8(EnDodojr* this, GlobalContext* globalCtx) {
    if ((this->actionFunc == func_809F773C) || (this->actionFunc == func_809F77AC) ||
        (this->actionFunc == func_809F784C) || (this->actionFunc == func_809F7A00) ||
        (this->actionFunc == func_809F7AB8) || (this->actionFunc == func_809F7B3C) ||
        (this->actionFunc == func_809F7BE4)) {
        return 0;
    }

    if (globalCtx->actorCtx.unk_02 != 0) {
        if (this->actionFunc != func_809F73AC) {
            if (this->actionFunc == func_809F74C4) {
                this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
            }

            func_809F709C(this);
        }
        return 0;
    }

    if (!(this->collider.base.acFlags & 2)) {
        return 0;
    } else {
        this->collider.base.acFlags &= ~2;

        if ((this->actionFunc == func_809F73AC) || (this->actionFunc == func_809F74C4)) {
            this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
        }

        if ((this->actor.colChkInfo.damageEffect == 0) && (this->actor.colChkInfo.damage != 0)) {
            func_80032C7C(globalCtx, &this->actor);
            this->unk_200 = 2;
            this->actionFunc = func_809F7C48;
            return 1;
        }

        if ((this->actor.colChkInfo.damageEffect == 1) && (this->actionFunc != func_809F78EC) &&
            (this->actionFunc != func_809F786C)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
            this->unk_1FE = 120;
            func_8003426C(&this->actor, 0, 200, 0, 120);
            func_809F6A20(this);
            this->actionFunc = func_809F786C;
        }

        return 0;
    }
}

void func_809F72A4(EnDodojr* this, GlobalContext* globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->collider);

    if ((this->actionFunc != func_809F73AC) && (this->actionFunc != func_809F7BE4)) {
        if ((this->actionFunc == func_809F74C4) || (this->actionFunc == func_809F758C) ||
            (this->actionFunc == func_809F799C)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if ((this->actionFunc == func_809F74C4) || (this->actionFunc == func_809F758C) ||
            (this->actionFunc == func_809F786C) || (this->actionFunc == func_809F78EC) ||
            (this->actionFunc == func_809F799C)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F73AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F74C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F758C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F768C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F773C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F77AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F784C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F786C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F78EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F799C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7C48.s")

void EnDodojr_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    SkelAnime_Update(&this->skelAnime);
    Actor_MoveForward(&this->actor);
    func_809F70E8(this, globalCtx);

    if (this->actionFunc != func_809F73AC) {
        func_8002E4B4(globalCtx, &this->actor, this->collider.dim.radius, this->collider.dim.height, 0.0f, 5);
    }

    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, 10.0f);
    func_809F72A4(this, globalCtx);
}

s32 func_809F7D50(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnDodojr* this = THIS;
    Vec3f D_809F7F64[] = { 480.0f, 620.0f, 0.0f };

    if (limbIndex == 1) {
        Matrix_Scale((this->unk_208 * 0.5f) + 1.0f, this->unk_208 + 1.0f, (this->unk_208 * 0.5f) + 1.0f, 1);
    }
    if (limbIndex == 4) {
        Matrix_MultVec3f(&D_809F7F64, &this->unk_1E4);
    }

    return 0;
}

void func_809F7DFC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
}

void EnDodojr_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    if ((this->actionFunc != func_809F73AC) && (this->actionFunc != func_809F7BE4)) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_809F7D50, func_809F7DFC,
                          &this->actor);
    }
}
