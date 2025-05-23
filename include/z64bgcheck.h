#ifndef Z64BGCHECK_H
#define Z64BGCHECK_H

#include "ultra64/ultratypes.h"
#include "z64math.h"

struct PlayState;
struct Actor;
struct DynaPolyActor;

#define DYNAPOLY_INVALIDATE_LOOKUP (1 << 0)

#define BGACTOR_NEG_ONE -1
#define BG_ACTOR_MAX 50
#define BGCHECK_SCENE BG_ACTOR_MAX
#define BGCHECK_Y_MIN -32000.0f
#define BGCHECK_XYZ_ABSMAX 32760.0f
#define BGCHECK_SUBDIV_OVERLAP 50
#define BGCHECK_SUBDIV_MIN 150.0f

#define FUNC_80041EA4_RESPAWN 5
#define FUNC_80041EA4_MOUNT_WALL 6
#define FUNC_80041EA4_STOP 8
#define FUNC_80041EA4_VOID_OUT 12

typedef struct ScaleRotPos {
    /* 0x00 */ Vec3f scale;
    /* 0x0C */ Vec3s rot;
    /* 0x14 */ Vec3f pos;
} ScaleRotPos; // size = 0x20

// Macros for `CollisionPoly`

#define COLPOLY_NORMAL_FRAC (1.0f / SHT_MAX)
#define COLPOLY_SNORMAL(x) ((s16)((x) * SHT_MAX))
#define COLPOLY_GET_NORMAL(n) ((n)*COLPOLY_NORMAL_FRAC)
#define COLPOLY_VTX_CHECK_FLAGS_ANY(vI, flags) ((vI) & (((flags) & 7) << 13))
#define COLPOLY_VTX_FLAGS_MASKED(vI) ((vI) & 0xE000)
#define COLPOLY_VTX_INDEX(vI) ((vI) & 0x1FFF)
#define COLPOLY_VTX(vtxId, flags) ((((flags) & 7) << 13) | ((vtxId) & 0x1FFF))

// flags for flags_vIA
// poly exclusion flags (xpFlags)
#define COLPOLY_IGNORE_NONE 0
#define COLPOLY_IGNORE_CAMERA (1 << 0)
#define COLPOLY_IGNORE_ENTITY (1 << 1)
#define COLPOLY_IGNORE_PROJECTILES (1 << 2)

// flags for flags_vIB
#define COLPOLY_IS_FLOOR_CONVEYOR (1 << 0)

typedef struct CollisionPoly {
    /* 0x00 */ u16 type;
    union {
        u16 vtxData[3];
        struct {
            /* 0x02 */ u16 flags_vIA; // 0xE000 is poly exclusion flags (xpFlags), 0x1FFF is vtxId
            /* 0x04 */ u16 flags_vIB; // 0xE000 is flags, 0x1FFF is vtxId
                                      // 0x2000 = poly IsFloorConveyor surface
            /* 0x06 */ u16 vIC;
        };
    };
    /* 0x08 */ Vec3s normal; // Unit normal vector
                             // Value ranges from -0x7FFF to 0x7FFF, representing -1.0 to 1.0; 0x8000 is invalid

    /* 0x0E */ s16 dist; // Plane distance from origin along the normal
} CollisionPoly; // size = 0x10

typedef struct BgCamInfo {
    /* 0x0 */ u16 setting; // camera setting described by CameraSettingType enum
    /* 0x2 */ s16 count; // only used when `bgCamFuncData` is a list of points used for crawlspaces
    /* 0x4 */ Vec3s* bgCamFuncData; // s16 data grouped in threes (ex. Vec3s), is usually of type `BgCamFuncData`, but can be a list of points of type `Vec3s` for crawlspaces
} BgCamInfo; // size = 0x8

// The structure used for all instances of s16 data from `BgCamInfo` with the exception of crawlspaces.
// See `Camera_Subj4` for Vec3s data usage in crawlspaces
typedef struct BgCamFuncData {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ Vec3s rot;
    /* 0x0C */ s16 fov;
    /* 0x0E */ union {
        s16 roomImageOverrideBgCamIndex;
        s16 timer;
        s16 flags;
    };
    /* 0x10 */ s16 unk_10; // unused
} BgCamFuncData; // size = 0x12

// Macros for `WaterBox.properties`

#define WATERBOX_LIGHT_INDEX_NONE 0x1F // warns and defaults to 0

#define WATERBOX_ROOM(properties) (((properties) >> 13) & 0x3F)
#define WATERBOX_ROOM_ALL 0x3F // value for "room index" indicating "all rooms"

#define WATERBOX_FLAG_19 (1 << 19)

#define WATERBOX_PROPERTIES(bgCamIndex, lightIndex, room, setFlag19) \
    ((((bgCamIndex) & 0xFF) <<  0) | \
     (((lightIndex) & 0x1F) <<  8) | \
     (((room)       & 0x3F) << 13) | \
     (((setFlag19)  &    1) << 19))

typedef struct WaterBox {
    /* 0x00 */ s16 xMin;
    /* 0x02 */ s16 ySurface;
    /* 0x04 */ s16 zMin;
    /* 0x06 */ s16 xLength;
    /* 0x08 */ s16 zLength;
    /* 0x0C */ u32 properties;
} WaterBox; // size = 0x10

typedef enum FloorType {
    /*  0 */ FLOOR_TYPE_0,
    /*  1 */ FLOOR_TYPE_1,
    /*  2 */ FLOOR_TYPE_2,
    /*  3 */ FLOOR_TYPE_3,
    /*  4 */ FLOOR_TYPE_4,
    /*  5 */ FLOOR_TYPE_5,
    /*  6 */ FLOOR_TYPE_6,
    /*  7 */ FLOOR_TYPE_7,
    /*  8 */ FLOOR_TYPE_8,
    /*  9 */ FLOOR_TYPE_9,
    /* 10 */ FLOOR_TYPE_10,
    /* 11 */ FLOOR_TYPE_11,
    /* 12 */ FLOOR_TYPE_12
} FloorType;

typedef enum WallType {
    /*  0 */ WALL_TYPE_0,
    /*  1 */ WALL_TYPE_1,
    /*  2 */ WALL_TYPE_2,
    /*  3 */ WALL_TYPE_3,
    /*  4 */ WALL_TYPE_4,
    /*  5 */ WALL_TYPE_5,
    /*  6 */ WALL_TYPE_6,
    /*  7 */ WALL_TYPE_7,
    /*  8 */ WALL_TYPE_8,
    /*  9 */ WALL_TYPE_9,
    /* 10 */ WALL_TYPE_10,
    /* 11 */ WALL_TYPE_11,
    /* 12 */ WALL_TYPE_12,
    /* 32 */ WALL_TYPE_MAX = 32
} WallType;

#define WALL_FLAG_0 (1 << 0)
#define WALL_FLAG_1 (1 << 1)
#define WALL_FLAG_2 (1 << 2)
#define WALL_FLAG_3 (1 << 3)
#define WALL_FLAG_CRAWLSPACE_1 (1 << 4)
#define WALL_FLAG_CRAWLSPACE_2 (1 << 5)
#define WALL_FLAG_6 (1 << 6)
#define WALL_FLAG_CRAWLSPACE (WALL_FLAG_CRAWLSPACE_1 | WALL_FLAG_CRAWLSPACE_2)

typedef enum FloorProperty {
    /*  0 */ FLOOR_PROPERTY_0,
    /*  5 */ FLOOR_PROPERTY_5 = 5,
    /*  6 */ FLOOR_PROPERTY_6,
    /*  7 */ FLOOR_PROPERTY_7,
    /*  8 */ FLOOR_PROPERTY_8,
    /*  9 */ FLOOR_PROPERTY_9,
    /* 11 */ FLOOR_PROPERTY_11 = 11,
    /* 12 */ FLOOR_PROPERTY_12
} FloorProperty;

typedef enum SurfaceSfxOffset {
    /*  0 */ SURFACE_SFX_OFFSET_DIRT,
    /*  1 */ SURFACE_SFX_OFFSET_SAND,
    /*  2 */ SURFACE_SFX_OFFSET_STONE,
    /*  3 */ SURFACE_SFX_OFFSET_JABU,
    /*  4 */ SURFACE_SFX_OFFSET_WATER_SHALLOW,
    /*  5 */ SURFACE_SFX_OFFSET_WATER_DEEP,
    /*  6 */ SURFACE_SFX_OFFSET_TALL_GRASS,
    /*  7 */ SURFACE_SFX_OFFSET_LAVA, // MAGMA?
    /*  8 */ SURFACE_SFX_OFFSET_GRASS,
    /*  9 */ SURFACE_SFX_OFFSET_CARPET,
    /* 10 */ SURFACE_SFX_OFFSET_WOOD,
    /* 11 */ SURFACE_SFX_OFFSET_BRIDGE, // WOOD_PLANK?
    /* 12 */ SURFACE_SFX_OFFSET_VINE,
    /* 13 */ SURFACE_SFX_OFFSET_IRON_BOOTS,
    /* 14 */ SURFACE_SFX_OFFSET_UNUSED,
    /* 15 */ SURFACE_SFX_OFFSET_ICE
} SurfaceSfxOffset;

typedef enum SurfaceMaterial {
    /*  0 */ SURFACE_MATERIAL_DIRT,
    /*  1 */ SURFACE_MATERIAL_SAND,
    /*  2 */ SURFACE_MATERIAL_STONE,
    /*  3 */ SURFACE_MATERIAL_JABU,
    /*  4 */ SURFACE_MATERIAL_WATER_SHALLOW,
    /*  5 */ SURFACE_MATERIAL_WATER_DEEP,
    /*  6 */ SURFACE_MATERIAL_TALL_GRASS,
    /*  7 */ SURFACE_MATERIAL_LAVA, // MAGMA?
    /*  8 */ SURFACE_MATERIAL_GRASS,
    /*  9 */ SURFACE_MATERIAL_BRIDGE, // WOOD_PLANK?
    /* 10 */ SURFACE_MATERIAL_WOOD,
    /* 11 */ SURFACE_MATERIAL_DIRT_SOFT,
    /* 12 */ SURFACE_MATERIAL_ICE,
    /* 13 */ SURFACE_MATERIAL_CARPET,
    /* 14 */ SURFACE_MATERIAL_MAX
} SurfaceMaterial;

typedef enum FloorEffect {
    /*  0 */ FLOOR_EFFECT_0,
    /*  1 */ FLOOR_EFFECT_1,
    /*  2 */ FLOOR_EFFECT_2
} FloorEffect;

typedef enum ConveyorSpeed {
    /*  0 */ CONVEYOR_SPEED_DISABLED,
    /*  1 */ CONVEYOR_SPEED_SLOW,
    /*  2 */ CONVEYOR_SPEED_MEDIUM,
    /*  3 */ CONVEYOR_SPEED_FAST,
    /*  4 */ CONVEYOR_SPEED_MAX
} ConveyorSpeed;

#define CONVEYOR_DIRECTION_TO_BINANG(conveyorDirection) ((conveyorDirection) * (0x10000 / 64))
#define CONVEYOR_DIRECTION_FROM_BINANG(conveyorDirectionBinang) ((conveyorDirectionBinang) * (64 / 0x10000))

#define SURFACETYPE0(bgCamIndex, exitIndex, floorType, unk18, wallType, floorProperty, isSoft, isHorseBlocked) \
    ((((bgCamIndex)     & 0xFF) <<  0) | \
     (((exitIndex)      & 0x1F) <<  8) | \
     (((floorType)      & 0x1F) << 13) | \
     (((unk18)          & 0x07) << 18) | \
     (((wallType)       & 0x1F) << 21) | \
     (((floorProperty)  & 0x0F) << 26) | \
     (((isSoft)         &    1) << 30) | \
     (((isHorseBlocked) &    1) << 31))

#define SURFACETYPE1(material, floorEffect, lightSetting, echo, canHookshot, conveyorSpeed, conveyorDirection, unk27) \
    ((((material)          & 0x0F) <<  0) | \
     (((floorEffect)       & 0x03) <<  4) | \
     (((lightSetting)      & 0x1F) <<  6) | \
     (((echo)              & 0x3F) << 11) | \
     (((canHookshot)       &    1) << 17) | \
     (((conveyorSpeed)     & 0x07) << 18) | \
     (((conveyorDirection) & 0x3F) << 21) | \
     (((unk27)             &    1) << 27))

typedef struct SurfaceType {
    u32 data[2];
} SurfaceType;

typedef struct CollisionHeader {
    /* 0x00 */ Vec3s minBounds; // minimum coordinates of poly bounding box
    /* 0x06 */ Vec3s maxBounds; // maximum coordinates of poly bounding box
    /* 0x0C */ u16 numVertices;
    /* 0x10 */ Vec3s* vtxList;
    /* 0x14 */ u16 numPolygons;
    /* 0x18 */ CollisionPoly* polyList;
    /* 0x1C */ SurfaceType* surfaceTypeList;
    /* 0x20 */ BgCamInfo* bgCamList;
    /* 0x24 */ u16 numWaterBoxes;
    /* 0x28 */ WaterBox* waterBoxes;
} CollisionHeader; // original name: BGDataInfo

typedef struct SSNode {
    s16 polyId;
    u16 next; // next SSNode index
} SSNode;

typedef struct SSList {
    u16 head; // first SSNode index
} SSList;

typedef struct SSNodeList {
    /* 0x00 */ u16 max;          // original name: short_slist_node_size
    /* 0x02 */ u16 count;        // original name: short_slist_node_last_index
    /* 0x04 */ SSNode* tbl;      // original name: short_slist_node_tbl
    /* 0x08 */ u8* polyCheckTbl; // points to an array of bytes, one per static poly. Zero initialized when starting a
                                 // bg check, and set to 1 if that poly has already been tested.
} SSNodeList;

typedef struct DynaSSNodeList {
    SSNode* tbl;
    s32 count;
    s32 max;
} DynaSSNodeList;

typedef struct StaticLookup {
    SSList floor;
    SSList wall;
    SSList ceiling;
} StaticLookup;

typedef struct DynaLookup {
    u16 polyStartIndex;
    SSList ceiling;
    SSList wall;
    SSList floor;
} DynaLookup;

typedef struct BgActor {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ CollisionHeader* colHeader;
    /* 0x08 */ DynaLookup dynaLookup;
    /* 0x10 */ u16 vtxStartIndex;
    /* 0x14 */ ScaleRotPos prevTransform;
    /* 0x34 */ ScaleRotPos curTransform;
    /* 0x54 */ Sphere16 boundingSphere;
    /* 0x5C */ f32 minY;
    /* 0x60 */ f32 maxY;
} BgActor; // size = 0x64

#define BGACTOR_IN_USE (1 << 0) // The bgActor entry is in use
#define BGACTOR_1 (1 << 1)
#define BGACTOR_COLLISION_DISABLED (1 << 2) // The collision of the bgActor is disabled
#define BGACTOR_CEILING_COLLISION_DISABLED (1 << 3) // The ceilings in the collision of the bgActor are ignored

typedef struct DynaCollisionContext {
    /* 0x0000 */ u8 bitFlag;
    /* 0x0004 */ BgActor bgActors[BG_ACTOR_MAX];
    /* 0x138C */ u16 bgActorFlags[BG_ACTOR_MAX];
    /* 0x13F0 */ CollisionPoly* polyList;
    /* 0x13F4 */ Vec3s* vtxList;
    /* 0x13F8 */ DynaSSNodeList polyNodes;
    /* 0x1404 */ s32 polyNodesMax;
    /* 0x1408 */ s32 polyListMax;
    /* 0x140C */ s32 vtxListMax;
} DynaCollisionContext; // size = 0x1410

typedef struct CollisionContext {
    /* 0x00 */ CollisionHeader* colHeader; // scene's static collision
    /* 0x04 */ Vec3f minBounds;            // minimum coordinates of collision bounding box
    /* 0x10 */ Vec3f maxBounds;            // maximum coordinates of collision bounding box
    /* 0x1C */ Vec3i subdivAmount;         // x, y, z subdivisions of the scene's static collision
    /* 0x28 */ Vec3f subdivLength;         // x, y, z subdivision worldspace lengths
    /* 0x34 */ Vec3f subdivLengthInv;      // inverse of subdivision length
    /* 0x40 */ StaticLookup* lookupTbl;    // 3d array of length subdivAmount
    /* 0x44 */ SSNodeList polyNodes;
    /* 0x50 */ DynaCollisionContext dyna;
    /* 0x1460 */ u32 memSize; // Size of all allocated memory plus CollisionContext
} CollisionContext; // size = 0x1464

typedef struct DynaRaycastDown {
    /* 0x00 */ struct PlayState* play;
    /* 0x04 */ struct CollisionContext* colCtx;
    /* 0x08 */ u16 xpFlags;
    /* 0x0C */ CollisionPoly** resultPoly;
    /* 0x10 */ f32 yIntersect;
    /* 0x14 */ Vec3f* pos;
    /* 0x18 */ s32* bgId;
    /* 0x1C */ struct Actor* actor;
    /* 0x20 */ u32 downChkFlags;
    /* 0x24 */ f32 chkDist;
    /* 0x28 */ DynaCollisionContext* dyna;
    /* 0x2C */ SSList* ssList;
} DynaRaycastDown;

typedef struct DynaLineTest {
    /* 0x00 */ struct CollisionContext* colCtx;
    /* 0x04 */ u16 xpFlags;
    /* 0x08 */ DynaCollisionContext* dyna;
    /* 0x0C */ SSList* ssList;
    /* 0x10 */ Vec3f* posA;
    /* 0x14 */ Vec3f* posB;
    /* 0x18 */ Vec3f* posResult;
    /* 0x1C */ CollisionPoly** resultPoly;
    /* 0x20 */ s32 chkOneFace; // bccFlags & 0x8
    /* 0x24 */ f32* distSq;    // distance from posA to poly squared
    /* 0x28 */ f32 chkDist;    // distance from poly
} DynaLineTest;

void func_80038A28(CollisionPoly* poly, f32 tx, f32 ty, f32 tz, MtxF* dest);
f32 CollisionPoly_GetPointDistanceFromPlane(CollisionPoly* poly, Vec3f* point);
void CollisionPoly_GetVerticesByBgId(CollisionPoly* poly, s32 bgId, CollisionContext* colCtx, Vec3f* dest);
void BgCheck_Allocate(CollisionContext* colCtx, struct PlayState* play, CollisionHeader* colHeader);
f32 BgCheck_EntityRaycastDown1(CollisionContext* colCtx, CollisionPoly** outGroundPoly, Vec3f* pos);
f32 BgCheck_EntityRaycastDown2(struct PlayState* play, CollisionContext* colCtx, CollisionPoly** outGroundPoly,
                               Vec3f* pos);
f32 BgCheck_EntityRaycastDown3(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, Vec3f* pos);
f32 BgCheck_EntityRaycastDown4(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, struct Actor* actor,
                               Vec3f* pos);
f32 BgCheck_EntityRaycastDown5(struct PlayState* play, CollisionContext* colCtx, CollisionPoly** outGroundPoly,
                               s32* bgId, struct Actor* actor, Vec3f* pos);
f32 BgCheck_EntityRaycastDown6(CollisionContext* colCtx, CollisionPoly** outGroundPoly, s32* bgId, struct Actor* actor,
                               Vec3f* pos, f32 chkDist);
f32 BgCheck_EntityRaycastDown7(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, struct Actor* actor,
                               Vec3f* pos);
f32 BgCheck_AnyRaycastDown1(CollisionContext* colCtx, CollisionPoly* outGroundPoly, Vec3f* pos);
f32 BgCheck_AnyRaycastDown2(CollisionContext* colCtx, CollisionPoly* outGroundPoly, s32* bgId, Vec3f* pos);
f32 BgCheck_CameraRaycastDown2(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Vec3f* pos);
f32 BgCheck_EntityRaycastDownWalls(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, struct Actor* actor,
                                   Vec3f* pos);
f32 BgCheck_EntityRaycastDown9(CollisionContext* colCtx, CollisionPoly** outPoly, s32* bgId, Vec3f* pos);
s32 BgCheck_EntitySphVsWall1(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, f32 checkHeight);
s32 BgCheck_EntitySphVsWall2(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, f32 checkHeight);
s32 BgCheck_EntitySphVsWall3(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, struct Actor* actor, f32 checkHeight);
s32 BgCheck_EntitySphVsWall4(CollisionContext* colCtx, Vec3f* posResult, Vec3f* posNext, Vec3f* posPrev, f32 radius,
                             CollisionPoly** outPoly, s32* outBgId, struct Actor* actor, f32 checkHeight);
s32 BgCheck_AnyCheckCeiling(CollisionContext* colCtx, f32* outY, Vec3f* pos, f32 checkHeight);
s32 BgCheck_EntityCheckCeiling(CollisionContext* colCtx, f32* outY, Vec3f* pos, f32 checkHeight,
                               CollisionPoly** outPoly, s32* outBgId, struct Actor* actor);
s32 BgCheck_CameraLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_CameraLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_EntityLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_EntityLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId,
                            struct Actor* actor);
s32 BgCheck_EntityLineTest3(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                            CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId,
                            struct Actor* actor, f32 chkDist);
s32 BgCheck_ProjectileLineTest(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult,
                               CollisionPoly** outPoly, s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace,
                               s32* bgId);
s32 BgCheck_AnyLineTest1(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkOneFace);
s32 BgCheck_AnyLineTest2(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace);
s32 BgCheck_AnyLineTest3(CollisionContext* colCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** outPoly,
                         s32 chkWall, s32 chkFloor, s32 chkCeil, s32 chkOneFace, s32* bgId);
s32 BgCheck_SphVsFirstPoly(CollisionContext* colCtx, Vec3f* center, f32 radius);
s32 DynaPoly_IsBgIdBgActor(s32 bgId);
void DynaPoly_DisableCollision(struct PlayState* play, DynaCollisionContext* dyna, s32 bgId);
void DynaPoly_EnableCollision(struct PlayState* play, DynaCollisionContext* dyna, s32 bgId);
void DynaPoly_DisableCeilingCollision(struct PlayState* play, DynaCollisionContext* dyna, s32 bgId);
s32 DynaPoly_SetBgActor(struct PlayState* play, DynaCollisionContext* dyna, struct Actor* actor,
                        CollisionHeader* colHeader);
struct DynaPolyActor* DynaPoly_GetActor(CollisionContext* colCtx, s32 bgId);
void DynaPoly_DeleteBgActor(struct PlayState* play, DynaCollisionContext* dyna, s32 bgId);
void DynaPoly_InvalidateLookup(struct PlayState* play, DynaCollisionContext* dyna);
void DynaPoly_UnsetAllInteractFlags(struct PlayState* play, DynaCollisionContext* dyna, struct Actor* actor);
void DynaPoly_UpdateContext(struct PlayState* play, DynaCollisionContext* dyna);
void DynaPoly_UpdateBgActorTransforms(struct PlayState* play, DynaCollisionContext* dyna);
void CollisionHeader_GetVirtual(void* colHeader, CollisionHeader** dest);
void func_800418D0(CollisionContext* colCtx, struct PlayState* play);
u32 SurfaceType_GetBgCamIndex(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u16 BgCheck_GetBgCamSettingImpl(CollisionContext* colCtx, u32 bgCamIndex, s32 bgId);
u16 BgCheck_GetBgCamSetting(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u16 BgCheck_GetBgCamCount(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
Vec3s* BgCheck_GetBgCamFuncDataImpl(CollisionContext* colCtx, s32 bgCamIndex, s32 bgId);
Vec3s* BgCheck_GetBgCamFuncData(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetExitIndex(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetFloorType(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 func_80041D70(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_GetWallFlags(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_CheckWallFlag0(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_CheckWallFlag1(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_CheckWallFlag2(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetFloorProperty(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_IsSoft(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_IsHorseBlocked(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetMaterial(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u16 SurfaceType_GetSfxOffset(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetFloorEffect(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetLightSetting(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetEcho(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_CanHookshot(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_IsIgnoredByEntities(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_IsIgnoredByProjectiles(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 SurfaceType_IsFloorConveyor(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetConveyorSpeed(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 SurfaceType_GetConveyorDirection(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
u32 func_80042108(CollisionContext* colCtx, CollisionPoly* poly, s32 bgId);
s32 WaterBox_GetSurface1(struct PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                         WaterBox** outWaterBox);
s32 WaterBox_GetSurface2(struct PlayState* play, CollisionContext* colCtx, Vec3f* pos, f32 surfaceChkDist,
                         WaterBox** outWaterBox);
s32 WaterBox_GetSurfaceImpl(struct PlayState* play, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                            WaterBox** outWaterBox);
u32 WaterBox_GetBgCamIndex(CollisionContext* colCtx, WaterBox* waterBox);
u16 WaterBox_GetBgCamSetting(CollisionContext* colCtx, WaterBox* waterBox);
u32 WaterBox_GetLightIndex(CollisionContext* colCtx, WaterBox* waterBox);
s32 func_80042708(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* point, Vec3f* closestPoint);
s32 func_800427B4(CollisionPoly* polyA, CollisionPoly* polyB, Vec3f* pointA, Vec3f* pointB, Vec3f* closestPoint);
#if DEBUG_FEATURES
void BgCheck_DrawDynaCollision(struct PlayState*, CollisionContext*);
void BgCheck_DrawStaticCollision(struct PlayState*, CollisionContext*);
#endif

void func_80043334(CollisionContext* colCtx, struct Actor* actor, s32 bgId);
s32 DynaPolyActor_TransformCarriedActor(CollisionContext* colCtx, s32 bgId, struct Actor* carriedActor);
void DynaPolyActor_Init(struct DynaPolyActor* dynaActor, s32 transformFlags);
void DynaPolyActor_UnsetAllInteractFlags(struct DynaPolyActor* dynaActor);
void DynaPolyActor_SetActorOnTop(struct DynaPolyActor* dynaActor);
void DynaPoly_SetPlayerOnTop(CollisionContext* colCtx, s32 floorBgId);
void DynaPoly_SetPlayerAbove(CollisionContext* colCtx, s32 floorBgId);
void DynaPolyActor_SetSwitchPressed(struct DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsActorOnTop(struct DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsPlayerOnTop(struct DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsPlayerAbove(struct DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsSwitchPressed(struct DynaPolyActor* dynaActor);
s32 func_800435D8(struct PlayState* play, struct DynaPolyActor* dynaActor, s16 arg2, s16 arg3, s16 arg4);

#endif
