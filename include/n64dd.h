#ifndef N64DD_H
#define N64DD_H

typedef struct n64ddStruct_80121AF0 {
    char unk_00[0x3C];
    void (*unk_3C)(void);
    void (*unk_40)(void);
} n64ddStruct_80121AF0; // size = ?

extern n64ddStruct_80121AF0* B_80121AF0;

#endif
