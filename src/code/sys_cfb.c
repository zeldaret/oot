#include "global.h"

uintptr_t sSysCfbFbPtr[2];
uintptr_t sSysCfbEnd;

void SysCfb_Init(s32 n64dd) {
    u32 screenSize;
    uintptr_t tmpFbEnd;

    if (osMemSize >= 0x800000) {
        // "8MB or more memory is installed"
        PRINTF("８Ｍバイト以上のメモリが搭載されています\n");
        tmpFbEnd = 0x8044BE80;
        if (n64dd == 1) {
            PRINTF("RAM 8M mode (N64DD対応)\n"); // "RAM 8M mode (N64DD compatible)"
#if OOT_DEBUG
            sSysCfbEnd = 0x805FB000;
#else
            sSysCfbEnd = 0x80600000;
#endif
        } else {
            // "The margin for this version is %dK bytes"
            PRINTF("このバージョンのマージンは %dK バイトです\n", (0x4BC00 / 1024));
#if OOT_DEBUG
            sSysCfbEnd = tmpFbEnd;
#else
            sSysCfbEnd = 0x80400000;
#endif
        }
    } else if (osMemSize >= 0x400000) {
        PRINTF("RAM4M mode\n");
        sSysCfbEnd = 0x80400000;
    } else {
        LogUtils_HungupThread("../sys_cfb.c", 354);
    }

    screenSize = SCREEN_WIDTH * SCREEN_HEIGHT;
    sSysCfbEnd &= ~0x3F;

    if (1) {}

    // "The final address used by the system is %08x"
    PRINTF("システムが使用する最終アドレスは %08x です\n", sSysCfbEnd);
    sSysCfbFbPtr[0] = sSysCfbEnd - (screenSize * 4);
    sSysCfbFbPtr[1] = sSysCfbEnd - (screenSize * 2);
    // "Frame buffer addresses are %08x and %08x"
    PRINTF("フレームバッファのアドレスは %08x と %08x です\n", sSysCfbFbPtr[0], sSysCfbFbPtr[1]);
}

void SysCfb_Reset(void) {
    sSysCfbFbPtr[0] = 0;
    sSysCfbFbPtr[1] = 0;
    sSysCfbEnd = 0;
}

void* SysCfb_GetFbPtr(s32 idx) {
    if (idx < 2) {
        return (void*)sSysCfbFbPtr[idx];
    }
    return NULL;
}

void* SysCfb_GetFbEnd(void) {
    return (void*)sSysCfbEnd;
}
