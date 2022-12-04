#include "global.h"
#include "terminal.h"

#define KALEIDO_OVERLAY(name, nameString)                                                     \
    {                                                                                         \
        NULL, (uintptr_t)_ovl_##name##SegmentRomStart, (uintptr_t)_ovl_##name##SegmentRomEnd, \
            _ovl_##name##SegmentStart, _ovl_##name##SegmentEnd, 0, nameString,                \
    }

KaleidoMgrOverlay gKaleidoMgrOverlayTable[] = {
    KALEIDO_OVERLAY(kaleido_scope, "kaleido_scope"),
    KALEIDO_OVERLAY(player_actor, "player_actor"),
};

void* sKaleidoAreaPtr = NULL;
KaleidoMgrOverlay* gKaleidoMgrCurOvl = NULL;
u8 gBossMarkState = 0;

void KaleidoManager_LoadOvl(KaleidoMgrOverlay* ovl) {
    LogUtils_CheckNullPointer("KaleidoArea_allocp", sKaleidoAreaPtr, "../z_kaleido_manager.c", 99);

    ovl->loadedRamAddr = sKaleidoAreaPtr;
    Overlay_Load(ovl->vromStart, ovl->vromEnd, ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr);

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("OVL(k):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n", ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr,
                 (u32)ovl->loadedRamAddr + (u32)ovl->vramEnd - (u32)ovl->vramStart,
                 (u32)ovl->vramStart - (u32)ovl->loadedRamAddr, ovl->name);
    osSyncPrintf(VT_RST);

    ovl->offset = (u32)ovl->loadedRamAddr - (u32)ovl->vramStart;
    gKaleidoMgrCurOvl = ovl;
}

void KaleidoManager_ClearOvl(KaleidoMgrOverlay* ovl) {
    if (ovl->loadedRamAddr != NULL) {
        ovl->offset = 0;
        bzero(ovl->loadedRamAddr, (u32)ovl->vramEnd - (u32)ovl->vramStart);
        ovl->loadedRamAddr = NULL;
        gKaleidoMgrCurOvl = NULL;
    }
}

void KaleidoManager_Init(PlayState* play) {
    s32 largestSize = 0;
    s32 size;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gKaleidoMgrOverlayTable); i++) {
        size = (u32)gKaleidoMgrOverlayTable[i].vramEnd - (u32)gKaleidoMgrOverlayTable[i].vramStart;
        if (size > largestSize) {
            largestSize = size;
        }
    }

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("KaleidoArea の最大サイズは %d バイトを確保します\n", largestSize);
    osSyncPrintf(VT_RST);

    sKaleidoAreaPtr = GameState_Alloc(&play->state, largestSize, "../z_kaleido_manager.c", 150);
    LogUtils_CheckNullPointer("KaleidoArea_allocp", sKaleidoAreaPtr, "../z_kaleido_manager.c", 151);

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("KaleidoArea %08x - %08x\n", sKaleidoAreaPtr, (u32)sKaleidoAreaPtr + largestSize);
    osSyncPrintf(VT_RST);

    gKaleidoMgrCurOvl = NULL;
}

void KaleidoManager_Destroy(void) {
    if (gKaleidoMgrCurOvl != NULL) {
        KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
        gKaleidoMgrCurOvl = NULL;
    }

    sKaleidoAreaPtr = NULL;
}

// NOTE: this function looks messed up and probably doesn't work how it was intended to
void* KaleidoManager_GetRamAddr(void* vram) {
    KaleidoMgrOverlay* iter = gKaleidoMgrCurOvl;
    KaleidoMgrOverlay* ovl = iter;
    u32 i;

    if (ovl == NULL) {
        iter = &gKaleidoMgrOverlayTable[0];
        for (i = 0; i < ARRAY_COUNT(gKaleidoMgrOverlayTable); i++) {
            if (((u32)vram >= (u32)iter->vramStart) && ((u32)iter->vramEnd >= (u32)vram)) {
                KaleidoManager_LoadOvl(iter);
                ovl = iter;
                goto KaleidoManager_GetRamAddr_end;
            }
            //! @bug Probably missing iter++ here
        }

        osSyncPrintf("異常\n"); // "Abnormal"
        return NULL;
    }

KaleidoManager_GetRamAddr_end:
    if ((ovl == NULL) || ((u32)vram < (u32)ovl->vramStart) || ((u32)vram >= (u32)ovl->vramEnd)) {
        return NULL;
    }

    return (void*)((u32)vram + ovl->offset);
}
