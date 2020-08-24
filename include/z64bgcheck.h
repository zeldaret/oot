#ifndef _Z_BGCHECK_
#define _Z_BGCHECK_

struct GlobalContext;
struct Actor;
struct DynaPolyActor;

#define SS_NULL 0xFFFF
#define COLPOLY_NORM_FRAC (1.0f / 32767)

#define COLPOLY_IGNORE_CEILING 1
#define COLPOLY_IGNORE_WALL 2
#define COLPOLY_IGNORE_FLOOR 4

#define BG_ACTOR_MAX 50
#define BGCHECK_SCENE BG_ACTOR_MAX
#define BGCHECK_Y_MIN -32000.0f
#define VIA_FLAG_TEST(vIA, flags) ((vIA) & (((flags) & 7) << 13))
#define VTX_INDEX(vI) ((vI) & 0x1FFF) 

typedef struct {
    u16 floor;
    u16 wall;
    u16 ceiling;

} Lookup;

typedef struct {
    /* 0x00 */ u16    type;
    union {
        u16 vtxData[3];
        struct {
            /* 0x02 */ u16    flags_vIA; // 0xE000 is poly exclusion flags, 0x1FFF is vtxId
            /* 0x04 */ u16    flags_vIB; // 0xE000 is ? flags, 0x1FFF is vtxId
            /* 0x06 */ u16    vIC;
        };
    };
    /* 0x08 */ Vec3s  norm;  // Unit normal vector.
                             //Value ranges from -0x7FFF to 0x7FFF, representing -1 to 1. 0x8000 is invalid
                            
    /* 0x0E */ s16    dist;  // Plane distance from origin
} CollisionPoly; // size = 0x10 //RoomPoly

//FIXME: Update ZAP
#define RoomPoly CollisionPoly

typedef struct {
    u16 cameraSType;            // 0x00
    s16 numCameras;             // 0x02
    void* camPosDataSeg;  // 0x04
} CamData;

typedef struct {
    u32 unknown;
    u32 camPosDataSeg;
} CamPosDataEntry; //DO NOT USE

typedef struct {
    s16 posX, posY, posZ;
    s16 rotX, rotY, rotZ;
    s16 fov;
    s16 unk_0E;//jfifId;
    s16 unk;
} CamPosData;

typedef struct {
    /* 0x00 */ s16 xMin;
    /* 0x02 */ s16 ySurface;
    /* 0x04 */ s16 zMin;
    /* 0x06 */ s16 xLength;
    /* 0x08 */ s16 zLength;
    /* 0x0C */ u32 properties;
    
    //0x0008_0000 = ?
    //0x0007_E000 = Room Index, 0x3F = all rooms
    //0x0000_1F00 = ?
    //0x0000_00FF = CamData index
} WaterBox; // size = 0x10 //WaterBoxHeader

//FIXME: ZAP
#define WaterBoxHeader WaterBox

typedef struct {
    s32 f_F000_0000 : 4;
    s32 f_0800_0000 : 1;
    s32 f_007F_FFFF : 23;
} SurfaceTypeLo;

typedef struct {
    u32 data[2];
} SurfaceType;

typedef struct {
    /* 0x00 */ Vec3s        minBounds; //colAbsMin
    /* 0x06 */ Vec3s        maxBounds; //colAbsMax
    /* 0x0C */ u16          nbVertices;
    /* 0x10 */ Vec3s*       vtxList;    //vertexArray
    /* 0x14 */ u16          nbPolygons;
    /* 0x18 */ CollisionPoly* polyList; //polygonArray
    /* 0x1C */ SurfaceType*   polygonTypes;
    /* 0x20 */ CamData*  cameraData;
    /* 0x24 */ u16       nbWaterBoxes;
    /* 0x28 */ WaterBox* waterBoxes;
} CollisionHeader; //BGDataInfo

typedef struct {
    s16 polyId; 
    u16 next; //next SSNode index
} SSNode;

typedef struct {
    /* 0x00 */ u16 max;  // original name: short_slist_node_size
    /* 0x02 */ u16 count; // original name: short_slist_node_last_index
    /* 0x04 */ SSNode* tbl; //original name: short_slist_node_tbl
    /* 0x08 */ u8* polyCheckTbl; //set to 1 if polygon has already been tested
} StaticList_s;

typedef struct {
    SSNode* tbl;
    s32 count;
    s32 max;
} DynaList_s;

typedef struct {
    Vec3f scale;
    Vec3s rot;
    Vec3f pos;
} ScaleRotPos;

typedef struct {
    u16 polyStartIndex; 
    u16 ceiling; 
    u16 wall; 
    u16 floor;
} DynaLookup;

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ CollisionHeader* colHeader;
    /* 0x08 */ DynaLookup dynaLookup;
    /* 0x10 */ u16 vtxStartIndex; //dyna vtx index start
    /* 0x14 */ ScaleRotPos srp1;
    /* 0x34 */ ScaleRotPos srp2;
    /* 0x54 */ Sphere16  boundingSphere;
    /* 0x5C */ f32  minY;
    /* 0x60 */ f32  maxY;
} ActorMesh; // size = 0x64

typedef struct {
    /* 0x0000 */ u8             unk_00;
    /* 0x0004 */ ActorMesh      bgActors[50];
    /* 0x138C */ u16            flags[50]; // & 0x0008 = no dyna ceiling
    /* 0x13F0 */ CollisionPoly* polyList; //pbuf
    /* 0x13F4 */ Vec3s*         vtxList; //pbuf
    /* 0x13F8 */ DynaList_s     polyNodes;
    /* 0x1404 */ s32            polyNodesMax; 
    /* 0x1408 */ s32            polyListMax; 
    /* 0x140C */ s32            vtxListMax; 
    /* 0x1410 */ u32            memSize;
} DynaCollisionContext; // size = 0x1414 //810

typedef struct CollisionContext {
    /* 0x00 */ CollisionHeader* colHeader;
    /* 0x04 */ Vec3f minBounds;
    /* 0x10 */ Vec3f maxBounds;
    /* 0x1C */ Vec3i subdivisions;
    /* 0x28 */ Vec3f unitSize;
    /* 0x34 */ Vec3f inverseUnitSize;
    /* 0x40 */ Lookup* lookupTbl;
    /* 0x44 */ StaticList_s  polyNodes;
    /* 0x50 */ DynaCollisionContext dyna;
} CollisionContext; // off 0x07C0 size = 0x1464

typedef struct {
    /* 0x00 */ struct GlobalContext* globalCtx;
    /* 0x04 */ struct CollisionContext* colCtx;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 unk_0A; //might not exist
    /* 0x0C */ CollisionPoly** unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ Vec3f* unk_14;
    /* 0x18 */ s32* bgId;
    /* 0x1C */ struct Actor* unk_1C;
    /* 0x20 */ u32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ DynaCollisionContext* dyna;
    /* 0x2C */ u16* unk_2C;
} s8003FBF4; 

typedef struct {
    /* 0x00 */ struct CollisionContext* colCtx;
    /* 0x04 */ u16 xpFlags; 
    /* 0x08 */ DynaCollisionContext* dyna;
    /* 0x0C */ u16* dynaLookupId;
    /* 0x10 */ Vec3f* pointA;
    /* 0x14 */ Vec3f* pointB;
    /* 0x18 */ Vec3f* unk18;
    /* 0x1C */ CollisionPoly** unk1C;
    /* 0x20 */ s32 unk20; // flag & 0x8
    /* 0x24 */ f32* unk24;
    /* 0x28 */ f32 unk28;

} s80041128;

#endif
