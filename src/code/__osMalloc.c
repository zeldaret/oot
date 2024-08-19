#include "global.h"
#include "terminal.h"

#define FILL_ALLOC_BLOCK_FLAG (1 << 0)
#define FILL_FREE_BLOCK_FLAG (1 << 1)
#define CHECK_FREE_BLOCK_FLAG (1 << 2)

#define NODE_MAGIC (0x7373)

#define BLOCK_UNINIT_MAGIC (0xAB)
#define BLOCK_UNINIT_MAGIC_32 (0xABABABAB)
#define BLOCK_ALLOC_MAGIC (0xCD)
#define BLOCK_ALLOC_MAGIC_32 (0xCDCDCDCD)
#define BLOCK_FREE_MAGIC (0xEF)
#define BLOCK_FREE_MAGIC_32 (0xEFEFEFEF)

#define NODE_IS_VALID(node) (((node) != NULL) && ((node)->magic == NODE_MAGIC))

#if OOT_DEBUG

#define NODE_GET_NEXT(node) ArenaImpl_GetNextBlock(node)
#define NODE_GET_PREV(node) ArenaImpl_GetPrevBlock(node)

#define SET_DEBUG_INFO(node, file, line, arena) ArenaImpl_SetDebugInfo(node, file, line, arena)

#define FILL_ALLOC_BLOCK(arena, alloc, size)   \
    if ((arena)->flag & FILL_ALLOC_BLOCK_FLAG) \
    __osMemset(alloc, BLOCK_ALLOC_MAGIC, size)

#define FILL_FREE_BLOCK_HEADER(arena, node)   \
    if ((arena)->flag & FILL_FREE_BLOCK_FLAG) \
    __osMemset(node, BLOCK_FREE_MAGIC, sizeof(ArenaNode))

#define FILL_FREE_BLOCK_CONTENTS(arena, node) \
    if ((arena)->flag & FILL_FREE_BLOCK_FLAG) \
    __osMemset((void*)((u32)(node) + sizeof(ArenaNode)), BLOCK_FREE_MAGIC, (node)->size)

#define CHECK_FREE_BLOCK(arena, node)          \
    if ((arena)->flag & CHECK_FREE_BLOCK_FLAG) \
    __osMalloc_FreeBlockTest(arena, node)

#define CHECK_ALLOC_FAILURE(arena, ptr) (void)0

#else

#define NODE_GET_NEXT(node) (NODE_IS_VALID((node)->next) ? (node)->next : NULL)
#define NODE_GET_PREV(node) (NODE_IS_VALID((node)->prev) ? (node)->prev : NULL)

#define SET_DEBUG_INFO(node, file, line, arena) (void)0
#define FILL_ALLOC_BLOCK(arena, alloc, size) (void)0
#define FILL_FREE_BLOCK_HEADER(arena, node) (void)0
#define FILL_FREE_BLOCK_CONTENTS(arena, node) (void)0
#define CHECK_FREE_BLOCK(arena, node) (void)0

// Number of allocation failures across all arenas.
u32 sTotalAllocFailures = 0;

#define CHECK_ALLOC_FAILURE(arena, ptr) \
    do {                                \
        if ((ptr) == NULL) {            \
            sTotalAllocFailures++;      \
            (arena)->allocFailures++;   \
        }                               \
    } while (0)

#endif

OSMesg sArenaLockMsg;

#if OOT_DEBUG
u32 __osMalloc_FreeBlockTest_Enable;

u32 ArenaImpl_GetFillAllocBlock(Arena* arena) {
    return (arena->flag & FILL_ALLOC_BLOCK_FLAG) != 0;
}
u32 ArenaImpl_GetFillFreeBlock(Arena* arena) {
    return (arena->flag & FILL_FREE_BLOCK_FLAG) != 0;
}
u32 ArenaImpl_GetCheckFreeBlock(Arena* arena) {
    return (arena->flag & CHECK_FREE_BLOCK_FLAG) != 0;
}

void ArenaImpl_SetFillAllocBlock(Arena* arena) {
    arena->flag |= FILL_ALLOC_BLOCK_FLAG;
}
void ArenaImpl_SetFillFreeBlock(Arena* arena) {
    arena->flag |= FILL_FREE_BLOCK_FLAG;
}
void ArenaImpl_SetCheckFreeBlock(Arena* arena) {
    arena->flag |= CHECK_FREE_BLOCK_FLAG;
}

void ArenaImpl_UnsetFillAllocBlock(Arena* arena) {
    arena->flag &= ~FILL_ALLOC_BLOCK_FLAG;
}
void ArenaImpl_UnsetFillFreeBlock(Arena* arena) {
    arena->flag &= ~FILL_FREE_BLOCK_FLAG;
}
void ArenaImpl_UnsetCheckFreeBlock(Arena* arena) {
    arena->flag &= ~CHECK_FREE_BLOCK_FLAG;
}

void ArenaImpl_SetDebugInfo(ArenaNode* node, const char* file, int line, Arena* arena) {
    node->filename = file;
    node->line = line;
    node->threadId = osGetThreadId(NULL);
    node->arena = arena;
    node->time = osGetTime();
}
#endif

void ArenaImpl_LockInit(Arena* arena) {
    osCreateMesgQueue(&arena->lockQueue, &sArenaLockMsg, 1);
}

void ArenaImpl_Lock(Arena* arena) {
    osSendMesg(&arena->lockQueue, NULL, OS_MESG_BLOCK);
}

void ArenaImpl_Unlock(Arena* arena) {
    osRecvMesg(&arena->lockQueue, NULL, OS_MESG_BLOCK);
}

#if OOT_DEBUG
ArenaNode* ArenaImpl_GetNextBlock(ArenaNode* node) {
    ArenaNode* next = node->next;

    if (next != NULL && (next == NULL || (next->magic != NODE_MAGIC))) {
        osSyncPrintf(VT_COL(RED, WHITE) "緊急事態！メモリリーク発見！ (block=%08x)\n" VT_RST, next);
        next = NULL;
        node->next = NULL;
    }
    return next;
}

ArenaNode* ArenaImpl_GetPrevBlock(ArenaNode* node) {
    ArenaNode* prev = node->prev;

    if (prev != NULL && (prev == NULL || (prev->magic != NODE_MAGIC))) {
        osSyncPrintf(VT_COL(RED, WHITE) "緊急事態！メモリリーク発見！ (block=%08x)\n" VT_RST, prev);
        prev = NULL;
        node->prev = NULL;
    }
    return prev;
}
#endif

ArenaNode* ArenaImpl_GetLastBlock(Arena* arena) {
    ArenaNode* last = NULL;
    ArenaNode* iter;

    if (arena != NULL && NODE_IS_VALID(arena->head)) {
        iter = arena->head;
        while (iter != NULL) {
            last = iter;
            iter = NODE_GET_NEXT(last);
        }
    }
    return last;
}

void __osMallocInit(Arena* arena, void* start, u32 size) {
    bzero(arena, sizeof(Arena));
    ArenaImpl_LockInit(arena);
    __osMallocAddBlock(arena, start, size);
    arena->isInit = true;
}

void __osMallocAddBlock(Arena* arena, void* start, s32 size) {
    s32 diff;
    s32 size2;
    ArenaNode* firstNode;
    ArenaNode* lastNode;

    if (start != NULL) {
        firstNode = (ArenaNode*)ALIGN16((u32)start);
        diff = (s32)firstNode - (s32)start;
        size2 = (size - diff) & ~0xF;

        if (size2 > (s32)sizeof(ArenaNode)) {
#if OOT_DEBUG
            __osMemset(firstNode, BLOCK_UNINIT_MAGIC, size2);
#endif
            firstNode->next = NULL;
            firstNode->prev = NULL;
            firstNode->size = size2 - sizeof(ArenaNode);
            firstNode->isFree = true;
            firstNode->magic = NODE_MAGIC;
            ArenaImpl_Lock(arena);
            lastNode = ArenaImpl_GetLastBlock(arena);
            if (lastNode == NULL) {
                arena->head = firstNode;
                arena->start = start;
            } else {
                firstNode->prev = lastNode;
                lastNode->next = firstNode;
            }
            ArenaImpl_Unlock(arena);
        }
    }
}

#if OOT_DEBUG
void ArenaImpl_RemoveAllBlocks(Arena* arena) {
    ArenaNode* iter;
    ArenaNode* next;

    ArenaImpl_Lock(arena);

    iter = arena->head;
    while (iter != NULL) {
        next = NODE_GET_NEXT(iter);
        __osMemset(iter, BLOCK_UNINIT_MAGIC, iter->size + sizeof(ArenaNode));
        iter = next;
    }

    ArenaImpl_Unlock(arena);
}
#endif

void __osMallocCleanup(Arena* arena) {
#if OOT_DEBUG
    ArenaImpl_RemoveAllBlocks(arena);
#endif
    bzero(arena, sizeof(*arena));
}

u8 __osMallocIsInitialized(Arena* arena) {
    return arena->isInit;
}

#if OOT_DEBUG
void __osMalloc_FreeBlockTest(Arena* arena, ArenaNode* node) {
    ArenaNode* node2 = node;
    u32* start;
    u32* end;
    u32* iter;

    if (__osMalloc_FreeBlockTest_Enable) {
        start = (u32*)((u32)node + sizeof(ArenaNode));
        end = (u32*)((u32)start + node2->size);
        iter = start;

        while (iter < end) {
            if (*iter != BLOCK_UNINIT_MAGIC_32 && *iter != BLOCK_FREE_MAGIC_32) {
                osSyncPrintf(
                    VT_COL(RED, WHITE) "緊急事態！メモリリーク検出！ (block=%08x s=%08x e=%08x p=%08x)\n" VT_RST, node,
                    start, end, iter);
                __osDisplayArena(arena);
                return;
            }
            iter++;
        }
    }
}

void* __osMalloc_NoLockDebug(Arena* arena, u32 size, const char* file, int line) {
    ArenaNode* iter;
    u32 blockSize;
    ArenaNode* newNode;
    void* alloc = NULL;
    ArenaNode* next;

    iter = arena->head;
    size = ALIGN16(size);
    blockSize = ALIGN16(size) + sizeof(ArenaNode);

    while (iter != NULL) {
        if (iter->isFree && iter->size >= size) {
            CHECK_FREE_BLOCK(arena, iter);

            if (blockSize < iter->size) {
                newNode = (ArenaNode*)((u32)iter + blockSize);
                newNode->next = NODE_GET_NEXT(iter);
                newNode->prev = iter;
                newNode->size = iter->size - blockSize;
                newNode->isFree = true;
                newNode->magic = NODE_MAGIC;

                iter->next = newNode;
                iter->size = size;
                next = NODE_GET_NEXT(newNode);
                if (next) {
                    next->prev = newNode;
                }
            }

            iter->isFree = false;
            SET_DEBUG_INFO(iter, file, line, arena);
            alloc = (void*)((u32)iter + sizeof(ArenaNode));
            FILL_ALLOC_BLOCK(arena, alloc, size);

            break;
        }

        iter = NODE_GET_NEXT(iter);
    }

    return alloc;
}

void* __osMallocDebug(Arena* arena, u32 size, const char* file, int line) {
    void* alloc;

    ArenaImpl_Lock(arena);
    alloc = __osMalloc_NoLockDebug(arena, size, file, line);
    ArenaImpl_Unlock(arena);

    return alloc;
}

void* __osMallocRDebug(Arena* arena, u32 size, const char* file, int line) {
    ArenaNode* iter;
    ArenaNode* newNode;
    u32 blockSize;
    ArenaNode* next;
    void* allocR = NULL;

    size = ALIGN16(size);
    ArenaImpl_Lock(arena);
    iter = ArenaImpl_GetLastBlock(arena);

    while (iter != NULL) {
        if (iter->isFree && iter->size >= size) {
            CHECK_FREE_BLOCK(arena, iter);

            blockSize = ALIGN16(size) + sizeof(ArenaNode);
            if (blockSize < iter->size) {
                newNode = (ArenaNode*)((u32)iter + (iter->size - size));
                newNode->next = NODE_GET_NEXT(iter);
                newNode->prev = iter;
                newNode->size = size;
                newNode->magic = NODE_MAGIC;

                iter->next = newNode;
                iter->size -= blockSize;
                next = NODE_GET_NEXT(newNode);
                if (next) {
                    next->prev = newNode;
                }
                iter = newNode;
            }

            iter->isFree = false;
            SET_DEBUG_INFO(iter, file, line, arena);
            allocR = (void*)((u32)iter + sizeof(ArenaNode));
            FILL_ALLOC_BLOCK(arena, allocR, size);

            break;
        }

        iter = NODE_GET_PREV(iter);
    }
    ArenaImpl_Unlock(arena);

    return allocR;
}
#endif

void* __osMalloc_NoLock(Arena* arena, u32 size) {
    ArenaNode* iter;
    u32 blockSize;
    ArenaNode* newNode;
    void* alloc = NULL;
    ArenaNode* next;

    size = ALIGN16(size);
    blockSize = ALIGN16(size) + sizeof(ArenaNode);
    iter = arena->head;

    while (iter != NULL) {

        if (iter->isFree && iter->size >= size) {
            CHECK_FREE_BLOCK(arena, iter);
            if (blockSize < iter->size) {
                newNode = (ArenaNode*)((u32)iter + blockSize);
                newNode->next = NODE_GET_NEXT(iter);
                newNode->prev = iter;
                newNode->size = iter->size - blockSize;
                newNode->isFree = true;
                newNode->magic = NODE_MAGIC;

                iter->next = newNode;
                iter->size = size;
                next = NODE_GET_NEXT(newNode);
                if (next) {
                    next->prev = newNode;
                }
            }

            iter->isFree = false;
            SET_DEBUG_INFO(iter, NULL, 0, arena);
            alloc = (void*)((u32)iter + sizeof(ArenaNode));
            FILL_ALLOC_BLOCK(arena, alloc, size);
            break;
        }

        iter = NODE_GET_NEXT(iter);
    }

    CHECK_ALLOC_FAILURE(arena, alloc);

    return alloc;
}

void* __osMalloc(Arena* arena, u32 size) {
    void* alloc;

    ArenaImpl_Lock(arena);
    alloc = __osMalloc_NoLock(arena, size);
    ArenaImpl_Unlock(arena);

    return alloc;
}

void* __osMallocR(Arena* arena, u32 size) {
    ArenaNode* iter;
    ArenaNode* allocNode;
    ArenaNode* newNode;
    ArenaNode* next;
    void* alloc = NULL;
    u32 blockSize;

    size = ALIGN16(size);
    blockSize = ALIGN16(size) + sizeof(ArenaNode);
    ArenaImpl_Lock(arena);
    iter = ArenaImpl_GetLastBlock(arena);

    while (iter != NULL) {
        if (iter->isFree && iter->size >= size) {
            CHECK_FREE_BLOCK(arena, iter);

            if (blockSize < iter->size) {
                allocNode = (ArenaNode*)((u32)iter + (iter->size - size));
                allocNode->next = NODE_GET_NEXT(iter);

                newNode = allocNode;
                newNode->prev = iter;
                newNode->size = size;
                newNode->magic = NODE_MAGIC;

                iter->next = newNode;
                iter->size -= blockSize;
                next = NODE_GET_NEXT(newNode);
                if (next) {
                    next->prev = newNode;
                }
                iter = newNode;
            }

            iter->isFree = false;
            SET_DEBUG_INFO(iter, NULL, 0, arena);
            alloc = (void*)((u32)iter + sizeof(ArenaNode));
            FILL_ALLOC_BLOCK(arena, alloc, size);
            break;
        }
        iter = NODE_GET_PREV(iter);
    }

    CHECK_ALLOC_FAILURE(arena, alloc);

    ArenaImpl_Unlock(arena);

    return alloc;
}

void __osFree_NoLock(Arena* arena, void* ptr) {
    ArenaNode* node;
    ArenaNode* next;
    ArenaNode* prev;

    if (ptr == NULL) {
        return;
    }

    node = (ArenaNode*)((u32)ptr - sizeof(ArenaNode));
    if (node == NULL || node->magic != NODE_MAGIC) {
        // "__osFree: Unauthorized release (%08x)"
        PRINTF(VT_COL(RED, WHITE) "__osFree:不正解放(%08x)\n" VT_RST, ptr);
        return;
    }
    if (node->isFree) {
        PRINTF(VT_COL(RED, WHITE) "__osFree:二重解放(%08x)\n" VT_RST, ptr); // "__osFree: Double release (%08x)"
        return;
    }
#if OOT_DEBUG
    if (arena != node->arena && arena != NULL) {
        // "__osFree:Tried to release in a different way than when it was secured (%08x:%08x)"
        PRINTF(VT_COL(RED, WHITE) "__osFree:確保時と違う方法で解放しようとした (%08x:%08x)\n" VT_RST, arena,
               node->arena);
        return;
    }
#endif

    next = NODE_GET_NEXT(node);
    prev = NODE_GET_PREV(node);
    node->isFree = true;
    SET_DEBUG_INFO(node, NULL, 0, arena);

    FILL_FREE_BLOCK_CONTENTS(arena, node);

    if ((u32)next == (u32)node + sizeof(ArenaNode) + node->size && next->isFree) {
        ArenaNode* newNext = NODE_GET_NEXT(next);
        if (newNext != NULL) {
            newNext->prev = node;
        }

        node->size += next->size + sizeof(ArenaNode);
        FILL_FREE_BLOCK_HEADER(arena, next);
        node->next = newNext;
        next = newNext;
    }

    if (prev != NULL && prev->isFree && (u32)node == (u32)prev + sizeof(ArenaNode) + prev->size) {
        if (next) {
            next->prev = prev;
        }
        prev->next = next;
        prev->size += node->size + sizeof(ArenaNode);
        FILL_FREE_BLOCK_HEADER(arena, node);
    }
}

void __osFree(Arena* arena, void* ptr) {
    ArenaImpl_Lock(arena);
    __osFree_NoLock(arena, ptr);
    ArenaImpl_Unlock(arena);
}

#if OOT_DEBUG
void __osFree_NoLockDebug(Arena* arena, void* ptr, const char* file, int line) {
    ArenaNode* node;
    ArenaNode* next;
    ArenaNode* prev;
    ArenaNode* newNext;

    if (ptr == NULL) {
        return;
    }

    node = (ArenaNode*)((u32)ptr - sizeof(ArenaNode));
    if (node == NULL || node->magic != NODE_MAGIC) {
        // "__osFree: Unauthorized release (%08x)"
        PRINTF(VT_COL(RED, WHITE) "__osFree:不正解放(%08x) [%s:%d ]\n" VT_RST, ptr, file, line);
        return;
    }
    if (node->isFree) {
        // "__osFree: Double release (%08x)"
        PRINTF(VT_COL(RED, WHITE) "__osFree:二重解放(%08x) [%s:%d ]\n" VT_RST, ptr, file, line);
        return;
    }
    if (arena != node->arena && arena != NULL) {
        // "__osFree:Tried to release in a different way than when it was secured (%08x:%08x)"
        PRINTF(VT_COL(RED, WHITE) "__osFree:確保時と違う方法で解放しようとした (%08x:%08x)\n" VT_RST, arena,
               node->arena);
        return;
    }

    next = NODE_GET_NEXT(node);
    prev = NODE_GET_PREV(node);
    node->isFree = true;
    SET_DEBUG_INFO(node, file, line, arena);

    FILL_FREE_BLOCK_CONTENTS(arena, node);

    newNext = node->next;
    if ((u32)next == (u32)node + sizeof(ArenaNode) + node->size && next->isFree) {
        newNext = NODE_GET_NEXT(next);
        if (newNext != NULL) {
            newNext->prev = node;
        }

        node->size += next->size + sizeof(ArenaNode);
        FILL_FREE_BLOCK_HEADER(arena, next);
        node->next = newNext;
        next = newNext;
    }

    if (prev != NULL && prev->isFree && (u32)node == (u32)prev + sizeof(ArenaNode) + prev->size) {
        if (next != NULL) {
            next->prev = prev;
        }
        prev->next = next;
        prev->size += node->size + sizeof(ArenaNode);
        FILL_FREE_BLOCK_HEADER(arena, node);
    }
}

void __osFreeDebug(Arena* arena, void* ptr, const char* file, int line) {
    ArenaImpl_Lock(arena);
    __osFree_NoLockDebug(arena, ptr, file, line);
    ArenaImpl_Unlock(arena);
}
#endif

void* __osRealloc(Arena* arena, void* ptr, u32 newSize) {
    ArenaNode* node;
    void* newAlloc;
    ArenaNode* next;
    ArenaNode* newNext;
    ArenaNode* overNext;
    ArenaNode* newNext2;
    ArenaNode* next2;
    u32 sizeDiff;
    ArenaNode* overNext2;
    ArenaNode localCopy;
    u32 blockSize;
    s32 pad;

    newSize = ALIGN16(newSize);
    osSyncPrintf("__osRealloc(%08x, %d)\n", ptr, newSize);
    ArenaImpl_Lock(arena);

    if (ptr == NULL) {
        ptr = __osMalloc_NoLock(arena, newSize);
    } else if (newSize == 0) {
        __osFree_NoLock(arena, ptr);
        ptr = NULL;
    } else {
        node = (ArenaNode*)((u32)ptr - sizeof(ArenaNode));
        if (newSize == node->size) {
            // "Does nothing because the memory block size does not change"
            osSyncPrintf("メモリブロックサイズが変わらないためなにもしません\n");
        } else if (node->size < newSize) {
            next = NODE_GET_NEXT(node);
            sizeDiff = newSize - node->size;
            if ((u32)next == ((u32)node + node->size + sizeof(ArenaNode)) && next->isFree && next->size >= sizeDiff) {
                // "Merge because there is a free block after the current memory block"
                osSyncPrintf("現メモリブロックの後ろにフリーブロックがあるので結合します\n");
                next->size -= sizeDiff;
                overNext = NODE_GET_NEXT(next);
                newNext = (ArenaNode*)((u32)next + sizeDiff);
                if (overNext != NULL) {
                    overNext->prev = newNext;
                }
                node->next = newNext;
                node->size = newSize;
                __osMemmove(node->next, next, sizeof(ArenaNode));
            } else {
                // "Allocate a new memory block and move the contents"
                osSyncPrintf("新たにメモリブロックを確保して内容を移動します\n");
                newAlloc = __osMalloc_NoLock(arena, newSize);
                if (newAlloc != NULL) {
                    bcopy(ptr, newAlloc, node->size);
                    __osFree_NoLock(arena, ptr);
                }
                ptr = newAlloc;
            }
        } else if (newSize < node->size) {
            next2 = NODE_GET_NEXT(node);
            if (next2 != NULL && next2->isFree) {
                blockSize = ALIGN16(newSize) + sizeof(ArenaNode);

                // "Increased free block behind current memory block"
                osSyncPrintf("現メモリブロックの後ろのフリーブロックを大きくしました\n");
                newNext2 = (ArenaNode*)((u32)node + blockSize);
                localCopy = *next2;
                *newNext2 = localCopy;
                newNext2->size += node->size - newSize;
                node->next = newNext2;
                node->size = newSize;
                overNext2 = NODE_GET_NEXT(newNext2);
                if (overNext2 != NULL) {
                    overNext2->prev = newNext2;
                }
            } else if (newSize + sizeof(ArenaNode) < node->size) {
                blockSize = ALIGN16(newSize) + sizeof(ArenaNode);

                // "Generated because there is no free block after the current memory block"
                osSyncPrintf("現メモリブロックの後ろにフリーブロックがないので生成します\n");
                newNext2 = (ArenaNode*)((u32)node + blockSize);
                newNext2->next = NODE_GET_NEXT(node);
                newNext2->prev = node;
                newNext2->size = node->size - blockSize;
                newNext2->isFree = true;
                newNext2->magic = NODE_MAGIC;
                node->next = newNext2;
                node->size = newSize;
                overNext2 = NODE_GET_NEXT(newNext2);
                if (overNext2 != NULL) {
                    overNext2->prev = newNext2;
                }
            } else {
                // "There is no room to generate free blocks"
                osSyncPrintf("フリーブロック生成するだけの空きがありません\n");
                ptr = NULL;
            }
        }

        CHECK_ALLOC_FAILURE(arena, ptr);
    }
    ArenaImpl_Unlock(arena);

    return ptr;
}

#if OOT_DEBUG
void* __osReallocDebug(Arena* arena, void* ptr, u32 newSize, const char* file, int line) {
    return __osRealloc(arena, ptr, newSize);
}
#endif

void ArenaImpl_GetSizes(Arena* arena, u32* outMaxFree, u32* outFree, u32* outAlloc) {
    ArenaNode* iter;

    ArenaImpl_Lock(arena);

    *outMaxFree = 0;
    *outFree = 0;
    *outAlloc = 0;

    iter = arena->head;
    while (iter != NULL) {
        if (iter->isFree) {
            *outFree += iter->size;
            if (*outMaxFree < iter->size) {
                *outMaxFree = iter->size;
            }
        } else {
            *outAlloc += iter->size;
        }

        iter = NODE_GET_NEXT(iter);
    }

    ArenaImpl_Unlock(arena);
}

#if OOT_DEBUG
void __osDisplayArena(Arena* arena) {
    u32 freeSize;
    u32 allocatedSize;
    u32 maxFree;
    ArenaNode* iter;
    ArenaNode* next;

    if (!__osMallocIsInitialized(arena)) {
        osSyncPrintf("アリーナは初期化されていません\n"); // "Arena is not initialized"
        return;
    }

    ArenaImpl_Lock(arena);

    maxFree = 0;
    freeSize = 0;
    allocatedSize = 0;

    osSyncPrintf("アリーナの内容 (0x%08x)\n", arena); // "Arena contents (0x%08x)"
    // "Memory node range status size [time s ms us ns: TID: src: line]"
    osSyncPrintf("メモリブロック範囲 status サイズ  [時刻  s ms us ns: TID:src:行]\n");

    iter = arena->head;
    while (iter != NULL) {
        if (iter != NULL && iter->magic == NODE_MAGIC) {
            next = iter->next;
            osSyncPrintf("%08x-%08x%c %s %08x", iter, ((u32)iter + sizeof(ArenaNode) + iter->size),
                         (next == NULL) ? '$' : (iter != next->prev ? '!' : ' '),
                         iter->isFree ? "空き" : "確保", //? "Free" : "Secure"
                         iter->size);

            if (!iter->isFree) {
                osSyncPrintf(" [%016llu:%2d:%s:%d]", OS_CYCLES_TO_NSEC(iter->time), iter->threadId,
                             iter->filename != NULL ? iter->filename : "**NULL**", iter->line);
            }

            osSyncPrintf("\n");

            if (iter->isFree) {
                freeSize += iter->size;
                if (maxFree < iter->size) {
                    maxFree = iter->size;
                }
            } else {
                allocatedSize += iter->size;
            }
        } else {
            osSyncPrintf("%08x Block Invalid\n", iter);
            next = NULL;
        }
        iter = next;
    }

    // "Total reserved node size 0x%08x bytes"
    osSyncPrintf("確保ブロックサイズの合計 0x%08x バイト\n", allocatedSize);
    // "Total free node size 0x%08x bytes"
    osSyncPrintf("空きブロックサイズの合計 0x%08x バイト\n", freeSize);
    // "Maximum free node size 0x%08x bytes"
    osSyncPrintf("最大空きブロックサイズ   0x%08x バイト\n", maxFree);

    ArenaImpl_Unlock(arena);
}
#endif

void ArenaImpl_FaultClient(Arena* arena) {
    u32 freeSize;
    u32 allocatedSize;
    u32 maxFree;
    ArenaNode* iter;
    ArenaNode* next;

    FaultDrawer_Printf("ARENA INFO (0x%08x)\n", arena);
    if (!__osMallocIsInitialized(arena)) {
        FaultDrawer_Printf("Arena is uninitalized\n", arena);
        return;
    }

    maxFree = 0;
    freeSize = 0;
    allocatedSize = 0;

    FaultDrawer_Printf("Memory Block Region status size\n");

    iter = arena->head;
    while (iter != NULL) {
        if (iter != NULL && iter->magic == NODE_MAGIC) {
            next = iter->next;
            FaultDrawer_Printf("%08x-%08x%c %s %08x", iter, ((u32)iter + sizeof(ArenaNode) + iter->size),
                               (!next) ? '$' : (iter != next->prev ? '!' : ' '), iter->isFree ? "F" : "A", iter->size);

            FaultDrawer_Printf("\n");

            if (iter->isFree) {
                freeSize += iter->size;
                if (maxFree < iter->size) {
                    maxFree = iter->size;
                }
            } else {
                allocatedSize += iter->size;
            }
        } else {
            FaultDrawer_SetFontColor(0xF801);
            FaultDrawer_Printf("%08x Block Invalid\n", iter);
            next = NULL;
        }
        iter = next;
    }

    FaultDrawer_SetFontColor(0x7F1);
    FaultDrawer_Printf("Total Alloc Block Size  %08x\n", allocatedSize);
    FaultDrawer_Printf("Total Free Block Size   %08x\n", freeSize);
    FaultDrawer_Printf("Largest Free Block Size %08x\n", maxFree);
}

u32 __osCheckArena(Arena* arena) {
    ArenaNode* iter;
    u32 error = 0;

    ArenaImpl_Lock(arena);
    // "Checking the contents of the arena. . ． (%08x)"
    osSyncPrintf("アリーナの内容をチェックしています．．． (%08x)\n", arena);
    iter = arena->head;
    while (iter != NULL) {
        if (iter && iter->magic == NODE_MAGIC) {
            // "Oops!! (%08x %08x)"
#if OOT_DEBUG
            osSyncPrintf(VT_COL(RED, WHITE) "おおっと！！ (%08x %08x)\n" VT_RST, iter, iter->magic);
#else
            osSyncPrintf("おおっと！！ (%08x %08x)\n", iter, iter->magic);
#endif
            error = 1;
            break;
        }
        iter = NODE_GET_NEXT(iter);
    }
    if (error == 0) {
        osSyncPrintf("アリーナはまだ、いけそうです\n"); // "The arena is still going well"
    }
    ArenaImpl_Unlock(arena);

    return error;
}

#if OOT_DEBUG
u8 ArenaImpl_GetAllocFailures(Arena* arena) {
    return arena->allocFailures;
}
#endif
