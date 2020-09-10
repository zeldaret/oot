/*
 * File: z_eff_ss_kakera.c
 * Overlay: ovl_Effect_Ss_Kakera
 * Description: Fragments. Appearance is determined by the supplied display list.
 */

#include "z_eff_ss_kakera.h"

typedef enum {
    /* 0x00 */ SS_KAKERA_0,
    /* 0x01 */ SS_KAKERA_GRAVITY,
    /* 0x02 */ SS_KAKERA_PITCH,
    /* 0x03 */ SS_KAKERA_YAW,
    /* 0x04 */ SS_KAKERA_4,
    /* 0x05 */ SS_KAKERA_5,
    /* 0x06 */ SS_KAKERA_6,
    /* 0x07 */ SS_KAKERA_SCALE,
    /* 0x08 */ SS_KAKERA_8,
    /* 0x09 */ SS_KAKERA_9,
    /* 0x0A */ SS_KAKERA_OBJ_ID,
    /* 0x0B */ SS_KAKERA_OBJ_BANK_IDX,
    /* 0x0C */ SS_KAKERA_COLOR_IDX
} EffectSsKakeraRegs;

u32 EffectSsKakera_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKakera_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsKakera_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

void func_809A9BA8(EffectSs* this, GlobalContext* globalCtx);

EffectSsInit Effect_Ss_Kakera_InitVars = {
    EFFECT_SS_KAKERA,
    EffectSsKakera_Init,
};

u32 EffectSsKakera_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsKakeraInitParams* initParams = (EffectSsKakeraInitParams*)initParamsx;
    s32 objId;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->life = initParams->life;
    this->priority = 101;

    if (initParams->dList != NULL) {
        this->gfx = initParams->dList;
        objId = initParams->objId;

        if (objId == OBJECT_GAMEPLAY_KEEP || objId == OBJECT_GAMEPLAY_FIELD_KEEP ||
            objId == OBJECT_GAMEPLAY_DANGEON_KEEP) {
            this->regs[SS_KAKERA_OBJ_ID] = -1;
        } else {
            this->regs[SS_KAKERA_OBJ_ID] = initParams->objId;
            func_809A9BA8(this, globalCtx);
        }

    } else {
        osSyncPrintf("shape_modelがNULL\n");
        LogUtils_HungupThread("../z_eff_kakera.c", 178);
    }

    this->draw = EffectSsKakera_Draw;
    this->update = EffectSsKakera_Update;
    this->vec = initParams->unk_18;
    this->regs[SS_KAKERA_0] = initParams->unk_2C;
    this->regs[SS_KAKERA_GRAVITY] = initParams->gravity;
    this->regs[SS_KAKERA_PITCH] = Math_Rand_ZeroOne() * 32767.0f;
    this->regs[SS_KAKERA_YAW] = Math_Rand_ZeroOne() * 32767.0f;
    this->regs[SS_KAKERA_4] = initParams->unk_26;
    this->regs[SS_KAKERA_5] = initParams->unk_28;
    this->regs[SS_KAKERA_6] = initParams->unk_2A;
    this->regs[SS_KAKERA_SCALE] = initParams->scale;
    this->regs[SS_KAKERA_8] = initParams->unk_30;
    this->regs[SS_KAKERA_9] = initParams->unk_32;
    this->regs[SS_KAKERA_COLOR_IDX] = initParams->unk_38;

    return 1;
}

f32 func_809A9818(f32 arg0, f32 arg1) {
    f32 temp_f2;

    if (arg1 < 0.0f) {
        osSyncPrintf("範囲がマイナス！！(randomD_sectionUniformity)\n");
    }

    temp_f2 = Math_Rand_ZeroOne() * arg1;
    return ((temp_f2 + temp_f2) - arg1) + arg0;
}

void EffectSsKakera_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    static Color_RGB8 D_809AA528[] = { { 255, 255, 255 }, { 235, 170, 130 } };
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;
    s32 colorIdx;

    scale = this->regs[SS_KAKERA_SCALE] * 0.00390625f;
    colorIdx = this->regs[SS_KAKERA_COLOR_IDX];

    OPEN_DISPS(gfxCtx, "../z_eff_kakera.c", 241);

    if (this->regs[SS_KAKERA_OBJ_ID] != -1) {
        if ((((this->regs[SS_KAKERA_4] >> 7) & 1) << 7) == 0x80) {
            gSPSegment(oGfxCtx->polyXlu.p++, 0x06,
                       globalCtx->objectCtx.status[this->regs[SS_KAKERA_OBJ_BANK_IDX]].segment);
        } else {
            gSPSegment(oGfxCtx->polyOpa.p++, 0x06,
                       globalCtx->objectCtx.status[this->regs[SS_KAKERA_OBJ_BANK_IDX]].segment);
        }
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->regs[SS_KAKERA_YAW] * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->regs[SS_KAKERA_PITCH] * 0.01f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    if ((((this->regs[SS_KAKERA_4] >> 7) & 1) << 7) == 0x80) {
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_kakera.c", 268),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80093D84(globalCtx->state.gfxCtx);

        if (colorIdx >= 0) {
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, D_809AA528[colorIdx].r, D_809AA528[colorIdx].g,
                            D_809AA528[colorIdx].b, 255);
        }

        gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);
    } else {
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_kakera.c", 286),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80093D18(globalCtx->state.gfxCtx);

        if (colorIdx >= 0) {
            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, D_809AA528[colorIdx].r, D_809AA528[colorIdx].g,
                            D_809AA528[colorIdx].b, 255);
        }

        gSPDisplayList(oGfxCtx->polyOpa.p++, this->gfx);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_kakera.c", 302);
}

void func_809A9BA8(EffectSs* this, GlobalContext* globalCtx) {
    this->regs[SS_KAKERA_OBJ_BANK_IDX] = Object_GetIndex(&globalCtx->objectCtx, this->regs[SS_KAKERA_OBJ_ID]);

    if ((this->regs[SS_KAKERA_OBJ_BANK_IDX] < 0) ||
        !Object_IsLoaded(&globalCtx->objectCtx, this->regs[SS_KAKERA_OBJ_BANK_IDX])) {
        this->life = 0;
        this->draw = NULL;
    }
}

// update velocity
void func_809A9C10(EffectSs* this) {
    f32 temp_f14;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f0;

    temp_f18 = this->regs[SS_KAKERA_5] * 0.0009765625f;
    temp_f20 = this->regs[SS_KAKERA_6] * 0.0009765625f;
    temp_f14 = (this->regs[SS_KAKERA_9] * 0.0009765625f) * 4.0f;

    temp_f2 = this->velocity.x - func_809A9818(0.0f, temp_f14);
    temp_f16 = this->velocity.y - func_809A9818(0.0f, temp_f14);
    temp_f12 = this->velocity.z - func_809A9818(0.0f, temp_f14);

    if (temp_f2 > 0.0f) {
        this->velocity.x -= ((temp_f2 * temp_f18) + (SQ(temp_f2) * temp_f20));
    } else {
        this->velocity.x -= ((temp_f2 * temp_f18) - (SQ(temp_f2) * temp_f20));
    }

    if (temp_f16 > 0.0f) {
        temp_f0 = temp_f16 * temp_f18;
        temp_f2 = SQ(temp_f16) * temp_f20;
        this->velocity.y -= (temp_f0 + temp_f2);
    } else {
        temp_f0 = temp_f16 * temp_f18;
        temp_f2 = SQ(temp_f16) * temp_f20;
        this->velocity.y -= (temp_f0 - temp_f2);
    }

    if (temp_f12 > 0.0f) {
        this->velocity.z -= (temp_f0 + temp_f2);
    } else {
        this->velocity.z -= (temp_f0 - temp_f2);
    }
}

// reset accel
void func_809A9DC0(EffectSs* this) {
    this->accel.x = this->accel.y = this->accel.z = 0.0f;
}

f32 func_809A9DD8(f32 arg0, s32 arg1) {
    return 1.0f;
}

f32 D_809AA530[] = {
    1.0f, 100.0f, 40.0f, 5.0f, 100.0f, 40.0f, 5.0f, 100.0f, 40.0f, 5.0f,
};

f32 func_809A9DEC(f32 arg0, s32 arg1) {
    if (D_809AA530[arg1] < arg0) {
        return D_809AA530[arg1] / arg0;
    } else {
        return 1.0f;
    }
}

f32 func_809A9E28(f32 arg0, s32 arg1) {
    f32 temp = SQ(arg0);

    if (D_809AA530[arg1] < temp) {
        return D_809AA530[arg1] / temp;
    } else {
        return 1.0f;
    }
}

f32 func_809A9E68(f32 arg0, s32 arg1) {
    return func_809A9E28(arg0, arg1);
}

s32 func_809A9E88(EffectSs* this, Vec3f* diff, f32 dist) {
    static f32 D_809AA558[] = { 0.05f, 1.0f };
    s32 temp_v0;
    f32 phi_f0;

    temp_v0 = this->regs[SS_KAKERA_0] & 3;

    if (temp_v0 != 0) {

        if (dist > 1.0f) {
            phi_f0 = 1.0f / dist;
        } else {
            phi_f0 = 1.0f;
        }

        this->accel.x += ((D_809AA558[temp_v0 - 1] * diff->z) * phi_f0);
        this->accel.z -= ((D_809AA558[temp_v0 - 1] * diff->x) * phi_f0);
    }

    return 1;
}

// update y accel
s32 func_809A9F10(EffectSs* this, Vec3f* diff, f32 dist) {
    static f32 D_809AA560[] = { 4.0f, 0.1f, 0.3f, 0.9f, -0.1f, -0.3f, -0.9f };
    s32 temp_v0;

    temp_v0 = (this->regs[SS_KAKERA_0] >> 2) & 7;

    if (temp_v0 != 0) {
        this->accel.y += D_809AA560[temp_v0];
    }

    return 1;
}

s32 func_809A9F4C(EffectSs* this, Vec3f* diff, f32 dist) {
    static f32 D_809AA57C[] = { 0.1f, 1.0f, 6.0f };
    s32 temp_v0;
    f32 phi_f0;

    temp_v0 = (this->regs[SS_KAKERA_0] >> 5) & 3;

    if (temp_v0 != 0) {

        if (dist > 1.0f) {
            phi_f0 = 1.0f / dist;
        } else {
            phi_f0 = 1.0f;
        }

        this->accel.x -= ((diff->x * D_809AA57C[temp_v0 - 1]) * phi_f0);
        this->accel.z -= ((diff->z * D_809AA57C[temp_v0 - 1]) * phi_f0);
    }

    return 1;
}

f32 (*D_809AA588[])(f32 dist, s32 arg1) = {
    func_809A9DD8, func_809A9DEC, func_809A9DEC, func_809A9DEC, func_809A9E28,
    func_809A9E28, func_809A9E28, func_809A9E68, func_809A9E68, func_809A9E68,
};

s32 func_809A9FD8(EffectSs* this, Vec3f* diff, f32 dist) {
    f32 temp_f0;
    s32 temp_a1;

    temp_a1 = (this->regs[SS_KAKERA_0] >> 7) & 0xF;
    temp_f0 = D_809AA588[temp_a1](dist, temp_a1);
    temp_f0 = func_809A9818(temp_f0, (this->regs[SS_KAKERA_9] * temp_f0) * 0.0009765625f);

    this->accel.x *= temp_f0;
    this->accel.y *= temp_f0;
    this->accel.z *= temp_f0;

    this->accel.x += temp_f0 * 0.01f;
    this->accel.y += temp_f0 * 0.01f;
    this->accel.z += temp_f0 * 0.01f;

    return 1;
}

s32 func_809AA0B8(EffectSs* this, Vec3f* diff, f32 dist) {
    this->accel.y += this->regs[SS_KAKERA_GRAVITY] * 0.00390625f;

    return 1;
}

s32 func_809AA0EC(EffectSs* this) {
    Vec3f diff;
    f32 dist;

    func_809A9DC0(this);

    diff.x = this->pos.x - this->vec.x;
    diff.y = this->pos.y - this->vec.y;
    diff.z = this->pos.z - this->vec.z;

    dist = sqrtf(SQ(diff.x) + SQ(diff.y) + SQ(diff.z));

    if (dist > 1000.0f) {
        return 0;
    }

    if (this->regs[SS_KAKERA_0] != 0) {
        if (!func_809A9E88(this, &diff, dist)) {
            return false;
        }

        if (!func_809A9F10(this, &diff, dist)) {
            return false;
        }

        if (!func_809A9F4C(this, &diff, dist)) {
            return false;
        }

        if (!func_809A9FD8(this, &diff, dist)) {
            return false;
        }
    }

    if (!func_809AA0B8(this, &diff, dist)) {
        return false;
    }

    return true;
}

void func_809AA230(EffectSs* this, GlobalContext* globalCtx) {
    static f32 D_809AA5B0[] = { 10.0f, 20.0f, 40.0f };
    Player* player = PLAYER;

    if (this->regs[SS_KAKERA_8] == 0) {
        if ((((this->regs[SS_KAKERA_4] >> 4) & 1) * 0x10) == 0x10) {
            if (this->pos.y <= (player->actor.groundY - ((this->regs[SS_KAKERA_4] >> 2) & 3))) {
                this->regs[SS_KAKERA_9] = 0;
                this->regs[SS_KAKERA_0] = 0;
                this->regs[SS_KAKERA_4] &= ~0x60;
                this->accel.x = this->accel.y = this->accel.z = 0.0f;
                this->velocity.x = this->velocity.y = this->velocity.z = 0.0f;
                this->regs[SS_KAKERA_5] = this->regs[SS_KAKERA_9];
                this->regs[SS_KAKERA_GRAVITY] = this->regs[SS_KAKERA_9];
            }
        } else {
            if (this->pos.y <= ((player->actor.groundY - ((this->regs[SS_KAKERA_4] >> 2) & 3)) - 600.0f)) {
                this->life = 0;
            }
        }
    } else {
        switch (this->regs[SS_KAKERA_4] & 3) {
            case 0:
                this->regs[SS_KAKERA_8] = 0;
                break;
            case 1:
                if (this->velocity.y < 0.0f) {
                    if (func_8003E30C(&globalCtx->colCtx, &this->pos, D_809AA5B0[(this->regs[SS_KAKERA_4] >> 2) & 3])) {
                        this->velocity.x *= func_809A9818(0.9f, 0.2f);
                        this->velocity.y *= -0.8f;
                        this->velocity.z *= func_809A9818(0.9f, 0.2f);

                        if (this->regs[SS_KAKERA_8] > 0) {
                            this->regs[SS_KAKERA_8] -= 1;
                        }
                    }
                }
                break;
            case 2:
                if (func_8003E30C(&globalCtx->colCtx, &this->pos, D_809AA5B0[(this->regs[SS_KAKERA_4] >> 2) & 3])) {}
                break;
        }
    }
}

void EffectSsKakera_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    switch (((this->regs[SS_KAKERA_4] >> 5) & 3) << 5) {
        case 0x20:
            this->regs[SS_KAKERA_PITCH] += 0xB;
            this->regs[SS_KAKERA_YAW] += 3;
            break;
        case 0x40:
            this->regs[SS_KAKERA_PITCH] += 0x41;
            this->regs[SS_KAKERA_YAW] += 0xB;
            break;
        case 0x60:
            this->regs[SS_KAKERA_PITCH] += 0x9B;
            this->regs[SS_KAKERA_YAW] += 0x1F;
            break;
    }

    func_809A9C10(this);

    if (!func_809AA0EC(this)) {
        this->life = 0;
    }

    func_809AA230(this, globalCtx);

    if (this->regs[SS_KAKERA_OBJ_ID] != -1) {
        func_809A9BA8(this, globalCtx);
    }
}
