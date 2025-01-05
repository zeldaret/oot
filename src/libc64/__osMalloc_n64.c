#include "global.h"
#include "fault.h"
#include "libc64/os_malloc.h"

#define NODE_MAGIC 0x7373

#define NODE_IS_VALID(node) ((node)->magic == NODE_MAGIC)

#define NODE_GET_NEXT(node) ((node)->next)
#define NODE_GET_PREV(node) ((node)->prev)

#define SET_DEBUG_INFO(node, f, l, a)           \
    {                                           \
        (node)->filename = (f);                 \
        (node)->line = (l);                     \
        (node)->threadId = osGetThreadId(NULL); \
        (node)->arena = (a);                    \
        (node)->time = osGetTime();             \
    }                                           \
    (void)0

#define FILL_ALLOC_BLOCK(arena, alloc, size) (void)0
#define FILL_FREE_BLOCK_HEADER(arena, node) (void)0
#define FILL_FREE_BLOCK_CONTENTS(arena, node) (void)0
#define CHECK_FREE_BLOCK(arena, node) (void)0

// Number of allocation failures across all arenas.
u32 gTotalAllocFailures = 0; // "Arena_failcnt"

#define CHECK_ALLOC_FAILURE(arena, ptr) \
    do {                                \
        if ((ptr) == NULL) {            \
            gTotalAllocFailures++;      \
            (arena)->allocFailures++;   \
        }                               \
    } while (0)

void __osMallocInit(Arena* arena, void* start, s32 size) {
    ArenaNode* firstNode = (ArenaNode*)ALIGN16((u32)start);

    size -= (u8*)firstNode - (u8*)start;
    size &= ~0xF;

    firstNode->next = NULL;
    firstNode->prev = NULL;
    firstNode->size = size - sizeof(ArenaNode);
    firstNode->isFree = true;
    firstNode->magic = NODE_MAGIC;

    arena->head = firstNode;
    arena->start = start;
    arena->size = size;
}

void __osMallocCleanup(Arena* arena) {
    bzero(arena, sizeof(*arena));
}

s32 __osMallocIsInitialized(Arena* arena) {
    return arena->start != NULL;
}

void* __osMallocDebug(Arena* arena, u32 size, const char* file, int line) {
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
            SET_DEBUG_INFO(iter, file, line, arena);
            alloc = (void*)((u32)iter + sizeof(ArenaNode));
            FILL_ALLOC_BLOCK(arena, alloc, size);

            break;
        }

        iter = NODE_GET_NEXT(iter);
    }

    CHECK_ALLOC_FAILURE(arena, alloc);

    return alloc;
}

void* __osMallocRDebug(Arena* arena, u32 size, const char* file, int line) {
    ArenaNode* iter;
    ArenaNode* newNode;
    u32 blockSize;
    u32 nodeSize;
    ArenaNode* next;
    void* allocR = NULL;
    ArenaNode* next2;

    size = ALIGN16(size);

    iter = arena->head;
    next2 = NODE_GET_NEXT(iter);
    while (next2 != NULL) {
        iter = next2;
        next2 = NODE_GET_NEXT(next2);
    }

    while (iter != NULL) {
        if (iter->isFree && iter->size >= size) {
            CHECK_FREE_BLOCK(arena, iter);

            blockSize = ALIGN16(size) + sizeof(ArenaNode);
            nodeSize = iter->size;
            if (blockSize < nodeSize) {
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

    CHECK_ALLOC_FAILURE(arena, allocR);

    return allocR;
}

void* __osMalloc(Arena* arena, u32 size) {
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

void* __osMallocR(Arena* arena, u32 size) {
    ArenaNode* iter;
    ArenaNode* newNode;
    u32 blockSize;
    u32 nodeSize;
    ArenaNode* next;
    void* allocR = NULL;
    ArenaNode* next2;

    size = ALIGN16(size);

    iter = arena->head;
    next2 = NODE_GET_NEXT(iter);
    while (next2 != NULL) {
        iter = next2;
        next2 = NODE_GET_NEXT(next2);
    }

    while (iter != NULL) {
        if (iter->isFree && iter->size >= size) {
            CHECK_FREE_BLOCK(arena, iter);

            blockSize = ALIGN16(size) + sizeof(ArenaNode);
            nodeSize = iter->size;
            if (blockSize < nodeSize) {
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
            SET_DEBUG_INFO(iter, NULL, 0, arena);
            allocR = (void*)((u32)iter + sizeof(ArenaNode));
            FILL_ALLOC_BLOCK(arena, allocR, size);

            break;
        }
        iter = NODE_GET_PREV(iter);
    }

    CHECK_ALLOC_FAILURE(arena, allocR);

    return allocR;
}

void __osFree(Arena* arena, void* ptr) {
    ArenaNode* node;
    ArenaNode* next;
    ArenaNode* prev;

    if (ptr == NULL) {
        return;
    }

    node = (ArenaNode*)((u32)ptr - sizeof(ArenaNode));
    if (!NODE_IS_VALID(node)) {
        (void)T("__osFree:不正解放(%08x)\n", "__osFree: Unauthorized release (%08x)\n");
        osSetIntMask(OS_IM_ALL);
        return;
    }
    if (node->isFree) {
        (void)T("__osFree:二重解放(%08x)\n", "__osFree: Double release (%08x)\n");
        osSetIntMask(OS_IM_ALL);
        return;
    }
    if (arena != node->arena && arena != NULL) {
        (void)T("__osFree:arena(%08x)が__osMallocのarena(%08x)と一致しない\n",
                "__osFree:arena(%08x) and __osMalloc:arena(%08x) do not match\n");
    }

    node->isFree = true;
    SET_DEBUG_INFO(node, NULL, 0, arena);

    if (node->next != NULL) {
        next = node->next;
        if (next->isFree) {
            if (next->next != NULL) {
                next->next->prev = node;
            }

            node->size += next->size + sizeof(ArenaNode);
            node->next = next->next;
        }
    }

    if (node->prev != NULL) {
        prev = node->prev;
        if (prev->isFree) {
            prev->size += node->size + sizeof(ArenaNode);
            prev->next = NODE_GET_NEXT(node);

            if (node->next != NULL) {
                node->next->prev = prev;
            }
        }
    }
}

void __osFreeDebug(Arena* arena, void* ptr, const char* file, int line) {
    ArenaNode* node;
    ArenaNode* next;
    ArenaNode* prev;

    if (ptr == NULL) {
        return;
    }

    node = (ArenaNode*)((u32)ptr - sizeof(ArenaNode));
    if (!NODE_IS_VALID(node)) {
        (void)T("__osFree:不正解放(%08x)\n", "__osFree: Unauthorized release (%08x)\n");
        osSetIntMask(OS_IM_ALL);
        return;
    }
    if (node->isFree) {
        (void)T("__osFree:二重解放(%08x)\n", "__osFree: Double release (%08x)\n");
        osSetIntMask(OS_IM_ALL);
        return;
    }
    if (arena != node->arena && arena != NULL) {
        (void)T("__osFree:arena(%08x)が__osMallocのarena(%08x)と一致しない\n",
                "__osFree:arena(%08x) and __osMalloc:arena(%08x) do not match\n");
    }

    node->isFree = true;
    SET_DEBUG_INFO(node, file, line, arena);

    if (node->next != NULL) {
        next = node->next;
        if (next->isFree) {
            if (next->next != NULL) {
                next->next->prev = node;
            }

            node->size += next->size + sizeof(ArenaNode);
            node->next = next->next;
        }
    }

    if (node->prev != NULL) {
        prev = node->prev;
        if (prev->isFree) {
            prev->size += node->size + sizeof(ArenaNode);
            prev->next = NODE_GET_NEXT(node);

            if (node->next != NULL) {
                node->next->prev = prev;
            }
        }
    }
}

void* __osRealloc(Arena* arena, void* ptr, u32 newSize) {
    ArenaNode* node;
    void* newAlloc;
    ArenaNode* next;
    ArenaNode* newNext;
    u32 sizeDiff;

    (void)"__osRealloc(%08x, %d)\n";
    osSetIntMask(OS_IM_ALL);

    if (ptr == NULL) {
        ptr = __osMalloc(arena, newSize);
    } else if (newSize == 0) {
        __osFree(arena, ptr);
        ptr = NULL;
    } else {
        newSize = ALIGN16(newSize);
        node = (ArenaNode*)((u32)ptr - sizeof(ArenaNode));
        if (newSize == node->size) {
            // Do nothing
        } else if (node->size < newSize) {
            next = NODE_GET_NEXT(node);
            sizeDiff = newSize - node->size;
            if (next != NULL && next->isFree && next->size >= sizeDiff) {
                next->size -= sizeDiff;
                newNext = (ArenaNode*)((u32)next + sizeDiff);
                if (NODE_GET_NEXT(next) != NULL) {
                    NODE_GET_NEXT(next)->prev = newNext;
                }
                node->next = newNext;
                node->size = newSize;
                memmove(node->next, next, sizeof(ArenaNode));
            } else {
                newAlloc = __osMalloc(arena, newSize);
                if (newAlloc != NULL) {
                    memcpy(ptr, newAlloc, node->size);
                    __osFree(arena, ptr);
                }
                ptr = newAlloc;
            }
        } else if (newSize < node->size) {
            (void)T("メモリブロックの縮小機能はまだインプリメントしていません\n",
                    "Memory block shrinking functionality is not yet implemented\n");
        }
    }

    CHECK_ALLOC_FAILURE(arena, ptr);

    return ptr;
}

void* __osReallocDebug(Arena* arena, void* ptr, u32 newSize, const char* file, int line) {
    return __osRealloc(arena, ptr, newSize);
}

void ArenaImpl_GetSizes(Arena* arena, u32* outMaxFree, u32* outFree, u32* outAlloc) {
    ArenaNode* iter;

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
}

s32 __osCheckArena(Arena* arena) {
    ArenaNode* iter;

    (void)T("アリーナの内容をチェックしています．．． (%08x)\n", "Checking the arena contents... (%08x)\n");
    iter = arena->head;
    while (iter != NULL) {
        if (!NODE_IS_VALID(iter)) {
            (void)T("おおっと！！ (%08x %08x)\n", "Oops!! (%08x %08x)\n");
            return 1;
        }
        iter = NODE_GET_NEXT(iter);
    }

    (void)T("アリーナはまだ、いけそうです\n", "The arena is still going well\n");
    return 0;
}

u8 ArenaImpl_GetAllocFailures(Arena* arena) {
    return arena->allocFailures;
}
