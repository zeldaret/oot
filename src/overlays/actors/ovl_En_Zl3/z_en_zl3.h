#ifndef _Z_EN_ZL3_H_
#define _Z_EN_ZL3_H_

#include <ultra64.h>
#include <global.h>

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
    /* 0x0246 */ char unk_246[0x2];
    /* 0x0248 */ s16 unk_248;
    /* 0x024A */ char unk_24A[0x2];
    /* 0x024C */ s32 action;
    /* 0x0250 */ s32 drawConfig;
    /* 0x0254 */ char unk_254[0x4];
    /* 0x0258 */ s32 unk_258;
    /* 0x025C */ char unk_25C[0x94];
    /* 0x02F0 */ s32 unk_2F0;
    /* 0x02F4 */ char unk_2F4[0x4];
    /* 0x02F8 */ s32 unk_2F8;
    /* 0x02FC */ char unk_2FC[0xC];
    /* 0x0308 */ s32 unk_308;
    /* 0x030C */ Path* unk_30C;
    /* 0x0310 */ s32 unk_310;
    /* 0x0314 */ s32 unk_314;
    /* 0x0318 */ s32 unk_318;
    /* 0x031C */ char unk_31C[0xC];
    /* 0x0328 */ s32 unk_328;
    /* 0x032C */ char unk_32C[0x18];
    /* 0x0344 */ u16 unk_344;
    /* 0x0346 */ u16 unk_346;
    /* 0x0348 */ char unk_348[0x30];
    /* 0x0378 */ ColliderCylinder collider;
    /* 0x03C4 */ s32 unk_3C4;
    /* 0x03C8 */ u8 unk_3C8;
    /* 0x03C9 */ char unk_3C9[0x3];
    /* 0x03CC */ f32 unk_3CC;
    /* 0x03D0 */ s16 unk_3D0;
    /* 0x03D2 */ char unk_3D2[0xA];
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
