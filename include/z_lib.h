#ifndef Z_LIB_H
#define Z_LIB_H

#include "libc/stddef.h"

struct Input;
struct Vec3f;
struct Vec3s;
struct Color_RGBA8;

void Lib_MemSet(u8* dest, size_t len, u8 val);
f32 Math_CosS(s16 angle);
f32 Math_SinS(s16 angle);
s32 Math_ScaledStepToS(s16* pValue, s16 target, s16 step);
s32 Math_StepToS(s16* pValue, s16 target, s16 step);
s32 Math_StepToF(f32* pValue, f32 target, f32 step);
s32 Math_StepUntilAngleS(s16* pValue, s16 limit, s16 step);
s32 Math_StepUntilS(s16* pValue, s16 limit, s16 step);
s32 Math_StepToAngleS(s16* pValue, s16 target, s16 step);
s32 Math_StepUntilF(f32* pValue, f32 limit, f32 step);
s32 Math_AsymStepToF(f32* pValue, f32 target, f32 incrStep, f32 decrStep);
void Lib_GetControlStickData(f32* outMagnitude, s16* outAngle, struct Input* input);
s16 Rand_S16Offset(s16 base, s16 range);
void Math_Vec3f_Copy(struct Vec3f* dest, struct Vec3f* src);
void Math_Vec3s_ToVec3f(struct Vec3f* dest, struct Vec3s* src);
void Math_Vec3f_Sum(struct Vec3f* a, struct Vec3f* b, struct Vec3f* dest);
void Math_Vec3f_Diff(struct Vec3f* a, struct Vec3f* b, struct Vec3f* dest);
void Math_Vec3s_DiffToVec3f(struct Vec3f* dest, struct Vec3s* a, struct Vec3s* b);
void Math_Vec3f_Scale(struct Vec3f* vec, f32 scaleF);
f32 Math_Vec3f_DistXYZ(struct Vec3f* a, struct Vec3f* b);
f32 Math_Vec3f_DistXYZAndStoreDiff(struct Vec3f* a, struct Vec3f* b, struct Vec3f* dest);
f32 Math_Vec3f_DistXZ(struct Vec3f* a, struct Vec3f* b);
s16 Math_Vec3f_Yaw(struct Vec3f* origin, struct Vec3f* point);
s16 Math_Vec3f_Pitch(struct Vec3f* a, struct Vec3f* b);
f32 Math_SmoothStepToF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep);
void Math_ApproachF(f32* pValue, f32 target, f32 fraction, f32 step);
void Math_ApproachZeroF(f32* pValue, f32 fraction, f32 step);
f32 Math_SmoothStepToDegF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep);
s16 Math_SmoothStepToS(s16* pValue, s16 target, s16 scale, s16 step, s16 minStep);
void Math_ApproachS(s16* pValue, s16 target, s16 scale, s16 step);
void Color_RGBA8_Copy(struct Color_RGBA8* dst, struct Color_RGBA8* src);
void Sfx_PlaySfxCentered(u16 sfxId);
void Sfx_PlaySfxCentered2(u16 sfxId);
void Sfx_PlaySfxAtPos(struct Vec3f* projectedPos, u16 sfxId);

#endif
