/*
 * File: z_en_ma3.c
 * Overlay: En_Ma3
 * Description:
 */

#include "z_en_ma3.h"

#define FLAGS 0x00000039

void EnMa3_Init(EnMa3* this, GlobalContext* globalCtx);
void EnMa3_Destroy(EnMa3* this, GlobalContext* globalCtx);
void EnMa3_Update(EnMa3* this, GlobalContext* globalCtx);
void EnMa3_Draw(EnMa3* this, GlobalContext* globalCtx);

u16 func_80AA2AA0(GlobalContext* globalCtx, EnMa3* this);
s16 func_80AA2BD4(GlobalContext* globalCtx, EnMa3* this);

void func_80AA2E54(EnMa3* this, GlobalContext* globalCtx);
s32 func_80AA2F28(EnMa3* this);
void func_80AA2F80(EnMa3* this);

const ActorInit En_Ma3_InitVars = {
    ACTOR_EN_MA3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa3),
    (ActorFunc)EnMa3_Init,
    (ActorFunc)EnMa3_Destroy,
    (ActorFunc)EnMa3_Update,
    (ActorFunc)EnMa3_Draw,
};

u32 D_80AA3810[] = { 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0012002E, 0x00000000, 0x00000000, };
u32 D_80AA383C[] = { 0x00000000, 0x00000000, 0xFF000000, };
u32 D_80AA3848[] = { 0x060007D4, 0x3F800000, 0x00000000, 0x00000000, 0x060007D4, 0x3F800000, 0x00000000, 0xC1200000, 0x060093BC, 0x3F800000, 0x00000000, 0x00000000, 0x06009EE0, 0x3F800000, 0x00000000, 0x00000000, 0x06009EE0, 0x3F800000, 0x00000000, 0xC1200000, };
u32 D_80AA3898[] = { 0x44610000, 0x00000000, 0x00000000, };
u32 D_80AA38A4[] = { 0x06002970, 0x06003570, 0x06003770, };
u32 D_80AA38B0[] = { 0x06002570, 0x06002C70, 0x06003070, 0x00000000, };

extern AnimationHeader D_06009EE0;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2AA0.s")
/*u16 func_80AA2AA0(GlobalContext *globalCtx, EnMa3 *this) {
    Player* player = PLAYER;

    if (!(gSaveContext.infTable[11] & 0x100)) {
        return 0x2000;
    }
    if (gSaveContext.eventInf[0] & 0x400) {
        gSaveContext.timer1Value = gSaveContext.timer1Value; // why?
        this->actor.flags |= 0x10000;
        if (gSaveContext.timer1Value < 0xD3) {
            if ((gSaveContext.unk_EC4 == 0) || (gSaveContext.unk_EC4 >= 0xB4)) {
                gSaveContext.unk_EC4 = 0xB4;
            }
            if ((gSaveContext.eventChkInf[1] & 0x4000) || (gSaveContext.timer1Value >= 0x32)) {
                if (gSaveContext.timer1Value >= gSaveContext.unk_EC4) {
                    return 0x2004;
                } else {
                    return 0x2012;
                }
            } else {
                return 0x208F;
            }
        } else {
            return 0x208E;
        }
    }
    if (!(player->stateFlags1 & 0x800000)) {
        if (Actor_FindNearby(globalCtx, &this->actor, 0x14, 1, 1200.0f) == NULL) {
            return 0x2001;
        }
    }
    if (!(gSaveContext.infTable[11] & 0x200)) {
        return 0x2002;
    }
    return 0x2003;
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2BD4.s")

void func_80AA2E54(EnMa3 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3;

    if ((this->unk_1E0.unk_00 == 0) && (this->skelAnime.animCurrentSeg == &D_06009EE0)) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }

    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    this->unk_1E0.unk_14 = 0.0f;
    func_80034A14(&this->actor, &this->unk_1E0, 0, phi_a3);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2EC8.s")

s32 func_80AA2F28(EnMa3 *this) {
    if (this->skelAnime.animCurrentSeg != &D_06009EE0) {
        return 0;
    }
    if (this->unk_1E0.unk_00 != 0) {
        return 0;
    }
    this->unk_20C = 0;
    if (this->unk_20E != 2) {
        return 0;
    }
    this->unk_210 = 2;
    return 1;
}

void func_80AA2F80(EnMa3 *this) {
    if (!func_80AA2F28(this)) {
        if (DECR(this->unk_20C) == 0) {
            this->unk_20E += 1;
            if (this->unk_20E >= 3) {
                this->unk_20C = Math_Rand_S16Offset(0x1E, 0x1E);
                this->unk_20E = 0;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/EnMa3_Init.s")

void EnMa3_Destroy(EnMa3 *this, GlobalContext *globalCtx) {
    SkelAnime_Free(&this->skelAnime, globalCtx);
    ActorCollider_FreeCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3200.s")

void EnMa3_Update(EnMa3 *this, GlobalContext *globalCtx) {
    s32 pad;
    ColliderCylinderMain* collider = &this->collider;

    ActorCollider_Cylinder_Update(&this->actor, collider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, collider);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80AA2F80(this);
    this->actionFunc(this, globalCtx);
    func_80AA2E54(this, globalCtx);
    func_800343CC(globalCtx, &this->actor, &this->unk_1E0.unk_00, (f32) this->collider.dim.radius + 150.0f, &func_80AA2AA0, &func_80AA2BD4);
    if (this->unk_1E0.unk_00 == 0) {
        if (this->unk_20A != 0) {
            func_800F6584(0);
            this->unk_20A = 0;
        }
    } else if (this->unk_20A == 0) {
            func_800F6584(1);
            this->unk_20A = 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/EnMa3_Draw.s")
