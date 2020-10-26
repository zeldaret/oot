/*
 * File: z_en_niw.c
 * Overlay: ovl_En_Niw
 * Description: Cucco
 */

#include <vt.h>
#include "z_en_niw.h"
#include "overlays/actors/ovl_En_Attack_Niw/z_en_attack_niw.h"

#define FLAGS 0x00800010

#define THIS ((EnNiw*)thisx)

void EnNiw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnNiw_ResetAction(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6324(EnNiw* this, GlobalContext* globalCtx);
void func_80AB63A8(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6450(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6570(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6A38(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6BF8(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6D08(EnNiw* this, GlobalContext* globalCtx);
void func_80AB6EB4(EnNiw* this, GlobalContext* globalCtx);
void func_80AB70F8(EnNiw* this, GlobalContext* globalCtx);
void func_80AB714C(EnNiw* this, GlobalContext* globalCtx);
void func_80AB7204(EnNiw* this, GlobalContext* globalCtx);
void func_80AB7290(EnNiw* this, GlobalContext* globalCtx);
void func_80AB7328(EnNiw* this, GlobalContext* globalCtx);
void EnNiw_FeatherSpawn(EnNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale);
void EnNiw_FeatherUpdate(EnNiw* this, GlobalContext* globalCtx);
void EnNiw_FeatherDraw(EnNiw* this, GlobalContext* globalCtx);

static s16 D_80AB85E0 = 0;

const ActorInit En_Niw_InitVars = {
    ACTOR_EN_NIW,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnNiw),
    (ActorFunc)EnNiw_Init,
    (ActorFunc)EnNiw_Destroy,
    (ActorFunc)EnNiw_Update,
    (ActorFunc)EnNiw_Draw,
};

static f32 D_80AB8604[] = {
    5000.0f,
    -5000.0f,
};

static f32 D_80AB860C[] = {
    5000.0f,
    3000.0f,
    4000.0f,
};

static Vec3f sKakarikoPosList[] = {
    { -1697.0f, 80.0f, 870.0f }, { 57.0f, 320.0f, -673.0f }, { 796.0f, 80.0f, 1639.0f }, { 1417.0f, 465.0f, 169.0f },
    { -60.0f, 0.0f, -46.0f },    { -247.0f, 80.0f, 854.0f }, { 1079.0f, 80.0f, -47.0f },
};

static s16 sKakarikoFlagList[] = {
    0x0200, 0x0400, 0x0800, 0x1000, 0x2000, 0x4000, 0x8000,
};

static u8 sSpawnedVer1 = false;

static u8 sSpawnedVer2 = false;

static ColliderCylinderInit sCylinderInit1 = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x01, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 15, 25, 4, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 15, 25, 4, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 6, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

extern SkeletonHeader D_06002530;
extern AnimationHeader D_060000E8;
extern Gfx D_060023B0[];
extern Gfx D_06002428[];

void EnNiw_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNiw* this = THIS;
    s32 pad;
    s32 i;

    if (this->actor.params < 0) {
        this->actor.params = 0;
    }
    if (this->actor.params == 0xB) {
        if (sSpawnedVer1) {
            Actor_Kill(&this->actor);
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もういてる原 Ver.1 ☆☆☆☆☆ \n" VT_RST);
            return;
        }
        sSpawnedVer1 = true;
        this->actor.room = -1;
    }
    if (this->actor.params == 0xC) {
        if (sSpawnedVer2) {
            Actor_Kill(&this->actor);
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もういてる原 Ver.2 ☆☆☆☆☆ \n" VT_RST);
            return;
        }
        sSpawnedVer2 = true;
        this->actor.room = -1;
    }

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.flags |= 1;
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 25.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06002530, &D_060000E8, this->limbDrawTable,
                     this->transitionDrawTable, 16);

    if (globalCtx->sceneNum == SCENE_SPOT01) {
        for (i = 0; i < ARRAY_COUNT(sKakarikoPosList); i++) {
            if (fabsf(this->actor.posRot.pos.x - sKakarikoPosList[i].x) < 40.0f &&
                fabsf(this->actor.posRot.pos.z - sKakarikoPosList[i].z) < 40.0f) {
                this->unk_2AA = i;
                osSyncPrintf(VT_FGCOL(YELLOW) " 通常鶏index %d\n" VT_RST, this->unk_2AA);
                if (gSaveContext.infTable[25] & sKakarikoFlagList[i]) {
                    this->actor.posRot.pos.x = 300.0f;
                    this->actor.posRot.pos.y = 100.0f;
                    this->actor.posRot.pos.z = 1530.0f;
                    this->actor.params = 0;
                }
            }
        }
    }

    Math_Vec3f_Copy(&this->unk_2AC, &this->actor.posRot.pos);
    Math_Vec3f_Copy(&this->unk_2B8, &this->actor.posRot.pos);
    this->unk_304 = 10.0f;
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_2A4 = (s16)Math_Rand_ZeroFloat(3.99f) + 5;

    if (this->unk_2A4 < 0) {
        this->unk_2A4 = 1;
    }

    switch (this->actor.params) {
        case 2:
            if (!gSaveContext.nightFlag) {
                Actor_Kill(&this->actor);
            }
            break;
        case 1:
            if (gSaveContext.eventChkInf[1] & 0x10) {
                Actor_Kill(&this->actor);
            }
            break;
        case 3:
            if (!(gSaveContext.eventChkInf[1] & 0x10)) {
                Actor_Kill(&this->actor);
            }
            break;
        case 5:
            if (gSaveContext.eventChkInf[1] & 0x100) {
                Actor_Kill(&this->actor);
            }
            break;
        case 7:
            if (!(gSaveContext.eventChkInf[1] & 0x100)) {
                Actor_Kill(&this->actor);
            }
            break;
        case 0xD:
            this->actor.gravity = 0.0f;
        case 0xE:
            this->actor.colChkInfo.mass = 0;
            this->actor.flags &= ~1;
            break;
        case 4:
            this->actor.gravity = 0.0f;
            break;
    }

    Collider_InitCylinder(globalCtx, &this->collider);

    switch (this->actor.params) {
        case 0xA:
            this->actor.colChkInfo.mass = 0xFF;
        case 0xD:
        case 0xE:
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit2);
            if (globalCtx->sceneNum == SCENE_LINK_HOME && !(gSaveContext.eventChkInf[1] & 0x4000)) {
                Actor_Kill(&this->actor);
            }
            break;
        default:
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit1);
            break;
    }

    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ どんな奴？ ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
    osSyncPrintf("\n\n");
    this->actionFunc = EnNiw_ResetAction;
}

void EnNiw_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnNiw* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AB5BF8(EnNiw* this, GlobalContext* globalCtx, s16 arg2) {
    f32 factor = 1.0f;

    if (this->actor.params == 0xD) {
        factor = 2.0f;
    }
    if (this->timer1 == 0) {
        if (arg2 == 0) {
            this->unk_26C[0] = 0.0f;
        } else {
            this->unk_26C[0] = -10000.0f * factor;
        }
        this->unk_298++;
        this->timer1 = 3;
        if (!(this->unk_298 & 1)) {
            this->unk_26C[0] = 0.0f;

            if (arg2 == 0) {
                this->timer1 = Math_Rand_ZeroFloat(30.0f);
            }
        }
    }
    if (this->timer2 == 0) {
        this->unk_29C++;
        this->unk_29C &= 1;

        switch (arg2) {
            case 0:
                this->unk_26C[1] = this->unk_26C[2] = 0.0f;
                break;
            case 1:
                this->timer2 = 3;
                this->unk_26C[1] = this->unk_26C[2] = 7000.0f * factor;

                if (this->unk_29C == 0) {
                    this->unk_26C[1] = this->unk_26C[2] = 0.0f;
                }
                break;
            case 2:
                this->timer2 = 2;
                this->unk_26C[1] = this->unk_26C[2] = -10000.0f;
                this->unk_26C[7] = this->unk_26C[5] = 25000.0f;
                this->unk_26C[8] = this->unk_26C[6] = 6000.0f;

                if (this->unk_29C == 0) {
                    this->unk_26C[5] = this->unk_26C[7] = 8000.0f;
                }
                break;
            case 3:
                this->timer2 = 2;
                this->unk_26C[7] = this->unk_26C[5] = 10000.0f;

                if (this->unk_29C == 0) {
                    this->unk_26C[7] = this->unk_26C[5] = 3000.0f;
                }
                break;
            case 4:
                this->timer1 = 5;
                break;
            case 5:
                this->timer2 = 5;
                this->unk_26C[7] = this->unk_26C[5] = 14000.0f;
                if (this->unk_29C == 0) {
                    this->unk_26C[7] = this->unk_26C[5] = 10000.0f;
                }
                break;
        }
    }
    if (this->unk_2E0 != this->unk_26C[9]) {
        Math_SmoothScaleMaxF(&this->unk_2E0, this->unk_26C[9], 0.5f, 4000.0f);
    }
    if (this->unk_2DC != this->unk_26C[0]) {
        Math_SmoothScaleMaxF(&this->unk_2DC, this->unk_26C[0], 0.5f, 4000.0f);
    }
    if (this->unk_2C4 != this->unk_26C[2]) {
        Math_SmoothScaleMaxF(&this->unk_2C4, this->unk_26C[2], 0.8f, 7000.0f);
    }
    if (this->unk_2C8 != this->unk_26C[7]) {
        Math_SmoothScaleMaxF(&this->unk_2C8, this->unk_26C[7], 0.8f, 7000.0f);
    }
    if (this->unk_2CC != this->unk_26C[8]) {
        Math_SmoothScaleMaxF(&this->unk_2CC, this->unk_26C[8], 0.8f, 7000.0f);
    }
    if (this->unk_2D0 != this->unk_26C[1]) {
        Math_SmoothScaleMaxF(&this->unk_2D0, this->unk_26C[1], 0.8f, 7000.0f);
    }
    if (this->unk_2D4 != this->unk_26C[5]) {
        Math_SmoothScaleMaxF(&this->unk_2D4, this->unk_26C[5], 0.8f, 7000.0f);
    }
    if (this->unk_2D8 != this->unk_26C[6]) {
        Math_SmoothScaleMaxF(&this->unk_2D8, this->unk_26C[6], 0.8f, 7000.0f);
    }
}

void EnNiw_SpawnAttackCucco(EnNiw* this, GlobalContext* globalCtx) {
    f32 viewX;
    f32 viewY;
    f32 viewZ;
    Vec3f attackCuccoPos;
    EnAttackNiw* attackCucco;

    if (this->timer5 == 0) {
        if (this->unk_296 < 7) {
            viewX = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
            viewY = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
            viewZ = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
            attackCuccoPos.x = ((Math_Rand_ZeroOne() - 0.5f) * viewX) + globalCtx->view.eye.x;
            attackCuccoPos.y = Math_Rand_CenteredFloat(0.3f) + ((globalCtx->view.eye.y + 50.0f) + (viewY * 0.5f));
            attackCuccoPos.z = ((Math_Rand_ZeroOne() - 0.5f) * viewZ) + globalCtx->view.eye.z;
            attackCucco = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ATTACK_NIW,
                                             attackCuccoPos.x, attackCuccoPos.y, attackCuccoPos.z, 0, 0, 0, 0);

            if (attackCucco != NULL) {
                this->unk_296++;
                this->timer5 = 10;
            } else {
                osSyncPrintf("\n\n");
                osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 発生できず  ☆☆☆☆☆ \n" VT_RST);
            }
        }
    }
}

void func_80AB6100(EnNiw* this, GlobalContext* globalCtx, s32 arg2) {
    f32 factor;
    f32 targetRotY;

    if (this->timer4 == 0) {
        this->timer4 = 3;

        if (this->actor.bgCheckFlags & 1) {
            this->actor.velocity.y = 3.5f;
        }
    }
    if (this->timer3 == 0) {
        this->unk_2A0++;
        this->unk_2A0 &= 1;
        this->timer3 = 5;
    }
    if (this->unk_2A0 == 0) {
        factor = D_80AB860C[arg2];
    } else {
        factor = -D_80AB860C[arg2];
    }
    if (arg2 == 1) {
        if (this->timer6 == 0 || this->actor.bgCheckFlags & 8) {
            this->timer6 = 150;
            if (this->timer8 == 0) {
                this->timer8 = 70;
                this->unk_2E4 = this->actor.yawTowardsLink;
            }
        }
    }
    targetRotY = this->unk_2E4 + factor;
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, targetRotY, 3, this->unk_2FC, 0);
    Math_SmoothScaleMaxF(&this->unk_2FC, 3000.0f, 1.0f, 500.0f);
    func_80AB5BF8(this, globalCtx, 5);
}

void EnNiw_ResetAction(EnNiw* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060000E8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060000E8), 0, -10.0f);

    switch (this->actor.params) {
        case 4:
            this->actionFunc = func_80AB6450;
            break;
        case 0xD:
            this->actionFunc = func_80AB6324;
            break;
        default:
            this->actionFunc = func_80AB6570;
            break;
    }
}

void func_80AB6324(EnNiw* this, GlobalContext* globalCtx) {
    if (this->unk_308 != 0) {
        this->actor.velocity.y = Math_Rand_ZeroFloat(2.0f) + 4.0f;
        this->actor.speedXZ = Math_Rand_ZeroFloat(2.0f) + 3.0f;
        this->actionFunc = func_80AB63A8;
    }
    func_80AB5BF8(this, globalCtx, 1);
}

void func_80AB63A8(EnNiw* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1 && this->actor.velocity.y < 0.0f) {
        this->unk_2AC = this->unk_2B8 = this->actor.posRot.pos.x;
        this->unk_2B0 = this->unk_2BC = this->actor.posRot.pos.y;
        this->unk_2B4 = this->unk_2C0 = this->actor.posRot.pos.z;
        this->timer5 = this->timer4 = this->unk_29E = 0;

        this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speedXZ =
            this->unk_2FC = this->unk_300 = 0.0f;

        this->actionFunc = func_80AB6570;
    } else {
        func_80AB5BF8(this, globalCtx, 2);
    }
}

void func_80AB6450(EnNiw* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->actor.xzDistFromLink < 30.0f && fabsf(this->actor.posRot.pos.y - player->actor.posRot.pos.y) < 5.0f) {
        this->timer6 = 100;
        this->actor.gravity = -2.0f;
        this->actionFunc = func_80AB7290;
    } else if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.gravity = -2.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
        this->sfxTimer1 = 30;
        this->path = 0;
        this->timer4 = 30;
        this->actor.flags &= ~1;
        this->actor.speedXZ = 0.0f;
        this->actionFunc = func_80AB6BF8;
    } else {
        func_8002F434(&this->actor, globalCtx, 0, 25.0f, 10.0f);
        func_80AB5BF8(this, globalCtx, 1);
    }
}

void func_80AB6570(EnNiw* this, GlobalContext* globalCtx) {
    s32 pad[2];
    f32 posY = Math_Rand_CenteredFloat(100.0f);
    f32 posZ = Math_Rand_CenteredFloat(100.0f);
    s16 tmp;

    if (this->actor.params != 0xA) {
        if (Actor_HasParent(&this->actor, globalCtx)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
            this->sfxTimer1 = 30;
            this->path = 0;
            this->timer4 = 30;
            this->actor.flags &= ~1;
            this->actor.speedXZ = 0.0f;
            this->actionFunc = func_80AB6BF8;
            return;
        }
        func_8002F580(&this->actor, globalCtx);
    } else {
        if (this->path != 0) {
            this->unk_2A6 = 1;
            if (this->sfxTimer3 == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
                this->sfxTimer3 = 100;
            }
            this->unk_2A0 = Math_Rand_ZeroFloat(1.99f);
            this->actor.speedXZ = 4.0f;
            this->unk_300 = 0.0f;
            this->unk_2FC = 0.0f;
            this->actionFunc = func_80AB6A38;
            return;
        }
    }

    tmp = 0;

    if (this->timer5 != 0) {
        if (Math_Rand_ZeroFloat(3.99f) < 1.0f) {
            this->unk_2E6++;
            this->unk_2E6 &= 1;
        }
        Math_SmoothScaleMaxF(&this->unk_26C[9], D_80AB8604[this->unk_2E6], 0.5f, 4000.0f);
    }

    if (this->timer5 == 0 && this->timer4 == 0) {
        this->unk_29E++;

        if (this->unk_29E >= 8) {
            this->timer5 = Math_Rand_ZeroFloat(30.0f);
            this->unk_29E = Math_Rand_ZeroFloat(3.99f);
            if (this->actor.params != 0xA && this->actor.params != 8) {
                if (posY < 0.0f) {
                    posY -= 100.0f;
                } else {
                    posY += 100.0f;
                }
                if (posZ < 0.0f) {
                    posZ -= 100.0f;
                } else {
                    posZ += 100.0f;
                }
            } else {
                posY = Math_Rand_CenteredFloat(30.0f);
                posZ = Math_Rand_CenteredFloat(30.0f);
                if (posY < 0.0f) {
                    posY -= 20.0f;
                } else {
                    posY += 20.0f;
                }
                if (posZ < 0.0f) {
                    if (1) {} // Required to match
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    posZ -= 20.0f;
                } else {
                    posZ += 20.0f;
                }
            }
            this->unk_2B8 = this->unk_2AC + posY;
            this->unk_2C0 = this->unk_2B4 + posZ;
        } else {
            this->timer4 = 4;
            if (this->actor.bgCheckFlags & 1) {
                this->actor.speedXZ = 0.0f;
                this->actor.velocity.y = 3.5f;
            }
        }
    }

    if (this->timer4 != 0) {
        Math_SmoothDownscaleMaxF(&this->unk_26C[9], 0.5f, 4000.0f);
        tmp = 1;
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->unk_2B8, 1.0f, this->unk_2FC);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->unk_2C0, 1.0f, this->unk_2FC);
        Math_SmoothScaleMaxF(&this->unk_2FC, 3.0f, 1.0f, 0.3f);
        posY = this->unk_2B8 - this->actor.posRot.pos.x;
        posZ = this->unk_2C0 - this->actor.posRot.pos.z;

        if (fabsf(posY) < 10.0f) {
            posY = 0.0;
        }
        if (fabsf(posZ) < 10.0f) {
            posZ = 0.0;
        }
        if (posY == 0.0f && posZ == 0.0f) {
            this->timer4 = 0;
            this->unk_29E = 7;
        }

        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, Math_atan2f(posY, posZ) * (0x8000 / M_PI), 3, this->unk_300,
                                0);
        Math_SmoothScaleMaxF(&this->unk_300, 10000.0f, 1.0f, 1000.0f);
    }

    func_80AB5BF8(this, globalCtx, tmp);
}

void func_80AB6A38(EnNiw* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;
    s16 pathIndex = this->path - 1;

    if (this->path == 0) {
        this->unk_2AC = this->unk_2B8 = this->actor.posRot.pos.x;
        this->unk_2B0 = this->unk_2BC = this->actor.posRot.pos.y;
        this->unk_2B4 = this->unk_2C0 = this->actor.posRot.pos.z;
        this->timer5 = this->timer4 = this->unk_29E = 0;
        this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speedXZ =
            this->unk_2FC = this->unk_300 = 0.0f;
        this->actionFunc = EnNiw_ResetAction;
    } else {
        path = &globalCtx->setupPathList[pathIndex];
        pointPos = SEGMENTED_TO_VIRTUAL(path->points);
        pointPos += this->waypoint;
        pathDiffX = pointPos->x - this->actor.posRot.pos.x;
        pathDiffZ = pointPos->z - this->actor.posRot.pos.z;
        this->unk_2E4 = Math_atan2f(pathDiffX, pathDiffZ) * (0x8000 / M_PI);
        func_80AB6100(this, globalCtx, 2);

        if (fabsf(pathDiffX) < 30.0f && fabsf(pathDiffZ) < 30.0f) {
            this->waypoint++;
            if (this->waypoint >= this->unk_2EC) {
                this->waypoint = 0;
            }
        }

        func_80AB5BF8(this, globalCtx, 2);
    }
}

void func_80AB6BF8(EnNiw* this, GlobalContext* globalCtx) {
    if (this->timer4 == 0) {
        this->unk_2A6 = 2;
        this->timer4 = 10;
    }

    this->actor.shape.rot.x = Math_Rand_CenteredFloat(5000.0f);
    this->actor.shape.rot.y = Math_Rand_CenteredFloat(5000.0f);
    this->actor.shape.rot.z = Math_Rand_CenteredFloat(5000.0f);

    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        if (this->actor.params == 0xD) {
            this->sfxTimer1 = 0;
            this->unk_2A6 = 1;
            this->actionFunc = func_80AB6EB4;
            this->actor.velocity.y = 4.0f;
            return;
        }
        this->actor.shape.rot.z = 0;
        this->actor.shape.rot.y = this->actor.shape.rot.z;
        this->actor.shape.rot.x = this->actor.shape.rot.z;
        this->actor.flags |= 1;
        this->actionFunc = func_80AB6D08;
    }
    func_80AB5BF8(this, globalCtx, 2);
}

void func_80AB6D08(EnNiw* this, GlobalContext* globalCtx) {
    if (this->path == 0) {
        if (!(this->actor.bgCheckFlags & 1)) {
            return;
        }
        if (this->actor.params == 0xE) {
            this->unk_2AC = this->unk_2B8 = this->actor.posRot.pos.x;
            this->unk_2B0 = this->unk_2BC = this->actor.posRot.pos.y;
            this->unk_2B4 = this->unk_2C0 = this->actor.posRot.pos.z;
            this->timer5 = this->timer4 = this->unk_29E = 0;

            this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speedXZ =
                this->unk_2FC = this->unk_300 = 0.0f;

            this->actionFunc = EnNiw_ResetAction;
            return;
        }

        this->path = 1;
        this->timer5 = 80;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.y = 4.0f;
    } else {
        if (this->actor.bgCheckFlags & 1) {
            this->sfxTimer1 = 0;
            this->actor.velocity.y = 4.0f;
            this->unk_2A6 = 1;
        }
        if (this->timer5 == 0) {
            this->timer6 = 100;
            this->timer4 = 0;
            this->path = 0;
            this->actionFunc = func_80AB7290;
            return;
        }
    }

    if (Actor_HasParent(&this->actor, globalCtx)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
        this->sfxTimer1 = 30;
        this->path = 0;
        this->timer4 = 30;
        this->actor.flags &= ~1;
        this->actor.speedXZ = 0.0f;
        this->actionFunc = func_80AB6BF8;
    } else {
        if (this->timer5 >= 6) {
            func_8002F580(&this->actor, globalCtx);
        }
        func_80AB5BF8(this, globalCtx, 2);
    }
}

void func_80AB6EB4(EnNiw* this, GlobalContext* globalCtx) {
    if (this->actor.posRot.pos.y > 400.0f) {
        Actor_Kill(&this->actor);
    }

    func_80AB5BF8(this, globalCtx, 2);
}

void func_80AB6F04(EnNiw* this, GlobalContext* globalCtx) {
    Vec3f pos;

    if (this->unk_2A8 != 0) {
        EnNiw_SpawnAttackCucco(this, globalCtx);
    }

    this->actor.speedXZ = 2.0f;

    if (this->actor.bgCheckFlags & 0x20) {
        this->actor.gravity = 0.0f;

        if (this->actor.waterY > 15.0f) {
            this->actor.posRot.pos.y += 2.0f;
        }
        if (this->timer4 == 0) {
            this->timer4 = 30;
            Math_Vec3f_Copy(&pos, &this->actor.posRot.pos);
            pos.y += this->actor.waterY;
            EffectSsGRipple_Spawn(globalCtx, &pos, 100, 500, 30);
        }
        if (this->actor.bgCheckFlags & 8) {
            this->actor.velocity.y = 10.0f;
            this->actor.speedXZ = 1.0f;
        }
    } else {
        this->actor.gravity = -2.0f;

        if (this->actor.bgCheckFlags & 8) {
            this->actor.velocity.y = 10.0f;
            this->actor.speedXZ = 1.0f;
            this->actor.gravity = 0.0f;
        } else {
            this->actor.speedXZ = 4.0f;
        }
        if (this->actor.bgCheckFlags & 1) {
            this->actor.gravity = -2.0f;
            this->timer6 = 100;
            this->timer4 = 0;
            this->actor.velocity.y = 0.0f;
            if (this->unk_2A8 == 0) {
                this->actionFunc = func_80AB7290;
            } else {
                this->actionFunc = func_80AB7204;
            }
        }
    }

    func_80AB5BF8(this, globalCtx, 2);
}

void func_80AB70A0(EnNiw* this, GlobalContext* globalCtx) {
    func_800800F8(globalCtx, 0x8F2, -0x63, &this->actor, 0);
    this->timer5 = 100;
    this->unk_2A2 = 1;
    this->actionFunc = func_80AB70F8;
}

void func_80AB70F8(EnNiw* this, GlobalContext* globalCtx) {
    this->sfxTimer1 = 100;

    if (this->timer5 == 0) {
        this->timer5 = 60;
        this->timer1 = 10;
        this->unk_2A2 = 4;
        this->actionFunc = func_80AB714C;
    }

    func_80AB5BF8(this, globalCtx, this->unk_2A2);
}

void func_80AB714C(EnNiw* this, GlobalContext* globalCtx) {
    this->sfxTimer1 = 100;

    if (this->timer5 == 40) {
        this->unk_26C[0] = 10000.0f;
        this->unk_26C[7] = 14000.0f;
        this->unk_26C[5] = 14000.0f;
        this->unk_26C[6] = 0.0f;
        this->unk_26C[8] = 0.0f;
        this->unk_26C[1] = 0.0f;
        this->unk_26C[2] = 0.0f;
        this->timer1 = 10;
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
    }
    if (this->timer5 == 0) {
        this->timer7 = 10;
        this->unk_2E4 = this->actor.yawTowardsLink;
        this->actor.flags &= ~1;
        this->actionFunc = func_80AB7204;
    }

    func_80AB5BF8(&this->actor, globalCtx, this->unk_2A2);
}

void func_80AB7204(EnNiw* this, GlobalContext* globalCtx) {
    EnNiw_SpawnAttackCucco(this, globalCtx);

    if (this->timer7 < 2) {
        if (this->timer7 == 1) {
            this->actor.speedXZ = 3.0f;
            this->unk_2A0 = Math_Rand_ZeroFloat(1.99f);
            this->timer1 = this->timer2 = this->timer3 = this->timer4 = 0;
        } else {
            func_80AB6100(this, globalCtx, 1);
        }
    }
}

void func_80AB7290(EnNiw* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060000E8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060000E8), 0, -10.0f);
    this->unk_2A0 = Math_Rand_ZeroFloat(1.99f);
    this->actor.speedXZ = 4.0f;
    this->actionFunc = func_80AB7328;
}

void func_80AB7328(EnNiw* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->timer6 == 0) {
        this->unk_2AC = this->unk_2B8 = this->actor.posRot.pos.x;
        this->unk_2B0 = this->unk_2BC = this->actor.posRot.pos.y;
        this->unk_2B4 = this->unk_2C0 = this->actor.posRot.pos.z;
        this->timer5 = this->timer4 = this->unk_29E = 0;
        this->unk_26C[7] = this->unk_26C[5] = this->unk_26C[6] = this->unk_26C[8] = this->actor.speedXZ =
            this->unk_2FC = this->unk_300 = 0.0f;
        if (this->actor.params == 4) {
            this->actor.params = 0;
        }
        this->actionFunc = EnNiw_ResetAction;
    } else {
        this->unk_2E4 = Math_atan2f(this->actor.posRot.pos.x - player->actor.posRot.pos.x,
                                    this->actor.posRot.pos.z - player->actor.posRot.pos.z) *
                        (0x8000 / M_PI);
        func_80AB6100(this, globalCtx, 0);
        func_80AB5BF8(this, globalCtx, 2);
    }
}

void func_80AB7420(EnNiw* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1) {
        this->unk_2A4 = (s16)Math_Rand_ZeroFloat(3.99f) + 5;
        this->actionFunc = EnNiw_ResetAction;
    }
}

void func_80AB747C(EnNiw* this, GlobalContext* globalCtx) {
    if (this->unk_2A8 == 0 && this->actor.params != 0xA && this->actionFunc != func_80AB6450 &&
        this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        this->sfxTimer1 = 30;
        if (this->unk_2A4 > 0 && D_80AB85E0 == 0) {
            this->unk_2A4--;
        }
        this->unk_2A6 = 1;
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
        this->timer6 = 100;
        this->path = 0;
        this->actionFunc = func_80AB7290;
    }
}

void EnNiw_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad1;
    EnNiw* this = THIS;
    Player* player = PLAYER;
    s16 i;
    s16 featherCount;
    Vec3f zeroVec1 = { 0.0f, 0.0f, 0.0f };
    Vec3f zeroVec2 = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;
    s32 pad2;
    f32 scale;
    Vec3f cam;
    f32 dist;
    f32 camResult;
    s32 pad3[10];

    if (1) {} // Required to match
    if (1) {}
    if (1) {}

    this->unk_294++;

    if (this->actionFunc != func_80AB6570) {
        this->unk_26C[9] = 0.0f;
    }
    if (this->unk_2A6) {
        featherCount = 20;

        if (this->unk_2A6 == 2) {
            featherCount = 4;
        }

        for (i = 0; i < featherCount; i++) {
            pos.x = Math_Rand_CenteredFloat(10.0f) + thisx->posRot.pos.x;
            pos.y = Math_Rand_CenteredFloat(10.0f) + (thisx->posRot.pos.y + this->unk_304);
            pos.z = Math_Rand_CenteredFloat(10.0f) + thisx->posRot.pos.z;
            scale = Math_Rand_ZeroFloat(6.0f) + 6.0f;

            if (this->unk_2A6 == 2 && this->unk_304 != 0) {
                pos.y += 10;
            }
            if (this->unk_304 == 0) {
                scale = Math_Rand_ZeroFloat(2.0f) + 2;
            }

            vel.x = Math_Rand_CenteredFloat(3.0f);
            vel.y = (Math_Rand_ZeroFloat(2.0f) * 0.5f) + 2.0f;
            vel.z = Math_Rand_CenteredFloat(3.0f);
            accel.x = 0.0f;
            accel.y = -0.15f;
            accel.z = 0.0f;
            EnNiw_FeatherSpawn(this, &pos, &vel, &accel, scale);
        }

        this->unk_2A6 = 0;
    }

    EnNiw_FeatherUpdate(&this->actor, globalCtx);
    if (this->timer1 != 0) {
        this->timer1--;
    }
    if (this->timer2 != 0) {
        this->timer2--;
    }
    if (this->timer3 != 0) {
        this->timer3--;
    }
    if (this->timer4 != 0) {
        this->timer4--;
    }
    if (this->timer5 != 0) {
        this->timer5--;
    }
    if (this->timer7 != 0) {
        this->timer7--;
    }
    if (this->timer6 != 0) {
        this->timer6--;
    }
    if (this->sfxTimer1 != 0) {
        this->sfxTimer1--;
    }
    if (this->sfxTimer2 != 0) {
        this->sfxTimer2--;
    }
    if (this->sfxTimer3 != 0) {
        this->sfxTimer3--;
    }
    if (this->timer8 != 0) {
        this->timer8--;
    }
    if (this->timer9 != 0) {
        this->timer9--;
    }
    thisx->shape.rot = thisx->posRot.rot;
    thisx->shape.unk_10 = 15.0f;
    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, this->unk_304);
    Actor_MoveForward(&this->actor);

    if (this->actionFunc != func_80AB6EB4 && this->actionFunc != func_80AB6450 && globalCtx->sceneNum != SCENE_SPOT03) {
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 31);
    }
    if (globalCtx->sceneNum == SCENE_SPOT03) {
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 29);
    }
    if (thisx->groundY <= -32000.0f || thisx->groundY >= 32000.0f) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 上下？ ☆☆☆☆☆ %f\n" VT_RST, thisx->groundY);
        cam.x = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
        cam.y = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
        cam.z = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
        camResult = cam.y / sqrtf(SQ(cam.x) + SQ(cam.y) + SQ(cam.z));
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ 範囲外Ｘ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->posRot.pos.x);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ 範囲外Ｙ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->posRot.pos.y);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ 範囲外Ｚ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->posRot.pos.z);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セットＸ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->initPosRot.pos.x);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セットＹ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->initPosRot.pos.y);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セットＺ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->initPosRot.pos.z);
        thisx->posRot.pos.x = thisx->initPosRot.pos.x;
        thisx->posRot.pos.z = thisx->initPosRot.pos.z;
        thisx->posRot.pos.y = ((thisx->initPosRot.pos.y + globalCtx->view.eye.y) + (camResult * 160.0f));

        if (thisx->posRot.pos.y < thisx->initPosRot.pos.y) {
            thisx->posRot.pos.y = thisx->initPosRot.pos.y + 300.0f;
        }

        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 修整後Ｘ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->posRot.pos.x);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 修整後Ｙ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->posRot.pos.y);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 修整後Ｚ！ ☆☆☆☆☆ %f\n" VT_RST, thisx->posRot.pos.z);
        osSyncPrintf("\n\n");
        thisx->speedXZ = 0.0f;
        thisx->gravity = -2.0f;
        Math_Vec3f_Copy(&this->unk_2AC, &thisx->initPosRot);
        Math_Vec3f_Copy(&this->unk_2B8, &thisx->initPosRot);
        this->unk_300 = 0.0f;
        this->unk_2FC = 0.0f;
        this->unk_2F0.z = 0.0f;
        this->unk_2F0.y = 0.0f;
        this->unk_2F0.x = 0.0f;
        this->unk_2D8 = 0.0f;
        this->unk_2D4 = 0.0f;
        this->unk_2D0 = 0.0f;
        this->unk_2CC = 0.0f;
        this->unk_2C8 = 0.0f;
        this->unk_2C4 = 0.0f;
        this->unk_2DC = 0.0f;
        this->unk_2E0 = 0.0f;
        this->unk_2A8 = this->unk_294 = this->unk_298 = this->unk_2A6 = this->unk_29E = this->unk_2A0 = this->unk_2A2 =
            0;

        for (i = 0; i < ARRAY_COUNT(this->unk_26C); i++) {
            this->unk_26C[i] = 0;
        }

        this->unk_2A8 = 0;
        this->actionFunc = func_80AB7420;
        return;
    }

    if (thisx->bgCheckFlags & 0x20 && thisx->waterY > 15.0f && this->actionFunc != func_80AB6F04 &&
        thisx->params != 0xD && thisx->params != 0xE && thisx->params != 0xA) {
        thisx->velocity.y = 0.0f;
        thisx->gravity = 0.0f;
        Math_Vec3f_Copy(&pos, &thisx->posRot);
        pos.y += thisx->waterY;
        this->timer4 = 30;
        EffectSsGSplash_Spawn(globalCtx, &pos, 0, 0, 0, 400);
        this->timer5 = 0;
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ぶくぶく ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf("\n\n");
        this->actionFunc = func_80AB6F04;
        return;
    }

    if (D_80AB85E0 == 0 && this->unk_2A4 <= 0 && thisx->params != 0xD && thisx->params != 0xE && thisx->params != 0xA) {
        this->timer6 = 100;

        if (thisx->xzDistFromLink > 10.0f) {
            D_80AB85E0 = 1;
            this->timer5 = this->timer4 = this->unk_29E = 0;
            thisx->speedXZ = 0.0f;
            this->unk_2FC = 0.0f;
            this->unk_300 = 0.0f;
            this->unk_26C[7] = 0.0f;
            this->unk_26C[5] = 0.0f;
            this->unk_26C[6] = 0.0f;
            this->unk_26C[8] = 0.0f;
            this->sfxTimer1 = 10000;
            this->unk_2A8 = 1;
            this->unk_2AC = this->unk_2B8 = thisx->posRot.pos.x;
            this->unk_2B0 = this->unk_2BC = thisx->posRot.pos.y;
            this->unk_2B4 = this->unk_2C0 = thisx->posRot.pos.z;
            this->actionFunc = func_80AB70A0;
            return;
        }
    }

    dist = 20.0f;

    if (this->unk_2A8 != 0 && thisx->xyzDistFromLinkSq < SQ(dist) && player->invincibilityTimer == 0) {
        func_8002F6D4(globalCtx, &this->actor, 2.0f, thisx->posRot.rot.y, 0.0f, 0x10);
    }

    func_80AB747C(&this->actor, globalCtx);

    if (this->sfxTimer2 == 0 && this->actionFunc == func_80AB6BF8) {
        this->sfxTimer2 = 7;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_WAKEUP);
    }
    if (this->sfxTimer1 == 0) {
        if (this->actionFunc != func_80AB6570) {
            this->sfxTimer1 = 30;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
        } else {
            this->sfxTimer1 = 300;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_N);
        }
    }
    if (this->unk_2A8 == 0) {
        Collider_CylinderUpdate(&this->actor, &this->collider);

        if (thisx->params != 0xA && thisx->params != 0xD && thisx->params != 0xE && thisx->params != 4) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
        if (this->actionFunc != func_80AB6BF8 && this->actionFunc != func_80AB6D08 &&
            this->actionFunc != func_80AB6324 && this->actionFunc != func_80AB63A8 &&
            this->actionFunc != func_80AB6450) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
    }
}

s32 EnNiw_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnNiw* this = THIS;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        rot->y += (s16)this->unk_2DC;
    }
    if (limbIndex == 15) {
        rot->y += (s16)this->unk_2E0;
    }
    if (limbIndex == 11) {
        rot->x += (s16)this->unk_2D8;
        rot->y += (s16)this->unk_2D4;
        rot->z += (s16)this->unk_2D0;
    }
    if (limbIndex == 7) {
        rot->x += (s16)this->unk_2CC;
        rot->y += (s16)this->unk_2C8;
        rot->z += (s16)this->unk_2C4;
    }

    return 0;
}

void EnNiw_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnNiw* this = THIS;
    Vec3f scale = { 0.15f, 0.15f, 0.15f };
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnNiw_OverrideLimbDraw, NULL, &this->actor);

    if (this->actionFunc == func_80AB6450) {
        func_80033C30(&this->actor.posRot.pos, &scale, 255, globalCtx);
    }

    EnNiw_FeatherDraw(this, globalCtx);
}

void EnNiw_FeatherSpawn(EnNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale) {
    s16 i;
    EnNiwFeather* feather = this->feathers;

    for (i = 0; i < ARRAY_COUNT(this->feathers); i++, feather++) {
        if (feather->type == 0) {
            feather->type = 1;
            feather->pos = *pos;
            feather->vel = *vel;
            feather->accel = *accel;
            feather->timer = 0;
            feather->scale = scale / 1000.0f;
            feather->lifespan = (s16)Math_Rand_ZeroFloat(20.0f) + 40;
            feather->unk_2A = Math_Rand_ZeroFloat(1000.0f);
            break;
        }
    }
}

void EnNiw_FeatherUpdate(EnNiw* this, GlobalContext* globalCtx) {
    s16 i;
    EnNiwFeather* feather = this->feathers;

    for (i = 0; i < ARRAY_COUNT(this->feathers); i++, feather++) {
        if (feather->type != 0) {
            feather->timer++;
            feather->pos.x += feather->vel.x;
            feather->pos.y += feather->vel.y;
            feather->pos.z += feather->vel.z;
            feather->vel.x += feather->accel.x;
            feather->vel.y += feather->accel.y;
            feather->vel.z += feather->accel.z;
            if (feather->type == 1) {
                feather->unk_2A++;
                Math_SmoothScaleMaxF(&feather->vel.x, 0.0f, 1.0f, 0.05f);
                Math_SmoothScaleMaxF(&feather->vel.z, 0.0f, 1.0f, 0.05f);
                if (feather->vel.y < -0.5f) {
                    feather->vel.y = -0.5f;
                }

                feather->unk_30 = Math_Sins(feather->unk_2A * 0xBB8) * M_PI * 0.2f;

                if (feather->lifespan < feather->timer) {
                    feather->type = 0;
                }
            }
        }
    }
}

void EnNiw_FeatherDraw(EnNiw* this, GlobalContext* globalCtx) {
    u8 flag = 0;
    s16 i;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    EnNiwFeather* feather = this->feathers;

    OPEN_DISPS(gfxCtx, "../z_en_niw.c", 1897);

    func_80093D84(globalCtx->state.gfxCtx);

    for (i = 0; i < ARRAY_COUNT(this->feathers); i++, feather++) {
        if (feather->type == 1) {
            if (!flag) {
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_060023B0);
                flag++;
            }
            Matrix_Translate(feather->pos.x, feather->pos.y, feather->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(feather->scale, feather->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(feather->unk_30, MTXMODE_APPLY);
            Matrix_Translate(0.0f, -1000.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_en_niw.c", 1913),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06002428);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_niw.c", 1919);
}
