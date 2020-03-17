#include <global.h>

ListAlloc* ListAlloc_Init(ListAlloc* this)
{
    this->prev = NULL;
    this->next = NULL;
    return this;
}

void* ListAlloc_Alloc(ListAlloc* this, u32 size)
{
    ListAlloc* ptr;
    ListAlloc* next;
    
    ptr = SystemArena_MallocDebug(size + sizeof(ListAlloc), "../listalloc.c", 40);
    if (!ptr)
        return NULL;

    next = this->next;

    if (next)
        next->next = ptr;
    
    ptr->prev = next;
    ptr->next = NULL;
    this->next = ptr;

    if (!this->prev)
        this->prev = ptr;

    return (u8*)ptr + sizeof(ListAlloc);
}

void ListAlloc_Free(ListAlloc* this, void* data)
{
    ListAlloc* ptr;

    ptr = &((ListAlloc*)data)[-1];

    if (ptr->prev)
        ptr->prev->next = ptr->next;

    if (ptr->next)
        ptr->next->prev = ptr->prev;

    if (this->prev == ptr)
        this->prev = ptr->next;

    if (this->next == ptr)
        this->next = ptr->prev;

    SystemArena_FreeDebug(ptr, "../listalloc.c", 72);
}

void ListAlloc_FreeAll(ListAlloc* this)
{
    ListAlloc* iter;

    iter = this->prev;
    while (iter)
    {
        ListAlloc_Free(this, (u8*)iter + sizeof(ListAlloc));
        iter = this->prev;
    }
}
