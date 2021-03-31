#ifndef _Z_EN_VIEWER_H_
#define _Z_EN_VIEWER_H_

#include "ultra64.h"
#include "global.h"

struct EnViewer;

typedef void (*EnViewerActionFunc)(struct EnViewer*, GlobalContext*);
typedef void (*EnViewerDrawFunc)(struct EnViewer*, GlobalContext*);
typedef void (*EnViewerAnimFunc)(struct EnViewer*, GlobalContext*, void*, AnimationHeader*);

typedef struct {
    /* 0x00 */ s16 objId1;
    /* 0x02 */ s16 objId2;
    /* 0x04 */ u8 scale;
    /* 0x05 */ s8 unk_5;
    /* 0x06 */ u8 actorShadowDrawFuncIndex;
    /* 0x07 */ u8 unk_7;
    /* 0x08 */ u8 drawFuncIndex;
    /* 0x0C */ void* skel;
    /* 0x10 */ AnimationHeader* unk_10;
} struct_80B2CEE8; // size = 0x14

// Structured like an effect?
typedef struct {
    /* 0x00 */ Vec3f unk_0;
    /* 0x0C */ Vec3f unk_C;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ Vec3f unk_24;
    /* 0x30 */ u8 state;
} EnViewerUnkStruct; // size = 0x34

typedef struct EnViewer {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ PSkinAwb skin;
    /* 0x01DC */ s8 animObjBankIndex;
    /* 0x01DD */ u8 drawFuncIndex;
    /* 0x01E0 */ EnViewerActionFunc actionFunc;
    /* 0x01E4 */ u8 unused;
    /* 0x01E5 */ u8 unk_1E5;
    /* 0x01E6 */ u8 unk_1E6; // Conditional
    /* 0x01E8 */ EnViewerUnkStruct unk_1E8[20];
} EnViewer; // size = 0x05F8

extern const ActorInit En_Viewer_InitVars;

#endif
