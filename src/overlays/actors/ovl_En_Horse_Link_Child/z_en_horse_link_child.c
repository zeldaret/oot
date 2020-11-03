/*
 * File: z_en_horse_link_child.c
 * Overlay: ovl_En_Horse_Link_Child
 * Description: Young Epona
 */

#include "z_en_horse_link_child.h"

#define FLAGS 0x02000010

#define THIS ((EnHorseLinkChild*)thisx)

void EnHorseLinkChild_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseLinkChild_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseLinkChild_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseLinkChild_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A69B7C(EnHorseLinkChild* this);
void func_80A69EC0(EnHorseLinkChild* this);
void func_80A6A4DC(EnHorseLinkChild* this);
void func_80A6A724(EnHorseLinkChild* this);

const ActorInit En_Horse_Link_Child_InitVars = {
    ACTOR_EN_HORSE_LINK_CHILD,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_LINK_CHILD,
    sizeof(EnHorseLinkChild),
    (ActorFunc)EnHorseLinkChild_Init,
    (ActorFunc)EnHorseLinkChild_Destroy,
    (ActorFunc)EnHorseLinkChild_Update,
    (ActorFunc)EnHorseLinkChild_Draw,
};

static AnimationHeader* sAnimations[] = { 0x060043E4, 0x06004B08, 0x060053F0, 0x0600360C, 0x06002F98 };
static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 100, 0, { 0, 0, 0 } }
};
static ColliderJntSphItemInit sJntSphItemInit[] = {
    { { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
      { 0xD, { { 0, 0, 0 }, 10 }, 100 } }
};
static ColliderJntSphInit sJntSphInit = { { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x12, COLSHAPE_JNTSPH },
                                          ARRAY_COUNT(sJntSphItemInit),
                                          sJntSphItemInit };
static CollisionCheckInfoInit sColCheckInfoInit = { 10, 35, 100, 0xFE };

extern AnimationHeader D_06002F98;
extern SkeletonHeader D_06007B20;

void func_80A693D0(EnHorseLinkChild* this) {
    static s32 D_80A6AF5C[] = { 1, 19 };

    if ((D_80A6AF5C[this->unk_1F0] < this->skin.skelAnime.animCurrentFrame) &&
        !((this->unk_1F0 == 0) && (D_80A6AF5C[1] < this->skin.skelAnime.animCurrentFrame))) {
        Audio_PlaySoundGeneral(NA_SE_EV_KID_HORSE_WALK, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        this->unk_1F0++;
        if (this->unk_1F0 >= ARRAY_COUNT(D_80A6AF5C)) {
            this->unk_1F0 = 0;
        }
    }
}

void func_80A6948C(EnHorseLinkChild* this) {
    if (this->animationIdx == 2) {
        func_80A693D0(this);
    } else if (this->skin.skelAnime.animCurrentFrame == 0.0f) {
        if ((this->animationIdx == 3) || (this->animationIdx == 4)) {
            Audio_PlaySoundGeneral(NA_SE_EV_KID_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        } else if (this->animationIdx == 1) {
            if (Math_Rand_ZeroOne() > 0.5f) {
                Audio_PlaySoundGeneral(NA_SE_EV_KID_HORSE_GROAN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
            } else {
                Audio_PlaySoundGeneral(NA_SE_EV_KID_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
            }
        }
    }
}

static f32 D_80A6AF64[] = { 1.0f, 1.0f, 1.5f, 1.5f, 1.5f };

f32 func_80A695A4(EnHorseLinkChild* this) {
    f32 result;

    if (this->animationIdx == 2) {
        result = D_80A6AF64[this->animationIdx] * this->actor.speedXZ * (1.0f / 2.0f);
    } else if (this->animationIdx == 3) {
        result = D_80A6AF64[this->animationIdx] * this->actor.speedXZ * (1.0f / 3.0f);
    } else if (this->animationIdx == 4) {
        result = D_80A6AF64[this->animationIdx] * this->actor.speedXZ * (1.0f / 5.0f);
    } else {
        result = D_80A6AF64[this->animationIdx];
    }

    return result;
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1200, ICHAIN_STOP),
};

void EnHorseLinkChild_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseLinkChild* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.005f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Squiggly, 20.0f);
    this->actor.speedXZ = 0.0f;
    this->action = 1;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    func_800A663C(globalCtx, &this->skin, &D_06007B20, &D_06002F98);
    this->animationIdx = 0;
    SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, sAnimations[0]);
    Collider_InitCylinder(globalCtx, &this->bodyCollider);
    Collider_SetCylinder_Set3(globalCtx, &this->bodyCollider, &this->actor, &sCylinderInit);
    Collider_InitJntSph(globalCtx, &this->headCollider);
    Collider_SetJntSph(globalCtx, &this->headCollider, &this->actor, &sJntSphInit, this->headColliderItems);
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColCheckInfoInit);
    this->unk_1F0 = 0;
    this->unk_1EC = 0;

    if (gSaveContext.sceneSetupIndex > 3) {
        func_80A69EC0(this);
    } else if (globalCtx->sceneNum == SCENE_SPOT20) {
        if (!Flags_GetEventChkInf(0x14)) {
            Actor_Kill(&this->actor);
            return;
        }
        this->unk_2A0 = gSaveContext.eventChkInf[1] & 0x40;
        func_80A69EC0(this);
    } else {
        func_80A69EC0(this);
    }

    this->actor.initPosRot.rot.z = this->actor.posRot.rot.z = this->actor.shape.rot.z = 0;
}

void EnHorseLinkChild_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseLinkChild* this = THIS;

    func_800A6888(globalCtx, &this->skin);
    Collider_DestroyCylinder(globalCtx, &this->bodyCollider);
    Collider_DestroyJntSph(globalCtx, &this->headCollider);
}

void func_80A6988C(EnHorseLinkChild* this) {
    this->action = 0;
    this->animationIdx++;
    if (this->animationIdx >= ARRAY_COUNT(sAnimations)) {
        this->animationIdx = 0;
    }

    SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, sAnimations[this->animationIdx]);
    this->skin.skelAnime.animPlaybackSpeed = func_80A695A4(this);
}

void func_80A698F4(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;
    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        func_80A6988C(this);
    }
}

void func_80A6993C(EnHorseLinkChild* this, s32 newAnimationIdx) {
    this->action = 2;
    this->actor.speedXZ = 0.0f;

    if (!((newAnimationIdx == 0) || (newAnimationIdx == 1))) {
        newAnimationIdx = 0;
    }

    if (this->animationIdx != newAnimationIdx) {
        this->animationIdx = newAnimationIdx;
        SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                             SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
    }
}

void func_80A699FC(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    f32 distFromLink;
    s32 newAnimationIdx;

    distFromLink = func_8002DB8C(&this->actor, &PLAYER->actor);

    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        if ((distFromLink < 1000.0f) && (distFromLink > 70.0f)) {
            func_80A69B7C(this);
        } else {
            newAnimationIdx = this->animationIdx == 1 ? 0 : 1;
            if (this->animationIdx != newAnimationIdx) {
                this->animationIdx = newAnimationIdx;
                SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                                     SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2,
                                     -5.0f);
            } else {
                SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                                     SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, 0.0);
            }
        }
    }
}

void func_80A69B7C(EnHorseLinkChild* this) {
    this->action = 1;
    this->animationIdx = 0;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                         SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
}

void func_80A69C18(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    s16 yawDiff;
    f32 distFromLink;
    s32 newAnimationIdx;

    if ((this->animationIdx == 4) || (this->animationIdx == 3) || (this->animationIdx == 2)) {
        yawDiff = func_8002DA78(&this->actor, &PLAYER->actor) - this->actor.posRot.rot.y;

        if (yawDiff > 0x12C) {
            this->actor.posRot.rot.y += 0x12C;
        } else if (yawDiff < -0x12C) {
            this->actor.posRot.rot.y -= 0x12C;
        } else {
            this->actor.posRot.rot.y += yawDiff;
        }

        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        distFromLink = func_8002DB8C(&this->actor, &PLAYER->actor);

        if (distFromLink > 1000.0f) {
            func_80A6993C(this, 0);
            return;
        } else if ((distFromLink < 1000.0f) && (distFromLink >= 300.0f)) {
            newAnimationIdx = 4;
            this->actor.speedXZ = 6.0f;
        } else if ((distFromLink < 300.0f) && (distFromLink >= 150.0f)) {
            newAnimationIdx = 3;
            this->actor.speedXZ = 4.0f;
        } else if ((distFromLink < 150.0f) && (distFromLink >= 70.0f)) {
            newAnimationIdx = 2;
            this->actor.speedXZ = 2.0f;
            this->unk_1F0 = 0;
        } else {
            func_80A6993C(this, 1);
            return;
        }

        if (this->animationIdx != newAnimationIdx) {
            this->animationIdx = newAnimationIdx;
            SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                                 SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
        } else {
            SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                                 SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, 0.0f);
        }
    }
}

void func_80A69EC0(EnHorseLinkChild* this) {
    this->action = 3;
    this->animationIdx = 0;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                         SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
}

void func_80A69F5C(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    Player* player;
    s16 yawDiff;
    s32 yawSign;
    s32 yawOffset;

    if ((this->animationIdx == 4) || (this->animationIdx == 3) || (this->animationIdx == 2)) {
        player = PLAYER;

        if (Math3D_Vec3f_DistXYZ(&player->actor.posRot.pos, &this->actor.initPosRot.pos) < 250.0f) {
            yawDiff = player->actor.shape.rot.y;
            yawSign = func_8002DA78(&this->actor, &player->actor) > 0 ? 1 : -1;
            yawOffset = yawSign << 0xE;
            yawDiff += yawOffset;
        } else {
            yawDiff = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos) - this->actor.posRot.rot.y;
        }

        if (yawDiff > 0x12C) {
            this->actor.posRot.rot.y += 0x12C;
        } else if (yawDiff < -0x12C) {
            this->actor.posRot.rot.y -= 0x12C;
        } else {
            this->actor.posRot.rot.y += yawDiff;
        }

        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    }
}

void func_80A6A068(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    Player* player;
    f32 distFromLink;
    s32 animationEnded;
    s32 newAnimationIdx;
    f32 distFromHome;
    f32 distLinkFromHome;

    func_80A69F5C(this, globalCtx);
    player = PLAYER;
    distFromLink = func_8002DB8C(&this->actor, &player->actor);

    if (gSaveContext.entranceIndex == 0x2AE) {
        Audio_PlaySoundGeneral(NA_SE_EV_KID_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        func_80A6A724(this);
        return;
    }

    if (((gSaveContext.eventChkInf[1] & 0x40) && (DREG(53) != 0)) ||
        ((globalCtx->sceneNum == SCENE_SPOT20) && (gSaveContext.cutsceneIndex == 0xFFF1))) {
        func_80A6A4DC(this);
    } else {
        this->unk_2A0 = gSaveContext.eventChkInf[1] & 0x40;
    }

    newAnimationIdx = this->animationIdx;
    animationEnded = SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
    if (animationEnded || (this->animationIdx == 1) || (this->animationIdx == 0)) {
        if (gSaveContext.eventChkInf[1] & 0x20) {
            distFromHome = Math3D_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
            distLinkFromHome = Math3D_Vec3f_DistXYZ(&player->actor.posRot.pos, &this->actor.initPosRot.pos);
            if (distLinkFromHome > 250.0f) {
                if (distFromHome >= 300.0f) {
                    newAnimationIdx = 4;
                    this->actor.speedXZ = 6.0f;
                } else if ((distFromHome < 300.0f) && (distFromHome >= 150.0f)) {
                    newAnimationIdx = 3;
                    this->actor.speedXZ = 4.0f;
                } else if ((distFromHome < 150.0f) && (distFromHome >= 70.0f)) {
                    newAnimationIdx = 2;
                    this->actor.speedXZ = 2.0f;
                    this->unk_1F0 = 0;
                } else {
                    this->actor.speedXZ = 0.0f;
                    if (this->animationIdx == 0) {
                        newAnimationIdx = animationEnded == true ? 1 : 0;
                    } else {
                        newAnimationIdx = animationEnded == true ? 0 : 1;
                    }
                }
            } else {
                if (distFromLink < 200.0f) {
                    newAnimationIdx = 4;
                    this->actor.speedXZ = 6.0f;
                } else if (distFromLink < 300.0f) {
                    newAnimationIdx = 3;
                    this->actor.speedXZ = 4.0f;
                } else if (distFromLink < 400.0f) {
                    newAnimationIdx = 2;
                    this->actor.speedXZ = 2.0f;
                    this->unk_1F0 = 0;
                } else {
                    this->actor.speedXZ = 0.0f;
                    if (this->animationIdx == 0) {
                        newAnimationIdx = animationEnded == true ? 1 : 0;
                    } else {
                        newAnimationIdx = animationEnded == true ? 0 : 1;
                    }
                }
            }
        } else {
            this->actor.speedXZ = 0.0f;
            if (this->animationIdx == 0) {
                newAnimationIdx = animationEnded == true ? 1 : 0;
            } else {
                newAnimationIdx = animationEnded == true ? 0 : 1;
            }
        }
    }

    if ((this->animationIdx != newAnimationIdx) || (animationEnded == true)) {
        this->animationIdx = newAnimationIdx;
        SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                             SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
    } else {
        SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this),
                             this->skin.skelAnime.animCurrentFrame,
                             SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, 0.0f);
    }
}

void func_80A6A4DC(EnHorseLinkChild* this) {
    this->action = 5;
    this->animationIdx = Math_Rand_ZeroOne() > 0.5f ? 0 : 1;
    DREG(53) = 0;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                         SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, 0.0f);
}

void func_80A6A5A4(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    s16 yawDiff;

    if (DREG(53) != 0) {
        DREG(53) = 0;
        Audio_PlaySoundGeneral(NA_SE_EV_KID_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        func_80A6A724(this);
    } else {
        this->actor.speedXZ = 0.0f;
        yawDiff = func_8002DA78(&this->actor, &PLAYER->actor) - this->actor.posRot.rot.y;
        // 0.7071 = cos(pi/4)
        if ((Math_Coss(yawDiff) < 0.7071f) && (this->animationIdx == 2)) {
            func_8006DD9C(&this->actor, &PLAYER->actor.posRot.pos, 300);
        }

        if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
            if (Math_Coss(yawDiff) < 0.0f) {
                this->animationIdx = 2;
                SkelAnime_ChangeAnim(
                    &this->skin.skelAnime, sAnimations[this->animationIdx], D_80A6AF64[this->animationIdx], 0.0f,
                    SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
            } else {
                func_80A6A4DC(this);
            }
        }
    }
}

void func_80A6A724(EnHorseLinkChild* this) {
    this->timer = 0;
    this->action = 4;
    this->animationIdx = 2;
    this->unk_1E8 = false;
    this->actor.speedXZ = 2.0f;
    SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                         SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
}

void func_80A6A7D0(EnHorseLinkChild* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 dist;
    s32 newAnimationIdx;

    this->timer++;
    if (this->timer > 300) {
        this->unk_1E8 = true;
    }

    if ((this->animationIdx == 4) || (this->animationIdx == 3) || (this->animationIdx == 2)) {
        if (!this->unk_1E8) {
            func_8006DD9C(&this->actor, &player->actor.posRot.pos, 300);
        } else {
            func_8006DD9C(&this->actor, &this->actor.initPosRot.pos, 300);
        }
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        if (!this->unk_1E8) {
            dist = func_8002DB8C(&this->actor, &PLAYER->actor);
        } else {
            dist = Math3D_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        }

        if (!this->unk_1E8) {
            if (dist >= 300.0f) {
                newAnimationIdx = 4;
                this->actor.speedXZ = 6.0f;
            } else if (dist >= 150.0f) {
                newAnimationIdx = 3;
                this->actor.speedXZ = 4.0f;
            } else {
                newAnimationIdx = 2;
                this->actor.speedXZ = 2.0f;
                this->unk_1F0 = 0;
            }
        } else {
            if (dist >= 300.0f) {
                newAnimationIdx = 4;
                this->actor.speedXZ = 6.0f;
            } else if (dist >= 150.0f) {
                newAnimationIdx = 3;
                this->actor.speedXZ = 4.0f;
            } else if (dist >= 70.0f) {
                newAnimationIdx = 2;
                this->actor.speedXZ = 2.0f;
                this->unk_1F0 = 0;
            } else {
                func_80A6A4DC(this);
                return;
            }
        }

        if (this->animationIdx != newAnimationIdx) {
            this->animationIdx = newAnimationIdx;
            SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                                 SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, -5.0f);
        } else {
            SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimations[this->animationIdx], func_80A695A4(this), 0.0f,
                                 SkelAnime_GetFrameCount(&sAnimations[this->animationIdx]->genericHeader), 2, 0.0f);
        }
    }
}

static EnHorseLinkChildActionFunc D_80A6AF7C[] = { func_80A698F4, func_80A69C18, func_80A699FC,
                                                   func_80A6A068, func_80A6A7D0, func_80A6A5A4 };
static UNK_PTR D_80A6AF94[] = { 0x06001D28, 0x06001928, 0x06001B28 };
static u8 D_80A6AFA0[] = { 0, 1, 2, 1 };

void EnHorseLinkChild_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseLinkChild* this = THIS;
    s32 pad;

    D_80A6AF7C[this->action](this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 55.0f, 100.0f, 0x1D);

    if ((globalCtx->sceneNum == SCENE_SPOT20) && (this->actor.posRot.pos.z < -2400.0f)) {
        this->actor.posRot.pos.z = -2400.0f;
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;

    if ((Math_Rand_ZeroOne() < 0.025f) && (this->unk_1EC == 0)) {
        this->unk_1EC++;
    } else if (this->unk_1EC > 0) {
        this->unk_1EC++;
        if (this->unk_1EC >= ARRAY_COUNT(D_80A6AFA0)) {
            this->unk_1EC = 0;
        }
    }

    Collider_CylinderUpdate(&this->actor, &this->bodyCollider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
    func_80A6948C(this);
}

void func_80A6ABF8(Actor* thisx, GlobalContext* globalCtx, ColliderJntSphItem* collider) {
    Vec3f center;
    Vec3f newCenter;
    EnHorseLinkChild* this = THIS;
    s32 i;

    for (i = 0; i < this->headCollider.count; i++) {
        center.x = this->headCollider.list[i].dim.modelSphere.center.x;
        center.y = this->headCollider.list[i].dim.modelSphere.center.y;
        center.z = this->headCollider.list[i].dim.modelSphere.center.z;
        func_800A6408(collider, this->headCollider.list[i].dim.joint, &center, &newCenter);
        this->headCollider.list[i].dim.worldSphere.center.x = newCenter.x;
        this->headCollider.list[i].dim.worldSphere.center.y = newCenter.y;
        this->headCollider.list[i].dim.worldSphere.center.z = newCenter.z;
        this->headCollider.list[i].dim.worldSphere.radius =
            this->headCollider.list[i].dim.modelSphere.radius * this->headCollider.list[i].dim.scale;
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->headCollider.base);
}

s32 func_80A6AD84(Actor* thisx, GlobalContext* globalCtx, s32 arg2, s32 arg3) {
    EnHorseLinkChild* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_horse_link_child.c", 1467);

    if (arg2 == 0xD) {
        u8 index = D_80A6AFA0[this->unk_1EC];
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A6AF94[index]));
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_horse_link_child.c", 1479);

    return 1;
}

void EnHorseLinkChild_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseLinkChild* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    func_800A6360(&this->actor, globalCtx, &this->skin, func_80A6ABF8, func_80A6AD84, 1);
}
