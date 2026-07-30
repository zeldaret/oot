#ifndef N64DD_INTERNAL_H
#define N64DD_INTERNAL_H

#include "ultra64.h"
#include "n64dd.h"
#include "stack.h"
#include "irqmgr.h"

extern IrqMgr gIrqMgr; // from main.c

typedef struct struct_801DA5D0 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ char pad1[3];
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s8 unk8;
    /* 0x09 */ char pad9[3];
    /* 0x0C */ void (*unkC)(s32, s32, s32);
    /* 0x10 */ s32 unk10;
    /* 0x14 */ void (*unk14)(void*, uintptr_t, size_t);
    /* 0x18 */ void* unk18;
    union { // different substruct based on struct_801DA5D0.unk0 ? see func_801C8860
        struct {
            /* 0x1C */ OSMesgQueue* unk1C;
            /* 0x20 */ OSMesgQueue* unk20;
            /* 0x24 */ s32 unk24;
            /* 0x28 */ void* unk28;
            /* 0x2C */ s32 unk2C;
        } unk1C_1;
        struct {
            /* 0x1C */ s32 unk1C;
            /* 0x20 */ s32 unk20;
        } unk1C_3_4;
    };
} struct_801DA5D0; // size >= 0x30

typedef struct struct_801E1598 {
    /* 0x00 */ LEOCmd unk0;
    /* 0x1C */ OSMesgQueue unk1C;
    /* 0x34 */ char pad34[4];
    /* 0x38 */ LEODiskID unk38;
    /* 0x58 */ void* unk58;
    /* 0x5C */ s32 unk5C;
    /* 0x60 */ s32 unk60;
    /* 0x64 */ s8 unk64;
    /* 0x65 */ s8 unk65;
    /* 0x66 */ u8 unk66;
    /* 0x67 */ char pad67[1];
    /* 0x68 */ s32 unk68; // OSMesg
    /* 0x6C */ s32 unk6C;
} struct_801E1598; // size >= 0x70

s32 func_801C8860(struct_801DA5D0*);
s32 func_801C8A24(void);
void func_801CAA60(u8*, UNK_TYPE, UNK_TYPE, UNK_TYPE, s32, s32, s16*, s32);
void func_801C9318(void);
void func_801CA3C0(s32, void (*)(void*, uintptr_t, size_t));
s32 func_801C8F9C(struct_801E1598*);

typedef struct struct_801DA5C8 {
    /* 0x000 */ s32 unk0;
    /* 0x004 */ s32 unk4;
    /* 0x008 */ void* unk8;
    /* 0x00C */ void* unkC;
    /* 0x010 */ n64ddStruct_80121220* unk10;
    /* 0x014 */ char pad14[0x104];
} struct_801DA5C8; // size = 0x118
extern s32 D_801D3728;
extern s32 D_801E17E0;
extern s32 D_801E17E4;
typedef struct struct_801C79DC {
    /* 0x00 */ OSMesg unk0[30];
    /* 0x78 */ OSMesgQueue unk78;
    /* 0x90 */ IrqMgrClient unk90;
    /* 0x98 */ IrqMgr* unk98;
} struct_801C79DC; // size >= 0x9C
extern s32 D_801D3720;
typedef struct struct_801E1590 {
    /* 0x0 */ OSMesgQueue* unk0;
    /* 0x4 */ OSMesgQueue* unk4;
} struct_801E1590; // size >= 8
extern void (*D_801D3734)(UNK_PTR, UNK_PTR, UNK_PTR);
extern s32 D_801D3710;
void func_801C8B40(struct_801E1598*);
void func_801C8AF8(struct_801E1598*);
UNK_PTR func_801CA800(s32);
UNK_PTR func_801CA698(s32);
UNK_PTR func_801CA86C(void);
UNK_PTR func_801CA8A0(s32);
UNK_PTR func_801CA8E0(void);
UNK_PTR func_801CA730(void);
extern s32 (*D_801D36D4)(struct_801E1598*);
s32 func_801C9BA4(struct_801E1598*);
void func_801CA280(UNK_PTR, UNK_TYPE, const char*);
extern const char* gN64DDLocalizedErrorNumberHeaders[2];
void func_801C9D68(char*, u16);

extern u8 gN64DDDiskReadTemporaryBuffer[];

#endif
