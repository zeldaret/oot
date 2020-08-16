#ifndef _Z_BOSS_FD_H_
#define _Z_BOSS_FD_H_

#include <ultra64.h>
#include <global.h>

struct BossFd;

typedef void (*BossFdActionFunc)(struct BossFd*, GlobalContext*);

typedef struct {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ u8 unk_24;
    /* 0x25 */ u8 unk_25;
    /* 0x26 */ Color_RGBA8_n unk_26;
    /* 0x2A */ s16 unk_2A;
    /* 0x2C */ s16 unk_2C;
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
} BossFdStruct1; // size = 0x3C

typedef struct BossFd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime1;
    /* 0x0190 */ SkelAnime skelAnime2;
    /* 0x01D4 */ SkelAnime skelAnime3;
    /* 0x0218 */ BossFdActionFunc actionFunc;
    /* 0x021C */ s16 unk_21C;
    /* 0x021E */ s16 unk_21E;
    /* 0x0220 */ s16 unk_220;
    /* 0x0222 */ s16 unk_222;
    /* 0x0224 */ s16 unk_224;
    /* 0x0226 */ s16 unk_226;
    /* 0x0228 */ s16 unk_228;
    /* 0x022A */ char unk_22A[2];
    /* 0x022C */ s16 unk_22C;
    /* 0x022E */ s16 unk_22E;
    /* 0x0230 */ s16 unk_230;
    /* 0x0232 */ s16 unk_232;
    /* 0x0234 */ char unk_234[4];
    /* 0x0238 */ s16 unk_238;
    /* 0x023A */ s16 unk_23A;
    /* 0x023C */ s16 unk_23C;
    /* 0x023E */ s16 unk_23E;
    /* 0x0240 */ s16 unk_240;
    /* 0x0242 */ char unk_242[6];
    /* 0x0248 */ s16 unk_248[6];
    /* 0x0254 */ f32 unk_254;
    /* 0x0258 */ f32 unk_258;
    /* 0x025C */ f32 unk_25C;
    /* 0x0260 */ f32 unk_260;
    /* 0x0264 */ char unk_264[0xC];
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ char unk_278[0xC];
    /* 0x0284 */ Vec3f unk_284;
    /* 0x0290 */ f32 unk_290;
    /* 0x0294 */ f32 unk_294;
    /* 0x0296 */ char unk_296[0x14];
    /* 0x02AC */ f32 unk_2AC;
    /* 0x02B0 */ char unk_2B0[0xC];
    /* 0x02BC */ Vec3f unk_2BC;
    /* 0x02C8 */ Vec3f unk_2C8;
    /* 0x02D4 */ u8 unk_2D4;
    /* 0x02D5 */ s8 unk_2D5;
    /* 0x02D6 */ char unk_2D6[2];
    /* 0x02D8 */ u8 unk_2D8;
    /* 0x02D9 */ u8 unk_2D9;
    /* 0x02DA */ char unk_2DA[0x4B2];
    /* 0x078C */ Vec3f unk_078C[100];
    /* 0x0C3C */ char unk_0C3C[0x1C8];
    /* 0x0E04 */ Vec3f unk_0E04[100];
    /* 0x12B4 */ char unk_12B4[0x11C];
    /* 0x13D0 */ s16 unk_13D0;
    /* 0x13D2 */ char unk_13D2[0x22];
    /* 0x13F4 */ Vec3f unk_13F4;
    /* 0x1400 */ char unk_1400[2];
    /* 0x1402 */ s16 unk_1402;
    /* 0x1404 */ char unk_1404[0x8C];
    /* 0x1490 */ ColliderJntSph collider1;
    /* 0x14B0 */ ColliderJntSphItem colliderItems[19];
    /* 0x1970 */ BossFdStruct1 unk_1970[180];
} BossFd; // size = 0x43A0

extern const ActorInit Boss_Fd_InitVars;

#endif