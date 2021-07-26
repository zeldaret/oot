/*
 * File: z_object_kankyo.c
 * Overlay: ovl_Object_Kankyo
 * Description: Environmental Effects
 */

#include "z_object_kankyo.h"
#include "objects/object_demo_kekkai/object_demo_kekkai.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x02000030

#define THIS ((ObjectKankyo*)thisx)

void ObjectKankyo_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_01000000;
extern UNK_TYPE D_06009620;

static u32 D_80BA58E0[] = {
 gEffLightning1Tex, gEffLightning2Tex, gEffLightning3Tex, gEffLightning4Tex, gEffLightning5Tex, gEffLightning6Tex, gEffLightning7Tex, gEffLightning8Tex
};

static s32 D_80BA5900[] = {
 0x060015E0, 0x060025E0, 0x060035E0, 0x060045E0, 0x060055E0, 0x060065E0, 0x060075E0, 0x060085E0
};

const ActorInit Object_Kankyo_InitVars = {
    ACTOR_OBJECT_KANKYO,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjectKankyo),
    (ActorFunc)ObjectKankyo_Init,
    (ActorFunc)ObjectKankyo_Destroy,
    (ActorFunc)ObjectKankyo_Update,
    (ActorFunc)ObjectKankyo_Draw,
};

static u8 D_80BA5940 = 0;
static s16 D_80BA5944 = 0;


void ObjectKankyo_SetupAction(ObjectKankyo *this, ObjectKankyoActionFunc action) {
    this->actionFunc = action;
}

void func_80BA2DD4(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA4BFC(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA2DC8(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA4914(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA5304(ObjectKankyo *this, GlobalContext *globalCtx);
void ObjectKankyo_SetupAction(ObjectKankyo *this, ObjectKankyoActionFunc func);

void ObjectKankyo_Init(Actor *thisx, GlobalContext *globalCtx) {
    ObjectKankyo *this = THIS;
    s16 i;
    s32 pad;

    for (i = 0; i < 0x40; i++) {
        this->unk_14C[i].unk0 = 0;
    }
    this->actor.room = -1;
    switch (this->actor.params) {
        case 0:
            if (D_80BA5940 == 0) {
                ObjectKankyo_SetupAction(this, func_80BA2DD4);
                D_80BA5940 = (u8)1U;
            } else {
                Actor_Kill(&this->actor);
            }
            break;

        case 3:
            if (D_80BA5940 == 0) {
                ObjectKankyo_SetupAction(this, func_80BA2DC8);
                D_80BA5940 = (u8)1U;
            } else {
                Actor_Kill(&this->actor);
            }
            break;

        case 2:
            ObjectKankyo_SetupAction(this, func_80BA4914);
            break;

        case 4:
            this->unk_14C[0].unk40 = 0;
            this->unk_14C[0].unk4C = 0.0f;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, 7);
            this->unk_1659 = 0;
            ObjectKankyo_SetupAction(this, func_80BA4BFC);
            break;

        case 5:
            this->unk_14C[0].unk40 = 0;
            this->unk_14C[0].unk4C = 0.0f;

            for (i = 0; i < 6; i++) {
                this->unk_14C[i].unk44 = 0.1f;
            }

            if (Flags_GetEventChkInf(0xBB) != 0) {
                this->unk_14C[0].unk44 = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBC) != 0) {
                this->unk_14C[1].unk44 = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBD) != 0) {
                this->unk_14C[2].unk44 = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBE) != 0) {
                this->unk_14C[3].unk44 = 0.0f;
            }
            if (Flags_GetEventChkInf(0xBF) != 0) {
                this->unk_14C[4].unk44 = 0.0f;
            }
            if (Flags_GetEventChkInf(0xAD) != 0) {
                this->unk_14C[5].unk44 = 0.0f;
            }

            if (gSaveContext.cutsceneTrigger != 0) {
                if (gSaveContext.entranceIndex == 0x538) {
                    this->unk_14C[0].unk44 = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x53C) {
                    this->unk_14C[1].unk44 = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x540) {
                    this->unk_14C[2].unk44 = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x544) {
                    this->unk_14C[3].unk44 = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x548) {
                    this->unk_14C[4].unk44 = 0.1f;
                }
                if (gSaveContext.entranceIndex == 0x54C) {
                    this->unk_14C[5].unk44 = 0.1f;
                }
            }
            this->unk_1659 = 0;
            ObjectKankyo_SetupAction(this, func_80BA5304);
            break;
    }
}

void ObjectKankyo_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    Actor_Kill(thisx);
}

void func_80BA2DC8(ObjectKankyo *this, GlobalContext *globalCtx) {
}

void func_80BA2DD4(ObjectKankyo *this, GlobalContext *globalCtx) {
    static Vec3f D_80BA5960 = {0.0f, 0.0f, 0.0f};
    Player *player;
    f32 temp_f0;
    s32 phi_v1_2;
    f32 f2;
    f32 f12;
    f32 f14;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 temp_f12;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    Vec3f spB8 = {0.0f, 0.0f, 0.0f};
    Vec3f spAC = {0.0f, 0.0f, 0.0f};
    f32 dist;
    s16 i;
    f32 sp7C;
    f32 sp78;
    f32 sp74;

    player = GET_PLAYER(globalCtx);

    if (globalCtx->sceneNum == 0x55 && gSaveContext.sceneSetupIndex == 7) {
        dist = Math3D_Vec3f_DistXYZ(&this->unk_164C, &globalCtx->view.eye);

        this->unk_164C.x = globalCtx->view.eye.x;
        this->unk_164C.y = globalCtx->view.eye.y;
        this->unk_164C.z = globalCtx->view.eye.z;

        dist /= 30.0f;
        if (dist > 1.0f) {
            dist = 1.0f;
        }

        func_800F436C(&D_80BA5960, 0x2071U, (0.4f * dist) + 0.6f);
        switch (globalCtx->csCtx.frames) {
            case 0x1D9:
                func_800788CC(0x6844U);
                break;

            case 0x247:
                func_800F4524(&D_801333D4, 0x685FU, 0x20U);
                break;

            case 0x2FB:
                func_80078884(0x2072U);
                break;

            case 0x303:
                func_80078884(0x6865U);
                break;
        }
    }

    if (globalCtx->envCtx.unk_EE[3] < 64 && (gSaveContext.entranceIndex != 0xEE || gSaveContext.sceneSetupIndex != 4 || globalCtx->envCtx.unk_EE[3])) {
        globalCtx->envCtx.unk_EE[3] += 16;
    }

    for (i = 0; i < globalCtx->envCtx.unk_EE[3]; i++) {
        f2 = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
        f12 = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
        f14 = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
        temp_f0 = sqrtf(SQ(f2) + SQ(f12) + SQ(f14));

        sp74 = f2 / temp_f0;
        sp78 = f12 / temp_f0;
        sp7C = f14 / temp_f0;
        spDC = sp74;
        spD8 = sp78;
        spD4 = sp7C;

        switch (this->unk_14C[i].unk0) {
            case 0:
                this->unk_14C[i].unk1C.x = globalCtx->view.eye.x + (spDC * 80.0f);
                this->unk_14C[i].unk1C.y = globalCtx->view.eye.y + (spD8 * 80.0f);
                this->unk_14C[i].unk1C.z = globalCtx->view.eye.z + (spD4 * 80.0f);

                this->unk_14C[i].unk4 = (Rand_ZeroOne() - 0.5f) * 160.0f;
                this->unk_14C[i].unk8 = 30.0f;
                this->unk_14C[i].unkC = (Rand_ZeroOne() - 0.5f) * 160.0f;
                this->unk_14C[i].unk38 = Rand_ZeroOne() * 1.6f + 0.5f;
                this->unk_14C[i].unk40 = 0;
                this->unk_14C[i].unk3C = Rand_ZeroOne() * 65535.0f;
                this->unk_14C[i].unk44 = 0.1f;
                this->unk_14C[i].unk28 = Rand_ZeroOne() * 360.0f;
                this->unk_14C[i].unk2C = Rand_ZeroOne() * 360.0f;
                this->unk_14C[i].unk30 = Rand_ZeroOne() * 360.0f;
                this->unk_14C[i].unk0 += 1;
                this->unk_14C[i].unk50 = 0;
                break;

            case 1:
            case 2:
                this->unk_14C[i].unk3C++;
                spCC = globalCtx->view.eye.x + sp74 * 80.0f;
                spC8 = globalCtx->view.eye.y + sp78 * 80.0f;
                spC4 = globalCtx->view.eye.z + sp7C * 80.0f;

                this->unk_14C[i].unk10 = this->unk_14C[i].unk4;
                this->unk_14C[i].unk14 = this->unk_14C[i].unk8;
                this->unk_14C[i].unk18 = this->unk_14C[i].unkC;

                phi_v1_2 = 1;
                if (player->actor.velocity.x + player->actor.velocity.y + player->actor.velocity.z == -4) {
                    phi_v1_2 = 0;
                    this->unk_14C[i].unk50++;
                } else {
                    this->unk_14C[i].unk50 = 0;
                }

                if (this->unk_14C[i].unk0 == 1) {
                    if (i < 32 && !phi_v1_2 && this->unk_14C[i].unk50 > 256) {
                        this->unk_14C[i].unk50 = 0;
                        if (Rand_ZeroOne() < 0.5f) {
                            this->unk_14C[i].unk48 =   (s16)(Rand_ZeroOne() * 200.0f) + 200;
                        } else {
                            this->unk_14C[i].unk48 = -((s16)(Rand_ZeroOne() * 200.0f) + 200);
                        }

                        this->unk_14C[i].unk4A = (s16)(Rand_ZeroOne() * 50.0f) + 0xF;
                        this->unk_14C[i].unk4C = ((Rand_ZeroOne() * 10.0f) + 10.0f) * 0.01f;

                        temp_f0 = Rand_ZeroOne();
                        if (temp_f0 < 0.2f) {
                            D_80BA5944 = 0x1;
                        } else if (temp_f0 < 0.2f) {
                            D_80BA5944 = 0x3;
                        } else if (temp_f0 < 0.4f) {
                            D_80BA5944 = 0x7;
                        } else {
                            D_80BA5944 = 0xF;
                        }

                        if (!(i & D_80BA5944)) {
                            this->unk_14C[i].unk8 = 0;
                        }

                        this->unk_14C[i].unk0 = 2;
                        this->unk_14C[i].unk38 = 0;
                    }

                    Math_SmoothStepToF(&this->unk_14C[i].unk44, 0.1f, 0.10f, 0.001f, 0.00001f);
                    Math_SmoothStepToF(&this->unk_14C[i].unk34, this->unk_14C[i].unk38, 0.5f, 0.2f, 0.02f);
                    this->unk_14C[i].unk4 += sinf(this->unk_14C[i].unk28) * this->unk_14C[i].unk34;
                    this->unk_14C[i].unk8 += sinf(this->unk_14C[i].unk2C) * this->unk_14C[i].unk34;
                    this->unk_14C[i].unkC += sinf(this->unk_14C[i].unk30) * this->unk_14C[i].unk34;

                    switch ((i >> 1) & 3) {
                        case 0:
                            this->unk_14C[i].unk28 += 0.008f;
                            this->unk_14C[i].unk2C += 0.05f * Rand_ZeroOne();
                            this->unk_14C[i].unk30 += 0.015f;
                            break;

                        case 1:
                            this->unk_14C[i].unk28 += 0.01f * Rand_ZeroOne();
                            this->unk_14C[i].unk2C += 0.05f * Rand_ZeroOne();
                            this->unk_14C[i].unk30 += 0.005f * Rand_ZeroOne();
                            break;

                        case 2:
                            this->unk_14C[i].unk28 += 0.01f * Rand_ZeroOne();
                            this->unk_14C[i].unk2C += 0.4f * Rand_ZeroOne();
                            this->unk_14C[i].unk30 += 0.004f * Rand_ZeroOne();
                            break;

                        case 3:
                            this->unk_14C[i].unk28 += 0.01 * Rand_ZeroOne();
                            this->unk_14C[i].unk2C += 0.08f * Rand_ZeroOne();
                            this->unk_14C[i].unk30 += 0.05f * Rand_ZeroOne();
                            break;

                    }
                } else if (this->unk_14C[i].unk0 == 2) {
                    if (phi_v1_2 || this->unk_14C[i].unk50 > 1280) {
                        this->unk_14C[i].unk50 = 0;
                        this->unk_14C[i].unk0 = 1;
                        this->unk_14C[i].unk34 = 1.5f;
                        this->unk_14C[i].unk38 = (Rand_ZeroOne() * 1.6f) + 0.5f;
                    }

                    if (!(i & D_80BA5944)) {
                        Math_SmoothStepToF(&this->unk_14C[i].unk44, 0.25f, 0.1f, 0.001f, 0.00001f);

                        Math_SmoothStepToF(&this->unk_14C[i].unk1C.x, player->actor.world.pos.x, 0.5f, 1, 0.2f);
                        Math_SmoothStepToF(&this->unk_14C[i].unk1C.y, player->actor.world.pos.y + 50.0f, 0.5f, 1.0f, 0.2f);
                        Math_SmoothStepToF(&this->unk_14C[i].unk1C.z, player->actor.world.pos.z, 0.5f, 1, 0.2f);

                        Math_SmoothStepToF(&this->unk_14C[i].unk4, Math_SinS(this->unk_14C[i].unk3E - 0x8000) * this->unk_14C[i].unk4A, 0.5f, 2.0f, 0.2f);
                        Math_SmoothStepToF(&this->unk_14C[i].unkC, Math_CosS(this->unk_14C[i].unk3E - 0x8000) * this->unk_14C[i].unk4A, 0.5f, 2.0f, 0.2f);
                        this->unk_14C[i].unk3E += this->unk_14C[i].unk48;
                        this->unk_14C[i].unk8  += sinf(this->unk_14C[i].unk2C);

                        this->unk_14C[i].unk28 += 0.2f * Rand_ZeroOne();
                        this->unk_14C[i].unk2C += this->unk_14C[i].unk4C;
                        this->unk_14C[i].unk30 += 0.1f * Rand_ZeroOne();

                        this->unk_14C[i].unk4 = Math_SinS(this->unk_14C[i].unk3E - 0x8000) * this->unk_14C[i].unk4A;
                        this->unk_14C[i].unkC = Math_CosS(this->unk_14C[i].unk3E - 0x8000) * this->unk_14C[i].unk4A;
                    } else {
                        // typo of 0.01f?
                        Math_SmoothStepToF(&this->unk_14C[i].unk44, .1f, 0.1f, 0.001f, 0.00001f);
                        Math_SmoothStepToF(&this->unk_14C[i].unk34, 1.5f, 0.5f, 0.1f, 0.0002f);
                        this->unk_14C[i].unk4 = this->unk_14C[i-1].unk10 + (this->unk_14C[i-1].unk1C.x - this->unk_14C[i].unk1C.x);
                        this->unk_14C[i].unk8 = this->unk_14C[i-1].unk14 + (this->unk_14C[i-1].unk1C.y - this->unk_14C[i].unk1C.y);
                        this->unk_14C[i].unkC = this->unk_14C[i-1].unk18 + (this->unk_14C[i-1].unk1C.z - this->unk_14C[i].unk1C.z);
                    }
                }

                if (this->unk_14C[i].unk0 != 2) {
                    temp_f12 = 130.0f;
                    if (this->unk_14C[i].unk1C.x + this->unk_14C[i].unk4 - spCC >  temp_f12 ||
                        this->unk_14C[i].unk1C.x + this->unk_14C[i].unk4 - spCC < -temp_f12 ||
                        this->unk_14C[i].unk1C.y + this->unk_14C[i].unk8 - spC8 >  temp_f12 ||
                        this->unk_14C[i].unk1C.y + this->unk_14C[i].unk8 - spC8 < -temp_f12 ||
                        this->unk_14C[i].unk1C.z + this->unk_14C[i].unkC - spC4 >  temp_f12 ||
                        this->unk_14C[i].unk1C.z + this->unk_14C[i].unkC - spC4 < -temp_f12) {

                        if (this->unk_14C[i].unk1C.x + this->unk_14C[i].unk4 - spCC > temp_f12) {
                            this->unk_14C[i].unk1C.x = spCC - temp_f12;
                            this->unk_14C[i].unk4 = 0;
                        }
                        if (this->unk_14C[i].unk1C.x + this->unk_14C[i].unk4 - spCC < -temp_f12) {
                            this->unk_14C[i].unk1C.x = spCC + temp_f12;
                            this->unk_14C[i].unk4 = 0;
                        }
                        if (this->unk_14C[i].unk1C.y + this->unk_14C[i].unk8 - spC8 > 50.0f) {
                            this->unk_14C[i].unk1C.y = spC8 - 50.0f;
                            this->unk_14C[i].unk8 = 0;
                        }
                        if (this->unk_14C[i].unk1C.y + this->unk_14C[i].unk8 - spC8 < -50.0f) {
                            this->unk_14C[i].unk1C.y = spC8 + 50.0f;
                            this->unk_14C[i].unk8 = 0;
                        }
                        if (this->unk_14C[i].unk1C.z + this->unk_14C[i].unkC - spC4 > temp_f12) {
                            this->unk_14C[i].unk1C.z = spC4 - temp_f12;
                            this->unk_14C[i].unkC = 0;
                        }
                        if (this->unk_14C[i].unk1C.z + this->unk_14C[i].unkC - spC4 < -temp_f12) {
                            this->unk_14C[i].unk1C.z = spC4 + temp_f12;
                            this->unk_14C[i].unkC = 0;
                        }
                    }
                }
                break;

            case 3:
                this->unk_14C[i].unk0 = 0;
                break;
        }
    }
}

void ObjectKankyo_Update(Actor *thisx, GlobalContext *globalCtx) {
    ObjectKankyo *this = THIS;
    this->actionFunc(this, globalCtx);
}

void func_80BA3C94(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA414C(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA49BC(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA4D7C(ObjectKankyo *this, GlobalContext *globalCtx);
void func_80BA54AC(ObjectKankyo *this, GlobalContext *globalCtx);

void ObjectKankyo_Draw(Actor *thisx, GlobalContext *globalCtx) {
    ObjectKankyo *this = THIS;
    switch (this->actor.params) {
        case 0:
            func_80BA3C94(this, globalCtx);
            break;
        case 2:
            func_80BA49BC(this, globalCtx);
            break;
        case 3:
            func_80BA414C(this, globalCtx);
            break;
        case 4:
            func_80BA4D7C(this, globalCtx);
            break;
        case 5:
            func_80BA54AC(this, globalCtx);
            break;
        default:
            break;
    }
}

void func_80BA3C94(ObjectKankyo *this2, GlobalContext *globalCtx2) {
    ObjectKankyo *this = this2;
    GlobalContext *globalCtx = globalCtx2;
    s16 i;
    Vec3f spA0 = {0.0f, 0.0f, 0.0f};
    Vec3f sp94 = {0.0f, 0.0f, 0.0f};
    f32 phi_f0;

    if ((globalCtx->cameraPtrs[0]->unk_14C & 0x100) == 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 807);
        POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 20);
        gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(gSun1Tex));
        gSPDisplayList(POLY_XLU_DISP++, gKokiriDustMoteTextureLoadDL);


        for (i = 0; i < globalCtx->envCtx.unk_EE[3]; i++) {
            Matrix_Translate(this->unk_14C[i].unk1C.x + this->unk_14C[i].unk4,
                             this->unk_14C[i].unk1C.y + this->unk_14C[i].unk8,
                             this->unk_14C[i].unk1C.z + this->unk_14C[i].unkC, 0U);

            phi_f0 = this->unk_14C[i].unk40 / 50.0f;
            if (phi_f0 > 1.0f) {
                phi_f0 = 1.0f;
            }
            Matrix_Scale(this->unk_14C[i].unk44 * phi_f0, this->unk_14C[i].unk44 * phi_f0, this->unk_14C[i].unk44 * phi_f0, 1U);
            if (i < 32) {
                if (this->unk_14C[i].unk0 != 2) {
                    if (this->unk_14C[i].unk40 > 0) {
                        this->unk_14C[i].unk40--;
                    }
                } else if (this->unk_14C[i].unk40 < 0x64) {
                    this->unk_14C[i].unk40++;
                }
            } else {
                if (this->unk_14C[i].unk0 != 2) {
                    if ((this->unk_14C[i].unk3C & 0x1F) < 0x10) {
                        if (this->unk_14C[i].unk40 < 235) {
                            this->unk_14C[i].unk40 += 20;
                        }
                    } else if (this->unk_14C[i].unk40 > 20) {
                        this->unk_14C[i].unk40 -= 20;
                    }
                } else {
                    if ((this->unk_14C[i].unk3C & 0xF) < 8) {
                        if (this->unk_14C[i].unk40 < 255) {
                            this->unk_14C[i].unk40 += 100;
                        }
                    } else if (this->unk_14C[i].unk40 > 10) {
                        this->unk_14C[i].unk40 -= 10;
                    }
                }
            }


            gDPPipeSync(POLY_XLU_DISP++);

            switch (i & 1) {
                case 0:
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xff, 0xff, 0x9b, this->unk_14C[i].unk40);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0xFA, 0xB4, 0x00, this->unk_14C[i].unk40);
                    break;

                case 1:
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xff, 0xff, 0xff, this->unk_14C[i].unk40);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0x00, 0x64, 0xff, this->unk_14C[i].unk40);
                    break;
            }
            Matrix_Mult(&globalCtx->mf_11DA0, 1U);
            Matrix_RotateZ(globalCtx->state.frames * 20.0f * /* D_80BA5C9C */ 0.017453292f, 1U);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 913), G_MTX_LOAD);
            gSPDisplayList(POLY_XLU_DISP++, gKokiriDustMoteDL);
        }
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 922);
    }
}

void func_80BA414C(ObjectKankyo *this2, GlobalContext *globalCtx2) {
    ObjectKankyo *this = this2;
    GlobalContext *globalCtx = globalCtx2;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2;
    f32 temp_f16;
    f32 temp;
    //f32 temp_f6;
    Vec3f spE0 = {0.0f, 0.0f, 0.0f};
    Vec3f spD4 = {0.0f, 0.0f, 0.0f};
    f32 eighty;
    s16 phi_s4;
    s32 pad;

    //spE0 = D_80BA5984;
    //spD4 = D_80BA5990;
    if ((globalCtx->cameraPtrs[0]->unk_14C & 0x100) == 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 958);
        if (globalCtx->envCtx.unk_EE[2] < globalCtx->envCtx.unk_EE[3]) {
            if ((globalCtx->state.frames & 0xF) == 0) {
                globalCtx->envCtx.unk_EE[2] += 2;
            }
        } else if (globalCtx->envCtx.unk_EE[2] > globalCtx->envCtx.unk_EE[3]) {
            if ((globalCtx->state.frames & 0xF) == 0) {
                globalCtx->envCtx.unk_EE[2] -= 2;
            }
        }

        eighty = 80.0f;
        for (phi_s4 = 0; phi_s4 < globalCtx->envCtx.unk_EE[2]; phi_s4++) {
            switch (this->unk_14C[phi_s4].unk0) {
                case 0:
                    temp_f2 = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
                    temp_f12 = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
                    temp_f14 = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
                    temp_f0 = sqrtf(SQ(temp_f2) + SQ(temp_f12) + SQ(temp_f14));

                    // fake
                    temp = temp_f14 / temp_f0;
                    this->unk_14C[phi_s4].unk1C.x = globalCtx->view.eye.x + (temp_f2 ) / temp_f0 * eighty;
                    this->unk_14C[phi_s4].unk1C.y = globalCtx->view.eye.y + (temp_f12) / temp_f0 * eighty;
                    this->unk_14C[phi_s4].unk1C.z = globalCtx->view.eye.z +  temp * eighty;

                    this->unk_14C[phi_s4].unk4 = (Rand_ZeroOne() - 0.5f) * 160.0f;
                    this->unk_14C[phi_s4].unk8 = eighty;
                    this->unk_14C[phi_s4].unkC = (Rand_ZeroOne() - 0.5f) * 160.0f;
                    if (this->unk_14C[phi_s4].unk1C.y + this->unk_14C[phi_s4].unk8 < 50.0f) {
                        this->unk_14C[phi_s4].unk1C.y = 50.0f;
                    }
                    this->unk_14C[phi_s4].unk34 = Rand_ZeroOne() * 5.0f + 0.5f;
                    this->unk_14C[phi_s4].unk28 = Rand_ZeroOne() * 360.0f;
                    this->unk_14C[phi_s4].unk30 = Rand_ZeroOne() * 360.0f;
                    this->unk_14C[phi_s4].unk0++;
                    break;

                case 1:
                    temp_f2 =  globalCtx->view.lookAt.x - globalCtx->view.eye.x;
                    temp_f12 = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
                    temp_f14 = globalCtx->view.lookAt.z - globalCtx->view.eye.z;

                    temp_f0 = sqrtf(SQ(temp_f2) + SQ(temp_f12) + SQ(temp_f14));

                    temp_f26 = globalCtx->view.eye.x +  (((temp_f2) / temp_f0) * eighty);
                    temp_f16 = globalCtx->view.eye.y + (((temp_f12) / temp_f0) * eighty);
                    temp_f10 = globalCtx->view.eye.z + (((temp_f14) / temp_f0) * eighty);

                    this->unk_14C[phi_s4].unk28 += 0.049999997f * Rand_ZeroOne();
                    this->unk_14C[phi_s4].unk30 += 0.049999997f * Rand_ZeroOne();
                    this->unk_14C[phi_s4].unk4 += sinf(this->unk_14C[phi_s4].unk28 * 0.01f);
                    this->unk_14C[phi_s4].unkC += cosf(this->unk_14C[phi_s4].unk30 * 0.01f);
                    this->unk_14C[phi_s4].unk8 += -this->unk_14C[phi_s4].unk34;

                    if (this->unk_14C[phi_s4].unk1C.y + this->unk_14C[phi_s4].unk8 < this->actor.world.pos.y ||
                        this->unk_14C[phi_s4].unk1C.y + this->unk_14C[phi_s4].unk8 < globalCtx->view.eye.y - 150.0f) {
                        this->unk_14C[phi_s4].unk0++;
                    }

                    temp_f24 = 80.f;
                    if (this->unk_14C[phi_s4].unk1C.x + this->unk_14C[phi_s4].unk4 - temp_f26 > temp_f24 ||
                        this->unk_14C[phi_s4].unk1C.x + this->unk_14C[phi_s4].unk4 - temp_f26 < -temp_f24 ||
                        this->unk_14C[phi_s4].unk1C.y + this->unk_14C[phi_s4].unk8 - temp_f16 > temp_f24 ||
                        this->unk_14C[phi_s4].unk1C.y + this->unk_14C[phi_s4].unk8 - temp_f16 < -temp_f24 ||
                        this->unk_14C[phi_s4].unk1C.z + this->unk_14C[phi_s4].unkC - temp_f10 > temp_f24 ||
                        this->unk_14C[phi_s4].unk1C.z + this->unk_14C[phi_s4].unkC - temp_f10 < -temp_f24) {
                        if (this->unk_14C[phi_s4].unk1C.x + this->unk_14C[phi_s4].unk4 - temp_f26 > temp_f24) {
                            this->unk_14C[phi_s4].unk1C.x = temp_f26 - temp_f24;
                            this->unk_14C[phi_s4].unk4 = 0;
                        }
                        if (this->unk_14C[phi_s4].unk1C.x + this->unk_14C[phi_s4].unk4 - temp_f26 < -temp_f24) {
                            this->unk_14C[phi_s4].unk1C.x = temp_f26 + temp_f24;
                            this->unk_14C[phi_s4].unk4 = 0;
                        }
                        if (this->unk_14C[phi_s4].unk1C.z + this->unk_14C[phi_s4].unkC - temp_f10 > temp_f24) {
                            this->unk_14C[phi_s4].unk1C.z = temp_f10 - temp_f24;
                            this->unk_14C[phi_s4].unkC = 0;
                        }
                        if (this->unk_14C[phi_s4].unk1C.z + this->unk_14C[phi_s4].unkC - temp_f10 < -temp_f24) {
                            this->unk_14C[phi_s4].unk1C.z = temp_f10 + temp_f24;
                            this->unk_14C[phi_s4].unkC = 0;
                        }
                    }
                    break;

                case 2:
                    this->unk_14C[phi_s4].unk0 = 0;
                    break;
            }
            if (1) {}
            if (1) {}
            Matrix_Translate(this->unk_14C[phi_s4].unk1C.x + this->unk_14C[phi_s4].unk4,
                             this->unk_14C[phi_s4].unk1C.y + this->unk_14C[phi_s4].unk8,
                             this->unk_14C[phi_s4].unk1C.z + this->unk_14C[phi_s4].unkC, 0);
            Matrix_Scale(0.05f, 0.05f, 0.05f, 1);
            gDPPipeSync(POLY_XLU_DISP++);

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xC8, 0xC8, 0xC8, 0xB4);

            gDPSetEnvColor(POLY_XLU_DISP++, 0xC8, 0xC8, 0xC8, 0xB4);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1107), G_MTX_LOAD);

            gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(gDust5Tex));

            func_80094C50(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, &D_01000000, 0);

            gDPPipeSync(POLY_XLU_DISP++);

            gSPDisplayList(POLY_XLU_DISP++, gEffDustDL);

            gDPPipeSync(POLY_XLU_DISP++);
        }
        //Graph_CloseDisps(&spB4, globalCtx->state.gfxCtx, "../z_object_kankyo.c", 0x467);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1127);
    }
}

void func_80BA4914(ObjectKankyo *this, GlobalContext *globalCtx) {
    if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[0] != 0) {
        switch (this->unk_14C[0].unk0) {
            case 0:
                this->unk_14C[0].unk50 = 0;
                if (globalCtx->csCtx.npcActions[0]->action == 2) {
                    this->unk_14C[0].unk0++;
                    return;
                }
                break;

            case 1:
                if (++this->unk_14C[0].unk50 >= 7) {
                    this->unk_14C[0].unk0++;
                }
                break;

            case 2:
                if (globalCtx->csCtx.npcActions[0]->action == 1) {
                    this->unk_14C[0].unk0 = 0;
                }
                break;
        }
    }
}

void func_80BA49BC(ObjectKankyo *this, GlobalContext *globalCtx) {
    s32 pad;
    s32 pad2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1182);

    if (this->unk_14C[0].unk0 == 1) {
        Matrix_Translate(globalCtx->csCtx.npcActions[0]->startPos.x, globalCtx->csCtx.npcActions[0]->startPos.y, globalCtx->csCtx.npcActions[0]->startPos.z, 0U);
        Matrix_RotateX(0.34906584f, 1U);
        Matrix_RotateZ(0.34906584f, 1U);
        Matrix_Scale(2.0f, 5.0f, 2.0f, 1U);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xFF, 0xFF, 0xFF, 0x80);
        gDPSetEnvColor(POLY_XLU_DISP++, 0x00, 0xFF, 0xFF, 0x80);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1213), G_MTX_LOAD);
        gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80BA58E0[this->unk_14C[0].unk50])); 
        func_80094C50(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, &D_01000000, 0);
        gDPPipeSync(POLY_XLU_DISP++);
        gSPDisplayList(POLY_XLU_DISP++, gEffLightningDL);
        gDPPipeSync(POLY_XLU_DISP++);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1233);
}

void func_80BA4C68(ObjectKankyo *this, GlobalContext *globalCtx);

void func_80BA4BFC(ObjectKankyo *this, GlobalContext *globalCtx) {
    s32 i;

    i = Object_GetIndex(&globalCtx->objectCtx, (u16)0xA1);
    if (i < 0) {
        __assert("0", "../z_object_kankyo.c", 0x4E3);
    } else {
        this->unk_1658 = i;
    }
    ObjectKankyo_SetupAction(this, func_80BA4C68);
}

void func_80BA4CD4(ObjectKankyo *this, GlobalContext *globalCtx);

void func_80BA4C68(ObjectKankyo *this, GlobalContext *globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, (s32) this->unk_1658) != 0) {
        this->unk_1659 = 1;
        this->unk_14C[0].unk40 = 0;
        this->actor.objBankIndex = (s8) this->unk_1658;
        this->unk_14C[0].unk44 = 7.0f;
        ObjectKankyo_SetupAction(this, func_80BA4CD4);
    }
}

void func_80BA4CD4(ObjectKankyo *this, GlobalContext *globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[1] != 0) && (globalCtx->csCtx.npcActions[1]->action == 2)) {
            Audio_PlayActorSound2((Actor *) this, 0x309AU);
            if ((s16)this->unk_14C[0].unk40 + 20 >= 256) {
                this->unk_14C[0].unk40 = 255;
            } else {
                this->unk_14C[0].unk40 += 20;
            }
            Math_SmoothStepToF(&this->unk_14C[0].unk44, 1.8f, 0.5f, 0.28f, 0.01f);
        }
    }
}

void func_80BA4D7C(ObjectKankyo *this2, GlobalContext *globalCtx2) {
    ObjectKankyo *this = this2;
    GlobalContext *globalCtx = globalCtx2;
    Vec3f sp6C;
    Vec3f sp60;
    f32 temp_f0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1324);
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[1] != NULL && globalCtx->csCtx.npcActions[1]->action == 2 && this->unk_1659 != 0) {
            if (this->unk_14C[0].unk0 == 0) {
                this->unk_14C[0].unk4C += 0.14285715f;
                if (this->unk_14C[0].unk4C >= 1.0f) {
                    this->unk_14C[0].unk4C = 1.0f;
                    this->unk_14C[0].unk0 += 1;
                }
            } else {
                this->unk_14C[0].unk4C -= 0.14285715f;
                if (this->unk_14C[0].unk4C <= 0.1f) {
                    this->unk_14C[0].unk4C = 0.0f;
                    this->unk_14C[0].unk0 = 0;
                }
            }

            if (++this->unk_14C[0].unk50 > 7) {
                this->unk_14C[0].unk50 = 0;
            }

            sp6C.x = globalCtx->csCtx.npcActions[1]->startPos.x;
            sp6C.y = globalCtx->csCtx.npcActions[1]->startPos.y;
            sp6C.z = globalCtx->csCtx.npcActions[1]->startPos.z;

            sp60.x =  globalCtx->csCtx.npcActions[1]->endPos.x;
            sp60.y =  globalCtx->csCtx.npcActions[1]->endPos.y;
            sp60.z =  globalCtx->csCtx.npcActions[1]->endPos.z;

            temp_f0 = func_8006F93C(globalCtx->csCtx.npcActions[1]->endFrame, globalCtx->csCtx.npcActions[1]->startFrame, globalCtx->csCtx.frames);
            Matrix_Translate((sp60.x - sp6C.x) * temp_f0 + sp6C.x, (sp60.y - sp6C.y) * temp_f0 + sp6C.y, (sp60.z - sp6C.z) * temp_f0 + sp6C.z, 0U);
            Matrix_Scale(this->unk_14C[0].unk44, this->unk_14C[0].unk44, this->unk_14C[0].unk44, 1U);
            func_80093D84(globalCtx->state.gfxCtx);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0,
                    (u8)(105 * this->unk_14C[0].unk4C) + 150,
                    0xFF,
                    (u8)(105 * this->unk_14C[0].unk4C) + 150,
                    this->unk_14C[0].unk40);
            gDPSetEnvColor(POLY_XLU_DISP++,
                    (u8)(155 * this->unk_14C[0].unk4C) + 100,
                    (u8)(255 * this->unk_14C[0].unk4C),
                    255 - (u8)(255 * this->unk_14C[0].unk4C),
                    this->unk_14C[0].unk40);

            Matrix_Mult(&globalCtx->mf_11DA0, 1U);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1416), G_MTX_LOAD);

            gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80BA5900[this->unk_14C[0].unk50])); 
            gDPPipeSync(POLY_XLU_DISP++);

            gSPDisplayList(POLY_XLU_DISP++, &D_06009620);
            gDPPipeSync(POLY_XLU_DISP++);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1432);
}

void func_80BA5370(ObjectKankyo *this, GlobalContext *globalCtx);

void func_80BA5304(ObjectKankyo *this, GlobalContext *globalCtx) {
    s32 i;

    i = Object_GetIndex(&globalCtx->objectCtx, 0x179);
    if (i < 0) {
        __assert("0", "../z_object_kankyo.c", 0x5A9);
    } else {
        this->unk_1658 = i;
    }
    ObjectKankyo_SetupAction(this, func_80BA5370);
}

void func_80BA53CC(ObjectKankyo *this, GlobalContext *globalCtx);

void func_80BA5370(ObjectKankyo *this, GlobalContext *globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_1658) != 0) {
        this->unk_1659 = 1;
        this->actor.objBankIndex = this->unk_1658;
        ObjectKankyo_SetupAction(this, func_80BA53CC);
    }
}

void func_80BA53CC(ObjectKankyo *this, GlobalContext *globalCtx) {
    u8 i;

    if (globalCtx->csCtx.state != 0) {
        for (i = 0; i < 6; i++) {
            if (globalCtx->csCtx.npcActions[i + 1] != NULL && globalCtx->csCtx.npcActions[i + 1]->action == 2) {
                if (this->unk_14C[i].unk44 == 0.1f) {
                    func_800F3F3C(0xBU);
                }
                Math_ApproachZeroF(&this->unk_14C[i].unk44, 0.1f, 0.1f);
            }
        }
    }
}

struct Thing {
    f32 unk0[6];
};

void func_80BA54AC(ObjectKankyo *this2, GlobalContext *globalCtx2) {
    ObjectKankyo *this = this2;
    GlobalContext *globalCtx = globalCtx2;
    s16 i;
    struct Thing sp114 = {430, 860, 430, -426, -862, -440};
    struct Thing spFC = {551, 551, 551, 554, 551, 547};
    struct Thing spE4 = {-96, -840, -1585, -1578, -840, -78};
    struct Thing spCC = {29.9f, 90, 150, 30, 90, -30.1};
    struct Thing spB4 = {103.4, 103.8, 103.6, -103.4, -103.5, 103.5};
    static Color_RGB8 D_80BA5A14[] = {
        {0xFF, 0xFF, 0xAA},
        {0xAA, 0xFF, 0xFF},
        {0xFF, 0xAA, 0xFF},
        {0xFF, 0xFF, 0xAA},
        {0xFF, 0xFF, 0xAA},
        {0xFF, 0xFF, 0xAA},
    };

    static Color_RGB8 D_80BA5A28[] = {
        {0x00, 0xC8, 0x00},
        {0x00, 0x32, 0xFF},
        {0x64, 0x00, 0xC8},
        {0xC8, 0x00, 0x00},
        {0xC8, 0xFF, 0x00},
        {0xFF, 0x78, 0x00},
    };

    //sp114 = {430, 860, 430, -426, -862, -440};
    //sp114 =  D_80BA599C;
    //spFC = D_80BA59B4;
    //spE4 = D_80BA59CC;
    //spCC = D_80BA59E4;
    //spB4 = D_80BA59FC;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1539);

    if (this->unk_1659 != 0) {
        for (i = 0; i < 6; i++) {
            if (this->unk_14C[i].unk44 > 0.001f) {
                Matrix_Translate(sp114.unk0[i], spFC.unk0[i], spE4.unk0[i], 0U);
                Matrix_RotateY(spCC.unk0[i] * 0.017453292f, 1U);
                Matrix_RotateX(spB4.unk0[i] * 0.017453292f, 1U);
                Matrix_Scale(this->unk_14C[i].unk44, 0.1f, this->unk_14C[i].unk44, 1U);
                func_80093D84(globalCtx->state.gfxCtx);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, D_80BA5A14[i].r, D_80BA5A14[i].g, D_80BA5A14[i].b, 0x80);
                gDPSetEnvColor(POLY_XLU_DISP++, D_80BA5A28[i].r, D_80BA5A28[i].g, D_80BA5A28[i].b, 0x80);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1586), G_MTX_LOAD);
                gSPSegment(POLY_XLU_DISP++, 8, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->state.frames * 5, globalCtx->state.frames * 10, 32, 64, 1, globalCtx->state.frames * 5, globalCtx->state.frames * 10, 32, 64));
                gSPDisplayList(POLY_XLU_DISP++, gDemoKekkaiDL_005FF0);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_object_kankyo.c", 1607);
}
