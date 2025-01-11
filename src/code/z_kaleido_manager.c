#include "global.h"
#include "terminal.h"

#define KALEIDO_OVERLAY(name, nameString) \
    { NULL, ROM_FILE(ovl_##name), _ovl_##name##SegmentStart, _ovl_##name##SegmentEnd, 0, nameString, }

KaleidoMgrOverlay gKaleidoMgrOverlayTable[] = {
    KALEIDO_OVERLAY(kaleido_scope, "kaleido_scope"),
    KALEIDO_OVERLAY(player_actor, "player_actor"),
};

void* sKaleidoAreaPtr = NULL;
KaleidoMgrOverlay* gKaleidoMgrCurOvl = NULL;
u8 gBossMarkState = 0;

void KaleidoManager_LoadOvl(KaleidoMgrOverlay* ovl) {
    LOG_UTILS_CHECK_NULL_POINTER("KaleidoArea_allocp", sKaleidoAreaPtr, "../z_kaleido_manager.c", 99);

    ovl->loadedRamAddr = sKaleidoAreaPtr;
    Overlay_Load(ovl->file.vromStart, ovl->file.vromEnd, ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr);

    PRINTF_COLOR_GREEN();
    PRINTF("OVL(k):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n", ovl->vramStart, ovl->vramEnd, ovl->loadedRamAddr,
           (uintptr_t)ovl->loadedRamAddr + (uintptr_t)ovl->vramEnd - (uintptr_t)ovl->vramStart,
           (uintptr_t)ovl->vramStart - (uintptr_t)ovl->loadedRamAddr, ovl->name);
    PRINTF_RST();

    ovl->offset = (uintptr_t)ovl->loadedRamAddr - (uintptr_t)ovl->vramStart;
    gKaleidoMgrCurOvl = ovl;
}

void KaleidoManager_ClearOvl(KaleidoMgrOverlay* ovl) {
    if (ovl->loadedRamAddr != NULL) {
        ovl->offset = 0;
        bzero(ovl->loadedRamAddr, (uintptr_t)ovl->vramEnd - (uintptr_t)ovl->vramStart);
        ovl->loadedRamAddr = NULL;
        gKaleidoMgrCurOvl = NULL;
    }
}

void KaleidoManager_Init(PlayState* play) {
    s32 largestSize = 0;
    s32 size;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gKaleidoMgrOverlayTable); i++) {
        size = (uintptr_t)gKaleidoMgrOverlayTable[i].vramEnd - (uintptr_t)gKaleidoMgrOverlayTable[i].vramStart;
        if (size > largestSize) {
            largestSize = size;
        }
    }

    PRINTF_COLOR_GREEN();
    PRINTF(T("KaleidoArea の最大サイズは %d バイトを確保します\n", "The maximum size of KaleidoArea is %d bytes\n"),
           largestSize);
    PRINTF_RST();

    sKaleidoAreaPtr = GAME_STATE_ALLOC(&play->state, largestSize, "../z_kaleido_manager.c", 150);
    LOG_UTILS_CHECK_NULL_POINTER("KaleidoArea_allocp", sKaleidoAreaPtr, "../z_kaleido_manager.c", 151);

    PRINTF_COLOR_GREEN();
    PRINTF("KaleidoArea %08x - %08x\n", sKaleidoAreaPtr, (uintptr_t)sKaleidoAreaPtr + largestSize);
    PRINTF_RST();

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

    if (ovl == NULL) {
        u32 i;

        iter = &gKaleidoMgrOverlayTable[0];
        for (i = 0; i < ARRAY_COUNT(gKaleidoMgrOverlayTable); i++) {
            if (((uintptr_t)vram >= (uintptr_t)iter->vramStart) && ((uintptr_t)iter->vramEnd >= (uintptr_t)vram)) {
                KaleidoManager_LoadOvl(iter);
                ovl = iter;
                goto KaleidoManager_GetRamAddr_end;
            }
            //! @bug Probably missing iter++ here
        }

        PRINTF(T("異常\n", "Abnormal\n"));
        return NULL;
    }

KaleidoManager_GetRamAddr_end:
    if ((ovl == NULL) || ((uintptr_t)vram < (uintptr_t)ovl->vramStart) ||
        ((uintptr_t)vram >= (uintptr_t)ovl->vramEnd)) {
        return NULL;
    }

    return (void*)((uintptr_t)vram + ovl->offset);
}
