#ifndef _Z64EFFECT_H_
#define _Z64EFFECT_H_
#include <color.h>

typedef struct {
    /* 0x00 */ Vec3f velocity;
    /* 0x0C */ Vec3f position;
    /* 0x18 */ Vec3s unk_18;
    /* 0x1E */ Vec3s unk_1E;
} EffSparkParticle; // size = 0x24

typedef struct {
    /* 0x000 */ Vec3s position;
    /* 0x008 */ s32 numParticles; // Will be calculated as particleFactor1 * particleFactor2 + 2
    /* 0x00C */ EffSparkParticle particles[32];
    /* 0x48C */ f32 velocity;
    /* 0x490 */ f32 gravity;
    /* 0x494 */ u32 particleFactor1;
    /* 0x498 */ u32 particleFactor2;
    /* 0x49C */ Color_RGBA8 colorStart[4];
    /* 0x4AC */ Color_RGBA8 colorEnd[4];
    /* 0x4BC */ s32 age;
    /* 0x4C0 */ s32 duration;
} EffSparkParams; // size = 0x4C4  

// gz has trail related structs but they seem to be different in dbg
typedef struct {
    /* 0x0000 */ char        unk_00[0x184];
    /* 0x0184 */ Color_RGBA8 p1Start;
    /* 0x0188 */ Color_RGBA8 p2Start;
    /* 0x018C */ Color_RGBA8 p1End;
    /* 0x0190 */ Color_RGBA8 p2End;
    /* 0x0194 */ u32         unk_194; // these are proably bytes
    /* 0x0198 */ u32         unk_198;
    /* 0x019C */ u32         unk_19C;
    /* 0x01A0 */
} TrailEffect; // size = unk

typedef struct {
    /* 0x00 */ u8 numParticles;
    /* 0x02 */ Vec3s position;
    /* 0x08 */ Color_RGBA8 primColorStart;
    /* 0x0C */ Color_RGBA8 envColorStart;
    /* 0x10 */ Color_RGBA8 primColorMid;
    /* 0x14 */ Color_RGBA8 envColorMid;
    /* 0x18 */ Color_RGBA8 primColorEnd;
    /* 0x1C */ Color_RGBA8 envColorEnd;
    /* 0x20 */ f32 acceleration;
    /* 0x24 */ f32 maxInitialSpeed;
    /* 0x28 */ f32 lengthCutoff;
    /* 0x2C */ u8 duration;
    /* 0x2E */ LightInfoPositionalParams lightParams;
    /* 0x3C */ s32 hasLight;
} EffShieldParticleInit; // size = 0x40

#endif
