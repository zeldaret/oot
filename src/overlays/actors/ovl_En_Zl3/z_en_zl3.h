#ifndef _Z_EN_ZL3_H_
#define _Z_EN_ZL3_H_

#include <ultra64.h>
#include <global.h>

#include "overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.h"

struct EnZl3;

typedef void (*EnZl3ActionFunc)(struct EnZl3*, GlobalContext*);
typedef void (*EnZl3DrawFunc)(struct EnZl3*, GlobalContext*);
typedef s32 (*EnZl3OverrideLimbDraw2)(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot,
                                      struct EnZl3 *thisx, Gfx **gfx);

typedef struct EnZl3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[15];
    /* 0x01EA */ Vec3s transitionDrawTable[15];
    /* 0x0244 */ s16 unk_244;
    /* 0x0246 */ s16 unk_246;
    /* 0x0248 */ s16 unk_248;
    /* 0x024A */ char unk_24A[0x2];
    /* 0x024C */ s32 action;
    /* 0x0250 */ s32 drawConfig;
    /* 0x0254 */ char unk_254[0x4];
    /* 0x0258 */ s32 unk_258;
    /* 0x025C */ char unk_25C[0x90];
    /* 0x02EC */ f32 unk_2EC;
    /* 0x02F0 */ s32 unk_2F0;
    /* 0x02F4 */ char unk_2F4[0x4];
    /* 0x02F8 */ s32 unk_2F8;
    /* 0x02FC */ char unk_2FC[0xC];
    /* 0x0308 */ s32 unk_308;
    /* 0x030C */ Path* unk_30C;
    /* 0x0310 */ s32 unk_310;
    /* 0x0314 */ s32 unk_314;
    /* 0x0318 */ s32 unk_318;
    /* 0x031C */ Vec3f unk_31C;
    /* 0x0328 */ s32 unk_328;
    /* 0x032C */ Vec3f unk_32C;
    /* 0x0338 */ Vec3f unk_338;
    /* 0x0344 */ u16 unk_344;
    /* 0x0346 */ u16 unk_346;
    /* 0x0348 */ Vec3f unk_348;
    /* 0x0354 */ Vec3f unk_354;
    /* 0x0360 */ f32 unk_360;
    /* 0x0364 */ f32 unk_364;
    /* 0x0368 */ f32 unk_368;
    /* 0x036C */ s32 unk_36C;
    /* 0x0370 */ s32 unk_370;
    /* 0x0374 */ s32 unk_374;
    /* 0x0378 */ ColliderCylinder collider;
    /* 0x03C4 */ s32 unk_3C4;
    /* 0x03C8 */ u8 unk_3C8;
    /* 0x03CC */ f32 unk_3CC;
    /* 0x03D0 */ s16 unk_3D0;
    /* 0x03D2 */ char unk_3D2[0x2];
    /* 0x03D4 */ BossGanon2* unk_3D4;
    /* 0x03D8 */ s32 unk_3D8;
    /* 0x03DC */ f32 unk_3DC;
    /* 0x03E0 */ f32 unk_3E0;
    /* 0x03E4 */ f32 unk_3E4;
    /* 0x03E8 */ f32 unk_3E8;
    /* 0x03EC */ f32 unk_3EC;
    /* 0x03F0 */ f32 unk_3F0;
    /* 0x03F4 */ f32 unk_3F4;
    /* 0x03F8 */ struct_80034A14_arg1 unk_3F8;
} EnZl3; // size = 0x0420

extern const ActorInit En_Zl3_InitVars;

#endif
