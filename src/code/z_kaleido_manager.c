#include "global.h"
#include "vt.h"

#define KALEIDO_OVERLAY(name)                                                                                \
    {                                                                                                        \
        NULL, (u32)_ovl_##name##SegmentRomStart, (u32)_ovl_##name##SegmentRomEnd, _ovl_##name##SegmentStart, \
            _ovl_##name##SegmentEnd, 0, #name,                                                               \
    }

KaleidoManagerOvl gKaleidoMgrOverlayTable[] = {
    KALEIDO_OVERLAY(kaleido_scope),
    KALEIDO_OVERLAY(player_actor),
};

void* sKaleidoAreaPtr = NULL;
KaleidoManagerOvl* gKaleidoMgrCurOvl = NULL;
u32 D_8012D1E0 = 0;

void KaleidoManager_LoadOvl(KaleidoManagerOvl* ovl) {
    LogUtils_CheckNullPointer("KaleidoArea_allocp", sKaleidoAreaPtr, "../z_kaleido_manager.c", 99);
    ovl->loadedRamAddr = sKaleidoAreaPtr;
    Overlay_Load(ovl->vromStart, ovl->vromEnd, ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr);
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("OVL(k):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n", ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr,
                 ((u32)ovl->loadedRamAddr + ovl->vramEnd) - (u32)ovl->vramStart,
                 (u32)ovl->vramStart - (u32)ovl->loadedRamAddr, ovl->name);
    osSyncPrintf(VT_RST);
    ovl->off = (u32)ovl->loadedRamAddr - (u32)ovl->vramStart;
    gKaleidoMgrCurOvl = ovl;
}

void KaleidoManager_ClearOvl(KaleidoManagerOvl* ovl) {
    if (ovl->loadedRamAddr) {
        ovl->off = 0;
        bzero(ovl->loadedRamAddr, ovl->vramEnd - (u32)ovl->vramStart);
        ovl->loadedRamAddr = NULL;
        gKaleidoMgrCurOvl = NULL;
    }
}

void KaleidoManager_Init(GlobalContext* globalCtx) {
    s32 largestOvl = 0;
    s32 vramSize;
    u32 idx;

    for (idx = 0; idx < ARRAY_COUNT(gKaleidoMgrOverlayTable); idx++) {
        vramSize = gKaleidoMgrOverlayTable[idx].vramEnd - (u32)gKaleidoMgrOverlayTable[idx].vramStart;
        if (largestOvl < vramSize) {
            largestOvl = vramSize;
        }
    }
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("KaleidoArea の最大サイズは %d バイトを確保します\n", largestOvl);
    osSyncPrintf(VT_RST);
    sKaleidoAreaPtr = GameState_Alloc(&globalCtx->state, largestOvl, "../z_kaleido_manager.c", 150);
    LogUtils_CheckNullPointer("KaleidoArea_allocp", sKaleidoAreaPtr, "../z_kaleido_manager.c", 151);
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("KaleidoArea %08x - %08x\n", sKaleidoAreaPtr, (u32)sKaleidoAreaPtr + largestOvl);
    osSyncPrintf(VT_RST);
    gKaleidoMgrCurOvl = 0;
}

void KaleidoManager_Destroy() {
    if (gKaleidoMgrCurOvl) {
        KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
        gKaleidoMgrCurOvl = NULL;
    }
    sKaleidoAreaPtr = NULL;
}

// NOTE: this function looks messed up and probably doesn't work like how the devs wanted it to work
void* KaleidoManager_GetRamAddr(void* vram) {
    KaleidoManagerOvl* iter = gKaleidoMgrCurOvl;
    KaleidoManagerOvl* ovl = iter;
    u32 idx;

    if (ovl == NULL) {
        iter = &gKaleidoMgrOverlayTable[0];
        for (idx = 0; idx != ARRAY_COUNT(gKaleidoMgrOverlayTable); idx++) {
            if ((u32)vram >= (u32)iter->vramStart && (u32)iter->vramEnd >= (u32)vram) {
                KaleidoManager_LoadOvl(iter);
                ovl = iter;
                goto KaleidoManager_GetRamAddr_end;
            }
            //! @bug Devs probably forgot iter++ here
        }

        osSyncPrintf("異常\n"); // Abnormal
        return NULL;
    }

KaleidoManager_GetRamAddr_end:
    if (ovl == NULL || (u32)vram < (u32)ovl->vramStart || (u32)vram >= (u32)ovl->vramEnd) {
        return NULL;
    }

    return (void*)((u32)vram + ovl->off);
}
