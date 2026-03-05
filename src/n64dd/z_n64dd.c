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
    /* 0x000 */ s32 diskStart;       // disk start
    /* 0x004 */ s32 diskEnd;       // disk end
    /* 0x008 */ uintptr_t RAMStart; // ram start
    /* 0x00C */ uintptr_t RAMEnd; // ram end
    /* 0x010 */ UNK_PTR unk_010; // s32?
    /* 0x014 */ char padding[0x104];
} n64dd_CopyToRAM; // size = 0x118

typedef struct n64dd_QueuedTransfersList { // I think this basically has a list of queued disk read commands 
                                            // ready to be passed to an OSMesgQueue
    /* 0x00 */ OSMesg messages[30];
    /* 0x78 */ OSMesgQueue msgQueue;
    /* 0x90 */ IrqMgrClient IRQMgrC;
    /* 0x98 */ IrqMgr* pIRQMgr;
} n64dd_QueuedTransfersList; // size = 0x9C

s32 n64dd_CheckIfDiskIsValid(n64dd_CommPacket* arg0);

void* tmpDDReadBuf = &gN64DDDiskReadTemporaryBuffer;
s32 (*ptr_n64dd_CheckIfDiskIsValid)(n64dd_CommPacket*) = n64dd_CheckIfDiskIsValid;

n64dd_QueuedTransfersList queuedDDTransfers;
n64dd_CopyToRAM DDLoad0;
n64dd_CopyToRAM* pDDLoad0;
struct_801D9D50 B_801D9D50;
OSMesgQueue msgQueue0; 
OSMesgQueue msgQueue1;
OSMesg queuedMessages0[1];
OSMesg queuedMessages1[1];
volatile u8 NewFramebufAvailable; // maybe this is a bool? it's never set to anything other than 0 or 1
volatile OSTime currentTime;
s32 isGameDiskCorrect; // 1 if disk gameName is correct, 2 otherwise
                        // shouldn't it be u8? or is s32 there for matching?
void* B_801D9DCC;
void* B_801D9DD0;
void* B_801D9DD4;
OSThread DiskReadThread; // not too sure but seems likely
STACK(B_801D9F88, 0x1000);
StackEntry B_801DAF88;
STACK(B_801DAFA8, 0x1000);
StackEntry B_801DBFA8;
UNK_TYPE B_801DBFC4; // unused?

u32 n64dd_CheckIfDriveExists(void) {
#if OOT_NTSC
    return LeoDriveExist();
#else
    return 0;
#endif
}

void n64dd_gfxHook(Gfx** gfxP) { // hook? see game.c
}

void n64dd_StopMusic(void) {
    if (n64dd_hasMusicBeenStopped == 0) { // music stop hook???
        Audio_StopSequencesAndWaitForNoteEnd();
        n64dd_hasMusicBeenStopped = 1;
    }
}

s32 n64dd_hasMusicBeenStoppedWrapper(void) {
    return n64dd_hasMusicBeenStopped != 0;
}

s32 n64dd_hasMusicBeenStoppedWrapper2(void) {
    if (n64dd_hasMusicBeenStopped != 0) {
        return 1;
    }
    return 1;
}

void n64dd_waitForMusicToStop(void) {
    n64dd_StopMusic();
    while (n64dd_hasMusicBeenStoppedWrapper2() == 0) {
        Sleep_Usec(16666); // 100000 / 6
    }
}

void func_801C6F78(void) {
    if (n64dd_hasMusicBeenStopped != 0) {
        n64dd_hasMusicBeenStopped = 0;
        Audio_PlaySfx();
    }
}

// boolean
s32 func_801C6FAC(void) {
    if (n64dd_unk1 == 0) {
        return false;
    } else {
        n64dd_unk1 = 0;
        return true;
    }
}

void func_801C6FD8(void) {
    while (!func_801C6FAC()) {
        Sleep_Usec(16666); // 100000 / 6
    }
}

// Adds a HungupAndCrash
void crashIf_n64dd_unk1_IsNonzero(void) {
    if (n64dd_unk1 != 0) {
        Fault_AddHungupAndCrash("../z_n64dd.c", LN2(503, 551, 573));
    }

    n64dd_unk1 = 1;
}

s32 func_801C7064(void) {
    B_801D9D50.unk_00 = 5;
    return (&func_801C8000)(&B_801D9D50);
}

s32 func_801C7098(void) {
    s32 phi_v1;

#if OOT_VERSION < PAL_1_0
    if (0) {}
#endif

    B_801D9D50.unk_00 = 10;
    phi_v1 = (&func_801C8000)(&B_801D9D50);
    if (phi_v1 < 0) {
        func_800D31A0();
    }
    return phi_v1;
}

s32 n64dd_checkIfGameDiskIsCorrectInternal(void) {
    return isGameDiskCorrect == 1;
}

// Used by EnMag and FileChoose
s32 n64dd_checkIfGameDiskIsCorrect(void) {
    return n64dd_checkIfGameDiskIsCorrectInternal();
}

/**
 * Enqueues all queued disk transfers to be automatically performed
 * when the drive is ready.
 * @param queuedDiskTransfers A queue of all the disk transfers to be performed
**/
void n64dd_EnqueueDiskTransfers(void* queuedDiskTransfers) {
    static void* pSomeFramebuf;
    n64dd_QueuedTransfersList* pTransferList = (n64dd_QueuedTransfersList*) queuedDiskTransfers;
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
        // I think that the idea is to wait for messages from the disk drive;
        // If there is an error, it is displayed on screen or the drive is reset 
        // (maybe to try again?) or everything is fine and we do nothing else.
        switch (*pOSRecvMesg) {
            case 1: // Clear FB and display an error
                pNextFramebuf = osViGetNextFramebuffer();
                if (pSomeFramebuf != pNextFramebuf) {
                    pSomeFramebuf = pNextFramebuf;
                    NewFramebufAvailable = 1;
                }
                n64dd_printDiskErrors();
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

#if OOT_VERSION >= NTSC_1_1
// seems to be waiting out the rest of the frame.
void n64dd_throttleFramerate(void) {
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
    s32 sp20;
    s32 sp1C;

    sp20 = n64dd_hasMusicBeenStoppedWrapper();
    if (sp20 == 0) {
        n64dd_waitForMusicToStop();
    }
    NewFramebufAvailable = 1;
    currentTime = 0;
    if (func_801C7064() == 1) {
        func_801C7098();
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
    if (D_801D2EA8 == 1 || isErrorTexDisplayed == 1 || B_801E0F64 == 1) {
        currentTime = osGetTime();
    }
    n64dd_throttleFramerate();
#endif
    if (sp20 == 0) {
        func_801C6F78();
    }
}

// Clears framebuffer
void func_801C7438(void* arg0) {
    u16* var_v0;

    for (var_v0 = (u16*)arg0; var_v0 < (u16*)arg0 + SCREEN_WIDTH * SCREEN_HEIGHT; var_v0++) {
        *var_v0 = 1;
    }
}

void func_801C746C(void* arg0, void* arg1, void* arg2) {
    void* sp2C;

    if (arg0 != NULL || arg1 != NULL || arg2 != NULL) {
        sp2C = (u8*)osViGetNextFramebuffer() + 0x20000000;
        if ((u32)sp2C & 0xFFFFFF) {
            if (NewFramebufAvailable != 0) {
                NewFramebufAvailable = 0;
                func_801C7438(sp2C);
                currentTime = osGetTime();
            }
            if (arg0 != NULL) {
                func_801CA1F0(arg0, 96, 32, 192, 16, 11, sp2C, SCREEN_WIDTH);
            }
            if (arg1 != NULL) {
                func_801CA1F0(arg1, 0, 80, 320, 64, 11, sp2C, SCREEN_WIDTH);
            }
            if (arg2 != NULL) {
                func_801CA1F0(arg2, 0, 176, 320, 32, 11, sp2C, SCREEN_WIDTH);
            }
#if OOT_VERSION < PAL_1_0
            osViBlack(0);
#endif
        }
    }
}

void func_801C75BC(void* arg0, void* arg1, void* arg2) {
    s32 temp;

    if (arg0 == NULL && arg1 == NULL && arg2 == NULL) {
        return;
    }

    if (NewFramebufAvailable) {}

    if (arg0 != 0) {
        B_801D9DCC = arg0;
    }
    if (arg1 != 0) {
        B_801D9DD0 = arg1;
    }
    if (arg2 != 0) {
        B_801D9DD4 = arg2;
    }
    func_801C746C(arg0, arg1, arg2);
}

void func_801C761C(void) {
    Sleep_Msec(100);
    func_801C746C(B_801D9DCC, B_801D9DD0, B_801D9DD4);
}

s32 func_801C7658(void) {
    if (D_80121212 != 0) {
        return 0;
    }

#if OOT_VERSION < PAL_1_0
    StackCheck_Init(&B_801DAF88, B_801D9F88, STACK_TOP(B_801D9F88), 0, 0x100, "ddmsg");
    osCreateThread(&DiskReadThread, THREAD_ID_DDMSG, &n64dd_EnqueueDiskTransfers, &queuedDDTransfers, STACK_TOP(B_801D9F88), THREAD_PRI_DDMSG);
    osStartThread(&DiskReadThread);
#endif

    osCreateMesgQueue(&msgQueue0, queuedMessages0, ARRAY_COUNT(queuedMessages0));
    osCreateMesgQueue(&msgQueue1, queuedMessages1, ARRAY_COUNT(queuedMessages1));

    StackCheck_Init(&B_801DBFA8, B_801DAFA8, STACK_TOP(B_801DAFA8), 0, 0x100, "n64dd");

    B_801D9D50.unk_1C = &msgQueue0;
    B_801D9D50.unk_20 = &msgQueue1;
    B_801D9D50.unk_24 = THREAD_ID_N64DD;
    B_801D9D50.unk_28 = STACK_TOP(B_801DAFA8);
    B_801D9D50.unk_2C = THREAD_PRI_N64DD;
    B_801D9D50.unk_00 = 1;

    (&func_801C8000)(&B_801D9D50);

    n64dd_unk1 = 1;
    func_801C6FD8();

    B_801D9D50.unk_00 = 2;
    B_801D9D50.unk_10 = 6;
    B_801D9D50.unk_14 = &DmaMgr_DmaFromDriveRom;
    B_801D9D50.unk_0C = &func_801C75BC;
    (&func_801C8000)(&B_801D9D50);

    B_801D9D50.unk_00 = 13;
    (&func_801C8000)(&B_801D9D50);

#if OOT_VERSION >= PAL_1_0
    StackCheck_Init(&B_801DAF88, B_801D9F88, STACK_TOP(B_801D9F88), 0, 0x100, "ddmsg");
    osCreateThread(&DiskReadThread, THREAD_ID_DDMSG, &n64dd_EnqueueDiskTransfers, &queuedDDTransfers, STACK_TOP(B_801D9F88), THREAD_PRI_DDMSG);
    osStartThread(&DiskReadThread);
#endif

    return 0;
}

s32 func_801C7818(void) {
#if OOT_VERSION >= NTSC_1_1
    NewFramebufAvailable = 1;
    currentTime = 0;
#endif

    B_801D9D50.unk_00 = 12;
    (&func_801C8000)(&B_801D9D50);

    while (func_801C81C4() == 0) {
        // the number 16666 sounds like it could be 1 frame (at 60 frames per second)
        Sleep_Usec(1000000 * 1 / 60);
    }

#if OOT_VERSION >= NTSC_1_1
    if (D_801D2EA8 == 1 || isErrorTexDisplayed == 1 || B_801E0F64 == 1) {
        currentTime = osGetTime();
    }
    n64dd_throttleFramerate();
#endif

    if (func_801C81C4() != 2) {
        func_801C761C();
        func_800D31A0();
        return -3;
    }

    crashIf_n64dd_unk1_IsNonzero();
    D_80121212 = 1;
    return 0;
}

s32 func_801C78B8(void) {
    s32 phi_v1 = func_801C7658();

    if (phi_v1 == 0) {
        phi_v1 = func_801C7818();
    }
    return phi_v1;
}

s32 func_801C78F0(void) {
    B_801D9D50.unk_00 = 0;
    return (&func_801C8000)(&B_801D9D50);
}

void func_801C7920(s32 arg0, void* arg1, s32 arg2) {
    B_801D9D50.unk_18 = arg1;
    B_801D9D50.unk_1C = (void*)arg0;
    B_801D9D50.unk_20 = (void*)arg2;
    B_801D9D50.unk_00 = 3;
    (&func_801C8000)(&B_801D9D50);
    osGetTime();
    B_801D9D50.unk_00 = 6;
    while ((&func_801C8000)(&B_801D9D50) != 0) {
        Sleep_Usec(16666); // 100000 / 6
    }
    B_801D9D50.unk_00 = 7;
    if ((&func_801C8000)(&B_801D9D50) != 0) {
        func_800D31A0();
    }
}

void func_801C79CC(void* arg0, s32 arg1, s32 arg2) {
    B_801D9D50.unk_18 = arg0;
    B_801D9D50.unk_1C = (void*)arg1;
    B_801D9D50.unk_20 = (void*)arg2;
    B_801D9D50.unk_00 = 4;
    (&func_801C8000)(&B_801D9D50);
}

void func_801C7A10(LEODiskID* arg0) {
}

// Checks diskId, sets isGameDiskCorrect and returns true if diskId is correct
s32 n64dd_CheckIfDiskIsValid(n64dd_CommPacket* arg0) {
    static LEODiskID B_801DBFD0;
    static s32 B_801DBFF0; // bool

    func_801C7A10(&arg0->diskId);
    if (!B_801DBFF0) {
#if OOT_NTSC
        if (bcmp(arg0->diskId.gameName, "EZLJ", 4) == 0 || bcmp(arg0->diskId.gameName, "EZLE", 4) == 0)
#else
        if (bcmp(arg0->diskId.gameName, "EZLP", 4) == 0)
#endif
        {
            B_801DBFD0 = arg0->diskId;
            B_801DBFF0 = true;
            isGameDiskCorrect = 1;
        } else {
            isGameDiskCorrect = 2;
        }
    } else if (bcmp(&B_801DBFD0, &arg0->diskId, sizeof(LEODiskID)) == 0) {
        isGameDiskCorrect = 1;
    } else {
        isGameDiskCorrect = 2;
    }
    return isGameDiskCorrect == 1;
}

// Translates byte position to LBA and byte offset
s32 func_801C7B48(s32 arg0, s32* arg1, s32* arg2) {
    s32 sp2C;
    s32 temp_v0_2;
    s32 sp24;
    s32 sp20;
    s32 temp_v0;

    temp_v0_2 = LeoByteToLBA(1, arg0 + 1, &sp2C);
    if (temp_v0_2 != LEO_ERROR_GOOD) {
        return temp_v0_2;
    }
    sp24 = sp2C - 1;
    if (sp2C == 1) {
        sp20 = 0;
    } else {
        temp_v0 = LeoLBAToByte(1, sp24, &sp20);
        if (temp_v0 != LEO_ERROR_GOOD) {
            return temp_v0;
        }
    }
    *arg1 = sp24 + 1;
    *arg2 = arg0 - sp20;
    return LEO_ERROR_GOOD;
}

s32 func_801C7BEC(s32 startLBA) {
    s32 bytes;

    if (LeoLBAToByte(startLBA, 1, &bytes) == LEO_ERROR_GOOD) {
        return bytes;
    }
    return 0;
}

// Copies bytes from disk to arg0
void func_801C7C1C(void* dest, s32 offset, s32 size) {
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    void* sp4C;
    s32 var_s0;
    s32 var_s1;
    s32 temp_v1_2;

    func_801C6FD8();
    n64dd_waitForMusicToStop();
    NewFramebufAvailable = 1;
    currentTime = 0;
    func_801C7B48(offset, &sp5C, &sp54);
    func_801C7B48(offset + size, &sp58, &sp50);
    sp4C = tmpDDReadBuf;
    if (sp5C == sp58) {
        func_801C7920(sp5C, sp4C, func_801C7BEC(sp5C));
        bcopy((u8*)sp4C + sp54, dest, size);
    } else {
        var_s1 = 0;
        func_801C7920(sp5C, sp4C, func_801C7BEC(sp5C));
        bcopy((u8*)sp4C + sp54, dest, func_801C7BEC(sp5C) - sp54);
        if (sp5C + 1 < sp58) {
            for (var_s0 = sp5C + 1; var_s0 < sp58; var_s0++) {
                var_s1 += func_801C7BEC(var_s0);
            }
            func_801C7920(sp5C + 1, (u8*)dest + func_801C7BEC(sp5C) - sp54, var_s1);
        }
        if (sp50 > 0) {
            func_801C7920(sp58, sp4C, func_801C7BEC(sp58));
            bcopy((u8*)sp4C, (u8*)dest + func_801C7BEC(sp5C) - sp54 + var_s1, sp50);
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
    n64dd_throttleFramerate();
#endif
    crashIf_n64dd_unk1_IsNonzero();
    func_801C6F78();
}

void func_801C7E78(void) {
}

s32 func_801C7E80(void) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    uintptr_t sp18;

    if (pDDLoad0 != NULL) {
        return -1;
    }
    pDDLoad0 = &DDLoad0;
    func_801C7C1C(pDDLoad0, 0x1060, 0x118);
    sp24 = pDDLoad0->diskEnd - pDDLoad0->diskStart;
    sp20 = pDDLoad0->RAMEnd - pDDLoad0->RAMStart;
    sp18 = pDDLoad0->RAMStart + sp24;
    func_801C7C1C((void*)pDDLoad0->RAMStart, pDDLoad0->diskStart, sp24);
    bzero((void*)sp18, sp20 - sp24);
    func_800AD4C0(pDDLoad0->unk_010);
    return 0;
}

s32 func_801C7F24(void) {
    uintptr_t temp_a0;
    n64dd_CopyToRAM* temp_v0;

    if (pDDLoad0 == 0) {
        return -1;
    }

    // Function from code
    func_800AD51C();

    temp_v0 = pDDLoad0;
    temp_a0 = temp_v0->RAMStart;
    bzero((void*)temp_a0, temp_v0->RAMEnd - temp_a0);
    bzero(pDDLoad0, sizeof(n64dd_CopyToRAM));
    pDDLoad0 = 0;
    return 0;
}

void n64dd_SetDiskVersion(s32 arg0) {
    if (arg0 != 0) {
        if (pDDLoad0 == 0) {
            func_801C7E80();
        }
    } else if (pDDLoad0 != 0) {
        func_801C7F24();
    }
}
