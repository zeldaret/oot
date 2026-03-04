// Lower-level command processing in a background thread
#include "n64dd.h"

#include "libc64/sleep.h"
#include "attributes.h"

s32 D_801D2EA0 = 0;
u8* pErrorCodeTexture = NULL;
s32 isErrorCodeDisplayed = 0;
u8* pErrorMsgTexture = NULL; 
u8* pErrScreenTexture = NULL;
void (*pSomeFun)(void*, void*, void*) = NULL; // what is this?

s32 isErrorTexDisplayed;
s32 isErrorScreenDisplayed;


void n64ddError_SetErrorCodeTexture(s32 errorNum) {
    pErrorCodeTexture = n64ddError_GetPtrToErrorCodeTexture(errorNum);
    isErrorCodeDisplayed = 1;
}


void n64ddError_ClearErrorMsgTexture(void) {
    if (isErrorCodeDisplayed == 1) {
        pErrorCodeTexture = n64dd_clearErrorCodeTexBuf();
        isErrorCodeDisplayed = 0;
    }
}


void n64ddError_SetErrorMsgTexture(s32 errorNum) {
    pErrorMsgTexture = n64ddError_GetErrorMsgTexture(errorNum);
    isErrorTexDisplayed = 1;
}


void n64ddError_ClearErrorMsgTexBuf(void) {
    if (isErrorTexDisplayed == 1) {
        pErrorMsgTexture = n64dd_clearErrorMsgTexBuf();
        isErrorTexDisplayed = 0;
    }
}


void func_801C8A30(s32 errorNum) {
    pErrScreenTexture = n64dd_clearErrorMsgAndCodeBufAndPrintErr(errorNum);
    isErrorScreenDisplayed = 1;
}

// Clear error message something
void func_801C8A64(void) {
    if (isErrorScreenDisplayed == 1) {
        pErrScreenTexture = n64dd_clearErrorMsgAndCodeBuf();
        isErrorScreenDisplayed = 0;
    }
}

// Wait for OS message and print an error?
void n64dd_printDiskErrors(void) {
    osRecvMesg(pAllMessageQueues[1], NULL, OS_MESG_NOBLOCK); // yields the thread until there is a message on the queue

    if ((pSomeFun != NULL) && (D_801D2EA0 == 0)) {
        u32 interruptStatus = osSetIntMask(OS_IM_NONE); // disable all interrupts
        void* cpyPtrErrorCodeTex = pErrorCodeTexture;
        void* cpyErrorMsgTex = pErrorMsgTexture;
        void* cpyErrScreenTex = pErrScreenTexture;

        pErrorCodeTexture = NULL;
        pErrorMsgTexture = NULL;
        pErrScreenTexture = NULL;
        osSetIntMask(interruptStatus); // set interrupt status to what it was
        pSomeFun(cpyPtrErrorCodeTex, cpyErrorMsgTex, cpyErrScreenTex);
    }
}

void func_801C8B58(s32 arg0, s32 arg1, s32 arg2) {
    n64ddError_SetErrorCodeTexture(arg0);
    n64ddError_SetErrorMsgTexture(arg1);
    func_801C8A30(arg2);
}

void func_801C8B90(void) {
    n64ddError_ClearErrorMsgTexture();
    n64ddError_ClearErrorMsgTexBuf();
    func_801C8A64();
}

s32 func_801C8BC0(n64dd_CommPacket* arg0) {
    if ((arg0->unk_68 < 0x25) || (arg0->unk_68 >= 0x29)) {
        if ((arg0->unk_68 != 0x1F) && (arg0->unk_68 != 0x20)) {
            n64ddError_SetErrorCodeTexture(arg0->unk_68);
            n64ddError_SetErrorMsgTexture(3);
        }
    }
    LeoClearQueue();
    return 4;
}

s32 func_801C8C1C(n64dd_CommPacket* arg0) {
    s32 var_s0;

    do {
        var_s0 = 0;
        Sleep_Msec(60);
        func_801C82E0(arg0);

        switch (arg0->unk_68) {
            case 0x2A:
                func_801C8A64();
                return 0;
            case 0x22:
                func_801C8A64();
                LeoClearQueue();
                return 3;
            case 0:
                func_801C8A30(6);
                FALLTHROUGH;
            case 0x23:
                var_s0 = 1;
                break;
        }
    } while (var_s0 != 0);

    func_801C8A64();
    return func_801C8BC0(arg0);
}

s32 func_801C8CEC(n64dd_CommPacket* arg0) {
    switch (arg0->unk_68) {
        case 0x22:
            func_801C8B90();
            LeoClearQueue();
            return 3;
        case 0x2:
            n64ddError_SetErrorCodeTexture(arg0->unk_68);
            func_801C8A30(5);
            return 9;
        case 0x0:
            func_801C8B90();
            return 0;
        case 0x2B:
            if (arg0->unk_65 == 0) {
                func_801C8B90();
                arg0->unk_65 = 2;
                return 1;
            }
            FALLTHROUGH;
        default:
            func_801C8B90();
            return func_801C8BC0(arg0);
        case 0x23:
            return 9;
    }
}

s32 func_801C8DC0(n64dd_CommPacket* arg0) {
    s32 temp_v0;

    while (true) {
        func_801C8298(arg0);
        switch (arg0->unk_68) {
            case 0x31:
                n64ddError_SetErrorCodeTexture(arg0->unk_68);
                n64ddError_SetErrorMsgTexture(2);
                return 5;
            case 0x2A:
                func_801C8B90();
                return 5;
        }
        temp_v0 = func_801C8CEC(arg0);
        if (temp_v0 != 9) {
            return temp_v0;
        }
        Sleep_Msec(60);
    }
}

s32 func_801C8E70(n64dd_CommPacket* arg0) {
    s32 temp_a0;
    s32 temp_v0;

    while (true) {
        Sleep_Msec(60);
        func_801C8298(arg0);

        switch (arg0->unk_68) {
            case 0x23:
                continue;
            case 0x31:
                n64ddError_SetErrorCodeTexture(arg0->unk_68);
                n64ddError_SetErrorMsgTexture(2);
                FALLTHROUGH;
            case 0x2A:
                func_801C8A30(4);
                continue;
        }

        temp_v0 = func_801C8CEC(arg0);
        if (temp_v0 != 9) {
            return temp_v0;
        }
    }
}

s32 func_801C8F1C(n64dd_CommPacket* arg0) {
    if (ptr_n64dd_CheckIfDiskIsValid != NULL) {
        return ptr_n64dd_CheckIfDiskIsValid(arg0);
    }
    return 1;
}

s32 func_801C8F58(n64dd_CommPacket* arg0) {
    s32 temp_v0;

    while (true) {
        temp_v0 = func_801C8E70(arg0);
        if (temp_v0 == 3 || temp_v0 == 4) {
            return temp_v0;
        }

        // Fake match?
        if ((temp_v0 & 0xFFFFFFFF) == 0) {
            if (func_801C8F1C(arg0) != 0) {
                return 2;
            }
            n64ddError_SetErrorMsgTexture(1);
            temp_v0 = func_801C8C1C(arg0);
            if (temp_v0 != 0) {
                return temp_v0;
            }
            n64ddError_ClearErrorMsgTexBuf();
        }
    }
}

s32 func_801C9000(n64dd_CommPacket* arg0) {
    s32 phi_s0;
    s32 temp_s4;

    while (true) {
        phi_s0 = func_801C8E70(arg0);
        if (phi_s0 == 3 || phi_s0 == 4) {
            return phi_s0;
        }

        // Fake match?
        if ((phi_s0 & 0xFFFFFFFF) == 0) {
            func_801C8B90();

            temp_s4 = func_801C8F1C(arg0);
            if (temp_s4 == 3 || temp_s4 == 4) {}
            if (temp_s4 != 0) {
                return 2;
            }

            n64ddError_SetErrorMsgTexture(1);

            phi_s0 = func_801C8C1C(arg0);
            if (phi_s0 == 3 || phi_s0 == 4) {}
            if (phi_s0 != 0) {
                return phi_s0;
            }

            n64ddError_ClearErrorMsgTexBuf();
            if (temp_s4 != 0) {
                return phi_s0;
            }
        }
    }
}

s32 func_801C90C4(n64dd_CommPacket* arg0) {
    n64ddError_SetErrorCodeTexture(arg0->unk_68);
    n64ddError_SetErrorMsgTexture(2);
    return func_801C9000(arg0);
}

s32 func_801C90FC(n64dd_CommPacket* arg0) {
    n64ddError_SetErrorCodeTexture(arg0->unk_68);
    return func_801C9000(arg0);
}

s32 func_801C912C(n64dd_CommPacket* arg0) {
    s32 i = 0;
    s32 temp_v0;

    do {
        LeoResetClear();

        temp_v0 = func_801C8DC0(arg0);
        if (temp_v0 == 3 || temp_v0 == 4) {
            return temp_v0;
        }
        if (temp_v0 != 1) {
            if (temp_v0 == 0) {
                return temp_v0;
            } else {
                return temp_v0;
            }
        }

        Sleep_Msec(250);
    } while (i++ < 30);

    return func_801C8BC0(arg0);
}

s32 func_801C91E0(n64dd_CommPacket* arg0) {
    if (arg0->unk_68 == 0x29) {
        return func_801C8BC0(arg0);
    }

    if (osMemSize < 0x800000) {
        // LEO_ERROR_RAMPACK_NOT_CONNECTED?
        func_801C8B58(0x2C, 0, 3);
        return 4;
    }

    if (func_801C912C(arg0) == 0) {
        D_801D2E90 = 1;
    }
    return 0;
}

s32 func_801C9260(n64dd_CommPacket* arg0) {
    s32 temp_v0;

    switch (arg0->unk_68) {
        case 0x17:
            func_801C873C(arg0);
            temp_v0 = func_801C8C1C(arg0);
            if (temp_v0 != 0) {
                return temp_v0;
            }
            func_801C8B90();
            return 2;

        case 0x2:
            return func_801C8F58(arg0);

        case 0x22:
            LeoClearQueue();
            return 3;

        case 0x31:
            return func_801C90C4(arg0);

        case 0x2F:
            return func_801C9000(arg0);

        case 0x2A:
            return func_801C90FC(arg0);

        case 0x0:
            return 0;

        case 0x23:
            return 2;
    }

    return func_801C8BC0(arg0);
}

s32 func_801C9334(n64dd_CommPacket* arg0) {
    while (true) {
        u32 temp_v0 = func_801C8DC0(arg0);

        if (temp_v0 == 3 || temp_v0 == 4 || temp_v0 == 5) {
            return temp_v0;
        }

        // Fake match?
        if ((temp_v0 & 0xFFFFFFFF) == 0) {
            if (func_801C8F1C(arg0) != 0) {
                return 0;
            }
            return 7;
        }

        if (1) {}
    }
}

s32 func_801C93C4(n64dd_CommPacket* arg0) {
    s32 temp_v0;
    s32 temp_v0_2;

    while (true) {
        temp_v0_2 = func_801C9334(arg0);
        if (temp_v0_2 != 7) {
            return temp_v0_2;
        }
        n64ddError_SetErrorMsgTexture(1);
        temp_v0 = func_801C8C1C(arg0);
        if (temp_v0 != 0) {
            return temp_v0;
        }
        n64ddError_ClearErrorMsgTexBuf();
    }
}
