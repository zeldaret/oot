/*
 * File: z_en_horse_normal.c
 * Overlay: ovl_En_Horse_Normal
 * Description: Non-rideable horses (Lon Lon Ranch and Stables)
 */

#include "z_en_horse_normal.h"

#define FLAGS 0x00000000

#define THIS ((EnHorseNormal*)thisx)

typedef void (*EnHorseNormalUnkFunc)(EnHorseNormal* this, GlobalContext* globalCtx);

void EnHorseNormal_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseNormal_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseNormal_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseNormal_Draw(Actor* thisx, GlobalContext* globalCtx);

// TODO: Remove later if unnecessary
void func_800A63CC(Actor* thisx, GlobalContext* globalCtx, PSkinAwb* skin, s32, s32, s32, s32, s32);

void func_80A6B91C(EnHorseNormal* this, GlobalContext* globalCtx);
void func_80A6BC48(EnHorseNormal* this);
void func_80A6C4CC(EnHorseNormal* this);
void func_80A6C6B0(EnHorseNormal* this);
void func_80A6CAFC(Actor* thisx, GlobalContext* globalCtx, ColliderJntSphItem* colliderSphereItem);

f32 func_80A6B30C(EnHorseNormal* this);
void func_80A6B9D0(EnHorseNormal* this, GlobalContext* globalCtx);
void func_80A6BE6C(EnHorseNormal* this, GlobalContext* globalCtx);
void func_80A6C760(EnHorseNormal* this, GlobalContext* globalCtx);
void func_80A6C8E0(EnHorseNormal* this, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Normal_InitVars = {
    ACTOR_EN_HORSE_NORMAL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_NORMAL,
    sizeof(EnHorseNormal),
    (ActorFunc)EnHorseNormal_Init,
    (ActorFunc)EnHorseNormal_Destroy,
    (ActorFunc)EnHorseNormal_Update,
    (ActorFunc)EnHorseNormal_Draw,
};
*/

extern AnimationHeader* D_80A6D370[];
extern ColliderCylinderInit D_80A6D394;
extern ColliderCylinderInit D_80A6D3C0;
extern ColliderJntSphInit D_80A6D410;
extern CollisionCheckInfoInit D_80A6D420;
extern s32 D_80A6D4C0[];
extern f32 D_80A6D4C8[];
extern InitChainEntry D_80A6D4EC[];
extern EnHorseNormalUnkFunc D_80A6D534[];
extern Vec3f D_80A6D548;

extern AnimationHeader D_06004580;
extern SkeletonHeader D_06009FAC;

void func_80A6B250(EnHorseNormal* this) {
    if (D_80A6D4C0[this->unk_200] < this->skin.skelAnime.animCurrentFrame &&
        ((this->unk_200 != 0) || !(D_80A6D4C0[1] < this->skin.skelAnime.animCurrentFrame))) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_WALK, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        this->unk_200 += 1;
        if (this->unk_200 >= 2) {
            this->unk_200 = 0;
        }
    }
}

f32 func_80A6B30C(EnHorseNormal* this) {
    f32 result;

    if (this->unk_150 == 4) {
        result = D_80A6D4C8[this->unk_150] * this->actor.speedXZ * 0.5f;
    } else if (this->unk_150 == 5) {
        result = D_80A6D4C8[this->unk_150] * this->actor.speedXZ * 0.33333334f;
    } else if (this->unk_150 == 6) {
        result = D_80A6D4C8[this->unk_150] * this->actor.speedXZ * 0.2f;
    } else {
        result = D_80A6D4C8[this->unk_150];
    }

    return result;
}

void EnHorseNormal_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseNormal* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, D_80A6D4EC);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Squiggly, 20.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    this->unk_14C = 0;
    this->unk_150 = 0;
    Collider_InitCylinder(globalCtx, &this->unk_228);
    Collider_SetCylinder(globalCtx, &this->unk_228, &this->actor, &D_80A6D394);
    Collider_InitJntSph(globalCtx, &this->unk_274);
    Collider_SetJntSph(globalCtx, &this->unk_274, &this->actor, &D_80A6D410, &this->unk_294);
    Collider_InitCylinder(globalCtx, &this->unk_2D4);
    Collider_SetCylinder(globalCtx, &this->unk_2D4, &this->actor, &D_80A6D3C0);
    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A6D420);
    if (globalCtx->sceneNum == SCENE_SPOT20) {
        if (this->actor.posRot.rot.z == 0 || gSaveContext.nightFlag) {
            Actor_Kill(&this->actor);
            return;
        }
        if (LINK_IS_CHILD) {
            if (Flags_GetEventChkInf(0x14)) {
                if (this->actor.posRot.rot.z != 3) {
                    Actor_Kill(&this->actor);
                    return;
                }
            } else if (this->actor.posRot.rot.z != 1) {
                Actor_Kill(&this->actor);
                return;
            }
        } else {
            if (Flags_GetEventChkInf(0x18) || (DREG(1) != 0)) {
                if (this->actor.posRot.rot.z != 7) {
                    Actor_Kill(&this->actor);
                    return;
                }
            } else if (this->actor.posRot.rot.z != 5) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        this->actor.shape.rot.z = 0;
        this->actor.initPosRot.rot.z = this->actor.posRot.rot.z = this->actor.shape.rot.z;
        func_800A663C(globalCtx, &this->skin, &D_06009FAC, &D_06004580);
        SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
        if ((this->actor.posRot.pos.x == -730.0f && this->actor.posRot.pos.y == 0.0f &&
             this->actor.posRot.pos.z == -1100.0f) ||
            (this->actor.posRot.pos.x == 880.0f && this->actor.posRot.pos.y == 0.0f &&
             this->actor.posRot.pos.z == -1170.0f)) {
            func_80A6C6B0(this);
            return;
        }
    } else if (globalCtx->sceneNum == SCENE_MALON_STABLE) {
        if (!gSaveContext.nightFlag) {
            Actor_Kill(&this->actor);
            return;
        } else {
            func_800A663C(globalCtx, &this->skin, &D_06009FAC, &D_06004580);
            SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
            func_80A6C6B0(this);
            return;
        }
    } else if (globalCtx->sceneNum == SCENE_SPOT12) {
        if (this->actor.posRot.pos.x == 3707.0f && this->actor.posRot.pos.y == 1413.0f &&
            this->actor.posRot.pos.z == -665.0f) {
            func_800A663C(globalCtx, &this->skin, &D_06009FAC, &D_06004580);
            SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
            func_80A6C4CC(this);
            return;
        }
        func_800A663C(globalCtx, &this->skin, &D_06009FAC, &D_06004580);
        SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
    } else {
        func_800A663C(globalCtx, &this->skin, &D_06009FAC, &D_06004580);
        SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
    }
    if ((this->actor.params & 0xF0) == 0x10 && (this->actor.params & 0xF) != 0xF) {
        func_80A6B91C(this, globalCtx);
    } else {
        func_80A6BC48(this);
    }
}

void EnHorseNormal_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseNormal* this = THIS;

    func_800A6888(globalCtx, &this->skin);
    Collider_DestroyCylinder(globalCtx, &this->unk_228);
    Collider_DestroyCylinder(globalCtx, &this->unk_2D4);
    Collider_DestroyJntSph(globalCtx, &this->unk_274);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6B91C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6B9D0.s")

void func_80A6BBAC(EnHorseNormal* this) {
    this->unk_14C = 0;
    this->unk_150 += 1;

    if (this->unk_150 >= 9) {
        this->unk_150 = 0;
    }

    SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
}

void func_80A6BC00(EnHorseNormal* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;

    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        func_80A6BBAC(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BC48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BCEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6BE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C4CC.s")

void func_80A6C570(EnHorseNormal* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        f32 rand = Math_Rand_ZeroOne();

        if (rand < 0.4f) {
            this->unk_150 = 0;
        } else if (rand < 0.8f) {
            this->unk_150 = 1;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            this->unk_150 = 3;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f,
                             SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C6B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6C8E0.s")

void EnHorseNormal_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseNormal* this = THIS;
    s32 pad;

    D_80A6D534[this->unk_14C](this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 35.0f, 100.0f, 0x1D);
    if (globalCtx->sceneNum == SCENE_SPOT20 && this->actor.posRot.pos.z < -2400.0f) {
        this->actor.posRot.pos.z = -2400.0f;
    }
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    this->unk_204 = this->actor.projectedPos;
    this->unk_204.y += 120.0f;
    Collider_CylinderUpdate(&this->actor, &this->unk_228);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_228.base);
    if (this->actor.speedXZ == 0.0f) {
        this->actor.colChkInfo.mass = 0xFF;
    } else {
        this->actor.colChkInfo.mass = 0xFE;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Normal/func_80A6CAFC.s")

void func_80A6CC88(GlobalContext* globalCtx, EnHorseNormal* this, Vec3f* arg2) {
    f32 animCurrentFrame = this->skin.skelAnime.animCurrentFrame;
    f32 wDest;

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, arg2, &this->unk_1E8, &wDest);
    this->unk_1F4 = this->unk_1E8;
    this->unk_1F4.y += 120.0f;

    if (this->unk_150 == 0 && animCurrentFrame > 28.0f && !(this->unk_1E4 & 8)) {
        this->unk_1E4 |= 8;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_SANDDUST, &this->unk_1E8, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (this->unk_150 == 3 && animCurrentFrame > 25.0f && !(this->unk_1E4 & 0x10)) {
        this->unk_1E4 |= 0x10;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->unk_1E8, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (this->unk_150 == 3 && this->unk_1E4 & 0x20) {
        this->unk_1E4 &= ~0x20;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_1F4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (this->unk_150 == 1 && this->unk_1E4 & 0x20) {
        this->unk_1E4 &= ~0x20;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_1F4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void EnHorseNormal_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseNormal* this = THIS;
    Mtx* mtx2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_horse_normal.c", 2224);

    if (globalCtx->sceneNum != SCENE_SPOT20 || globalCtx->sceneNum != SCENE_MALON_STABLE) {
        func_80A6C8E0(this, globalCtx);
    }
    func_80093D18(globalCtx->state.gfxCtx);
    func_800A6330(&this->actor, globalCtx, &this->skin, func_80A6CAFC, 1);
    if (this->unk_14C == 3) {
        MtxF skinMtx;
        Mtx* mtx1;
        Vec3f sp64 = D_80A6D548;
        s16 sp62;
        f32 distFromGround = this->actor.posRot.pos.y - this->actor.groundY;
        f32 temp_f0_4;

        if (globalCtx->sceneNum == SCENE_MALON_STABLE) {
            if (this->actor.posRot.pos.x == 355.0f && this->actor.posRot.pos.y == 0.0f &&
                this->actor.posRot.pos.z == -245.0f) {
                sp64.x = 235.0f;
                sp64.y = 0.0f;
                sp64.z = 100.0f;
                sp62 = 0x7FFF;
            } else if (this->actor.posRot.pos.x == 238.0f && this->actor.posRot.pos.y == 0.0f &&
                       this->actor.posRot.pos.z == -245.0f) {
                sp64.x = 478.0f;
                sp64.y = 0.0f;
                sp64.z = 100.0f;
                sp62 = 0x7FFF;
            }
        } else if (globalCtx->sceneNum == SCENE_SPOT20) {
            if (this->actor.posRot.pos.x == -730.0f && this->actor.posRot.pos.y == 0.0f &&
                this->actor.posRot.pos.z == -1100.0f) {
                sp64.x = 780.0f;
                sp64.y = 0.0f;
                sp64.z = -80.0f;
                sp62 = 0;
            } else if (this->actor.posRot.pos.x == 880.0f && this->actor.posRot.pos.y == 0.0f &&
                       this->actor.posRot.pos.z == -1170.0f) {
                sp64.x = -1000.0f;
                sp64.y = 0.0f;
                sp64.z = -70.0f;
                sp62 = 0;
            }
        }
        func_80A6CC88(globalCtx, this, &sp64);
        SkinMatrix_SetScaleRotateYRPTranslate(&skinMtx, this->actor.scale.x, this->actor.scale.y, this->actor.scale.z,
                                              this->actor.shape.rot.x, sp62, this->actor.shape.rot.z, sp64.x,
                                              (this->actor.shape.unk_08 * this->actor.scale.y) + sp64.y, sp64.z);
        mtx1 = SkinMatrix_MtxFToNewMtx(globalCtx->state.gfxCtx, &skinMtx);
        if (mtx1 == NULL) {
            return;
        } else {
            gSPMatrix(oGfxCtx->polyOpa.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPMatrix(oGfxCtx->polyOpa.p++, mtx1, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            func_800A63CC(&this->actor, globalCtx, &this->skin, 0, 0, 1, 0, 3);
            this->unk_2D4.dim.pos.x = sp64.x;
            this->unk_2D4.dim.pos.y = sp64.y;
            this->unk_2D4.dim.pos.z = sp64.z;
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_2D4.base);
            func_80094044(globalCtx->state.gfxCtx);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0, 0, 0, 255);
            Matrix_Translate(sp64.x, sp64.y, sp64.z, 0);
            temp_f0_4 = (1.0f - (distFromGround * 0.01f)) * this->actor.shape.unk_10;
            Matrix_Scale(this->actor.scale.x * temp_f0_4, 1.0f, this->actor.scale.z * temp_f0_4, 1);
            Matrix_RotateY(sp62 * (2.0f * M_PI / 0x10000), 1);
            mtx2 = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_horse_normal.c", 2329);
            if (mtx2 != NULL) {
                gSPMatrix(oGfxCtx->polyXlu.p++, mtx2, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_04049AD0);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_horse_normal.c", 2339);
}
