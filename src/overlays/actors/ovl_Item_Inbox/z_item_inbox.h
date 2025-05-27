#ifndef Z_ITEM_INBOX_H
#define Z_ITEM_INBOX_H

#include "ultra64.h"
#include "z64actor.h"

struct ItemInbox;

typedef void (*ItemInboxActionFunc)(struct ItemInbox*, struct PlayState*);

typedef struct ItemInbox {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ItemInboxActionFunc actionFunc;
} ItemInbox; // size = 0x0150

#endif
