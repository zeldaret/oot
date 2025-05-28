#ifndef Z64OBJECT_H
#define Z64OBJECT_H

#include "ultra64.h"
#include "z64dma.h"

struct PlayState;

typedef struct ObjectEntry {
    /* 0x00 */ s16 id;
    /* 0x04 */ void* segment;
    /* 0x08 */ DmaRequest dmaRequest;
    /* 0x28 */ OSMesgQueue loadQueue;
    /* 0x40 */ OSMesg loadMsg;
} ObjectEntry; // size = 0x44

typedef struct ObjectContext {
    /* 0x0000 */ void* spaceStart;
    /* 0x0004 */ void* spaceEnd; // original name: "endSegment"
    /* 0x0008 */ u8 numEntries; // total amount of used entries
    /* 0x0009 */ u8 numPersistentEntries; // amount of entries that won't be reused when loading a new object list (when loading a new room)
    /* 0x000A */ u8 mainKeepSlot; // "gameplay_keep" slot
    /* 0x000B */ u8 subKeepSlot; // "gameplay_field_keep" or "gameplay_dangeon_keep" slot
    /* 0x000C */ ObjectEntry slots[19];
} ObjectContext; // size = 0x518

#define DEFINE_OBJECT(_0, enum) enum,
#define DEFINE_OBJECT_EMPTY(_0, enum) enum,
#define DEFINE_OBJECT_UNSET(enum) enum,

typedef enum ObjectId {
    #include "tables/object_table.h"
    /* 0x0192 */ OBJECT_ID_MAX
} ObjectId;

#undef DEFINE_OBJECT
#undef DEFINE_OBJECT_EMPTY
#undef DEFINE_OBJECT_UNSET

void Object_InitContext(struct PlayState* play, ObjectContext* objectCtx);
void Object_UpdateEntries(ObjectContext* objectCtx);
s32 Object_GetSlot(ObjectContext* objectCtx, s16 objectId);
s32 Object_IsLoaded(ObjectContext* objectCtx, s32 slot);
void func_800981B8(ObjectContext* objectCtx);

extern u32 gObjectTableSize;
extern RomFile gObjectTable[OBJECT_ID_MAX];

#endif
