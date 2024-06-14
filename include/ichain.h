#ifndef ICHAIN_H
#define ICHAIN_H

#include "libc/stddef.h"
#include "padmgr.h"
#include "z64math.h"
#include "color.h"

typedef struct {
    u32 cont:   1;
    u32 type:   4;
    u32 offset: 11;
    s32 value:  16;
} InitChainEntry;

typedef enum {
    /* 0x0 */ ICHAINTYPE_U8,            // sets byte
    /* 0x1 */ ICHAINTYPE_S8,
    /* 0x2 */ ICHAINTYPE_U16,           // sets short
    /* 0x3 */ ICHAINTYPE_S16,
    /* 0x4 */ ICHAINTYPE_U32,           // sets word
    /* 0x5 */ ICHAINTYPE_S32,
    /* 0x6 */ ICHAINTYPE_F32,           // sets float
    /* 0x7 */ ICHAINTYPE_F32_DIV1000,   // sets float divided by 1000
    /* 0x8 */ ICHAINTYPE_VEC3F,         // sets Vec3f members
    /* 0x9 */ ICHAINTYPE_VEC3F_DIV1000, // sets Vec3f members divided by 1000
    /* 0xA */ ICHAINTYPE_VEC3S          // sets Vec3s members
} InitChainType;

/**
 * ICHAIN macros generate an init chain entry of the following form:
 * * (e >> 31) & 0x0001 == Continue Parsing after this entry
 * * (e >> 27) & 0x000F == Type
 * * (e >> 16) & 0x07FF == Offset from start of instance to write initial value
 * *  e        & 0xFFFF == Initial Value
 *
 * Arguments:
 * * type ----- value from enum `InitChainType`
 * * member --- name of member inside `Actor` structure to use as the offset
 * * value ---- s16 value to use
 * * cont ----- ICHAIN_CONTINUE (or ICHAIN_STOP) to continue (or stop) parsing
 */
#define ICHAIN(type, member, value, cont)      \
        { cont, type, offsetof(Actor, member), value }

#define ICHAIN_U8(member, val, cont)            ICHAIN(ICHAINTYPE_U8, member, val, cont)
#define ICHAIN_S8(member, val, cont)            ICHAIN(ICHAINTYPE_S8, member, val, cont)
#define ICHAIN_U16(member, val, cont)           ICHAIN(ICHAINTYPE_U16, member, val, cont)
#define ICHAIN_S16(member, val, cont)           ICHAIN(ICHAINTYPE_S16, member, val, cont)
#define ICHAIN_U32(member, val, cont)           ICHAIN(ICHAINTYPE_U32, member, val, cont)
#define ICHAIN_S32(member, val, cont)           ICHAIN(ICHAINTYPE_S32, member, val, cont)
#define ICHAIN_F32(member, val, cont)           ICHAIN(ICHAINTYPE_F32, member, val, cont)
#define ICHAIN_F32_DIV1000(member, val, cont)   ICHAIN(ICHAINTYPE_F32_DIV1000, member, val, cont)
#define ICHAIN_VEC3F(member, val, cont)         ICHAIN(ICHAINTYPE_VEC3F, member, val, cont)
#define ICHAIN_VEC3F_DIV1000(member, val, cont) ICHAIN(ICHAINTYPE_VEC3F_DIV1000, member, val, cont)
#define ICHAIN_VEC3S(member, val, cont)         ICHAIN(ICHAINTYPE_VEC3S, member, val, cont)

#define ICHAIN_CONTINUE 1
#define ICHAIN_STOP     0

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
void Lib_GetControlStickData(f32* outMagnitude, s16* outAngle, Input* input);
s16 Rand_S16Offset(s16 base, s16 range);
void Math_Vec3f_Copy(Vec3f* dest, Vec3f* src);
void Math_Vec3s_ToVec3f(Vec3f* dest, Vec3s* src);
void Math_Vec3f_Sum(Vec3f* a, Vec3f* b, Vec3f* dest);
void Math_Vec3f_Diff(Vec3f* a, Vec3f* b, Vec3f* dest);
void Math_Vec3s_DiffToVec3f(Vec3f* dest, Vec3s* a, Vec3s* b);
void Math_Vec3f_Scale(Vec3f* vec, f32 scaleF);
f32 Math_Vec3f_DistXYZ(Vec3f* a, Vec3f* b);
f32 Math_Vec3f_DistXYZAndStoreDiff(Vec3f* a, Vec3f* b, Vec3f* dest);
f32 Math_Vec3f_DistXZ(Vec3f* a, Vec3f* b);
s16 Math_Vec3f_Yaw(Vec3f* origin, Vec3f* point);
s16 Math_Vec3f_Pitch(Vec3f* a, Vec3f* b);
void Actor_ProcessInitChain(void* actor, InitChainEntry* ichain);
f32 Math_SmoothStepToF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep);
void Math_ApproachF(f32* pValue, f32 target, f32 fraction, f32 step);
void Math_ApproachZeroF(f32* pValue, f32 fraction, f32 step);
f32 Math_SmoothStepToDegF(f32* pValue, f32 target, f32 fraction, f32 step, f32 minStep);
s16 Math_SmoothStepToS(s16* pValue, s16 target, s16 scale, s16 step, s16 minStep);
void Math_ApproachS(s16* pValue, s16 target, s16 scale, s16 step);
void Color_RGBA8_Copy(Color_RGBA8* dst, Color_RGBA8* src);
void Sfx_PlaySfxCentered(u16 sfxId);
void Sfx_PlaySfxCentered2(u16 sfxId);
void Sfx_PlaySfxAtPos(Vec3f* projectedPos, u16 sfxId);

#endif
