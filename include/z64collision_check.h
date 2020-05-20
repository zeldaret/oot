#ifndef _Z_COLLISION_CHECK_H_
#define _Z_COLLISION_CHECK_H_

#define COLLISION_CHECK_AT_MAX 50
#define COLLISION_CHECK_AC_MAX 60
#define COLLISION_CHECK_OC_MAX 50
#define COLLISION_CHECK_OC_LINE_MAX 3

// From z64.h
struct Actor;

typedef enum {
    COLTYPE_UNK0,
    COLTYPE_UNK1,
    COLTYPE_UNK2,
    COLTYPE_UNK3,
    COLTYPE_UNK4,
    COLTYPE_UNK5,
    COLTYPE_UNK6,
    COLTYPE_UNK7,
    COLTYPE_UNK8,
    COLTYPE_METAL_SHIELD,
    COLTYPE_UNK10,
    COLTYPE_WOODEN_SHIELD,
    COLTYPE_UNK12,
    COLTYPE_UNK13
} ColliderType;

typedef enum {
    COLSHAPE_JNTSPH,
    COLSHAPE_CYLINDER,
    COLSHAPE_TRIS,
    COLSHAPE_QUAD,
    COLSHAPE_INVALID
} ColliderShape;

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ struct Actor* at;
    /* 0x08 */ struct Actor* ac;
    /* 0x0C */ struct Actor* oc;
    /* 0x10 */ u8 atFlags; // Compared to acFlags
    /* 0x11 */ u8 acFlags; // Compared to atFlags
    /* 0x12 */ u8 maskA;   // Bitwise-and compared to maskB
    /* 0x13 */ u8 maskB;   // Bitwise-and compared to maskA
    /* 0x14 */ u8 type;
    /* 0x15 */ u8 shape; // ColliderShape
} Collider; // size = 0x18

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 atFlags;
    /* 0x02 */ u8 acFlags;
    /* 0x03 */ u8 maskA; // Bitwise-And with maskB
    /* 0x04 */ u8 maskB; // Bitwise-And with maskA
    /* 0x05 */ u8 shape; // ColliderShape
} ColliderInit; // size = 0x06

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 atFlags;
    /* 0x02 */ u8 acFlags;
    /* 0x03 */ u8 maskA; // Bitwise-And with maskB
    /* 0x04 */ u8 shape; // Collider Type
} ColliderInit_Set3; // size = 0x05

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ u8 atFlags; // Compared to acFlags
    /* 0x05 */ u8 acFlags; // Compared to atFlags
    /* 0x06 */ u8 maskA;   // Bitwise-and compared to maskB
    /* 0x07 */ u8 shape;   // ColliderShape
} ColliderInit_Actor; // size = 0x08

typedef struct {
    /* 0x00 */ s32 flags; // Toucher Attack ID Flags
    /* 0x04 */ u8 effect;
    /* 0x05 */ u8 damage; // Damage or Stun Timer
} ColliderTouch; // size = 0x08

typedef struct {
    /* 0x00 */ s32 flags;  // Collision Exclusion Mask
    /* 0x04 */ u8 effect;  // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 defense; // Damage Resistance
    /* 0x06 */ Vec3s unk_06;
} ColliderBump; // size = 0x0C

typedef struct {
    /* 0x00 */ s32 flags; // Collision Exclusion Mask
    /* 0x04 */ u8 effect; // Damage Effect (Knockback, Fire, etc.)
    /* 0x05 */ u8 defense;
} ColliderBumpInit; // size = 0x08

typedef struct ColliderBody {
    /* 0x00 */ ColliderTouch toucher;
    /* 0x08 */ ColliderBump bumper;
    /* 0x14 */ u8 flags; // affects sfx reaction when attacked by Link
    /* 0x15 */ u8 toucherFlags;
    /* 0x16 */ u8 bumperFlags;
    /* 0x17 */ u8 ocFlags;
    /* 0x18 */ Collider* atHit;                // object touching this object's AT collider
    /* 0x1C */ Collider* acHit;                // object touching this object's AC collider
    /* 0x20 */ struct ColliderBody* atHitItem; // element that hit the AT collider
    /* 0x24 */ struct ColliderBody* acHitItem; // element that hit the AC collider
} ColliderBody; // size = 0x28

typedef struct {
    /* 0x00 */ u8 bodyFlags;
    /* 0x04 */ ColliderTouch toucher;
    /* 0x0C */ ColliderBumpInit bumper;
    /* 0x14 */ u8 toucherFlags; // Attack Toucher Flags
    /* 0x15 */ u8 bumperFlags;  // Bumper Flags
    /* 0x16 */ u8 bodyFlags2;
} ColliderBodyInit; // size = 0x18

typedef struct {
    /* 0x00 */ Sphere16 modelSphere; // model space sphere
    /* 0x08 */ Sphere16 worldSphere; // world space sphere
    /* 0x10 */ float scale;          // world space sphere = model * scale * 0.01
    /* 0x14 */ u8 joint;
} ColliderJntSphItemDim; // size = 0x18

typedef struct {
    /* 0x00 */ u8 joint;
    /* 0x02 */ Sphere16 modelSphere;
    /* 0x0A */ s16 scale;
} ColliderJntSphItemDimInit; // size = 0x0C

typedef struct {
    /* 0x00 */ ColliderBody body;
    /* 0x28 */ ColliderJntSphItemDim dim;
} ColliderJntSphItem; // size = 0x40

typedef struct {
    /* 0x00 */ ColliderBodyInit body;
    /* 0x18 */ ColliderJntSphItemDimInit dim;
} ColliderJntSphItemInit; // size = 0x24

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderJntSphItem* list;
} ColliderJntSph; // size = 0x20

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphItemInit* list;
} ColliderJntSphInit; // size = 0x10

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphItemInit* list;
} ColliderJntSphInit_Set3; // size = 0x10

typedef struct {
    /* 0x00 */ ColliderInit_Actor base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphItemInit* list;
} ColliderJntSphInit_Actor; // size = 0x10

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderBody body;
    /* 0x40 */ Cylinder16 dim;
} ColliderCylinder; // size = 0x4C

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit; // size = 0x2C

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit_Set3; // size = 0x2C

typedef struct {
    /* 0x00 */ ColliderInit_Actor base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit_Actor; // size = 0x2C

typedef struct {
    /* 0x00 */ Vec3f vtx[3];
} ColliderTrisItemDimInit; // size = 0x24

typedef struct {
    /* 0x00 */ ColliderBody body;
    /* 0x28 */ TriNorm dim;
} ColliderTrisItem; // size = 0x5C

typedef struct {
    /* 0x00 */ ColliderBodyInit body;
    /* 0x18 */ ColliderTrisItemDimInit dim;
} ColliderTrisItemInit; // size 0x3C

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderTrisItem* list;
} ColliderTris; // size = 0x20

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisItemInit* list;
} ColliderTrisInit; // size = 0x10

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisItemInit* list;
} ColliderTrisInit_Set3; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3f quad[4];
    /* 0x30 */ Vec3s dcMid; // midpoint of vectors d, c
    /* 0x36 */ Vec3s baMid; // midpoint of vectors b, a
    /* 0x3C */ f32 unk_3C;
} ColliderQuadDim; // size = 0x40

typedef struct {
    /* 0x00 */ Vec3f quad[4];
} ColliderQuadDimInit; // size = 0x30

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderBody body;
    /* 0x40 */ ColliderQuadDim dim;
} ColliderQuad; // size = 0x80

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ ColliderQuadDimInit dim;
} ColliderQuadInit; // size = 0x50

typedef struct {
    /* 0x00 */ ColliderInit_Set3 base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ ColliderQuadDimInit dim;
} ColliderQuadInit_Set3; // size = 0x50

typedef struct {
    /* 0x00 */ Linef line;
    /* 0x18 */ u16 unk_18;
} OcLine; // size = 0x1C

#endif
