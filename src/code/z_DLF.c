#include "global.h"
#include "vt.h"

void Overlay_LoadGameState(GameStateOverlay* overlayEntry) {
    if (overlayEntry->loadedRamAddr != NULL) {
        osSyncPrintf("既にリンクされています\n"); // "Already linked"
        return;
    }

    if (overlayEntry->vramStart == 0) {
        overlayEntry->unk_28 = 0;
    } else {
        overlayEntry->loadedRamAddr = Overlay_AllocateAndLoad(overlayEntry->vromStart, overlayEntry->vromEnd,
                                                              overlayEntry->vramStart, overlayEntry->vramEnd);

        if (overlayEntry->loadedRamAddr == NULL) {
            osSyncPrintf("ロードに失敗しました\n"); // "Loading failed"
            return;
        }

        osSyncPrintf(VT_FGCOL(GREEN));
        osSyncPrintf("OVL(d):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n", overlayEntry->vramStart, overlayEntry->vramEnd,
                     overlayEntry->loadedRamAddr, (uintptr_t)overlayEntry->loadedRamAddr + VRAM_PTR_SIZE(overlayEntry),
                     OVERLAY_RELOCATION_OFFSET(overlayEntry), "");
        osSyncPrintf(VT_RST);

        if (overlayEntry->unk_14 != NULL) {
            overlayEntry->unk_14 =
                (void*)((uintptr_t)overlayEntry->unk_14 - (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
        } else {
            overlayEntry->unk_14 = NULL;
        }

        if (overlayEntry->init != NULL) {
            overlayEntry->init =
                (void*)((uintptr_t)overlayEntry->init - (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
        } else {
            overlayEntry->init = NULL;
        }

        if (overlayEntry->destroy != NULL) {
            overlayEntry->destroy =
                (void*)((uintptr_t)overlayEntry->destroy - (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
        } else {
            overlayEntry->destroy = NULL;
        }

        if (overlayEntry->unk_20 != NULL) {
            overlayEntry->unk_20 =
                (void*)((uintptr_t)overlayEntry->unk_20 - (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
        } else {
            overlayEntry->unk_20 = NULL;
        }

        if (overlayEntry->unk_24 != NULL) {
            overlayEntry->unk_24 =
                (void*)((uintptr_t)overlayEntry->unk_24 - (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
        } else {
            overlayEntry->unk_24 = NULL;
        }

        overlayEntry->unk_28 = 0;
    }
}

void Overlay_FreeGameState(GameStateOverlay* overlayEntry) {
    if (overlayEntry->loadedRamAddr != NULL) {
        s32 temp = overlayEntry->unk_28 != 0 ? -1 : 0;

        if (temp == 0) {
            if (overlayEntry->unk_14 != NULL) {
                overlayEntry->unk_14 =
                    (void*)((uintptr_t)overlayEntry->unk_14 + (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
            } else {
                overlayEntry->unk_14 = NULL;
            }

            if (overlayEntry->init != NULL) {
                overlayEntry->init =
                    (void*)((uintptr_t)overlayEntry->init + (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
            } else {
                overlayEntry->init = NULL;
            }

            if (overlayEntry->destroy != NULL) {
                overlayEntry->destroy =
                    (void*)((uintptr_t)overlayEntry->destroy + (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
            } else {
                overlayEntry->destroy = NULL;
            }

            if (overlayEntry->unk_20 != NULL) {
                overlayEntry->unk_20 =
                    (void*)((uintptr_t)overlayEntry->unk_20 + (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
            } else {
                overlayEntry->unk_20 = NULL;
            }

            if (overlayEntry->unk_24 != NULL) {
                overlayEntry->unk_24 =
                    (void*)((uintptr_t)overlayEntry->unk_24 + (intptr_t)OVERLAY_RELOCATION_OFFSET(overlayEntry));
            } else {
                overlayEntry->unk_24 = NULL;
            }

            SystemArena_FreeDebug(overlayEntry->loadedRamAddr, "../z_DLF.c", 149);
            overlayEntry->loadedRamAddr = NULL;
        }
    }
}
