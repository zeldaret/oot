#ifndef _Z_BOSS_GOMA_H_
#define _Z_BOSS_GOMA_H_

#include <ultra64.h>
#include <global.h>

struct BossGoma;

typedef void (*BossGomaActionFunc)(struct BossGoma*, GlobalContext*);

typedef struct BossGoma {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossGomaActionFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ s16 unk_19E;
    /* 0x01A0 */ s16 unk_1A0;
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s16 unk_1A4[3];
    /* 0x01AA */ s16 unk_1AA[4];
    /* 0x01B2 */ s16 unk_1B2;
    /* 0x01B4 */ s16 unk_1B4;
    /* 0x01B6 */ s16 unk_1B6;
    /* 0x01B8 */ s16 unk_1B8;
    /* 0x01BA */ s16 unk_1BA;
    /* 0x01BC */ s16 unk_1BC;
    /* 0x01BE */ s16 unk_1BE;
    /* 0x01C0 */ s16 unk_1C0;
    /* 0x01C2 */ s16 unk_1C2;
    /* 0x01C4 */ s16 unk_1C4;
    /* 0x01C6 */ s16 unk_1C6;
    /* 0x01C8 */ char unk_1C8[0x8];
    /* 0x01D0 */ s16 unk_1D0;
    /* 0x01D2 */ s16 unk_1D2;
    /* 0x01D4 */ s16 unk_1D4;
    /* 0x01D6 */ s16 unk_1D6;
    /* 0x01D8 */ char unk_1D8[0x10];
    /* 0x01E8 */ f32 unk_1E8[4];
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ f32 unk_1FC;
    /* 0x0200 */ f32 unk_200;
    /* 0x0204 */ f32 unk_204[3];
    /* 0x0210 */ f32 unk_210[3];
    /* 0x021C */ f32 unk_21C;
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ f32 unk_224;
    /* 0x0228 */ f32 unk_228[2]; // Probably wrong, needed to match a function
    ///* 0x022C */ f32 unk_22C;
    /* 0x0230 */ char unk_230[0x30];
    /* 0x0260 */ Vec3f unk_260;
    /* 0x026C */ Vec3f unk_26C;
    /* 0x0278 */ Vec3f unk_278;
    /* 0x0284 */ Vec3f unk_284;
    /* 0x0290 */ Vec3f unk_290;
    /* 0x029C */ Vec3f unk_29C;
    /* 0x02A8 */ Vec3f unk_2A8[84];
    /* 0x0698 */ char unk_698[0xC0];
    /* 0x0758 */ u8 unk_758[0x64];
    /* 0x07BC */ ColliderJntSph collider;
    /* 0x07DC */ ColliderJntSphItem colliderItems[13];
} BossGoma; // size = 0x0B1C

extern const ActorInit Boss_Goma_InitVars;

#endif
