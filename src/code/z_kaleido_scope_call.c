#include <global.h>
#include <vt.h>

void (*sKaleidoScopeUpdateFunc)(GlobalContext*);
void (*sKaleidoScopeDrawFunc)(GlobalContext*);
float D_80161398;
u32 D_8016139C;
void* D_801613A0;

extern void func_80826CB4(GlobalContext*); //KaleidoScope_Update
extern void func_808262B8(GlobalContext*); //KaleidoScope_Draw

void KaleidoScopeCall_LoadPlayer()
{
    if ((u32)gKaleidoMgrCurOvl != (u32)&gKaleidoMgrOverlayTable[KALEIDO_OVL_PLAYER_ACTOR])
    {
        if (gKaleidoMgrCurOvl)
        {
            osSyncPrintf(VT_FGCOL(GREEN));
            osSyncPrintf("カレイド領域 強制排除\n"); //Kaleido area forced exclusion
            osSyncPrintf(VT_RST);
            KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
        }
        osSyncPrintf(VT_FGCOL(GREEN));
        osSyncPrintf("プレイヤーアクター搬入\n"); //Player actor import
        osSyncPrintf(VT_RST);
        KaleidoManager_LoadOvl(&gKaleidoMgrOverlayTable[KALEIDO_OVL_PLAYER_ACTOR]);
    }
}

void KaleidoScopeCall_Init(GlobalContext* globalCtx)
{
    //Kaleidoscope replacement construct
    osSyncPrintf("カレイド・スコープ入れ替え コンストラクト \n");
    sKaleidoScopeUpdateFunc = KaleidoManager_GetRamAddr(func_80826CB4);
    sKaleidoScopeDrawFunc = KaleidoManager_GetRamAddr(func_808262B8);
    //Note : the line numbers suggests there was a macro (see logutils.c)
    LogUtils_LogThreadId("../z_kaleido_scope_call.c", 98);
    osSyncPrintf("kaleido_scope_move = %08x\n", func_80826CB4);
    LogUtils_LogThreadId("../z_kaleido_scope_call.c", 99);
    osSyncPrintf("kaleido_scope_move_func = %08x\n", sKaleidoScopeUpdateFunc);
    LogUtils_LogThreadId("../z_kaleido_scope_call.c", 100);
    osSyncPrintf("kaleido_scope_draw = %08x\n", func_808262B8);
    LogUtils_LogThreadId("../z_kaleido_scope_call.c", 101);
    osSyncPrintf("kaleido_scope_draw_func = %08x\n", sKaleidoScopeDrawFunc);
    func_8006ECF4(globalCtx);
}

void KaleidoScopeCall_Destroy(GlobalContext* globalCtx)
{
    //Kaleidoscope replacement
    osSyncPrintf("カレイド・スコープ入れ替え デストラクト \n");
    func_8006EE48(globalCtx);
}

//regalloc
#ifdef NON_MATCHING
void KaleidoScopeCall_Update(GlobalContext* globalCtx)
{
    u32 pad;
    PauseContext* pauseCtx;
    
    pauseCtx = &globalCtx->pauseCtx;

    if (pauseCtx->state != 0 || pauseCtx->flag != 0)
    {
        if (pauseCtx->state == 1)
        {
            if (func_800B38FC() == 0)
            {
                HREG(80) = 7;
                HREG(82) = 3;
                R_PAUSE_MENU_MODE = 1;
                pauseCtx->unk_1E4 = 0;
                pauseCtx->unk_1EC = 0;
                pauseCtx->state++;
            }
        }
        else if (pauseCtx->state == 8)
        {
            HREG(80) = 7;
            HREG(82) = 3;
            R_PAUSE_MENU_MODE = 1;
            pauseCtx->unk_1E4 = 0;
            pauseCtx->unk_1EC = 0;
            pauseCtx->state++;
        }
        else if (pauseCtx->state == 2 || pauseCtx->state == 9)
        {
            osSyncPrintf("R_PAUSE_MENU_MODE=%d\n", R_PAUSE_MENU_MODE);
            if (R_PAUSE_MENU_MODE >= 3)
                pauseCtx->state++;
        }
        else if (pauseCtx->state != 0)
        {
            if (&gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE] != gKaleidoMgrCurOvl)
            {
                if (gKaleidoMgrCurOvl)
                {
                    osSyncPrintf(VT_FGCOL(GREEN));
                    osSyncPrintf("カレイド領域 プレイヤー 強制排除\n"); //Kaleid Zone Player Forced Elimination
                    osSyncPrintf(VT_RST);
                    KaleidoManager_ClearOvl(gKaleidoMgrCurOvl);
                }
                osSyncPrintf(VT_FGCOL(GREEN));
                osSyncPrintf("カレイド領域 カレイドスコープ搬入\n"); //Kaleid area Kaleidoscope loading
                osSyncPrintf(VT_RST);
                KaleidoManager_LoadOvl(&gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE]);
            }
            if (&gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE] == gKaleidoMgrCurOvl)
            {
                sKaleidoScopeUpdateFunc(globalCtx);
                if (globalCtx->pauseCtx.state == 0 && globalCtx->pauseCtx.flag == 0)
                {
                    osSyncPrintf(VT_FGCOL(GREEN));
                    osSyncPrintf("カレイド領域 カレイドスコープ排出\n"); //Kaleid area Kaleidoscope emission
                    osSyncPrintf(VT_RST);
                    KaleidoManager_ClearOvl(&gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE]);
                    KaleidoScopeCall_LoadPlayer();
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kaleido_scope_call/KaleidoScopeCall_Update.s")
#endif

void KaleidoScopeCall_Draw(GlobalContext* globalCtx)
{
    KaleidoManagerOvl *kaleidoScopeOvl;

    if (R_PAUSE_MENU_MODE >= 3)
    {
        if ((globalCtx->pauseCtx.state >= 4 && globalCtx->pauseCtx.state < 8) || (globalCtx->pauseCtx.state >= 11 && globalCtx->pauseCtx.state < 19))
        {
            kaleidoScopeOvl = &gKaleidoMgrOverlayTable[KALEIDO_OVL_KALEIDO_SCOPE];
            if (gKaleidoMgrCurOvl == kaleidoScopeOvl)
                sKaleidoScopeDrawFunc(globalCtx);
        }
    }

}
