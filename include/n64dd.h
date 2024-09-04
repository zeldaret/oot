#ifndef N64DD_H
#define N64DD_H

#include "ultra64.h"
#include "z64pause.h"
#include "z64scene.h"

struct GameState;
union Gfx;
struct PlayState;
struct RegEditor;
struct RoomContext;
struct SaveContext;
struct Scene;

// TODO Use the specific pointer types instead of void*
typedef struct n64ddStruct_800FF4B0_pointers {
    void* unk_00;
    void* unk_04;
    struct RegEditor* unk_08;
    void* unk_0C[31];
    struct SaveContext* unk_88;
    void* unk_8C[9];
} n64ddStruct_800FF4B0_pointers; // size = 0xB0

struct n64ddStruct_80121AF0;

typedef struct n64ddStruct_80121AF0 {
    void (*unk_00)(n64ddStruct_800FF4B0_pointers*, struct n64ddStruct_80121AF0*);
    void (*unk_04)(void);
    void (*unk_08)(struct PlayState* play, struct RoomContext* roomCtx, s32 roomNum);
    void (*unk_0C)(struct PlayState* play);
    void (*unk_10)(struct PlayState* play);
    void (*unk_14)(struct PlayState* play);
    char unk_18[0x1C];
    void (*unk_34)(PauseMapMarksData**);
    void (*unk_38)(PauseMapMarksData**);
    void (*unk_3C)(void);
    void (*unk_40)(void);
    s32 (*unk_44)(struct PlayState*);
    struct SceneTableEntry* (*unk_48)(s32 sceneId, struct SceneTableEntry* sceneTable);
    char unk_4C[0x08];
    s32 (*unk_54)(struct PlayState*);
    char unk_58[0x14];
    void (*unk_6C)(struct PlayState*, SceneDrawConfigFunc*);
    s32 (*unk_70)(struct DmaRequest* req, void* ram, uintptr_t vrom, size_t size, u32 unk, OSMesgQueue* queue, OSMesg msg);
    void (*unk_74)(struct GameState*);
    s32 (*unk_78)(struct PlayState*, void*, void*);
} n64ddStruct_80121AF0; // size = ?

void func_800ADA80(void);
void func_800ADAF8(void);
n64ddStruct_80121AF0* func_800ADB30(n64ddStruct_80121AF0* arg0);
void func_800ADB8C(void);
n64ddStruct_800FF4B0_pointers* func_800ADBD0(void);
void func_800ADC00(void);
void func_800ADC08(s32 arg0, s32 arg1, s32 arg2);

void func_801C8510_unknown(void* dest, s32 offset, s32 size);
void func_801C86F0_unknown(void);
void func_801C7760_unknown(union Gfx** gfx);

extern n64ddStruct_800FF4B0_pointers D_800FF4B0;
extern n64ddStruct_80121AF0* B_80121AF0;

extern u8 B_80121AE0;
extern s8 B_80121AE1;
extern u8 B_80121AE2;
extern vu8 B_80121AE3;
extern vu8 B_80121AE4;

extern char D_801DA410; // type ?
extern char D_801E8090; // type ?

#endif
