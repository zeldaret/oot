/*
 * File: z_en_daiku_kakariko.c
 * Overlay: ovl_En_Daiku_Kakariko
 * Description: Kakariko Village Carpenters
 */

#include "z_en_daiku_kakariko.h"

#define FLAGS 0x00000019

#define THIS ((EnDaikuKakariko*)thisx)

void EnDaikuKakariko_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809E4A7C(EnDaikuKakariko* this, GlobalContext* globalCtx);
void func_809E4BC4(EnDaikuKakariko* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_06007958;

const ActorInit En_Daiku_Kakariko_InitVars = {
    ACTOR_EN_DAIKU_KAKARIKO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DAIKU,
    sizeof(EnDaikuKakariko),
    (ActorFunc)EnDaikuKakariko_Init,
    (ActorFunc)EnDaikuKakariko_Destroy,
    (ActorFunc)EnDaikuKakariko_Update,
    (ActorFunc)EnDaikuKakariko_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 18, 66, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInit = { 0, 0, 0, 0, 0xFF };

static DamageTable sDamageTable = { 0 };

static struct_D_80AA1678 sAnimations[] = {
    { 0x06001AB0, 1.0f, 2, -7.0f }, { 0x06007DE0, 1.0f, 0, -7.0f }, { 0x0600885C, 1.0f, 0, -7.0f },
    { 0x06000C44, 1.0f, 0, -7.0f }, { 0x06000600, 1.0f, 0, -7.0f }, { 0x06008164, 1.0f, 0, -7.0f },
};

void func_809E4320(EnDaikuKakariko* this, s32 arg1, s32* arg2) {
    f32 phi_f0;

    if ((*arg2 < 0) || (arg1 == *arg2)) {
        phi_f0 = 0.0f;
    } else {
        phi_f0 = sAnimations[arg1].transitionRate;
    }

    Animation_Change(&this->skelAnime, sAnimations[arg1].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimations[arg1].animation), sAnimations[arg1].unk_08, phi_f0);

    *arg2 = arg1;
}

void EnDaikuKakariko_Init(Actor* thisx, GlobalContext* globalCtx) {
    static u16 D_809E5568[] = { 0x0080, 0x00B0, 0x0070, 0x0470 };
    EnDaikuKakariko* this = THIS;
    s32 pad;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        switch (globalCtx->sceneNum) {
            case SCENE_SPOT01:
                if (gSaveContext.nightFlag == 0) {
                    this->unk_200 |= 1;
                    this->unk_200 |= D_809E5568[this->actor.params & 3];
                }
                break;
            case SCENE_KAKARIKO:
                if (gSaveContext.nightFlag == 1) {
                    this->unk_200 |= 2;
                }
                break;
            case SCENE_DRAG:
                this->unk_200 |= 4;
                break;
        }
    }

    if (!(this->unk_200 & 7)) {
        Actor_Kill(&this->actor);
    }

    if (gSaveContext.nightFlag == 1) {
        this->unk_200 |= 8;
    }

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 40.0f);

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06007958, NULL, &this->jointTable, &this->morphTable, 17);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    func_80061EFC(&this->actor.colChkInfo, &sDamageTable, &sColChkInit);

    Animation_Change(&this->skelAnime, sAnimations->animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimations->animation), sAnimations->unk_08, sAnimations->transitionRate);

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);

    this->actor.gravity = 0.0f;
    this->unk_1E8 = 3.0f;
    this->actor.uncullZoneForward = 1200.0f;
    this->actor.unk_1F = 6;
    this->unk_1EC = -1;

    if (this->unk_200 & 0x40) {
        this->actor.gravity = -1.0f;
    }

    if (this->unk_200 & 0x10) {
        func_809E4320(this, 3, &this->unk_1EC);
        this->actionFunc = func_809E4BC4;
    } else {
        if (this->unk_200 & 8) {
            if (((this->actor.params & 3) == 1) || ((this->actor.params & 3) == 3)) {
                func_809E4320(this, 5, &this->unk_1EC);
                this->unk_200 |= 0x800;
            } else {
                func_809E4320(this, 1, &this->unk_1EC);
            }

            this->skelAnime.curFrame = (s32)(Rand_ZeroOne() * this->skelAnime.endFrame);
        } else {
            func_809E4320(this, 0, &this->unk_1EC);
            this->skelAnime.curFrame = (s32)(Rand_ZeroOne() * this->skelAnime.endFrame);
        }

        this->unk_200 |= 0x100;
        this->actionFunc = func_809E4A7C;
    }
}

void EnDaikuKakariko_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDaikuKakariko* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_809E474C(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    s32 num = 2;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        switch (this->actor.textId) {
            case 0x6061:
                gSaveContext.infTable[23] |= 0x40;
                break;
            case 0x6064:
                gSaveContext.infTable[23] |= 0x100;
                break;
        }
        num = 0;
    }
    return num;
}

void func_809E47EC(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    static s32 maskReactionSets[] = { 1, 2, 3, 4 };
    s16 sp26;
    s16 sp24;

    if (this->unk_1E0 == 2) {
        this->unk_1E0 = func_809E474C(this, globalCtx);
    } else if (func_8002F194(&this->actor, globalCtx)) {
        this->unk_1E0 = 2;
    } else {
        func_8002F374(globalCtx, &this->actor, &sp26, &sp24);

        if ((sp26 >= 0) && (sp26 <= 320) && (sp24 >= 0) && (sp24 <= 240) && (this->unk_1E0 == 0) &&
            (func_8002F2CC(&this->actor, globalCtx, 100.0f) == 1)) {
            this->actor.textId = Text_GetFaceReaction(globalCtx, maskReactionSets[this->actor.params & 3]);

            if (this->actor.textId == 0) {
                switch (this->actor.params & 3) {
                    case 0:
                        if (this->unk_200 & 8) {
                            this->actor.textId = 0x5076;
                        } else {
                            this->actor.textId = 0x5075;
                        }
                        break;
                    case 1:
                        if (this->unk_200 & 1) {
                            this->actor.textId = 0x502A;
                        } else {
                            this->actor.textId = 0x5074;
                        }
                        break;
                    case 2:
                        if (this->unk_200 & 1) {
                            this->actor.textId = 0x506A;
                        } else {
                            this->actor.textId = 0x506B;
                        }
                        break;
                    case 3:
                        if (this->unk_200 & 1) {
                            this->actor.textId = 0x5077;
                        } else {
                            this->actor.textId = 0x5078;
                        }
                        break;
                }
            }
        }
    }
}

void func_809E49A8(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        func_809E4320(this, 3, &this->unk_1EC);
    }

    func_809E47EC(this, globalCtx);

    if (this->unk_1E0 == 0) {
        if (this->unk_200 & 0x10) {
            func_809E4320(this, 3, &this->unk_1EC);
            this->unk_200 &= ~0x0300;
            this->actionFunc = func_809E4BC4;
            return;
        }

        if (!(this->unk_200 & 8)) {
            func_809E4320(this, 0, &this->unk_1EC);
        }

        if ((this->unk_200 & 0x800) == 0) {
            this->unk_200 &= ~0x0200;
            this->unk_200 |= 0x100;
        }

        this->actionFunc = func_809E4A7C;
    }
}

void func_809E4A7C(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    func_809E47EC(this, globalCtx);

    if (SkelAnime_Update(&this->skelAnime)) {
        func_809E4320(this, 0, &this->unk_1EC);
    }

    if (this->unk_1E0 != 0) {
        if (!(this->unk_200 & 8)) {
            func_809E4320(this, 4, &this->unk_1EC);
        }

        if (!(this->unk_200 & 0x800)) {
            this->unk_200 |= 0x200;
            this->unk_200 &= ~0x0100;
        }

        this->actionFunc = &func_809E49A8;
    }
}

void func_809E4B14(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->unk_2F8--;

        if (this->unk_2F8 <= 0) {
            func_809E4320(this, 3, &this->unk_1EC);
            this->actionFunc = func_809E4BC4;
        } else {
            this->skelAnime.curFrame = this->skelAnime.startFrame;
        }
    }

    func_809E47EC(this, globalCtx);

    if (this->unk_1E0 != 0) {
        this->unk_200 |= 0x200;
        func_809E4320(this, 4, &this->unk_1EC);
        this->actionFunc = func_809E49A8;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E4BC4.s")
/*
void func_809E4BC4(EnDaikuKakariko *this, GlobalContext *globalCtx) {
    f32 sp4C;
    void *sp40;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f2;
    s16 temp_a1;
    s16 temp_v0_3;
    s32 temp_t2;
    s32 temp_t4;
    s32 temp_v1;
    s32 temp_v1_3;
    u16 temp_v0_2;
    u16 temp_v0_4;
    u8 temp_v1_2;
    void *temp_s1;
    void *temp_v0;
    s32 phi_s2;
    s32 phi_v1;

    sp40 = globalCtx + 0x10000;
loop_1:
    temp_s1 = sp40->unk1E08 + (((this->actor.params >> 8) & 0xFF) * 8);
    temp_v1 = temp_s1->unk4;
    temp_v0 = gSegments[(temp_v1 * 0x10) >> 0x1C] + (temp_v1 & 0xFFFFFF) + (this->unk_1E4 * 6) + 0x80000000;
    temp_f20 = temp_v0->unk0 - this->actor.posRot.pos.x;
    temp_f22 = temp_v0->unk4 - this->actor.posRot.pos.z;
    temp_f2 = sqrtf((temp_f20 * temp_f20) + (temp_f22 * temp_f22));
    temp_a1 = Math_FAtan2F(temp_f20, temp_f22) * 10430.378f;
    phi_s2 = 0;
    if (temp_f2 <= 10.0f) {
        if (this->unk_1F8 == 0) {
            temp_t4 = this->unk_1E4 + 1;
            this->unk_1E4 = temp_t4;
            temp_v1_2 = temp_s1->unk0;
            if (temp_t4 >= temp_v1_2) {
                temp_v0_2 = this->unk_200;
                if ((temp_v0_2 & 0x20) != 0) {
                    this->unk_1E4 = temp_v1_2 - 2;
                    this->unk_1F8 = 1;
                    this->unk_1FC = 0;
                    phi_s2 = 0;
                    if ((temp_v0_2 & 0x400) != 0) {
                        this->unk_2F8 = 2;
                        func_809E4320(this, 0, &this->unk_1EC);
                        this->actionFunc = func_809E4B14;
                        return;
                    }
                } else {
                    this->unk_1E4 = 0;
block_12:
                    phi_s2 = 1;
                }
            } else {
                this->unk_1FC = 1;
                phi_s2 = 1;
            }
        } else {
            temp_t2 = this->unk_1E4 - 1;
            this->unk_1E4 = temp_t2;
            if (temp_t2 < 0) {
                this->unk_1E4 = 1;
                this->unk_1F8 = 0;
                this->unk_1FC = 0;
                phi_s2 = 0;
                if ((this->unk_200 & 0x400) != 0) {
                    this->unk_2F8 = 2;
                    func_809E4320(this, 0, &this->unk_1EC);
                    this->actionFunc = func_809E4B14;
                    return;
                }
            } else {
                goto block_12;
            }
        }
    }
    if (phi_s2 != 0) {
        goto loop_1;
    }

    sp4C = temp_f2;
    temp_v0_3 = Math_SmoothStepToS(&this->actor.shape.rot.y, temp_a1, 1, 5000, 0);

    this->actor.posRot.rot.y = this->actor.shape.rot.y;

    phi_v1 = this->unk_1FC;

    if (this->unk_1FC == 0) {
        if (temp_v0_3 == 0) {
            this->unk_1FC = 1;
            phi_v1 = 1;
        } else {
            this->actor.speedXZ = 0.0f;
            phi_v1 = this->unk_1FC;
        }
    }

    if (phi_v1 == 1) {
        Math_SmoothStepToF(&this->actor.speedXZ, this->unk_1E8, 0.8f, temp_f2, 0.0f);
    }


    // ******************** GOOD!!!!! ****************
    Actor_MoveForward(&this->actor);

    if (this->unk_200 & 0x40) {
        func_8002E4B4(globalCtx, this, 0.0f, 0.0f, 0.0f, 4);
    } else if (this->unk_200 & 0x80) {
        this->unk_200 &= ~0x0080;
        this->unk_202 |= 1;
    } else if (this->unk_202 & 1) {
        func_8002E4B4(globalCtx, this, 0.0f, 0.0f, 0.0f, 4);
        this->unk_202 = this->unk_202 & ~1;
    }

    SkelAnime_Update(&this->skelAnime);
    func_809E47EC(this, globalCtx);

    if (this->unk_1E0 != 0) {
        this->unk_200 |= 0x200;
        func_809E4320(this, 4, &this->unk_1EC);
        this->actionFunc = func_809E49A8;
    }
}
*/

void EnDaikuKakariko_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDaikuKakariko* this = THIS;
    s32 pad;
    Player* player = PLAYER;
    s32 pad2;

    if (this->unk_1EC == 3) {
        if (((s32)this->skelAnime.curFrame == 6) || ((s32)this->skelAnime.curFrame == 15)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
        }
    }

    Collider_CylinderUpdate(&this->actor, &this->collider);

    if (this->unk_200 & 4) {
        this->collider.dim.pos.x -= 27;
        this->collider.dim.pos.z -= 27;
        this->collider.dim.radius = 63;
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    this->actionFunc(this, globalCtx);

    this->unk_204.unk_18.x = player->actor.posRot2.pos.x;
    this->unk_204.unk_18.y = player->actor.posRot2.pos.y;
    this->unk_204.unk_18.z = player->actor.posRot2.pos.z;

    if (this->unk_200 & 0x100) {
        this->unk_302.x = 5900;
        this->unk_200 |= 0x1000;
        func_80034A14(&this->actor, &this->unk_204, 0, 2);
    } else if (this->unk_200 & 0x200) {
        this->unk_302.x = 5900;
        this->unk_200 |= 0x1000;
        func_80034A14(&this->actor, &this->unk_204, 0, 4);
    }

    Math_SmoothStepToS(&this->unk_2FC, this->unk_302.x, 1, 1820, 0);
}

s32 EnDaikuKakariko_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                     void* thisx) {
    EnDaikuKakariko* this = THIS;
    Vec3s angle;

    switch (limbIndex) {
        case 8:
            angle = this->unk_204.unk_0E;
            Matrix_RotateX(-(angle.y * (M_PI / 32768.0f)), MTXMODE_APPLY);
            Matrix_RotateZ(-(angle.x * (M_PI / 32768.0f)), MTXMODE_APPLY);
            break;
        case 15:
            Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            angle = this->unk_204.unk_08;

            if (this->unk_200 & 0x1000) {
                osSyncPrintf("<%d>\n", this->unk_2FC.x);
                Matrix_RotateX((angle.y + this->unk_2FC.y) * (M_PI / 32768.0f), MTXMODE_APPLY);
                Matrix_RotateZ((angle.x + this->unk_2FC.x) * (M_PI / 32768.0f), MTXMODE_APPLY);
            } else {
                Matrix_RotateX(angle.y * (M_PI / 32768.0f), MTXMODE_APPLY);
                Matrix_RotateZ(angle.x * (M_PI / 32768.0f), MTXMODE_APPLY);
            }

            Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            break;
    }

    return 0;
}

void EnDaikuKakariko_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Gfx* D_809E5580[] = { 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880 };
    static Vec3f D_809E5590 = { 700.0f, 1100.0f, 0.0f };
    EnDaikuKakariko* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1104);

    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_809E5590, &this->actor.posRot2.pos);
        gSPDisplayList(POLY_OPA_DISP++, D_809E5580[this->actor.params & 3]);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1113);
}

void EnDaikuKakariko_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDaikuKakariko* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1124);

    func_80093D18(globalCtx->state.gfxCtx);

    if ((thisx->params & 3) == 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, 170, 10, 70, 255);
    } else if ((thisx->params & 3) == 1) {
        gDPSetEnvColor(POLY_OPA_DISP++, 170, 200, 255, 255);
    } else if ((thisx->params & 3) == 2) {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 230, 70, 255);
    } else if ((thisx->params & 3) == 3) {
        gDPSetEnvColor(POLY_OPA_DISP++, 200, 0, 150, 255);
    }

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnDaikuKakariko_OverrideLimbDraw, EnDaikuKakariko_PostLimbDraw, thisx);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1151);
}
