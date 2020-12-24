#include "global.h"

void Lib_MemSet(u8* dest, size_t size, u8 val) {
    u32 i;

    // clang-format off
    for (i = 0; i < size; i++) { *dest++ = val; }
    // clang-format on
}

f32 Math_CosS(s16 angle) {
    return coss(angle) * SHT_MINV;
}

f32 Math_SinS(s16 angle) {
    return sins(angle) * SHT_MINV;
}

// Changes pValue by step towards target, setting it equal when the target is reached. step is scaled by the game's
// update rate. Returns true when target is reached, false otherwise.
s32 Math_ApproxUpdateScaledS(s16* pValue, s16 target, s16 step) {
    if (step != 0) {
        f32 updateScale = R_UPDATE_RATE * 0.5f;

        if ((s16)(*pValue - target) > 0) {
            step = -step;
        }

        *pValue += (s16)(step * updateScale);

        if (((s16)(*pValue - target) * step) >= 0) {
            *pValue = target;
            return true;
        }
    } else if (target == *pValue) {
        return true;
    }

    return false;
}

// Changes pValue by step towards target, setting it equal when the target is reached.
// Returns true when target is reached, false otherwise.
s32 Math_ApproxS(s16* pValue, s16 target, s16 step) {
    if (step != 0) {
        if (target < *pValue) {
            step = -step;
        }

        *pValue += step;

        if (((*pValue - target) * step) >= 0) {
            *pValue = target;
            return true;
        }
    } else if (target == *pValue) {
        return true;
    }

    return false;
}

// Changes pValue by step towards target, setting it equal when the target is reached.
// Returns true when target is reached, false otherwise.
s32 Math_ApproxF(f32* pValue, f32 target, f32 step) {
    if (step != 0.0f) {
        if (target < *pValue) {
            step = -step;
        }

        *pValue += step;

        if (((*pValue - target) * step) >= 0) {
            *pValue = target;
            return true;
        }
    } else if (target == *pValue) {
        return true;
    }

    return false;
}

// Changes pValue by step. If pvalue reaches target angle or its opposite, sets it equal to target.
// Returns true when target is reached, false otherwise.
s32 func_80077A90(s16* pValue, s16 target, s16 step) {
    s16 orig = *pValue;

    *pValue += step;

    if (((s16)(*pValue - target) * (s16)(orig - target)) <= 0) {
        *pValue = target;
        return true;
    }

    return false;
}

// Changes pValue by step. If pvalue reaches target, sets it equal to target.
// Returns true when target is reached, false otherwise.
s32 func_80077AF8(s16* pValue, s16 target, s16 step) {
    s16 orig = *pValue;

    *pValue += step;

    if (((*pValue - target) * (orig - target)) <= 0) {
        *pValue = target;
        return true;
    }

    return false;
}

// Changes pValue by step towards target angle, setting it equal when the target is reached.
// Returns true when target is reached, false otherwise.
s32 func_80077B58(s16* pValue, s16 target, s16 step) {
    s32 diff = target - *pValue;

    if (diff < 0) {
        step = -step;
    }

    if (diff >= 0x8000) {
        step = -step;
        diff = -0xFFFF - -diff;
    } else if (diff <= -0x8000) {
        diff += 0xFFFF;
        step = -step;
    }

    if (step != 0) {
        *pValue += step;

        if ((diff * step) <= 0) {
            *pValue = target;
            return true;
        }
    } else if (target == *pValue) {
        return true;
    }

    return false;
}

// Changes pValue by step. If pvalue reaches target, sets it equal to target.
// Returns true when target is reached, false otherwise.
s32 func_80077C1C(f32* pValue, f32 target, f32 step) {
    f32 orig = *pValue;

    *pValue += step;

    if (((*pValue - target) * (orig - target)) <= 0) {
        *pValue = target;
        return true;
    }

    return false;
}

// Increases pValue by incrStep if pValue is less than target and decreases by decrStep if it is greater. If pvalue
// reaches target, sets it equal to target. Returns true when target is reached, false otherwise.
s32 func_80077C6C(f32* pValue, f32 target, f32 incrStep, f32 decrStep) {
    f32 step = (target >= *pValue) ? incrStep : decrStep;

    if (step != 0.0f) {
        if (target < *pValue) {
            step = -step;
        }

        *pValue += step;

        if (((*pValue - target) * step) >= 0) {
            *pValue = target;
            return 1;
        }
    } else if (target == *pValue) {
        return 1;
    }

    return 0;
}

void func_80077D10(f32* arg0, s16* arg1, Input* input) {
    f32 relX = input->rel.stick_x;
    f32 relY = input->rel.stick_y;

    *arg0 = sqrtf(SQ(relX) + SQ(relY));
    *arg0 = (60.0f < *arg0) ? 60.0f : *arg0;

    *arg1 = Math_Atan2S(relY, -relX);
}

s16 Rand_S16Offset(s16 base, s16 range) {
    return (s16)(Rand_ZeroOne() * range) + base;
}

s16 Rand_S16OffsetStride(s16 base, s16 stride, s16 range) {
    return (s16)(Rand_ZeroOne() * range) * stride + base;
}

void Math_Vec3f_Copy(Vec3f* dest, Vec3f* src) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void Math_Vec3s_ToVec3f(Vec3f* dest, Vec3s* src) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void Math_Vec3f_Sum(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = a->x + b->x;
    dest->y = a->y + b->y;
    dest->z = a->z + b->z;
}

void Math_Vec3f_Diff(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = a->x - b->x;
    dest->y = a->y - b->y;
    dest->z = a->z - b->z;
}

void Math_Vec3s_DiffToVec3f(Vec3f* dest, Vec3s* a, Vec3s* b) {
    dest->x = a->x - b->x;
    dest->y = a->y - b->y;
    dest->z = a->z - b->z;
}

void Math_Vec3f_Scale(Vec3f* vec, f32 scaleF) {
    vec->x *= scaleF;
    vec->y *= scaleF;
    vec->z *= scaleF;
}

f32 Math_Vec3f_DistXYZ(Vec3f* a, Vec3f* b) {
    f32 dx = b->x - a->x;
    f32 dy = b->y - a->y;
    f32 dz = b->z - a->z;

    return sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
}

f32 Math_Vec3f_DistXYZAndStoreDiff(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = b->x - a->x;
    dest->y = b->y - a->y;
    dest->z = b->z - a->z;

    return sqrtf(SQ(dest->x) + SQ(dest->y) + SQ(dest->z));
}

f32 Math_Vec3f_DistXZ(Vec3f* a, Vec3f* b) {
    f32 dx = b->x - a->x;
    f32 dz = b->z - a->z;

    return sqrtf(SQ(dx) + SQ(dz));
}

f32 Math_Vec3f_DiffY(Vec3f* a, Vec3f* b) {
    return b->y - a->y;
}

s16 Math_Vec3f_Yaw(Vec3f* a, Vec3f* b) {
    f32 dx = b->x - a->x;
    f32 dz = b->z - a->z;

    return Math_Atan2S(dz, dx);
}

s16 Math_Vec3f_Pitch(Vec3f* a, Vec3f* b) {
    return Math_Atan2S(Math_Vec3f_DistXZ(a, b), a->y - b->y);
}

void IChain_Apply_u8(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_s8(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_u16(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_s16(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_u32(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_s32(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_f32(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_f32div1000(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_Vec3f(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_Vec3fdiv1000(u8* ptr, InitChainEntry* ichain);
void IChain_Apply_Vec3s(u8* ptr, InitChainEntry* ichain);

void (*sInitChainHandlers[])(u8* ptr, InitChainEntry* ichain) = {
    IChain_Apply_u8,    IChain_Apply_s8,           IChain_Apply_u16,   IChain_Apply_s16,
    IChain_Apply_u32,   IChain_Apply_s32,          IChain_Apply_f32,   IChain_Apply_f32div1000,
    IChain_Apply_Vec3f, IChain_Apply_Vec3fdiv1000, IChain_Apply_Vec3s,
};

void Actor_ProcessInitChain(Actor* actor, InitChainEntry* ichain) {
    do {
        sInitChainHandlers[ichain->type]((u8*)actor, ichain);
    } while ((ichain++)->cont);
}

void IChain_Apply_u8(u8* ptr, InitChainEntry* ichain) {
    *(u8*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_s8(u8* ptr, InitChainEntry* ichain) {
    *(s8*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_u16(u8* ptr, InitChainEntry* ichain) {
    *(u16*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_s16(u8* ptr, InitChainEntry* ichain) {
    *(s16*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_u32(u8* ptr, InitChainEntry* ichain) {
    *(u32*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_s32(u8* ptr, InitChainEntry* ichain) {
    *(s32*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_f32(u8* ptr, InitChainEntry* ichain) {
    *(f32*)(ptr + ichain->offset) = ichain->value;
}

void IChain_Apply_f32div1000(u8* ptr, InitChainEntry* ichain) {
    *(f32*)(ptr + ichain->offset) = ichain->value / 1000.0f;
}

void IChain_Apply_Vec3f(u8* ptr, InitChainEntry* ichain) {
    Vec3f* vec;
    f32 val;

    vec = (Vec3f*)(ptr + ichain->offset);
    val = ichain->value;

    vec->z = val;
    vec->y = val;
    vec->x = val;
}

void IChain_Apply_Vec3fdiv1000(u8* ptr, InitChainEntry* ichain) {
    Vec3f* vec;
    f32 val;

    vec = (Vec3f*)(ptr + ichain->offset);
    osSyncPrintf("pp=%x data=%f\n", vec, ichain->value / 1000.0f);
    val = ichain->value / 1000.0f;

    vec->z = val;
    vec->y = val;
    vec->x = val;
}

void IChain_Apply_Vec3s(u8* ptr, InitChainEntry* ichain) {
    Vec3s* vec;
    s16 val;

    vec = (Vec3s*)(ptr + ichain->offset);
    val = ichain->value;

    vec->z = val;
    vec->y = val;
    vec->x = val;
}

// Changes pValue by step towards target. If this step is more than fraction of the remaining distance, step by that
// instead, with a minimum step of minStep. Returns remaining distance to target.
f32 Math_SmoothScaleMaxMinF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep) {
    if (*pValue != target) {
        f32 stepSize = (target - *pValue) * fraction;

        if ((stepSize >= minStep) || (stepSize <= -minStep)) {
            if (stepSize > step) {
                stepSize = step;
            }

            if (stepSize < -step) {
                stepSize = -step;
            }

            *pValue += stepSize;
        } else {
            if (stepSize < minStep) {
                *pValue += minStep;
                stepSize = minStep;

                if (target < *pValue) {
                    *pValue = target;
                }
            }
            if (stepSize > -minStep) {
                *pValue += -minStep;

                if (*pValue < target) {
                    *pValue = target;
                }
            }
        }
    }

    return fabsf(target - *pValue);
}

// Changes pValue by step towards target. If this step is more than fraction of the remaining distance, step by that
// instead.
void Math_SmoothScaleMaxF(f32* pValue, f32 target, f32 fraction, f32 step) {
    if (*pValue != target) {
        f32 stepSize = (target - *pValue) * fraction;

        if (stepSize > step) {
            stepSize = step;
        } else if (stepSize < -step) {
            stepSize = -step;
        }

        *pValue += stepSize;
    }
}

// Changes pValue by step towards zero. If this step is more than fraction of the remaining distance, step by that
// instead.
void Math_SmoothDownscaleMaxF(f32* pValue, f32 fraction, f32 step) {
    f32 stepSize = *pValue * fraction;

    if (stepSize > step) {
        stepSize = step;
    } else if (stepSize < -step) {
        stepSize = -step;
    }

    *pValue -= stepSize;
}

// Changes pValue by step towards target angle in degrees. If this step is more than fraction of the remaining distance,
// step by that instead, with a minimum step of minStep. Returns the value of the step taken.
f32 func_800784D8(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep) {
    f32 stepSize = 0.0f;
    f32 diff = target - *pValue;

    if (*pValue != target) {
        if (diff > 180.0f) {
            diff = -(360.0f - diff);
        } else if (diff < -180.0f) {
            diff = 360.0f + diff;
        }

        stepSize = diff * fraction;

        if ((stepSize >= minStep) || (stepSize <= -minStep)) {
            if (stepSize > step) {
                stepSize = step;
            }

            if (stepSize < -step) {
                stepSize = -step;
            }

            *pValue += stepSize;
        } else {
            if (stepSize < minStep) {
                stepSize = minStep;
                *pValue += stepSize;
                if (*pValue > target) {
                    *pValue = target;
                }
            }
            if (stepSize > -minStep) {
                stepSize = -minStep;
                *pValue += stepSize;
                if (*pValue < target) {
                    *pValue = target;
                }
            }
        }
    }

    if (*pValue >= 360.0f) {
        *pValue -= 360.0f;
    }

    if (*pValue < 0.0f) {
        *pValue += 360.0f;
    }

    return stepSize;
}

// Changes pValue by step towards target. If this step is more than 1/scale of the remaining distance, step by that
// instead, with a minimum step of minStep. Returns remaining distance to target.
s16 Math_SmoothScaleMaxMinS(s16* pValue, s16 target, s16 scale, s16 step, s16 minStep) {
    s16 stepSize = 0;
    s16 diff = target - *pValue;

    if (*pValue != target) {
        stepSize = diff / scale;

        if ((stepSize > minStep) || (stepSize < -minStep)) {
            if (stepSize > step) {
                stepSize = step;
            }

            if (stepSize < -step) {
                stepSize = -step;
            }

            *pValue += stepSize;
        } else {
            if (diff >= 0) {
                *pValue += minStep;

                if ((s16)(target - *pValue) <= 0) {
                    *pValue = target;
                }
            } else {
                *pValue -= minStep;

                if ((s16)(target - *pValue) >= 0) {
                    *pValue = target;
                }
            }
        }
    }

    return diff;
}

// Changes pValue by step towards target. If this step is more than 1/scale of the remaining distance, step by that
// instead.
void Math_SmoothScaleMaxS(s16* pValue, s16 target, s16 scale, s16 maxStep) {
    s16 diff = target - *pValue;

    diff /= scale;

    if (diff > maxStep) {
        *pValue += maxStep;
    } else if (diff < -maxStep) {
        *pValue -= maxStep;
    } else {
        *pValue += diff;
    }
}

void Color_RGBA8_Copy(Color_RGBA8* dst, Color_RGBA8* src) {
    dst->r = src->r;
    dst->g = src->g;
    dst->b = src->b;
    dst->a = src->a;
}

void func_80078884(u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800788CC(u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_80078914(Vec3f* arg0, u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, arg0, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}
