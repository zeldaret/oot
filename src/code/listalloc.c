#include "libc64/malloc.h"
#include "listalloc.h"

ListAlloc* ListAlloc_Init(ListAlloc* this) {
    this->prev = NULL;
    this->next = NULL;
    return this;
}

void* ListAlloc_Alloc(ListAlloc* this, u32 size) {
    ListAlloc* ptr = SYSTEM_ARENA_MALLOC(size + sizeof(ListAlloc), "../listalloc.c", 40);
    ListAlloc* next;

    if (ptr == NULL) {
        return NULL;
    }

    next = this->next;
    if (next != NULL) {
        next->next = ptr;
    }

    ptr->prev = next;
    ptr->next = NULL;
    this->next = ptr;

    if (this->prev == NULL) {
        this->prev = ptr;
    }

    return (u8*)ptr + sizeof(ListAlloc);
}

void ListAlloc_Free(ListAlloc* this, void* data) {
    ListAlloc* ptr = &((ListAlloc*)data)[-1];

    if (ptr->prev != NULL) {
        ptr->prev->next = ptr->next;
    }

    if (ptr->next != NULL) {
        ptr->next->prev = ptr->prev;
    }

    if (this->prev == ptr) {
        this->prev = ptr->next;
    }

    if (this->next == ptr) {
        this->next = ptr->prev;
    }

    SYSTEM_ARENA_FREE(ptr, "../listalloc.c", 72);
}

void ListAlloc_FreeAll(ListAlloc* this) {
    ListAlloc* iter = this->prev;

    while (iter != NULL) {
        ListAlloc_Free(this, (u8*)iter + sizeof(ListAlloc));
        iter = this->prev;
    }
}
