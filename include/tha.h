#ifndef THA_H
#define THA_H

#include "ultra64.h"
#include "alignment.h"

typedef struct {
    /* 0x0000 */ size_t size;
    /* 0x0004 */ void*  start;
    /* 0x0008 */ void*  head;
    /* 0x000C */ void*  tail;
} TwoHeadArena; // size = 0x10

void* THA_GetHead(TwoHeadArena* tha);
void THA_SetHead(TwoHeadArena* tha, void* newHead);
void* THA_GetTail(TwoHeadArena* tha);
void* THA_AllocHead(TwoHeadArena* tha, size_t size);
void* THA_AllocHead1(TwoHeadArena* tha);
void* THA_AllocTail(TwoHeadArena* tha, size_t size);
void* THA_AllocTailAlign16(TwoHeadArena* tha, size_t size);
void* THA_AllocTailAlign(TwoHeadArena* tha, size_t size, uintptr_t mask);
s32 THA_GetRemaining(TwoHeadArena* tha);
u32 THA_IsCrash(TwoHeadArena* tha);
void THA_Reset(TwoHeadArena* tha);
void THA_New(TwoHeadArena* tha, void* start, size_t size);
void THA_Destroy(TwoHeadArena* tha);

#define THA_ALIGN_MASK(n) ALIGN_MASK(n)

#define THA_ALIGNOF_MASK(structName) ALIGN_MASK(ALIGNOF(structName))

#endif
