#ifndef _Z_EN_KANBAN_H_
#define _Z_EN_KANBAN_H_

#include "ultra64.h"
#include "global.h"

struct EnKanban;

typedef struct EnKanban {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[4];
    /* 0x0150 */ u8 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ u8 unk_154;
    /* 0x0156 */ u16 unk_156;
    /* 0x0158 */ u8 unk_158;
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ Vec3f unk_15C;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ char unk_16A[2];
    /* 0x016C */ s16 unk_16C;
    /* 0x016E */ s16 unk_16E;
    /* 0x0170 */ s16 unk_170;
    /* 0x0172 */ s16 unk_172;
    /* 0x0174 */ s8 unk_174;
    /* 0x0175 */ s8 unk_175;
    /* 0x0176 */ s16 unk_176;
    /* 0x0178 */ s16 unk_178;
    /* 0x017A */ u8 unk_17A;
    /* 0x017C */ f32 unk_17C;
    /* 0x0180 */ f32 unk_180;
    /* 0x0184 */ s16 unk_184;
    /* 0x0188 */ Vec3f unk_188;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ u8 unk_19C;
    /* 0x019D */ u8 unk_19D;
    /* 0x019E */ u8 unk_19E;
    /* 0x01A0 */ ColliderCylinder collider;
} EnKanban; // size = 0x01EC

extern const ActorInit En_Kanban_InitVars;

#endif
