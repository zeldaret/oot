/**
 * @file z_std_dma.c
 *
 * This file implements a system for structuring the ROM image and retrieving data. It is designed to have the same
 * external interface regardless of whether the ROM segments are compressed or not.
 *
 * The ROM image is partitioned into regions that are entered into the DMA data table `gDmaDataTable`. External code
 * does not directly address locations on the ROM image directly, instead a "Virtual ROM" addressing is used. Virtual
 * ROM is defined to be the ROM address of a segment in a totally uncompressed ROM. For uncompressed ROMs, "physical"
 * ROM and VROM addresses coincide. The DMA data table converts VROM to ROM addresses so that code may exclusively use
 * VROM addresses even if the ROM is compressed.
 *
 * External code typically submits requests to the DMA Manager asking for a transfer in terms of Virtual ROM; the DMA
 * Manager translates this to the physical ROM address, performs the transfer to RAM and decompresses the data if
 * required.
 * Requests are processed in the order they are received and may be submitted both synchronously and asynchronously.
 *
 * There are some additional provisions to ensure that audio DMA is particularly high-speed, the audio data is assumed
 * to be uncompressed and the request queue and address translation is skipped.
 */
#include "global.h"
#include "terminal.h"

StackEntry sDmaMgrStackInfo;
OSMesgQueue sDmaMgrMsgQueue;
OSMesg sDmaMgrMsgBuf[32];
OSThread sDmaMgrThread;
STACK(sDmaMgrStack, 0x500);
const char* sDmaMgrCurFileName;
s32 sDmaMgrCurFileLine;

u32 gDmaMgrVerbose = 0;
size_t gDmaMgrDmaBuffSize = DMAMGR_DEFAULT_BUFSIZE;
u32 sDmaMgrIsRomCompressed = false;

// dmadata filenames
#define DEFINE_DMA_ENTRY(_0, nameString) nameString,

const char* sDmaMgrFileNames[] = {
#include "tables/dmadata_table.h"
};

#undef DEFINE_DMA_ENTRY

/**
 * Compares `str1` and `str2`.
 *
 * @return
 *  0 if str1 and str2 are the same,
 *  -1 if the first character that does not match has a smaller value in str1 than str2,
 *  +1 if the first character that does not match has a greater value in str1 than str2
 */
s32 DmaMgr_StrCmp(const char* str1, const char* str2) {
    while (*str1 != '\0') {
        if (*str1 > *str2) {
            return 1;
        }
        if (*str1 < *str2) {
            return -1;
        }
        str1++;
        str2++;
    }

    if (*str2 > '\0') {
        return -1;
    }
    return 0;
}

/**
 * Transfer `size` bytes from physical ROM address `rom` to `ram`.
 *
 * This function is intended for internal use only, however it is possible to use this function externally in which
 * case it behaves as a synchronous transfer, data is available as soon as this function returns.
 *
 * Transfers are divided into chunks based on the current value of `gDmaMgrDmaBuffSize` to avoid congestion of the PI
 * so that higher priority transfers can still be carried out in a timely manner. The transfers are sent in a queue to
 * the OS PI Manager which performs the transfer.
 *
 * @return 0 if successful, -1 if the DMA could not be queued with the PI Manager.
 */
s32 DmaMgr_DmaRomToRam(uintptr_t rom, void* ram, size_t size) {
    OSIoMesg ioMsg;
    OSMesgQueue queue;
    OSMesg msg;
    s32 ret;
    size_t buffSize = gDmaMgrDmaBuffSize;
    s32 pad[2];

    if (buffSize == 0) {
        buffSize = DMAMGR_DEFAULT_BUFSIZE;
    }

    osInvalICache(ram, size);
    osInvalDCache(ram, size);
    osCreateMesgQueue(&queue, &msg, 1);

    while (size > buffSize) {
        // The system avoids large DMAs as these would stall the PI for too long, potentially causing issues with
        // audio. To allow audio to continue to DMA whenever it needs to, other DMAs are split into manageable chunks.

        if (1) {} // Necessary to match

        ioMsg.hdr.pri = OS_MESG_PRI_NORMAL;
        ioMsg.hdr.retQueue = &queue;
        ioMsg.devAddr = rom;
        ioMsg.dramAddr = ram;
        ioMsg.size = buffSize;

        if (gDmaMgrVerbose == 10) {
            osSyncPrintf("%10lld ノーマルＤＭＡ %08x %08x %08x (%d)\n", OS_CYCLES_TO_USEC(osGetTime()), ioMsg.dramAddr,
                         ioMsg.devAddr, ioMsg.size, MQ_GET_COUNT(&gPiMgrCmdQueue));
        }

        ret = osEPiStartDma(gCartHandle, &ioMsg, OS_READ);
        if (ret != 0) {
            goto end;
        }

        if (gDmaMgrVerbose == 10) {
            osSyncPrintf("%10lld ノーマルＤＭＡ START (%d)\n", OS_CYCLES_TO_USEC(osGetTime()),
                         MQ_GET_COUNT(&gPiMgrCmdQueue));
        }

        osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
        if (gDmaMgrVerbose == 10) {
            osSyncPrintf("%10lld ノーマルＤＭＡ END (%d)\n", OS_CYCLES_TO_USEC(osGetTime()),
                         MQ_GET_COUNT(&gPiMgrCmdQueue));
        }

        size -= buffSize;
        rom = rom + buffSize;
        ram = (u8*)ram + buffSize;
    }

    if (1) {} // Also necessary to match

    ioMsg.hdr.pri = OS_MESG_PRI_NORMAL;
    ioMsg.hdr.retQueue = &queue;
    ioMsg.devAddr = rom;
    ioMsg.dramAddr = ram;
    ioMsg.size = size;

    if (gDmaMgrVerbose == 10) {
        osSyncPrintf("%10lld ノーマルＤＭＡ %08x %08x %08x (%d)\n", OS_CYCLES_TO_USEC(osGetTime()), ioMsg.dramAddr,
                     ioMsg.devAddr, ioMsg.size, MQ_GET_COUNT(&gPiMgrCmdQueue));
    }

    ret = osEPiStartDma(gCartHandle, &ioMsg, OS_READ);
    if (ret != 0) {
        goto end;
    }

    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
    if (gDmaMgrVerbose == 10) {
        osSyncPrintf("%10lld ノーマルＤＭＡ END (%d)\n", OS_CYCLES_TO_USEC(osGetTime()), MQ_GET_COUNT(&gPiMgrCmdQueue));
    }

end:
    osInvalICache(ram, size);
    osInvalDCache(ram, size);

    return ret;
}

/**
 * Callback function to facilitate audio DMA. Audio DMA does not use the request queue as audio data is often needed
 * very soon after the request is sent, requiring a higher priority method for enqueueing a DMA on the OS PI command
 * queue.
 *
 * @param pihandle Cartridge ROM PI Handle.
 * @param mb IO Message describing the transfer.
 * @param direction Read or write. (Only read is allowed)
 * @return 0 if the IO Message was successfully put on the OS PI command queue, < 0 otherwise
 */
s32 DmaMgr_AudioDmaHandler(OSPiHandle* pihandle, OSIoMesg* mb, s32 direction) {
    s32 ret;

    ASSERT(pihandle == gCartHandle, "pihandle == carthandle", "../z_std_dma.c", 530);
    ASSERT(direction == OS_READ, "direction == OS_READ", "../z_std_dma.c", 531);
    ASSERT(mb != NULL, "mb != NULL", "../z_std_dma.c", 532);

    if (gDmaMgrVerbose == 10) {
        osSyncPrintf("%10lld サウンドＤＭＡ %08x %08x %08x (%d)\n", OS_CYCLES_TO_USEC(osGetTime()), mb->dramAddr,
                     mb->devAddr, mb->size, MQ_GET_COUNT(&gPiMgrCmdQueue));
    }

    ret = osEPiStartDma(pihandle, mb, direction);
    if (ret != 0) {
        osSyncPrintf("OOPS!!\n");
    }
    return ret;
}

/**
 * DMA read from disk drive. Blocks the current thread until DMA completes.
 *
 * @param ram RAM address to write data to.
 * @param rom ROM address to read from.
 * @param size Size of transfer.
 */
void DmaMgr_DmaFromDriveRom(void* ram, uintptr_t rom, size_t size) {
    OSPiHandle* handle = osDriveRomInit();
    OSMesgQueue queue;
    OSMesg msg;
    OSIoMesg ioMsg;

    osInvalICache(ram, size);
    osInvalDCache(ram, size);
    osCreateMesgQueue(&queue, &msg, 1);

    ioMsg.hdr.retQueue = &queue;
    ioMsg.hdr.pri = OS_MESG_PRI_NORMAL;
    ioMsg.devAddr = rom;
    ioMsg.dramAddr = ram;
    ioMsg.size = size;
    handle->transferInfo.cmdType = 2;

    osEPiStartDma(handle, &ioMsg, OS_READ);
    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
}

/**
 * DMA error encountered, print error messages and bring up the crash screen.
 *
 * @param req DMA Request causing the error.
 * @param file DMA data filename associated with the operation that errored.
 * @param errorName Error name string.
 * @param errorDesc Error description string.
 *
 * This function does not return.
 */
void DmaMgr_Error(DmaRequest* req, const char* file, const char* errorName, const char* errorDesc) {
    uintptr_t vrom = req->vromAddr;
    void* ram = req->dramAddr;
    size_t size = req->size;
    char buff1[80];
    char buff2[80];

    osSyncPrintf("%c", BEL);
    osSyncPrintf(VT_FGCOL(RED));
    // "DMA Fatal Error"
    osSyncPrintf("DMA致命的エラー(%s)\nROM:%X RAM:%X SIZE:%X %s\n",
                 errorDesc != NULL ? errorDesc : (errorName != NULL ? errorName : "???"), vrom, ram, size,
                 file != NULL ? file : "???");

    if (req->filename != NULL) { // Source file name that issued the DMA request
        osSyncPrintf("DMA ERROR: %s %d", req->filename, req->line);
    } else if (sDmaMgrCurFileName != NULL) {
        osSyncPrintf("DMA ERROR: %s %d", sDmaMgrCurFileName, sDmaMgrCurFileLine);
    }

    osSyncPrintf(VT_RST);

    if (req->filename != NULL) {
        sprintf(buff1, "DMA ERROR: %s %d", req->filename, req->line);
    } else if (sDmaMgrCurFileName != NULL) {
        sprintf(buff1, "DMA ERROR: %s %d", sDmaMgrCurFileName, sDmaMgrCurFileLine);
    } else {
        sprintf(buff1, "DMA ERROR: %s", errorName != NULL ? errorName : "???");
    }

    sprintf(buff2, "%07X %08X %X %s", vrom, ram, size, file != NULL ? file : "???");
    Fault_AddHungupAndCrashImpl(buff1, buff2);
}

/**
 * Searches the filesystem for the entry containing the address `vrom`. Retrieves the name of this entry from
 * the array of file names.
 *
 * @param vrom Virtual ROM location
 * @return Pointer to associated filename
 */
const char* DmaMgr_FindFileName(uintptr_t vrom) {
    DmaEntry* iter = gDmaDataTable;
    const char** name = sDmaMgrFileNames;

    while (iter->vromEnd != 0) {
        if (vrom >= iter->vromStart && vrom < iter->vromEnd) {
            return *name;
        }

        iter++;
        name++;
    }
    //! @bug Since there is no return, in case the file isn't found, the return value will be a pointer to the end
    // of gDmaDataTable
#ifdef AVOID_UB
    return "";
#endif
}

const char* DmaMgr_GetFileName(uintptr_t vrom) {
    const char* ret = DmaMgr_FindFileName(vrom);

    if (ret == NULL) {
        return "(unknown)";
    }

    if (DmaMgr_StrCmp(ret, "kanji") == 0 || DmaMgr_StrCmp(ret, "link_animetion") == 0) {
        // This check may be related to these files being too large to be loaded all at once, however a NULL filename
        // does not prevent them from being loaded.
        return NULL;
    }
    return ret;
}

void DmaMgr_ProcessRequest(DmaRequest* req) {
    uintptr_t vrom = req->vromAddr;
    void* ram = req->dramAddr;
    size_t size = req->size;
    uintptr_t romStart;
    size_t romSize;
    u8 found = false;
    DmaEntry* iter;
    const char* filename;

    if (0) {
        // The string is defined in .rodata but not used, suggesting a debug print is here but was optimized out in
        // some way. The last arg of this print looks like it may be filename, but filename above this block does not
        // match.
        osSyncPrintf("DMA ROM:%08X RAM:%08X SIZE:%08X %s\n");
    }

    // Get the filename (for debugging)
    filename = DmaMgr_GetFileName(vrom);

    // Iterate through the DMA data table until the region containing the vrom address for this request is found
    iter = gDmaDataTable;
    while (iter->vromEnd != 0) {
        if (vrom >= iter->vromStart && vrom < iter->vromEnd) {
            // Found the region this request falls into

            if (1) {} // Necessary to match

            if (iter->romEnd == 0) {
                // romEnd of 0 indicates that the file is uncompressed. Files that are stored uncompressed can have
                // only part of their content loaded into RAM, so DMA only the requested region.

                if (iter->vromEnd < vrom + size) {
                    // Error, vrom + size ends up in a different file than it started in

                    // "DMA transfers cannot cross segment boundaries"
                    DmaMgr_Error(req, filename, "Segment Alignment Error",
                                 "セグメント境界をまたがってＤＭＡ転送することはできません");
                }

                DmaMgr_DmaRomToRam(iter->romStart + (vrom - iter->vromStart), ram, size);
                found = true;

                if (0) {
                    osSyncPrintf("No Press ROM:%08X RAM:%08X SIZE:%08X\n", vrom, ram, size);
                }
            } else {
                // File is compressed. Files that are stored compressed must be loaded into RAM all at once.

                romStart = iter->romStart;
                romSize = iter->romEnd - iter->romStart;

                if (vrom != iter->vromStart) {
                    // Error, requested vrom is not the start of a file

                    // "DMA transfer cannot be performed from the middle of a compressed segment"
                    DmaMgr_Error(req, filename, "Can't Transfer Segment",
                                 "圧縮されたセグメントの途中からはＤＭＡ転送することはできません");
                }

                if (size != iter->vromEnd - iter->vromStart) {
                    // Error, only part of the file was requested

                    // "It is not possible to DMA only part of a compressed segment"
                    DmaMgr_Error(req, filename, "Can't Transfer Segment",
                                 "圧縮されたセグメントの一部だけをＤＭＡ転送することはできません");
                }

                // Reduce the thread priority and decompress the file, the decompression routine handles the DMA
                // in chunks. Restores the thread priority when done.
                osSetThreadPri(NULL, THREAD_PRI_DMAMGR_LOW);
                Yaz0_Decompress(romStart, ram, romSize);
                osSetThreadPri(NULL, THREAD_PRI_DMAMGR);
                found = true;

                if (0) {
                    osSyncPrintf("   Press ROM:%X RAM:%X SIZE:%X\n", vrom, ram, size);
                }
            }
            break;
        }
        iter++;
    }

    if (!found) {
        // Requested region was not found in the filesystem

        if (sDmaMgrIsRomCompressed) {
            // Error, rom is compressed so DMA may only be requested within the filesystem bounds

            // "Corresponding data does not exist"
            DmaMgr_Error(req, NULL, "DATA DON'T EXIST", "該当するデータが存在しません");
            return;
        } else {
            // ROM is uncompressed, allow arbitrary DMA even if the region is not marked in the filesystem
            DmaMgr_DmaRomToRam(vrom, ram, size);

            if (0) {
                osSyncPrintf("No Press ROM:%08X RAM:%08X SIZE:%08X (非公式)\n", vrom, ram, size);
            }
        }
    }
}

void DmaMgr_ThreadEntry(void* arg) {
    OSMesg msg;
    DmaRequest* req;

    // "DMA manager thread execution start"
    osSyncPrintf("ＤＭＡマネージャスレッド実行開始\n");

    while (true) {
        // Wait for DMA Requests to arrive from other threads
        osRecvMesg(&sDmaMgrMsgQueue, &msg, OS_MESG_BLOCK);
        req = (DmaRequest*)msg;
        if (req == NULL) {
            break;
        }

        if (0) {
            osSyncPrintf("ＤＭＡ登録受付 dmap=%08x\n", req);
        }

        // Process the DMA request
        DmaMgr_ProcessRequest(req);

        // Notify the sender that the request has been processed
        if (req->notifyQueue != NULL) {
            osSendMesg(req->notifyQueue, req->notifyMsg, OS_MESG_NOBLOCK);
            if (0) {
                osSyncPrintf("osSendMesg: dmap=%08x, mq=%08x, m=%08x \n", req, req->notifyQueue, req->notifyMsg);
            }
        }
    }

    // "DMA manager thread execution end"
    osSyncPrintf("ＤＭＡマネージャスレッド実行終了\n");
}

/**
 * Submits a DMA request to the DMA manager. For internal use only.
 *
 * @param req DMA request, filled out internally.
 * @param ram Location in DRAM for data to be written.
 * @param vrom Virtual ROM location for data to be read.
 * @param size Transfer size.
 * @param queue Message queue to notify with `msg` once the transfer is complete.
 * @param msg Message to send to `queue` once the transfer is complete.
 * @return 0
 */
s32 DmaMgr_SendRequest(DmaRequest* req, void* ram, uintptr_t vrom, size_t size, u32 unk, OSMesgQueue* queue,
                       OSMesg msg) {
    static s32 sDmaMgrQueueFullLogged = 0;

    if ((1 && (ram == NULL)) || (osMemSize < OS_K0_TO_PHYSICAL(ram) + size) || (vrom & 1) || (vrom > 0x4000000) ||
        (size == 0) || (size & 1)) {
        //! @bug `req` is passed to `DmaMgr_Error` without rom, ram and size being set
        DmaMgr_Error(req, NULL, "ILLIGAL DMA-FUNCTION CALL", "パラメータ異常です");
    }

    req->vromAddr = vrom;
    req->dramAddr = ram;
    req->size = size;
    req->unk_14 = 0;
    req->notifyQueue = queue;
    req->notifyMsg = msg;

    if (1 && (sDmaMgrQueueFullLogged == 0) && MQ_IS_FULL(&sDmaMgrMsgQueue)) {
        sDmaMgrQueueFullLogged++;
        osSyncPrintf("%c", BEL);
        osSyncPrintf(VT_FGCOL(RED));
        // "dmaEntryMsgQ is full. Reconsider your queue size."
        osSyncPrintf("dmaEntryMsgQが一杯です。キューサイズの再検討をおすすめします。");
        LOG_NUM("(sizeof(dmaEntryMsgBufs) / sizeof(dmaEntryMsgBufs[0]))", ARRAY_COUNT(sDmaMgrMsgBuf), "../z_std_dma.c",
                952);
        osSyncPrintf(VT_RST);
    }

    osSendMesg(&sDmaMgrMsgQueue, (OSMesg)req, OS_MESG_BLOCK);
    return 0;
}

/**
 * Submit a synchronous DMA request. This will block the current thread until the requested transfer is complete. Data
 * is immediately available as soon as this function returns.
 *
 * @param ram Location in DRAM for data to be written.
 * @param vrom Virtual ROM location for data to be read.
 * @param size Transfer size.
 * @return 0
 */
s32 DmaMgr_RequestSync(void* ram, uintptr_t vrom, size_t size) {
    DmaRequest req;
    OSMesgQueue queue;
    OSMesg msg;
    s32 ret;

    osCreateMesgQueue(&queue, &msg, 1);
    ret = DmaMgr_SendRequest(&req, ram, vrom, size, 0, &queue, NULL);
    if (ret == -1) { // DmaMgr_SendRequest only returns 0
        return ret;
    }

    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
    return 0;
}

void DmaMgr_Init(void) {
    const char** name;
    s32 idx;
    DmaEntry* iter;

    // DMA the dma data table to RAM
    DmaMgr_DmaRomToRam((uintptr_t)_dmadataSegmentRomStart, _dmadataSegmentStart,
                       (u32)(_dmadataSegmentRomEnd - _dmadataSegmentRomStart));
    osSyncPrintf("dma_rom_ad[]\n");

    sDmaMgrIsRomCompressed = false;
    name = sDmaMgrFileNames;
    iter = gDmaDataTable;
    idx = 0;

    // Check if the ROM is compressed (romEnd not 0)
    while (iter->vromEnd != 0) {
        if (iter->romEnd != 0) {
            sDmaMgrIsRomCompressed = true;
        }

        osSyncPrintf(
            "%3d %08x %08x %08x %08x %08x %c %s\n", idx, iter->vromStart, iter->vromEnd, iter->romStart, iter->romEnd,
            (iter->romEnd != 0) ? iter->romEnd - iter->romStart : iter->vromEnd - iter->vromStart,
            (((iter->romEnd != 0) ? iter->romEnd - iter->romStart : 0) > 0x10000) ? '*' : ' ', name ? *name : "");

        idx++;
        iter++;

        if (name != NULL) {
            name++;
        }
    }

    // Ensure that the boot segment always follows after the makerom segment.
    if ((uintptr_t)_bootSegmentRomStart != gDmaDataTable[0].vromEnd) {
        osSyncPrintf("_bootSegmentRomStart(%08x) != dma_rom_ad[0].rom_b(%08x)\n", _bootSegmentRomStart,
                     gDmaDataTable[0].vromEnd);
        //! @bug The main code file where fault.c resides is not yet loaded
        Fault_AddHungupAndCrash("../z_std_dma.c", 1055);
    }

    // Start the DMA manager
    osCreateMesgQueue(&sDmaMgrMsgQueue, sDmaMgrMsgBuf, ARRAY_COUNT(sDmaMgrMsgBuf));
    StackCheck_Init(&sDmaMgrStackInfo, sDmaMgrStack, STACK_TOP(sDmaMgrStack), 0, 0x100, "dmamgr");
    osCreateThread(&sDmaMgrThread, THREAD_ID_DMAMGR, DmaMgr_ThreadEntry, NULL, STACK_TOP(sDmaMgrStack),
                   THREAD_PRI_DMAMGR);
    osStartThread(&sDmaMgrThread);
}

/**
 * Submit an asynchronous DMA request. Unlike other DMA requests, this will not block the current thread. Data arrival
 * is not immediate however, ensure that the request has completed by awaiting a message sent to `queue` when the DMA
 * operation has completed.
 *
 * @param req DMA request structure, filled out internally.
 * @param ram Location in DRAM for data to be written.
 * @param vrom Virtual ROM location for data to be read.
 * @param size Transfer size.
 * @param queue Message queue to notify with `msg` once the transfer is complete.
 * @param msg Message to send to `queue` once the transfer is complete.
 * @param file Debug filename of caller.
 * @param line Debug line number of caller.
 * @return 0
 */
s32 DmaMgr_RequestAsync(DmaRequest* req, void* ram, uintptr_t vrom, size_t size, u32 unk5, OSMesgQueue* queue,
                        OSMesg msg, const char* file, s32 line) {
    req->filename = file;
    req->line = line;
    return DmaMgr_SendRequest(req, ram, vrom, size, unk5, queue, msg);
}

/**
 * Synchronous DMA Request with source file and line info for debugging.
 *
 * @see DmaMgr_RequestSync
 */
s32 DmaMgr_RequestSyncDebug(void* ram, uintptr_t vrom, size_t size, const char* file, s32 line) {
    DmaRequest req;
    s32 ret;
    OSMesgQueue queue;
    OSMesg msg;
    s32 pad;

    req.filename = file;
    req.line = line;
    osCreateMesgQueue(&queue, &msg, 1);
    ret = DmaMgr_SendRequest(&req, ram, vrom, size, 0, &queue, NULL);
    if (ret == -1) { // DmaMgr_SendRequest only returns 0
        return ret;
    }

    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
    return 0;
}
