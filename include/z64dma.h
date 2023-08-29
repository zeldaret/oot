#ifndef Z64_DMA_H
#define Z64_DMA_H

#include "ultra64.h"
#include "alignment.h"

typedef struct {
    /* 0x00 */ uintptr_t    vromAddr; // VROM address (source)
    /* 0x04 */ void*        dramAddr; // DRAM address (destination)
    /* 0x08 */ size_t       size;     // File Transfer size
    /* 0x0C */ const char*  filename; // Filename for debugging
    /* 0x10 */ s32          line;     // Line for debugging
    /* 0x14 */ s32          unk_14;
    /* 0x18 */ OSMesgQueue* notifyQueue; // Message queue for the notification message
    /* 0x1C */ OSMesg       notifyMsg;   // Completion notification message
} DmaRequest; // size = 0x20

typedef struct {
    /* 0x00 */ uintptr_t vromStart;
    /* 0x04 */ uintptr_t vromEnd;
    /* 0x08 */ uintptr_t romStart;
    /* 0x0C */ uintptr_t romEnd;
} DmaEntry;

typedef struct {
    /* 0x00 */ uintptr_t vromStart;
    /* 0x04 */ uintptr_t vromEnd;
} RomFile; // size = 0x8

#define ROM_FILE(name) \
    { (uintptr_t)_##name##SegmentRomStart, (uintptr_t)_##name##SegmentRomEnd }
#define ROM_FILE_EMPTY(name) \
    { (uintptr_t)_##name##SegmentRomStart, (uintptr_t)_##name##SegmentRomStart }
#define ROM_FILE_UNSET \
    { 0 }

extern DmaEntry gDmaDataTable[];

extern u32 gDmaMgrVerbose;
extern size_t gDmaMgrDmaBuffSize;

#define DMAMGR_DEFAULT_BUFSIZE ALIGN16(0x2000)

// Standard DMA Requests

s32 DmaMgr_RequestSync(void* ram, uintptr_t vrom, size_t size);
s32 DmaMgr_RequestSyncDebug(void* ram, uintptr_t vrom, size_t size, const char* file, s32 line);
s32 DmaMgr_RequestAsync(DmaRequest* req, void* ram, uintptr_t vrom, size_t size, u32 unk5, OSMesgQueue* queue,
                        OSMesg msg, const char* file, s32 line);

// Special-purpose DMA Requests

s32 DmaMgr_DmaRomToRam(uintptr_t rom, void* ram, size_t size);
void DmaMgr_DmaFromDriveRom(void* ram, uintptr_t rom, size_t size);
s32 DmaMgr_AudioDmaHandler(OSPiHandle* pihandle, OSIoMesg* mb, s32 direction);

// Initialization

void DmaMgr_Init(void);

#endif
