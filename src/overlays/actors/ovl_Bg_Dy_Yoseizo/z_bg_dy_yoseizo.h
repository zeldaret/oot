#ifndef Z_BG_DY_YOSEIZO_H
#define Z_BG_DY_YOSEIZO_H

#include "ultra64.h"
#include "actor.h"

#define BG_DY_YOSEIZO_EFFECT_COUNT 200

typedef struct BgDyYoseizoEffect {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ char pad1[3]; /* maybe part of unk0[4]? */
    /* 0x04 */ Vec3f unk4;
    /* 0x10 */ Vec3f unk10;
    /* 0x1C */ Vec3f unk1C;
    /* 0x28 */ Color_RGB8 unk28;
    /* 0x2B */ Color_RGB8 unk2B;
    /* 0x2E */ s16 unk2E;
    /* 0x30 */ f32 unk30;
    /* 0x34 */ s16 unk34;
    /* 0x36 */ s16 unk36;
    /* 0x38 */ f32 unk38;
    /* 0x3C */ f32 unk3C;
    /* 0x40 */ f32 unk40;
} BgDyYoseizoEffect; // size = 0x44

struct BgDyYoseizo;

typedef void (*BgDyYoseizoActionFunc)(struct BgDyYoseizo*, struct PlayState*);

typedef struct BgDyYoseizo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ void (*actionFunc)(struct BgDyYoseizo*, struct PlayState*);
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ Vec3s unk194[28];
    /* 0x023C */ Vec3s unk23C[28];
    /* 0x02E4 */ u8 unk2E4;
    /* 0x02E5 */ u8 unk2E5;
    /* 0x02E6 */ u8 unk2E6;
    /* 0x02E7 */ char pad2E7[1];
    /* 0x02E8 */ s16 unk2E8;
    /* 0x02EA */ s16 unk2EA;
    /* 0x02EC */ s16 unk2EC;
    /* 0x02EE */ s16 unk2EE;
    /* 0x02F0 */ s16 unk2F0;
    /* 0x02F2 */ s16 unk2F2;
    /* 0x02F4 */ s16 unk2F4;
    /* 0x02F6 */ s16 unk2F6;
    /* 0x02F8 */ s16 unk2F8;
    /* 0x02FA */ s16 unk2FA;
    /* 0x02FC */ s16 unk2FC;
    /* 0x02FE */ s16 unk2FE;
    /* 0x0300 */ s16 unk300;
    /* 0x0302 */ s16 unk302;
    /* 0x0304 */ s16 unk304;
    /* 0x0306 */ s16 unk306;
    /* 0x0308 */ f32 unk308;
    /* 0x030C */ f32 unk30C;
    /* 0x0310 */ f32 unk310;
    /* 0x0314 */ f32 unk314;
    /* 0x0318 */ f32 unk318;
    /* 0x031C */ f32 unk31C;
    /* 0x0320 */ f32 unk320;
    /* 0x0324 */ f32 unk324;
    /* 0x0328 */ f32 unk328;
    /* 0x032C */ f32 unk32C;
    /* 0x0330 */ char pad330[4];
    /* 0x0334 */ Vec3s unk334;
    /* 0x033A */ Vec3s unk33A;
    /* 0x0340 */ struct EnDyExtra* unk340;
    /* 0x0344 */ struct EnExItem* unk344;
    /* 0x0348 */ char pad348[0x4C];
    /* 0x0394 */ BgDyYoseizoEffect effects[BG_DY_YOSEIZO_EFFECT_COUNT];
} BgDyYoseizo; // size = 0x38B4

#endif
