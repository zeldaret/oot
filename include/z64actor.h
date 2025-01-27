#ifndef Z64ACTOR_H
#define Z64ACTOR_H

#include "color.h"
#include "romfile.h"
#include "z64animation.h"
#include "z64math.h"
#include "z64collision_check.h"

#define ACTOR_NUMBER_MAX 200

#define INVISIBLE_ACTOR_MAX 20

#define MASS_IMMOVABLE 0xFF // Cannot be pushed by OC colliders
#define MASS_HEAVY 0xFE // Can only be pushed by OC colliders from actors with IMMOVABLE or HEAVY mass.

// These are default parameters used for "animation fidgeting", which procedurally generate actor idle animations.
// These calculations may be performed within individual actors, or by using fidget tables with `Actor_UpdateFidgetTables`.
#define FIDGET_FREQ_Y 0x814
#define FIDGET_FREQ_Z 0x940
#define FIDGET_FREQ_LIMB 0x32
#define FIDGET_AMPLITUDE 200.0f

struct Actor;
struct ActorEntry;
struct CollisionPoly;
struct Lights;
struct Player;
struct PlayState;

typedef void (*ActorFunc)(struct Actor*, struct PlayState*);
typedef void (*ActorShadowFunc)(struct Actor*, struct Lights*, struct PlayState*);
typedef u16 (*NpcGetTextIdFunc)(struct PlayState*, struct Actor*);
typedef s16 (*NpcUpdateTalkStateFunc)(struct PlayState*, struct Actor*);

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

typedef struct ActorShape {
    /* 0x00 */ Vec3s rot; // Current actor shape rotation
    /* 0x06 */ s16 face; // Used to index eyes and mouth textures. Only used by player
    /* 0x08 */ f32 yOffset; // Model y axis offset. Represents model space units
    /* 0x0C */ ActorShadowFunc shadowDraw; // Shadow draw function
    /* 0x10 */ f32 shadowScale; // Changes the size of the shadow
    /* 0x14 */ u8 shadowAlpha; // Default is 255
    /* 0x15 */ u8 feetFloorFlag; // 0 if actor or feet aren't on ground, or 1 or 2 depending on feet positions
    /* 0x18 */ Vec3f feetPos[2]; // Update by using `Actor_SetFeetPos` in PostLimbDraw
} ActorShape; // size = 0x30

// Actor is discoverable by the Attention System. This enables Navi to hover over the actor when it is in range.
// The actor can also be locked onto (as long as `ACTOR_FLAG_LOCK_ON_DISABLED` is not set).
#define ACTOR_FLAG_ATTENTION_ENABLED (1 << 0)

// Actor is hostile toward the Player. Player has specific "battle" behavior when locked onto hostile actors.
// Enemy background music will also be played when the player is close enough to a hostile actor.
// Note: This must be paired with `ACTOR_FLAG_ATTENTION_ENABLED` to have any effect.
#define ACTOR_FLAG_HOSTILE (1 << 2)

// Actor is considered "friendly"; Opposite flag of `ACTOR_FLAG_HOSTILE`.
// Note that this flag doesn't have any effect on either the actor, or Player's behavior.
// What actually matters is the presence or lack of `ACTOR_FLAG_HOSTILE`.
#define ACTOR_FLAG_FRIENDLY (1 << 3)

// Culling of the actor's update process is disabled.
// In other words, the actor will keep updating even if the actor is outside its own culling volume.
// See `Actor_CullingCheck` for more information about culling.
// See `Actor_CullingVolumeTest` for more information on the test used to determine if an actor should be culled.
#define ACTOR_FLAG_UPDATE_CULLING_DISABLED (1 << 4)

// Culling of the actor's draw process is disabled.
// In other words, the actor will keep drawing even if the actor is outside its own culling volume.
// See `Actor_CullingCheck` for more information about culling.
// See `Actor_CullingVolumeTest` for more information on the test used to determine if an actor should be culled.
// (The original name for this flag is `NO_CULL_DRAW`, known from the Majora's Mask Debug ROM)
#define ACTOR_FLAG_DRAW_CULLING_DISABLED (1 << 5)

// Set if the actor is currently within the bounds of its culling volume.
// In most cases, this flag can be used to determine whether or not an actor is currently culled.
// However this flag still updates even if `ACTOR_FLAG_UPDATE_CULLING_DISABLED` or `ACTOR_FLAG_DRAW_CULLING_DISABLED`
// are set. Meaning, the flag can still have a value of "false" even if it is not actually culled.
// (The original name for this flag is `NO_CULL_FLAG`, known from the Majora's Mask Debug ROM)
#define ACTOR_FLAG_INSIDE_CULLING_VOLUME (1 << 6)

// hidden or revealed by Lens of Truth (depending on room lensMode)
#define ACTOR_FLAG_REACT_TO_LENS (1 << 7)

// Signals that player has accepted an offer to talk to an actor
// Player will retain this flag until the player is finished talking
// Actor will retain this flag until `Actor_TalkOfferAccepted` is called or manually turned off by the actor
#define ACTOR_FLAG_TALK (1 << 8)

// When the hookshot attaches to this actor, the actor will be pulled back as the hookshot retracts.
#define ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR (1 << 9)

// When the hookshot attaches to this actor, Player will be pulled by the hookshot and fly to the actor.
#define ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER (1 << 10)

// A clump of grass (EN_KUSA) has been destroyed.
// This flag is used to communicate with the spawner actor (OBJ_MURE).
#define ACTOR_FLAG_GRASS_DESTROYED (1 << 11)

// Actor will not shake when a quake occurs
#define ACTOR_FLAG_IGNORE_QUAKE (1 << 12)

// The hookshot is currently attached to this actor.
// The behavior that occurs after attachment is determined by `ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR` and `ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER`.
// If neither of those flags are set attachment cannot occur, and the hookshot will simply act as a damage source.
//
// This flag is also reused to indicate that an actor is attached to the boomerang.
// This only has an effect for Gold Skulltula Tokens (EN_SI) which has overlapping behavior for hookshot and boomerang.
#define ACTOR_FLAG_HOOKSHOT_ATTACHED (1 << 13)

// When hit by an arrow, the actor will be able to attach to the arrow and fly with it in the air
#define ACTOR_FLAG_CAN_ATTACH_TO_ARROW (1 << 14)

// Actor is currently attached to an arrow and flying with it in the air
#define ACTOR_FLAG_ATTACHED_TO_ARROW (1 << 15)

// Player automatically accepts a Talk Offer without needing to press the A button.
// Player still has to meet all conditions to be able to receive a talk offer (for example, being in range).
#define ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED (1 << 16)

// Actor will be influenced by the pitch (x rot) of Player's left hand when being carried,
// instead of Player's yaw which is the default actor carry behavior.
// This flag is helpful for something like the `BG_HEAVY_BLOCK` actor which Player carries underhanded.
#define ACTOR_FLAG_CARRY_X_ROT_INFLUENCE (1 << 17)

// When locked onto an actor with this flag set, the C-Up button can be used to talk to this actor.
// A C-Up button labeled "Navi" will appear on the HUD when locked on which indicates the actor can be checked with Navi.
// With this flag Player talks directly to the actor with C-Up. It is expected that the resulting dialog should appear
// to be coming from Navi, even though she is not involved at all with this interaction.
#define ACTOR_FLAG_TALK_WITH_C_UP (1 << 18)

// Flags controlling the use of `Actor.sfx`. Do not use directly.
#define ACTOR_FLAG_SFX_ACTOR_POS_2 (1 << 19) // see Actor_PlaySfx_Flagged2
#define ACTOR_AUDIO_FLAG_SFX_CENTERED_1 (1 << 20) // see Actor_PlaySfx_FlaggedCentered1
#define ACTOR_AUDIO_FLAG_SFX_CENTERED_2 (1 << 21) // see Actor_PlaySfx_FlaggedCentered2

// ignores point lights but not directional lights (such as environment lights)
#define ACTOR_FLAG_IGNORE_POINT_LIGHTS (1 << 22)

// When Player is carrying this actor, it can only be thrown, not dropped/placed.
// Typically an actor can only be thrown when moving, but this allows an actor to be thrown when standing still.
#define ACTOR_FLAG_THROW_ONLY (1 << 23)

// When colliding with Player's body AC collider, a "thump" sound will play indicating his body has been hit
#define ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT (1 << 24)

// Actor can update even if Player is currently using the ocarina.
// Typically an actor will halt while the ocarina is active (depending on category).
// This flag allows a given actor to be an exception.
#define ACTOR_FLAG_UPDATE_DURING_OCARINA (1 << 25)

// Actor can press and hold down switches.
// See usages of `DynaPolyActor_SetSwitchPressed` and `DynaPolyActor_IsSwitchPressed` for more context on how switches work.
#define ACTOR_FLAG_CAN_PRESS_SWITCHES (1 << 26)

// Player is not able to lock onto the actor.
// Navi will still be able to hover over the actor, assuming `ACTOR_FLAG_ATTENTION_ENABLED` is set.
#define ACTOR_FLAG_LOCK_ON_DISABLED (1 << 27)

// Flag controlling the use of `Actor.sfx`. Do not use directly. See Actor_PlaySfx_FlaggedTimer
#define ACTOR_FLAG_SFX_TIMER (1 << 28)

#define COLORFILTER_GET_COLORINTENSITY(colorFilterParams) (((colorFilterParams) & 0x1F00) >> 5)
#define COLORFILTER_GET_DURATION(colorFilterParams) ((colorFilterParams) & 0xFF)

#define COLORFILTER_COLORFLAG_GRAY 0x8000
#define COLORFILTER_COLORFLAG_RED  0x4000
#define COLORFILTER_COLORFLAG_BLUE 0x0000

#define COLORFILTER_INTENSITY_FLAG 0x8000

#define COLORFILTER_BUFFLAG_XLU    0x2000
#define COLORFILTER_BUFFLAG_OPA    0x0000

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
    /* 0x01E */ s8 objectSlot; // Object slot (in ObjectContext) corresponding to the actor's object; original name: "bank"
    /* 0x01F */ s8 attentionRangeType; // Controls the attention actor range and the lock-on leash range. See `AttentionRangeType`.
    /* 0x020 */ u16 sfx; // SFX ID to play. Sfx plays when value is set, then is cleared the following update cycle
    /* 0x024 */ PosRot world; // Position/rotation in the world
    /* 0x038 */ PosRot focus; // Player + camera focus pos during lock-on, among other uses. For player this represents head pos and rot.
    /* 0x04C */ f32 lockOnArrowOffset; // Height offset of the lock-on arrow relative to `focus` position
    /* 0x050 */ Vec3f scale; // Scale of the actor in each axis
    /* 0x05C */ Vec3f velocity; // Velocity of the actor in each axis
    /* 0x068 */ f32 speed; // Context dependent speed value. Can be used for XZ or XYZ depending on which move function is used
    /* 0x06C */ f32 gravity; // Acceleration due to gravity. Value is added to Y velocity every frame
    /* 0x070 */ f32 minVelocityY; // Sets the lower bounds cap for velocity along the Y axis. Only relevant when moved with gravity.
    /* 0x074 */ struct CollisionPoly* wallPoly; // Wall polygon the actor is touching
    /* 0x078 */ struct CollisionPoly* floorPoly; // Floor polygon directly below the actor
    /* 0x07C */ u8 wallBgId; // Bg ID of the wall polygon the actor is touching
    /* 0x07D */ u8 floorBgId; // Bg ID of the floor polygon directly below the actor
    /* 0x07E */ s16 wallYaw; // Y rotation of the wall polygon the actor is touching
    /* 0x080 */ f32 floorHeight; // Y position of the floor polygon directly below the actor
    /* 0x084 */ f32 depthInWater; // Distance below the surface of active waterbox. Positive value means under water, negative value means above water
    /* 0x088 */ u16 bgCheckFlags; // Flags indicating how the actor is interacting with collision
    /* 0x08A */ s16 yawTowardsPlayer; // Y rotation difference between the actor and the player
    /* 0x08C */ f32 xyzDistToPlayerSq; // Squared distance between the actor and the player
    /* 0x090 */ f32 xzDistToPlayer; // Distance between the actor and the player in the XZ plane
    /* 0x094 */ f32 yDistToPlayer; // Dist is negative if the actor is above the player
    /* 0x098 */ CollisionCheckInfo colChkInfo; // Variables related to the Collision Check system
    /* 0x0B4 */ ActorShape shape; // Variables related to the physical shape of the actor
    /* 0x0E4 */ Vec3f projectedPos; // Position of the actor in projected space
    /* 0x0F0 */ f32 projectedW; // w component of the projected actor position
    /* 0x0F4 */ f32 cullingVolumeDistance; // Forward distance of the culling volume (in projected space). See `Actor_CullingCheck` and `Actor_CullingVolumeTest` for more information.
    /* 0x0F8 */ f32 cullingVolumeScale; // Scale of the culling volume (in projected space). See `Actor_CullingCheck` and `Actor_CullingVolumeTest` for more information.
    /* 0x0FC */ f32 cullingVolumeDownward; // Downward height of the culling volume (in projected space). See `Actor_CullingCheck` and `Actor_CullingVolumeTest` for more information.
    /* 0x100 */ Vec3f prevPos; // World position from the previous update cycle
    /* 0x10C */ u8 isLockedOn; // Set to true if the actor is currently locked-on by Player
    /* 0x10D */ u8 attentionPriority; // Lower values have higher priority. Resets to 0 when lock-on is released.
    /* 0x10E */ u16 textId; // Text ID to pass to player/display when interacting with the actor
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
#if DEBUG_FEATURES
    /* 0x13C */ char dbgPad[0x10];
#endif
} Actor; // size = 0x14C

typedef enum ActorFootIndex {
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

#define DYNA_TRANSFORM_POS (1 << 0) // Position of the actors on top follows the dynapoly actor's movement.
#define DYNA_TRANSFORM_ROT_Y (1 << 1) // The Y rotation of the actors on top follows the dynapoly actor's Y rotation.

#define DYNA_INTERACT_ACTOR_ON_TOP (1 << 0) // There is an actor standing on the collision of the dynapoly actor
#define DYNA_INTERACT_PLAYER_ON_TOP (1 << 1) // The player actor is standing on the collision of the dynapoly actor
#define DYNA_INTERACT_PLAYER_ABOVE (1 << 2) // The player is directly above the collision of the dynapoly actor (any distance above)
#define DYNA_INTERACT_ACTOR_SWITCH_PRESSED (1 << 3) // An actor that is capable of pressing switches is on top of the dynapoly actor

typedef struct DynaPolyActor {
    /* 0x000 */ struct Actor actor;
    /* 0x14C */ s32 bgId;
    /* 0x150 */ f32 unk_150;
    /* 0x154 */ f32 unk_154;
    /* 0x158 */ s16 unk_158; // y rotation?
    /* 0x15C */ u32 transformFlags;
    /* 0x160 */ u8 interactFlags;
    /* 0x162 */ s16 unk_162;
} DynaPolyActor; // size = 0x164

typedef struct BodyBreak {
    /* 0x00 */ MtxF* matrices;
    /* 0x04 */ s16* objectSlots;
    /* 0x08 */ s16 count;
    /* 0x0C */ Gfx** dLists;
    /* 0x10 */ s32 val; // used for various purposes: both a status indicator and counter
    /* 0x14 */ s32 prevLimbIndex;
} BodyBreak;

#define BODYBREAK_OBJECT_SLOT_DEFAULT -1 // use the same object as the actor
#define BODYBREAK_STATUS_READY -1
#define BODYBREAK_STATUS_FINISHED 0

// Only A_OBJ_SIGNPOST_OBLONG and A_OBJ_SIGNPOST_ARROW are used in room files.
typedef enum AObjType {
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

typedef enum DoorLockType {
    DOORLOCK_NORMAL,
    DOORLOCK_BOSS,
    DOORLOCK_NORMAL_SPIRIT
} DoorLockType;

typedef enum NaviEnemy {
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

/**
 * Attention System
 *
 * The Attention System's responsibility is to bring specific actors to the player's attention.
 * This includes:
 *     - Making Navi fly over to certain actors of interest (can be lock-on actors, but may also not be)
 *     - Displaying an arrow over an actor that can be locked onto
 *     - Displaying a reticle over the current lock-on actor
 *     - Playing enemy background music if a hostile actor is nearby
 *
 * This system does not handle the actual lock-on implementation.
 * That is the responsibility of Player via `player->focusActor` and the camera.
 */

// A set of 4 triangles which appear as a ring around an actor when locked-on
typedef struct LockOnReticle {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ f32 radius; // distance towards the center of the locked-on actor
    /* 0x10 */ Color_RGB8 color;
} LockOnReticle; // size = 0x14

typedef struct Attention {
    /* 0x00 */ Vec3f naviHoverPos; // Navi's current hover position
    /* 0x0C */ Vec3f reticlePos; // Main reticle pos which each `LockOnReticle` instance can reference
    /* 0x18 */ Color_RGBAf naviInnerColor; // Navi inner color, based on actor category
    /* 0x28 */ Color_RGBAf naviOuterColor; // Navi outer color, based on actor category
    /* 0x38 */ Actor* naviHoverActor;  // The actor that Navi hovers over
    /* 0x3C */ Actor* reticleActor; // Actor to draw a reticle over
    /* 0x40 */ f32 naviMoveProgressFactor; // Controls Navi so she can smootly transition to an actor
    /* 0x44 */ f32 reticleRadius; // Main reticle radius value which each `LockOnReticle` instance can reference
    /* 0x48 */ s16 reticleFadeAlphaControl; // Set and fade the reticle alpha; Non-zero values control if it should draw
    /* 0x4A */ u8 naviHoverActorCategory; // Category of the actor Navi is currently hovering over
    /* 0x4B */ u8 reticleSpinCounter; // Counts up when a reticle is active, used for the spinning animation
    /* 0x4C */ s8 curReticle; // Indexes lockOnReticles[]
    /* 0x50 */ LockOnReticle lockOnReticles[3]; // Multiple reticles are used for a motion-blur effect
    /* 0x8C */ Actor* forcedLockOnActor; // Forces lock-on to this actor when set (never used in practice)
    /* 0x90 */ Actor* bgmEnemy; // The nearest actor which can trigger enemy background music
    /* 0x94 */ Actor* arrowHoverActor; // Actor to draw an arrow over
} Attention; // size = 0x98

// It is difficult to give each type a name because it is numerically based
// and there are so many different combinations.
// Each type has a comment of the form "attention range / lock-on leash range"
typedef enum AttentionRangeType {
    /*  0 */ ATTENTION_RANGE_0, // 70   / 140
    /*  1 */ ATTENTION_RANGE_1, // 170  / 255
    /*  2 */ ATTENTION_RANGE_2, // 280  / 5600
    /*  3 */ ATTENTION_RANGE_3, // 350  / 525   (default)
    /*  4 */ ATTENTION_RANGE_4, // 700  / 1050
    /*  5 */ ATTENTION_RANGE_5, // 1000 / 1500
    /*  6 */ ATTENTION_RANGE_6, // 100  / 105.36842
    /*  7 */ ATTENTION_RANGE_7, // 140  / 163.33333
    /*  8 */ ATTENTION_RANGE_8, // 240  / 576
    /*  9 */ ATTENTION_RANGE_9, // 280  / 280000
    /* 10 */ ATTENTION_RANGE_MAX
} AttentionRangeType;

typedef struct TitleCardContext {
    /* 0x00 */ void* texture;
    /* 0x04 */ s16 x;
    /* 0x06 */ s16 y;
    /* 0x08 */ u8 width;
    /* 0x09 */ u8 height;
    /* 0x0A */ u8 durationTimer; // how long the title card appears for before fading
    /* 0x0B */ u8 delayTimer; // how long the title card waits to appear
    /* 0x0C */ s16 alpha;
    /* 0x0E */ s16 intensity;
} TitleCardContext; // size = 0x10

typedef struct ActorListEntry {
    /* 0x00 */ s32 length; // number of actors loaded of this category
    /* 0x04 */ Actor* head; // pointer to head of the linked list of this category (most recent actor added)
} ActorListEntry; // size = 0x08

typedef struct ActorContextSceneFlags {
    /* 0x00 */ u32 swch;
    /* 0x04 */ u32 tempSwch;
    /* 0x08 */ u32 unk0;
    /* 0x0C */ u32 unk1;
    /* 0x10 */ u32 chest;
    /* 0x14 */ u32 clear;
    /* 0x18 */ u32 tempClear;
    /* 0x1C */ u32 collect;
    /* 0x20 */ u32 tempCollect;
} ActorContextSceneFlags; // size = 0x24

typedef struct ActorContext {
    /* 0x000 */ u8 freezeFlashTimer;
    /* 0x001 */ char unk_01[0x01];
    /* 0x002 */ u8 unk_02;
    /* 0x003 */ u8 lensActive;
    /* 0x004 */ char unk_04[0x04];
    /* 0x008 */ u8 total; // total number of actors loaded
    /* 0x00C */ ActorListEntry actorLists[ACTORCAT_MAX];
    /* 0x06C */ Attention attention;
    /* 0x104 */ ActorContextSceneFlags flags;
    /* 0x128 */ TitleCardContext titleCtx;
    /* 0x138 */ char unk_138[0x04];
    /* 0x13C */ void* absoluteSpace; // Space used to allocate actor overlays with alloc type ACTOROVL_ALLOC_ABSOLUTE
} ActorContext; // size = 0x140

// EnDoor and DoorKiller share openAnim and playerIsOpening
// Due to alignment, a substruct cannot be used in the structs of these actors.
#define DOOR_ACTOR_BASE               \
    /* 0x0000 */ Actor actor;         \
    /* 0x014C */ SkelAnime skelAnime; \
    /* 0x0190 */ u8 openAnim;         \
    /* 0x0191 */ u8 playerIsOpening

typedef struct DoorActorBase {
    /* 0x0000 */ DOOR_ACTOR_BASE;
} DoorActorBase;

// DoorShutter and DoorGerudo share isActive
// Due to alignment, a substruct cannot be used in the structs of these actors.
#define SLIDING_DOOR_ACTOR_BASE      \
    /* 0x0000 */ DynaPolyActor dyna; \
    /* 0x0164 */ s16 isActive // Set to true by player when using the door. Also a timer for niche cases in DoorShutter

typedef struct SlidingDoorActorBase {
    /* 0x0000 */ SLIDING_DOOR_ACTOR_BASE;
} SlidingDoorActorBase;

typedef enum DoorOpenAnim {
    /* 0x00 */ DOOR_OPEN_ANIM_ADULT_L,
    /* 0x01 */ DOOR_OPEN_ANIM_CHILD_L,
    /* 0x02 */ DOOR_OPEN_ANIM_ADULT_R,
    /* 0x03 */ DOOR_OPEN_ANIM_CHILD_R,
    /* 0x04 */ DOOR_OPEN_ANIM_MAX
} DoorOpenAnim;

#define UPDBGCHECKINFO_FLAG_0 (1 << 0) // check wall
#define UPDBGCHECKINFO_FLAG_1 (1 << 1) // check ceiling
#define UPDBGCHECKINFO_FLAG_2 (1 << 2) // check floor and water
#define UPDBGCHECKINFO_FLAG_3 (1 << 3)
#define UPDBGCHECKINFO_FLAG_4 (1 << 4)
#define UPDBGCHECKINFO_FLAG_5 (1 << 5) // unused
#define UPDBGCHECKINFO_FLAG_6 (1 << 6) // disable water ripples
#define UPDBGCHECKINFO_FLAG_7 (1 << 7) // alternate wall check?

typedef enum NpcTalkState {
    /* 0x0 */ NPC_TALK_STATE_IDLE, // NPC not currently talking to player
    /* 0x1 */ NPC_TALK_STATE_TALKING, // NPC is currently talking to player
    /* 0x2 */ NPC_TALK_STATE_ACTION, // An NPC-defined action triggered in the conversation
    /* 0x3 */ NPC_TALK_STATE_ITEM_GIVEN // NPC finished giving an item and text box is done
} NpcTalkState;

typedef enum NpcTrackingMode {
    /* 0x0 */ NPC_TRACKING_PLAYER_AUTO_TURN, // Determine tracking mode based on player position, see Npc_UpdateAutoTurn
    /* 0x1 */ NPC_TRACKING_NONE, // Don't track the target (usually the player)
    /* 0x2 */ NPC_TRACKING_HEAD_AND_TORSO, // Track target by turning the head and the torso
    /* 0x3 */ NPC_TRACKING_HEAD, // Track target by turning the head
    /* 0x4 */ NPC_TRACKING_FULL_BODY // Track target by turning the body, torso and head
} NpcTrackingMode;

typedef struct NpcInteractInfo {
    /* 0x00 */ s16 talkState;
    /* 0x02 */ s16 trackingMode;
    /* 0x04 */ s16 autoTurnTimer;
    /* 0x06 */ s16 autoTurnState;
    /* 0x08 */ Vec3s headRot;
    /* 0x0E */ Vec3s torsoRot;
    /* 0x14 */ f32 yOffset; // Y position offset to add to actor position when calculating angle to target
    /* 0x18 */ Vec3f trackPos;
    /* 0x24 */ char unk_24[0x4];
} NpcInteractInfo; // size = 0x28

// Converts a number of bits to a bitmask, helper for params macros
// e.g. 3 becomes 0b111 (7)
#define NBITS_TO_MASK(n) \
    ((1 << (n)) - 1)

// Extracts the `n`-bit value at position `s` in `p`, shifts then masks
// Unsigned variant, no possibility of sign extension
#define PARAMS_GET_U(p, s, n) \
    (((p) >> (s)) & NBITS_TO_MASK(n))

// Extracts the `n`-bit value at position `s` in `p`, masks then shifts
// Signed variant, possibility of sign extension
#define PARAMS_GET_S(p, s, n) \
    (((p) & (NBITS_TO_MASK(n) << (s))) >> (s))

// Extracts all bits past position `s` in `p`
#define PARAMS_GET_NOMASK(p, s) \
    ((p) >> (s))

// Extracts the `n`-bit value at position `s` in `p` without shifting it from its current position
#define PARAMS_GET_NOSHIFT(p, s, n) \
    ((p) & (NBITS_TO_MASK(n) << (s)))

// Moves the `n`-bit value `p` to bit position `s` for building actor parameters by OR-ing these together
#define PARAMS_PACK(p, s, n) \
    (((p) & NBITS_TO_MASK(n)) << (s))

// Moves the value `p` to bit position `s` for building actor parameters by OR-ing these together.
#define PARAMS_PACK_NOMASK(p, s) \
    ((p) << (s))

// Generates a bitmask for bit position `s` of length `n`
#define PARAMS_MAKE_MASK(s, n) PARAMS_GET_NOSHIFT(~0, s, n)

#define TRANSITION_ACTOR_PARAMS_INDEX_SHIFT 10
#define GET_TRANSITION_ACTOR_INDEX(actor) PARAMS_GET_NOMASK((u16)(actor)->params, 10)

void ActorShape_Init(ActorShape* shape, f32 yOffset, ActorShadowFunc shadowDraw, f32 shadowScale);
void ActorShadow_DrawCircle(Actor* actor, struct Lights* lights, struct PlayState* play);
void ActorShadow_DrawWhiteCircle(Actor* actor, struct Lights* lights, struct PlayState* play);
void ActorShadow_DrawHorse(Actor* actor, struct Lights* lights, struct PlayState* play);
void ActorShadow_DrawFeet(Actor* actor, struct Lights* lights, struct PlayState* play);
void Actor_SetFeetPos(Actor* actor, s32 limbIndex, s32 leftFootIndex, Vec3f* leftFootPos, s32 rightFootIndex,
                      Vec3f* rightFootPos);
void Actor_ProjectPos(struct PlayState* play, Vec3f* src, Vec3f* xyzDest, f32* cappedInvWDest);
void Attention_Draw(Attention* attention, struct PlayState* play);
s32 Flags_GetSwitch(struct PlayState* play, s32 flag);
void Flags_SetSwitch(struct PlayState* play, s32 flag);
void Flags_UnsetSwitch(struct PlayState* play, s32 flag);
s32 Flags_GetUnknown(struct PlayState* play, s32 flag);
void Flags_SetUnknown(struct PlayState* play, s32 flag);
void Flags_UnsetUnknown(struct PlayState* play, s32 flag);
s32 Flags_GetTreasure(struct PlayState* play, s32 flag);
void Flags_SetTreasure(struct PlayState* play, s32 flag);
s32 Flags_GetClear(struct PlayState* play, s32 flag);
void Flags_SetClear(struct PlayState* play, s32 flag);
void Flags_UnsetClear(struct PlayState* play, s32 flag);
s32 Flags_GetTempClear(struct PlayState* play, s32 flag);
void Flags_SetTempClear(struct PlayState* play, s32 flag);
void Flags_UnsetTempClear(struct PlayState* play, s32 flag);
s32 Flags_GetCollectible(struct PlayState* play, s32 flag);
void Flags_SetCollectible(struct PlayState* play, s32 flag);
void TitleCard_InitBossName(struct PlayState* play, TitleCardContext* titleCtx, void* texture, s16 x, s16 y, u8 width,
                            u8 height);
void TitleCard_InitPlaceName(struct PlayState* play, TitleCardContext* titleCtx, void* texture, s32 x, s32 y, s32 width,
                             s32 height, s32 delay);
s32 TitleCard_Clear(struct PlayState* play, TitleCardContext* titleCtx);
void Actor_Kill(Actor* actor);
void Actor_SetFocus(Actor* actor, f32 yOffset);
void Actor_SetScale(Actor* actor, f32 scale);
void Actor_SetObjectDependency(struct PlayState* play, Actor* actor);
void Actor_UpdatePos(Actor* actor);
void Actor_UpdateVelocityXZGravity(Actor* actor);
void Actor_MoveXZGravity(Actor* actor);
void Actor_UpdateVelocityXYZ(Actor* actor);
void Actor_MoveXYZ(Actor* actor);
void Actor_SetProjectileSpeed(Actor* actor, f32 speedXYZ);
s16 Actor_WorldYawTowardActor(Actor* origin, Actor* target);
s16 Actor_FocusYawTowardActor(Actor* origin, Actor* target);
s16 Actor_WorldYawTowardPoint(Actor* origin, Vec3f* point);
f32 Actor_WorldDistXYZToActor(Actor* actorA, Actor* actorB);
f32 Actor_WorldDistXYZToPoint(Actor* actor, Vec3f* refPoint);
s16 Actor_WorldPitchTowardActor(Actor* actorA, Actor* actorB);
s16 Actor_WorldPitchTowardPoint(Actor* actor, Vec3f* refPoint);
f32 Actor_WorldDistXZToActor(Actor* actorA, Actor* actorB);
f32 Actor_WorldDistXZToPoint(Actor* actor, Vec3f* refPoint);
void Actor_WorldToActorCoords(Actor* actor, Vec3f* dest, Vec3f* pos);
f32 Actor_HeightDiff(Actor* actorA, Actor* actorB);
f32 Player_GetHeight(struct Player* player);
f32 func_8002DCE4(struct Player* player);
int func_8002DD6C(struct Player* player);
int func_8002DD78(struct Player* player);
s32 func_8002DDE4(struct PlayState* play);
s32 func_8002DDF4(struct PlayState* play);
void Actor_SwapHookshotAttachment(struct PlayState* play, Actor* srcActor, Actor* destActor);
void Actor_RequestHorseCameraSetting(struct PlayState* play, struct Player* player);
void Actor_MountHorse(struct PlayState* play, struct Player* player, Actor* horse);
int func_8002DEEC(struct Player* player);
void Actor_InitPlayerHorse(struct PlayState* play, struct Player* player);
s32 Player_SetCsAction(struct PlayState* play, Actor* csActor, u8 csAction);
s32 Player_SetCsActionWithHaltedActors(struct PlayState* play, Actor* csActor, u8 csAction);
void func_8002DF90(DynaPolyActor* dynaActor);
void func_8002DFA4(DynaPolyActor* dynaActor, f32 arg1, s16 arg2);
s32 Player_IsFacingActor(Actor* actor, s16 maxAngle, struct PlayState* play);
s32 Actor_ActorBIsFacingActorA(Actor* actorA, Actor* actorB, s16 maxAngle);
s32 Actor_IsFacingPlayer(Actor* actor, s16 maxAngle);
s32 Actor_ActorAIsFacingActorB(Actor* actorA, Actor* actorB, s16 maxAngle);
s32 Actor_IsFacingAndNearPlayer(Actor* actor, f32 range, s16 maxAngle);
s32 Actor_ActorAIsFacingAndNearActorB(Actor* actorA, Actor* actorB, f32 range, s16 maxAngle);
void Actor_UpdateBgCheckInfo(struct PlayState* play, Actor* actor, f32 wallCheckHeight, f32 wallCheckRadius,
                             f32 ceilingCheckHeight, s32 flags);
Hilite* func_8002EABC(Vec3f* object, Vec3f* eye, Vec3f* lightDir, struct GraphicsContext* gfxCtx);
Hilite* func_8002EB44(Vec3f* object, Vec3f* eye, Vec3f* lightDir, struct GraphicsContext* gfxCtx);
void func_8002EBCC(Actor* actor, struct PlayState* play, s32 flag);
void func_8002ED80(Actor* actor, struct PlayState* play, s32 flag);
PosRot Actor_GetFocus(Actor* actor);
PosRot Actor_GetWorld(Actor* actor);
PosRot Actor_GetWorldPosShapeRot(Actor* actor);
s32 Attention_ShouldReleaseLockOn(Actor* actor, struct Player* player, s32 ignoreLeash);
s32 Actor_TalkOfferAccepted(Actor* actor, struct PlayState* play);
s32 Actor_OfferTalkExchange(Actor* actor, struct PlayState* play, f32 xzRange, f32 yRange, u32 exchangeItemId);
s32 Actor_OfferTalkExchangeEquiCylinder(Actor* actor, struct PlayState* play, f32 radius, u32 exchangeItemId);
s32 Actor_OfferTalk(Actor* actor, struct PlayState* play, f32 radius);
s32 Actor_OfferTalkNearColChkInfoCylinder(Actor* actor, struct PlayState* play);
u32 Actor_TextboxIsClosing(Actor* actor, struct PlayState* play);
s8 Actor_GetPlayerExchangeItemId(struct PlayState* play);
void Actor_GetScreenPos(struct PlayState* play, Actor* actor, s16* x, s16* y);
u32 Actor_HasParent(Actor* actor, struct PlayState* play);
s32 Actor_OfferGetItem(Actor* actor, struct PlayState* play, s32 getItemId, f32 xzRange, f32 yRange);
s32 Actor_OfferGetItemNearby(Actor* actor, struct PlayState* play, s32 getItemId);
s32 Actor_OfferCarry(Actor* actor, struct PlayState* play);
u32 Actor_HasNoParent(Actor* actor, struct PlayState* play);
void func_8002F5C4(Actor* actorA, Actor* actorB, struct PlayState* play);
void Actor_SetClosestSecretDistance(Actor* actor, struct PlayState* play);
s32 Actor_IsMounted(struct PlayState* play, Actor* horse);
u32 Actor_SetRideActor(struct PlayState* play, Actor* horse, s32 mountSide);
s32 Actor_NotMounted(struct PlayState* play, Actor* horse);
void Actor_SetPlayerKnockback(struct PlayState* play, Actor* actor, f32 speed, s16 rot, f32 yVelocity, u32 type, u32 damage);
void Actor_SetPlayerKnockbackLarge(struct PlayState* play, Actor* actor, f32 speed, s16 rot, f32 yVelocity, u32 damage);
void Actor_SetPlayerKnockbackLargeNoDamage(struct PlayState* play, Actor* actor, f32 speed, s16 rot, f32 yVelocity);
void Actor_SetPlayerKnockbackSmall(struct PlayState* play, Actor* actor, f32 speed, s16 rot, f32 yVelocity, u32 damage);
void Actor_SetPlayerKnockbackSmallNoDamage(struct PlayState* play, Actor* actor, f32 speed, s16 rot, f32 yVelocity);
void Player_PlaySfx(struct Player* player, u16 sfxId);
void Actor_PlaySfx(Actor* actor, u16 sfxId);
void Actor_PlaySfx_SurfaceBomb(struct PlayState* play, Actor* actor);
void Actor_PlaySfx_Flagged2(Actor* actor, u16 sfxId);
void Actor_PlaySfx_FlaggedCentered1(Actor* actor, u16 sfxId);
void Actor_PlaySfx_FlaggedCentered2(Actor* actor, u16 sfxId);
void Actor_PlaySfx_Flagged(Actor* actor, u16 sfxId);
void Actor_PlaySfx_FlaggedTimer(Actor* actor, s32 timer);
s32 func_8002F9EC(struct PlayState* play, Actor* actor, struct CollisionPoly* poly, s32 bgId, Vec3f* pos);
void Actor_DisableLens(struct PlayState* play);
void Actor_InitContext(struct PlayState* play, ActorContext* actorCtx, struct ActorEntry* playerEntry);
void Actor_UpdateAll(struct PlayState* play, ActorContext* actorCtx);
s32 Actor_CullingVolumeTest(struct PlayState* play, Actor* actor, Vec3f* projPos, f32 projW);
void func_800315AC(struct PlayState* play, ActorContext* actorCtx);
void Actor_KillAllWithMissingObject(struct PlayState* play, ActorContext* actorCtx);
void func_80031B14(struct PlayState* play, ActorContext* actorCtx);
void func_80031C3C(ActorContext* actorCtx, struct PlayState* play);
Actor* Actor_Spawn(ActorContext* actorCtx, struct PlayState* play, s16 actorId, f32 posX, f32 posY, f32 posZ, s16 rotX,
                   s16 rotY, s16 rotZ, s16 params);
Actor* Actor_SpawnAsChild(ActorContext* actorCtx, Actor* parent, struct PlayState* play, s16 actorId, f32 posX,
                          f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, s16 params);
void Actor_SpawnTransitionActors(struct PlayState* play, ActorContext* actorCtx);
Actor* Actor_SpawnEntry(ActorContext* actorCtx, struct ActorEntry* actorEntry, struct PlayState* play);
Actor* Actor_Delete(ActorContext* actorCtx, Actor* actor, struct PlayState* play);
Actor* Attention_FindActor(struct PlayState* play, ActorContext* actorCtx, Actor** attentionActorP,
                           struct Player* player);
Actor* Actor_Find(ActorContext* actorCtx, s32 actorId, s32 actorCategory);
void Enemy_StartFinishingBlow(struct PlayState* play, Actor* actor);
void BodyBreak_Alloc(BodyBreak* bodyBreak, s32 count, struct PlayState* play);
void BodyBreak_SetInfo(BodyBreak* bodyBreak, s32 limbIndex, s32 minLimbIndex, s32 maxLimbIndex, u32 count, Gfx** dList,
                       s16 objectSlot);
s32 BodyBreak_SpawnParts(Actor* actor, BodyBreak* bodyBreak, struct PlayState* play, s16 type);
void Actor_SpawnFloorDustRing(struct PlayState* play, Actor* actor, Vec3f* posXZ, f32 radius, s32 amountMinusOne,
                              f32 randAccelWeight, s16 scale, s16 scaleStep, u8 useLighting);
void func_80033480(struct PlayState* play, Vec3f* posBase, f32 randRangeDiameter, s32 amountMinusOne, s16 scaleBase,
                   s16 scaleStep, u8 arg6);
Actor* Actor_GetCollidedExplosive(struct PlayState* play, Collider* collider);
Actor* func_80033684(struct PlayState* play, Actor* explosiveActor);
Actor* Actor_GetProjectileActor(struct PlayState* play, Actor* refActor, f32 radius);
void Actor_ChangeCategory(struct PlayState* play, ActorContext* actorCtx, Actor* actor, u8 actorCategory);
void Actor_SetTextWithPrefix(struct PlayState* play, Actor* actor, s16 baseTextId);
s16 Actor_TestFloorInDirection(Actor* actor, struct PlayState* play, f32 distance, s16 angle);
s32 Actor_IsLockedOn(struct PlayState* play, Actor* actor);
s32 Actor_OtherIsLockedOn(struct PlayState* play, Actor* actor);
f32 func_80033AEC(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5);
void func_80033C30(Vec3f* arg0, Vec3f* arg1, u8 alpha, struct PlayState* play);
void Actor_RequestQuake(struct PlayState* play, s16 y, s16 duration);
void Actor_RequestQuakeWithSpeed(struct PlayState* play, s16 y, s16 duration, s16 speed);
void Actor_RequestQuakeAndRumble(Actor* actor, struct PlayState* play, s16 quakeY, s16 quakeDuration);
void Actor_DrawDoorLock(struct PlayState* play, s32 frame, s32 type);
void func_8003424C(struct PlayState* play, Vec3f* arg1);
void Actor_SetColorFilter(Actor* actor, s16 colorFlag, s16 colorIntensityMax, s16 bufFlag, s16 duration);
void func_800342EC(Vec3f* object, struct PlayState* play);
void func_8003435C(Vec3f* object, struct PlayState* play);
s32 Npc_UpdateTalking(struct PlayState* play, Actor* actor, s16* talkState, f32 interactRange,
                      NpcGetTextIdFunc getTextId, NpcUpdateTalkStateFunc updateTalkState);
s16 Npc_GetTrackingPresetMaxPlayerYaw(s16 presetIndex);
void Npc_TrackPoint(Actor* actor, NpcInteractInfo* interactInfo, s16 presetIndex, s16 trackingMode);
void func_80034BA0(struct PlayState* play, SkelAnime* skelAnime, OverrideLimbDraw overrideLimbDraw,
                   PostLimbDraw postLimbDraw, Actor* actor, s16 alpha);
void func_80034CC4(struct PlayState* play, SkelAnime* skelAnime, OverrideLimbDraw overrideLimbDraw,
                   PostLimbDraw postLimbDraw, Actor* actor, s16 alpha);
s16 Actor_UpdateAlphaByDistance(Actor* actor, struct PlayState* play, s16 alpha, f32 radius);
void Actor_UpdateFidgetTables(struct PlayState* play, s16* fidgetTableY, s16* fidgetTableZ, s32 tableLen);
void Actor_Noop(Actor* actor, struct PlayState* play);

void Gfx_DrawDListOpa(struct PlayState* play, Gfx* dlist);
void Gfx_DrawDListXlu(struct PlayState* play, Gfx* dlist);

Actor* Actor_FindNearby(struct PlayState* play, Actor* refActor, s16 actorId, u8 actorCategory, f32 range);
s32 func_800354B4(struct PlayState* play, Actor* actor, f32 range, s16 arg3, s16 arg4, s16 arg5);
void func_8003555C(struct PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel);
void func_800355B8(struct PlayState* play, Vec3f* pos);
u8 func_800355E4(struct PlayState* play, Collider* collider);
u8 Actor_ApplyDamage(Actor* actor);
void Actor_SetDropFlag(Actor* actor, ColliderElement* elem, s32 freezeFlag);
void Actor_SetDropFlagJntSph(Actor* actor, ColliderJntSph* jntSph, s32 freezeFlag);
void func_80035844(Vec3f* arg0, Vec3f* arg1, Vec3s* arg2, s32 arg3);
Actor* func_800358DC(Actor* actor, Vec3f* spawnPos, Vec3s* spawnRot, f32* arg3, s32 timer, s16* unused,
                     struct PlayState* play, s16 params, Gfx* dList);
void func_800359B8(Actor* actor, s16 arg1, Vec3s* arg2);
s32 Flags_GetEventChkInf(s32 flag);
void Flags_SetEventChkInf(s32 flag);
s32 Flags_GetInfTable(s32 flag);
void Flags_SetInfTable(s32 flag);
u16 func_80037C30(struct PlayState* play, s16 arg1);
s32 func_80037D98(struct PlayState* play, Actor* actor, s32 arg2, s32* arg3);
s32 Actor_TrackPlayer(struct PlayState* play, Actor* actor, Vec3s* headRot, Vec3s* torsoRot, Vec3f focusPos);

#endif
