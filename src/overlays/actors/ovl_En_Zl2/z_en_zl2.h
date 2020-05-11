#ifndef _Z_EN_ZL2_H_
#define _Z_EN_ZL2_H_

#include <ultra64.h>
#include <global.h>

struct EnZl2;

typedef s32 (*EnZl2PreLimbDrawFunc)(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx, Gfx** gfx);

typedef struct EnZl2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ char unk_196[0x2];
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ char unk_19A[0x2];
    /* 0x019C */ s32 action;
    /* 0x01A0 */ s32 drawConfig;
    /* 0x01A4 */ char unk_1A4[0x4];
    /* 0x01A8 */ s32 unk_1A8;
    /* 0x01AC */ char unk_1AC[0x90];
    /* 0x023C */ f32 unk_23C;
    /* 0x0240 */ s32 unk_240;
    /* 0x0244 */ s32 unk_244;
    /* 0x0248 */ s32 unk_248;
    /* 0x024C */ char unk_24C[0x4];
    /* 0x0250 */ s32 unk_250;
    /* 0x0254 */ s32 unk_254;
    /* 0x0258 */ char unk_258[0xC];
    /* 0x0264 */ s32 unk_264;
    /* 0x0268 */ char unk_268[0xC];
    /* 0x0274 */ s32 unk_274;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ f32 unk_27C;
} EnZl2; // size = 0x0280

extern const ActorInit En_Zl2_InitVars;

#endif
