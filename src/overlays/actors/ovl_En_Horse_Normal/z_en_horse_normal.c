/*
 * File: z_en_horse_normal.c
 * Overlay: ovl_En_Horse_Normal
 * Description: Non-rideable horses (Lon Lon Ranch and Stable)
 */

#include "z_en_horse_normal.h"

#define FLAGS 0x00000000

#define THIS ((EnHorseNormal*)thisx)

typedef void (*EnHorseNormalUnkFunc)(EnHorseNormal* this, GlobalContext* globalCtx);

void EnHorseNormal_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseNormal_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseNormal_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseNormal_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A6B91C(EnHorseNormal* this, GlobalContext* globalCtx);
void func_80A6BC48(EnHorseNormal* this);
void func_80A6BCEC(EnHorseNormal* this);
void func_80A6C4CC(EnHorseNormal* this);
void func_80A6C6B0(EnHorseNormal* this);

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
extern s32 D_80A6D4F4[];
extern s32 D_80A6D510[];
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
        result = D_80A6D4C8[this->unk_150] * this->actor.speedXZ * (1 / 2.0f);
    } else if (this->unk_150 == 5) {
        result = D_80A6D4C8[this->unk_150] * this->actor.speedXZ * (1 / 3.0f);
    } else if (this->unk_150 == 6) {
        result = D_80A6D4C8[this->unk_150] * this->actor.speedXZ * (1 / 5.0f);
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
        } else if (Flags_GetEventChkInf(0x18) || (DREG(1) != 0)) {
            if (this->actor.posRot.rot.z != 7) {
                Actor_Kill(&this->actor);
                return;
            }
        } else if (this->actor.posRot.rot.z != 5) {
            Actor_Kill(&this->actor);
            return;
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
        } else {
            func_800A663C(globalCtx, &this->skin, &D_06009FAC, &D_06004580);
            SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A6D370[this->unk_150]);
            func_80A6C6B0(this);
        }
        return;
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

void func_80A6B91C(EnHorseNormal* this, GlobalContext* globalCtx) {
    this->actor.flags |= 0x10;
    this->unk_14C = 4;
    this->unk_150 = 6;
    this->waypoint = 0;
    this->actor.speedXZ = 7.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
}

void func_80A6B9D0(EnHorseNormal* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xF];
    Vec3s* pointPos = SEGMENTED_TO_VIRTUAL(path->points);
    f32 dx;
    f32 dz;
    s32 pad;

    pointPos += this->waypoint;
    dx = pointPos->x - this->actor.posRot.pos.x;
    dz = pointPos->z - this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_atan2f(dx, dz) * 10430.378f, 10, 2000, 1);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (SQ(dx) + SQ(dz) < 600.0f) {
        this->waypoint += 1;
        if (this->waypoint >= path->count) {
            this->waypoint = 0;
        }
    }
    this->skin.skelAnime.animPlaybackSpeed = func_80A6B30C(this);
    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
        func_80A6BCEC(this);
    }
}

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

void func_80A6BC48(EnHorseNormal* this) {
    this->unk_14C = 1;
    this->unk_150 = 0;
    this->unk_21C = 0;
    this->unk_21E = 0;
    this->actor.speedXZ = 0.0f;
    this->unk_218 = 0.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
}

void func_80A6BCEC(EnHorseNormal* this) {
    if (this->unk_150 == 5) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (this->unk_150 == 6) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_80A6BD7C(EnHorseNormal* this) {
    f32 frame = this->skin.skelAnime.animCurrentFrame;

    if (this->unk_150 == 0 && frame > 28.0f && !(this->unk_1E4 & 1)) {
        this->unk_1E4 |= 1;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_SANDDUST, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (this->unk_150 == 3 && frame > 25.0f && !(this->unk_1E4 & 2)) {
        this->unk_1E4 |= 2;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_80A6BE6C(EnHorseNormal* this, GlobalContext* globalCtx) {
    s32 phi_t0 = this->unk_150;
    s32 pad;

    switch (D_80A6D510[this->unk_150]) {
        case 0:
            phi_t0 = this->unk_150;
            func_80A6BD7C(this);
            this->actor.speedXZ = 0.0f;
            this->unk_218 = 0.0f;
            break;
        case 1:
            if (Math_Rand_ZeroOne() < 0.1f) {
                this->unk_218 = 2.0f * Math_Rand_ZeroOne() - 1.0f;
            }
            this->actor.speedXZ += this->unk_218;
            if (this->actor.speedXZ <= 0.0f) {
                this->actor.speedXZ = 0.0f;
                this->unk_218 = 0.0f;
                phi_t0 = 0;
            } else if (this->actor.speedXZ < 3.0f) {
                func_80A6B250(this);
                phi_t0 = 4;
            } else if (this->actor.speedXZ < 6.0f) {
                phi_t0 = 5;
            } else if (this->actor.speedXZ < 8.0f) {
                phi_t0 = 6;
            } else {
                this->actor.speedXZ = 8.0f;
                phi_t0 = 6;
            }
            if (Math_Rand_ZeroOne() < 0.1f || (this->unk_21E == 0 && (this->actor.bgCheckFlags & 8 || this->unk_228.base.maskA & 2 || this->unk_274.base.maskA & 2))) {
                this->unk_21E += (Math_Rand_ZeroOne() * 30.0f) - 15.0f;
                if (this->unk_21E > 50) {
                    this->unk_21E = 50;
                } else if (this->unk_21E < -50) {
                    this->unk_21E = -50;
                }
            }
            this->unk_21C += this->unk_21E;
            if (this->unk_21C < -300) {
                this->unk_21C = -300;
            } else if (this->unk_21C > 300) {
                this->unk_21C = 300;
            } else if (Math_Rand_ZeroOne() < 0.25f && fabsf(this->unk_21C) < 100.0f) {
                this->unk_21C = 0;
                this->unk_21E = 0;
            }
            this->actor.posRot.rot.y += this->unk_21C;
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            break;
        case 2:
        case 3:
            break;
    }

    if (phi_t0 != this->unk_150 || SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        if (phi_t0 != this->unk_150) {
            this->unk_150 = phi_t0;
            this->unk_1E4 &= ~1;
            this->unk_1E4 &= ~2;
            if (phi_t0 == 1) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else if (phi_t0 == 3) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else {
                func_80A6BCEC(this);
            }
            SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, -3.0f);
            return;
        }
        switch (D_80A6D510[this->unk_150]) {
            case 0:
                if (Math_Rand_ZeroOne() < 0.25f) {
                    this->unk_218 = 1.0f;
                    phi_t0 = 4;
                } else {
                    phi_t0 = D_80A6D4F4[(s32)(Math_Rand_ZeroOne() * 2)];
                    this->actor.speedXZ = 0.0f;
                    this->unk_218 = 0.0f;
                }
                break;
            case 1:
            case 2:
            case 3:
                break;
        }

        this->unk_1E4 &= ~1;
        this->unk_1E4 &= ~2;
        if (phi_t0 == 1) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else if (phi_t0 == 3) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            func_80A6BCEC(this);
        }
        if (phi_t0 != this->unk_150) {
            this->unk_150 = phi_t0;
            SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, -3.0f);
        } else {
            SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
        }
    }
}

void func_80A6C4CC(EnHorseNormal* this) {
    this->unk_14C = 2;
    this->unk_150 = 0;
    this->unk_21C = 0;
    this->unk_21E = 0;
    this->actor.speedXZ = 0.0f;
    this->unk_218 = 0.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
}

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

void func_80A6C6B0(EnHorseNormal* this) {
    this->unk_14C = 3;
    this->unk_150 = 0;
    this->unk_21C = 0;
    this->unk_21E = 0;
    this->actor.flags |= 0x30;
    this->actor.speedXZ = 0.0f;
    this->unk_218 = 0.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);
}

void func_80A6C760(EnHorseNormal* this, GlobalContext* globalCtx) {
    func_80A6BD7C(this);

    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        f32 rand = Math_Rand_ZeroOne();

        if (rand < 0.4f) {
            this->unk_150 = 0;
        } else if (rand < 0.8f) {
            this->unk_150 = 1;
            this->unk_1E4 |= 0x20;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            this->unk_150 = 3;
            this->unk_1E4 |= 0x20;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_204, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A6D370[this->unk_150], func_80A6B30C(this), 0.0f, SkelAnime_GetFrameCount(&D_80A6D370[this->unk_150]->genericHeader), 2, 0.0f);

        this->unk_1E4 &= ~1;
        this->unk_1E4 &= ~2;
        this->unk_1E4 &= ~8;
        this->unk_1E4 &= ~0x10;
    }
}

void func_80A6C8E0(EnHorseNormal* this, GlobalContext* globalCtx) {
    s32 pad;
    CollisionPoly* sp38;
    s32 pad2;
    Vec3f sp28;
    s32 sp24;

    sp28.x = (Math_Sins(this->actor.shape.rot.y) * 30.0f) + this->actor.posRot.pos.x;
    sp28.y = this->actor.posRot.pos.y + 60.0f;
    sp28.z = (Math_Coss(this->actor.shape.rot.y) * 30.0f) + this->actor.posRot.pos.z;
    this->unk_220 = func_8003C940(&globalCtx->colCtx, &sp38, &sp24, &sp28);
    this->actor.shape.rot.x = Math_atan2f(this->actor.posRot.pos.y - this->unk_220, 30.0f) * 10430.378f;
}

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

void func_80A6CAFC(Actor* thisx, GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    Vec3f sp4C;
    Vec3f sp40;
    EnHorseNormal* this = THIS;
    s32 i;

    for (i = 0; i < this->unk_274.count; i++) {
        sp4C.x = this->unk_274.list[i].dim.modelSphere.center.x;
        sp4C.y = this->unk_274.list[i].dim.modelSphere.center.y;
        sp4C.z = this->unk_274.list[i].dim.modelSphere.center.z;
        func_800A6408(collider, this->unk_274.list[i].dim.joint, &sp4C, &sp40);
        this->unk_274.list[i].dim.worldSphere.center.x = sp40.x;
        this->unk_274.list[i].dim.worldSphere.center.y = sp40.y;
        this->unk_274.list[i].dim.worldSphere.center.z = sp40.z;
        this->unk_274.list[i].dim.worldSphere.radius = this->unk_274.list[i].dim.modelSphere.radius * this->unk_274.list[i].dim.scale;
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_274.base);
}

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
