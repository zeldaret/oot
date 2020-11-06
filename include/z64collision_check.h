#ifndef _Z_COLLISION_CHECK_H_
#define _Z_COLLISION_CHECK_H_

#define COLLISION_CHECK_AT_MAX 50
#define COLLISION_CHECK_AC_MAX 60
#define COLLISION_CHECK_OC_MAX 50
#define COLLISION_CHECK_OC_LINE_MAX 3

// From z64.h
struct Actor;

typedef struct Collider {
    /* 0x00 */ struct Actor* actor; // Attached actor
    /* 0x04 */ struct Actor* at; // Actor attached to what it collided with as an AT collider.
    /* 0x08 */ struct Actor* ac; // Actor attached to what it collided with as an AC collider.
    /* 0x0C */ struct Actor* oc; // Actor attached to what it collided with as an OC collider.
    /* 0x10 */ u8 atFlags; // Information flags for AT collisions. 
    /* 0x11 */ u8 acFlags; // Information flags for AC collisions.
    /* 0x12 */ u8 ocFlags; // Information flags for OC collisions.
    /* 0x13 */ u8 ocType;  // Flags related to which colliders it can OC collide with.
    /* 0x14 */ u8 colType; // Determines hitmarks and sound effects during AC collisions.
    /* 0x15 */ u8 shape; // JntSph, Cylinder, Tris, or Quad
} Collider; // size = 0x18

typedef struct ColliderInit {
    /* 0x00 */ u8 colType; // Determines hitmarks and sound effects during AC collisions.
    /* 0x01 */ u8 atFlags; // Information flags for AT collisions. 
    /* 0x02 */ u8 acFlags; // Information flags for OC collisions.
    /* 0x03 */ u8 ocFlags; // Information flags for OC collisions.
    /* 0x04 */ u8 ocType; // Flags related to which colliders it can OC collide with.
    /* 0x05 */ u8 shape; // JntSph, Cylinder, Tris, or Quad
} ColliderInit; // size = 0x06

typedef struct ColliderInit_Set3 {
    /* 0x00 */ u8 colType; // Determines hitmarks and sound effects during AC collisions.
    /* 0x01 */ u8 atFlags; // Information flags for AT collisions. 
    /* 0x02 */ u8 acFlags; // Information flags for AC collisions.
    /* 0x03 */ u8 ocFlags; // Information flags for OC collisions.
    /* 0x04 */ u8 shape; // JntSph, Cylinder, Tris, or Quad
} ColliderInit_Set3; // size = 0x05

typedef struct ColliderInitToActor {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ u8 atFlags; // Information flags for AT collisions.
    /* 0x05 */ u8 acFlags; // Information flags for AC collisions.
    /* 0x06 */ u8 ocFlags; // Information flags for OC collisions.
    /* 0x07 */ u8 shape;   // JntSph, Cylinder, Tris, or Quad
} ColliderInitToActor; // size = 0x08

typedef struct ColliderTouch {
    /* 0x00 */ u32 dFlags; // Toucher exclusion mask.
    /* 0x04 */ u8 effect; // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 damage; // Damage or Stun Timer
} ColliderTouch; // size = 0x08

typedef struct ColliderBump {
    /* 0x00 */ u32 dFlags;  // Bumper exclusion mask
    /* 0x04 */ u8 effect;  // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 defense; // Damage Resistance
    /* 0x06 */ Vec3s hitPos; // Point of contact
} ColliderBump; // size = 0x0C

typedef struct ColliderBumpInit {
    /* 0x00 */ u32 dFlags; // Bumper exclusion mask
    /* 0x04 */ u8 effect; // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 defense; // Damage Resistance
} ColliderBumpInit; // size = 0x08

typedef struct ColliderInfo {
    /* 0x00 */ ColliderTouch toucher; // Damage properties when acting as an AT collider
    /* 0x08 */ ColliderBump bumper; // Damage properties when acting as an AC collider
    /* 0x14 */ u8 elemType; // Affects sfx reaction when attacked by Link and hookability. Full purpose unknown.
    /* 0x15 */ u8 toucherFlags; // Information flags for AT collisions
    /* 0x16 */ u8 bumperFlags; // Information flags for AC collisions
    /* 0x17 */ u8 ocElemFlags; // Information flags for OC collisions
    /* 0x18 */ Collider* atHit;                // object touching this element's AT collider
    /* 0x1C */ Collider* acHit;                // object touching this element's AC collider
    /* 0x20 */ struct ColliderInfo* atHitInfo; // element that hit the AT collider
    /* 0x24 */ struct ColliderInfo* acHitInfo; // element that hit the AC collider
} ColliderInfo; // size = 0x28

typedef struct ColliderInfoInit {
    /* 0x00 */ u8 elemType; // Affects sfx reaction when attacked by Link and hookability. Full purpose unknown.
    /* 0x04 */ ColliderTouch toucher; // Damage properties when acting as an AT collider
    /* 0x0C */ ColliderBumpInit bumper; // Damage properties when acting as an AC collider
    /* 0x14 */ u8 toucherFlags; // Information flags for AT collisions
    /* 0x15 */ u8 bumperFlags;  // Information flags for AC collisions
    /* 0x16 */ u8 ocElemFlags; // Information flags for OC collisions
} ColliderInfoInit; // size = 0x18

typedef struct ColliderJntSphElementDim {
    /* 0x00 */ Sphere16 modelSphere; // model space sphere
    /* 0x08 */ Sphere16 worldSphere; // world space sphere
    /* 0x10 */ f32 scale;          // world space sphere = model * scale * 0.01
    /* 0x14 */ u8 joint;           // attached joint
} ColliderJntSphElementDim; // size = 0x18

typedef struct ColliderJntSphElementDimInit {
    /* 0x00 */ u8 joint; // attached joint
    /* 0x02 */ Sphere16 modelSphere; // model space sphere
    /* 0x0A */ s16 scale; // world space sphere = model * scale * 0.01
} ColliderJntSphElementDimInit; // size = 0x0C

typedef struct ColliderJntSphElement {
    /* 0x00 */ ColliderInfo info;
    /* 0x28 */ ColliderJntSphElementDim dim;
} ColliderJntSphElement; // size = 0x40

typedef struct ColliderJntSphElementInit {
    /* 0x00 */ ColliderInfoInit info;
    /* 0x18 */ ColliderJntSphElementDimInit dim;
} ColliderJntSphElementInit; // size = 0x24

typedef struct ColliderJntSph {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderJntSphElement* elements;
} ColliderJntSph; // size = 0x20

typedef struct ColliderJntSphInit {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphElementInit* elements;
} ColliderJntSphInit; // size = 0x10

typedef struct ColliderJntSphInit_Set3 {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphElementInit* elements;
} ColliderJntSphInit_Set3; // size = 0x10

typedef struct ColliderJntSphInitToActor {
    /* 0x00 */ ColliderInitToActor base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphElementInit* elements;
} ColliderJntSphInitToActor; // size = 0x10

typedef struct ColliderCylinder {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderInfo info;
    /* 0x40 */ Cylinder16 dim;
} ColliderCylinder; // size = 0x4C

typedef struct ColliderCylinderInit {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit; // size = 0x2C

typedef struct ColliderCylinderInit_Set3 {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit_Set3; // size = 0x2C

typedef struct ColliderCylinderInitToActor {
    /* 0x00 */ ColliderInitToActor base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInitToActor; // size = 0x2C

typedef struct ColliderTrisElementDimInit {
    /* 0x00 */ Vec3f vtx[3];
} ColliderTrisElementDimInit; // size = 0x24

typedef struct ColliderTrisElement {
    /* 0x00 */ ColliderInfo info;
    /* 0x28 */ TriNorm dim;
} ColliderTrisElement; // size = 0x5C

typedef struct ColliderTrisElementInit {
    /* 0x00 */ ColliderInfoInit info;
    /* 0x18 */ ColliderTrisElementDimInit dim;
} ColliderTrisElementInit; // size 0x3C

typedef struct ColliderTris {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderTrisElement* elements;
} ColliderTris; // size = 0x20

typedef struct ColliderTrisInit {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisElementInit* elements;
} ColliderTrisInit; // size = 0x10

typedef struct ColliderTrisInit_Set3 {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisElementInit* elements;
} ColliderTrisInit_Set3; // size = 0x10

typedef struct ColliderQuadDim {
    /* 0x00 */ Vec3f quad[4];
    /* 0x30 */ Vec3s dcMid; // midpoint of vectors d, c
    /* 0x36 */ Vec3s baMid; // midpoint of vectors b, a
    /* 0x3C */ f32 acDist; // distance to nearest AC collision this frame.
} ColliderQuadDim; // size = 0x40

typedef struct ColliderQuadDimInit {
    /* 0x00 */ Vec3f quad[4];
} ColliderQuadDimInit; // size = 0x30

typedef struct ColliderQuadElement {
    /* 0x00 */ ColliderInfo info;
    /* 0x24 */ ColliderQuadDim dim;
} ColliderQuadElement; // size = 0x68

typedef struct ColliderQuad {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderInfo info;
    /* 0x40 */ ColliderQuadDim dim;
} ColliderQuad; // size = 0x80

typedef struct ColliderQuadInit {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ ColliderQuadDimInit dim;
} ColliderQuadInit; // size = 0x50

typedef struct ColliderQuadInit_Set3 {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ ColliderQuadDimInit dim;
} ColliderQuadInit_Set3; // size = 0x50

typedef struct OcLine {
    /* 0x00 */ Linef line;
    /* 0x18 */ u16 ocFlags;
} OcLine; // size = 0x1C

typedef enum ColliderType {
    COLTYPE_HIT0, // Blue blood, white hitmark
    COLTYPE_HIT1, // No blood, dust hitmark
    COLTYPE_HIT2, // Green blood, dust hitmark
    COLTYPE_HIT3, // No blood, white hitmark
    COLTYPE_HIT4, // Water burst, no hitmark
    COLTYPE_HIT5, // No blood, red hitmark
    COLTYPE_HIT6, // Green blood, white hitmark
    COLTYPE_HIT7, // Red blood, white hitmark
    COLTYPE_HIT8, // Blue blood, red hitmark
    COLTYPE_METAL,
    COLTYPE_NONE,
    COLTYPE_WOOD,
    COLTYPE_HARD,
    COLTYPE_TREE
} ColliderType;

typedef enum ColliderShape {
    COLSHAPE_JNTSPH,
    COLSHAPE_CYLINDER,
    COLSHAPE_TRIS,
    COLSHAPE_QUAD,
    COLSHAPE_INVALID
} ColliderShape;

typedef enum ElementType {
    ELEMTYPE_UNK0,
    ELEMTYPE_UNK1,
    ELEMTYPE_UNK2,
    ELEMTYPE_UNK3,
    ELEMTYPE_UNK4,
    ELEMTYPE_UNK5,
    ELEMTYPE_UNK6,
    ELEMTYPE_UNK7
} ElementType;

/* Affects the sound Link's sword makes when hitting it, hookability,
 * and possibly other things. It's definitely not flags, as all checks
 * are == or !=. Will probably need more actors decomped to truly 
 * understand what this is.
 */

#define AT_OFF 0 // Cannot have AT collisions when set as AT
#define AT_ON (1 << 0) // Can have AT collisions when set as AT
#define AT_HIT (1 << 1) // Had an AT collision
#define AT_BOUNCED (1 << 2) // Had an AT collision with an AC_HARD collider
#define AT_PLAYER (1 << 3) // Has player-aligned damage
#define AT_ENEMY (1 << 4) // Has enemy-aligned damage
#define AT_BOMB (1 << 5) // Has bomb-aligned damage
#define AT_SELF (1 << 6) // Can have AT collisions with colliders attached to the same actor
#define AT_UNK7 (1 << 7) // Apparently unused
#define AT_ALL (AT_PLAYER | AT_ENEMY | AT_BOMB) // Has all three damage alignments

#define AC_OFF 0 // Cannot have AC collisions when set as AC
#define AC_ON (1 << 0) // Can have AC collisions when set as AC
#define AC_HIT (1 << 1) // Had an AC collision
#define AC_HARD (1 << 2) // Causes AT colliders to bounce off it
#define AC_PLAYER (1 << 3) // Takes player-aligned damage
#define AC_ENEMY (1 << 4) // Takes enemy-aligned damage
#define AC_BOMB (1 << 5) // Takes bomb-aligned damage
#define AC_NO_DAMAGE (1 << 6) // Collider does not take damage
#define AC_BOUNCED (1 << 7) // Caused an AT collider to bounce off it
#define AC_ALL (AC_PLAYER | AC_ENEMY | AC_BOMB) // Takes damage from all three alignments

#define OC_OFF 0 // Cannot have OC collisions when set as OC
#define OC_ON (1 << 0) // Can have OC collisions when set as OC
#define OC_HIT (1 << 1) // Had an OC collision
#define OC_NO_PUSH (1 << 2) // Does not push other colliders away during OC collisions
#define OC_PLAYER (1 << 3) // Can have OC collisions with OC type player
#define OC_TYPE1 (1 << 4) // Can have OC collisions with OC type 1
#define OC_TYPE2 (1 << 5) // Can have OC collisions with OC type 2
#define OC_UNK6 (1 << 6) // Apparently unused
#define OC_UNK7 (1 << 7) // Apparently unused
#define OC_ALL (OC_PLAYER | OC_TYPE1 | OC_TYPE2) // Can have collisions with all three OC types

#define OT_NONE 0 // Has no OC type
#define OT_HIT_PLAYER (1 << 0) // Had an OC collision with OC type player
#define OT_UNK1 (1 << 1) // Prevents OC collisions with OT_UNK2. Some horses and toki_sword have it.
#define OT_UNK2 (1 << 2) // Prevents OC collisions with OT_UNK1. Nothing has it.
#define OT_PLAYER (1 << 3) // Has OC type player
#define OT_TYPE1 (1 << 4) // Has OC type 1
#define OT_TYPE2 (1 << 5) // Has OC type 2
#define OT_FIRST_ONLY (1 << 6) // Skips AC checks on elements after the first collision. Only used by Ganon
#define OT_UNK7 (1 << 7) // Apparently unused

#define TOUCH_OFF 0 // Cannot have AT collisions
#define TOUCH_ON (1 << 0) // Can have AT collisions
#define TOUCH_HIT (1 << 1) // Had an AT collision
#define TOUCH_NEAREST (1 << 2) // If a Quad, only collides with the closest bumper
#define TOUCH_SFX_NORMAL (0 << 3) // Hit sound effect based on AC collider's type
#define TOUCH_SFX_HARD (1 << 3) // Always uses hard deflection sound
#define TOUCH_SFX_WOOD (2 << 3) // Always uses wood deflection sound
#define TOUCH_SFX_NONE (3 << 3) // No hit sound effect
#define TOUCH_AT_HITMARK (1 << 5) // Draw hitmarks for every AT collision
#define TOUCH_DREW_HITMARK (1 << 6) // Already drew hitmark for this frame
#define TOUCH_UNK7 (1 << 7) // Unknown purpose. Used by some enemy quads

#define BUMP_OFF 0 // Cannot have AC collisions
#define BUMP_ON (1 << 0) // Can have AC collisions
#define BUMP_HIT (1 << 1) // Had an AC collision
#define BUMP_HOOKABLE (1 << 2) // Can be hooked if actor has hookability flags set.
#define BUMP_NO_AT_INFO (1 << 3) // Does not give its info to the AT collider that hit it.
#define BUMP_NO_DAMAGE (1 << 4) // Does not take damage.
#define BUMP_NO_SWORD_SFX (1 << 5) // Does not have a sound when hit by player-attached AT colliders.
#define BUMP_NO_HITMARK (1 << 6) // Skips hit effects.
#define BUMP_DRAW_HITMARK (1 << 7) // Draw hitmark for AC collision this frame.

#define OCELEM_OFF 0 // Cannot have OC collisions
#define OCELEM_ON (1 << 0) // Can have OC collisions
#define OCELEM_HIT (1 << 1) // Had an OC collision
#define OCELEM_UNK2 (1 << 2) // Apparently unused
#define OCELEM_UNK3 (1 << 3) // Unknown purpose. Used by Dead Hand element 0 and Dodongo element 5
#define OCELEM_UNK4 (1 << 4) // Apparently unused
#define OCELEM_UNK5 (1 << 5) // Apparently unused
#define OCELEM_UNK6 (1 << 6) // Apparently unused
#define OCELEM_UNK7 (1 << 7) // Apparently unused

#define OCLINE_NONE 0 // Did not have an OcLine collision
#define OCLINE_HIT (1 << 0) // Had an OcLine collision

#endif
