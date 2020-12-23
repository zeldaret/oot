#ifndef _Z_EN_VIEWER_H_
#define _Z_EN_VIEWER_H_

#include "ultra64.h"
#include "global.h"

struct EnViewer;

typedef void (*EnViewerActionFunc)(struct EnViewer*, GlobalContext*);
typedef void (*EnViewerDrawFunc)(struct EnViewer*, GlobalContext*);

typedef struct {
    /* 0x00 */ Vec3f unk_0;
    /* 0x0C */ Vec3f unk_C;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ Vec3f unk_24;
    /* 0x30 */ u8 unk_30
} EnViewerUnkStruct; // 0x34

typedef struct EnViewer {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ PSkinAwb skin;
    /* 0x01DC */ s8 animObjBankIndex;
    /* 0x01DD */ u8 unk_1DD;
    /* 0x01E0 */ EnViewerActionFunc actionFunc;
    /* 0x01E4 */ u8 unk_1E4;
    /* 0x01E5 */ u8 unk_1E5;
    /* 0x01E6 */ u8 unk_1E6;
    /* 0x01E8 */ EnViewerUnkStruct unk_1E8[20];
} EnViewer; // size = 0x05F8

extern const ActorInit En_Viewer_InitVars;

#endif
