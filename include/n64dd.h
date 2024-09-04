#ifndef N64DD_H
#define N64DD_H

#include "ultra64.h"
#include "z64dma.h"
#include "z64pause.h"
#include "z64scene.h"

struct RegEditor;
struct SaveContext;

// TODO Use the specific pointer types instead of void*
typedef struct n64ddStruct_800FEE70_pointers {
    void* unk_00;
    void* unk_04;
    struct RegEditor* unk_08;
    void* unk_0C[31];
    struct SaveContext* unk_88;
    void* unk_8C[9];
} n64ddStruct_800FEE70_pointers; // size = 0xB0

struct n64ddStruct_80121220;
struct PlayState;

typedef struct n64ddStruct_80121220 {
    void (*unk_00)(n64ddStruct_800FEE70_pointers*, struct n64ddStruct_80121220*);
    void (*unk_04)(void);
    char unk_08[0x2C];
    void (*unk_34)(PauseMapMarksData**);
    void (*unk_38)(PauseMapMarksData**);
    void (*unk_3C)(void);
    void (*unk_40)(void);
    s32 (*unk_44)(struct PlayState*);
    char unk_48[0x24];
    void (*unk_6C)(struct PlayState*, SceneDrawConfigFunc*);
    s32 (*unk_70)(DmaRequest* req, void* ram, uintptr_t vrom, size_t size, u32 unk, OSMesgQueue* queue, OSMesg msg);
    char unk_74[4];
    s32 (*unk_78)(struct PlayState*, void*, void*);
} n64ddStruct_80121220; // size = ?

void func_800AD410(void);
void func_800AD488(void);
n64ddStruct_80121220* func_800AD4C0(n64ddStruct_80121220* arg0);
void func_800AD51C(void);
n64ddStruct_800FEE70_pointers* func_800AD560(void);
void func_800AD590(void);
void func_800AD598(s32 arg0, s32 arg1, s32 arg2);

u32 func_801C6E80(void);
void func_801C6EA0(union Gfx** gfxP);
s32 func_801C70FC(void);
void func_801C7268(void);
s32 func_801C7658(void);
s32 func_801C7818(void);
void func_801C7C1C(void* dest, s32 offset, s32 size);
void func_801C7E78(void);
void n64dd_SetDiskVersion(s32 arg0);

extern n64ddStruct_800FEE70_pointers D_800FEE70;
extern n64ddStruct_80121220* B_80121220;

extern u8 D_80121210;
extern u8 D_80121211;
extern u8 D_80121212;
extern vu8 D_80121213;
extern vu8 D_80121214;

#endif
