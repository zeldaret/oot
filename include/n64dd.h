#ifndef N64DD_H
#define N64DD_H

#include "z64scene.h"

struct PlayState;

typedef struct n64ddStruct_80121AF0 {
    char unk_00[0x3C];
    void (*unk_3C)(void);
    void (*unk_40)(void);
    char unk_44[0x28];
    void (*unk_6C)(struct PlayState*, SceneDrawConfigFunc*);
} n64ddStruct_80121AF0; // size = ?

extern n64ddStruct_80121AF0* B_80121AF0;

#endif
