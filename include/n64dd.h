#ifndef N64DD_H
#define N64DD_H

#include "ultra64.h"
#include "ultra64/leo.h"
#include "pause.h"
#include "scene.h"
#include "map_mark.h"
#include "versions.h"

struct Font;
struct GameState;
struct MapData;
struct MessageTableEntry;
struct PlayState;
struct RegEditor;
struct RoomContext;
struct SaveContext;
struct Scene;

// TODO Use the specific pointer types instead of void*
typedef struct n64ddStruct_800FEE70_pointers {
    void* unk_00;
    void* unk_04;
    struct RegEditor* unk_08;
    void* unk_0C[31];
    struct SaveContext* unk_88;
    void* unk_8C[9];
} n64ddStruct_800FEE70_pointers; // size = 0xB0

typedef struct n64dd_hookList {
    void (*unk_00)(n64ddStruct_800FEE70_pointers*, struct n64dd_hookList*); // linked list
    void (*unk_04)(void);
    void (*unk_08)(struct PlayState* play, struct RoomContext* roomCtx, s32 roomNum);
    void (*unk_0C)(struct PlayState* play);
    void (*unk_10)(struct PlayState* play);
    void (*unk_14)(struct PlayState* play);
    s32 (*unk_18)(struct MapData**);
    s32 (*unk_1C)(struct MapData**);
    s32 (*unk_20)(struct MapData*);
    s32 (*unk_24)(void);
    s32 (*unk_28)(struct PlayState*);
    s32 (*unk_2C)(MapMarkData***);
    s32 (*unk_30)(MapMarkData***);
    void (*unk_34)(PauseMapMarksData**);
    void (*unk_38)(PauseMapMarksData**);
    void (*unk_3C)(void);
    void (*unk_40)(void);
    s32 (*unk_44)(struct PlayState*);
    struct SceneTableEntry* (*unk_48)(s32 sceneId, struct SceneTableEntry* sceneTable);
    char unk_4C[0x08];
    s32 (*unk_54)(struct PlayState*);
#if OOT_NTSC
    void (*unk_58)(struct MessageTableEntry**, struct MessageTableEntry**, struct MessageTableEntry**);
#else
    void (*unk_58)(struct MessageTableEntry**, const char***, const char***, struct MessageTableEntry**);
#endif
    char unk_5C[0x4];
    s32 (*unk_60)(struct Font*);
    s32 (*unk_64)(struct Font*);
    s32 (*unk_68)(struct Font*);
#if OOT_PAL
    s32 (*unk_6C_PAL)(struct Font*);
#endif
    void (*unk_6C)(struct PlayState*, SceneDrawConfigFunc*);
    s32 (*unk_70)(struct DmaRequest* req, void* ram, uintptr_t vrom, size_t size, u32 unk, OSMesgQueue* queue, OSMesg msg);
    void (*unk_74)(struct GameState*);
    s32 (*unk_78)(struct PlayState*, void*, void*);
} n64dd_hookList; // size = ?

typedef struct n64dd_CommPacket {
    /* 0x00 */ LEOCmd unk_00;
    /* 0x1C */ OSMesgQueue unk_1C;
    /* 0x38 */ LEODiskID diskId;
    /* 0x58 */ UNK_TYPE unk_58;
    /* 0x5C */ UNK_TYPE unk_5C;
    /* 0x60 */ u32 unk_60;
    /* 0x64 */ u8 unk_64;
    /* 0x65 */ u8 unk_65;
    /* 0x66 */ u8 unk_66;
    /* 0x68 */ s32 unk_68; // maybe disk drive status?
    /* 0x6C */ s32 unk_6C;
} n64dd_CommPacket; // size = 0x70

typedef struct n64dd_drivePacketData {
    /* 0x00 */ u8 cmdType; // command enum
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ u8 unk_08;
    /* 0x0C */ void (*unk_0C)(void*, void*, void*);
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ void (*unk_14)(void*, uintptr_t, size_t);
    /* 0x18 */ void* unk_18;
    /* 0x1C */ void* pCmdParam1; // either OSMesgQueue* (command 0) or integer LBA (commands 2 and 3)
    /* 0x20 */ void* pCmdParam2; // either OSMesgQueue* (command 0) or integer byte size (commands 3 and 4)
    /* 0x24 */ OSId unk_24;
    /* 0x28 */ void* unk_28;
    /* 0x2C */ OSPri unk_2C;
} n64dd_drivePacketData; // size = 0x30

void func_800AD410(void);
void func_800AD488(void);
n64dd_hookList* func_800AD4C0(n64dd_hookList* arg0);
void func_800AD51C(void);
n64ddStruct_800FEE70_pointers* func_800AD560(void);
void func_800AD590(void);
void func_800AD598(s32 arg0, s32 arg1, s32 arg2);

u32 n64dd_CheckIfDriveExists(void);
void n64dd_gfxHook(Gfx** gfxP);
s32 n64dd_checkIfGameDiskIsCorrect(void);
void func_801C7268(void);
s32 func_801C7658(void);
s32 func_801C7818(void);
void n64dd_loadData(void* dest, s32 offset, s32 size);
void n64dd_doNothing(void);
void n64dd_SetDiskVersion(s32 arg0);

s32 n64dd_parsePacketData(n64dd_drivePacketData* ddPacket);
s32 func_801C81C4(void);
void func_801C81EC(n64dd_CommPacket* arg0);
void func_801C8298(n64dd_CommPacket* arg0);
void func_801C82E0(n64dd_CommPacket* arg0);
void func_801C832C(n64dd_CommPacket* arg0);
void func_801C83A0(n64dd_CommPacket* arg0);
void func_801C8414(n64dd_CommPacket* arg0);
s32 func_801C873C(n64dd_CommPacket* arg0);

void n64dd_printDiskErrors(void);
s32 func_801C91E0(n64dd_CommPacket*);
s32 func_801C9260(n64dd_CommPacket*);
s32 func_801C9334(n64dd_CommPacket*);
s32 func_801C93C4(n64dd_CommPacket*);

void func_801C94F8(u8* arg0, u16 arg1);
void n64dd_displayStringOnScreen(u8* arg0, s32 arg1, u8* errorStr);
void func_801C9B50(s32 arg0, void (*arg1)(void*, uintptr_t, size_t));

u8* n64ddError_GetPtrToErrorCodeTexture(s32 errorNum);
u8* n64dd_clearErrorCodeTexBuf(void);
u8* n64ddError_GetErrorMsgTexture(s32 errorNum);
u8* n64dd_clearErrorMsgTexBuf(void);
u8* n64dd_clearErrorMsgAndCodeBufAndPrintErr(s32 errorNum);
u8* n64dd_clearErrorMsgAndCodeBuf(void);

void n64dd_writeCharsToFB(void* charTexBuf, s32 posX, s32 posY, s32 dx, s32 dy, s32 cy, void* frameBuf, s32 screenWidth);

extern n64ddStruct_800FEE70_pointers D_800FEE70;
extern n64dd_hookList* B_80121220;

extern u8 D_80121210;
extern u8 n64dd_isDiskDrivePresent;
extern u8 n64dd_isDiskContentRunning;
extern vu8 n64dd_isDriveReady;
extern vu8 n64dd_hasMusicBeenStopped;

extern s32 (*ptr_n64dd_CheckIfDiskIsValid)(n64dd_CommPacket*);

extern u8 gN64DDDiskReadTemporaryBuffer[];

extern s32 D_801D2E90;
extern OSMesgQueue* pAllMessageQueues[2];

extern s32 D_801D2EA0;
extern s32 D_801D2EA8;
extern s32 isErrorTexDisplayed;
extern s32 B_801E0F64;
extern void (*D_801D2EB4)(void*, void*, void*);

// Error messages
extern const char* n64dd_errorNumbers[];        // "Error Number    " array
extern const char* n64dd_allErrorMsgs[2][8][4]; // Array of error message strings

// Error textures
extern u64 gN64DDError41Texs[2][0x600 / sizeof(u64)];
extern u64 gN64DDPleaseReadManualTexs[2][0x2800 / sizeof(u64)];

#endif
