#include <global.h>

volatile u32 sSysCfbFbPtr[2]; //may not be volatile but it currently gets SysCfb_Init closer from matching
u32 sSysCfbEnd;

//small reaordering
#ifdef NON_MATCHING
void SysCfb_Init(s32 n64dd)
{
    if (osMemSize >= 0x800000U)        
    {
        //8MB or more memory is installed
        osSyncPrintf("８Ｍバイト以上のメモリが搭載されています\n");
        if (n64dd == 1)
        {
            //RAM 8M mode (N64DD compatible)
            osSyncPrintf("RAM 8M mode (N64DD対応)\n");
            sSysCfbEnd = 0x805FB000;
        }
        else
        {
            //The margin for this version is% dK bytes
            osSyncPrintf("このバージョンのマージンは %dK バイトです\n", (0x4BC00 / 1024));
            sSysCfbEnd = 0x8044BE80;
        }
    }
    else if (osMemSize >= 0x400000U)
    {
        sSysCfbEnd = 0x80400000;
        osSyncPrintf("RAM4M mode\n");
    }
    else
    {
        LogUtils_HungupThread("../sys_cfb.c", 0x162);
    }

    sSysCfbEnd &= ~0x3f;
    //The final address used by the system is% 08x
    osSyncPrintf("システムが使用する最終アドレスは %08x です\n", sSysCfbEnd);
    sSysCfbFbPtr[0] = sSysCfbEnd - (SCREEN_WIDTH*SCREEN_HEIGHT*4);
    sSysCfbFbPtr[1] = sSysCfbEnd - (SCREEN_WIDTH*SCREEN_HEIGHT*2);
    //Frame buffer addresses are% 08x and% 08x
    osSyncPrintf("フレームバッファのアドレスは %08x と %08x です\n", sSysCfbFbPtr[0], sSysCfbFbPtr[1]);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_cfb/SysCfb_Init.s")
#endif

void SysCfb_Reset()
{
    sSysCfbFbPtr[0] = 0;
    sSysCfbFbPtr[1] = 0;
    sSysCfbEnd = 0;
}

u32 SysCfb_GetFbPtr(s32 idx)
{
    if (idx < 2)
        return sSysCfbFbPtr[idx];
    return 0;
}

u32 SysCfb_GetFbEnd()
{
    return sSysCfbEnd;
}