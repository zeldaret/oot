#ifndef _Z_BGCHECK_
#define _Z_BGCHECK_

struct GlobalContext;
struct Actor;
struct DynaPolyActor;

#define BG_ACTOR_MAX 50
#define BGCHECK_SCENE BG_ACTOR_MAX

typedef struct {
    u16 floor;
    u16 wall;
    u16 ceiling;

} Lookup;

typedef struct {
    /* 0x00 */ u16    type;
    /* 0x02 */ u16    flags_vIA; // 0xE000 is poly exclusion flags, 0x1FFF is vtxId
    /* 0x04 */ u16    flags_vIB; // 0xE000 is ? flags, 0x1FFF is vtxId
    /* 0x06 */ u16    vIC;
    /* 0x08 */ Vec3s  norm;  // Unit normal vector.
                             //Value ranges from -0x7FFF to 0x7FFF, representing -1 to 1. 0x8000 is invalid
                            
    /* 0x0E */ s16    dist;  // Plane distance from origin
} CollisionPoly; // size = 0x10 //RoomPoly

typedef struct {
    s16 cameraSType;            // 0x00
    s16 numCameras;             // 0x02
    void* camPosDataSeg;  // 0x04
} CamData;

typedef struct {
    u32 unknown;
    u32 camPosDataSeg;
} CamPosDataEntry;

typedef struct {
    s16 posX, posY, posZ;
    s16 rotX, rotY, rotZ;
    s16 fov;
    s16 jfifId;
    s16 unk;
} CamPosData;

typedef struct {
    /* 0x00 */ s16 xMin;
    /* 0x02 */ s16 ySurface;
    /* 0x04 */ s16 zMin;
    /* 0x06 */ s16 xLength;
    /* 0x08 */ s16 zLength;
    /* 0x0C */ s32 properties;
} WaterBox; // size = 0x10 //WaterBoxHeader


typedef struct {
    s32 f_F000_0000 : 4;
    s32 f_0800_0000 : 1;
    s32 f_007F_FFFF : 23;
} SurfaceTypeLo;

typedef u32 SurfaceType[2];

typedef struct {
    /* 0x00 */ Vec3s     minBounds; //colAbsMin
    /* 0x06 */ Vec3s     maxBounds; //colAbsMax
    /* 0x0C */ u16       nbVertices;
    /* 0x10 */ Vec3s*    vertexArray;
    /* 0x14 */ u16       nbPolygons;
    /* 0x18 */ CollisionPoly* polygonArray;
    /* 0x1C */ SurfaceType*   polygonTypes;
    /* 0x20 */ CamData*  cameraData;
    /* 0x24 */ s16       nbWaterBoxes;
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
    int count;
    int max;
} DynaList_s;

typedef struct {
    Vec3f scale;
    Vec3s rot;
    Vec3f pos;
} ScaleRotPos;

typedef struct {
    u16 unk_00; //dyna ? index start?
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} DynaLookup;

typedef struct {
    s16 x;
    s16 y;
    s16 z;
    s16 unk_06;
} Vec4s; //don't use

typedef struct {
    /* 0x00 */ struct DynaPolyActor* actor;
    /* 0x04 */ CollisionHeader* colHeader;
    /* 0x08 */ DynaLookup dynaLookup;
    /* 0x10 */ u16 unk_10; //dyna ? index start
    /* 0x14 */ ScaleRotPos srp1;
    /* 0x34 */ ScaleRotPos srp2;
    /* 0x54 */ Sphere16  unk_54;
    /* 0x5C */ f32  unk_5C; //min y ?
    /* 0x60 */ f32  unk_60; //max y ?
} ActorMesh; // size = 0x64

typedef struct {
    /* 0x00 */ CollisionHeader* colHeader;
    /* 0x04 */ Vec3f minBounds;
    /* 0x10 */ Vec3f maxBounds;
    /* 0x1C */ Vec3i subdivisions;
    /* 0x28 */ Vec3f unitSize;
    /* 0x34 */ Vec3f inverseUnitSize;
    /* 0x40 */ Lookup* lookupTbl;
    /* 0x44 */ StaticList_s  polyNodes;
} StaticCollisionContext; // size = 0x50 //7C0

typedef struct {
    /* 0x0000 */ u8             unk_00;
    /* 0x0004 */ ActorMesh      bgActors[50];
    /* 0x138C */ u16            flags[50];
    /* 0x13F0 */ CollisionPoly* dyn_poly; //pbuf
    /* 0x13F4 */ Vec3s*         dyn_vtx; //pbuf
    /* 0x13F8 */ DynaList_s     dyn_list;
    /* 0x1404 */ s32            dyn_list_max; //dyn_list_max
    /* 0x1408 */ s32            dyn_poly_max; //dyn_poly_max
    /* 0x140C */ s32            unk_140C; //dyn_vtx_max
    /* 0x1410 */ s32            unk_1410; //mem_size
} DynaCollisionContext; // size = 0x1414 //810

typedef struct {
    /* 0x074 */ CollisionPoly* wallPoly; // Wall polygon an actor is touching
    /* 0x078 */ CollisionPoly* floorPoly; // Floor polygon an actor is over/touching
    /* 0x07C */ u8      wallPolySource; // Complex Poly Surface Source. 0x32 = Scene
    /* 0x07D */ u8      floorPolySource; // Complex Poly Surface Source. 0x32 = Scene. related to 0x80/88
    /* 0x07E */ s16     wallPolyRot; // Rotation of the wall poly
    /* 0x080 */ f32     unk_80; // Floor poly height?
    /* 0x084 */ f32     unk_84;
} BgCheckInfo;

typedef struct {
    /* 0x00 */ struct GlobalContext* globalCtx;
    /* 0x04 */ StaticCollisionContext* colCtx;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 unk_0A; //might not exist
    /* 0x0C */ CollisionPoly** unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ Vec3f* unk_14;
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 unk_1C;
    /* 0x20 */ u32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ DynaCollisionContext* dyna;
    /* 0x2C */ u16* unk_2C;
} s8003FBF4;

#endif
