#ifndef Z64ACTOR_PROFILE_H
#define Z64ACTOR_PROFILE_H

#include "ultra64.h"

struct Actor;
struct PlayState;

#define DEFINE_ACTOR(_0, enum, _2, _3) enum,
#define DEFINE_ACTOR_INTERNAL(_0, enum, _2, _3) enum,
#define DEFINE_ACTOR_UNSET(enum) enum,

typedef enum ActorID {
    #include "tables/actor_table.h"
    /* 0x0192 */ ACTOR_ID_MAX // originally "ACTOR_DLF_MAX"
} ActorID;

#undef DEFINE_ACTOR
#undef DEFINE_ACTOR_INTERNAL
#undef DEFINE_ACTOR_UNSET

typedef enum ActorCategory {
    /* 0x00 */ ACTORCAT_SWITCH,
    /* 0x01 */ ACTORCAT_BG,
    /* 0x02 */ ACTORCAT_PLAYER,
    /* 0x03 */ ACTORCAT_EXPLOSIVE,
    /* 0x04 */ ACTORCAT_NPC,
    /* 0x05 */ ACTORCAT_ENEMY,
    /* 0x06 */ ACTORCAT_PROP,
    /* 0x07 */ ACTORCAT_ITEMACTION,
    /* 0x08 */ ACTORCAT_MISC,
    /* 0x09 */ ACTORCAT_BOSS,
    /* 0x0A */ ACTORCAT_DOOR,
    /* 0x0B */ ACTORCAT_CHEST,
    /* 0x0C */ ACTORCAT_MAX
} ActorCategory;

typedef void (*ActorFunc)(struct Actor*, struct PlayState*);

typedef struct ActorProfile {
    /* 0x00 */ s16 id;
    /* 0x02 */ u8 category; // Classifies actor and determines when it will update or draw
    /* 0x04 */ u32 flags;
    /* 0x08 */ s16 objectId;
    /* 0x0C */ u32 instanceSize;
    /* 0x10 */ ActorFunc init; // Constructor
    /* 0x14 */ ActorFunc destroy; // Destructor
    /* 0x18 */ ActorFunc update; // Update Function
    /* 0x1C */ ActorFunc draw; // Draw function
} ActorProfile; // size = 0x20

#endif
