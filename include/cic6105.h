#ifndef CIC6105_H
#define CIC6105_H

#include "ultra64.h"

typedef struct struct_800067C0 {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ void* unk_08;
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ void* unk_10;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ const char* unk_18;
    /* 0x1C */ s32 unk_1C;
    /* 0x20 */ s32 unk_20;
    /* 0x24 */ s32 unk_24;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ s32 unk_2C;
    /* 0x30 */ s32 unk_30;
    /* 0x34 */ s32 unk_34;
    /* 0x38 */ s32 unk_38;
    /* 0x3C */ s32 unk_3C;
} struct_800067C0; // size = 0x40

typedef struct struct_80001640_sp38 {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ char unk_04[4];
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ struct_800067C0 unk_10;
    /* 0x50 */ OSMesgQueue* unk_50;
    /* 0x54 */ s32 unk_54;
    /* 0x58 */ char unk_58[16];
} struct_80001640_sp38; // size = 0x68

extern u32 B_80008EE0;

void func_800015E8_unknown_ciccinit(void);
void func_8000161C_unknown_ciccdeinit(void);
void func_80001640_unknown(void);
void func_80001720(void);

#endif
