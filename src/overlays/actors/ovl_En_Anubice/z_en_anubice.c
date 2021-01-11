/*
 * File: z_en_anubice.c
 * Overlay: ovl_En_Anubice
 * Description: Anubis Body
 */

#include "z_en_anubice.h"
#include "overlays/actors/ovl_En_Anubice_Tag/z_en_anubice_tag.h"
#include "overlays/actors/ovl_Bg_Hidan_Curtain/z_bg_hidan_curtain.h"
#include "vt.h"

#define FLAGS 0x00000015

#define THIS ((EnAnubice*)thisx)

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B142C(EnAnubice* this, GlobalContext* globalCtx);
void func_809B1524(EnAnubice* this, GlobalContext* globalCtx);
void func_809B15CC(EnAnubice* this, GlobalContext* globalCtx);
void func_809B16AC(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubis_SetupShootFireball(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubis_ShootFireball(EnAnubice* this, GlobalContext* globalCtx);
void EnAnubice_Die(EnAnubice* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000348;
extern AnimationHeader D_0600078C;
extern AnimationHeader D_06000F74;
extern Gfx D_06003468;
extern SkeletonHeader D_06003990;

const ActorInit En_Anubice_InitVars = {
    ACTOR_EN_ANUBICE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubice),
    (ActorFunc)EnAnubice_Init,
    (ActorFunc)EnAnubice_Destroy,
    (ActorFunc)EnAnubice_Update,
    (ActorFunc)EnAnubice_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 29, 103, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable[] = { {
    0x00, 0xF0, 0xF0, 0xF0, 0xF0, 0xF0, 0xF1, 0xF2, 0xF0, 0xF2, 0xF6, 0x22, 0xF0, 0xF0, 0xF0, 0xF0,
    0xF0, 0x23, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xF6, 0xF2, 0xF0, 0xFC, 0xF4, 0x00, 0x00, 0x00, 0x00,
} };

Vec3f D_809B231C = { 0, 0, 0 };
Vec3f D_809B2328 = { 0, 0, 0 };
Vec3f D_809B2334 = { 0, 0, 0 };

void func_809B1120(EnAnubice* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_268 += 1500.0f;
    this->unk_270 = player->actor.posRot.pos.y + this->unk_274;
    Math_ApproachF(&this->actor.posRot.pos.y, this->unk_270, 0.1f, 10.0f);
    Math_ApproachF(&this->unk_274, 10.0f, 0.1f, 0.5f);
    this->actor.velocity.y = Math_SinS(this->unk_268);
}

void EnAnubice_SetFireballRot(EnAnubice* this, GlobalContext* globalCtx) {
    f32 xzdist;
    f32 x;
    f32 y;
    f32 z;
    Player* player = PLAYER;

    x = player->actor.posRot.pos.x - this->fireballPos.x;
    y = player->actor.posRot.pos.y + 10.0f - this->fireballPos.y;
    z = player->actor.posRot.pos.z - this->fireballPos.z;
    xzdist = sqrtf(SQ(x) + SQ(z));

    this->fireballRot.x = 0 - (s16)(Math_FAtan2F(y, xzdist) * 10430.378f);
    this->fireballRot.y = (s16)(Math_FAtan2F(x, z) * 10430.378f);
}

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003990, &D_06000F74, this->jointTable, this->morphTable, 16);

    osSyncPrintf("\n\n");
    // ☆☆☆☆☆ Anubis occurence ☆☆☆☆☆
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ アヌビス発生 ☆☆☆☆☆ \n" VT_RST);

    this->actor.naviEnemyId = 0x3A;

    Collider_InitCylinder(globalCtx, &this->col);
    Collider_SetCylinder(globalCtx, &this->col, &this->actor, &sCylinderInit);

    Actor_SetScale(&this->actor, 0.015f);

    this->actor.colChkInfo.damageTable = sDamageTable;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.shape.unk_08 = -4230.0f;
    this->unk_27C = 0.0f;
    this->actor.flags &= ~1;
    this->unk_298 = this->actor.posRot.pos;
    this->actor.unk_1F = 3;
    this->actionFunc = &func_809B142C;
}

void EnAnubice_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = THIS;
    EnAnubiceTag* temp_v1;

    Collider_DestroyCylinder(globalCtx, &this->col);

    if (this->actor.params != 0) {
        if (this->actor.parent) {}

        temp_v1 = (EnAnubiceTag*)this->actor.parent;
        if (temp_v1 != NULL && temp_v1->actor.update != NULL) {
            temp_v1->anubis = NULL;
        }
    }
}

void func_809B142C(EnAnubice* this, GlobalContext* globalCtx) {
    void* temp_s1;
    Actor* phi_s0;
    s32 phi_s2;

    if (this->unk_25E != 0) {
        if (this->unk_264 == 0) {
            phi_s2 = 0;
            phi_s0 = globalCtx->actorCtx.actorList[6].first;
            while (phi_s0 != NULL) {
                if (phi_s0->id != ACTOR_BG_HIDAN_CURTAIN) {
                    phi_s0 = phi_s0->next;
                } else {
                    this->unk_2B0[phi_s2] = (BgHidanCurtain*)phi_s0;
                    // ☆☆☆☆☆ How many fires? ☆☆☆☆☆
                    osSyncPrintf("\x1b[32m☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %d\n\x1b[m", phi_s2);
                    osSyncPrintf("\x1b[33m☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %x\n\x1b[m", this->unk_2B0[phi_s2]);
                    if (phi_s2 < 4) {
                        phi_s2++;
                    }
                    phi_s0 = phi_s0->next;
                }
            }
            this->unk_264 = 1;
        }
        this->actor.flags |= 1;
        this->actionFunc = &func_809B1524;
    }
}

void func_809B1524(EnAnubice* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&D_06000F74);
    Animation_Change(&this->skelAnime, &D_06000F74, 1.0f, 0.0f, (s16)lastFrame, 0, -10.0f);

    this->actionFunc = &func_809B15CC;
    this->actor.gravity = 0.0f;
    this->actor.velocity.z = 0.0f;
    this->actor.velocity.x = 0.0f;
}

void func_809B15CC(EnAnubice* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.shape.unk_08, 0.5f, 300.0f);
    Math_ApproachF(&this->unk_27C, 70.0f, 0.5f, 5.0f);

    if (this->unk_262 == 0) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 3000, 0);
    }

    if (this->actor.shape.unk_08 > -2.0f) {
        this->actor.shape.unk_08 = 0.0f;

        if (player->swordState != 0) {
            this->actionFunc = &EnAnubis_SetupShootFireball;
        } else if (this->unk_260 != 0) {
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = -1.0f;
            this->actionFunc = &func_809B16AC;
        }
    }
}

#ifdef NON_MATCHING
// float register allocation differences
void func_809B16AC(EnAnubice* this, GlobalContext* globalCtx) {
    f32 pad;
    f32 xzdist;
    f32 xRatio;
    f32 zRatio;
    f32 posX;
    f32 x;
    f32 posZ;
    f32 z2;
    f32 z;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.shape.unk_08, -4230.0f, 0.5f, 300.0f);
    Math_ApproachZeroF(&this->unk_27C, 0.5f, 5.0f);

    if (this->unk_262 == 0) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 3000, 0);
    }

    posX = this->actor.posRot.pos.x;
    x = this->unk_298.x - posX;
    if (fabsf(x) > 3.0f) {
        posZ = this->actor.posRot.pos.z;
        z = this->unk_298.z - posZ;
        if (fabsf(z) > 3.0f) {
            z2 = z;
            xzdist = sqrtf(SQ(x) + SQ(z2));
            xRatio = x / xzdist;
            if (1) {
                if (1) {}
                zRatio = z2 / xzdist;
            }
            this->actor.posRot.pos.x = (xRatio * 8) + posX;
            this->actor.posRot.pos.z = (zRatio * 8.0f) + posZ;
            return;
        }
    }

    if (&z) {}

    if (this->actor.shape.unk_08 < -4220.0f) {
        this->actor.shape.unk_08 = -4230.0f;
        this->unk_25E = this->unk_260 = 0;
        this->actionFunc = func_809B142C;
        this->actor.gravity = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B16AC.s")
#endif

// 809B17FC
void EnAnubis_SetupShootFireball(EnAnubice* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&D_0600078C);

    this->animLastFrame = lastFrame;
    Animation_Change(&this->skelAnime, &D_0600078C, 1.0f, 0.0f, lastFrame, 2, -10.0f);
    this->actionFunc = &EnAnubis_ShootFireball;
    this->actor.velocity.z = 0.0f;
    this->actor.velocity.x = 0.0f;
}

// 809B1884
void EnAnubis_ShootFireball(EnAnubice* this, GlobalContext* globalCtx) {
    f32 curFrame;

    curFrame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_262 == 0) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0xBB8, 0);
    }

    EnAnubice_SetFireballRot(this, globalCtx);

    if (curFrame == 12.0f) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ANUBICE_FIRE, this->fireballPos.x,
                    this->fireballPos.y + 15.0f, this->fireballPos.z, this->fireballRot.x, this->fireballRot.y, 0, 0);
    }

    if (this->animLastFrame <= curFrame) {
        this->actionFunc = func_809B1524;
    }
}

// 809B1984
void EnAnubice_SetupDie(EnAnubice* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&D_06000348);

    this->animLastFrame = lastFrame;
    Animation_Change(&this->skelAnime, &D_06000348, 1.0f, 0.0f, lastFrame, 2, -20.0f);

    this->unk_256 = 0;
    this->unk_258 = 0;
    this->unk_25A = 20;
    this->actor.velocity.z = 0.0f;
    this->actor.velocity.x = 0.0f;
    this->actor.gravity = -1.0f;

    if (BgCheck_SphVsFirstPoly(&globalCtx->colCtx, &this->fireballPos, 70.0f) != 0) {
        this->unk_256 = 1;
        this->unk_258 = this->actor.shape.rot.x - 0x7F00;
    }

    this->actionFunc = &EnAnubice_Die;
}

// 809B1A54
void EnAnubice_Die(EnAnubice* this, GlobalContext* globalCtx) {
    f32 curFrame;
    f32 phi_f2;
    Vec3f sp4C;
    Vec3f fireEffectPos;
    s32 pad;

    sp4C = D_809B231C;
    fireEffectPos = D_809B2328;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.shape.unk_10, 0.4f, 0.25f);

    if (this->unk_256 != 0) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->unk_258, 1, 10000, 0);
        if (fabsf(this->actor.shape.rot.y - this->unk_258) < 100.0f) {
            this->unk_256 = 0;
        }
    }

    curFrame = this->skelAnime.curFrame;
    phi_f2 = curFrame * -3000.0f;
    phi_f2 = MAX(-11000.0f, phi_f2);

    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
    Matrix_RotateX((phi_f2 / 32768.0f) * M_PI, MTXMODE_APPLY);
    sp4C.y = Rand_CenteredFloat(10.0f) + 30.0f;
    Matrix_MultVec3f(&sp4C, &fireEffectPos);
    fireEffectPos.x += this->actor.posRot.pos.x + Rand_CenteredFloat(40.0f);
    fireEffectPos.y += this->actor.posRot.pos.y + Rand_CenteredFloat(40.0f);
    fireEffectPos.z += this->actor.posRot.pos.z + Rand_CenteredFloat(30.0f);
    func_8003426C(&this->actor, 0x4000, 0x80, 0, 8);
    EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &fireEffectPos, 100, 0, 0, -1);

    if (this->animLastFrame <= curFrame && (this->actor.bgCheckFlags & 1)) {
        Math_ApproachF(&this->actor.shape.unk_08, -4230.0f, 0.5f, 300.0f);
        if (this->actor.shape.unk_08 < -2000.0f) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xC0);
            Actor_Kill(&this->actor);
        }
    }
}

void EnAnubice_Update(Actor* thisx, GlobalContext* globalCtx) {
    f32 zero;
    BgHidanCurtain* hidanCurtain;
    s32 i;
    Vec3f sp48;
    Vec3f sp3C;
    EnAnubice* this = THIS;

    if (this->actionFunc != EnAnubice_SetupDie && this->actionFunc != EnAnubice_Die &&
        this->actor.shape.unk_08 == 0.0f) {
        func_809B1120(this, globalCtx);
        for (i = 0; i < 5; i++) {
            hidanCurtain = this->unk_2B0[i];

            if (hidanCurtain != NULL && fabsf(hidanCurtain->actor.posRot.pos.x - this->actor.posRot.pos.x) < 60.0f &&
                fabsf(this->unk_2B0[i]->actor.posRot.pos.z - this->actor.posRot.pos.z) < 60.0f &&
                hidanCurtain->timer != 0) {
                Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
                this->actor.flags &= ~1;
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_DEAD);
                this->actionFunc = EnAnubice_SetupDie;
                return;
            }
        }

        if (this->col.base.acFlags & 2) {
            this->col.base.acFlags &= ~2;
            if (this->actor.colChkInfo.damageEffect == 2) {
                Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
                this->actor.flags &= ~1;
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_ANUBIS_DEAD);
                this->actionFunc = EnAnubice_SetupDie;
                return;
            }

            if (this->unk_262 == 0) {
                this->unk_25C = 10;
                this->unk_262 = 1;

                sp48.x = 0.0f;
                sp48.y = 0.0f;
                sp48.z = -10.0f;
                sp3C.x = 0.0f;
                sp3C.y = 0.0f;
                sp3C.z = 0.0f;

                Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
                Matrix_MultVec3f(&sp48, &sp3C);

                this->actor.velocity.x = sp3C.x;
                this->actor.velocity.z = sp3C.z;
                this->unk_2A4.x = -sp3C.x;
                this->unk_2A4.z = -sp3C.z;

                Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_CUTBODY);
            }
        }

        if (this->unk_262 != 0) {
            this->actor.shape.rot.y += 6500;
            Math_ApproachF(&this->actor.velocity.x, this->unk_2A4.x, 0.3f, 1.0f);
            Math_ApproachF(&this->actor.velocity.z, this->unk_2A4.z, 0.3f, 1.0f);

            zero = 0.0f;
            if (zero) {}

            if (this->unk_25C == 0) {
                this->actor.velocity.z = zero;
                this->actor.velocity.x = zero;
                this->unk_2A4.z = 0.0f;
                this->unk_2A4.x = 0.0f;
                this->unk_262 = 0;
            }
        }
    }

    this->unk_254++;

    if (this->unk_25C != 0) {
        this->unk_25C--;
    }

    if (this->unk_25A != 0) {
        this->unk_25A--;
    }

    this->actionFunc(this, globalCtx);

    this->actor.velocity.y += this->actor.gravity;
    func_8002D7EC(&this->actor);

    if (this->unk_260 == 0) {
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 5.0f, 10.0f, 0x1D);
    } else {
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 5.0f, 10.0f, 0x1C);
    }

    if (this->actionFunc != EnAnubice_SetupDie && this->actionFunc != EnAnubice_Die) {
        Actor_SetHeight(&this->actor, this->unk_27C);
        Collider_CylinderUpdate(&this->actor, &this->col);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->col.base);

        if (this->unk_262 == 0 && this->actor.shape.unk_08 == 0.0f) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->col.base);
        }
    }
}

// 809B2104
s32 EnAnubis_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                              void* thisx) {
    EnAnubice* this = THIS;

    if (limbIndex == 0xD) {
        rot->z += this->unk_278;
    }

    return 0;
}

// 809B2150
void EnAnubis_PostLimbDraw(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnAnubice* this = THIS;
    Vec3f sp38;

    sp38 = D_809B2334;
    if (limbIndex == 0xD) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_anubice.c", 853);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_anubice.c", 856),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, &D_06003468);
        Matrix_MultVec3f(&sp38, &this->fireballPos);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_anubice.c", 868);
    }
}

void EnAnubice_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnAnubice* this = THIS;

    func_80093D84(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, &EnAnubis_OverrideLimbDraw,
                      &EnAnubis_PostLimbDraw, this);
}
