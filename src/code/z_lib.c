#include "ultra64.h"
#include "z_lib.h"
#include "ichain.h"
#include "printf.h"
#include "regs.h"
#include "sys_math.h"
#include "rand.h"
#include "sfx.h"

/**
 * memset: sets `len` bytes to `val` starting at address `dest`.
 *
 * Unlike normal memset,
 * - `dest` is a `u8*` already,
 * - does not return `dest`,
 * - the arguments are in a different order,
 * - `val` is a `u8` instead of the standard `s32`.
 *
 * @see There are two other memsets in this codebase, memset(), MemSet()
 *
 * @param dest address to start at
 * @param len number of bytes to write
 * @param val value to write
 */
void Lib_MemSet(u8* dest, size_t len, u8 val) {
    size_t i;

    // clang-format off
    for (i = 0; i < len; i++) { *dest++ = val; }
    // clang-format on
}

/**
 * @param angle binang
 * @return cos(angle)
 */
f32 Math_CosS(s16 angle) {
    return coss(angle) * SHT_MINV;
}

/**
 * @param angle binang
 * @return sin(angle)
 */
f32 Math_SinS(s16 angle) {
    return sins(angle) * SHT_MINV;
}

/**
 * Changes pValue by step (scaled by the update rate) towards target, setting it equal when the target is reached.
 * Returns true when target is reached, false otherwise.
 */
s32 Math_ScaledStepToS(s16* pValue, s16 target, s16 step) {
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

/**
 * Changes pValue by step towards target, setting it equal when the target is reached.
 * Returns true when target is reached, false otherwise.
 */
s32 Math_StepToS(s16* pValue, s16 target, s16 step) {
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

/**
 * Changes pValue by step towards target, setting it equal when the target is reached.
 * Returns true when target is reached, false otherwise.
 */
s32 Math_StepToF(f32* pValue, f32 target, f32 step) {
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

/**
 *  Changes pValue by step. If pvalue reaches limit angle or its opposite, sets it equal to limit angle.
 * Returns true when limit angle or its opposite is reached, false otherwise.
 */
s32 Math_StepUntilAngleS(s16* pValue, s16 limit, s16 step) {
    s16 orig = *pValue;

    *pValue += step;

    if (((s16)(*pValue - limit) * (s16)(orig - limit)) <= 0) {
        *pValue = limit;
        return true;
    }

    return false;
}

/**
 * Changes pValue by step. If pvalue reaches limit, sets it equal to limit.
 * Returns true when limit is reached, false otherwise.
 */
s32 Math_StepUntilS(s16* pValue, s16 limit, s16 step) {
    s16 orig = *pValue;

    *pValue += step;

    if (((*pValue - limit) * (orig - limit)) <= 0) {
        *pValue = limit;
        return true;
    }

    return false;
}

/**
 * Changes pValue by step towards target angle, setting it equal when the target is reached.
 * Returns true when target is reached, false otherwise.
 */
s32 Math_StepToAngleS(s16* pValue, s16 target, s16 step) {
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

/**
 * Changes pValue by step. If pvalue reaches limit, sets it equal to limit.
 * Returns true when limit is reached, false otherwise.
 */
s32 Math_StepUntilF(f32* pValue, f32 limit, f32 step) {
    f32 orig = *pValue;

    *pValue += step;

    if (((*pValue - limit) * (orig - limit)) <= 0) {
        *pValue = limit;
        return true;
    }

    return false;
}

/**
 * Changes pValue toward target by incrStep if pValue is smaller and by decrStep if it is greater, setting it equal when
 * target is reached. Returns true when target is reached, false otherwise.
 */
s32 Math_AsymStepToF(f32* pValue, f32 target, f32 incrStep, f32 decrStep) {
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

void Lib_GetControlStickData(f32* outMagnitude, s16* outAngle, Input* input) {
    f32 relX = input->rel.stick_x;
    f32 relY = input->rel.stick_y;

    *outMagnitude = sqrtf(SQ(relX) + SQ(relY));
    *outMagnitude = (60.0f < *outMagnitude) ? 60.0f : *outMagnitude;

    *outAngle = Math_Atan2S(relY, -relX);
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

/**
 * @param origin Position of the origin, the location from which to look at the target `point`
 * @param point Position of the target point, in the same space as `origin`
 * @return The yaw towards `point` when at `origin`, assuming +z is forwards.
 */
s16 Math_Vec3f_Yaw(Vec3f* origin, Vec3f* point) {
    f32 dx = point->x - origin->x;
    f32 dz = point->z - origin->z;

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

void Actor_ProcessInitChain(struct Actor* actor, InitChainEntry* ichain) {
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
    Vec3f* vec = (Vec3f*)(ptr + ichain->offset);
    f32 val = ichain->value;

    vec->z = val;
    vec->y = val;
    vec->x = val;
}

void IChain_Apply_Vec3fdiv1000(u8* ptr, InitChainEntry* ichain) {
    Vec3f* vec = (Vec3f*)(ptr + ichain->offset);
    f32 val;

    PRINTF("pp=%x data=%f\n", vec, ichain->value / 1000.0f);
    val = ichain->value / 1000.0f;

    vec->z = val;
    vec->y = val;
    vec->x = val;
}

void IChain_Apply_Vec3s(u8* ptr, InitChainEntry* ichain) {
    Vec3s* vec = (Vec3s*)(ptr + ichain->offset);
    s16 val = ichain->value;

    vec->z = val;
    vec->y = val;
    vec->x = val;
}

/**
 * Changes pValue by step towards target. If this step is more than fraction of the remaining distance, step by that
 * instead, with a minimum step of minStep. Returns remaining distance to target.
 */
f32 Math_SmoothStepToF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep) {
    f32 stepSize;

    if (*pValue != target) {
        stepSize = (target - *pValue) * fraction;

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

/**
 * Changes pValue by step towards target. If step is more than fraction of the remaining distance, step by that instead.
 */
void Math_ApproachF(f32* pValue, f32 target, f32 fraction, f32 step) {
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

/**
 * Changes pValue by step towards zero. If step is more than fraction of the remaining distance, step by that instead.
 */
void Math_ApproachZeroF(f32* pValue, f32 fraction, f32 step) {
    f32 stepSize = *pValue * fraction;

    if (stepSize > step) {
        stepSize = step;
    } else if (stepSize < -step) {
        stepSize = -step;
    }

    *pValue -= stepSize;
}

/**
 * Changes pValue by step towards target angle in degrees. If this step is more than fraction of the remaining distance,
 * step by that instead, with a minimum step of minStep. Returns the value of the step taken.
 */
f32 Math_SmoothStepToDegF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep) {
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

/**
 * Changes pValue by step towards target. If this step is more than 1/scale of the remaining distance, step by that
 * instead, with a minimum step of minStep. Returns remaining distance to target.
 */
s16 Math_SmoothStepToS(s16* pValue, s16 target, s16 scale, s16 step, s16 minStep) {
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

/**
 * Changes pValue by step towards target. If step is more than 1/scale of the remaining distance, step by that instead.
 */
void Math_ApproachS(s16* pValue, s16 target, s16 scale, s16 step) {
    s16 diff = target - *pValue;

    diff /= scale;

    if (diff > step) {
        *pValue += step;
    } else if (diff < -step) {
        *pValue -= step;
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

/**
 * Play a sound effect at the center of the screen.
 */
void Sfx_PlaySfxCentered(u16 sfxId) {
    Audio_PlaySfxGeneral(sfxId, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

/**
 * Play a sound effect at the center of the screen. Identical to `Sfx_PlaySfxCentered`.
 */
void Sfx_PlaySfxCentered2(u16 sfxId) {
    Audio_PlaySfxGeneral(sfxId, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

/**
 * Play a sound effect at the requested position.
 */
void Sfx_PlaySfxAtPos(Vec3f* projectedPos, u16 sfxId) {
    Audio_PlaySfxGeneral(sfxId, projectedPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}
