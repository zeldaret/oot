#ifndef N64DD_H
#define N64DD_H

#include "z64scene.h"

struct RegEditor;
struct SaveContext;

typedef struct n64ddStruct_800FF4B0_pointers {
    char unk_00[4];
    s32 unk_04;
    struct RegEditor* unk_08;
    char unk_0C[0x7C];
    struct SaveContext* unk_88;
} n64ddStruct_800FF4B0_pointers; // size = ?

struct n64ddStruct_80121AF0;
struct PlayState;

typedef struct n64ddStruct_80121AF0 {
    void (*unk_00)(n64ddStruct_800FF4B0_pointers*, struct n64ddStruct_80121AF0*);
    void (*unk_04)(void);
    char unk_08[0x34];
    void (*unk_3C)(void);
    void (*unk_40)(void);
    char unk_44[0x28];
    void (*unk_6C)(struct PlayState*, SceneDrawConfigFunc*);
} n64ddStruct_80121AF0; // size = ?

void func_800ADA80(void);
void func_800ADAF8(void);
n64ddStruct_80121AF0* func_800ADB30(n64ddStruct_80121AF0* arg0);
void func_800ADB8C(void);
n64ddStruct_800FF4B0_pointers* func_800ADBD0(void);
void func_800ADC00(void);
void func_800ADC08(s32 arg0, s32 arg1, s32 arg2);

extern n64ddStruct_800FF4B0_pointers D_800FF4B0;
extern n64ddStruct_80121AF0* B_80121AF0;

extern u8 B_80121AE0;
extern s8 B_80121AE1;
extern u8 B_80121AE2;

// rom?
extern char D_00B8ADA0[];
extern char D_00B9DA70[];

extern char D_801DA410; // type ?
extern char D_801E8090; // type ?

#endif
