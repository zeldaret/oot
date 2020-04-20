#ifndef _Z_COLLISION_CHECK_H_
#define _Z_COLLISION_CHECK_H_

#define COLLISION_CHECK_AT_MAX 50
#define COLLISION_CHECK_AC_MAX 60
#define COLLISION_CHECK_OC_MAX 50
#define COLLISION_CHECK_OC_LINE_MAX 3

// From z64.h
struct Actor;

typedef enum
{
    COLTYPE_JNTSPH = 0,
    COLTYPE_CYLINDER = 1,
    COLTYPE_TRIS = 2,
    COLTYPE_QUAD = 3
} ColliderType;

typedef struct
{
    /* 0x00 */ Actor* actor;
    /* 0x04 */ Actor* at;
    /* 0x08 */ Actor* ac;
    /* 0x0C */ Actor* oc;
    /* 0x10 */ u8 atFlags; //Compared to 0x11 
    /* 0x11 */ u8 acFlags; //Compared to 0x10 
    /* 0x12 */ u8 maskA; //Bitwise-and compared to 0x13
    /* 0x13 */ u8 maskB; //Bitwise-and compared to 0x12 
    /* 0x14 */ u8 unk_14;
    /* 0x15 */ u8 shape; //JntSph, Cylinder, Tris, Quad
} Collider; // size = 0x18

typedef struct
{
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ u8 atFlags;
    /* 0x02 */ u8 acFlags;
    /* 0x03 */ u8 maskA; /* Bitwise-And with Mask B */
    /* 0x04 */ u8 maskB; /* Bitwise-And with Mask A */
    /* 0x05 */ u8 shape; /* Collider Type */
} ColliderInit; // size = 0x08

typedef struct
{
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ u8 atFlags;
    /* 0x02 */ u8 acFlags;
    /* 0x03 */ u8 maskA; /* Bitwise-And with Mask B */
    /* 0x04 */ u8 shape; /* Collider Type */
} ColliderInit_set3; // size = 0x08

typedef struct
{
    /* 0x00 */ Actor* actor;
    /* 0x04 */ u8 atFlags; /* Compared to 0x11 */
    /* 0x05 */ u8 acFlags; /* Compared to 0x10 */
    /* 0x06 */ u8 maskA; /* Bitwise-and compared to 0x13 */
    /* 0x07 */ u8 shape; /* Cylinder Collection, Cylinder, Triangle Collection, Quad */
} ColliderInit_Actor; // size = 0x08

typedef struct
{
    /* 0x00 */ s32 flags; /* Toucher Attack Identifier Flags */
    /* 0x04 */ u8 effect;
    /* 0x05 */ u8 damage; /* Damage or Stun Timer */
} ColliderTouch; // size = 0x08

typedef struct
{
    /* 0x00 */ s32 flags; /* Collision Exclusion Mask */
    /* 0x04 */ u8 effect; /* Damage Effect (Knockback, Fire, etc.) */
    /* 0x05 */ u8 defense; // damage resistance 
    /* 0x06 */ Vec3s unk_06;
} ColliderBump; // size = 0x0C

typedef struct
{
    /* 0x00 */ s32 flags; /* Collision Exclusion Mask */
    /* 0x04 */ u8 effect; /* Damage Effect (Knockback, Fire, etc.) */
    /* 0x05 */ u8 defense;
} ColliderBumpInit; // size = 0x0C

typedef struct ColliderBody
{
    /* 0x00 */ ColliderTouch toucher;
    /* 0x08 */ ColliderBump bumper;
    /* 0x14 */ u8 flags; //affects sfx reaction when attacked by Link
    /* 0x15 */ u8 toucherFlags;
    /* 0x16 */ u8 bumperFlags;
    /* 0x17 */ u8 ocFlags;
    /* 0x18 */ Collider* atHit; //object touching this object's AT collider
    /* 0x1C */ Collider* acHit; //object touching this object's AC collider
    /* 0x20 */ struct ColliderBody* atHitItem; //element that hit the AT collider 
    /* 0x24 */ struct ColliderBody* acHitItem; //element that hit the AC collider
} ColliderBody; // size = 0x28

typedef struct
{
    /* 0x00 */ u8 bodyFlags;
    /* 0x04 */ ColliderTouch toucher;
    /* 0x0C */ ColliderBumpInit bumper;
    /* 0x14 */ u8 toucherFlags; /* Attack Toucher Flags */
    /* 0x15 */ u8 bumperFlags; /* Bumper Flags */
    /* 0x16 */ u8 bodyFlags2;
} ColliderBodyInit; // size = 0x18

typedef struct {
    /* 0x00 */ Sphere16 modelSphere; //model space sphere
    /* 0x08 */ Sphere16 worldSphere; // world space sphere
    /* 0x10 */ float scale; //world space sphere = model * scale * 0.01
    /* 0x14 */ u8 joint;
} ColliderJntSphItemDim; //size = 0x18

typedef struct {
    u8 joint;
    Sphere16 modelSphere;
    s16 scale;
} ColliderJntSphItemDimInit; //size = 0x0C

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
} ColliderJntSph; //size 0x20

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphItemInit* list;
} ColliderJntSphInit;

typedef struct {
    /* 0x00 */ ColliderInit_set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphItemInit* list;
} ColliderJntSphInit_set3;

typedef struct {
    /* 0x00 */ ColliderInit_Actor base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderJntSphItemInit* list;
} ColliderJntSphInit_Actor;

typedef struct
{
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderBody body;
    /* 0x40 */ Cylinder16 dim;
} ColliderCylinder; // size = 0x4C

typedef struct
{
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit; // size = 0x2C

typedef struct
{
    /* 0x00 */ ColliderInit_set3 base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit_set3; // size = 0x2C

typedef struct {
    /* 0x00 */ ColliderInit_Actor base;
    /* 0x08 */ ColliderBodyInit body;
    /* 0x20 */ Cylinder16 dim;
} ColliderCylinderInit_Actor; // size = 0x2C

typedef struct {
    /* 0x00 */ Vec3f vtx[3];
} ColliderTrisItemDimInit; //size = 0x24

typedef struct {
    /* 0x00 */ ColliderBody body;
    /* 0x28 */ TriNorm dim;
} ColliderTrisItem; //size = 0x5C

typedef struct {
    /* 0x00 */ ColliderBodyInit body;
    /* 0x18 */ ColliderTrisItemDimInit dim;
} ColliderTrisItemInit; //size 0x3C

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ s32 count;
    /* 0x1C */ ColliderTrisItem* list;
} ColliderTris; //size = 0x20

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisItemInit* list;
} ColliderTrisInit;

typedef struct {
    /* 0x00 */ ColliderInit_set3 base;
    /* 0x08 */ s32 count;
    /* 0x0C */ ColliderTrisItemInit* list;
} ColliderTrisInit_set3;

typedef struct {
    /* 0x00 */ Vec3f quad[4];
    /* 0x30 */ Vec3s dcMid;
    /* 0x36 */ Vec3s baMid; //bounding box min
    /* 0x3C */ f32 unk3C;
} ColliderQuadDim; // size = 0x40

typedef struct {
    /* 0x00 */ Vec3f quad[4];
} ColliderQuadDimInit;

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ ColliderBody body;
    /* 0x40 */ ColliderQuadDim dim;
} ColliderQuad; // size = 0x80

typedef struct {
    /* 0x00 */ ColliderInit base;
    /* 0x18 */ ColliderBodyInit body;
    /* 0x30 */ ColliderQuadDimInit dim;
} ColliderQuadInit; //size 0x60

typedef struct {
    /* 0x00 */ ColliderInit_set3 base;
    /* 0x18 */ ColliderBodyInit body;
    /* 0x30 */ ColliderQuadDimInit dim;
} ColliderQuadInit_set3;

typedef struct
{
    Linef line;
    u16 unk18;
} OcLine_s;

#endif
