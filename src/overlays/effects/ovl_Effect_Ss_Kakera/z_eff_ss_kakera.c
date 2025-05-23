/*
 * File: z_eff_ss_kakera.c
 * Overlay: ovl_Effect_Ss_Kakera
 * Description: Fragments. Appearance is determined by the supplied display list.
 */

#include "z_eff_ss_kakera.h"

#include "libc64/qrand.h"
#include "libu64/debug.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "line_numbers.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z64effect.h"
#include "z64play.h"
#include "z64player.h"

#define rReg0 regs[0]
#define rGravity regs[1]
#define rPitch regs[2]
#define rYaw regs[3]
#define rReg4 regs[4]
#define rReg5 regs[5]
#define rReg6 regs[6]
#define rScale regs[7]
#define rReg8 regs[8]
#define rReg9 regs[9]
#define rObjId regs[10]
#define rObjectSlot regs[11]
#define rColorIdx regs[12]

u32 EffectSsKakera_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKakera_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsKakera_Update(PlayState* play, u32 index, EffectSs* this);

void func_809A9BA8(EffectSs* this, PlayState* play);

EffectSsProfile Effect_Ss_Kakera_Profile = {
    EFFECT_SS_KAKERA,
    EffectSsKakera_Init,
};

u32 EffectSsKakera_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
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
            this->rObjId = KAKERA_OBJECT_DEFAULT;
        } else {
            this->rObjId = initParams->objId;
            func_809A9BA8(this, play);
        }

    } else {
        PRINTF("shape_modelがNULL\n");
        LogUtils_HungupThread("../z_eff_kakera.c", LN1(175, 178));
    }

    this->draw = EffectSsKakera_Draw;
    this->update = EffectSsKakera_Update;
    this->vec = initParams->unk_18;
    this->rReg0 = initParams->unk_2C;
    this->rGravity = initParams->gravity;
    this->rPitch = Rand_ZeroOne() * 32767.0f;
    this->rYaw = Rand_ZeroOne() * 32767.0f;
    this->rReg4 = initParams->unk_26;
    this->rReg5 = initParams->unk_28;
    this->rReg6 = initParams->unk_2A;
    this->rScale = initParams->scale;
    this->rReg8 = initParams->unk_30;
    this->rReg9 = initParams->unk_32;
    this->rColorIdx = initParams->colorIdx;

    return 1;
}

f32 func_809A9818(f32 arg0, f32 arg1) {
    f32 temp_f2;

#if DEBUG_FEATURES
    if (arg1 < 0.0f) {
        PRINTF("範囲がマイナス！！(randomD_sectionUniformity)\n");
    }
#endif

    temp_f2 = Rand_ZeroOne() * arg1;
    return ((temp_f2 * 2.0f) - arg1) + arg0;
}

void EffectSsKakera_Draw(PlayState* play, u32 index, EffectSs* this) {
    static Color_RGB8 colors[] = { { 255, 255, 255 }, { 235, 170, 130 } };
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad;
    f32 scale;
    s32 colorIdx;

    scale = this->rScale / 256.0f;
    colorIdx = this->rColorIdx;

    OPEN_DISPS(gfxCtx, "../z_eff_kakera.c", 241);

    if (this->rObjId != KAKERA_OBJECT_DEFAULT) {
        if ((((this->rReg4 >> 7) & 1) << 7) == 0x80) {
            gSPSegment(POLY_XLU_DISP++, 0x06, play->objectCtx.slots[this->rObjectSlot].segment);
        } else {
            gSPSegment(POLY_OPA_DISP++, 0x06, play->objectCtx.slots[this->rObjectSlot].segment);
        }
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->rYaw * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->rPitch * 0.01f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    if ((((this->rReg4 >> 7) & 1) << 7) == 0x80) {
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_eff_kakera.c", 268);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);

        if (colorIdx >= 0) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, colors[colorIdx].r, colors[colorIdx].g, colors[colorIdx].b, 255);
        }

        gSPDisplayList(POLY_XLU_DISP++, this->gfx);
    } else {
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_eff_kakera.c", 286);
        Gfx_SetupDL_25Opa(play->state.gfxCtx);

        if (colorIdx >= 0) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, colors[colorIdx].r, colors[colorIdx].g, colors[colorIdx].b, 255);
        }

        gSPDisplayList(POLY_OPA_DISP++, this->gfx);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_kakera.c", 302);
}

void func_809A9BA8(EffectSs* this, PlayState* play) {
    this->rObjectSlot = Object_GetSlot(&play->objectCtx, this->rObjId);

    if ((this->rObjectSlot < 0) || !Object_IsLoaded(&play->objectCtx, this->rObjectSlot)) {
        this->life = 0;
        this->draw = NULL;
    }
}

void func_809A9C10(EffectSs* this) {
    f32 temp_f14;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f0;

    temp_f18 = this->rReg5 / 1024.0f;
    temp_f20 = this->rReg6 / 1024.0f;
    temp_f14 = (this->rReg9 / 1024.0f) * 4.0f;

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

void func_809A9DC0(EffectSs* this) {
    this->accel.x = this->accel.y = this->accel.z = 0.0f;
}

f32 func_809A9DD8(f32 arg0, s32 arg1) {
    return 1.0f;
}

static f32 D_809AA530[] = {
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

    temp_v0 = this->rReg0 & 3;

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

s32 func_809A9F10(EffectSs* this, Vec3f* diff, f32 dist) {
    static f32 D_809AA560[] = { 4.0f, 0.1f, 0.3f, 0.9f, -0.1f, -0.3f, -0.9f };
    s32 temp_v0;

    temp_v0 = (this->rReg0 >> 2) & 7;

    if (temp_v0 != 0) {
        this->accel.y += D_809AA560[temp_v0];
    }

    return 1;
}

s32 func_809A9F4C(EffectSs* this, Vec3f* diff, f32 dist) {
    static f32 D_809AA57C[] = { 0.1f, 1.0f, 6.0f };
    s32 temp_v0;
    f32 phi_f0;

    temp_v0 = (this->rReg0 >> 5) & 3;

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

s32 func_809A9FD8(EffectSs* this, Vec3f* diff, f32 dist) {
    static f32 (*D_809AA588[])(f32 dist, s32 arg1) = {
        func_809A9DD8, func_809A9DEC, func_809A9DEC, func_809A9DEC, func_809A9E28,
        func_809A9E28, func_809A9E28, func_809A9E68, func_809A9E68, func_809A9E68,
    };
    f32 temp_f0;
    s32 temp_a1;

    temp_a1 = (this->rReg0 >> 7) & 0xF;
    temp_f0 = D_809AA588[temp_a1](dist, temp_a1);
    temp_f0 = func_809A9818(temp_f0, (this->rReg9 * temp_f0) / 1024.0f);

    this->accel.x *= temp_f0;
    this->accel.y *= temp_f0;
    this->accel.z *= temp_f0;

    this->accel.x += temp_f0 * 0.01f;
    this->accel.y += temp_f0 * 0.01f;
    this->accel.z += temp_f0 * 0.01f;

    return 1;
}

s32 func_809AA0B8(EffectSs* this, Vec3f* diff, f32 dist) {
    this->accel.y += this->rGravity / 256.0f;

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

    if (this->rReg0 != 0) {
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

void func_809AA230(EffectSs* this, PlayState* play) {
    static f32 D_809AA5B0[] = { 10.0f, 20.0f, 40.0f };
    Player* player = GET_PLAYER(play);

    if (this->rReg8 == 0) {
        if ((((this->rReg4 >> 4) & 1) * 0x10) == 0x10) {
            if (this->pos.y <= (player->actor.floorHeight - ((this->rReg4 >> 2) & 3))) {
                this->rReg9 = 0;
                this->rReg0 = 0;
                this->rReg4 &= ~0x60;
                this->accel.x = this->accel.y = this->accel.z = 0.0f;
                this->velocity.x = this->velocity.y = this->velocity.z = 0.0f;
                this->rReg5 = this->rReg9;
                this->rGravity = this->rReg9;
            }
        } else {
            if (this->pos.y <= ((player->actor.floorHeight - ((this->rReg4 >> 2) & 3)) - 600.0f)) {
                this->life = 0;
            }
        }
    } else {
        switch (this->rReg4 & 3) {
            case 0:
                this->rReg8 = 0;
                break;
            case 1:
                if (this->velocity.y < 0.0f) {
                    if (BgCheck_SphVsFirstPoly(&play->colCtx, &this->pos, D_809AA5B0[(this->rReg4 >> 2) & 3])) {
                        this->velocity.x *= func_809A9818(0.9f, 0.2f);
                        this->velocity.y *= -0.8f;
                        this->velocity.z *= func_809A9818(0.9f, 0.2f);

                        if (this->rReg8 > 0) {
                            this->rReg8--;
                        }
                    }
                }
                break;
            case 2:
                if (BgCheck_SphVsFirstPoly(&play->colCtx, &this->pos, D_809AA5B0[(this->rReg4 >> 2) & 3])) {}
                break;
        }
    }
}

void EffectSsKakera_Update(PlayState* play, u32 index, EffectSs* this) {
    switch (((this->rReg4 >> 5) & 3) << 5) {
        case 0x20:
            this->rPitch += 0xB;
            this->rYaw += 3;
            break;
        case 0x40:
            this->rPitch += 0x41;
            this->rYaw += 0xB;
            break;
        case 0x60:
            this->rPitch += 0x9B;
            this->rYaw += 0x1F;
            break;
    }

    func_809A9C10(this);

    if (!func_809AA0EC(this)) {
        this->life = 0;
    }

    func_809AA230(this, play);

    if (this->rObjId != KAKERA_OBJECT_DEFAULT) {
        func_809A9BA8(this, play);
    }
}
