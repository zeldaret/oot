#ifndef Z_BGCHECK_H
#define Z_BGCHECK_H

struct PlayState;
struct Actor;
struct DynaPolyActor;

#define COLPOLY_NORMAL_FRAC (1.0f / SHT_MAX)
#define COLPOLY_SNORMAL(x) ((s16)((x) * SHT_MAX))
#define COLPOLY_GET_NORMAL(n) ((n)*COLPOLY_NORMAL_FRAC)
#define COLPOLY_VIA_FLAG_TEST(vIA, flags) ((vIA) & (((flags)&7) << 13))
#define COLPOLY_VTX_INDEX(vI) ((vI)&0x1FFF)

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

#define WATERBOX_ROOM(p) ((p >> 13) & 0x3F)

typedef struct {
    Vec3f scale;
    Vec3s rot;
    Vec3f pos;
} ScaleRotPos;

typedef struct {
    /* 0x00 */ u16 type;
    union {
        u16 vtxData[3];
        struct {
            /* 0x02 */ u16 flags_vIA; // 0xE000 is poly exclusion flags (xpFlags), 0x1FFF is vtxId
            /* 0x04 */ u16 flags_vIB; // 0xE000 is flags, 0x1FFF is vtxId
                                      // 0x2000 = poly IsConveyor surface
            /* 0x06 */ u16 vIC;
        };
    };
    /* 0x08 */ Vec3s normal; // Unit normal vector
                             // Value ranges from -0x7FFF to 0x7FFF, representing -1.0 to 1.0; 0x8000 is invalid

    /* 0x0E */ s16 dist; // Plane distance from origin along the normal
} CollisionPoly; // size = 0x10

typedef struct {
    /* 0x0 */ u16 setting; // camera setting described by CameraSettingType enum
    /* 0x2 */ s16 count; // only used when `bgCamFuncData` is a list of points used for crawlspaces
    /* 0x4 */ Vec3s* bgCamFuncData; // s16 data grouped in threes (ex. Vec3s), is usually of type `BgCamFuncData`, but can be a list of points of type `Vec3s` for crawlspaces
} BgCamInfo; // size = 0x8

typedef BgCamInfo CamData; // Todo: Zapd compatibility

// The structure used for all instances of s16 data from `BgCamInfo` with the exception of crawlspaces.
// See `Camera_Subj4` for Vec3s data usage in crawlspaces
typedef struct {
    /* 0x00 */ Vec3s pos;
    /* 0x06 */ Vec3s rot;
    /* 0x0C */ s16 fov;
    /* 0x0E */ union {
        s16 jfifId;
        s16 timer;
        s16 flags;
    };
    /* 0x10 */ s16 unk_10; // unused
} BgCamFuncData; // size = 0x12

typedef struct {
    /* 0x00 */ s16 xMin;
    /* 0x02 */ s16 ySurface;
    /* 0x04 */ s16 zMin;
    /* 0x06 */ s16 xLength;
    /* 0x08 */ s16 zLength;
    /* 0x0C */ u32 properties;

    // 0x0008_0000 = ?
    // 0x0007_E000 = Room Index, 0x3F = all rooms
    // 0x0000_1F00 = Lighting Settings Index
    // 0x0000_00FF = BgCam Index
} WaterBox; // size = 0x10

// SurfaceType.data[0]

#define SURFACETYPE0_BGCAMINDEX_SHIFT 0
#define SURFACETYPE0_BGCAMINDEX_MASK 0x000000FF
#define SURFACETYPE0_BGCAMINDEX(data0) \
    (((data0) >> SURFACETYPE0_BGCAMINDEX_SHIFT) & (SURFACETYPE0_BGCAMINDEX_MASK >> SURFACETYPE0_BGCAMINDEX_SHIFT))

#define SURFACETYPE0_EXITINDEX_SHIFT 8
#define SURFACETYPE0_EXITINDEX_MASK 0x00001F00
#define SURFACETYPE0_EXITINDEX(data0) \
    (((data0) >> SURFACETYPE0_EXITINDEX_SHIFT) & (SURFACETYPE0_EXITINDEX_MASK >> SURFACETYPE0_EXITINDEX_SHIFT))

#define SURFACETYPE0_FLOORTYPE_SHIFT 13
#define SURFACETYPE0_FLOORTYPE_MASK 0x0003E000
#define SURFACETYPE0_FLOORTYPE(data0) \
    (((data0) >> SURFACETYPE0_FLOORTYPE_SHIFT) & (SURFACETYPE0_FLOORTYPE_MASK >> SURFACETYPE0_FLOORTYPE_SHIFT))

typedef enum {
    /*  0 */ SURFACETYPE_FLOORTYPE_0,
    /*  1 */ SURFACETYPE_FLOORTYPE_1,
    /*  2 */ SURFACETYPE_FLOORTYPE_2,
    /*  3 */ SURFACETYPE_FLOORTYPE_3,
    /*  4 */ SURFACETYPE_FLOORTYPE_4,
    /*  5 */ SURFACETYPE_FLOORTYPE_5,
    /*  6 */ SURFACETYPE_FLOORTYPE_6,
    /*  7 */ SURFACETYPE_FLOORTYPE_7,
    /*  8 */ SURFACETYPE_FLOORTYPE_8,
    /*  9 */ SURFACETYPE_FLOORTYPE_9,
    /* 10 */ SURFACETYPE_FLOORTYPE_10,
    /* 11 */ SURFACETYPE_FLOORTYPE_11,
    /* 12 */ SURFACETYPE_FLOORTYPE_12
} SurfaceTypeFloorType;

#define SURFACETYPE0_18_SHIFT 18
#define SURFACETYPE0_18_MASK 0x001C0000
#define SURFACETYPE0_18(data0) (((data0) >> SURFACETYPE0_18_SHIFT) & (SURFACETYPE0_18_MASK >> SURFACETYPE0_18_SHIFT))

#define SURFACETYPE0_WALLTYPE_SHIFT 21
#define SURFACETYPE0_WALLTYPE_MASK 0x03E00000
#define SURFACETYPE0_WALLTYPE(data0) \
    (((data0) >> SURFACETYPE0_WALLTYPE_SHIFT) & (SURFACETYPE0_WALLTYPE_MASK >> SURFACETYPE0_WALLTYPE_SHIFT))

typedef enum {
    /*  0 */ SURFACETYPE_WALLTYPE_0,
    /*  1 */ SURFACETYPE_WALLTYPE_1,
    /*  2 */ SURFACETYPE_WALLTYPE_2,
    /*  3 */ SURFACETYPE_WALLTYPE_3,
    /*  4 */ SURFACETYPE_WALLTYPE_4,
    /*  5 */ SURFACETYPE_WALLTYPE_5,
    /*  6 */ SURFACETYPE_WALLTYPE_6,
    /*  7 */ SURFACETYPE_WALLTYPE_7,
    /*  8 */ SURFACETYPE_WALLTYPE_8,
    /*  9 */ SURFACETYPE_WALLTYPE_9,
    /* 10 */ SURFACETYPE_WALLTYPE_10,
    /* 11 */ SURFACETYPE_WALLTYPE_11,
    /* 12 */ SURFACETYPE_WALLTYPE_12,
    /* 32 */ SURFACETYPE_WALLTYPE_MAX = 32
} SurfaceTypeWallType;

#define SURFACETYPE_WALLFLAG_0 (1 << 0)
#define SURFACETYPE_WALLFLAG_1 (1 << 1)
#define SURFACETYPE_WALLFLAG_2 (1 << 2)
#define SURFACETYPE_WALLFLAG_3 (1 << 3)
#define SURFACETYPE_WALLFLAG_4 (1 << 4)
#define SURFACETYPE_WALLFLAG_5 (1 << 5)
#define SURFACETYPE_WALLFLAG_6 (1 << 6)

#define SURFACETYPE0_FLOORPROPERTY_SHIFT 26
#define SURFACETYPE0_FLOORPROPERTY_MASK 0x3C000000
#define SURFACETYPE0_FLOORPROPERTY(data0)            \
    (((data0) >> SURFACETYPE0_FLOORPROPERTY_SHIFT) & \
     (SURFACETYPE0_FLOORPROPERTY_MASK >> SURFACETYPE0_FLOORPROPERTY_SHIFT))

typedef enum {
    /*  0 */ SURFACETYPE_FLOORPROPERTY_0,
    /*  5 */ SURFACETYPE_FLOORPROPERTY_5 = 5,
    /*  6 */ SURFACETYPE_FLOORPROPERTY_6,
    /*  7 */ SURFACETYPE_FLOORPROPERTY_7,
    /*  8 */ SURFACETYPE_FLOORPROPERTY_8,
    /*  9 */ SURFACETYPE_FLOORPROPERTY_9,
    /* 11 */ SURFACETYPE_FLOORPROPERTY_11 = 11,
    /* 12 */ SURFACETYPE_FLOORPROPERTY_12
} SurfaceTypeFloorProperty;

#define SURFACETYPE0_SOFT_SHIFT 30
#define SURFACETYPE0_SOFT_MASK 0x40000000
#define SURFACETYPE0_SOFT(data0) \
    (((data0) >> SURFACETYPE0_SOFT_SHIFT) & (SURFACETYPE0_SOFT_MASK >> SURFACETYPE0_SOFT_SHIFT))

#define SURFACETYPE0_ISHORSEBLOCKED_SHIFT 31
#define SURFACETYPE0_ISHORSEBLOCKED_MASK 0x80000000
#define SURFACETYPE0_ISHORSEBLOCKED(data0)            \
    (((data0) >> SURFACETYPE0_ISHORSEBLOCKED_SHIFT) & \
     (SURFACETYPE0_ISHORSEBLOCKED_MASK >> SURFACETYPE0_ISHORSEBLOCKED_SHIFT))

// SurfaceType.data[1]

#define SURFACETYPE1_SFXTYPE_SHIFT 0
#define SURFACETYPE1_SFXTYPE_MASK 0x0000000F
#define SURFACETYPE1_SFXTYPE(data1) \
    (((data1) >> SURFACETYPE1_SFXTYPE_SHIFT) & (SURFACETYPE1_SFXTYPE_MASK >> SURFACETYPE1_SFXTYPE_SHIFT))

typedef enum {
    /*  0 */ SURFACETYPE_SFXTYPE_0,
    /*  1 */ SURFACETYPE_SFXTYPE_1,
    /*  2 */ SURFACETYPE_SFXTYPE_2,
    /*  3 */ SURFACETYPE_SFXTYPE_3,
    /*  4 */ SURFACETYPE_SFXTYPE_4,
    /*  5 */ SURFACETYPE_SFXTYPE_5,
    /*  6 */ SURFACETYPE_SFXTYPE_6,
    /*  7 */ SURFACETYPE_SFXTYPE_7,
    /*  8 */ SURFACETYPE_SFXTYPE_8,
    /*  9 */ SURFACETYPE_SFXTYPE_9,
    /* 10 */ SURFACETYPE_SFXTYPE_10,
    /* 11 */ SURFACETYPE_SFXTYPE_11,
    /* 12 */ SURFACETYPE_SFXTYPE_12,
    /* 13 */ SURFACETYPE_SFXTYPE_13,
    /* 14 */ SURFACETYPE_SFXTYPE_MAX
} SurfaceTypeSfxType;

#define SURFACETYPE1_FLOOREFFECT_SHIFT 4
#define SURFACETYPE1_FLOOREFFECT_MASK 0x00000030
#define SURFACETYPE1_FLOOREFFECT(data1) \
    (((data1) >> SURFACETYPE1_FLOOREFFECT_SHIFT) & (SURFACETYPE1_FLOOREFFECT_MASK >> SURFACETYPE1_FLOOREFFECT_SHIFT))

typedef enum {
    /*  0 */ SURFACETYPE_FLOOREFFECT_0,
    /*  1 */ SURFACETYPE_FLOOREFFECT_1,
    /*  2 */ SURFACETYPE_FLOOREFFECT_2
} SurfaceTypeFloorEffect;

#define SURFACETYPE1_LIGHTSETTING_SHIFT 6
#define SURFACETYPE1_LIGHTSETTING_MASK 0x000007C0
#define SURFACETYPE1_LIGHTSETTING(data1) \
    (((data1) >> SURFACETYPE1_LIGHTSETTING_SHIFT) & (SURFACETYPE1_LIGHTSETTING_MASK >> SURFACETYPE1_LIGHTSETTING_SHIFT))

#define SURFACETYPE1_ECHO_SHIFT 11
#define SURFACETYPE1_ECHO_MASK 0x0001F800
#define SURFACETYPE1_ECHO(data1) \
    (((data1) >> SURFACETYPE1_ECHO_SHIFT) & (SURFACETYPE1_ECHO_MASK >> SURFACETYPE1_ECHO_SHIFT))

#define SURFACETYPE1_CANHOOKSHOT_SHIFT 17
#define SURFACETYPE1_CANHOOKSHOT_MASK 0x00020000
#define SURFACETYPE1_CANHOOKSHOT(data1) \
    (((data1) >> SURFACETYPE1_CANHOOKSHOT_SHIFT) & (SURFACETYPE1_CANHOOKSHOT_MASK >> SURFACETYPE1_CANHOOKSHOT_SHIFT))

#define SURFACETYPE1_CONVEYORSPEED_SHIFT 18
#define SURFACETYPE1_CONVEYORSPEED_MASK 0x001C0000
#define SURFACETYPE1_CONVEYORSPEED(data1)            \
    (((data1) >> SURFACETYPE1_CONVEYORSPEED_SHIFT) & \
     (SURFACETYPE1_CONVEYORSPEED_MASK >> SURFACETYPE1_CONVEYORSPEED_SHIFT))

#define SURFACETYPE1_CONVEYORDIRECTION_SHIFT 21
#define SURFACETYPE1_CONVEYORDIRECTION_MASK 0x07E00000
#define SURFACETYPE1_CONVEYORDIRECTION(data1)            \
    (((data1) >> SURFACETYPE1_CONVEYORDIRECTION_SHIFT) & \
     (SURFACETYPE1_CONVEYORDIRECTION_MASK >> SURFACETYPE1_CONVEYORDIRECTION_SHIFT))

#define SURFACETYPE1_27_SHIFT 27
#define SURFACETYPE1_27_FLAG (1 << SURFACETYPE1_27_SHIFT)
#define SURFACETYPE1_27(data1) ((data1) & SURFACETYPE1_27_FLAG ? true : false)

typedef struct {
    u32 data[2];
} SurfaceType;

typedef struct {
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

typedef struct {
    s16 polyId;
    u16 next; // next SSNode index
} SSNode;

typedef struct {
    u16 head; // first SSNode index
} SSList;

typedef struct {
    /* 0x00 */ u16 max;          // original name: short_slist_node_size
    /* 0x02 */ u16 count;        // original name: short_slist_node_last_index
    /* 0x04 */ SSNode* tbl;      // original name: short_slist_node_tbl
    /* 0x08 */ u8* polyCheckTbl; // points to an array of bytes, one per static poly. Zero initialized when starting a
                                 // bg check, and set to 1 if that poly has already been tested.
} SSNodeList;

typedef struct {
    SSNode* tbl;
    s32 count;
    s32 max;
} DynaSSNodeList;

typedef struct {
    SSList floor;
    SSList wall;
    SSList ceiling;
} StaticLookup;

typedef struct {
    u16 polyStartIndex;
    SSList ceiling;
    SSList wall;
    SSList floor;
} DynaLookup;

typedef struct {
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

typedef struct {
    /* 0x0000 */ u8 bitFlag;
    /* 0x0004 */ BgActor bgActors[BG_ACTOR_MAX];
    /* 0x138C */ u16 bgActorFlags[BG_ACTOR_MAX]; // & 0x0008 = no dyna ceiling
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

typedef struct {
    /* 0x00 */ struct PlayState* play;
    /* 0x04 */ struct CollisionContext* colCtx;
    /* 0x08 */ u16 xpFlags;
    /* 0x0C */ CollisionPoly** resultPoly;
    /* 0x10 */ f32 yIntersect;
    /* 0x14 */ Vec3f* pos;
    /* 0x18 */ s32* bgId;
    /* 0x1C */ struct Actor* actor;
    /* 0x20 */ u32 unk_20;
    /* 0x24 */ f32 chkDist;
    /* 0x28 */ DynaCollisionContext* dyna;
    /* 0x2C */ SSList* ssList;
} DynaRaycast;

typedef struct {
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

#endif
