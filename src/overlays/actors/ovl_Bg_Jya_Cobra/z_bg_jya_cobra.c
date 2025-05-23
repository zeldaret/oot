#include "z_bg_jya_cobra.h"
#include "overlays/actors/ovl_Bg_Jya_Bigmirror/z_bg_jya_bigmirror.h"
#include "overlays/actors/ovl_Mir_Ray/z_mir_ray.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgJyaCobra_Init(Actor* thisx, PlayState* play);
void BgJyaCobra_Destroy(Actor* thisx, PlayState* play);
void BgJyaCobra_Update(Actor* thisx, PlayState* play2);
void BgJyaCobra_Draw(Actor* thisx, PlayState* play);

void func_80896918(BgJyaCobra* this, PlayState* play);
void func_80896950(BgJyaCobra* this, PlayState* play);
void func_808969F8(BgJyaCobra* this, PlayState* play);
void func_80896ABC(BgJyaCobra* this, PlayState* play);

#include "assets/overlays/ovl_Bg_Jya_Cobra/ovl_Bg_Jya_Cobra.c"

ActorProfile Bg_Jya_Cobra_Profile = {
    /**/ ACTOR_BG_JYA_COBRA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaCobra),
    /**/ BgJyaCobra_Init,
    /**/ BgJyaCobra_Destroy,
    /**/ BgJyaCobra_Update,
    /**/ BgJyaCobra_Draw,
};

static s16 D_80897308[] = { 0, 0, 0, 0 };

static u8 D_80897310[] = { true, false, true, false };

static s16 D_80897314[] = { -0x4000, 0000, 0x4000, 0000 };

static u8 D_8089731C[11][11] = {
    { 0x00, 0x00, 0x20, 0x80, 0x80, 0x80, 0x80, 0x80, 0x20, 0x00, 0x00 },
    { 0x00, 0x20, 0x80, 0xA0, 0xA3, 0xA3, 0xA3, 0xA0, 0x80, 0x20, 0x00 },
    { 0x20, 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80, 0x20 },
    { 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80 },
    { 0x80, 0xA3, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA3, 0x80 },
    { 0x80, 0xA3, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA3, 0x80 },
    { 0x80, 0xA3, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA3, 0x80 },
    { 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80 },
    { 0x20, 0x80, 0xA0, 0xA5, 0xA6, 0xA6, 0xA6, 0xA5, 0xA0, 0x80, 0x20 },
    { 0x00, 0x20, 0x80, 0xA0, 0xA3, 0xA3, 0xA3, 0xA0, 0x80, 0x20, 0x00 },
    { 0x00, 0x00, 0x20, 0x80, 0x80, 0x80, 0x80, 0x80, 0x20, 0x00, 0x00 },
};

static u8 D_80897398[3][3] = {
    { 0x20, 0x80, 0x20 },
    { 0x80, 0xA0, 0x80 },
    { 0x20, 0x80, 0x20 },
};

static Vec3f D_808973A4[] = {
    { -6.0f, 100.0f, 7.6f },
    { -12.6f, 69.200005f, -10.0f },
    { -9.0f, 43.0f, -1.0f },
    { -3.0f, 15.0f, 8.6f },
    { -8.6f, 15.0f, 13.5f },
    { -6.6f, 26.0f, 11.6f },
    { -12.5f, 43.0f, 8.0f },
    { -17.2f, 70.0f, 0.6f },
    { -8.0f, 100.0f, 7.6f },
    { 6.0f, 100.0f, 7.6f },
    { 12.6f, 69.200005f, -10.0f },
    { 9.0f, 43.0f, -1.0f },
    { 3.0f, 15.0f, 8.6f },
    { 8.6f, 15.0f, 13.5f },
    { 6.6f, 26.0f, 11.6f },
    { 12.5f, 43.0f, 8.0f },
    { 17.2f, 70.0f, 0.6f },
    { 8.0f, 100.0f, 7.6f },
    { 0.0f, 70.0f, -11.3f },
    { 0.0f, 44.600002f, -2.0f },
    { 0.0f, 15.0f, 10.6f },
    { 0.0f, 15.0f, 0.3f },
    { 0.0f, 26.0f, 11.6f },
    { 0.0f, 88.4f, -1.4f },
    { 0.0f, 95.700005f, 14.900001f },
    { 0.0f, 101.4f, 5.0f },
};

static Vec3f D_808974DC[] = {
    { 12.0f, 21.300001f, -2.5f },  { 30.0f, 21.300001f, -2.5f }, { -15.0f, 21.300001f, -2.5f },
    { -30.0f, 21.300001f, -2.5f }, { 12.0f, 21.300001f, -2.5f },
};

static s32 D_80897518[] = { 0x80, 0xA0, 0xA0, 0x80 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

static Vec3s D_80897538 = { 0, -0x4000, 0 };

static Vec3s D_80897540 = { 0, 0x4000, 0 };

static Vec3f D_80897548[] = {
    { 0.1f, 0.1f, 0.1f },
    { 0.072f, 0.072f, 0.072f },
    { 0.1f, 0.1f, 0.132f },
};

void func_808958F0(Vec3f* dest, Vec3f* src, f32 arg2, f32 arg3) {
    dest->x = (src->z * arg2) + (src->x * arg3);
    dest->y = src->y;
    dest->z = (src->z * arg3) - (src->x * arg2);
}

void BgJyaCobra_InitDynapoly(BgJyaCobra* this, PlayState* play, CollisionHeader* collision, s32 flags) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        // "Warning : move BG Registration Failure"
        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_cobra.c", 247,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgJyaCobra_SpawnRay(BgJyaCobra* this, PlayState* play) {
    Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_MIR_RAY, this->dyna.actor.world.pos.x,
                       this->dyna.actor.world.pos.y + 57.0f, this->dyna.actor.world.pos.z, 0, 0, 0, 6);

#if DEBUG_FEATURES
    if (this->dyna.actor.child == NULL) {
        PRINTF_COLOR_RED();
        // "Ｅｒｒｏｒ : Mir Ray occurrence failure"
        PRINTF("Ｅｒｒｏｒ : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_cobra.c", 270);
        PRINTF_RST();
    }
#endif
}

void func_80895A70(BgJyaCobra* this) {
    s32 pad;
    BgJyaBigmirror* mirror = (BgJyaBigmirror*)this->dyna.actor.parent;
    MirRay* mirRay;

    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 2)) {
        case 0:
            mirRay = (MirRay*)this->dyna.actor.child;
            if (mirRay == NULL) {
                return;
            }
            if (this->dyna.actor.child->update == NULL) {
                this->dyna.actor.child = NULL;
                return;
            }
            break;
        case 1:
            mirRay = (MirRay*)mirror->lightBeams[1];
            if (mirRay == NULL) {
                return;
            }
            break;
        case 2:
            mirRay = (MirRay*)mirror->lightBeams[2];
            if (mirRay == NULL) {
                return;
            }
            break;
    }

    if (this->unk_18C <= 0.0f) {
        mirRay->unLit = 1;
    } else {
        Vec3f sp28;

        mirRay->unLit = 0;
        Math_Vec3f_Copy(&mirRay->sourcePt, &this->unk_180);
        Matrix_RotateY(BINANG_TO_RAD(this->dyna.actor.shape.rot.y), MTXMODE_NEW);
        Matrix_RotateX(BINANG_TO_RAD(D_80897308[PARAMS_GET_U(this->dyna.actor.params, 0, 2)]), MTXMODE_APPLY);
        sp28.x = 0.0f;
        sp28.y = 0.0;
        sp28.z = this->unk_190 * 2800.0f;
        Matrix_MultVec3f(&sp28, &mirRay->poolPt);
        Math_Vec3f_Sum(&mirRay->sourcePt, &mirRay->poolPt, &mirRay->poolPt);
    }
}

void func_80895BEC(BgJyaCobra* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;
    Vec3f sp2C;

    func_808958F0(&sp2C, &this->unk_174, Math_SinS(this->unk_170), Math_CosS(this->unk_170));
    player->actor.world.pos.x = this->dyna.actor.world.pos.x + sp2C.x;
    player->actor.world.pos.y = this->dyna.actor.world.pos.y + sp2C.y;
    player->actor.world.pos.z = this->dyna.actor.world.pos.z + sp2C.z;
}

void func_80895C74(BgJyaCobra* this, PlayState* play) {
    s16 phi_v0;
    s16 params = this->dyna.actor.params;
    BgJyaBigmirror* mirror = (BgJyaBigmirror*)this->dyna.actor.parent;
    f32 phi_f0;

    if (PARAMS_GET_U(params, 0, 2) == 2 && mirror != NULL &&
        (!(mirror->puzzleFlags & BIGMIR_PUZZLE_BOMBIWA_DESTROYED) ||
         !(mirror->puzzleFlags & BIGMIR_PUZZLE_COBRA1_SOLVED))) {
        Math_StepToF(&this->unk_18C, 0.0f, 0.05f);
    } else {
        this->unk_18C = 1.0f;
        if (D_80897310[PARAMS_GET_U(params, 0, 2)]) {
            phi_v0 = this->dyna.actor.shape.rot.y - D_80897314[PARAMS_GET_U(params, 0, 2)];
            phi_v0 = ABS(phi_v0);
            if (phi_v0 < 0x2000 && phi_v0 != -0x8000) {
                this->unk_18C += (phi_v0 - 0x2000) * (3.0f / 0x4000);
                if (this->unk_18C < 0.0f) {
                    this->unk_18C = 0.0f;
                }
            }
        }
    }

    this->unk_180.x = this->dyna.actor.world.pos.x;
    this->unk_180.y = this->dyna.actor.world.pos.y + 57.0f;
    this->unk_180.z = this->dyna.actor.world.pos.z;

    if (PARAMS_GET_U(params, 0, 2) == 0) {
        this->unk_190 = 0.1f;
    } else if (PARAMS_GET_U(params, 0, 2) == 1) {
        phi_f0 = 0.1f;
        phi_v0 = this->dyna.actor.shape.rot.y - 0x8000;
        if (phi_v0 < 0x500 && phi_v0 > -0x500) {
            phi_f0 = 0.34f;
        } else {
            phi_v0 = this->dyna.actor.shape.rot.y - 0x4000;
            if (phi_v0 < 0x500 && phi_v0 > -0x500 && mirror != NULL &&
                (mirror->puzzleFlags & BIGMIR_PUZZLE_BOMBIWA_DESTROYED)) {
                phi_f0 = 0.34f;
            }
        }
        Math_StepToF(&this->unk_190, phi_f0, 0.04f);
    } else if (PARAMS_GET_U(params, 0, 2) == 2) {
        phi_f0 = 0.1f;
        phi_v0 = this->dyna.actor.shape.rot.y - 0x8000;
        if (phi_v0 < 0x500 && phi_v0 > -0x500) {
            phi_f0 = 0.34f;
        } else {
            phi_v0 = this->dyna.actor.shape.rot.y + 0xFFFF4000;
            if (phi_v0 < 0x500 && phi_v0 > -0x500) {
                phi_f0 = 0.34f;
            }
        }
        Math_StepToF(&this->unk_190, phi_f0, 0.04f);
    }
}

/*
 * Updates the shadow with light coming from the side of the mirror
 */
void BgJyaCobra_UpdateShadowFromSide(BgJyaCobra* this) {
    Vec3f spD4;
    Vec3f spC8;
    Vec3f spBC;
    u8* shadowTex;
    s32 temp_x;
    s32 temp_z;
    s32 x;
    s32 z;
    s32 i;
    s32 j;
    s32 k;
    s32 l;
    s16 rotY;

    shadowTex = COBRA_SHADOW_TEX_PTR(this);
    Lib_MemSet(shadowTex, COBRA_SHADOW_TEX_SIZE, 0);

    Matrix_RotateX((M_PI / 4), MTXMODE_NEW);
    rotY = !PARAMS_GET_U(this->dyna.actor.params, 0, 2) ? (this->dyna.actor.shape.rot.y + 0x4000)
                                                        : (this->dyna.actor.shape.rot.y - 0x4000);
    Matrix_RotateY(BINANG_TO_RAD(rotY), MTXMODE_APPLY);
    Matrix_Scale(0.9f, 0.9f, 0.9f, MTXMODE_APPLY);

    for (i = 0; i < 25; i++) {
        Math_Vec3f_Diff(&D_808973A4[i + 1], &D_808973A4[i], &spD4);
        spD4.x *= 1 / 2.0f;
        spD4.y *= 1 / 2.0f;
        spD4.z *= 1 / 2.0f;
        for (j = 0; j < 2; j++) {
            spC8.x = D_808973A4[i].x + (spD4.x * j);
            spC8.y = D_808973A4[i].y + (spD4.y * j);
            spC8.z = D_808973A4[i].z + (spD4.z * j);
            Matrix_MultVec3f(&spC8, &spBC);
            x = (spBC.x + 50.0f) * 0.64f + 0.5f;
            z = (88.0f - spBC.z) * 0.64f + 0.5f;
            for (k = 0; k < 11; k++) {
                temp_z = z - 5 + k;
                if (temp_z & ~0x3F) {
                    continue;
                }
                temp_z *= 0x40;
                for (l = 0; l < 11; l++) {
                    temp_x = x - 5 + l;
                    if (temp_x & ~0x3F) {
                        continue;
                    }
                    shadowTex[temp_z + temp_x] |= D_8089731C[k][l];
                }
            }
        }
    }

    for (i = 0; i < 4; i++) {
        Math_Vec3f_Diff(&D_808974DC[i + 1], &D_808974DC[i], &spD4);
        spD4.x *= 1 / 5.0f;
        spD4.y *= 1 / 5.0f;
        spD4.z *= 1 / 5.0f;
        for (j = 0; j < 5; j++) {
            spC8.x = D_808974DC[i].x + (spD4.x * j);
            spC8.y = D_808974DC[i].y + (spD4.y * j);
            spC8.z = D_808974DC[i].z + (spD4.z * j);
            Matrix_MultVec3f(&spC8, &spBC);
            x = (s32)(((spBC.x + 50.0f) * 0.64f) + 0.5f);
            z = (s32)(((88.0f - spBC.z) * 0.64f) + 0.5f);
            for (k = 0; k < 3; k++) {
                temp_z = z - 1 + k;
                if (temp_z & ~0x3F) {
                    continue;
                }
                temp_z *= 0x40;
                for (l = 0; l < 3; l++) {
                    temp_x = x - 1 + l;
                    if (temp_x & ~0x3F) {
                        continue;
                    }
                    shadowTex[temp_z + temp_x] |= D_80897398[k][l];
                }
            }
        }
    }

    for (i = 0; i < 0x40; i++) {
        shadowTex[0 * 0x40 + i] = 0;
        shadowTex[0x3F * 0x40 + i] = 0;
    }

    for (j = 1; j < 0x3F; j++) {
        shadowTex[j * 0x40 + 0] = 0;
        shadowTex[j * 0x40 + 0x3F] = 0;
    }
}

/*
 * Updates the shadow with light coming from above the mirror
 */
void BgJyaCobra_UpdateShadowFromTop(BgJyaCobra* this) {
    f32 sp58[0x40];
    s32 i;
    s32 j;
    s32 i_copy;
    s32 counter;
    u8* shadowTex;
    u8* sp40;

    for (i = 0; i < 0x40; i++) {
        sp58[i] = SQ(i - 31.5f);
    }

    sp40 = shadowTex = COBRA_SHADOW_TEX_PTR(this);
    Lib_MemSet(shadowTex, COBRA_SHADOW_TEX_SIZE, 0);

    for (i = 0; i != 0x40; i++) {
        f32 temp_f12 = sp58[i];

        for (j = 0; j < 0x40; j++, sp40++) {
            f32 temp_f2 = (sp58[j] * 0.5f) + temp_f12;

            if (temp_f2 < 300.0f) {
                *sp40 |= CLAMP_MAX(640 - (s32)(temp_f2 * 2.0f), 166);
            }
        }
    }

    for (i_copy = 0x780, counter = 0; counter < 4; counter++, i_copy += 0x40) {
        i = i_copy;
        for (j = 4; j < 0x3C; j++) {
            if (shadowTex[i_copy + j] < D_80897518[counter]) {
                shadowTex[i_copy + j] = D_80897518[counter];
            }
        }
        shadowTex[i + 0x3C] = 0x20;
        shadowTex[i + 0x3] = 0x20;
    }
}

void BgJyaCobra_Init(Actor* thisx, PlayState* play) {
    BgJyaCobra* this = (BgJyaCobra*)thisx;

    BgJyaCobra_InitDynapoly(this, play, &gCobraCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (!PARAMS_GET_U(this->dyna.actor.params, 0, 2) &&
        Flags_GetSwitch(play, PARAMS_GET_U((s32)this->dyna.actor.params, 8, 6))) {
        this->dyna.actor.world.rot.y = this->dyna.actor.home.rot.y = this->dyna.actor.shape.rot.y = 0;
    }

    if (!PARAMS_GET_U(this->dyna.actor.params, 0, 2)) {
        BgJyaCobra_SpawnRay(this, play);
    }

    func_80896918(this, play);

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 2) == 1 || PARAMS_GET_U(this->dyna.actor.params, 0, 2) == 2) {
        this->dyna.actor.room = -1;
    }

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 2) == 1) {
        BgJyaCobra_UpdateShadowFromTop(this);
    }

    // "(jya cobra)"
    PRINTF("(jya コブラ)(arg_data 0x%04x)(act %x)(txt %x)(txt16 %x)\n", this->dyna.actor.params, this,
           &this->shadowTextureBuffer, COBRA_SHADOW_TEX_PTR(this));
}

void BgJyaCobra_Destroy(Actor* thisx, PlayState* play) {
    BgJyaCobra* this = (BgJyaCobra*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_80896918(BgJyaCobra* this, PlayState* play) {
    this->actionFunc = func_80896950;
    this->unk_168 = 0;
    this->dyna.actor.shape.rot.y = this->dyna.actor.world.rot.y =
        (this->unk_16C * 0x2000) + this->dyna.actor.home.rot.y;
}

void func_80896950(BgJyaCobra* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->dyna.unk_150 > 0.001f) {
        this->unk_168++;
        if (this->unk_168 >= 15) {
            func_808969F8(this, play);
        }
    } else {
        this->unk_168 = 0;
    }

    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
}

void func_808969F8(BgJyaCobra* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 phi_a3;
    s16 temp2;

    this->actionFunc = func_80896ABC;

    temp2 = this->dyna.actor.yawTowardsPlayer - this->dyna.actor.shape.rot.y;
    phi_a3 = (s16)(this->dyna.actor.shape.rot.y - this->dyna.unk_158);
    phi_a3 = ABS(phi_a3);

    if (temp2 > 0) {
        this->unk_16A = (phi_a3 > 0x4000) ? 1 : -1;
    } else {
        this->unk_16A = (phi_a3 > 0x4000) ? -1 : 1;
    }

    this->unk_174.x = player->actor.world.pos.x - this->dyna.actor.world.pos.x;
    this->unk_174.y = player->actor.world.pos.y - this->dyna.actor.world.pos.y;
    this->unk_174.z = player->actor.world.pos.z - this->dyna.actor.world.pos.z;
    this->unk_170 = this->unk_16E = 0;
    this->unk_172 = true;
}

void func_80896ABC(BgJyaCobra* this, PlayState* play) {
    s16 temp_v0;
    Player* player = GET_PLAYER(play);

    temp_v0 = (s16)((this->unk_16C * 0x2000) + this->dyna.actor.home.rot.y) - this->dyna.actor.world.rot.y;
    if (ABS(temp_v0) < 7424) {
        Math_StepToS(&this->unk_16E, 106, 4);
    } else {
        Math_StepToS(&this->unk_16E, 21, 10);
    }

    if (Math_ScaledStepToS(&this->unk_170, this->unk_16A * 0x2000, this->unk_16E)) {
        this->unk_16C = (this->unk_16C + this->unk_16A) & 7;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->dyna.unk_150 = 0.0f;
        func_80896918(this, play);
    } else {
        this->dyna.actor.shape.rot.y = this->dyna.actor.world.rot.y =
            (this->unk_16C * 0x2000) + this->dyna.actor.home.rot.y + this->unk_170;
    }

    if (player->stateFlags2 & PLAYER_STATE2_4) {
        if (this->unk_172) {
            func_80895BEC(this, play);
        }
    } else if (fabsf(this->dyna.unk_150) < 0.001f) {
        this->unk_172 = false;
    }

    this->dyna.unk_150 = 0.0f;
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void BgJyaCobra_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgJyaCobra* this = (BgJyaCobra*)thisx;

    this->actionFunc(this, play);

    func_80895C74(this, play);
    func_80895A70(this);

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 2) == 0 || PARAMS_GET_U(this->dyna.actor.params, 0, 2) == 2) {
        BgJyaCobra_UpdateShadowFromSide(this);
    }
}

void func_80896CB4(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_jya_cobra.c", 864);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_jya_cobra.c", 867);
    gSPDisplayList(POLY_XLU_DISP++, gCobra2DL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_jya_cobra.c", 872);
}

void func_80896D78(BgJyaCobra* this, PlayState* play) {
    s32 pad;
    Vec3s sp44;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_jya_cobra.c", 924);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    sp44.x = D_80897308[PARAMS_GET_U(this->dyna.actor.params, 0, 2)] + this->dyna.actor.shape.rot.x;
    sp44.y = this->dyna.actor.shape.rot.y;
    sp44.z = this->dyna.actor.shape.rot.z;
    Matrix_SetTranslateRotateYXZ(this->unk_180.x, this->unk_180.y, this->unk_180.z, &sp44);

    Matrix_Scale(0.1f, 0.1f, this->unk_190, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_jya_cobra.c", 939);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s32)(this->unk_18C * 140.0f));
    gSPDisplayList(POLY_XLU_DISP++, gCobra3DL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_jya_cobra.c", 947);
}

void BgJyaCobra_DrawShadow(BgJyaCobra* this, PlayState* play) {
    s32 pad;
    s16 params = PARAMS_GET_U(this->dyna.actor.params, 0, 2);
    Vec3f sp64;
    Vec3s* phi_a3;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_jya_cobra.c", 966);

    Gfx_SetupDL_44Xlu(play->state.gfxCtx);

    if (params == 0) {
        sp64.x = this->dyna.actor.world.pos.x - 50.0f;
        sp64.y = this->dyna.actor.world.pos.y;
        sp64.z = this->dyna.actor.world.pos.z;
        phi_a3 = &D_80897538;
    } else if (params == 2) {
        sp64.x = this->dyna.actor.world.pos.x + 70.0f;
        sp64.y = this->dyna.actor.world.pos.y;
        sp64.z = this->dyna.actor.world.pos.z;
        phi_a3 = &D_80897540;
    } else { // params == 1
        phi_a3 = &this->dyna.actor.shape.rot;
        Math_Vec3f_Copy(&sp64, &this->dyna.actor.world.pos);
    }

    Matrix_SetTranslateRotateYXZ(sp64.x, sp64.y, sp64.z, phi_a3);

    Matrix_Scale(D_80897548[params].x, D_80897548[params].y, D_80897548[params].z, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 0.0f, 40.0f, MTXMODE_APPLY);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 120);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_jya_cobra.c", 994);

    gDPLoadTextureBlock(POLY_XLU_DISP++, COBRA_SHADOW_TEX_PTR(this), G_IM_FMT_I, G_IM_SIZ_8b, COBRA_SHADOW_TEX_WIDTH,
                        COBRA_SHADOW_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
                        G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPDisplayList(POLY_XLU_DISP++, sShadowDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_jya_cobra.c", 1006);
}

void BgJyaCobra_Draw(Actor* thisx, PlayState* play) {
    BgJyaCobra* this = (BgJyaCobra*)thisx;

    func_80896CB4(play);
    Gfx_DrawDListOpa(play, gCobra1DL);

    if (this->unk_18C > 0.0f) {
        func_80896D78(this, play);
    }

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 2) == 2) {
        BgJyaBigmirror* mirror = (BgJyaBigmirror*)this->dyna.actor.parent;

        if (mirror != NULL && (mirror->puzzleFlags & BIGMIR_PUZZLE_BOMBIWA_DESTROYED) &&
            (mirror->puzzleFlags & BIGMIR_PUZZLE_COBRA1_SOLVED)) {
            BgJyaCobra_DrawShadow(this, play);
        }
    } else {
        BgJyaCobra_DrawShadow(this, play);
    }
}
