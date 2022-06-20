#ifndef Z64ACTOR_H
#define Z64ACTOR_H

#include "z64dma.h"
#include "z64animation.h"
#include "z64math.h"
#include "z64collision_check.h"

#define ACTOR_NUMBER_MAX 200
#define INVISIBLE_ACTOR_MAX 20
#define AM_FIELD_SIZE 0x27A0
#define MASS_IMMOVABLE 0xFF // Cannot be pushed by OC colliders
#define MASS_HEAVY 0xFE // Can only be pushed by OC colliders from actors with IMMOVABLE or HEAVY mass.

struct Actor;
struct PlayState;
struct Lights;

typedef void (*ActorFunc)(struct Actor*, struct PlayState*);
typedef void (*ActorShadowFunc)(struct Actor*, struct Lights*, struct PlayState*);
typedef u16 (*callback1_800343CC)(struct PlayState*, struct Actor*);
typedef s16 (*callback2_800343CC)(struct PlayState*, struct Actor*);

typedef struct {
    Vec3f pos;
    Vec3s rot;
} PosRot; // size = 0x14

typedef struct {
    /* 0x00 */ s16 id;
    /* 0x02 */ u8 category; // Classifies actor and determines when it will update or draw
    /* 0x04 */ u32 flags;
    /* 0x08 */ s16 objectId;
    /* 0x0C */ u32 instanceSize;
    /* 0x10 */ ActorFunc init; // Constructor
    /* 0x14 */ ActorFunc destroy; // Destructor
    /* 0x18 */ ActorFunc update; // Update Function
    /* 0x1C */ ActorFunc draw; // Draw function
} ActorInit; // size = 0x20

typedef enum {
    /* 0 */ ALLOCTYPE_NORMAL,
    /* 1 */ ALLOCTYPE_ABSOLUTE,
    /* 2 */ ALLOCTYPE_PERMANENT
} AllocType;

typedef struct {
    /* 0x00 */ u32 vromStart;
    /* 0x04 */ u32 vromEnd;
    /* 0x08 */ void* vramStart;
    /* 0x0C */ void* vramEnd;
    /* 0x10 */ void* loadedRamAddr; // original name: "allocp"
    /* 0x14 */ ActorInit* initInfo;
    /* 0x18 */ char* name;
    /* 0x1C */ u16 allocType;
    /* 0x1E */ s8 numLoaded; // original name: "clients"
} ActorOverlay; // size = 0x20

typedef struct {
    u8 table[32];
} DamageTable;

typedef struct {
    /* 0x00 */ u8 health;
    /* 0x02 */ s16 cylRadius;
    /* 0x04 */ s16 cylHeight;
    /* 0x06 */ u8 mass;
} CollisionCheckInfoInit;

typedef struct {
    /* 0x00 */ u8 health;
    /* 0x02 */ s16 cylRadius;
    /* 0x04 */ s16 cylHeight;
    /* 0x06 */ s16 cylYShift;
    /* 0x08 */ u8 mass;
} CollisionCheckInfoInit2;

typedef struct {
    /* 0x00 */ DamageTable* damageTable;
    /* 0x04 */ Vec3f displacement; // Amount to correct actor velocity by when colliding into a body
    /* 0x10 */ s16 cylRadius; // Used for various purposes
    /* 0x12 */ s16 cylHeight; // Used for various purposes
    /* 0x14 */ s16 cylYShift; // Unused. Purpose inferred from Cylinder16 and CollisionCheck_CylSideVsLineSeg
    /* 0x16 */ u8 mass; // Used to compute displacement for OC collisions
    /* 0x17 */ u8 health; // Note: some actors may use their own health variable instead of this one
    /* 0x18 */ u8 damage; // Amount to decrement health by
    /* 0x19 */ u8 damageEffect; // Stores what effect should occur when hit by a weapon
    /* 0x1A */ u8 atHitEffect; // Stores what effect should occur when AT connects with an AC
    /* 0x1B */ u8 acHitEffect; // Stores what effect should occur when AC is touched by an AT
} CollisionCheckInfo; // size = 0x1C

typedef struct {
    /* 0x00 */ Vec3s rot; // Current actor shape rotation
    /* 0x06 */ s16 face; // Used to index eyebrow/eye/mouth textures. Only used by player
    /* 0x08 */ f32 yOffset; // Model y axis offset. Represents model space units
    /* 0x0C */ ActorShadowFunc shadowDraw; // Shadow draw function
    /* 0x10 */ f32 shadowScale; // Changes the size of the shadow
    /* 0x14 */ u8 shadowAlpha; // Default is 255
    /* 0x15 */ u8 feetFloorFlag; // 0 if actor or feet aren't on ground, or 1 or 2 depending on feet positions
    /* 0x18 */ Vec3f feetPos[2]; // Update by using `Actor_SetFeetPos` in PostLimbDraw
} ActorShape; // size = 0x30

#define ACTOR_FLAG_0 (1 << 0)
#define ACTOR_FLAG_2 (1 << 2)
#define ACTOR_FLAG_3 (1 << 3)
#define ACTOR_FLAG_4 (1 << 4)
#define ACTOR_FLAG_5 (1 << 5)
#define ACTOR_FLAG_6 (1 << 6)
#define ACTOR_FLAG_7 (1 << 7)
#define ACTOR_FLAG_8 (1 << 8)
#define ACTOR_FLAG_9 (1 << 9)
#define ACTOR_FLAG_10 (1 << 10)
#define ACTOR_FLAG_ENKUSA_CUT (1 << 11)
#define ACTOR_FLAG_12 (1 << 12)
#define ACTOR_FLAG_13 (1 << 13)
#define ACTOR_FLAG_14 (1 << 14)
#define ACTOR_FLAG_15 (1 << 15)
#define ACTOR_FLAG_16 (1 << 16)
#define ACTOR_FLAG_17 (1 << 17)
#define ACTOR_FLAG_18 (1 << 18)
#define ACTOR_FLAG_19 (1 << 19)
#define ACTOR_FLAG_20 (1 << 20)
#define ACTOR_FLAG_21 (1 << 21)
#define ACTOR_FLAG_22 (1 << 22)
#define ACTOR_FLAG_23 (1 << 23)
#define ACTOR_FLAG_24 (1 << 24)
#define ACTOR_FLAG_25 (1 << 25)
#define ACTOR_FLAG_26 (1 << 26)
#define ACTOR_FLAG_27 (1 << 27)
#define ACTOR_FLAG_28 (1 << 28)

#define BGCHECKFLAG_GROUND (1 << 0) // Standing on the ground
#define BGCHECKFLAG_GROUND_TOUCH (1 << 1) // Has touched the ground (only active for 1 frame)
#define BGCHECKFLAG_GROUND_LEAVE (1 << 2) // Has left the ground (only active for 1 frame)
#define BGCHECKFLAG_WALL (1 << 3) // Touching a wall
#define BGCHECKFLAG_CEILING (1 << 4) // Touching a ceiling
#define BGCHECKFLAG_WATER (1 << 5) // In water
#define BGCHECKFLAG_WATER_TOUCH (1 << 6) // Has touched water (reset when leaving water)
#define BGCHECKFLAG_GROUND_STRICT (1 << 7) // Strictly on ground (BGCHECKFLAG_GROUND has some leeway)
#define BGCHECKFLAG_CRUSHED (1 << 8) // Crushed between a floor and ceiling (triggers a void for player)
#define BGCHECKFLAG_PLAYER_WALL_INTERACT (1 << 9) // Only set/used by player, related to interacting with walls

typedef struct Actor {
    /* 0x000 */ s16 id; // Actor ID
    /* 0x002 */ u8 category; // Actor category. Refer to the corresponding enum for values
    /* 0x003 */ s8 room; // Room number the actor is in. -1 denotes that the actor won't despawn on a room change
    /* 0x004 */ u32 flags; // Flags used for various purposes
    /* 0x008 */ PosRot home; // Initial position/rotation when spawned. Can be used for other purposes
    /* 0x01C */ s16 params; // Configurable variable set by the actor's spawn data; original name: "args_data"
    /* 0x01E */ s8 objBankIndex; // Object bank index of the actor's object dependency; original name: "bank"
    /* 0x01F */ s8 targetMode; // Controls how far the actor can be targeted from and how far it can stay locked on
    /* 0x020 */ u16 sfx; // SFX ID to play. Sound plays when value is set, then is cleared the following update cycle
    /* 0x024 */ PosRot world; // Position/rotation in the world
    /* 0x038 */ PosRot focus; // Target reticle focuses on this position. For player this represents head pos and rot
    /* 0x04C */ f32 targetArrowOffset; // Height offset of the target arrow relative to `focus` position
    /* 0x050 */ Vec3f scale; // Scale of the actor in each axis
    /* 0x05C */ Vec3f velocity; // Velocity of the actor in each axis
    /* 0x068 */ f32 speedXZ; // How fast the actor is traveling along the XZ plane
    /* 0x06C */ f32 gravity; // Acceleration due to gravity. Value is added to Y velocity every frame
    /* 0x070 */ f32 minVelocityY; // Sets the lower bounds cap on velocity along the Y axis
    /* 0x074 */ CollisionPoly* wallPoly; // Wall polygon the actor is touching
    /* 0x078 */ CollisionPoly* floorPoly; // Floor polygon directly below the actor
    /* 0x07C */ u8 wallBgId; // Bg ID of the wall polygon the actor is touching
    /* 0x07D */ u8 floorBgId; // Bg ID of the floor polygon directly below the actor
    /* 0x07E */ s16 wallYaw; // Y rotation of the wall polygon the actor is touching
    /* 0x080 */ f32 floorHeight; // Y position of the floor polygon directly below the actor
    /* 0x084 */ f32 yDistToWater; // Distance to the surface of active waterbox. Negative value means above water
    /* 0x088 */ u16 bgCheckFlags; // Flags indicating how the actor is interacting with collision
    /* 0x08A */ s16 yawTowardsPlayer; // Y rotation difference between the actor and the player
    /* 0x08C */ f32 xyzDistToPlayerSq; // Squared distance between the actor and the player
    /* 0x090 */ f32 xzDistToPlayer; // Distance between the actor and the player in the XZ plane
    /* 0x094 */ f32 yDistToPlayer; // Dist is negative if the actor is above the player
    /* 0x098 */ CollisionCheckInfo colChkInfo; // Variables related to the Collision Check system
    /* 0x0B4 */ ActorShape shape; // Variables related to the physical shape of the actor
    /* 0x0E4 */ Vec3f projectedPos; // Position of the actor in projected space
    /* 0x0F0 */ f32 projectedW; // w component of the projected actor position
    /* 0x0F4 */ f32 uncullZoneForward; // Amount to increase the uncull zone forward by (in projected space)
    /* 0x0F8 */ f32 uncullZoneScale; // Amount to increase the uncull zone scale by (in projected space)
    /* 0x0FC */ f32 uncullZoneDownward; // Amount to increase uncull zone downward by (in projected space)
    /* 0x100 */ Vec3f prevPos; // World position from the previous update cycle
    /* 0x10C */ u8 isTargeted; // Set to true if the actor is currently being targeted by the player
    /* 0x10D */ u8 targetPriority; // Lower values have higher priority. Resets to 0 when player stops targeting
    /* 0x10E */ u16 textId; // Text ID to pass to link/display when interacting with the actor
    /* 0x110 */ u16 freezeTimer; // Actor does not update when set. Timer decrements automatically
    /* 0x112 */ u16 colorFilterParams; // Set color filter to red, blue, or white. Toggle opa or xlu
    /* 0x114 */ u8 colorFilterTimer; // A non-zero value enables the color filter. Decrements automatically
    /* 0x115 */ u8 isDrawn; // Set to true if the actor is currently being drawn. Always stays false for lens actors
    /* 0x116 */ u8 dropFlag; // Configures what item is dropped by the actor from `Item_DropCollectibleRandom`
    /* 0x117 */ u8 naviEnemyId; // Sets what 0600 dialog to display when talking to navi. Default 0xFF
    /* 0x118 */ struct Actor* parent; // Usage is actor specific. Set if actor is spawned via `Actor_SpawnAsChild`
    /* 0x11C */ struct Actor* child; // Usage is actor specific. Set if actor is spawned via `Actor_SpawnAsChild`
    /* 0x120 */ struct Actor* prev; // Previous actor of this category
    /* 0x124 */ struct Actor* next; // Next actor of this category
    /* 0x128 */ ActorFunc init; // Initialization Routine. Called by `Actor_Init` or `Actor_UpdateAll`
    /* 0x12C */ ActorFunc destroy; // Destruction Routine. Called by `Actor_Destroy`
    /* 0x130 */ ActorFunc update; // Update Routine. Called by `Actor_UpdateAll`
    /* 0x134 */ ActorFunc draw; // Draw Routine. Called by `Actor_Draw`
    /* 0x138 */ ActorOverlay* overlayEntry; // Pointer to the overlay table entry for this actor
    /* 0x13C */ char dbgPad[0x10]; // Padding that only exists in the debug rom
} Actor; // size = 0x14C

typedef enum {
    /* 0 */ FOOT_LEFT,
    /* 1 */ FOOT_RIGHT
} ActorFootIndex;

/*
colorFilterParams WIP documentation
& 0x8000 : white
& 0x4000 : red
if neither of the above are set : blue

(& 0x1F00 >> 5) | 7 : color intensity
0x2000 : translucent, else opaque
*/

typedef struct DynaPolyActor {
    /* 0x000 */ struct Actor actor;
    /* 0x14C */ s32 bgId;
    /* 0x150 */ f32 unk_150;
    /* 0x154 */ f32 unk_154;
    /* 0x158 */ s16 unk_158; // y rotation?
    /* 0x15A */ u16 unk_15A;
    /* 0x15C */ u32 unk_15C;
    /* 0x160 */ u8 unk_160;
    /* 0x162 */ s16 unk_162;
} DynaPolyActor; // size = 0x164

typedef struct {
    /* 0x00 */ MtxF* matrices;
    /* 0x04 */ s16* objectIds;
    /* 0x08 */ s16 count;
    /* 0x0C */ Gfx** dLists;
    /* 0x10 */ s32 val; // used for various purposes: both a status indicator and counter
    /* 0x14 */ s32 prevLimbIndex;
} BodyBreak;

#define BODYBREAK_OBJECT_DEFAULT -1 // use the same object as the actor
#define BODYBREAK_STATUS_READY -1
#define BODYBREAK_STATUS_FINISHED 0

typedef enum {
    /* 0x00 */ ITEM00_RUPEE_GREEN,
    /* 0x01 */ ITEM00_RUPEE_BLUE,
    /* 0x02 */ ITEM00_RUPEE_RED,
    /* 0x03 */ ITEM00_HEART,
    /* 0x04 */ ITEM00_BOMBS_A,
    /* 0x05 */ ITEM00_ARROWS_SINGLE,
    /* 0x06 */ ITEM00_HEART_PIECE,
    /* 0x07 */ ITEM00_HEART_CONTAINER,
    /* 0x08 */ ITEM00_ARROWS_SMALL,
    /* 0x09 */ ITEM00_ARROWS_MEDIUM,
    /* 0x0A */ ITEM00_ARROWS_LARGE,
    /* 0x0B */ ITEM00_BOMBS_B,
    /* 0x0C */ ITEM00_NUTS,
    /* 0x0D */ ITEM00_STICK,
    /* 0x0E */ ITEM00_MAGIC_LARGE,
    /* 0x0F */ ITEM00_MAGIC_SMALL,
    /* 0x10 */ ITEM00_SEEDS,
    /* 0x11 */ ITEM00_SMALL_KEY,
    /* 0x12 */ ITEM00_FLEXIBLE,
    /* 0x13 */ ITEM00_RUPEE_ORANGE,
    /* 0x14 */ ITEM00_RUPEE_PURPLE,
    /* 0x15 */ ITEM00_SHIELD_DEKU,
    /* 0x16 */ ITEM00_SHIELD_HYLIAN,
    /* 0x17 */ ITEM00_TUNIC_ZORA,
    /* 0x18 */ ITEM00_TUNIC_GORON,
    /* 0x19 */ ITEM00_BOMBS_SPECIAL,
    /* 0x1A */ ITEM00_MAX,
    /* 0xFF */ ITEM00_NONE = 0xFF
} Item00Type;

struct EnItem00;

typedef void (*EnItem00ActionFunc)(struct EnItem00*, struct PlayState*);

typedef struct EnItem00 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnItem00ActionFunc actionFunc;
    /* 0x150 */ s16 collectibleFlag;
    /* 0x152 */ s16 getItemId;
    /* 0x154 */ s16 unk_154;
    /* 0x156 */ s16 unk_156;
    /* 0x158 */ s16 unk_158;
    /* 0x15A */ s16 despawnTimer;
    /* 0x15C */ f32 scale;
    /* 0x160 */ ColliderCylinder collider;
} EnItem00; // size = 0x1AC

// Only A_OBJ_SIGNPOST_OBLONG and A_OBJ_SIGNPOST_ARROW are used in room files.
typedef enum {
    /* 0x00 */ A_OBJ_BLOCK_SMALL,
    /* 0x01 */ A_OBJ_BLOCK_LARGE,
    /* 0x02 */ A_OBJ_BLOCK_HUGE,
    /* 0x03 */ A_OBJ_BLOCK_SMALL_ROT,
    /* 0x04 */ A_OBJ_BLOCK_LARGE_ROT,
    /* 0x05 */ A_OBJ_CUBE_SMALL,
    /* 0x06 */ A_OBJ_UNKNOWN_6,
    /* 0x07 */ A_OBJ_GRASS_CLUMP,
    /* 0x08 */ A_OBJ_TREE_STUMP,
    /* 0x09 */ A_OBJ_SIGNPOST_OBLONG,
    /* 0x0A */ A_OBJ_SIGNPOST_ARROW,
    /* 0x0B */ A_OBJ_BOULDER_FRAGMENT,
    /* 0x0C */ A_OBJ_MAX
} AObjType;

struct EnAObj;

typedef void (*EnAObjActionFunc)(struct EnAObj*, struct PlayState*);

typedef struct EnAObj {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ EnAObjActionFunc actionFunc;
    /* 0x168 */ s32 rotateWaitTimer;
    /* 0x16C */ s16 textId;
    /* 0x16E */ s16 rotateState;
    /* 0x170 */ s16 rotateForTimer;
    /* 0x172 */ s16 rotSpeedY;
    /* 0x174 */ s16 rotSpeedX;
    /* 0x178 */ f32 focusYoffset;
    /* 0x17C */ ColliderCylinder collider;
} EnAObj; // size = 0x1C8

typedef enum {
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

#define DEFINE_ACTOR(_0, enum, _2, _3) enum,
#define DEFINE_ACTOR_INTERNAL(_0, enum, _2, _3) enum,
#define DEFINE_ACTOR_UNSET(enum) enum,

typedef enum {
    #include "tables/actor_table.h"
    /* 0x0192 */ ACTOR_ID_MAX // originally "ACTOR_DLF_MAX"
} ActorID;

#undef DEFINE_ACTOR
#undef DEFINE_ACTOR_INTERNAL
#undef DEFINE_ACTOR_UNSET

typedef enum {
    DOORLOCK_NORMAL,
    DOORLOCK_BOSS,
    DOORLOCK_NORMAL_SPIRIT
} DoorLockType;

typedef enum {
    /* 0x00 */ NAVI_ENEMY_DEFAULT,
    /* 0x01 */ NAVI_ENEMY_GOHMA,
    /* 0x02 */ NAVI_ENEMY_GOHMA_EGG,
    /* 0x03 */ NAVI_ENEMY_GOHMA_LARVA,
    /* 0x04 */ NAVI_ENEMY_SKULLTULA,
    /* 0x05 */ NAVI_ENEMY_BIG_SKULLTULA,
    /* 0x06 */ NAVI_ENEMY_TAILPASARAN,
    /* 0x07 */ NAVI_ENEMY_DEKU_BABA,
    /* 0x08 */ NAVI_ENEMY_BIG_DEKU_BABA,
    /* 0x09 */ NAVI_ENEMY_WITHERED_DEKU_BABA,
    /* 0x0A */ NAVI_ENEMY_DEKU_SCRUB,
    /* 0x0B */ NAVI_ENEMY_UNUSED_B,
    /* 0x0C */ NAVI_ENEMY_KING_DODONGO,
    /* 0x0D */ NAVI_ENEMY_DODONGO,
    /* 0x0E */ NAVI_ENEMY_BABY_DODONGO,
    /* 0x0F */ NAVI_ENEMY_LIZALFOS,
    /* 0x10 */ NAVI_ENEMY_DINOLFOS,
    /* 0x11 */ NAVI_ENEMY_FIRE_KEESE,
    /* 0x12 */ NAVI_ENEMY_KEESE,
    /* 0x13 */ NAVI_ENEMY_ARMOS,
    /* 0x14 */ NAVI_ENEMY_BARINADE,
    /* 0x15 */ NAVI_ENEMY_PARASITIC_TENTACLE,
    /* 0x16 */ NAVI_ENEMY_SHABOM,
    /* 0x17 */ NAVI_ENEMY_BIRI,
    /* 0x18 */ NAVI_ENEMY_BARI,
    /* 0x19 */ NAVI_ENEMY_STINGER,
    /* 0x1A */ NAVI_ENEMY_PHANTOM_GANON_PHASE_2,
    /* 0x1B */ NAVI_ENEMY_STALFOS,
    /* 0x1C */ NAVI_ENEMY_BLUE_BUBBLE,
    /* 0x1D */ NAVI_ENEMY_WHITE_BUBBLE,
    /* 0x1E */ NAVI_ENEMY_GREEN_BUBBLE,
    /* 0x1F */ NAVI_ENEMY_SKULLWALLTULA,
    /* 0x20 */ NAVI_ENEMY_GOLD_SKULLTULA,
    /* 0x21 */ NAVI_ENEMY_VOLVAGIA,
    /* 0x22 */ NAVI_ENEMY_FLARE_DANCER,
    /* 0x23 */ NAVI_ENEMY_TORCH_SLUG,
    /* 0x24 */ NAVI_ENEMY_RED_BUBBLE,
    /* 0x25 */ NAVI_ENEMY_MORPHA,
    /* 0x26 */ NAVI_ENEMY_DARK_LINK,
    /* 0x27 */ NAVI_ENEMY_SHELL_BLADE,
    /* 0x28 */ NAVI_ENEMY_SPIKE,
    /* 0x29 */ NAVI_ENEMY_BONGO_BONGO,
    /* 0x2A */ NAVI_ENEMY_REDEAD,
    /* 0x2B */ NAVI_ENEMY_PHANTOM_GANON_PHASE_1,
    /* 0x2C */ NAVI_ENEMY_UNUSED_2C,
    /* 0x2D */ NAVI_ENEMY_GIBDO,
    /* 0x2E */ NAVI_ENEMY_DEAD_HANDS_HAND,
    /* 0x2F */ NAVI_ENEMY_DEAD_HAND,
    /* 0x30 */ NAVI_ENEMY_WALLMASTER,
    /* 0x31 */ NAVI_ENEMY_FLOORMASTER,
    /* 0x32 */ NAVI_ENEMY_TWINROVA_KOUME,
    /* 0x33 */ NAVI_ENEMY_TWINROVA_KOTAKE,
    /* 0x34 */ NAVI_ENEMY_IRON_KNUCKLE_NABOORU,
    /* 0x35 */ NAVI_ENEMY_IRON_KNUCKLE,
    /* 0x36 */ NAVI_ENEMY_SKULL_KID_ADULT,
    /* 0x37 */ NAVI_ENEMY_LIKE_LIKE,
    /* 0x38 */ NAVI_ENEMY_UNUSED_38,
    /* 0x39 */ NAVI_ENEMY_BEAMOS,
    /* 0x3A */ NAVI_ENEMY_ANUBIS,
    /* 0x3B */ NAVI_ENEMY_FREEZARD,
    /* 0x3C */ NAVI_ENEMY_UNUSED_3C,
    /* 0x3D */ NAVI_ENEMY_GANONDORF,
    /* 0x3E */ NAVI_ENEMY_GANON,
    /* 0x3F */ NAVI_ENEMY_SKULL_KID,
    /* 0x40 */ NAVI_ENEMY_SKULL_KID_FRIENDLY,
    /* 0x41 */ NAVI_ENEMY_SKULL_KID_MASK,
    /* 0x42 */ NAVI_ENEMY_OCTOROK,
    /* 0x43 */ NAVI_ENEMY_POE_COMPOSER,
    /* 0x44 */ NAVI_ENEMY_POE,
    /* 0x45 */ NAVI_ENEMY_RED_TEKTITE,
    /* 0x46 */ NAVI_ENEMY_BLUE_TEKTITE,
    /* 0x47 */ NAVI_ENEMY_LEEVER,
    /* 0x48 */ NAVI_ENEMY_PEAHAT,
    /* 0x49 */ NAVI_ENEMY_PEAHAT_LARVA,
    /* 0x4A */ NAVI_ENEMY_MOBLIN,
    /* 0x4B */ NAVI_ENEMY_MOBLIN_CLUB,
    /* 0x4C */ NAVI_ENEMY_WOLFOS,
    /* 0x4D */ NAVI_ENEMY_MAD_SCRUB,
    /* 0x4E */ NAVI_ENEMY_BUSINESS_SCRUB,
    /* 0x4F */ NAVI_ENEMY_DAMPES_GHOST,
    /* 0x50 */ NAVI_ENEMY_POE_SISTER_MEG,
    /* 0x51 */ NAVI_ENEMY_POE_SISTER_JOELLE,
    /* 0x52 */ NAVI_ENEMY_POE_SISTER_BETH,
    /* 0x53 */ NAVI_ENEMY_POE_SISTER_AMY,
    /* 0x54 */ NAVI_ENEMY_GERUDO_THIEF,
    /* 0x55 */ NAVI_ENEMY_STALCHILD,
    /* 0x56 */ NAVI_ENEMY_ICE_KEESE,
    /* 0x57 */ NAVI_ENEMY_WHITE_WOLFOS,
    /* 0x58 */ NAVI_ENEMY_GUAY,
    /* 0x59 */ NAVI_ENEMY_BIGOCTO,
    /* 0x5A */ NAVI_ENEMY_BIG_POE,
    /* 0x5B */ NAVI_ENEMY_TWINROVA,
    /* 0x5C */ NAVI_ENEMY_POE_WASTELAND,
    /* 0xFF */ NAVI_ENEMY_NONE = 0xFF
} NaviEnemy;

#define UPDBGCHECKINFO_FLAG_0 (1 << 0) // check wall
#define UPDBGCHECKINFO_FLAG_1 (1 << 1) // check ceiling
#define UPDBGCHECKINFO_FLAG_2 (1 << 2) // check floor and water
#define UPDBGCHECKINFO_FLAG_3 (1 << 3)
#define UPDBGCHECKINFO_FLAG_4 (1 << 4)
#define UPDBGCHECKINFO_FLAG_5 (1 << 5) // unused
#define UPDBGCHECKINFO_FLAG_6 (1 << 6) // disable water ripples
#define UPDBGCHECKINFO_FLAG_7 (1 << 7) // alternate wall check?

#endif
