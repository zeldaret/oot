#ifndef _Z_BGCHECK_
#define _Z_BGCHECK_

struct Actor;
struct DynaPolyActor;

typedef u16 SSNode; 

typedef struct {
    SSNode floor;
    SSNode wall;
    SSNode ceiling;

} Lookup;

typedef struct {
    /* 0x00 */ u16    type;
    /* 0x02 */ union {
        u16    flags_vIA;
        struct {
            u16     polyFlags : 3;
            u16     vIA : 13;
        };
    };
    /* 0x04 */ union {
        u16    flags_vIB;
        struct {
            u16    flags : 3;
            u16    vIB : 13;
        };
    };
    /* 0x06 */ u16    vIC;
    /* 0x08 */ Vec3s  norm;  // Normal vector
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

typedef struct {
    u32 properties[2];
} SurfaceType;

typedef struct {
    /* 0x00 */ Vec3s     minBounds; //colAbsMin
    /* 0x06 */ Vec3s     maxBounds; //colAbsMax
    /* 0x0C */ s16       nbVertices;
    /* 0x10 */ Vec3s*    vertexArray;
    /* 0x14 */ s16       nbPolygons;
    /* 0x18 */ CollisionPoly* polygonArray;
    /* 0x1C */ SurfaceType*   polygonTypes;
    /* 0x20 */ CamData*  cameraData;
    /* 0x24 */ s16       nbWaterBoxes;
    /* 0x28 */ WaterBox* waterBoxes;
} CollisionHeader;

typedef struct {
    u16 polyId; //poly
    u16 next; //next
} SSLink_s;

typedef struct {
    /* 0x00 */ u16 max;  // original name: short_slist_node_size
    /* 0x02 */ u16 count;
    /* 0x04 */ SSLink_s* tbl;
    /* 0x08 */ u8* polyCheckTbl; //set to 1 if polygon has already been tested
} PolyLinksList_s;


typedef struct {
    SSLink_s* tbl;
    int count;
    int max;
} DynaList_s;

typedef struct {
    Vec3f scale;
    Vec3s rot;
    Vec3f pos;
} ScaleRotPos;

typedef struct {
    /* 0x00 */ struct DynaPolyActor* actor;
    /* 0x04 */ CollisionHeader* colHeader;
    /* 0x08 */ char  unk_08[0x0C];
    /* 0x14 */ ScaleRotPos srp1;
    /* 0x34 */ ScaleRotPos srp2;
    /* 0x54 */ char  unk_54[0x10];
} ActorMesh; // size = 0x64

typedef struct {
    /* 0x00 */ CollisionHeader* colHeader;
    /* 0x04 */ Vec3f minBounds;
    /* 0x10 */ Vec3f maxBounds;
    /* 0x1C */ Vec3i subdivisions;
    /* 0x28 */ Vec3f unitSize;
    /* 0x34 */ Vec3f inverseUnitSize;
    /* 0x40 */ Lookup* lookupTbl;
    /* 0x44 */ PolyLinksList_s  polyLinksList;
} StaticCollisionContext; // size = 0x50 //7C0

typedef struct {
    /* 0x0000 */ u8             unk_00;
    /* 0x0004 */ ActorMesh      actorMeshArr[50];
    /* 0x138C */ u16            flags[50];
    /* 0x13F0 */ CollisionPoly* dyn_poly;
    /* 0x13F4 */ Vec3s*         dyn_vtx;
    /* 0x13F8 */ DynaList_s     dyn_list;
    /* 0x1404 */ char           unk_13FC[0x10];
} DynaCollisionContext; // size = 0x1414 //810

typedef struct {
    /* 0x074 */ CollisionPoly* wallPoly; // Wall polygon an actor is touching
    /* 0x078 */ CollisionPoly* floorPoly; // Floor polygon an actor is over/touching
    /* 0x07C */ u8      wallPolySource; // Complex Poly Surface Source. 0x32 = Scene
    /* 0x07D */ u8      floorPolySource; // Complex Poly Surface Source. 0x32 = Scene. related to 0x80/88
    /* 0x07E */ s16     unk_7E;
    /* 0x080 */ f32     unk_80; // Floor poly height?
    /* 0x084 */ f32     unk_84;
} BgCheckInfo;

#endif
