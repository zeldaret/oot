/*
 * File: z_en_ta.c
 * Overlay: ovl_En_Ta
 * Description: Talon
 */

#include "z_en_ta.h"
#include "vt.h"

#define FLAGS 0x00000009

#define THIS ((EnTa*)thisx)

void EnTa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B14634(EnTa* this);
void func_80B146F8(EnTa* this);
void func_80B14754(EnTa* this);
void func_80B14C18(EnTa* this);
void func_80B14CAC(EnTa* this, GlobalContext* globalCtx);
void func_80B14D98(EnTa* this);
void func_80B16504(EnTa* this);
void func_80B16608(EnTa* this);
void func_80B166CC(EnTa* this);
void func_80B16700(EnTa* this);
void func_80B167C0(EnTa* this);
void func_80B167FC(EnTa* this);
void func_80B16854(EnTa* this);
void func_80B16938(EnTa* this);

const ActorInit En_Ta_InitVars = {
    ACTOR_EN_TA,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_TA,
    sizeof(EnTa),
    (ActorFunc)EnTa_Init,
    (ActorFunc)EnTa_Destroy,
    (ActorFunc)EnTa_Update,
    (ActorFunc)EnTa_Draw,
};

static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000004, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 40, 0, { 0, 0, 0 } },
};

s32 D_80B16E7C[] = { 0x44898000, 0x447A0000, 0x00000000, };
s32 D_80B16E88[] = { 0x06007F80, 0x06006EC0, 0x060072C0, 0x00000000, 0x00000000, 0x00000000, };

extern AnimationHeader D_060017E8;
extern AnimationHeader D_06001C94;
extern SkeletonHeader D_0600B7B8;
extern AnimationHeader D_0600C48C;
extern AnimationHeader D_0600CD50;
extern AnimationHeader D_0600E3D8;

void func_80B13AA0(EnTa* this, EnTaActionFunc arg1, EnTaUnkFunc arg2) {
    this->unk_25C = arg1;
    this->unk_260 = arg2;
}

void func_80B13AAC(EnTa *this, GlobalContext *globalCtx) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 24);

    if (gSaveContext.eventInf[0] & 0x400) {
        if (gSaveContext.eventInf[0] & 0x100) {
            if (gSaveContext.itemGetInf[0] & 4) {
                this->actor.textId = 0x2088;
            } else {
                this->actor.textId = 0x2086;
            }
        } else {
            this->actor.textId = 0x2085;
        }
        gSaveContext.eventInf[0] &= ~0x100;
    } else if (faceReaction == 0) {
        if (gSaveContext.infTable[7] & 0x4000) {
            if (gSaveContext.itemGetInf[0] & 4) {
                this->actor.textId = 0x208B;
            } else {
                this->actor.textId = 0x207F;
            }
        } else {
            this->actor.textId = 0x207E;
        }
    } else {
        this->actor.textId = faceReaction;
    }
}

void EnTa_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnTa* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitSV(globalCtx2, &this->skelAnime, &D_0600B7B8, &D_06001C94, this->limbDrawTable, this->transitionDrawTable, 17);
    Collider_InitCylinder(globalCtx2, &this->collider);
    Collider_SetCylinder(globalCtx2, &this->collider, &this->actor, &sCylinderInit);

    this->actor.colChkInfo.mass = 255;
    this->unk_2E0 = 0;
    this->unk_2CE = 0;
    this->unk_2E2 = 0;
    this->unk_2B6 = 20;
    this->unk_2B0 = func_80B166CC;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->actor.velocity.y = -4.0f;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;

    switch (this->actor.params) {
        case 1:
            osSyncPrintf(VT_FGCOL(CYAN) " 追放タロン \n" VT_RST);
            if (gSaveContext.eventChkInf[6] & 0x800) {
                Actor_Kill(&this->actor);
            } else if (LINK_IS_CHILD) {
                Actor_Kill(&this->actor);
            } else if (gSaveContext.eventChkInf[6] & 0x400) {
                func_80B13AA0(this, func_80B14CAC, func_80B167C0);
                this->unk_2B4 = 0;
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001C94);
                this->unk_2E4 = &D_06001C94;
            } else {
                func_80B13AA0(this, func_80B14754, func_80B167FC);
                this->unk_2B4 = 2;
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600CD50);
                this->unk_2E4 = &D_0600CD50;
                this->actor.shape.unk_10 = 54.0f;
            }
            break;
        case 2:
            osSyncPrintf(VT_FGCOL(CYAN) " 出戻りタロン \n" VT_RST);
            if (!(gSaveContext.eventChkInf[6] & 0x800)) {
                Actor_Kill(&this->actor);
            } else if (gSaveContext.linkAge != 0) {
                Actor_Kill(&this->actor);
            } else if (globalCtx2->sceneNum == SCENE_MALON_STABLE && gSaveContext.nightFlag != 0) {
                Actor_Kill(&this->actor);
                osSyncPrintf(VT_FGCOL(CYAN) " 夜はいない \n" VT_RST);
            } else {
                func_80B13AA0(&this->actor, func_80B14D98, func_80B167C0);
                this->unk_2B4 = 0;
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001C94);
                this->unk_2E4 = &D_06001C94;
            }
            break;
        default:
            osSyncPrintf(VT_FGCOL(CYAN) " その他のタロン \n" VT_RST);
            if (globalCtx2->sceneNum == SCENE_SPOT15) {
                if (gSaveContext.eventChkInf[1] & 0x10) {
                    Actor_Kill(&this->actor);
                } else if (gSaveContext.eventChkInf[1] & 0x8) {
                    func_80B13AA0(this, func_80B14C18, func_80B167C0);
                    this->unk_2B4 = 0;
                    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001C94);
                    this->unk_2E4 = &D_06001C94;
                } else {
                    func_80B13AA0(this, func_80B14634, func_80B167FC);
                    this->unk_2B4 = 2;
                    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600CD50);
                    this->unk_2E4 = &D_0600CD50;
                    this->actor.shape.unk_10 = 54.0f;
                }
            } else if (globalCtx2->sceneNum == SCENE_SOUKO) {
                osSyncPrintf(VT_FGCOL(CYAN) " ロンロン牧場の倉庫 の タロン\n" VT_RST);
                if (!(gSaveContext.eventChkInf[1] & 0x10)) {
                    Actor_Kill(&this->actor);
                } else if (gSaveContext.linkAge == 0) {
                    Actor_Kill(&this->actor);
                } else {
                    if (gSaveContext.nightFlag == 0) {
                        this->actor.flags |= 0x10;
                        this->unk_2C4 = this->unk_2C6 = this->unk_2C8 = 7;
                        this->unk_2B8 = Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_NIW, this->actor.posRot.pos.x + 5.0f, this->actor.posRot.pos.y + 3.0f, this->actor.posRot.pos.z + 26.0f, 0, 0, 0, 0xD);
                        this->unk_2BC = Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_NIW, this->actor.posRot.pos.x - 20.0f, this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z - 30.0f, 0, 0, 0, 0xD);
                        this->unk_2C0 = Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_NIW, this->actor.posRot.pos.x + 20.0f, this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z - 30.0f, 0, 0, 0, 0xD);
                        func_80B13AAC(this, globalCtx2);

                        if (gSaveContext.eventInf[0] & 0x400) {
                            func_80B13AA0(this, func_80B16608, func_80B16938);
                            SkelAnime_ChangeAnim(&this->skelAnime, &D_0600C48C, 1.0f, SkelAnime_GetFrameCount(&D_0600C48C.genericHeader) - 1.0f, SkelAnime_GetFrameCount(&D_0600C48C.genericHeader), 2, 0.0f);
                            gSaveContext.eventInf[0] &= 0xFBFF;
                        } else {
                            func_80B13AA0(this, func_80B16504, func_80B16854);
                            this->unk_2B4 = 0;
                            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060017E8);
                            this->unk_2E4 = &D_060017E8;
                        }
                    } else {
                        func_80B13AA0(this, func_80B146F8, func_80B167FC);
                        this->unk_2B4 = 2;
                        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600CD50);
                        this->unk_2E4 = &D_0600CD50;
                        this->actor.shape.unk_10 = 54.0f;
                    }
                }
            } else {
                func_80B13AA0(this, func_80B14634, func_80B167FC);
                this->unk_2B4 = 2;
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600CD50);
                this->unk_2E4 = &D_0600CD50;
                this->actor.shape.unk_10 = 54.0f;
            }
            break;
    }
}

void func_80B14248(EnTa* this) {
    if (this->actor.shape.unk_10 > 36.0f) {
        this->actor.shape.unk_10 -= 0.8f;
    }
}

void EnTa_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnTa* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);

    if (this->actor.params != 1 && this->actor.params != 2 && globalCtx->sceneNum == SCENE_SOUKO) {
        gSaveContext.timer1State = 0;
    }

    if (this->unk_2E0 & 0x200) {
        func_800F5B58();
    }
}

s32 func_80B142F4(EnTa* this, GlobalContext *globalCtx, u16 textId) {
    if (func_8002F194(&this->actor, globalCtx)) {
        return true;
    }

    this->actor.textId = textId;

    if ((ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) <= 0x4300) && (this->actor.xzDistFromLink < 100.0f)) {
        this->unk_2E0 |= 1;
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
    return false;
}

void func_80B14398(EnTa* this, GlobalContext* globalCtx) {
    if (func_8002F334(this, globalCtx)) {
        func_80B13AA0(this, func_80B14754, func_80B167FC);
    }
}

void func_80B143D4(EnTa* this, GlobalContext* globalCtx) {
    if (func_8002F334(this, globalCtx)) {
        func_80B13AA0(this, func_80B146F8, func_80B167FC);
    }
}

void func_80B14410(EnTa* this) {
    if (LINK_IS_CHILD) {
        func_80B13AA0(this, func_80B14C18, func_80B167C0);
        gSaveContext.eventChkInf[1] |= 0x8;
    } else {
        func_80B13AA0(this, func_80B14CAC, func_80B167C0);
        gSaveContext.eventChkInf[6] |= 0x400;
    }
}

void func_80B1448C(EnTa* this, GlobalContext* globalCtx) {
    if (func_8002F334(this, globalCtx)) {
        func_80B14410(this);
    }
    func_80B14248(this);
    this->unk_2E0 |= 0x4;
}

void func_80B144D8(EnTa* this, GlobalContext* globalCtx) {
    if (func_8002F334(this, globalCtx)) {
        func_80B14410(this);
        this->unk_2B6 = 1;
        this->unk_2B0 = func_80B16700;
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
        this->unk_2B4 = 1;
        func_80B13AA0(this, func_80B1448C, func_80B167C0);
    }
    func_80B14248(this);
    this->unk_2E0 |= 4;
}

void func_80B14570(EnTa *this, GlobalContext* globalCtx) {
    this->unk_2E0 |= 4;

    if (this->unk_2CC == 0) {
        func_80B13AA0(this, func_80B144D8, func_80B167C0);
        this->unk_2CE = 3;
        this->unk_2CC = 60;
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600E3D8);
        this->unk_2E4 = &D_06001C94;
        Audio_PlayActorSound2(this, NA_SE_VO_TA_SURPRISE);
    }
}

void func_80B145F8(EnTa* this, GlobalContext* globalCtx) {
    if (func_8002F334(this, globalCtx)) {
        func_80B13AA0(this, func_80B14634, func_80B167FC);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14634.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B146F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1490C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1496C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B149F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14C18.s")

void func_80B14C60(EnTa *this, GlobalContext *globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        func_80B13AA0(this, func_80B14CAC, func_80B167C0);
    }
    this->unk_2E0 |= 1;
}

void func_80B14CAC(EnTa *this, GlobalContext* globalCtx) {
    if (gSaveContext.eventChkInf[1] & 0x100) {
        if (func_80B142F4(this, globalCtx, 0x5017)) {
            func_80B13AA0(this, func_80B14C60, func_80B167C0);
            gSaveContext.eventChkInf[6] |= 0x800;
        }
    } else if (func_80B142F4(this, globalCtx, 0x5016)) {
        func_80B13AA0(this, func_80B14C60, func_80B167C0);
    }
    func_80B14248(this);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14D98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B150AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B152D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15308.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B153D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B154FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1585C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15F54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B161C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B162E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1642C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16608.s")

void func_80B166CC(EnTa *this) {
    s16 temp_v0 = this->unk_2B6 - 1;

    if (temp_v0 != 0) {
        this->unk_2B6 = temp_v0;
    } else {
        this->unk_2B0 = func_80B16700;
    }
}

void func_80B16700(EnTa *this) {
    s16 temp2B6;
    s16 temp2B4;
    s16 phi_v0;

    temp2B6 = this->unk_2B6 - 1;
    if (temp2B6 != 0) {
        this->unk_2B6 = temp2B6;
    } else {
        temp2B4 = this->unk_2B4 + 1;
        phi_v0 = 3;
        if (temp2B4 >= phi_v0) {
            this->unk_2B4 = 0;
            if (this->unk_2CE > 0) {
                this->unk_2CE--;
                phi_v0 = 1;
            } else {
                phi_v0 = (s32) (Math_Rand_ZeroOne() * 60.0f) + 20;
            }
            this->unk_2B6 = phi_v0;
            this->unk_2B0 = func_80B166CC;
        } else {
            this->unk_2B4 = temp2B4;
            this->unk_2B6 = 1;
        }
    }
}

void func_80B167C0(EnTa *this) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, this->unk_2E4);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B167FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16938.s")

void EnTa_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnTa* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->unk_260(this);
    this->unk_25C(this, globalCtx);

    if (!(this->unk_2E0 & 4)) {
        this->unk_2B0(this);
    }

    if (this->unk_2E0 & 1) {
        func_80038290(globalCtx, &this->actor, &this->unk_2D4, &this->unk_2DA, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_2D4.x, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_2D4.y, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_2DA.x, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_2DA.y, 0, 6, 6200, 100);
    }
    
    this->unk_2E0 &= ~0x5;

    if (this->unk_2CC > 0) {
        this->unk_2CC--;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/EnTa_Draw.s")
