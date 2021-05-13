#ifndef _Z_FISHING_H_
#define _Z_FISHING_H_

#include "ultra64.h"
#include "global.h"

struct Fishing;

typedef struct Fishing {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x004];
    /* 0x0150 */ u8 unk_150;
    /* 0x0151 */ u8 unk_151;
    /* 0x0152 */ char unk_152[0x005];
    /* 0x0157 */ u8 unk_157;
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ char unk_166[0x006];
    /* 0x016C */ s16 unk_16C;
    /* 0x016E */ s16 unk_16E;
    /* 0x0170 */ s16 unk_170;
    /* 0x0172 */ s16 unk_172;
    /* 0x0174 */ s16 unk_174;
    /* 0x0176 */ s16 unk_176;
    /* 0x0178 */ s16 unk_178;
    /* 0x017A */ s16 unk_17A;
    /* 0x017C */ s16 unk_17C;
    /* 0x017E */ s16 unk_17E;
    /* 0x0180 */ char unk_180[0x008];
    /* 0x0188 */ f32 unk_188;
    /* 0x018C */ char unk_18C[0x016];
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s16 unk_1A4;
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ f32 unk_1AC;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ Vec3f unk_1B4;
    /* 0x01C0 */ Vec3f unk_1C0;
    /* 0x01CC */ s16 unk_1CC;
    /* 0x01CE */ s16 unk_1CE;
    /* 0x01D0 */ s16 unk_1D0;
    /* 0x01D2 */ char unk_1D2[0x001];
    /* 0x01D3 */ u8 unk_1D3;
    /* 0x01D4 */ u8 unk_1D4;
    /* 0x01D5 */ char unk_1D5[0x003];
    /* 0x01D8 */ SkelAnime skelAnime;
    /* 0x021C */ LightNode* lightNode;
    /* 0x0220 */ LightInfo lightInfo;
    /* 0x0230 */ ColliderJntSph collider;
    /* 0x0250 */ ColliderJntSphElement colliderElements[12];
} Fishing; // size = 0x0550

extern const ActorInit Fishing_InitVars;

#endif
