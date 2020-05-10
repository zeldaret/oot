#ifndef _Z_ITEM_INBOX_H_
#define _Z_ITEM_INBOX_H_

#include <ultra64.h>
#include <global.h>

struct ItemInbox;

typedef void (*ItemInboxActionFunc)(struct ItemInbox*, GlobalContext*);

typedef struct ItemInbox {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ItemInboxActionFunc actionFunc;
} ItemInbox; // size = 0x0150

extern const ActorInit Item_Inbox_InitVars;

#endif
