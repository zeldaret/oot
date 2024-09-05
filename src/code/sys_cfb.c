#include "global.h"

#pragma increment_block_number "gc-eu:128 gc-eu-mq:128 gc-jp:128 gc-jp-ce:128 gc-jp-mq:128 gc-us:128 gc-us-mq:128"

uintptr_t sSysCfbFbPtr[2];
uintptr_t sSysCfbEnd;

void SysCfb_Init(s32 n64dd) {
    u32 screenSize;
    uintptr_t tmpFbEnd;

    if (osMemSize >= 0x800000) {
        PRINTF(T("８Ｍバイト以上のメモリが搭載されています\n", "8MB or more memory is installed\n"));
        tmpFbEnd = 0x8044BE80;
        if (n64dd == 1) {
            PRINTF(T("RAM 8M mode (N64DD対応)\n", "RAM 8M mode (N64DD compatible)\n"));
#if OOT_DEBUG
            sSysCfbEnd = 0x805FB000;
#else
            sSysCfbEnd = 0x80600000;
#endif
        } else {
            PRINTF(T("このバージョンのマージンは %dK バイトです\n", "The margin for this version is %dK bytes\n"),
                   (0x4BC00 / 1024));
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
#if PLATFORM_N64
        LogUtils_HungupThread("../sys_cfb.c", 322);
#else
        LogUtils_HungupThread("../sys_cfb.c", 354);
#endif
    }

    screenSize = SCREEN_WIDTH * SCREEN_HEIGHT;
    sSysCfbEnd &= ~0x3F;

    if (1) {}

    PRINTF(T("システムが使用する最終アドレスは %08x です\n", "The final address used by the system is %08x\n"),
           sSysCfbEnd);
    sSysCfbFbPtr[0] = sSysCfbEnd - (screenSize * 4);
    sSysCfbFbPtr[1] = sSysCfbEnd - (screenSize * 2);
    PRINTF(T("フレームバッファのアドレスは %08x と %08x です\n", "Frame buffer addresses are %08x and %08x\n"),
           sSysCfbFbPtr[0], sSysCfbFbPtr[1]);
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
