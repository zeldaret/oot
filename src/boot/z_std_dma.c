#include "global.h"
#include "vt.h"

StackEntry sDmaMgrStackInfo;
OSMesgQueue sDmaMgrMsgQueue;
OSMesg sDmaMgrMsgBuf[32];
OSThread sDmaMgrThread;
STACK(sDmaMgrStack, 0x500);
const char* sDmaMgrCurFileName;
s32 sDmaMgrCurFileLine;

u32 gDmaMgrVerbose = 0;
u32 gDmaMgrDmaBuffSize = 0x2000;
u32 sDmaMgrIsRomCompressed = false;

// dmadata filenames
#define DEFINE_DMA_ENTRY(_0, nameString) nameString,

const char* sDmaMgrFileNames[] = {
#include "tables/dmadata_table.h"
};

#undef DEFINE_DMA_ENTRY

s32 DmaMgr_CompareName(const char* name1, const char* name2) {
    while (*name1 != '\0') {
        if (*name1 > *name2) {
            return 1;
        }

        if (*name1 < *name2) {
            return -1;
        }

        name1++;
        name2++;
    }

    if (*name2 > '\0') {
        return -1;
    }

    return 0;
}

s32 DmaMgr_DmaRomToRam(uintptr_t rom, void* ram, u32 size) {
    OSIoMesg ioMsg;
    OSMesgQueue queue;
    OSMesg msg;
    s32 ret;
    u32 buffSize = gDmaMgrDmaBuffSize;
    s32 pad[2];

    if (buffSize == 0) {
        buffSize = 0x2000;
    }

    osInvalICache(ram, size);
    osInvalDCache(ram, size);
    osCreateMesgQueue(&queue, &msg, 1);

    while (size > buffSize) {
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

s32 DmaMgr_DmaHandler(OSPiHandle* pihandle, OSIoMesg* mb, s32 direction) {
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

void DmaMgr_DmaFromDriveRom(void* ram, uintptr_t rom, u32 size) {
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

void DmaMgr_Error(DmaRequest* req, const char* file, const char* errorName, const char* errorDesc) {
    uintptr_t vrom = req->vromAddr;
    void* ram = req->dramAddr;
    u32 size = req->size;
    char buff1[80];
    char buff2[80];

    osSyncPrintf("%c", BEL);
    osSyncPrintf(VT_FGCOL(RED));
    osSyncPrintf("DMA致命的エラー(%s)\nROM:%X RAM:%X SIZE:%X %s\n",
                 errorDesc != NULL ? errorDesc : (errorName != NULL ? errorName : "???"), vrom, ram, size,
                 file != NULL ? file : "???");

    if (req->filename != NULL) {
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

const char* DmaMgr_GetFileNameImpl(uintptr_t vrom) {
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
    const char* ret = DmaMgr_GetFileNameImpl(vrom);

    if (ret == NULL) {
        return "(unknown)";
    }

    if (DmaMgr_CompareName(ret, "kanji") == 0 || DmaMgr_CompareName(ret, "link_animetion") == 0) {
        return NULL;
    }

    return ret;
}

void DmaMgr_ProcessMsg(DmaRequest* req) {
    uintptr_t vrom = req->vromAddr;
    void* ram = req->dramAddr;
    u32 size = req->size;
    uintptr_t romStart;
    u32 romSize;
    u8 found = false;
    DmaEntry* iter;
    const char* filename;

    if (0) {
        // the string is defined in .rodata but not used, suggesting
        // a debug print is here but optimized out in some way
        osSyncPrintf("DMA ROM:%08X RAM:%08X SIZE:%08X %s\n");
        // the last arg of this print looks like it may be filename, but
        // filename above this block does not match
    }

    filename = DmaMgr_GetFileName(vrom);
    iter = gDmaDataTable;

    while (iter->vromEnd != 0) {
        if (vrom >= iter->vromStart && vrom < iter->vromEnd) {
            if (1) {} // Necessary to match

            if (iter->romEnd == 0) {
                if (iter->vromEnd < vrom + size) {
                    DmaMgr_Error(req, filename, "Segment Alignment Error",
                                 "セグメント境界をまたがってＤＭＡ転送することはできません");
                }

                DmaMgr_DmaRomToRam(iter->romStart + (vrom - iter->vromStart), ram, size);
                found = true;

                if (0) {
                    osSyncPrintf("No Press ROM:%08X RAM:%08X SIZE:%08X\n", vrom, ram, size);
                }
            } else {
                romStart = iter->romStart;
                romSize = iter->romEnd - iter->romStart;

                if (vrom != iter->vromStart) {
                    DmaMgr_Error(req, filename, "Can't Transfer Segment",
                                 "圧縮されたセグメントの途中からはＤＭＡ転送することはできません");
                }

                if (size != iter->vromEnd - iter->vromStart) {
                    DmaMgr_Error(req, filename, "Can't Transfer Segment",
                                 "圧縮されたセグメントの一部だけをＤＭＡ転送することはできません");
                }

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
        if (sDmaMgrIsRomCompressed) {
            DmaMgr_Error(req, NULL, "DATA DON'T EXIST", "該当するデータが存在しません");
            return;
        }

        DmaMgr_DmaRomToRam(vrom, ram, size);

        if (0) {
            osSyncPrintf("No Press ROM:%08X RAM:%08X SIZE:%08X (非公式)\n", vrom, ram, size);
        }
    }
}

void DmaMgr_ThreadEntry(void* arg) {
    OSMesg msg;
    DmaRequest* req;

    osSyncPrintf("ＤＭＡマネージャスレッド実行開始\n");
    while (true) {
        osRecvMesg(&sDmaMgrMsgQueue, &msg, OS_MESG_BLOCK);
        req = (DmaRequest*)msg;
        if (req == NULL) {
            break;
        }

        if (0) {
            osSyncPrintf("ＤＭＡ登録受付 dmap=%08x\n", req);
        }

        DmaMgr_ProcessMsg(req);
        if (req->notifyQueue != NULL) {
            osSendMesg(req->notifyQueue, req->notifyMsg, OS_MESG_NOBLOCK);
            if (0) {
                osSyncPrintf("osSendMesg: dmap=%08x, mq=%08x, m=%08x \n", req, req->notifyQueue, req->notifyMsg);
            }
        }
    }
    osSyncPrintf("ＤＭＡマネージャスレッド実行終了\n");
}

s32 DmaMgr_SendRequestImpl(DmaRequest* req, void* ram, uintptr_t vrom, u32 size, u32 unk, OSMesgQueue* queue,
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
        osSyncPrintf("dmaEntryMsgQが一杯です。キューサイズの再検討をおすすめします。");
        LOG_NUM("(sizeof(dmaEntryMsgBufs) / sizeof(dmaEntryMsgBufs[0]))", ARRAY_COUNT(sDmaMgrMsgBuf), "../z_std_dma.c",
                952);
        osSyncPrintf(VT_RST);
    }

    osSendMesg(&sDmaMgrMsgQueue, (OSMesg)req, OS_MESG_BLOCK);
    return 0;
}

s32 DmaMgr_SendRequest0(void* ram, uintptr_t vrom, u32 size) {
    DmaRequest req;
    OSMesgQueue queue;
    OSMesg msg;
    s32 ret;

    osCreateMesgQueue(&queue, &msg, 1);
    ret = DmaMgr_SendRequestImpl(&req, ram, vrom, size, 0, &queue, NULL);
    if (ret == -1) {
        return ret;
    }

    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
    return 0;
}

void DmaMgr_Init(void) {
    const char** name;
    s32 idx;
    DmaEntry* iter;

    DmaMgr_DmaRomToRam((uintptr_t)_dmadataSegmentRomStart, _dmadataSegmentStart,
                       (u32)(_dmadataSegmentRomEnd - _dmadataSegmentRomStart));
    osSyncPrintf("dma_rom_ad[]\n");

    sDmaMgrIsRomCompressed = false;
    name = sDmaMgrFileNames;
    iter = gDmaDataTable;
    idx = 0;

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

    if ((uintptr_t)_bootSegmentRomStart != gDmaDataTable[0].vromEnd) {
        osSyncPrintf("_bootSegmentRomStart(%08x) != dma_rom_ad[0].rom_b(%08x)\n", _bootSegmentRomStart,
                     gDmaDataTable[0].vromEnd);
        Fault_AddHungupAndCrash("../z_std_dma.c", 1055);
    }

    osCreateMesgQueue(&sDmaMgrMsgQueue, sDmaMgrMsgBuf, ARRAY_COUNT(sDmaMgrMsgBuf));
    StackCheck_Init(&sDmaMgrStackInfo, sDmaMgrStack, STACK_TOP(sDmaMgrStack), 0, 0x100, "dmamgr");
    osCreateThread(&sDmaMgrThread, THREAD_ID_DMAMGR, DmaMgr_ThreadEntry, NULL, STACK_TOP(sDmaMgrStack),
                   THREAD_PRI_DMAMGR);
    osStartThread(&sDmaMgrThread);
}

s32 DmaMgr_SendRequest2(DmaRequest* req, void* ram, uintptr_t vrom, u32 size, u32 unk5, OSMesgQueue* queue, OSMesg msg,
                        const char* file, s32 line) {
    req->filename = file;
    req->line = line;
    return DmaMgr_SendRequestImpl(req, ram, vrom, size, unk5, queue, msg);
}

s32 DmaMgr_SendRequest1(void* ram, uintptr_t vrom, u32 size, const char* file, s32 line) {
    DmaRequest req;
    s32 ret;
    OSMesgQueue queue;
    OSMesg msg;
    s32 pad;

    req.filename = file;
    req.line = line;
    osCreateMesgQueue(&queue, &msg, 1);
    ret = DmaMgr_SendRequestImpl(&req, ram, vrom, size, 0, &queue, 0);
    if (ret == -1) {
        return ret;
    }

    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
    return 0;
}
