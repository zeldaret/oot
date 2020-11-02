#ifndef _Z_COLLISION_CHECK_H_
#define _Z_COLLISION_CHECK_H_

#define COLLISION_CHECK_AT_MAX 50
#define COLLISION_CHECK_AC_MAX 60
#define COLLISION_CHECK_OC_MAX 50
#define COLLISION_CHECK_OC_LINE_MAX 3

// From z64.h
struct Actor;

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ struct Actor* at;
    /* 0x08 */ struct Actor* ac;
    /* 0x0C */ struct Actor* oc;
    /* 0x10 */ u8 atFlags; // Compared to acFlags
    /* 0x11 */ u8 acFlags; // Compared to atFlags
    /* 0x12 */ u8 ocFlags; // Bitwise-and compared to ocType
    /* 0x13 */ u8 ocType;   // Bitwise-and compared to ocFlags
    /* 0x14 */ u8 colType;
    /* 0x15 */ u8 shape; // ColliderShape
} Collider; // size = 0x18

typedef struct {
    /* 0x00 */ u8 colType;
    /* 0x01 */ u8 atFlags;
    /* 0x02 */ u8 acFlags;
    /* 0x03 */ u8 ocFlags; // Bitwise-And with ocType
    /* 0x04 */ u8 ocType; // Bitwise-And with ocFlags
    /* 0x05 */ u8 shape; // ColliderShape
} ColliderInit; // size = 0x06

typedef struct {
    /* 0x00 */ u8 colType;
    /* 0x01 */ u8 atFlags;
    /* 0x02 */ u8 acFlags;
    /* 0x03 */ u8 ocFlags; // Bitwise-And with ocType
    /* 0x04 */ u8 shape; // Collider Type
} ColliderInit_Set3; // size = 0x05

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ u8 atFlags; // Compared to acFlags
    /* 0x05 */ u8 acFlags; // Compared to atFlags
    /* 0x06 */ u8 ocFlags;   // Bitwise-and compared to ocType
    /* 0x07 */ u8 shape;   // ColliderShape
} ColliderInitToActor; // size = 0x08

typedef struct {
    /* 0x00 */ u32 dFlags; // Toucher Attack ID Flags
    /* 0x04 */ u8 effect;
    /* 0x05 */ u8 damage; // Damage or Stun Timer
} ColliderTouch; // size = 0x08

typedef struct {
    /* 0x00 */ u32 dFlags;  // Collision Exclusion Mask
    /* 0x04 */ u8 effect;  // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 defense; // Damage Resistance
    /* 0x06 */ Vec3s hitPos; // Point of contact
} ColliderBump; // size = 0x0C

typedef struct {
    /* 0x00 */ u32 dFlags; // Collision Exclusion Mask
    /* 0x04 */ u8 effect; // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 defense;
} ColliderBumpInit; // size = 0x08

typedef struct ColliderInfo {
    /* 0x00 */ ColliderTouch toucher;
    /* 0x08 */ ColliderBump bumper;
    /* 0x14 */ u8 elemType; // affects sfx reaction when attacked by Link
    /* 0x15 */ u8 toucherFlags;
    /* 0x16 */ u8 bumperFlags;
    /* 0x17 */ u8 ocElemFlags;
    /* 0x18 */ Collider* atHit;                // object touching this element's AT collider
    /* 0x1C */ Collider* acHit;                // object touching this element's AC collider
    /* 0x20 */ struct ColliderInfo* atHitInfo; // element that hit the AT collider
    /* 0x24 */ struct ColliderInfo* acHitInfo; // element that hit the AC collider
} ColliderInfo; // size = 0x28

typedef struct {
    /* 0x00 */ u8 elemType;
    /* 0x04 */ ColliderTouch toucher;
    /* 0x0C */ ColliderBumpInit bumper;
    /* 0x14 */ u8 toucherFlags; // Attack Toucher Flags
    /* 0x15 */ u8 bumperFlags;  // Bumper Flags
    /* 0x16 */ u8 ocElemFlags;
} ColliderInfoInit; // size = 0x18

typedef struct {
    /* 0x00 */ Sphere16 modelSphere; // model space sphere
    /* 0x08 */ Sphere16 worldSphere; // world space sphere
    /* 0x10 */ f32 scale;          // world space sphere = model * scale * 0.01
    /* 0x14 */ u8 joint;
} ColliderJntSphElementDim; // size = 0x18

typedef struct {
    /* 0x00 */ u8 joint;
    /* 0x02 */ Sphere16 modelSphere;
    /* 0x0A */ s16 scale;
} ColliderJntSphElementDimInit; // size = 0x0C

typedef struct {
    /* 0x00 */ ColliderInfo info;
    /* 0x28 */ ColliderJntSphElementDim dim;
} ColliderJntSphElement; // size = 0x40

typedef struct {
    /* 0x00 */ ColliderInfoInit info;
    /* 0x18 */ ColliderJntSphElementDimInit dim;
} ColliderJntSphElementInit; // size = 0x24

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderJntSphElement* elements;
} ColliderJntSph; // size = 0x20

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphElementInit* elements;
} ColliderJntSphInit; // size = 0x10

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphElementInit* elements;
} ColliderJntSphInit_Set3; // size = 0x10

typedef struct {
    /* 0x00 */ ColliderInitToActor base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphElementInit* elements;
} ColliderJntSphInitToActor; // size = 0x10

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderInfo info;
    /* 0x40 */ Cylinder16 dim;
} ColliderCylinder; // size = 0x4C

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit; // size = 0x2C

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit_Set3; // size = 0x2C

typedef struct {
    /* 0x00 */ ColliderInitToActor base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInitToActor; // size = 0x2C

typedef struct {
    /* 0x00 */ Vec3f vtx[3];
} ColliderTrisElementDimInit; // size = 0x24

typedef struct {
    /* 0x00 */ ColliderInfo info;
    /* 0x28 */ TriNorm dim;
} ColliderTrisElement; // size = 0x5C

typedef struct {
    /* 0x00 */ ColliderInfoInit info;
    /* 0x18 */ ColliderTrisElementDimInit dim;
} ColliderTrisElementInit; // size 0x3C

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderTrisElement* elements;
} ColliderTris; // size = 0x20

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisElementInit* elements;
} ColliderTrisInit; // size = 0x10

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisElementInit* elements;
} ColliderTrisInit_Set3; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3f quad[4];
    /* 0x30 */ Vec3s dcMid; // midpoint of vectors d, c
    /* 0x36 */ Vec3s baMid; // midpoint of vectors b, a
    /* 0x3C */ f32 acDist;
} ColliderQuadDim; // size = 0x40

typedef struct {
    /* 0x00 */ Vec3f quad[4];
} ColliderQuadDimInit; // size = 0x30

typedef struct {
    /* 0x00 */ ColliderInfo info;
    /* 0x24 */ ColliderQuadDim dim;
} ColliderQuadElement; // size = 0x68

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderInfo info;
    /* 0x40 */ ColliderQuadDim dim;
} ColliderQuad; // size = 0x80

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ ColliderQuadDimInit dim;
} ColliderQuadInit; // size = 0x50

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ ColliderInfoInit info;
    /* 0x20 */ ColliderQuadDimInit dim;
} ColliderQuadInit_Set3; // size = 0x50

typedef struct {
    /* 0x00 */ Linef line;
    /* 0x18 */ u16 ocFlags;
} OcLine; // size = 0x1C

typedef enum {
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

typedef enum {
    COLSHAPE_JNTSPH,
    COLSHAPE_CYLINDER,
    COLSHAPE_TRIS,
    COLSHAPE_QUAD,
    COLSHAPE_INVALID
} ColliderShape;

typedef enum {
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

#define AT_OFF 0
#define AT_ON (1 << 0)
#define AT_HIT (1 << 1)
#define AT_BOUNCED (1 << 2)
#define AT_PLAYER (1 << 3)
#define AT_ENEMY (1 << 4)
#define AT_BOMB (1 << 5)
#define AT_SELF (1 << 6)
#define AT_UNK7 (1 << 7) // Apparently unused
#define AT_ALL (AT_PLAYER | AT_ENEMY | AT_BOMB)

#define AC_OFF 0
#define AC_ON (1 << 0)
#define AC_HIT (1 << 1)
#define AC_HARD (1 << 2)
#define AC_PLAYER (1 << 3)
#define AC_ENEMY (1 << 4)
#define AC_BOMB (1 << 5)
#define AC_NO_DAMAGE (1 << 6)
#define AC_BOUNCED (1 << 7)
#define AC_ALL (AC_PLAYER | AC_ENEMY | AC_BOMB)

#define OC_OFF 0
#define OC_ON (1 << 0)
#define OC_HIT (1 << 1)
#define OC_NO_PUSH (1 << 2)
#define OC_PLAYER (1 << 3)
#define OC_TYPE1 (1 << 4)
#define OC_TYPE2 (1 << 5)
#define OC_UNK6 (1 << 6) // Apparently unused
#define OC_UNK7 (1 << 7) // Apparently unused
#define OC_ALL (OC_PLAYER | OC_TYPE1 | OC_TYPE2)

#define OT_NONE 0
#define OT_HIT_PLAYER (1 << 0)
#define OT_UNK1 (1 << 1) // Something to do with horses and toki_sword
#define OT_UNK2 (1 << 2) // Something to do with horses and toki_sword
#define OT_PLAYER (1 << 3)
#define OT_TYPE1 (1 << 4)
#define OT_TYPE2 (1 << 5)
#define OT_FIRST_ONLY (1 << 6) // Only used by Ganon
#define OT_UNK7 (1 << 7) // Apparently unused

#define TOUCH_OFF 0
#define TOUCH_ON (1 << 0)
#define TOUCH_HIT (1 << 1)
#define TOUCH_NEAREST (1 << 2)
#define TOUCH_SFX_NORMAL (0 << 3)
#define TOUCH_SFX_HARD (1 << 3)
#define TOUCH_SFX_WOOD (2 << 3)
#define TOUCH_SFX_NONE (3 << 3)
#define TOUCH_AT_HITMARK (1 << 5)
#define TOUCH_DREW_HITMARK (1 << 6)
#define TOUCH_UNK7 (1 << 7) // Used by some enemy quads

#define BUMP_OFF 0
#define BUMP_ON (1 << 0)
#define BUMP_HIT (1 << 1)
#define BUMP_HOOKABLE (1 << 2)
#define BUMP_NO_AT_INFO (1 << 3)
#define BUMP_NO_DAMAGE (1 << 4)
#define BUMP_NO_SWORD_SFX (1 << 5)
#define BUMP_NO_HITMARK (1 << 6)
#define BUMP_DRAW_HITMARK (1 << 7)

#define OCELEM_OFF 0
#define OCELEM_ON (1 << 0)
#define OCELEM_HIT (1 << 1)
#define OCELEM_UNK2 (1 << 2) // Apparently unused
#define OCELEM_UNK3 (1 << 3) // Used by Dead Hand element 0 and Dodongo element 5
#define OCELEM_UNK4 (1 << 4) // Apparently unused
#define OCELEM_UNK5 (1 << 5) // Apparently unused
#define OCELEM_UNK6 (1 << 6) // Apparently unused
#define OCELEM_UNK7 (1 << 7) // Apparently unused

#define OCLINE_NONE 0
#define OCLINE_HIT (1 << 0)

#endif
