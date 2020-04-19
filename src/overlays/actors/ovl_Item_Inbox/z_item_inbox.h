#ifndef _Z_ITEM_INBOX_H_
#define _Z_ITEM_INBOX_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc updateFunc;
} ItemInbox; // size = 0x0154

extern const ActorInit Item_Inbox_InitVars;

#endif
