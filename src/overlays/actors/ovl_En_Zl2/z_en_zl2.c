/*
 * File: z_en_zl2.c
 * Overlay: ovl_En_Zl2
 * Description: Adult Zelda (Cutscenes)
 */

#include "z_en_zl2.h"
#include "vt.h"

#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#define FLAGS 0x00000010

#define THIS ((EnZl2*)thisx)

void EnZl2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl2_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80B4F45C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                   Gfx** gfx);

void func_80B50BBC(Actor* thisx, GlobalContext* globalCtx);
void func_80B50BEC(Actor* thisx, GlobalContext* globalCtx);
void func_80B50C40(Actor* thisx, GlobalContext* globalCtx);
void func_80B50CA8(Actor* thisx, GlobalContext* globalCtx);
void func_80B50CFC(Actor* thisx, GlobalContext* globalCtx);
void func_80B50D50(Actor* thisx, GlobalContext* globalCtx);
void func_80B50D94(Actor* thisx, GlobalContext* globalCtx);
void func_80B50DE8(Actor* thisx, GlobalContext* globalCtx);
void func_80B50E3C(Actor* thisx, GlobalContext* globalCtx);
void func_80B50E90(Actor* thisx, GlobalContext* globalCtx);
void func_80B50EE4(Actor* thisx, GlobalContext* globalCtx);
void func_80B50F38(Actor* thisx, GlobalContext* globalCtx);
void func_80B50F8C(Actor* thisx, GlobalContext* globalCtx);
void func_80B50FE8(Actor* thisx, GlobalContext* globalCtx);
void func_80B51034(Actor* thisx, GlobalContext* globalCtx);
void func_80B51080(Actor* thisx, GlobalContext* globalCtx);
void func_80B510CC(Actor* thisx, GlobalContext* globalCtx);
void func_80B51118(Actor* thisx, GlobalContext* globalCtx);
void func_80B51164(Actor* thisx, GlobalContext* globalCtx);
void func_80B511B0(Actor* thisx, GlobalContext* globalCtx);
void func_80B511FC(Actor* thisx, GlobalContext* globalCtx);
void func_80B51250(Actor* thisx, GlobalContext* globalCtx);
void func_80B512B8(Actor* thisx, GlobalContext* globalCtx);
void func_80B51310(Actor* thisx, GlobalContext* globalCtx);
void func_80B51A5C(Actor* thisx, GlobalContext* globalCtx);
void func_80B51A8C(Actor* thisx, GlobalContext* globalCtx);
void func_80B51AE4(Actor* thisx, GlobalContext* globalCtx);
void func_80B51B44(Actor* thisx, GlobalContext* globalCtx);
void func_80B51BA8(Actor* thisx, GlobalContext* globalCtx);
void func_80B51C0C(Actor* thisx, GlobalContext* globalCtx);
void func_80B51C64(Actor* thisx, GlobalContext* globalCtx);
void func_80B51CA8(Actor* thisx, GlobalContext* globalCtx);
void func_80B52068(Actor* thisx, GlobalContext* globalCtx);
void func_80B52098(Actor* thisx, GlobalContext* globalCtx);
void func_80B52108(Actor* thisx, GlobalContext* globalCtx);
void func_80B521A0(Actor* thisx, GlobalContext* globalCtx);
void func_80B523BC(Actor* thisx, GlobalContext* globalCtx);
void func_80B523C8(Actor* thisx, GlobalContext* globalCtx);
void func_80B525D4(Actor* thisx, GlobalContext* globalCtx);

u32 D_80B52810[] = {
    0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x06005D48, 0x06006148,
};

u32 D_80B52834[] = {
    0x06003508,
    0x06005548,
    0x06005948,
};

ActorFunc D_80B52840[] = {
    func_80B521A0, func_80B50BBC, func_80B50BEC, func_80B50C40, func_80B50CA8, func_80B50CFC,
    func_80B50D50, func_80B50D94, func_80B50DE8, func_80B50E3C, func_80B50E90, func_80B50EE4,
    func_80B50F38, func_80B50F8C, func_80B50FE8, func_80B51034, func_80B51080, func_80B510CC,
    func_80B51118, func_80B51164, func_80B511B0, func_80B511FC, func_80B51250, func_80B512B8,
    func_80B51310, func_80B51A5C, func_80B51A8C, func_80B51AE4, func_80B51B44, func_80B51BA8,
    func_80B51C0C, func_80B51C64, func_80B51CA8, func_80B52068, func_80B52098, func_80B52108,
};

EnZl2PreLimbDrawFunc D_80B528D0[] = {
    func_80B4F45C,
};

ActorFunc D_80B528D4[] = {
    func_80B523BC,
    func_80B523C8,
    func_80B525D4,
};

const ActorInit En_Zl2_InitVars = {
    ACTOR_EN_ZL2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL2,
    sizeof(EnZl2),
    (ActorFunc)EnZl2_Init,
    (ActorFunc)EnZl2_Destroy,
    (ActorFunc)EnZl2_Update,
    (ActorFunc)EnZl2_Draw,
};

extern AnimationHeader D_0600325C;
extern AnimationHeader D_060003BC;
extern AnimationHeader D_06000A50;
extern AnimationHeader D_06000EB0;
extern AnimationHeader D_06001010;
extern AnimationHeader D_060013A0;
extern AnimationHeader D_06001670;
extern AnimationHeader D_06001B48;
extern AnimationHeader D_060022D0;
extern AnimationHeader D_06002750;
extern AnimationHeader D_06002B14;
extern AnimationHeader D_06002F30;
extern AnimationHeader D_06003538;
extern AnimationHeader D_06004900;
extern AnimationHeader D_06005F40;
extern AnimationHeader D_06006778;
extern AnimationHeader D_06007D0C;
extern AnimationHeader D_060087B8;
extern AnimationHeader D_060090D8;
extern AnimationHeader D_06009AD4;
extern AnimationHeader D_0600A15C;
extern AnimationHeader D_0600A79C;
extern AnimationHeader D_0600AAD4;
extern AnimationHeader D_0600AFE0;
extern AnimationHeader D_0600B224;
extern AnimationHeader D_0600B5FC;
extern AnimationHeader D_0600BAE8;
extern SkeletonHeader D_06010D70;

void EnZl2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4E9B0.s")
/*void func_80B4E9B0(EnZl2 *this) {
    s32 pad[4];
    s16* unk_194 = &this->unk_194;
    s16* unk_192 = &this->unk_192;
    s16* unk_190 = &this->unk_190;
    s16 temp;

    if (DECR(*unk_192) == 0) {
        *unk_192 = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    *unk_190 = *unk_192;
    if (*unk_192 >= 3) {
        *unk_192 = 0;
    }
    temp = *unk_192;
    *unk_194 = temp;
}*/

void func_80B4EA40(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 3.0f) {
        *unk_190 = 0;
    } else {
        if (*unk_27C < 6.0f) {
            *unk_190 = 1;
        } else if (*unk_27C < 9.0f) {
            *unk_190 = 2;
        } else {
            *unk_190 = 5;
            this->unk_194 = *unk_190;
            return;
        }
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4EAF4(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 2.0f) {
        *unk_190 = 5;
    } else {
        if (*unk_27C < 4.0f) {
            *unk_190 = 2;
        } else if (*unk_27C < 6.0f) {
            *unk_190 = 1;
        } else {
            func_80B4E9B0(this);
            return;
        }
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4EBB8(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 2.0f) {
        *unk_190 = 0;
    } else {
        if (*unk_27C < 4.0f) {
            *unk_190 = 1;
        } else {
            *unk_190 = 2;
            this->unk_194 = *unk_190;
            return;
        }
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4EC48(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 2.0f) {
        *unk_190 = 2;
    } else {
        if (*unk_27C < 4.0f) {
            *unk_190 = 1;
        } else {
            func_80B4E9B0(this);
            return;
        }
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4ECE8(EnZl2* this, s16 arg1) {
    this->unk_190 = arg1;
    this->unk_194 = this->unk_190;
}

void func_80B4ED04(EnZl2* this, s16 arg1) {
    this->unk_194 = arg1;
}

void func_80B4ED18(EnZl2* this, s16 arg1) {
    this->unk_198 = arg1;
}

void func_80B4ED2C(EnZl2* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

s32 EnZl2_FrameUpdateMatrix(EnZl2* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

CsCmdActorAction* func_80B4ED94(GlobalContext* globalCtx, s32 idx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.actorActions[idx];
    }
    return NULL;
}

void func_80B4EDB8(EnZl2* this, GlobalContext* globalCtx, s32 arg2) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, arg2);
    s16 temp_v1;

    if (actorAction != NULL) {
        this->actor.posRot.pos.x = actorAction->startPos.x;
        this->actor.posRot.pos.y = actorAction->startPos.y;
        this->actor.posRot.pos.z = actorAction->startPos.z;
        temp_v1 = actorAction->rot.y;
        this->actor.shape.rot.y = temp_v1;
        this->actor.posRot.rot.y = temp_v1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EE38.s")
/*void func_80B4EE38(EnZl2 *this, s16 arg1, s32 arg2) {
    s16* unk_1AC = &this->unk_1AC[arg2];
    s16* unk_1DC = &this->unk_1DC[arg2];
    s16* unk_20C = &this->unk_20C[arg2];
    s32 temp_v1;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_t5;
    s32 temp_t4;

    if (this->unk_24C != 0) {
        temp_v1 = arg1 - (*unk_20C);
        phi_a3 = temp_v1;
        temp_v1 = (s16) (arg1 + (*unk_1DC));
        phi_v0 = *unk_1AC;

        if ((s32)fabsf((f32)phi_a3) >= 0x8001) {
            if (arg1 > 0) {
                phi_a3 += 0xFFFF0000;
            } else {
                phi_a3 += 0x10000;
            }
        }
        temp_t4 = phi_a3 - *unk_1AC;
        if (phi_a3 != 0) {
            phi_t5 = temp_t4 >> 4;
            if (temp_t4 < 0) {
                temp_v1 = temp_t4 + 0xF;
                phi_t5 = temp_v1 >> 4;
            }
            phi_v0 += phi_t5;
        }
        if (phi_v0 != 0) {
            phi_v0 -= (phi_v0 / 10);
            phi_v0 = (s16)phi_v0;
        }
        if ((temp_v1 - arg1) != 0) {
            phi_v0 -= ((temp_v1 - arg1) / 50);
        }
        temp_v1 += phi_v0;
        temp_v1 -= arg1;
        temp_v1 = (s16)temp_v1;
        if (((*unk_1AC * phi_v0) <= 0) && (temp_v1 >= -0x63) && (temp_v1 < 0x64)) {
            temp_v1 = arg1;
            phi_v0 = 0;
        }
        this->unk_1AC[arg2] = phi_v0;
        this->unk_1DC[arg2] = temp_v1 - arg1;
    }
    *unk_20C = arg1;
}*/

void func_80B4EF64(EnZl2* this, s16 arg1, s32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4EF64.s")
/*void func_80B4EF64(EnZl2* this, s16 arg1, s32 arg2) {
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t7;
    s32 temp_v1;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_v0;
    s32 phi_a0;
    s32 phi_v0_2;
    s32 phi_v1;
    s32 phi_v0_3;
    s16 phi_v0_4;
    s32 phi_v1_2;
    s32 phi_t2_2;
    s32 phi_t1_2;
    s32 phi_t9;
    s32 phi_v0_5;
    s32 phi_at;
    s32 phi_at_4;

    if (arg2 == 2) {
        phi_t1 = 0;
        phi_a0 = 0x3A98;
    } else if (arg2 == 5) {
        phi_t1 = 3;
        phi_a0 = 0x32C8;
    } else if (arg2 == 8) {
        phi_t1 = 6;
        phi_a0 = 0x2EE0;
    } else if (arg2 == 0xB) {
        phi_t1 = 9;
        phi_a0 = 0x4000;
    } else if (arg2 == 0xE) {
        phi_t1 = 0xC;
        phi_a0 = 0x4000;
    } else if (arg2 == 0x11) {
        phi_t1 = 0xF;
        phi_a0 = 0x4000;
    } else {
        phi_t1 = 0x12;
        phi_a0 = 0x4000;
    }

    if (this->unk_24C != 0) {
        temp_t2 = arg1 - this->unk_20C[arg2 * 2];
        temp_v1 = arg1 + this->unk_1DC[arg2 * 2];
        phi_t2_2 = temp_t2;
        if ((s32)fabsf(temp_t2) >= 0x8001) {
            phi_at_4 = 0x10000;
            if ((s32)arg1 > 0) {
                phi_at_4 = 0xFFFF0000;
            }
            phi_t2_2 = temp_t2 + phi_at_4;
        }
        phi_t2 = phi_t2_2;
        if (phi_t1 >= 0) {
            phi_t1_2 = 0 - this->unk_1AC[phi_t1 * 2];
            if ((s32)this->unk_1AC[phi_t1 * 2] >= 0) {
                phi_t1_2 = (s32)this->unk_1AC[phi_t1 * 2];
            }
            phi_t2 = phi_t2_2 + (phi_t1_2 / 3);
        }
        phi_v0 = (s32)this->unk_1AC[arg2 * 2];
        if (phi_t2 != 0) {
            temp_t7 = phi_t2 - this->unk_1AC[arg2 * 2];
            phi_t9 = temp_t7 >> 4;
            if (temp_t7 < 0) {
                phi_t9 = (s32)(temp_t7 + 0xF) >> 4;
            }
            phi_v0 = (s32)(this->unk_1AC[arg2 * 2] + phi_t9);
        }
        phi_v0_5 = phi_v0;
        if (phi_v0 != 0) {
            phi_v0_5 = phi_v0 - (phi_v0 / 0xA);
        }
        temp_t1 = temp_v1 - phi_a0;
        phi_v0_2 = phi_v0_5;
        if (temp_t1 != 0) {
            phi_v0_2 = phi_v0_5 - (temp_t1 / 0x32);
        }
        temp_v1 = temp_v1 + phi_v0_2;
        temp_t1_2 = temp_v1 - phi_a0;
        phi_v1 = temp_v1;
        phi_v0_3 = phi_v0_2;
        if ((this->unk_1AC[arg2 * 2] * phi_v0_2) <= 0) {
            if (temp_t1_2 >= -0x63) {
                if (temp_t1_2 < 0x64) {
                    phi_v1 = phi_a0;
                    phi_v0_3 = 0;
                }
            }
        }
        phi_v0_4 = phi_v0_3;
        phi_v1_2 = phi_v1;
        if (arg2 == 2) {
            if ((this->action == 5) || (this->action == 30)) {
                temp_t0 = (s32)((3500.0f * this->skelAnime.animCurrentFrame) / this->unk_278) + phi_a0;
                phi_v0_4 = phi_v0_3;
                phi_v1_2 = phi_v1;
                if (temp_t0 >= phi_v1) {
                    if (phi_v0_3 < 0) {
                        phi_v0_3 += 1;
                    }
                    phi_v0_4 = -(phi_v0_3 >> 1);
                    phi_v1_2 = temp_t0;
                }
            } else {
                if ((this->action == 6) || (this->action == 31)) {
                    temp_t0_2 = phi_a0 + 0xDAC;
                    phi_v0_4 = phi_v0_3;
                    phi_v1_2 = phi_v1;
                    if (temp_t0_2 >= phi_v1) {
                        if (phi_v0_3 < 0) {
                            phi_v0_3 += 1;
                        }
                        phi_v0_4 = -(phi_v0_3 >> 1);
                        phi_v1_2 = temp_t0_2;
                    }
                } else {
                    temp_t0_3 = phi_a0 - 0x3E8;
                    phi_v0_4 = phi_v0_3;
                    phi_v1_2 = phi_v1;
                    if (this->action == 20) {
                        if (temp_t0_3 >= phi_v1) {
                            if (phi_v0_3 < 0) {
                                phi_v0_3 += 1;
                            }
                            phi_v0_4 = -(phi_v0_3 >> 1);
                            phi_v1_2 = temp_t0_3;
                        }
                    }
                }
            }
        }
        this->unk_1AC[arg2 * 2] = phi_v0_4;
        this->unk_1DC[arg2 * 2] = phi_v1_2 - arg1;
    }
    this->unk_20C[arg2 * 2] = arg1;
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4F230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4F45C.s")
/*void func_80B4F45C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                   Gfx** gfx) {
    void *sp74;
    ? sp34;
    s16 sp2C;
    void *sp1C;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    void *temp_a0;
    Gfx* temp_ret;

    EnZl2* this = THIS;
    Gfx* displayList;
    Gfx* displayListHead;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    if (limbIndex == 0xE) {
        temp_ret = Graph_Alloc(gfxCtx, 0x1C0);
        sp74 = temp_ret;
        temp_a0 = *arg6;
        *arg6 = (void *) (temp_a0 + 8);
        temp_a0->unk4 = temp_ret;
        temp_a0->unk0 = 0xDB060030;

        Matrix_Push();
        Matrix_Translate(pos->x, pos->y, pos->z, MTXMODE_APPLY);
        Matrix_RotateRPY(rot->x, rot->y, rot->z, MTXMODE_APPLY);
        Matrix_Push();
        Matrix_Translate(362.0f, -133.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 0);
            func_80B4F230(arg5, sp2C, 1);
            func_80B4EF64(arg5, sp30, 2);
        }
        temp_a0_2 = (kREG(31) + arg5->unk1DC) << 0x10;
        temp_a1 = (kREG(32) + arg5->unk1DE) << 0x10;
        temp_a2 = (kREG(33) + arg5->unk1E0) << 0x10;
        sp1C = arg5 + 0x1DC;
        Matrix_RotateRPY((s16) (temp_a0_2 >> 0x10), (s16) (temp_a1 >> 0x10), (s16) (temp_a2 >> 0x10), MTXMODE_APPLY);
        Matrix_Translate(-188.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) sp74, "../z_en_zl2.c", 1056);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 3);
            func_80B4F230(arg5, sp2C, 4);
        }
        Matrix_RotateRPY(kREG(34) + sp1C->unk6, kREG(35) + sp1C->unk8, kREG(36) + sp1C->unkA, MTXMODE_APPLY);
        Matrix_Translate(-410.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) (sp74 + 0x40), "../z_en_zl2.c", 1100);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 6);
            func_80B4F230(arg5, sp2C, 7);
        }
        Matrix_RotateRPY(kREG(37) + sp1C->unkC, kREG(38) + sp1C->unkE, kREG(39) + sp1C->unk10, MTXMODE_APPLY);
        Matrix_Translate(-1019.0f, -26.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) (sp74 + 0x80), "../z_en_zl2.c", 1120);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(467.0f, 265.0f, 389.0f, MTXMODE_APPLY);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 9);
            func_80B4F230(arg5, sp2C, 0xA);
            func_80B4EF64(arg5, sp30, 0xB);
        }
        Matrix_RotateRPY(kREG(40) + sp1C->unk12, kREG(41) + sp1C->unk14, kREG(42) + sp1C->unk16, MTXMODE_APPLY);
        Matrix_Translate(-427.0f, -1.0f, -3.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) (sp74 + 0xC0), "../z_en_zl2.c", 1164);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 0xC);
            func_80B4F230(arg5, sp2C, 0xD);
            func_80B4EF64(arg5, sp30, 0xE);
        }
        Matrix_RotateRPY(kREG(43) + sp1C->unk18, kREG(44) + sp1C->unk1A, kREG(45)+ sp1C->unk1C, MTXMODE_APPLY);
        Matrix_Translate(-446.0f, -52.0f, 84.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) (sp74 + 0x100), "../z_en_zl2.c", 0x48C);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(467.0f, 265.0f, -389.0f, MTXMODE_APPLY);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 0xF);
            func_80B4F230(arg5, sp2C, 0x10);
            func_80B4EF64(arg5, sp30, 0x11);
        }
        Matrix_RotateRPY(kREG(46) + sp1C->unk1E, kREG(47) + sp1C->unk20, kREG(48) + sp1C->unk22, MTXMODE_APPLY);
        Matrix_Translate(-427.0f, -1.0f, 3.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) (sp74 + 0x140), "../z_en_zl2.c", 1189);
        Matrix_Get((MtxF *) &sp34);
        func_800D20CC((MtxF *) &sp34, (Vec3s *) &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(arg5, sp2E, 0x12);
            func_80B4F230(arg5, sp2C, 0x13);
            func_80B4EF64(arg5, sp30, 0x14);
        }
        Matrix_RotateRPY(kREG(49) + sp1C->unk24, kREG(50) + sp1C->unk26, kREG(51) + sp1C->unk28, MTXMODE_APPLY);
        Matrix_Translate(-446.0f, -52.0f, -84.0f, MTXMODE_APPLY);
        Matrix_ToMtx((Mtx *) (sp74 + 0x180), "../z_en_zl2.c", 1208);
        Matrix_Pull();
        Matrix_Pull();
        this->unk_24C = 1;
    }
}*/

void func_80B4FB74(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor, Gfx** gfx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4FB74.s")
/*void func_80B4FB74(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    EnZl2* this = THIS;
    s32 pad;
    CutsceneContext* csCtx = &globalCtx->csCtx;
    Player* player;

    if (limbIndex == 10) {
        if ((this->unk_254 != 0) && (csCtx->frames >= 0x384)) {
            gSPDisplayList(gfx[0]++, &D_0600BAE8);
        }

        player = PLAYER;
        Matrix_Push();
        if (player->unk_15D == 0xFF) {
            Matrix_Put(&player->mf_A20);
            Matrix_Translate(180.0f, 979.0f, -375.0f, MTXMODE_APPLY);
            Matrix_RotateRPY(-0x5DE7, -0x53E9, 0x3333, MTXMODE_APPLY);
            Matrix_Scale(1.2f, 1.2f, 1.2f, MTXMODE_APPLY);
            gSPMatrix(gfx[0]++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zl2.c", 1253),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfx[0]++, &D_0600BAE8);
        }
        Matrix_Pull();
    }
}*/

void func_80B4FCCC(EnZl2* this, GlobalContext* globalCtx) {
    s32 unk_274 = this->unk_274;
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[unk_274].segment);
}

void func_80B4FD00(EnZl2* this, AnimationHeader* animation, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(&animation->genericHeader);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        fc = 0.0f;
        unk0 = frameCount;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animation, playbackSpeed, unk0, fc, arg2, transitionRate);
}

void func_80B4FD90(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_0600B5FC, 0, 0.0f, 0);
    this->action = 1;
}

void func_80B4FDD4(EnZl2* this) {
    if (func_800A56C8(&this->skelAnime, 14.0f)) {
        func_80078914(&this->actor.unk_E4, 0x802);
    }
}

void func_80B4FE10(GlobalContext* globalCtx) {
    if ((globalCtx->csCtx.frames >= 0x33E) && (globalCtx->csCtx.frames < 0x439)) {
        func_800788CC(0x2098);
    }
}

void func_80B4FE48(EnZl2* this) {
    func_80078914(&this->actor.unk_E4, 0x2086);
}

void func_80B4FE6C(EnZl2* this) {
    func_80078914(&this->actor.unk_E4, NA_SE_EN_GANON_LAUGH);
}

void func_80B4FE90(EnZl2* this) {
    func_80078914(&this->actor.unk_E4, NA_SE_VO_Z1_SURPRISE);
}

void func_80B4FEB4(EnZl2* this) {
    func_80078914(&this->actor.unk_E4, NA_SE_VO_Z1_PAIN);
}

void func_80B4FED8(EnZl2* this) {
    func_80078914(&this->actor.unk_E4, NA_SE_VO_Z1_CRY_0);
}

void func_80B4FEFC(EnZl2* this, GlobalContext* globalCtx) {
    Player* player;
    f32 posX;
    f32 posY;
    f32 posZ;

    if (this->unk_244 == 0) {
        player = PLAYER;
        posX = player->actor.posRot.pos.x;
        posY = player->actor.posRot.pos.y + 80.0f;
        posZ = player->actor.posRot.pos.z;
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0, 0x17);
        Item_Give(globalCtx, ITEM_ARROW_LIGHT);
        this->unk_244 = 1;
    }
}

void func_80B4FF84(EnZl2* this, GlobalContext* globalCtx) {
    f32 posX;
    f32 posY;
    f32 posZ;

    if (this->unk_250 == 0) {
        posX = this->actor.posRot.pos.x;
        posY = this->actor.posRot.pos.y;
        posZ = this->actor.posRot.pos.z;

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 4);
        this->unk_250 = 1;
    }
}

void func_80B4FFF0(EnZl2* this, GlobalContext* globalCtx) {
    f32 posX;
    f32 posY;
    f32 posZ;

    if (this->unk_248 == 0) {
        posX = this->actor.posRot.pos.x;
        posY = this->actor.posRot.pos.y + (kREG(5) + -26.0f);
        posZ = this->actor.posRot.pos.z;

        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0,
                            0x4000, 0, 3);
        this->unk_248 = 1;
    }
}

void func_80B5008C(EnZl2* this) {
    Actor* attachedB = this->actor.attachedB;

    if (attachedB != NULL) {
        attachedB->posRot.pos.x = this->actor.posRot.pos.x;
        attachedB->posRot.pos.y = this->actor.posRot.pos.y + (kREG(5) + -26.0f);
        attachedB->posRot.pos.z = this->actor.posRot.pos.z;
    }
}

void func_80B500E0(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    Vec3f* thisPos = &this->actor.posRot.pos;
    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 someFloat;

    if (actorAction != NULL) {
        someFloat = func_8006F9BC(actorAction->endFrame, actorAction->startFrame, globalCtx->csCtx.frames, 8, 8);
        startX = actorAction->startPos.x;
        startY = actorAction->startPos.y;
        startZ = actorAction->startPos.z;
        endX = actorAction->endPos.x;
        endY = actorAction->endPos.y;
        endZ = actorAction->endPos.z;
        thisPos->x = ((endX - startX) * someFloat) + startX;
        thisPos->y = ((endY - startY) * someFloat) + startY;
        thisPos->z = ((endZ - startZ) * someFloat) + startZ;
    }
}

void func_80B501C4(EnZl2* this, s32 arg1) {
    if (this->actor.attachedB != NULL) {
        ((DoorWarp1*)this->actor.attachedB)->unk_1A8 = arg1;
    }
}

void func_80B501E8(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    s32 temp_f16;

    if (actorAction != NULL) {
        temp_f16 =
            (1.0f - func_8006F93C(actorAction->endFrame, actorAction->startFrame, globalCtx->csCtx.frames)) * 255.0f;
        this->unk_1A8 = temp_f16;
        this->actor.shape.unk_14 = temp_f16;
        func_80B501C4(this, temp_f16);
    }
}

void func_80B50260(EnZl2* this, GlobalContext* globalCtx) {
    this->action = 1;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80B50278(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    s16 actionRotY;

    this->actor.posRot.pos.x = actorAction->startPos.x;
    this->actor.posRot.pos.y = actorAction->startPos.y;
    this->actor.posRot.pos.z = actorAction->startPos.z;
    actionRotY = actorAction->rot.y;
    this->actor.shape.unk_14 = 0xFF;
    this->action = 2;
    this->drawConfig = 1;
    this->actor.shape.rot.y = actionRotY;
    this->actor.posRot.rot.y = actionRotY;
}

void func_80B50304(EnZl2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    ActorShape* actorShape = &this->actor.shape;
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    f32 actionXDelta;
    f32 actionZDelta;
    s32 temp_f6;

    actionXDelta = actorAction->endPos.x - actorAction->startPos.x;
    actionZDelta = actorAction->endPos.z - actorAction->startPos.z;
    func_80B4FD00(this, &D_060003BC, 0, -12.0f, 0);
    this->action = 3;
    this->drawConfig = 1;
    this->unk_23C = 0.0f;
    actorShape->unk_14 = 0xFF;
    temp_f6 = Math_atan2f(actionXDelta, actionZDelta) * 10430.3779296875f;
    actorShape->rot.y = temp_f6;
    this->actor.posRot.rot.y = temp_f6;
}

void func_80B503DC(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);

    if ((actorAction != NULL) && (globalCtx->csCtx.frames >= actorAction->endFrame)) {
        this->action = 4;
    }
}

void func_80B5042C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_060022D0, 2, -8.0f, 0);
    this->action = 5;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_27C = 0.0f;
}

void func_80B50488(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06002750, 0, 0.0f, 0);
        this->action = 6;
        this->drawConfig = 1;
    }
}

void func_80B504D4(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_0600325C, 2, -8.0f, 0);
    this->action = 7;
    this->drawConfig = 1;
    this->unk_27C = 0.0f;
    func_80B4ED18(this, 1);
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B5053C(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06003538, 0, 0.0f, 0);
        this->action = 8;
    }
}

void func_80B50580(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_06000A50, 2, -8.0f, 0);
    this->action = 9;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B505D4(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06000EB0, 0, 0.0f, 0);
        this->action = 10;
    }
}

void func_80B50618(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FEFC(this, globalCtx);
    this->action = 11;
}

void func_80B50644(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FF84(this, globalCtx);
    this->action = 12;
}

void func_80B50670(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_0600B5FC, 0, -8.0f, 0);
    this->action = 13;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B506C4(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_0600AAD4, 2, -8.0f, 0);
    this->action = 14;
    this->drawConfig = 1;
    func_80B4ECE8(this, 4);
    func_80B4ED18(this, 2);
    this->actor.shape.unk_14 = 0xFF;
    func_80B4FE90(this);
}

void func_80B5073C(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_0600AFE0, 0, 0.0f, 0);
        this->action = 15;
    }
}

void func_80B50780(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_06001670, 2, -8.0f, 0);
    this->action = 16;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    func_80B4FFF0(this, globalCtx);
    func_80B4ECE8(this, 3);
}

void func_80B507E8(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06001B48, 0, 0.0f, 0);
        this->action = 17;
    }
}

void func_80B5082C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_06002B14, 2, -8.0f, 0);
    this->action = 18;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B50880(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06002F30, 0, 0.0f, 0);
        this->action = 19;
        func_80B4FEB4(this);
    }
}

void func_80B508C8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_06001010, 2, -8.0f, 0);
    this->action = 20;
    this->drawConfig = 1;
    func_80B4ECE8(this, 6);
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B50928(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_060013A0, 0, 0.0f, 0);
        this->action = 21;
        func_80B4FED8(this);
    }
}

void func_80B50970(EnZl2* this, GlobalContext* globalCtx) {
    this->action = 22;
}

void func_80B50980(EnZl2* this, GlobalContext* globalCtx) {
    this->action = 23;
    this->drawConfig = 2;
    this->unk_1A8 = 0xFF;
}

void func_80B509A0(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);

    if (actorAction != NULL) {
        if (globalCtx->csCtx.frames >= actorAction->endFrame) {
            this->action = 24;
            this->drawConfig = 0;
            func_80B4FE6C(this);
        }
    }
}

void func_80B50A04(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    s32 newAction;
    s32 unk_240;

    if (actorAction != NULL) {
        newAction = actorAction->action;
        unk_240 = this->unk_240;
        if (newAction != unk_240) {
            switch (newAction) {
                case 1:
                    func_80B50260(this, globalCtx);
                    break;
                case 2:
                    func_80B50278(this, globalCtx);
                    break;
                case 3:
                    func_80B50304(this, globalCtx);
                    break;
                case 4:
                    func_80B5042C(this, globalCtx);
                    break;
                case 5:
                    func_80B504D4(this, globalCtx);
                    break;
                case 6:
                    func_80B50580(this, globalCtx);
                    break;
                case 7:
                    func_80B50618(this, globalCtx);
                    break;
                case 8:
                    func_80B50670(this, globalCtx);
                    break;
                case 9:
                    func_80B506C4(this, globalCtx);
                    break;
                case 10:
                    func_80B50780(this, globalCtx);
                    break;
                case 11:
                    func_80B5082C(this, globalCtx);
                    break;
                case 12:
                    func_80B508C8(this, globalCtx);
                    break;
                case 13:
                    func_80B50970(this, globalCtx);
                    break;
                case 14:
                    func_80B50980(this, globalCtx);
                    break;
                case 15:
                    func_80B50644(this, globalCtx);
                    break;
                default:
                    osSyncPrintf("En_Zl2_inAgain_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_240 = newAction;
        }
    }
}

void func_80B50BBC(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B50A04(this, globalCtx);
}

void func_80B50BEC(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50C40(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FDD4(this);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B500E0(this, globalCtx);
    func_80B503DC(this, globalCtx);
}

void func_80B50CA8(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50CFC(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4EA40(this);
    func_80B50488(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B50D50(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50D94(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4EAF4(this);
    func_80B5053C(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B50DE8(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50E3C(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    func_80B505D4(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B50E90(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50EE4(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50F38(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50F8C(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50FE8(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5073C(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B51034(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B51080(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B507E8(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B510CC(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B51118(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B50880(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B51164(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B511B0(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B50928(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B511FC(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B5008C(this);
    func_80B50A04(this, globalCtx);
}

void func_80B51250(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4FE48(this);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B500E0(this, globalCtx);
    func_80B5008C(this);
    func_80B50A04(this, globalCtx);
}

void func_80B512B8(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B501E8(this, globalCtx);
    func_80B509A0(this, globalCtx);
}

void func_80B51310(Actor* thisx, GlobalContext* globalCtx) {
    if (func_80B4ED94(globalCtx, 0) == NULL) {
        if (thisx->attachedB != NULL) {
            Actor_Kill(thisx->attachedB);
        }
        Actor_Kill(thisx);
    }
}

void func_80B5135C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_0600A15C, 0, 0.0f, 0);
    this->action = 25;
    this->unk_254 = 1;
}

void func_80B513A8(EnZl2* this, GlobalContext* globalCtx) {
    Player* player;
    f32 posX;
    f32 posY;
    f32 posZ;

    if (this->unk_250 == 0) {
        player = PLAYER;
        posX = player->actor.posRot.pos.x;
        posY = player->actor.posRot.pos.y;
        posZ = player->actor.posRot.pos.z;
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 7);
        this->unk_250 = 1;
    }
}

void func_80B51418(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4E9B0(this);
    if (globalCtx->csCtx.frames < 0x1AF) {
        func_80B4ED18(this, 1);
    } else {
        func_80B4ED18(this, 0);
    }
}

void func_80B5146C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4EA40(this);
    func_80B4ED18(this, 0);
}

void func_80B5149C(EnZl2* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames < 0x3DC) {
        func_80B4ECE8(this, 7);
        func_80B4ED04(this, 8);
    } else {
        func_80B4E9B0(this);
    }
    func_80B4ED18(this, 0);
}

void func_80B514F8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4E9B0(this);
    if (globalCtx->csCtx.frames < 0x4A6) {
        func_80B4ED18(this, 1);
    } else {
        func_80B4ED18(this, 0);
    }
}

void func_80B5154C(EnZl2* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx;

    if (this->skelAnime.mode != 0) {
        func_80B4E9B0(this);
    } else {
        csCtx = &globalCtx->csCtx;
        if (csCtx->frames < 0x5F0) {
            func_80B4EBB8(this);
        } else if (csCtx->frames == 0x5F0) {
            this->unk_27C = 0.0f;
        } else {
            func_80B4EC48(this);
        }
    }
}

void func_80B515C4(EnZl2* this) {
    this->action = 25;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80B515D8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FD00(this, &D_0600A15C, 0, -8.0f, 0);
    func_80B4EDB8(this, globalCtx, 0);
    this->action = 26;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_27C = 0.0f;
}

void func_80B51644(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_060087B8, 0, -8.0f, 0);
    }
}

void func_80B51678(EnZl2* this) {
    func_80B4FD00(this, &D_06007D0C, 2, -8.0f, 0);
    this->action = 27;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_27C = 0.0f;
}

void func_80B516D0(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06009AD4, 0, -8.0f, 0);
    }
}

void func_80B51704(EnZl2* this) {
    func_80B4FD00(this, &D_060090D8, 2, -8.0f, 0);
    this->action = 28;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_27C = 0.0f;
}

void func_80B5175C(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06006778, 0, -8.0f, 0);
    }
}

void func_80B51790(EnZl2* this) {
    func_80B4FD00(this, &D_06005F40, 2, -8.0f, 0);
    this->action = 29;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
}

void func_80B517E0(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_06002750, 0, -8.0f, 0);
        this->action = 31;
    }
}

void func_80B51824(EnZl2* this) {
    func_80B4FD00(this, &D_060022D0, 2, -8.0f, 0);
    this->action = 30;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_27C = 0.0f;
}

void func_80B5187C(EnZl2* this, s32 arg1) {
    if (arg1 != 0) {
        func_80B4FD00(this, &D_0600A79C, 0, -8.0f, 0);
        this->unk_27C = 0.0f;
    }
}

void func_80B518C0(EnZl2* this) {
    func_80B4FD00(this, SEGMENTED_TO_VIRTUAL(&D_06004900), 2, -8.0f, 0);
    this->action = 32;
    this->drawConfig = 1;
    this->actor.shape.unk_14 = 0xFF;
    this->unk_27C = 0.0f;
}

void func_80B51948(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    s32 newAction;
    s32 unk_240;

    if (actorAction != NULL) {
        newAction = actorAction->action;
        unk_240 = this->unk_240;
        if (newAction != unk_240) {
            switch (newAction) {
                case 1:
                    func_80B515C4(this);
                    break;
                case 2:
                    func_80B515D8(this, globalCtx);
                    break;
                case 16:
                    func_80B51678(this);
                    break;
                case 17:
                    func_80B51704(this);
                    break;
                case 18:
                    func_80B51790(this);
                    break;
                case 4:
                    func_80B51824(this);
                    break;
                case 20:
                    func_80B518C0(this);
                    break;
                case 21:
                    func_80B513A8(this, globalCtx);
                    break;
                default:
                    osSyncPrintf("En_Zl2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }
            this->unk_240 = newAction;
        }
    }
}

void func_80B51A5C(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B51948(this, globalCtx);
}

void func_80B51A8C(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B51418(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B51948(this, globalCtx);
}

void func_80B51AE4(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    func_80B51644(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51B44(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5149C(this, globalCtx);
    func_80B516D0(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51BA8(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B514F8(this, globalCtx);
    func_80B5175C(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51C0C(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5146C(this, globalCtx);
    func_80B517E0(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B51C64(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B51948(this, globalCtx);
}

void func_80B51CA8(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5154C(this, globalCtx);
    func_80B5187C(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51D0C(EnZl2* this, GlobalContext* globalCtx) {
    this->action = 33;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B51D24.s")
/*void func_80B51D24(EnZl2 *this, GlobalContext *globalCtx) {
    s32 pad[3];
    u32 sfxId;
    SkelAnime* skelAnime = &this->skelAnime;

    if (((func_800A56C8(skelAnime, 6.0f) || (func_800A56C8(skelAnime, 0.0f))))) {
        if (this->actor.bgCheckFlags & 1) {
            sfxId = func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource) + 0x800;
            func_80078914(&this->actor.unk_E4, sfxId);
        }
    }
}*/

void func_80B51DA4(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    Vec3f* thisPos = &this->actor.posRot.pos;
    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 someFloat;

    if (actorAction != NULL) {
        someFloat = func_8006F9BC(actorAction->endFrame, actorAction->startFrame, globalCtx->csCtx.frames, 0, 8);
        startX = actorAction->startPos.x;
        startY = actorAction->startPos.y;
        startZ = actorAction->startPos.z;
        endX = actorAction->endPos.x;
        endY = actorAction->endPos.y;
        endZ = actorAction->endPos.z;
        thisPos->x = ((endX - startX) * someFloat) + startX;
        thisPos->y = ((endY - startY) * someFloat) + startY;
        thisPos->z = ((endZ - startZ) * someFloat) + startZ;
        if (actorAction->endFrame < globalCtx->csCtx.frames) {
            Actor_Kill(&this->actor);
        }
    }
}

void func_80B51EA8(EnZl2* this) {
    this->action = 33;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80B51EBC(EnZl2* this, GlobalContext* globalCtx) {
    ActorShape* shape = &this->actor.shape;
    s16 rotY = func_80B4ED94(globalCtx, 0)->rot.y;
    s32 pad[3];

    shape->rot.y = rotY;
    this->actor.posRot.rot.y = rotY;
    func_80B4FD00(this, &D_0600B224, 0, 0.0f, 0);
    this->action = 34;
    this->drawConfig = 1;
    shape->unk_14 = 0xFF;
}

void func_80B51F38(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    if (actorAction != NULL) {
        if (globalCtx->csCtx.frames - 8 >= actorAction->endFrame) {
            func_80B4FD00(this, &D_0600B5FC, 0, -8.0f, 0);
            this->action = 35;
        }
    }
}

void func_80B51FA8(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* actorAction = func_80B4ED94(globalCtx, 0);
    s32 action;
    s32 unk_240;

    if (actorAction != NULL) {
        action = actorAction->action;
        unk_240 = this->unk_240;
        if (action != unk_240) {
            switch (action) {
                case 1:
                    func_80B51EA8(this);
                    break;
                case 2:
                    func_80B51EBC(this, globalCtx);
                    break;
                case 14:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    osSyncPrintf("En_Zl2_inRunning_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_240 = action;
        }
    }
}

void func_80B52068(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B51FA8(this, globalCtx);
}

void func_80B52098(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B51D24(this, globalCtx);
    func_80B51F38(this, globalCtx);
    func_80B51DA4(this, globalCtx);
}

void func_80B52108(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B52114(EnZl2* this, GlobalContext* globalCtx) {
    switch (this->actor.params) {
        case 1:
            func_80B5135C(this, globalCtx);
            break;
        case 4:
            func_80B51D0C(this, globalCtx);
            break;
        case 0:
            func_80B4FD90(this, globalCtx);
            break;
        default:
            osSyncPrintf(VT_FGCOL(RED) " En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
            func_80B4FD90(this, globalCtx);
    }
}

void func_80B521A0(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjectContext* objectCtx = &globalCtx->objectCtx;
    s32 bankIndex = Object_GetIndex(objectCtx, OBJECT_ZL2_ANIME1);
    EnZl2* this = THIS;

    if (bankIndex < 0) {
        osSyncPrintf(VT_FGCOL(RED) "En_Zl2_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    if (Object_IsLoaded(objectCtx, bankIndex)) {
        this->unk_274 = bankIndex;
        func_80B4FCCC(this, globalCtx);
        this->unk_278 = SkelAnime_GetFrameCount(&D_060022D0.genericHeader);
        func_80B52114(this, globalCtx);
    }
}

void EnZl2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    if (this->action < 0 || this->action >= 0x24 || D_80B52840[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_80B52840[this->action](thisx, globalCtx);
}

void EnZl2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;
    ActorShape* actorShape = &thisx->shape;
    s32 pad;

    ActorShape_Init(actorShape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    actorShape->unk_14 = 0;
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06010D70, NULL, NULL, NULL, 0);

    switch (thisx->params) {
        case 1:
            func_800F7260(0x6F);
            break;
        case 4:
            gSaveContext.timer2State = 0;
            break;
    }
}

s32 func_80B52348(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                  Gfx** gfx) {
    EnZl2* this = THIS;

    if (this->unk_264 < 0 || this->unk_264 > 0 || D_80B528D0[this->unk_264] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return 0;
    }
    return D_80B528D0[this->unk_264](globalCtx, limbIndex, dList, pos, rot, thisx, gfx);
}

void func_80B523BC(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B523C8(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad[2];
    EnZl2* this = THIS;
    s16 unk_190 = this->unk_190;
    s16 unk_194 = this->unk_194;
    u32 sp74 = D_80B52810[unk_190];
    u32 sp70 = D_80B52810[unk_194];
    SkelAnime* skelAnime = &this->skelAnime;
    s16 unk_198 = this->unk_198;
    u32 sp64 = D_80B52834[unk_198];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl2.c", 1623);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sp74));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(sp70));
    gSPSegment(gfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(sp64));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0B, &D_80116280[2]);

    gfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          func_80B52348, func_80B4FB74, thisx, gfxCtx->polyOpa.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl2.c", 1648);
}

void func_80B525D4(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl2* this = THIS;
    s16 unk_190 = this->unk_190;
    u32 sp78 = D_80B52810[unk_190];
    s16 unk_198 = this->unk_198;
    SkelAnime* skelAnime = &this->skelAnime;
    u32 sp6C = D_80B52834[unk_198];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl2.c", 1663);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(sp78));
    gSPSegment(gfxCtx->polyXlu.p++, 0x0A, SEGMENTED_TO_VIRTUAL(sp6C));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 0x00, this->unk_1A8);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0B, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          func_80B52348, NULL, thisx, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl2.c", 1692);
}

void EnZl2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    if ((this->drawConfig < 0) || (this->drawConfig >= 3) || (D_80B528D4[this->drawConfig] == NULL)) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_80B528D4[this->drawConfig](thisx, globalCtx);
}
