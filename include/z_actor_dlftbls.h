#ifndef Z_ACTOR_DLFTBLS_H
#define Z_ACTOR_DLFTBLS_H

#include "romfile.h"
#include "z64actor_profile.h"

/**
 * @see ACTOROVL_ALLOC_ABSOLUTE
 */
#if DEBUG_FEATURES
#define ACTOROVL_ABSOLUTE_SPACE_SIZE 0x27A0
#else
#define ACTOROVL_ABSOLUTE_SPACE_SIZE 0x24E0
#endif

/**
 * The actor overlay should be allocated memory for when loading,
 * and the memory deallocated when there is no more actor using the overlay.
 *
 * `ACTOROVL_ALLOC_` defines indicate how an actor overlay should be loaded.
 *
 * @note Bitwise or-ing `ACTOROVL_ALLOC_` types is not meaningful.
 * The `ACTOROVL_ALLOC_` types are 0, 1, 2 but checked against with a bitwise and.
 *
 * @see ACTOROVL_ALLOC_ABSOLUTE
 * @see ACTOROVL_ALLOC_PERSISTENT
 * @see actor_table.h
 */
#define ACTOROVL_ALLOC_NORMAL 0

/**
 * The actor overlay should be loaded to "absolute space".
 *
 * Absolute space is a fixed amount of memory allocated once.
 * The overlay will still need to be loaded again if at some point there is no more actor using the overlay.
 *
 * @note Only one such overlay may be loaded at a time.
 * This is not checked: a newly loaded overlay will overwrite the previous one in absolute space,
 * even if actors are still relying on the previous one. Actors using absolute-allocated overlays should be deleted
 * when another absolute-allocated overlay is about to be used.
 *
 * @see ACTOROVL_ABSOLUTE_SPACE_SIZE
 * @see ActorContext.absoluteSpace
 * @see ACTOROVL_ALLOC_NORMAL
 */
#define ACTOROVL_ALLOC_ABSOLUTE (1 << 0)

/**
 * The actor overlay should be loaded persistently.
 * It will stay loaded until the current game state instance ends.
 *
 * @see ACTOROVL_ALLOC_NORMAL
 */
#define ACTOROVL_ALLOC_PERSISTENT (1 << 1)

typedef struct ActorOverlay {
    /* 0x00 */ RomFile file;
    /* 0x08 */ void* vramStart;
    /* 0x0C */ void* vramEnd;
    /* 0x10 */ void* loadedRamAddr; // original name: "allocp"
    /* 0x14 */ ActorProfile* profile;
    /* 0x18 */ char* name;
    /* 0x1C */ u16 allocType; // See `ACTOROVL_ALLOC_` defines
    /* 0x1E */ s8 numLoaded; // original name: "clients"
} ActorOverlay; // size = 0x20

extern ActorOverlay gActorOverlayTable[ACTOR_ID_MAX]; // original name: "actor_dlftbls" 801162A0
extern s32 gMaxActorId; // original name: "MaxProfile"

void ActorOverlayTable_LogPrint(void);
void ActorOverlayTable_Init(void);
void ActorOverlayTable_Cleanup(void);

#endif
