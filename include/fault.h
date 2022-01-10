#ifndef FAULT_H
#define FAULT_H

#include "padmgr.h"

// These are the same as the ansi color codes
#define FAULT_COLOR_BLACK      0
#define FAULT_COLOR_RED        1
#define FAULT_COLOR_GREEN      2
#define FAULT_COLOR_YELLOW     3
#define FAULT_COLOR_BLUE       4
#define FAULT_COLOR_MAGENTA    5
#define FAULT_COLOR_CYAN       6
#define FAULT_COLOR_WHITE      7
#define FAULT_COLOR_DARK_GRAY  8
#define FAULT_COLOR_LIGHT_GRAY 9

#define FAULT_COLOR_STRINGIFY(s) #s
#define FAULT_COLOR_EXPAND_AND_STRINGIFY(s) FAULT_COLOR_STRINGIFY(s)

#define FAULT_ESC '\x1A'
#define FAULT_COLOR(n) "\x1A" FAULT_COLOR_EXPAND_AND_STRINGIFY(FAULT_COLOR_ ## n)

typedef struct FaultClient {
    /* 0x00 */ struct FaultClient* next;
    /* 0x04 */ void* callback;
    /* 0x08 */ void* param1;
    /* 0x0C */ void* param2;
} FaultClient; // size = 0x10

typedef struct FaultAddrConvClient {
    /* 0x00 */ struct FaultAddrConvClient* next;
    /* 0x04 */ void* callback;
    /* 0x08 */ void* param;
} FaultAddrConvClient; // size = 0xC

// Initialization

void Fault_Init(void);

// Fatal Errors

void Fault_AddHungupAndCrashImpl(const char* exp1, const char* exp2);
void Fault_AddHungupAndCrash(const char* file, s32 line);

// Client Registration

void Fault_AddClient(FaultClient* client, void* callback, void* param0, void* param1);
void Fault_RemoveClient(FaultClient* client);

void Fault_AddAddrConvClient(FaultAddrConvClient* client, void* callback, void* param);
void Fault_RemoveAddrConvClient(FaultAddrConvClient* client);

// For use in Fault Client callbacks

void Fault_WaitForInput(void);
void Fault_FillScreenBlack(void);
void Fault_SetFrameBuffer(void* fb, u16 w, u16 h);

void FaultDrawer_SetForeColor(u16 color);
void FaultDrawer_SetBackColor(u16 color);
void FaultDrawer_SetFontColor(u16 color);
void FaultDrawer_SetCharPad(s8 padW, s8 padH);
void FaultDrawer_SetCursor(s32 x, s32 y);
void FaultDrawer_VPrintf(const char* fmt, va_list args);
void FaultDrawer_Printf(const char* fmt, ...);
void FaultDrawer_DrawText(s32 x, s32 y, const char* fmt, ...);

typedef struct FaultMgr {
    /* 0x000 */ OSThread thread;
    /* 0x1B0 */ u8 unk_1B0[0x600];
    /* 0x7B0 */ OSMesgQueue queue;
    /* 0x7C8 */ OSMesg msg;
    /* 0x7CC */ u8 exit;
    /* 0x7CD */ u8 msgId;
    /* 0x7CE */ u8 faultHandlerEnabled;
    /* 0x7CF */ u8 autoScroll;
    /* 0x7D0 */ OSThread* faultedThread;
    /* 0x7D4 */ void (*padCallback)(Input*);
    /* 0x7D8 */ FaultClient* clients;
    /* 0x7DC */ FaultAddrConvClient* addrConvClients;
    /* 0x7E0 */ u8 unk_7E0[4];
    /* 0x7E4 */ Input padInput;
    /* 0x7FC */ u16 colors[36];
    /* 0x844 */ void* fb;
    /* 0x848 */ void* clientThreadSp;
} FaultMgr; // size = 0x850

extern FaultMgr gFaultMgr;

#endif
