#include "global.h"
#include "terminal.h"

// For retail BSS ordering, the block number of sKaleidoScopeUpdateFunc must be 0 or
// just above (the exact upper bound depends on the block numbers assigned to
// extern variables declared in headers).
#pragma increment_block_number 90

void (*sKaleidoScopeUpdateFunc)(PlayState* play);
void (*sKaleidoScopeDrawFunc)(PlayState* play);
f32 gBossMarkScale;
u32 D_8016139C;
PauseMapMarksData* gLoadedPauseMarkDataTable;

extern void KaleidoScope_Update(PlayState* play);
extern void KaleidoScope_Draw(PlayState* play);

void KaleidoScopeCall_LoadPlayer(void) {
    KaleidoMgrOverlay* playerActorOvl = &gKaleidoMgrOverlayTable[KALEIDO_OVL_PLAYER_ACTOR];

    if (gKaleidoMgrCurOvl != playerActorOvl) {
        if (gKaleidoMgrCurOvl != NULL) {
            PRINTF(VT_FGCOL(GREEN));
            PRINTF("カレイド領域 強制排除\n"); // "Kaleido area forced exclusion"
            PRINTF(VT_RST);

            KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
        }

        PRINTF(VT_FGCOL(GREEN));
        PRINTF("プレイヤーアクター搬入\n"); // "Player actor import"
        PRINTF(VT_RST);

        KaleidoManager_LoadOvl(playerActorOvl);
    }
}

void KaleidoScopeCall_Init(PlayState* play) {
    // "Kaleidoscope replacement construction"
    PRINTF("カレイド・スコープ入れ替え コンストラクト \n");

    sKaleidoScopeUpdateFunc = KaleidoManager_GetRamAddr(KaleidoScope_Update);
    sKaleidoScopeDrawFunc = KaleidoManager_GetRamAddr(KaleidoScope_Draw);

    LOG_ADDRESS("kaleido_scope_move", KaleidoScope_Update, "../z_kaleido_scope_call.c", 98);
    LOG_ADDRESS("kaleido_scope_move_func", sKaleidoScopeUpdateFunc, "../z_kaleido_scope_call.c", 99);
    LOG_ADDRESS("kaleido_scope_draw", KaleidoScope_Draw, "../z_kaleido_scope_call.c", 100);
    LOG_ADDRESS("kaleido_scope_draw_func", sKaleidoScopeDrawFunc, "../z_kaleido_scope_call.c", 101);

    KaleidoSetup_Init(play);
}

void KaleidoScopeCall_Destroy(PlayState* play) {
    // "Kaleidoscope replacement destruction"
    PRINTF("カレイド・スコープ入れ替え デストラクト \n");

    KaleidoSetup_Destroy(play);
}

void KaleidoScopeCall_Update(PlayState* play) {
    KaleidoMgrOverlay* kaleidoScopeOvl = &gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE];
    PauseContext* pauseCtx = &play->pauseCtx;

    if (IS_PAUSED(&play->pauseCtx)) {
        if (pauseCtx->state == PAUSE_STATE_WAIT_LETTERBOX) {
            if (Letterbox_GetSize() == 0) {
#if OOT_DEBUG
                R_HREG_MODE = HREG_MODE_UCODE_DISAS;
                R_UCODE_DISAS_LOG_MODE = 3;
#endif

                R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_SETUP;
                pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                pauseCtx->unk_1EC = 0;
                pauseCtx->state = (pauseCtx->state & 0xFFFF) + 1; // PAUSE_STATE_WAIT_BG_PRERENDER
            }
        } else if (pauseCtx->state == PAUSE_STATE_8) {
#if OOT_DEBUG
            R_HREG_MODE = HREG_MODE_UCODE_DISAS;
            R_UCODE_DISAS_LOG_MODE = 3;
#endif

            R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_SETUP;
            pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
            pauseCtx->unk_1EC = 0;
            pauseCtx->state = (pauseCtx->state & 0xFFFF) + 1; // PAUSE_STATE_9
        } else if ((pauseCtx->state == PAUSE_STATE_WAIT_BG_PRERENDER) || (pauseCtx->state == PAUSE_STATE_9)) {
            PRINTF("PR_KAREIDOSCOPE_MODE=%d\n", R_PAUSE_BG_PRERENDER_STATE);

            if (R_PAUSE_BG_PRERENDER_STATE >= PAUSE_BG_PRERENDER_READY) {
                pauseCtx->state++; // PAUSE_STATE_INIT or PAUSE_STATE_10
            }
        } else if (pauseCtx->state != PAUSE_STATE_OFF) {
            if (gKaleidoMgrCurOvl != kaleidoScopeOvl) {
                if (gKaleidoMgrCurOvl != NULL) {
                    PRINTF(VT_FGCOL(GREEN));
                    // "Kaleido area Player Forced Elimination"
                    PRINTF("カレイド領域 プレイヤー 強制排除\n");
                    PRINTF(VT_RST);

                    KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
                }

                PRINTF(VT_FGCOL(GREEN));
                // "Kaleido area Kaleidoscope loading"
                PRINTF("カレイド領域 カレイドスコープ搬入\n");
                PRINTF(VT_RST);

                KaleidoManager_LoadOvl(kaleidoScopeOvl);
            }

            if (gKaleidoMgrCurOvl == kaleidoScopeOvl) {
                sKaleidoScopeUpdateFunc(play);

                if (!IS_PAUSED(&play->pauseCtx)) {
                    PRINTF(VT_FGCOL(GREEN));
                    // "Kaleido area Kaleidoscope Emission"
                    PRINTF("カレイド領域 カレイドスコープ排出\n");
                    PRINTF(VT_RST);

                    KaleidoManager_ClearOvl(kaleidoScopeOvl);
                    KaleidoScopeCall_LoadPlayer();
                }
            }
        }
    }
}

void KaleidoScopeCall_Draw(PlayState* play) {
    KaleidoMgrOverlay* kaleidoScopeOvl = &gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE];

    if (R_PAUSE_BG_PRERENDER_STATE >= PAUSE_BG_PRERENDER_READY) {
        if (((play->pauseCtx.state >= PAUSE_STATE_OPENING_1) && (play->pauseCtx.state <= PAUSE_STATE_SAVE_PROMPT)) ||
            ((play->pauseCtx.state >= PAUSE_STATE_11) && (play->pauseCtx.state <= PAUSE_STATE_CLOSING))) {
            if (gKaleidoMgrCurOvl == kaleidoScopeOvl) {
                sKaleidoScopeDrawFunc(play);
            }
        }
    }
}
