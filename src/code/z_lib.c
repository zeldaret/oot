#include <ultra64.h>
#include <global.h>

void Lib_MemSet(u8* dest, size_t size, u8 val) {
    u32 i;

    // clang-format off
    for (i = 0; i < size; i++) { *dest++ = val; }
    // clang-format on
}

f32 Math_Coss(s16 angle) {
    return coss(angle) * (1.0f / 32767);
}

f32 Math_Sins(s16 angle) {
    return sins(angle) * (1.0f / 32767);
}

s32 Math_ApproxUpdateScaledS(s16* pValue, s16 target, s16 step) {
    f32 updateScale;

    if (step != 0) {
        updateScale = R_UPDATE_RATE * 0.5f;

        if ((s16)(*pValue - target) > 0) {
            step = -step;
        }

        *pValue += (s16)(step * updateScale);

        if (((s16)(*pValue - target) * step) >= 0) {
            *pValue = target;
            return 1;
        }
    } else if (target == *pValue) {
        return 1;
    }

    return 0;
}

s32 Math_ApproxS(s16* pValue, s16 target, s16 step) {
    if (step != 0) {
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

s32 Math_ApproxF(f32* pValue, f32 target, f32 step) {
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

s32 func_80077A90(s16* pValue, s16 target, s16 step) {
    s16 orig = *pValue;

    *pValue += step;

    if (((s16)(*pValue - target) * (s16)(orig - target)) <= 0) {
        *pValue = target;
        return 1;
    }

    return 0;
}

s32 func_80077AF8(s16* pValue, s16 target, s16 step) {
    s16 orig = *pValue;

    *pValue += step;

    if (((*pValue - target) * ((s16)orig - target)) <= 0) {
        *pValue = target;
        return 1;
    }

    return 0;
}

s32 func_80077B58(s16* pValue, s16 target, s16 step) {
    s32 phi_v0 = target - *pValue;

    if (phi_v0 < 0) {
        step = -step;
    }

    if (phi_v0 >= 0x8000) {
        step = -step;
        phi_v0 = 0xFFFF0001 - -phi_v0;
    } else if (phi_v0 <= -0x8000) {
        phi_v0 += 0xFFFF;
        step = -step;
    }

    if (step != 0) {
        *pValue += step;

        if ((phi_v0 * step) <= 0) {
            *pValue = target;
            return 1;
        }
    } else if (target == *pValue) {
        return 1;
    }

    return 0;
}

s32 func_80077C1C(f32* pValue, f32 target, f32 step) {
    f32 orig = *pValue;

    *pValue += step;

    if (((*pValue - target) * (orig - target)) <= 0) {
        *pValue = target;
        return 1;
    }

    return 0;
}

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
    f32 relX = input->rel.in.x;
    f32 relY = input->rel.in.y;

    *arg0 = sqrtf(SQ(relX) + SQ(relY));
    *arg0 = (60.0f < *arg0) ? 60.0f : *arg0;

    *arg1 = atan2s(relY, -relX);
}

s16 Math_Rand_S16Offset(s16 base, s16 range) {
    return (s16)(Math_Rand_ZeroOne() * range) + base;
}

s16 Math_Rand_S16OffsetStride(s16 base, s16 stride, s16 range) {
    return (s16)(Math_Rand_ZeroOne() * range) * stride + base;
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

    return atan2s(dz, dx);
}

s16 Math_Vec3f_Pitch(Vec3f* a, Vec3f* b) {
    return atan2s(Math_Vec3f_DistXZ(a, b), a->y - b->y);
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
    osSyncPrintf("pp=%x data=%f\n", vec, (f64)(ichain->value / 1000.0f));
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

f32 Math_SmoothScaleMaxMinF(f32* pValue, f32 target, f32 scale, f32 maxStep, f32 minStep) {
    f32 var;

    if (*pValue != target) {
        var = (target - *pValue) * scale;

        if ((var >= minStep) || (var <= -minStep)) {
            if (var > maxStep) {
                var = maxStep;
            }

            if (var < -maxStep) {
                var = -maxStep;
            }

            *pValue += var;
        } else {
            if (var < minStep) {
                *pValue += minStep;
                var = minStep;

                if (target < *pValue) {
                    *pValue = target;
                }
            }
            if (var > -minStep) {
                *pValue += -minStep;

                if (*pValue < target) {
                    *pValue = target;
                }
            }
        }
    }

    return fabsf(target - *pValue);
}

void Math_SmoothScaleMaxF(f32* pValue, f32 target, f32 scale, f32 maxStep) {
    f32 step;

    if (*pValue != target) {
        step = (target - *pValue) * scale;

        if (step > maxStep) {
            step = maxStep;
        } else if (step < -maxStep) {
            step = -maxStep;
        }

        *pValue += step;
    }
}

void Math_SmoothDownscaleMaxF(f32* pValue, f32 scale, f32 maxStep) {
    f32 step;

    step = *pValue * scale;

    if (step > maxStep) {
        step = maxStep;
    } else if (step < -maxStep) {
        step = -maxStep;
    }

    *pValue -= step;
}

f32 func_800784D8(f32* pValue, f32 target, f32 scale, f32 maxStep, f32 minStep) {
    f32 step;
    f32 baseStep;

    step = 0.0f;
    baseStep = target - *pValue;

    if (*pValue != target) {
        if (baseStep > 180.0f) {
            baseStep = -(360.0f - baseStep);
        } else if (baseStep < -180.0f) {
            baseStep = 360.0f + baseStep;
        }

        step = baseStep * scale;

        if ((step >= minStep) || (step <= -minStep)) {
            if (step > maxStep) {
                step = maxStep;
            }

            if (step < -maxStep) {
                step = -maxStep;
            }

            *pValue += step;
        } else {
            if (step < minStep) {
                step = minStep;
                *pValue += step;
                if (*pValue > target) {
                    *pValue = target;
                }
            }
            if (step > -minStep) {
                step = -minStep;
                *pValue += step;
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

    return step;
}

s16 Math_SmoothScaleMaxMinS(s16* pValue, s16 target, s16 invScale, s16 maxStep, s16 minStep) {
    s16 step = 0;
    s16 diff = (target - *pValue);

    s32 baseStep = diff / invScale;

    if (*pValue != target) {
        step = baseStep;

        if ((step > minStep) || (step < -minStep)) {
            if (step > maxStep) {
                step = maxStep;
            }

            if (step < -maxStep) {
                step = -maxStep;
            }

            *pValue += step;
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

void Math_SmoothScaleMaxS(s16* pValue, s16 target, s16 invScale, s16 maxStep) {
    s16 step = target - *pValue;

    step /= invScale;

    if (step > maxStep) {
        *pValue += maxStep;
    } else if (step < -maxStep) {
        *pValue -= maxStep;
    } else {
        *pValue += step;
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
