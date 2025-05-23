#include "global.h"
#include "terminal.h"

void Overlay_LoadGameState(GameStateOverlay* overlayEntry) {
    if (overlayEntry->loadedRamAddr != NULL) {
        PRINTF(T("既にリンクされています\n", "Already linked\n"));
        return;
    }

    if (overlayEntry->vramStart == NULL) {
        overlayEntry->unk_28 = 0;
    } else {
        overlayEntry->loadedRamAddr = Overlay_AllocateAndLoad(overlayEntry->file.vromStart, overlayEntry->file.vromEnd,
                                                              overlayEntry->vramStart, overlayEntry->vramEnd);

        if (overlayEntry->loadedRamAddr == NULL) {
            PRINTF(T("ロードに失敗しました\n", "Loading failed\n"));
            return;
        }

        PRINTF_COLOR_GREEN();
        PRINTF("OVL(d):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n", overlayEntry->vramStart, overlayEntry->vramEnd,
               overlayEntry->loadedRamAddr,
               (u32)overlayEntry->loadedRamAddr + (u32)overlayEntry->vramEnd - (u32)overlayEntry->vramStart,
               (u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr, "");
        PRINTF_RST();

        if (overlayEntry->unk_14 != NULL) {
            overlayEntry->unk_14 = (void*)((u32)overlayEntry->unk_14 -
                                           (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
        } else {
            overlayEntry->unk_14 = NULL;
        }

        if (overlayEntry->init != NULL) {
            overlayEntry->init = (void*)((u32)overlayEntry->init -
                                         (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
        } else {
            overlayEntry->init = NULL;
        }

        if (overlayEntry->destroy != NULL) {
            overlayEntry->destroy = (void*)((u32)overlayEntry->destroy -
                                            (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
        } else {
            overlayEntry->destroy = NULL;
        }

        if (overlayEntry->unk_20 != NULL) {
            overlayEntry->unk_20 = (void*)((u32)overlayEntry->unk_20 -
                                           (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
        } else {
            overlayEntry->unk_20 = NULL;
        }

        if (overlayEntry->unk_24 != NULL) {
            overlayEntry->unk_24 = (void*)((u32)overlayEntry->unk_24 -
                                           (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
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
                overlayEntry->unk_14 = (void*)((u32)overlayEntry->unk_14 +
                                               (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
            } else {
                overlayEntry->unk_14 = NULL;
            }

            if (overlayEntry->init != NULL) {
                overlayEntry->init = (void*)((u32)overlayEntry->init +
                                             (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
            } else {
                overlayEntry->init = NULL;
            }

            if (overlayEntry->destroy != NULL) {
                overlayEntry->destroy = (void*)((u32)overlayEntry->destroy +
                                                (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
            } else {
                overlayEntry->destroy = NULL;
            }

            if (overlayEntry->unk_20 != NULL) {
                overlayEntry->unk_20 = (void*)((u32)overlayEntry->unk_20 +
                                               (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
            } else {
                overlayEntry->unk_20 = NULL;
            }

            if (overlayEntry->unk_24 != NULL) {
                overlayEntry->unk_24 = (void*)((u32)overlayEntry->unk_24 +
                                               (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr));
            } else {
                overlayEntry->unk_24 = NULL;
            }

            SYSTEM_ARENA_FREE(overlayEntry->loadedRamAddr, "../z_DLF.c", 149);
            overlayEntry->loadedRamAddr = NULL;
        }
    }
}
