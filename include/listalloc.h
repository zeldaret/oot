#ifndef LISTALLOC_H
#define LISTALLOC_H

#include "ultra64/ultratypes.h"

typedef struct ListAlloc {
    /* 0x00 */ struct ListAlloc* prev;
    /* 0x04 */ struct ListAlloc* next;
} ListAlloc; // size = 0x8

ListAlloc* ListAlloc_Init(ListAlloc* this);
void* ListAlloc_Alloc(ListAlloc* this, u32 size);
void ListAlloc_Free(ListAlloc* this, void* data);
void ListAlloc_FreeAll(ListAlloc* this);

#endif
