// Main interface for the 64DD from the rest of the game. Starts background
// threads and provides functions to submit commands to them.

#include "n64dd.h"

#include "libc64/sleep.h"
#include "array_count.h"
#include "fault.h"
#include "gfx.h"
#include "irqmgr.h"
#include "line_numbers.h"
#include "stack.h"
#include "stackcheck.h"
#include "sys_freeze.h"
#include "versions.h"
#include "audio.h"
#include "thread.h"

#pragma increment_block_number "ntsc-1.0:64 ntsc-1.1:64 ntsc-1.2:64 pal-1.0:64 pal-1.1:64"

typedef struct n64dd_CopyToRAM {
    /* 0x000 */ s32 diskStart;      // disk start
    /* 0x004 */ s32 diskEnd;        // disk end
    /* 0x008 */ uintptr_t ramStart; // ram start
    /* 0x00C */ uintptr_t ramEnd;   // ram end
    /* 0x010 */ UNK_PTR unk_010;    // s32?
    /* 0x014 */ char padding[0x104];
} n64dd_CopyToRAM; // size = 0x118

typedef struct n64dd_QueuedTransfersList { // This basically has a list of queued disk read commands
                                           // ready to be passed to an OSMesgQueue
    /* 0x00 */ OSMesg messages[30];
    /* 0x78 */ OSMesgQueue msgQueue;
    /* 0x90 */ IrqMgrClient IRQMgrC;
    /* 0x98 */ IrqMgr* pIRQMgr;
} n64dd_QueuedTransfersList; // size = 0x9C

s32 n64dd_CheckIfDiskIsValid(n64dd_driveCmdQueue* arg0);

void* pTmpReadBuf = &gN64DDDiskReadTemporaryBuffer;
s32 (*pCheckIfDiskIsValid)(n64dd_driveCmdQueue*) = n64dd_CheckIfDiskIsValid;

n64dd_QueuedTransfersList queuedDDTransfers;
n64dd_CopyToRAM DDLoad0;
n64dd_CopyToRAM* pDDLoad0;
n64dd_drivePacketData drivePacketData;
OSMesgQueue msgQueue0;
OSMesgQueue msgQueue1;
OSMesg queuedMessages0[1];
OSMesg queuedMessages1[1];
volatile u8 isNewFBAvailable; // bool?
volatile OSTime currentTime;
s32 isGameDiskCorrect; // 1 if disk gameName is correct, 2 otherwise
void* pUnkTxt0;        // pointers to some text
void* pUnkTxt1;
void* pUnkTxt2;
OSThread diskReadThread;
STACK(pStackTransfTrhead, 0x1000); // stack pointer of the transfer thread
StackEntry transfStackEntry;
STACK(pStackDDCommThread, 0x1000); // stack pointer of the communication thread (to send commands to the drive)
StackEntry commStackEntry;
UNK_TYPE B_801DBFC4; // unused?

/**
 * Checks if the DD is present.
 * @returns Disk drive status
 */
u32 n64dd_isDrivePresent(void) {
#if OOT_NTSC
    return LeoDriveExist();
#else
    return 0;
#endif
}

void n64dd_gfxHook(Gfx** gfxP) { // see game.c
}

/**
 * Stops currently playing audio sequences.
 */
void n64dd_stopSound(void) {
    if (isSoundStopped == 0) {
        func_800F6BDC(); // <- audio engine code.
        isSoundStopped = 1;
    }
}

s32 n64dd_isSoundStopped(void) {
    return isSoundStopped != 0;
}

// same as before
s32 n64dd_isSoundStopped2(void) {
    if (isSoundStopped != 0) {
        return 1;
    }
    return 1;
}

/**
 * Wait for all sound to finish playing.
 */
void n64dd_waitForSound(void) {
    n64dd_stopSound();
    while (n64dd_isSoundStopped2() == 0) {
        Sleep_Usec(16666); // 100000 / 6
    }
}

void n64dd_playSfx(void) {
    if (isSoundStopped != 0) {
        isSoundStopped = 0;
        func_800F6B3C(); // <- audio engine code.
    }
}

// boolean
s32 func_801C6FAC(void) {
    if (D_80121213 == 0) {
        return false;
    } else {
        D_80121213 = 0;
        return true;
    }
}

void func_801C6FD8(void) {
    while (!func_801C6FAC()) {
        Sleep_Usec(16666); // 100000 / 6
    }
}

// Adds a HungupAndCrash
void func_801C7018(void) {
    if (D_80121213 != 0) {
        Fault_AddHungupAndCrash("../z_n64dd.c", LN2(503, 551, 573));
    }

    D_80121213 = 1;
}

s32 n64dd_sendCmd5(void) {
    drivePacketData.cmdType = 5;
    return (&n64dd_parsePacketData)(&drivePacketData);
}

s32 n64dd_sendCmd10(void) {
    s32 phi_v1;

#if OOT_VERSION < PAL_1_0
    if (0) {}
#endif

    drivePacketData.cmdType = 10;
    phi_v1 = (&n64dd_parsePacketData)(&drivePacketData);
    if (phi_v1 < 0) {
        Freeze_CurrentThread();
    }
    return phi_v1;
}

s32 n64dd_isDiskCorrectInternal(void) {
    return isGameDiskCorrect == 1;
}

// Used by EnMag and FileChoose
s32 n64dd_isDiskCorrect(void) {
    return n64dd_isDiskCorrectInternal();
}

/**
 * Enqueues all queued disk transfers to be automatically performed
 * when the drive is ready.
 * @param queuedDiskTransfers A queue of all the disk transfers to be performed
 **/
void n64dd_enqueueDiskTransfers(void* queuedDiskTransfers) {
    static void* pSomeFramebuf;
    n64dd_QueuedTransfersList* pTransferList = (n64dd_QueuedTransfersList*)queuedDiskTransfers;
    s16* pOSRecvMesg;
    s32 exit;
    void* pNextFramebuf;

    pOSRecvMesg = NULL;
    pTransferList->pIRQMgr = &gIrqMgr;
    osCreateMesgQueue(&pTransferList->msgQueue, pTransferList->messages, ARRAY_COUNT(pTransferList->messages));
    IrqMgr_AddClient(pTransferList->pIRQMgr, &pTransferList->IRQMgrC, &pTransferList->msgQueue);
    exit = 0;
    do {
        osRecvMesg(&pTransferList->msgQueue, (OSMesg*)&pOSRecvMesg, OS_MESG_BLOCK);
        // The idea behind this is to wait for messages from the disk drive;
        // If there is an error, it is displayed on screen or the drive is reset
        // (maybe to try again?) or everything is fine and we do nothing else.
        switch (*pOSRecvMesg) {
            case 1: // Clear FB and display an error
                pNextFramebuf = osViGetNextFramebuffer();
                if (pSomeFramebuf != pNextFramebuf) {
                    pSomeFramebuf = pNextFramebuf;
                    isNewFBAvailable = 1;
                }
                func_801C8AA8();
                break;
            case 4:
                LeoReset();
                break;
            case 3:
                exit = 1;
                break;
        }
    } while (exit == 0);
    IrqMgr_RemoveClient(pTransferList->pIRQMgr, &pTransferList->IRQMgrC);
}

// seems to be waiting for the end of the frame.
#if OOT_VERSION >= NTSC_1_1
void n64dd_waitFrameEnd(void) {
    s32 temp;

    if (currentTime != 0) {
        temp = (osGetTime() - currentTime) * 64 / 3000;
        if (1000000 - temp > 0) {
            Sleep_Usec(1000000 - temp);
        }
    }
}
#endif

void func_801C7268(void) {
    s32 pad;
    s32 isSoundStopped;
    s32 sp1C;

    isSoundStopped = n64dd_isSoundStopped();
    if (isSoundStopped == 0) {
        n64dd_waitForSound();
    }
    isNewFBAvailable = 1;
    currentTime = 0;
    if (n64dd_sendCmd5() == 1) {
        n64dd_sendCmd10();
    } else if (isGameDiskCorrect != 0) {
        isGameDiskCorrect = 0;
    }
#if OOT_VERSION < NTSC_1_1
    if (currentTime != 0) {
        sp1C = (osGetTime() - currentTime) * 64 / 3000;

        // Remnants from debug statements?
        (void)(osGetTime() - currentTime);
        (void)((osGetTime() - currentTime) * 64 / 3000);
        (void)((osGetTime() - currentTime) * 64 / 3000);

        if (1000000 - sp1C > 0) {
            Sleep_Usec(1000000 - sp1C);
        }
    }
#else
    if (D_801D2EA8 == 1 || B_801E0F60 == 1 || B_801E0F64 == 1) {
        currentTime = osGetTime();
    }
    n64dd_waitFrameEnd();
#endif
    if (isSoundStopped == 0) {
        n64dd_playSfx();
    }
}

/**
 * Initializes a framebuffer.
 * @param buf The framebuffer
 */
void n64dd_initFB(void* arg0) {
    u16* curData;

    for (curData = (u16*)arg0; curData < (u16*)arg0 + SCREEN_WIDTH * SCREEN_HEIGHT; curData++) {
        *curData = 1;
    }
}

/**
 * Prints up to 3 rows of text to the screen.
 * @param pCharsRow1 The first row of text
 * @param pCharsRow2 The second row of text
 * @param pCharsRow3 The third row of text
 **/
void n64dd_printText(void* pCharsRow1, void* pCharsRow2, void* pCharsRow3) {
    void* pNextFrameBuf;

    if (pCharsRow1 != NULL || pCharsRow2 != NULL || pCharsRow3 != NULL) {
        pNextFrameBuf = (u8*)osViGetNextFramebuffer() + 0x20000000;
        if ((u32)pNextFrameBuf & 0xFFFFFF) {
            if (isNewFBAvailable != 0) {
                isNewFBAvailable = 0;
                n64dd_initFB(pNextFrameBuf);
                currentTime = osGetTime();
            }
            if (pCharsRow1 != NULL) {
                func_801CA1F0(pCharsRow1, 96, 32, 192, 16, 11, pNextFrameBuf, SCREEN_WIDTH);
            }
            if (pCharsRow2 != NULL) {
                func_801CA1F0(pCharsRow2, 0, 80, 320, 64, 11, pNextFrameBuf, SCREEN_WIDTH);
            }
            if (pCharsRow3 != NULL) {
                func_801CA1F0(pCharsRow3, 0, 176, 320, 32, 11, pNextFrameBuf, SCREEN_WIDTH);
            }
#if OOT_VERSION < PAL_1_0
            osViBlack(0);
#endif
        }
    }
}

void n64dd_setUnkTextPtrsAndPrint(void* newUnkTexPtr0, void* newUnkTexPtr1, void* newUnkTexPtr2) {
    s32 temp;

    if (newUnkTexPtr0 == NULL && newUnkTexPtr1 == NULL && newUnkTexPtr2 == NULL) {
        return;
    }

    if (isNewFBAvailable) {}

    if (newUnkTexPtr0 != 0) {
        pUnkTxt0 = newUnkTexPtr0;
    }
    if (newUnkTexPtr1 != 0) {
        pUnkTxt1 = newUnkTexPtr1;
    }
    if (newUnkTexPtr2 != 0) {
        pUnkTxt2 = newUnkTexPtr2;
    }
    n64dd_printText(newUnkTexPtr0, newUnkTexPtr1, newUnkTexPtr2);
}

void n64dd_waitPrintText(void) {
    Sleep_Msec(100);
    n64dd_printText(pUnkTxt0, pUnkTxt1, pUnkTxt2);
}

/**
 * Sets up and starts the data transfer thread. Returns immediately if the disk extras are already running.
 * @returns 0 on exit
 */
s32 n64dd_setupTransferThread(void) {
    if (n64dd_isDiskContentRunning != 0) {
        return 0;
    }

#if OOT_VERSION < PAL_1_0
    StackCheck_Init(&transfStackEntry, pStackTransfTrhead, STACK_TOP(pStackTransfTrhead), 0, 0x100, "ddmsg");
    osCreateThread(&diskReadThread, THREAD_ID_DDMSG, &n64dd_enqueueDiskTransfers, &queuedDDTransfers,
                   STACK_TOP(pStackTransfTrhead), THREAD_PRI_DDMSG);
    osStartThread(&diskReadThread);
#endif

    osCreateMesgQueue(&msgQueue0, queuedMessages0, ARRAY_COUNT(queuedMessages0));
    osCreateMesgQueue(&msgQueue1, queuedMessages1, ARRAY_COUNT(queuedMessages1));

    StackCheck_Init(&commStackEntry, pStackDDCommThread, STACK_TOP(pStackDDCommThread), 0, 0x100, "n64dd");

    drivePacketData.pCmdParam1 = &msgQueue0;
    drivePacketData.pCmdParam2 = &msgQueue1;
    drivePacketData.threadId = THREAD_ID_N64DD;
    drivePacketData.pStackCommThread = STACK_TOP(pStackDDCommThread);
    drivePacketData.threadPriority = THREAD_PRI_N64DD;
    drivePacketData.cmdType = 1;

    (&n64dd_parsePacketData)(&drivePacketData);

    D_80121213 = 1;
    func_801C6FD8();

    drivePacketData.cmdType = 2;
    drivePacketData.unk_10 = 6;
    drivePacketData.pDmaMgr = &DmaMgr_DmaFromDriveRom;
    drivePacketData.pPrintText = &n64dd_setUnkTextPtrsAndPrint;
    (&n64dd_parsePacketData)(&drivePacketData);

    drivePacketData.cmdType = 13;
    (&n64dd_parsePacketData)(&drivePacketData);

#if OOT_VERSION >= PAL_1_0
    StackCheck_Init(&transfStackEntry, pStackTransfTrhead, STACK_TOP(pStackTransfTrhead), 0, 0x100, "ddmsg");
    osCreateThread(&diskReadThread, THREAD_ID_DDMSG, &n64dd_enqueueDiskTransfers, &queuedDDTransfers,
                   STACK_TOP(pStackTransfTrhead), THREAD_PRI_DDMSG);
    osStartThread(&diskReadThread);
#endif

    return 0;
}

s32 func_801C7818(void) {
#if OOT_VERSION >= NTSC_1_1
    isNewFBAvailable = 1;
    currentTime = 0;
#endif

    drivePacketData.cmdType = 12;
    (&n64dd_parsePacketData)(&drivePacketData);

    while (func_801C81C4() == 0) {
        // the number 16666 sounds like it could be 1 frame (at 60 frames per second)
        Sleep_Usec(1000000 * 1 / 60);
    }

#if OOT_VERSION >= NTSC_1_1
    if (D_801D2EA8 == 1 || B_801E0F60 == 1 || B_801E0F64 == 1) {
        currentTime = osGetTime();
    }
    n64dd_waitFrameEnd();
#endif

    if (func_801C81C4() != 2) {
        n64dd_waitPrintText();
        Freeze_CurrentThread();
        return -3;
    }

    func_801C7018();
    n64dd_isDiskContentRunning = 1;
    return 0;
}

s32 n64dd_transfThreadStatus(void) {
    s32 status = n64dd_setupTransferThread();

    if (status == 0) {
        status = func_801C7818();
    }
    return status;
}

s32 n64dd_cmd0(void) {
    drivePacketData.cmdType = 0;
    return (&n64dd_parsePacketData)(&drivePacketData);
}

void func_801C7920(s32 arg0, void* arg1, s32 arg2) {
    drivePacketData.pReadBuf = arg1;
    drivePacketData.pCmdParam1 = (void*)arg0;
    drivePacketData.pCmdParam2 = (void*)arg2;
    drivePacketData.cmdType = 3;
    (&n64dd_parsePacketData)(&drivePacketData);
    osGetTime();
    drivePacketData.cmdType = 6;
    while ((&n64dd_parsePacketData)(&drivePacketData) != 0) {
        Sleep_Usec(16666); // 100000 / 6
    }
    drivePacketData.cmdType = 7;
    if ((&n64dd_parsePacketData)(&drivePacketData) != 0) {
        Freeze_CurrentThread();
    }
}

void func_801C79CC(void* arg0, s32 arg1, s32 arg2) {
    drivePacketData.pReadBuf = arg0;
    drivePacketData.pCmdParam1 = (void*)arg1;
    drivePacketData.pCmdParam2 = (void*)arg2;
    drivePacketData.cmdType = 4;
    (&n64dd_parsePacketData)(&drivePacketData);
}

void n64dd_empty(LEODiskID* arg0) {
}

/**
 * Checks diskId, sets isGameDiskCorrect and returns true if diskId is correct.
 * @param diskData A communication packet from the disk drive. This gets us info about the currently inserted disk.
 * @returns true if diskId is correct
 **/
s32 n64dd_CheckIfDiskIsValid(n64dd_driveCmdQueue* diskData) {
    static LEODiskID curDiskId;
    static s32 isDiskIdSet; // bool

    n64dd_empty(&diskData->diskId);
    if (!isDiskIdSet) {
#if OOT_NTSC
        if (bcmp(diskData->diskId.gameName, "EZLJ", 4) == 0 || bcmp(diskData->diskId.gameName, "EZLE", 4) == 0)
#else
        if (bcmp(diskData->diskId.gameName, "EZLP", 4) == 0)
#endif
        {
            curDiskId = diskData->diskId;
            isDiskIdSet = true;
            isGameDiskCorrect = 1;
        } else {
            isGameDiskCorrect = 2;
        }
    } else if (bcmp(&curDiskId, &diskData->diskId, sizeof(LEODiskID)) == 0) {
        isGameDiskCorrect = 1;
    } else {
        isGameDiskCorrect = 2;
    }
    return isGameDiskCorrect == 1;
}

/**
 * Translates byte position to LBA and byte offset.
 * @param startLba The LBA to start reading from
 * @param adjustedLbaCount The resultant LBA, accounting for the first (reserved) disk sector.
 * @param lba A pointer to the byte offset?
 * @returns The drive status.
 **/
s32 n64dd_offsetToBlock(s32 startLba, s32* adjustedLbaCount, s32* lba) {
    s32 diskData2;
    s32 diskReadStatus;
    s32 lbaCount;
    s32 diskData;
    s32 diskReadStatus2;

    diskReadStatus = LeoByteToLBA(1, startLba + 1, &diskData2); // accounts for disk header
    if (diskReadStatus != LEO_ERROR_GOOD) {
        return diskReadStatus;
    }
    lbaCount = diskData2 - 1;
    if (diskData2 == 1) {
        diskData = 0;
    } else {
        diskReadStatus2 = LeoLBAToByte(1, lbaCount, &diskData);
        if (diskReadStatus2 != LEO_ERROR_GOOD) {
            return diskReadStatus2;
        }
    }
    *adjustedLbaCount = lbaCount + 1;
    *lba = startLba - diskData;
    return LEO_ERROR_GOOD;
}

/**
 * Wrapper for LeoLBAToByte.
 * @param startLba The starting LBA
 * @returns The corresponding byte offset if the read was successful, else returns 0.
 */
s32 n64dd_LbaToByte(s32 startLba) s32 bytes;

if (LeoLBAToByte(startLba, 1, &bytes) == LEO_ERROR_GOOD) {
    return bytes;
}
return 0;
}

/**
 * Copies bytes from disk to a destination buffer.
 * @param dest A pointer to the destination buffer
 * @param offset The offset from the start of the disk to read from
 * @param size How many bytes to read
 **/
void n64dd_loadData(void* dest, s32 offset, s32 size) {
    s32 pLbaData;
    s32 pLbaData2;
    s32 pReadByteOffset;
    s32 pReadByteOffset2;
    void* pTmpDDReadBuf;
    s32 lbaBlockNum;
    s32 var_s1;
    s32 temp_v1_2;

    func_801C6FD8();
    n64dd_waitForSound();
    isNewFBAvailable = 1;
    currentTime = 0;
    n64dd_offsetToBlock(offset, &pLbaData, &pReadByteOffset);
    n64dd_offsetToBlock(offset + size, &pLbaData2, &pReadByteOffset2);
    pTmpDDReadBuf = pTmpReadBuf;
    if (pLbaData == pLbaData2) {
        func_801C7920(pLbaData, pTmpDDReadBuf, n64dd_LbaToByte(pLbaData));
        bcopy((u8*)pTmpDDReadBuf + pReadByteOffset, dest, size);
    } else {
        var_s1 = 0;
        func_801C7920(pLbaData, pTmpDDReadBuf, n64dd_LbaToByte(pLbaData));
        bcopy((u8*)pTmpDDReadBuf + pReadByteOffset, dest, n64dd_LbaToByte(pLbaData) - pReadByteOffset);
        if (pLbaData + 1 < pLbaData2) {
            for (lbaBlockNum = pLbaData + 1; lbaBlockNum < pLbaData2; lbaBlockNum++) {
                var_s1 += n64dd_LbaToByte(lbaBlockNum);
            }
            func_801C7920(pLbaData + 1, (u8*)dest + n64dd_LbaToByte(pLbaData) - pReadByteOffset, var_s1);
        }
        if (pReadByteOffset2 > 0) {
            func_801C7920(pLbaData2, pTmpDDReadBuf, n64dd_LbaToByte(pLbaData2));
            bcopy((u8*)pTmpDDReadBuf, (u8*)dest + n64dd_LbaToByte(pLbaData) - pReadByteOffset + var_s1,
                  pReadByteOffset2);
        }
    }
#if OOT_VERSION < NTSC_1_1
    if (currentTime != 0) {
        temp_v1_2 = (osGetTime() - currentTime) * 64 / 3000;
        if (1000000 - temp_v1_2 > 0) {
            Sleep_Usec(1000000 - temp_v1_2);
        }
    }
#else
    n64dd_waitFrameEnd();
#endif
    func_801C7018();
    n64dd_playSfx();
}

void n64dd_empty2(void) {
}

/**
 * Sets up buffers and reads data from the disk given a global DDLoad structure...?
 * @returns -1 if the pointer to the DDLoad struct already exists, 0 on success
 **/
s32 n64dd_setupDiskRead(void) {
    s32 diskReadSize;
    s32 ramWriteSize;
    s32 sp1C;
    uintptr_t pLoadOffset;

    if (pDDLoad0 != NULL) {
        return -1;
    }
    pDDLoad0 = &DDLoad0;
    n64dd_loadData(pDDLoad0, 0x1060, 0x118);
    diskReadSize = pDDLoad0->diskEnd - pDDLoad0->diskStart;
    ramWriteSize = pDDLoad0->ramEnd - pDDLoad0->ramStart;
    pLoadOffset = pDDLoad0->ramStart + diskReadSize;
    n64dd_loadData((void*)pDDLoad0->ramStart, pDDLoad0->diskStart, diskReadSize);
    bzero((void*)pLoadOffset, ramWriteSize - diskReadSize);
    func_800AD4C0(pDDLoad0->unk_010);
    return 0;
}

s32 n64dd_clearCopyBufs(void) {
    uintptr_t pRamStart;
    n64dd_CopyToRAM* pCpyToRam;

    if (pDDLoad0 == 0) {
        return -1;
    }

    // Function from code
    func_800AD51C();

    pCpyToRam = pDDLoad0;
    pRamStart = pCpyToRam->ramStart;
    bzero((void*)pRamStart, pCpyToRam->ramEnd - pRamStart);
    bzero(pDDLoad0, sizeof(n64dd_CopyToRAM));
    pDDLoad0 = 0;
    return 0;
}

void n64dd_SetDiskVersion(s32 arg0) {
    if (arg0 != 0) {
        if (pDDLoad0 == 0) {
            n64dd_setupDiskRead();
        }
    } else if (pDDLoad0 != 0) {
        n64dd_clearCopyBufs();
    }
}
