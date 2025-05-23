/**
 * @file TwoHeadArena.c
 *
 * This file implements a simple general purpose double-ended stack allocator.
 *
 * A double-ended stack allocator accepts allocations at either the "head" or "tail" of its allotted memory region.
 * While in general this type of allocator could accept deallocations on the most recently allocated block at either
 * end, this implementation does not support any individual deallocations; the only provided way to deallocate anything
 * is to reset the entire arena, deallocating everything. This scheme is most applicable to allocating similar data
 * with identical lifetime.
 */
#include "tha.h"

void* THA_GetHead(TwoHeadArena* tha) {
    return tha->head;
}

void THA_SetHead(TwoHeadArena* tha, void* newHead) {
    tha->head = newHead;
}

void* THA_GetTail(TwoHeadArena* tha) {
    return tha->tail;
}

/**
 * Allocates to the head of the Two Head Arena. The allocation will not have any alignment guarantees.
 */
void* THA_AllocHead(TwoHeadArena* tha, size_t size) {
    void* start = tha->head;

    tha->head = (u8*)tha->head + size;
    return start;
}

void* THA_AllocHeadByte(TwoHeadArena* tha) {
    return THA_AllocHead(tha, 1);
}

/**
 * Allocates to the tail end of the Two Head Arena. The allocation will be aligned based on the size of the allocation.
 * All allocations of 16 bytes or more will be aligned to 16-bytes. Otherwise, the alignment will be the largest power
 * of 2 for which the size is a multiple, in order to accommodate the alignment requirements of any data types that can
 * fit within the allocation.
 */
void* THA_AllocTail(TwoHeadArena* tha, size_t size) {
    uintptr_t mask;

    if (size == 8) {
        // Align 8 for multiples of 8
        mask = ALIGN_MASK(8);
    } else if (size == 4 || size == 12) {
        // Align 4 for multiples of 4
        mask = ALIGN_MASK(4);
    } else if (size == 2 || size == 6 || size == 10 || size == 12 || size == 14) {
        // Align 2 for multiples of 2
        mask = ALIGN_MASK(2);
    } else if (size >= 0x10) {
        // Align 0x10 for allocations greater than 0x10
        mask = ALIGN_MASK(0x10);
    } else {
        //! @bug if size is less than 16 and odd the computation below will give NULL. The mask for this case would be
        //! more sensible as ~0, for no extra alignment
        mask = 0;
    }

    tha->tail = (void*)((((uintptr_t)tha->tail & mask) - size) & mask);
    return tha->tail;
}

/**
 * Allocates to the tail end of the Two Head Arena with guaranteed 16-byte alignment.
 */
void* THA_AllocTailAlign16(TwoHeadArena* tha, size_t size) {
    uintptr_t mask = ALIGN_MASK(0x10);

    tha->tail = (void*)((((uintptr_t)tha->tail & mask) - size) & (uintptr_t)(u64)mask);
    return tha->tail;
}

/**
 * Allocates to the tail end of the Two Head Arena using the provided mask to align the allocated region.
 *
 * @param tha   Arena to allocate to
 * @param size  Size of the allocation
 * @param mask  Mask to use to align the allocated region. To align to n-bytes where n is a power of 2, use the
 *              ALIGN_MASK(n) macro
 *
 * @return Pointer to the start of the allocated block
 */
void* THA_AllocTailAlign(TwoHeadArena* tha, size_t size, uintptr_t mask) {
    tha->tail = (void*)((((uintptr_t)tha->tail & mask) - size) & mask);
    return tha->tail;
}

/**
 * Gets the remaining size of the Two Head Arena
 *
 * @return Remaining size. A negative number indicates an overflow.
 */
s32 THA_GetRemaining(TwoHeadArena* tha) {
    return (s32)((u8*)tha->tail - (u8*)tha->head);
}

/**
 * @return true if the Two Head Arena has overflowed, false otherwise
 */
u32 THA_IsCrash(TwoHeadArena* tha) {
    return THA_GetRemaining(tha) < 0;
}

/**
 * Resets the head and tail positions of the Two Head Arena, all prior allocations are effectively considered free
 * as any new allocations will begin to overwrite them.
 */
void THA_Reset(TwoHeadArena* tha) {
    tha->head = tha->start;
    tha->tail = (u8*)tha->start + tha->size;
}

/**
 * Creates a new Two Head Arena at `start` with available size `size`
 */
void THA_Init(TwoHeadArena* tha, void* start, size_t size) {
    tha->start = start;
    tha->size = size;
    THA_Reset(tha);
}

/**
 * Destroys the Two Head Arena, no further allocations are possible
 */
void THA_Destroy(TwoHeadArena* tha) {
    bzero(tha, sizeof(TwoHeadArena));
}
