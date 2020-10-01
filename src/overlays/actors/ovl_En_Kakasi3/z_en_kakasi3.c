#include "z_en_kakasi3.h"
#include <vt.h>

#define FLAGS 0x02000009

#define THIS ((EnKakasi3*)thisx)

void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A911F0(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A90E28(EnKakasi3* this);
void func_80A90EBC(EnKakasi3* this, GlobalContext* globalCtx, s16 arg);
void func_80A911F0(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91284(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91348(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A915B8(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91620(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91760(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A917FC(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A9187C(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A918E4(EnKakasi3* this, GlobalContext* globalCtx);
void func_80A91A90(EnKakasi3* this, GlobalContext* globalCtx);

ColliderCylinderInit D_80A91D10 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060065B0;
extern AnimationHeader D_06000214;

const ActorInit En_Kakasi3_InitVars = {
    ACTOR_EN_KAKASI3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi3),
    (ActorFunc)EnKakasi3_Init,
    (ActorFunc)EnKakasi3_Destroy,
    (ActorFunc)EnKakasi3_Update,
    (ActorFunc)EnKakasi3_Draw,
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Destroy.s")
void EnKakasi3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Init.s")
void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    osSyncPrintf("\n\n");
    // Obonur
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ おーボヌール ☆☆☆☆☆ \n" VT_RST);
    this->actor.unk_1F = 6;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A91D10);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060065B0, &D_06000214, 0, 0, 0);
    this->actor.flags |= 0x400;
    this->rot = this->actor.posRot.rot;
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc = func_80A911F0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A90E28.s")
void func_80A90E28(EnKakasi3* thisx) {
    thisx->unk_1AE = 0;
    thisx->unk_1A4 = 0;
    thisx->skelAnime.animPlaybackSpeed = 0.0f;
    thisx->unk_1AA = thisx->unk_1AE;

    Math_SmoothDownscaleMaxF(&thisx->skelAnime.animCurrentFrame, 0.5f, 1.0f);
    Math_SmoothScaleMaxMinS(&thisx->actor.shape.rot.x, thisx->rot.x, 5, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&thisx->actor.shape.rot.y, thisx->rot.y, 5, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&thisx->actor.shape.rot.z, thisx->rot.z, 5, 0x2710, 0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A90EBC.s")
// void func_80A90EBC(EnKakasi3* this, GlobalContext* globalCtx, s16 arg) {
//     s16 currentFrame;
//     s16 phi_v0;

//     phi_v0 = globalCtx->msgCtx.unk_E410[0];
//     if (arg != 0) {
//         if (this->unk_1A2 == 0) {
//             this->unk_1A2 = (s16)Math_Rand_ZeroFloat(10.99f) + 30;
//             this->unk_1A6 = (s16)Math_Rand_ZeroFloat(4.99f);
//         }

//         this->unk_19A = (s16)Math_Rand_ZeroFloat(2.99f) + 5;
//         phi_v0 = this->unk_1A6;
//     }
//     switch (phi_v0) {
//         case 0:
//             this->unk_19A++;
//             if (this->unk_1A4 == 0) {
//                 this->unk_1A4 = 1;
//                 Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_ROLL);
//             }
//             break;
//         case 1:
//             this->unk_19A++;
//             this->unk_1B8 = 1.0f;
//             break;
//         case 2:
//             this->unk_19A++;
//             if (this->unk_1AE == 0) {
//                 this->unk_1AE = 5000;
//             }
//             break;
//         case 3:
//             this->unk_19A++;
//             if (this->unk_1AA == 0) {
//                 this->unk_1AA = 5000;
//             }
//             break;
//         case 4:
//             this->unk_19A++;
//             this->unk_1B8 = 2.0f;
//             break;
//     }

//     if (this->unk_19A > 8) {
//         this->unk_19A = 8;
//     }

//     if (this->unk_19A != 0) {
//         this->actor.gravity = -1.0f;
//         if (this->unk_19A == 8 && (this->actor.bgCheckFlags & 1)) {
//             this->actor.velocity.y = 3.0f;
//             Audio_PlayActorSound2(&this->actor, NA_SE_IT_KAKASHI_JUMP);
//         }
//         Math_SmoothScaleMaxF(&this->skelAnime.animPlaybackSpeed, this->unk_1B8, 0.1, 0.2);
//         Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->unk_1AA, 5, 1000, 0);
//         Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->unk_1AE, 5, 1000, 0);

//         if (this->unk_1AA != 0 && fabsf(this->actor.shape.rot.x - this->unk_1AA) < 50.0f) {
//             this->unk_1AA *= -1.0f;
//         }
//         if (this->unk_1AE != 0 && fabsf(this->actor.shape.rot.z - this->unk_1AE) < 50.0f) {
//             this->unk_1AE *= -1.0f;
//         }

//         if (this->unk_1A4 != 0) {
//             this->actor.shape.rot.y += 4096;
//             if (this->actor.shape.rot.y == 0) {
//                 this->unk_1A4 = 0;
//             }
//         }
//         currentFrame = this->skelAnime.animCurrentFrame;
//         if (currentFrame == 11 || currentFrame == 17) {
//             Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_SWING);
//         }
//         SkelAnime_FrameUpdateMatrix(&this->skelAnime);
//     }
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A911F0.s")
void func_80A911F0(EnKakasi3* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000214.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000214, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = func_80A91284;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91284.s")
void func_80A91284(EnKakasi3* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    this->actor.textId = 0x40A1;
    this->unk_196 = 6;
    this->unk_19A = 0;

    if (LINK_IS_CHILD) {
        this->unk_194 = 0;
        if (gSaveContext.unk_12C5) {
            this->actor.textId = 0x40A0;
            this->unk_196 = 5;
            this->unk_1A8 = 1;
        }
    } else {
        this->unk_194 = 1;
        if (gSaveContext.unk_12C5) {
            if (this->unk_195) {
                this->actor.textId = 0x40A2;
            } else {
                this->actor.textId = 0x40A3;
            }
        }
    }
    this->actionFunc = func_80A91348;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91348.s")
void func_80A91348(EnKakasi3* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 angleTowardsLink;
    s16 absAngleTowardsLink;

    func_80A90E28(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->camId = -1;
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        if (this->unk_194 == 0) {
            if (this->unk_1A8 == 0) {
                this->actionFunc = func_80A91284;
            } else {
                this->actionFunc = func_80A91760;
            }
        } else {
            this->actionFunc = func_80A91284;
        }
        return;
    }

    angleTowardsLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (!(this->actor.xzDistFromLink > 120.0f)) {
        absAngleTowardsLink = ABS(angleTowardsLink);

        if (absAngleTowardsLink < 17152) {
            if (this->unk_194 == 0) {

                if ((s32)(player->stateFlags2) << 7 < 0) {

                    this->camId = func_800800F8(globalCtx, 0x8D4, -0x63, &this->actor, 0);
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->unk_196 = 5;
                    this->unk_1B8 = 0.0f;
                    func_8010B680(globalCtx, 0x40A4, NULL);
                    player->stateFlags2 |= 0x800000;
                    this->actionFunc = func_80A915B8;
                    return;
                } else if (this->actor.xzDistFromLink < 80.0f) {
                    player->stateFlags2 |= 0x800000;
                }
            } else if ((gSaveContext.unk_12C5 != 0) && (this->unk_195 == 0)) {

                if ((s32)(player->stateFlags2) << 7 < 0) {

                    this->camId = func_800800F8(globalCtx, 0x8D4, -0x63, &this->actor, 0);
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->unk_196 = 5;
                    this->unk_1B8 = 0.0f;
                    func_8010B680(globalCtx, 0x40A8, NULL);
                    player->stateFlags2 |= 0x800000;
                    this->actionFunc = func_80A9187C;
                    return;
                } else if (this->actor.xzDistFromLink < 80.0f) {
                    player->stateFlags2 |= 0x800000;
                }
            }
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A915B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A917FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A9187C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A918E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91A90.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Update.s")
void EnKakasi3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;
    s32 pad;
    s32 i;

    if (BREG(2) != 0) {
        osSyncPrintf("\n\n");
        // flag!
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n" VT_RST, gSaveContext.unk_12C5);
    }

    this->unk_198 += 1;
    this->actor.posRot.rot = this->actor.shape.rot;
    for (i = 0; i < 4; i++) {
        if (this->unk_19C[i] != 0) {
            this->unk_19C[i]--;
        }
    }

    Actor_SetHeight(&this->actor, 60.0f);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 28);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Draw.s")
void EnKakasi3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, 0, 0,
                     &this->actor);
}
