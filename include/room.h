#ifndef ROOM_H
#define ROOM_H

#include "ultra64.h"
#include "dma.h"
#include "z_math.h"

struct Input;
struct PlayState;

// Room shapes

typedef enum RoomShapeType {
    /* 0 */ ROOM_SHAPE_TYPE_NORMAL,
    /* 1 */ ROOM_SHAPE_TYPE_IMAGE,
    /* 2 */ ROOM_SHAPE_TYPE_CULLABLE,
    /* 3 */ ROOM_SHAPE_TYPE_MAX
} RoomShapeType;

typedef struct RoomShapeBase {
    /* 0x00 */ u8 type;
} RoomShapeBase; // size = 0x01

typedef struct RoomShapeDListsEntry {
    /* 0x00 */ Gfx* opa;
    /* 0x04 */ Gfx* xlu;
} RoomShapeDListsEntry; // size = 0x08

typedef struct RoomShapeNormal {
    /* 0x00 */ RoomShapeBase base;
    /* 0x01 */ u8 numEntries;
    /* 0x04 */ RoomShapeDListsEntry* entries;
    /* 0x08 */ RoomShapeDListsEntry* entriesEnd;
} RoomShapeNormal; // size = 0x0C

typedef enum RoomShapeImageAmountType {
    /* 1 */ ROOM_SHAPE_IMAGE_AMOUNT_SINGLE = 1,
    /* 2 */ ROOM_SHAPE_IMAGE_AMOUNT_MULTI
} RoomShapeImageAmountType;

typedef struct RoomShapeImageBase {
    /* 0x00 */ RoomShapeBase base;
    /* 0x01 */ u8    amountType; // RoomShapeImageAmountType
    /* 0x04 */ RoomShapeDListsEntry* entry;
} RoomShapeImageBase; // size = 0x08

typedef struct RoomShapeImageSingle {
    /* 0x00 */ RoomShapeImageBase base;
    /* 0x08 */ void* source;
    /* 0x0C */ u32   unk_0C;
    /* 0x10 */ void* tlut;
    /* 0x14 */ u16   width;
    /* 0x16 */ u16   height;
    /* 0x18 */ u8    fmt;
    /* 0x19 */ u8    siz;
    /* 0x1A */ u16   tlutMode;
    /* 0x1C */ u16   tlutCount;
} RoomShapeImageSingle; // size = 0x20

typedef struct RoomShapeImageMultiBgEntry {
    /* 0x00 */ u16   unk_00;
    /* 0x02 */ u8    bgCamIndex; // for which bg cam index is this entry for
    /* 0x04 */ void* source;
    /* 0x08 */ u32   unk_0C;
    /* 0x0C */ void* tlut;
    /* 0x10 */ u16   width;
    /* 0x12 */ u16   height;
    /* 0x14 */ u8    fmt;
    /* 0x15 */ u8    siz;
    /* 0x16 */ u16   tlutMode;
    /* 0x18 */ u16   tlutCount;
} RoomShapeImageMultiBgEntry; // size = 0x1C

typedef struct RoomShapeImageMulti {
    /* 0x00 */ RoomShapeImageBase base;
    /* 0x08 */ u8    numBackgrounds;
    /* 0x0C */ RoomShapeImageMultiBgEntry* backgrounds;
} RoomShapeImageMulti; // size = 0x10

typedef struct RoomShapeCullableEntry {
    /* 0x00 */ Vec3s boundsSphereCenter;
    /* 0x06 */ s16   boundsSphereRadius;
    /* 0x08 */ Gfx* opa;
    /* 0x0C */ Gfx* xlu;
} RoomShapeCullableEntry; // size = 0x10

#define ROOM_SHAPE_CULLABLE_MAX_ENTRIES 64

typedef struct RoomShapeCullable {
    /* 0x00 */ RoomShapeBase base;
    /* 0x01 */ u8 numEntries;
    /* 0x04 */ RoomShapeCullableEntry* entries;
    /* 0x08 */ RoomShapeCullableEntry* entriesEnd;
} RoomShapeCullable; // size = 0x0C

typedef union RoomShape {
    RoomShapeBase base;
    RoomShapeNormal normal;
    union {
        RoomShapeImageBase base;
        RoomShapeImageSingle single;
        RoomShapeImageMulti multi;
    } image;
    RoomShapeCullable cullable;
} RoomShape; // "Ground Shape"

typedef enum RoomType {
    /* 0 */ ROOM_TYPE_NORMAL,
    /* 1 */ ROOM_TYPE_DUNGEON, // Blocks Sun's Song's time advance effect. Not exclusively used by typical dungeon rooms.
    /* 2 */ ROOM_TYPE_INDOORS, // Reduces player run speed and blocks player from attacking or jumping.
    /* 3 */ ROOM_TYPE_3, // Unused. Color dithering is turned off when drawing the room and other things.
    /* 4 */ ROOM_TYPE_4, // Unused. Prevents switching to CAM_SET_HORSE when mounting a horse.
    /* 5 */ ROOM_TYPE_BOSS // Disables Environment_AdjustLights
} RoomType;

typedef enum RoomEnvironmentType {
    /* 0 */ ROOM_ENV_DEFAULT,
    /* 1 */ ROOM_ENV_COLD,
    /* 2 */ ROOM_ENV_WARM,
    /* 3 */ ROOM_ENV_HOT, // Enables hot room timer for the current room
    /* 4 */ ROOM_ENV_UNK_STRETCH_1,
    /* 5 */ ROOM_ENV_UNK_STRETCH_2,
    /* 6 */ ROOM_ENV_UNK_STRETCH_3
} RoomEnvironmentType;

typedef enum LensMode {
    /* 0 */ LENS_MODE_SHOW_ACTORS, // lens actors are invisible by default, and shown by using lens (for example, invisible enemies)
    /* 1 */ LENS_MODE_HIDE_ACTORS // lens actors are visible by default, and hidden by using lens (for example, fake walls)
} LensMode;

typedef struct Room {
    /* 0x00 */ s8 num; // -1 is invalid room
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 environmentType;
    /* 0x03 */ u8 type;
    /* 0x04 */ s8 echo;
    /* 0x05 */ u8 lensMode;
    /* 0x08 */ RoomShape* roomShape; // original name: "ground_shape"
    /* 0x0C */ void* segment;
    /* 0x10 */ char unk_10[0x4];
} Room; // size = 0x14

typedef struct RoomContext {
    /* 0x00 */ Room curRoom;
    /* 0x14 */ Room prevRoom;
    /* 0x28 */ void* bufPtrs[2]; // Start and end pointers for the room buffer. Can be split into two pages, where page 0 is allocated from the start pointer and page 1 is allocated from the end pointer.
    /* 0x30 */ u8 activeBufPage; // 0 - First page in memory, 1 - Last page in memory
    /* 0x31 */ s8 status; // 0 - Free for new room request, 1 - DmaRequest for a new room is in progress
    /* 0x34 */ void* roomRequestAddr; // Pointer to where the requested room segment will be stored
    /* 0x38 */ DmaRequest dmaRequest;
    /* 0x58 */ OSMesgQueue loadQueue;
    /* 0x70 */ OSMesg loadMsg;
    /* 0x74 */ s16 drawParams[2]; // context-specific data used by the current scene draw config
} RoomContext; // size = 0x78

typedef struct RoomList {
    /* 0x00 */ u8 count;
    /* 0x04 */ RomFile* romFiles; // Array of rom addresses for each room in a scene
} RoomList;

#define ROOM_DRAW_OPA (1 << 0)
#define ROOM_DRAW_XLU (1 << 1)

void func_80095AA0(struct PlayState* play, Room* room, struct Input* input, s32 arg3);
void Room_DrawBackground2D(Gfx** gfxP, void* tex, void* tlut, u16 width, u16 height, u8 fmt, u8 siz, u16 tlutMode,
                           u16 tlutCount, f32 offsetX, f32 offsetY);
void Room_Init(struct PlayState* play, Room* room);
u32 Room_SetupFirstRoom(struct PlayState* play, RoomContext* roomCtx);
s32 Room_RequestNewRoom(struct PlayState* play, RoomContext* roomCtx, s32 roomNum);
s32 Room_ProcessRoomRequest(struct PlayState* play, RoomContext* roomCtx);
void Room_Draw(struct PlayState* play, Room* room, u32 flags);
void Room_FinishRoomChange(struct PlayState* play, RoomContext* roomCtx);

#endif
