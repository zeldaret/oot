/*
 * File: z_en_zl2.c
 * Overlay: ovl_En_Zl2
 * Description: Adult Zelda (Cutscenes)
 */

#include "z_en_zl2.h"
#include <vt.h>

#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#define FLAGS 0x00000010

#define THIS ((EnZl2*)thisx)

void EnZl2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl2_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80B4F45C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                  Gfx** gfx);

void func_80B50BBC(EnZl2* this, GlobalContext* globalCtx);
void func_80B50BEC(EnZl2* this, GlobalContext* globalCtx);
void func_80B50C40(EnZl2* this, GlobalContext* globalCtx);
void func_80B50CA8(EnZl2* this, GlobalContext* globalCtx);
void func_80B50CFC(EnZl2* this, GlobalContext* globalCtx);
void func_80B50D50(EnZl2* this, GlobalContext* globalCtx);
void func_80B50D94(EnZl2* this, GlobalContext* globalCtx);
void func_80B50DE8(EnZl2* this, GlobalContext* globalCtx);
void func_80B50E3C(EnZl2* this, GlobalContext* globalCtx);
void func_80B50E90(EnZl2* this, GlobalContext* globalCtx);
void func_80B50EE4(EnZl2* this, GlobalContext* globalCtx);
void func_80B50F38(EnZl2* this, GlobalContext* globalCtx);
void func_80B50F8C(EnZl2* this, GlobalContext* globalCtx);
void func_80B50FE8(EnZl2* this, GlobalContext* globalCtx);
void func_80B51034(EnZl2* this, GlobalContext* globalCtx);
void func_80B51080(EnZl2* this, GlobalContext* globalCtx);
void func_80B510CC(EnZl2* this, GlobalContext* globalCtx);
void func_80B51118(EnZl2* this, GlobalContext* globalCtx);
void func_80B51164(EnZl2* this, GlobalContext* globalCtx);
void func_80B511B0(EnZl2* this, GlobalContext* globalCtx);
void func_80B511FC(EnZl2* this, GlobalContext* globalCtx);
void func_80B51250(EnZl2* this, GlobalContext* globalCtx);
void func_80B512B8(EnZl2* this, GlobalContext* globalCtx);
void func_80B51310(EnZl2* this, GlobalContext* globalCtx);
void func_80B51A5C(EnZl2* this, GlobalContext* globalCtx);
void func_80B51A8C(EnZl2* this, GlobalContext* globalCtx);
void func_80B51AE4(EnZl2* this, GlobalContext* globalCtx);
void func_80B51B44(EnZl2* this, GlobalContext* globalCtx);
void func_80B51BA8(EnZl2* this, GlobalContext* globalCtx);
void func_80B51C0C(EnZl2* this, GlobalContext* globalCtx);
void func_80B51C64(EnZl2* this, GlobalContext* globalCtx);
void func_80B51CA8(EnZl2* this, GlobalContext* globalCtx);
void func_80B52068(EnZl2* this, GlobalContext* globalCtx);
void func_80B52098(EnZl2* this, GlobalContext* globalCtx);
void func_80B52108(EnZl2* this, GlobalContext* globalCtx);
void func_80B521A0(EnZl2* this, GlobalContext* globalCtx);
void func_80B523BC(EnZl2* this, GlobalContext* globalCtx);
void func_80B523C8(EnZl2* this, GlobalContext* globalCtx);
void func_80B525D4(EnZl2* this, GlobalContext* globalCtx);

UNK_TYPE D_80B52810[] = {
    0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x06005D48, 0x06006148,
};

UNK_TYPE D_80B52834[] = {
    0x06003508,
    0x06005548,
    0x06005948,
};

static EnZl2ActionFunc sActionFuncs[] = {
    func_80B521A0, func_80B50BBC, func_80B50BEC, func_80B50C40, func_80B50CA8, func_80B50CFC,
    func_80B50D50, func_80B50D94, func_80B50DE8, func_80B50E3C, func_80B50E90, func_80B50EE4,
    func_80B50F38, func_80B50F8C, func_80B50FE8, func_80B51034, func_80B51080, func_80B510CC,
    func_80B51118, func_80B51164, func_80B511B0, func_80B511FC, func_80B51250, func_80B512B8,
    func_80B51310, func_80B51A5C, func_80B51A8C, func_80B51AE4, func_80B51B44, func_80B51BA8,
    func_80B51C0C, func_80B51C64, func_80B51CA8, func_80B52068, func_80B52098, func_80B52108,
};

static EnZl2PreLimbDrawFunc sOverrideLimbDrawFuncs[] = {
    func_80B4F45C,
};

static EnZl2DrawFunc sDrawFuncs[] = {
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
extern Gfx D_0600BAE8[];
extern SkeletonHeader D_06010D70;

void EnZl2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}

void func_80B4E9B0(EnZl2* this) {
    s32 pad[4];
    s16* unk_194 = &this->unk_194;
    s16* unk_192 = &this->unk_192;
    s16* unk_190 = &this->unk_190;

    if (DECR(*unk_192) == 0) {
        *unk_192 = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    *unk_190 = *unk_192;
    if (*unk_190 >= 3) {
        *unk_190 = 0;
    }
    *unk_194 = *unk_190;
}

void func_80B4EA40(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 3.0f) {
        *unk_190 = 0;
    } else if (*unk_27C < 6.0f) {
        *unk_190 = 1;
    } else if (*unk_27C < 9.0f) {
        *unk_190 = 2;
    } else {
        *unk_190 = 5;
        this->unk_194 = *unk_190;
        return;
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4EAF4(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 2.0f) {
        *unk_190 = 5;
    } else if (*unk_27C < 4.0f) {
        *unk_190 = 2;
    } else if (*unk_27C < 6.0f) {
        *unk_190 = 1;
    } else {
        func_80B4E9B0(this);
        return;
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4EBB8(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 2.0f) {
        *unk_190 = 0;
    } else if (*unk_27C < 4.0f) {
        *unk_190 = 1;
    } else {
        *unk_190 = 2;
        this->unk_194 = *unk_190;
        return;
    }
    *unk_27C += 1.0f;
    this->unk_194 = *unk_190;
}

void func_80B4EC48(EnZl2* this) {
    s16* unk_190 = &this->unk_190;
    f32* unk_27C = &this->unk_27C;

    if (*unk_27C < 2.0f) {
        *unk_190 = 2;
    } else if (*unk_27C < 4.0f) {
        *unk_190 = 1;
    } else {
        func_80B4E9B0(this);
        return;
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

CsCmdActorAction* EnZl2_GetNpcAction(GlobalContext* globalCtx, s32 idx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[idx];
    }
    return NULL;
}

void func_80B4EDB8(EnZl2* this, GlobalContext* globalCtx, s32 arg2) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, arg2);

    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;
        this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

void func_80B4EE38(EnZl2* this, s16 arg1, s32 arg2) {
    s32 phi_a3;
    s32 temp_v1;
    s32 phi_v0 = arg2;

    if (this->unk_24C != 0) {
        temp_v1 = (s16)(arg1 + this->unk_1DC[phi_v0]);
        phi_a3 = arg1 - this->unk_20C[phi_v0];
        phi_v0 = this->unk_1AC[phi_v0];

        if ((s32)fabsf((f32)phi_a3) >= 0x8001) {
            if (arg1 > 0) {
                phi_a3 -= 0x10000;
            } else {
                phi_a3 += 0x10000;
            }
        }
        if (phi_a3 != 0) {
            phi_v0 += (phi_a3 - phi_v0) / 16;
        }
        if (phi_v0 != 0) {
            phi_v0 -= (phi_v0 / 10);
        }
        if ((s16)(temp_v1 - arg1) != 0) {
            phi_v0 -= ((s16)(temp_v1 - arg1) / 50);
        }
        temp_v1 += phi_v0;
        if (((this->unk_1AC[arg2] * phi_v0) <= 0) && ((s16)(temp_v1 - arg1) >= -0x63) &&
            ((s16)(temp_v1 - arg1) < 0x64)) {
            temp_v1 = arg1;
            phi_v0 = 0;
        }
        this->unk_1AC[arg2] = phi_v0;
        this->unk_1DC[arg2] = temp_v1 - arg1;
    }
    this->unk_20C[arg2] = arg1;
}

void func_80B4EF64(EnZl2* this, s16 arg1, s32 arg2) {
    s32 temp_t0 = arg2;
    s32 temp_t2;
    s32 temp_v1;
    s32 phi_t1;
    s32 phi_v0;
    s32 phi_a0;
    u32 zero;
    f32 animCurrentFrame;
    f32 unk_278;

    if (temp_t0 == 2) {
        phi_a0 = 0x3A98;
        phi_t1 = 0;
    } else if (temp_t0 == 5) {
        phi_a0 = 0x32C8;
        phi_t1 = 3;
    } else if (temp_t0 == 8) {
        phi_a0 = 0x2EE0;
        phi_t1 = 6;
    } else if (temp_t0 == 11) {
        phi_a0 = 0x4000;
        phi_t1 = 9;
    } else if (temp_t0 == 14) {
        phi_a0 = 0x4000;
        phi_t1 = 12;
    } else if (temp_t0 == 17) {
        phi_a0 = 0x4000;
        phi_t1 = 15;
    } else {
        phi_a0 = 0x4000;
        phi_t1 = 18;
    }

    if (this->unk_24C != 0) {
        phi_v0 = this->unk_1DC[temp_t0] + arg1;
        temp_v1 = (s16)(phi_v0 & 0xFFFF);
        temp_t2 = arg1 - this->unk_20C[temp_t0];
        phi_v0 = this->unk_1AC[temp_t0];

        if ((s32)fabsf((f32)temp_t2) >= 0x8001) {
            if (arg1 > 0) {
                temp_t2 -= 0x10000;
            } else {
                temp_t2 += 0x10000;
            }
        }
        if (phi_t1 >= 0) {
            temp_t2 += (ABS(this->unk_1AC[phi_t1]) / 3);
        }
        if (temp_t2 != 0) {
            phi_v0 += ((temp_t2 - phi_v0) / 16);
        }
        if (phi_v0 != 0) {
            phi_v0 -= phi_v0 / 10;
        }
        if ((s16)(temp_v1 - phi_a0) != 0) {
            phi_v0 -= (s16)(temp_v1 - phi_a0) / 50;
        }
        temp_v1 += phi_v0;

        if (((this->unk_1AC[arg2] * phi_v0) <= 0) && ((s16)(temp_v1 - phi_a0) >= -0x63) &&
            ((s16)(temp_v1 - phi_a0) < 0x64)) {
            temp_v1 = phi_a0;
            phi_v0 = 0;
        }

        zero = 0;
        if (arg2 == 2) {
            if ((this->action == 5) || (this->action == 30)) {
                animCurrentFrame = this->skelAnime.animCurrentFrame;
                unk_278 = this->unk_278;
                temp_t0 = (s32)((3500.0f * animCurrentFrame) / unk_278) + phi_a0;
                if (temp_t0 >= temp_v1) {
                    if (phi_v0 < zero) {
                        phi_v0 += 1;
                    }
                    temp_v1 = temp_t0;
                    phi_v0 /= -2;
                }
            } else if ((this->action == 6) || (this->action == 31)) {
                temp_t0 = phi_a0 + 0xDAC;
                if (temp_t0 >= temp_v1) {
                    if (phi_v0 < zero) {
                        phi_v0 += 1;
                    }
                    temp_v1 = temp_t0;
                    phi_v0 /= -2;
                }
            } else if (this->action == 20) {
                temp_t0 = phi_a0 - 0x3E8;
                if (temp_t0 >= temp_v1) {
                    if (phi_v0 < zero) {
                        phi_v0 += 1;
                    }
                    temp_v1 = temp_t0;
                    phi_v0 /= -2;
                }
            }
        }
        this->unk_1AC[arg2] = phi_v0;
        this->unk_1DC[arg2] = temp_v1 - arg1;
    }
    this->unk_20C[arg2] = arg1;
}

#ifdef NON_MATCHING
// single register swap in a subu instruction
void func_80B4F230(EnZl2* this, s16 arg1, s32 arg2) {
    s32 temp_v1;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 phi_v0;
    s32 temp_1AC;
    s32 index1AC;
    s32 phi_t5;

    if (this->unk_24C != 0) {
        temp_v1 = this->unk_1DC[arg2] - arg1;
        temp_t0 = (s16)temp_v1;
        temp_t2 = temp_t0;
        temp_t3 = this->unk_1AC[arg2];
        phi_v0 = temp_t3;
        temp_1AC = phi_v0;
        temp_t3 = arg1 - this->unk_20C[arg2];

        if (arg2 == 1) {
            index1AC = 0;
            phi_t5 = this->unk_1AC[index1AC];
        } else if (arg2 == 4) {
            index1AC = 3;
            phi_t5 = this->unk_1AC[index1AC];
        } else if (arg2 == 7) {
            index1AC = 6;
            phi_t5 = this->unk_1AC[index1AC];
        } else if (arg2 == 10) {
            index1AC = 9;
            phi_t5 = ABS(this->unk_1AC[index1AC]);
        } else if (arg2 == 13) {
            index1AC = 12;
            phi_t5 = ABS(this->unk_1AC[index1AC]);
        } else if (arg2 == 16) {
            index1AC = 15;
            phi_t5 = -ABS(this->unk_1AC[index1AC]);
        } else {
            index1AC = 18;
            phi_t5 = -ABS(this->unk_1AC[index1AC]);
        }

        if ((s32)fabsf((f32)temp_t3) > 0x8000) {
            if (arg1 > 0) {
                temp_t3 -= 0x10000;
            } else {
                temp_t3 += 0x10000;
            }
        }
        if (index1AC >= 0) {
            temp_t3 += phi_t5 / 3;
        }

        if (temp_t3 != 0) {
            phi_v0 += (temp_t3 - temp_1AC) / 16;
        }
        if (phi_v0 != 0) {
            phi_v0 -= phi_v0 / 10;
        }
        if (temp_t0 != 0) {
            phi_v0 -= temp_t0 / 50;
        }
        temp_v1 += phi_v0;
        if (((temp_1AC * phi_v0) <= 0) && (temp_t2 >= -0x63) && (temp_t2 < 0x64)) {
            temp_v1 = 0;
            phi_v0 = 0;
        }
        this->unk_1AC[arg2] = phi_v0;
        this->unk_1DC[arg2] = arg1 + temp_v1;
    }
    this->unk_20C[arg2] = arg1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl2/func_80B4F230.s")
#endif

s32 func_80B4F45C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                  Gfx** gfx) {
    s32 pad;
    EnZl2* this = THIS;
    Mtx* sp74;
    MtxF sp34;
    Vec3s sp2C;
    s16 pad2;
    s16* unk_1DC = this->unk_1DC;

    if (limbIndex == 0xE) {
        sp74 = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx) * 7);
        gSPSegment((*gfx)++, 0x0C, sp74);

        Matrix_Push();
        Matrix_Translate(pos->x, pos->y, pos->z, MTXMODE_APPLY);
        Matrix_RotateRPY(rot->x, rot->y, rot->z, MTXMODE_APPLY);
        Matrix_Push();
        Matrix_Translate(362.0f, -133.0f, 0.0f, MTXMODE_APPLY);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 0);
            func_80B4F230(this, sp2C.x, 1);
            func_80B4EF64(this, sp2C.z, 2);
        }
        Matrix_RotateRPY(unk_1DC[0] + kREG(31), unk_1DC[1] + kREG(32), unk_1DC[2] + kREG(33), MTXMODE_APPLY);
        Matrix_Translate(-188.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[0], "../z_en_zl2.c", 1056);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 3);
            func_80B4F230(this, sp2C.x, 4);
        }
        Matrix_RotateRPY(unk_1DC[3] + kREG(34), unk_1DC[4] + kREG(35), unk_1DC[5] + kREG(36), MTXMODE_APPLY);
        Matrix_Translate(-410.0f, -184.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[1], "../z_en_zl2.c", 1100);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 6);
            func_80B4F230(this, sp2C.x, 7);
        }
        Matrix_RotateRPY(unk_1DC[6] + kREG(37), unk_1DC[7] + kREG(38), unk_1DC[8] + kREG(39), MTXMODE_APPLY);
        Matrix_Translate(-1019.0f, -26.0f, 0.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[2], "../z_en_zl2.c", 1120);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(467.0f, 265.0f, 389.0f, MTXMODE_APPLY);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 9);
            func_80B4F230(this, sp2C.x, 10);
            func_80B4EF64(this, sp2C.z, 11);
        }
        Matrix_RotateRPY(unk_1DC[9] + kREG(40), unk_1DC[10] + kREG(41), unk_1DC[11] + kREG(42), MTXMODE_APPLY);
        Matrix_Translate(-427.0f, -1.0f, -3.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[3], "../z_en_zl2.c", 1145);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 12);
            func_80B4F230(this, sp2C.x, 13);
            func_80B4EF64(this, sp2C.z, 14);
        }
        Matrix_RotateRPY(unk_1DC[12] + kREG(43), unk_1DC[13] + kREG(44), unk_1DC[14] + kREG(45), MTXMODE_APPLY);
        Matrix_Translate(-446.0f, -52.0f, 84.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[4], "../z_en_zl2.c", 1164);
        Matrix_Pull();
        Matrix_Push();
        Matrix_Translate(467.0f, 265.0f, -389.0f, MTXMODE_APPLY);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 15);
            func_80B4F230(this, sp2C.x, 16);
            func_80B4EF64(this, sp2C.z, 17);
        }
        Matrix_RotateRPY(unk_1DC[15] + kREG(46), unk_1DC[16] + kREG(47), unk_1DC[17] + kREG(48), MTXMODE_APPLY);
        Matrix_Translate(-427.0f, -1.0f, 3.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[5], "../z_en_zl2.c", 1189);
        Matrix_Get(&sp34);
        func_800D20CC(&sp34, &sp2C, 0);
        if (func_800C0D28(globalCtx) == 0) {
            func_80B4EE38(this, sp2C.y, 18);
            func_80B4F230(this, sp2C.x, 19);
            func_80B4EF64(this, sp2C.z, 20);
        }
        Matrix_RotateRPY(unk_1DC[18] + kREG(49), unk_1DC[19] + kREG(50), unk_1DC[20] + kREG(51), MTXMODE_APPLY);
        Matrix_Translate(-446.0f, -52.0f, -84.0f, MTXMODE_APPLY);
        Matrix_ToMtx(&sp74[6], "../z_en_zl2.c", 1208);
        Matrix_Pull();
        Matrix_Pull();
        this->unk_24C = 1;
    }
    return 0;
}

void EnZl2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    EnZl2* this = THIS;
    s32 pad[2];

    if (limbIndex == 10) {
        if ((this->unk_254 != 0) && (globalCtx->csCtx.frames >= 900)) {
            gSPDisplayList((*gfx)++, &D_0600BAE8);
        }

        {
            Player* player = PLAYER;
            Matrix_Push();
            if (player->unk_15D == 0xFF) {
                Matrix_Put(&player->mf_A20);
                Matrix_Translate(180.0f, 979.0f, -375.0f, MTXMODE_APPLY);
                Matrix_RotateRPY(-0x5DE7, -0x53E9, 0x3333, MTXMODE_APPLY);
                Matrix_Scale(1.2f, 1.2f, 1.2f, MTXMODE_APPLY);
                gSPMatrix((*gfx)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zl2.c", 1253),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList((*gfx)++, &D_0600BAE8);
            }
            Matrix_Pull();
        }
    }
}

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
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_CONCRETE);
    }
}

void func_80B4FE10(GlobalContext* globalCtx) {
    if ((globalCtx->csCtx.frames >= 830) && (globalCtx->csCtx.frames < 1081)) {
        func_800788CC(NA_SE_EV_EARTHQUAKE - SFX_FLAG);
    }
}

void func_80B4FE48(EnZl2* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_EV_GOTO_HEAVEN - SFX_FLAG);
}

void func_80B4FE6C(EnZl2* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_EN_GANON_LAUGH);
}

void func_80B4FE90(EnZl2* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_SURPRISE);
}

void func_80B4FEB4(EnZl2* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_PAIN);
}

void func_80B4FED8(EnZl2* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_Z1_CRY_0);
}

void EnZl2_GiveLightArrows(EnZl2* this, GlobalContext* globalCtx) {
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
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    Vec3f* thisPos = &this->actor.posRot.pos;
    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 someFloat;

    if (npcAction != NULL) {
        someFloat = func_8006F9BC(npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames, 8, 8);
        startX = npcAction->startPos.x;
        startY = npcAction->startPos.y;
        startZ = npcAction->startPos.z;
        endX = npcAction->endPos.x;
        endY = npcAction->endPos.y;
        endZ = npcAction->endPos.z;
        thisPos->x = ((endX - startX) * someFloat) + startX;
        thisPos->y = ((endY - startY) * someFloat) + startY;
        thisPos->z = ((endZ - startZ) * someFloat) + startZ;
    }
}

void func_80B501C4(EnZl2* this, s32 alpha) {
    if (this->actor.attachedB != NULL) {
        ((DoorWarp1*)this->actor.attachedB)->alpha = alpha;
    }
}

void func_80B501E8(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);

    if (npcAction != NULL) {
        this->actor.shape.unk_14 = this->alpha =
            (1.0f - func_8006F93C(npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames)) * 255.0f;
        func_80B501C4(this, this->alpha);
    }
}

void func_80B50260(EnZl2* this, GlobalContext* globalCtx) {
    this->action = 1;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

void func_80B50278(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);

    this->actor.posRot.pos.x = npcAction->startPos.x;
    this->actor.posRot.pos.y = npcAction->startPos.y;
    this->actor.posRot.pos.z = npcAction->startPos.z;
    this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    this->actor.shape.unk_14 = 0xFF;
    this->action = 2;
    this->drawConfig = 1;
}

void func_80B50304(EnZl2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    ActorShape* actorShape = &this->actor.shape;
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    f32 actionXDelta;
    f32 actionZDelta;

    actionXDelta = npcAction->endPos.x - npcAction->startPos.x;
    actionZDelta = npcAction->endPos.z - npcAction->startPos.z;
    func_80B4FD00(this, &D_060003BC, 0, -12.0f, 0);
    this->action = 3;
    this->drawConfig = 1;
    this->unk_23C = 0.0f;
    actorShape->unk_14 = 0xFF;
    this->actor.posRot.rot.y = actorShape->rot.y = Math_atan2f(actionXDelta, actionZDelta) * 10430.3779296875f;
}

void func_80B503DC(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);

    if ((npcAction != NULL) && (globalCtx->csCtx.frames >= npcAction->endFrame)) {
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
    EnZl2_GiveLightArrows(this, globalCtx);
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
    this->alpha = 255;
}

void func_80B509A0(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);

    if (npcAction != NULL) {
        if (globalCtx->csCtx.frames >= npcAction->endFrame) {
            this->action = 24;
            this->drawConfig = 0;
            func_80B4FE6C(this);
        }
    }
}

void func_80B50A04(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    s32 newAction;
    s32 unk_240;

    if (npcAction != NULL) {
        newAction = npcAction->action;
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

void func_80B50BBC(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B50A04(this, globalCtx);
}

void func_80B50BEC(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50C40(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FDD4(this);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B500E0(this, globalCtx);
    func_80B503DC(this, globalCtx);
}

void func_80B50CA8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50CFC(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4EA40(this);
    func_80B50488(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B50D50(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50D94(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4EAF4(this);
    func_80B5053C(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B50DE8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50E3C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    func_80B505D4(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B50E90(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50EE4(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50F38(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50F8C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B50FE8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5073C(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B51034(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B51080(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B507E8(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B510CC(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B51118(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B50880(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B51164(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B50A04(this, globalCtx);
}

void func_80B511B0(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE10(globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B50928(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B511FC(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B5008C(this);
    func_80B50A04(this, globalCtx);
}

void func_80B51250(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4FE48(this);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B500E0(this, globalCtx);
    func_80B5008C(this);
    func_80B50A04(this, globalCtx);
}

void func_80B512B8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B501E8(this, globalCtx);
    func_80B509A0(this, globalCtx);
}

void func_80B51310(EnZl2* this, GlobalContext* globalCtx) {
    Actor* attachedB;

    if (EnZl2_GetNpcAction(globalCtx, 0) == NULL) {
        attachedB = this->actor.attachedB;
        if (attachedB != NULL) {
            Actor_Kill(attachedB);
        }
        Actor_Kill(&this->actor);
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
    if (globalCtx->csCtx.frames < 431) {
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
    if (globalCtx->csCtx.frames < 988) {
        func_80B4ECE8(this, 7);
        func_80B4ED04(this, 8);
    } else {
        func_80B4E9B0(this);
    }
    func_80B4ED18(this, 0);
}

void func_80B514F8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4E9B0(this);
    if (globalCtx->csCtx.frames < 1190) {
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
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    s32 newAction;
    s32 unk_240;

    if (npcAction != NULL) {
        newAction = npcAction->action;
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

void func_80B51A5C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B51948(this, globalCtx);
}

void func_80B51A8C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B51418(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B51948(this, globalCtx);
}

void func_80B51AE4(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    func_80B51644(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51B44(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5149C(this, globalCtx);
    func_80B516D0(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51BA8(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B514F8(this, globalCtx);
    func_80B5175C(this, EnZl2_FrameUpdateMatrix(this));
    func_80B51948(this, globalCtx);
}

void func_80B51C0C(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B5146C(this, globalCtx);
    func_80B517E0(this, EnZl2_FrameUpdateMatrix(this));
}

void func_80B51C64(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    EnZl2_FrameUpdateMatrix(this);
    func_80B51948(this, globalCtx);
}

void func_80B51CA8(EnZl2* this, GlobalContext* globalCtx) {
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

void func_80B51D24(EnZl2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sfxId;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((func_800A56C8(skelAnime, 6.0f)) || (func_800A56C8(skelAnime, 0.0f))) {
        if (this->actor.bgCheckFlags & 1) {
            sfxId = SFX_FLAG;
            sfxId += func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
            func_80078914(&this->actor.projectedPos, sfxId);
        }
    }
}

void func_80B51DA4(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    Vec3f* thisPos = &this->actor.posRot.pos;
    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 someFloat;

    if (npcAction != NULL) {
        someFloat = func_8006F9BC(npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames, 0, 8);
        startX = npcAction->startPos.x;
        startY = npcAction->startPos.y;
        startZ = npcAction->startPos.z;
        endX = npcAction->endPos.x;
        endY = npcAction->endPos.y;
        endZ = npcAction->endPos.z;
        thisPos->x = ((endX - startX) * someFloat) + startX;
        thisPos->y = ((endY - startY) * someFloat) + startY;
        thisPos->z = ((endZ - startZ) * someFloat) + startZ;
        if (npcAction->endFrame < globalCtx->csCtx.frames) {
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
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    s32 pad[2];

    this->actor.posRot.rot.y = shape->rot.y = npcAction->rot.y;
    func_80B4FD00(this, &D_0600B224, 0, 0.0f, 0);
    this->action = 34;
    this->drawConfig = 1;
    shape->unk_14 = 0xFF;
}

void func_80B51F38(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);

    if (npcAction != NULL) {
        if (globalCtx->csCtx.frames - 8 >= npcAction->endFrame) {
            func_80B4FD00(this, &D_0600B5FC, 0, -8.0f, 0);
            this->action = 35;
        }
    }
}

void func_80B51FA8(EnZl2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnZl2_GetNpcAction(globalCtx, 0);
    s32 action;
    s32 unk_240;

    if (npcAction != NULL) {
        action = npcAction->action;
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

void func_80B52068(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B51FA8(this, globalCtx);
}

void func_80B52098(EnZl2* this, GlobalContext* globalCtx) {
    func_80B4FCCC(this, globalCtx);
    func_80B4ED2C(this, globalCtx);
    func_80B4E9B0(this);
    EnZl2_FrameUpdateMatrix(this);
    func_80B51D24(this, globalCtx);
    func_80B51F38(this, globalCtx);
    func_80B51DA4(this, globalCtx);
}

void func_80B52108(EnZl2* this, GlobalContext* globalCtx) {
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

void func_80B521A0(EnZl2* this, GlobalContext* globalCtx) {
    s32 pad;
    ObjectContext* objectCtx = &globalCtx->objectCtx;
    s32 bankIndex = Object_GetIndex(objectCtx, OBJECT_ZL2_ANIME1);
    s32 pad2;

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

    if (this->action < 0 || this->action >= 0x24 || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, globalCtx);
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

s32 EnZl2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                           Gfx** gfx) {
    EnZl2* this = THIS;

    if (this->overrideLimbDrawConfig < 0 || this->overrideLimbDrawConfig > 0 ||
        sOverrideLimbDrawFuncs[this->overrideLimbDrawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return 0;
    }
    return sOverrideLimbDrawFuncs[this->overrideLimbDrawConfig](globalCtx, limbIndex, dList, pos, rot, thisx, gfx);
}

void func_80B523BC(EnZl2* this, GlobalContext* globalCtx) {
}

void func_80B523C8(EnZl2* this, GlobalContext* globalCtx) {
    s32 pad[3];
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
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0B, &D_80116280[2]);

    gfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          EnZl2_OverrideLimbDraw, EnZl2_PostLimbDraw, &this->actor, gfxCtx->polyOpa.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl2.c", 1648);
}

void func_80B525D4(EnZl2* this, GlobalContext* globalCtx) {
    s32 pad[2];
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
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0, 0, 0, this->alpha);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0B, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          EnZl2_OverrideLimbDraw, NULL, &this->actor, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_zl2.c", 1692);
}

void EnZl2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl2* this = THIS;

    if ((this->drawConfig < 0) || (this->drawConfig >= 3) || (sDrawFuncs[this->drawConfig] == NULL)) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}
