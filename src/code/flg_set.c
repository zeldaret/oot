#include <global.h>
#include <ultra64/controller.h>

void FlagSet_Update(GlobalContext* globalCtx) {
    static s32 entryIdx = 0;
    static u32 curBit = 0;
    static s32 timer = 0;
    static s32 bitIdx; // ? this doesn't need to be static

    FlagSetEntry entries[53] = {
        { &gSaveContext.memory.information.eventChkInf[0], "event_chk_inf[0]" },
        { &gSaveContext.memory.information.eventChkInf[1], "event_chk_inf[1]" },
        { &gSaveContext.memory.information.eventChkInf[2], "event_chk_inf[2]" },
        { &gSaveContext.memory.information.eventChkInf[3], "event_chk_inf[3]" },
        { &gSaveContext.memory.information.eventChkInf[4], "event_chk_inf[4]" },
        { &gSaveContext.memory.information.eventChkInf[5], "event_chk_inf[5]" },
        { &gSaveContext.memory.information.eventChkInf[6], "event_chk_inf[6]" },
        { &gSaveContext.memory.information.eventChkInf[7], "event_chk_inf[7]" },
        { &gSaveContext.memory.information.eventChkInf[8], "event_chk_inf[8]" },
        { &gSaveContext.memory.information.eventChkInf[9], "event_chk_inf[9]" },
        { &gSaveContext.memory.information.eventChkInf[10], "event_chk_inf[10]" },
        { &gSaveContext.memory.information.eventChkInf[11], "event_chk_inf[11]" },
        { &gSaveContext.memory.information.eventChkInf[12], "event_chk_inf[12]" },
        { &gSaveContext.memory.information.eventChkInf[13], "event_chk_inf[13]" },
        { &gSaveContext.memory.information.itemGetInf[0], "item_get_inf[0]" },
        { &gSaveContext.memory.information.itemGetInf[1], "item_get_inf[1]" },
        { &gSaveContext.memory.information.itemGetInf[2], "item_get_inf[2]" },
        { &gSaveContext.memory.information.itemGetInf[3], "item_get_inf[3]" },
        { &gSaveContext.memory.information.infTable[0], "inf_table[0]" },
        { &gSaveContext.memory.information.infTable[1], "inf_table[1]" },
        { &gSaveContext.memory.information.infTable[2], "inf_table[2]" },
        { &gSaveContext.memory.information.infTable[3], "inf_table[3]" },
        { &gSaveContext.memory.information.infTable[4], "inf_table[4]" },
        { &gSaveContext.memory.information.infTable[5], "inf_table[5]" },
        { &gSaveContext.memory.information.infTable[6], "inf_table[6]" },
        { &gSaveContext.memory.information.infTable[7], "inf_table[7]" },
        { &gSaveContext.memory.information.infTable[8], "inf_table[8]" },
        { &gSaveContext.memory.information.infTable[9], "inf_table[9]" },
        { &gSaveContext.memory.information.infTable[10], "inf_table[10]" },
        { &gSaveContext.memory.information.infTable[11], "inf_table[11]" },
        { &gSaveContext.memory.information.infTable[12], "inf_table[12]" },
        { &gSaveContext.memory.information.infTable[13], "inf_table[13]" },
        { &gSaveContext.memory.information.infTable[14], "inf_table[14]" },
        { &gSaveContext.memory.information.infTable[15], "inf_table[15]" },
        { &gSaveContext.memory.information.infTable[16], "inf_table[16]" },
        { &gSaveContext.memory.information.infTable[17], "inf_table[17]" },
        { &gSaveContext.memory.information.infTable[18], "inf_table[18]" },
        { &gSaveContext.memory.information.infTable[19], "inf_table[19]" },
        { &gSaveContext.memory.information.infTable[20], "inf_table[20]" },
        { &gSaveContext.memory.information.infTable[21], "inf_table[21]" },
        { &gSaveContext.memory.information.infTable[22], "inf_table[22]" },
        { &gSaveContext.memory.information.infTable[23], "inf_table[23]" },
        { &gSaveContext.memory.information.infTable[24], "inf_table[24]" },
        { &gSaveContext.memory.information.infTable[25], "inf_table[25]" },
        { &gSaveContext.memory.information.infTable[26], "inf_table[26]" },
        { &gSaveContext.memory.information.infTable[27], "inf_table[27]" },
        { &gSaveContext.memory.information.infTable[28], "inf_table[28]" },
        { &gSaveContext.memory.information.infTable[29], "inf_table[29]" },
        { &gSaveContext.eventInf[0], "event_inf[0]" },
        { &gSaveContext.eventInf[1], "event_inf[1]" },
        { &gSaveContext.eventInf[2], "event_inf[2]" },
        { &gSaveContext.eventInf[3], "event_inf[3]" },
    };

    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Input* input = &globalCtx->state.input[0];
    Gfx* gfx;
    Gfx* polyOpa;

    OPEN_DISPS(gfxCtx, "../flg_set.c", 131);

    {
        GfxPrint printer;
        s32 pad;

        polyOpa = oGfxCtx->polyOpa.p;
        gfx = Graph_GfxPlusOne(polyOpa);
        gSPDisplayList(oGfxCtx->overlay.p++, gfx);

        GfxPrint_Init(&printer);
        GfxPrint_Open(&printer, gfx);
        GfxPrint_SetColor(&printer, 250, 50, 50, 255);
        GfxPrint_SetPos(&printer, 4, 13);
        GfxPrint_Printf(&printer, entries[entryIdx].name);
        GfxPrint_SetPos(&printer, 4, 15);

        for (bitIdx = 15; bitIdx >= 0; bitIdx--) {
            if (bitIdx == curBit) {
                GfxPrint_SetColor(&printer, 200, 200, 200, 255);
            } else {
                GfxPrint_SetColor(&printer, 100, 100, 100, 255);
            }

            if (*entries[entryIdx].value & (1 << bitIdx)) {
                GfxPrint_Printf(&printer, "1");
            } else {
                GfxPrint_Printf(&printer, "0");
            }

            if ((bitIdx % 4) == 0) {
                GfxPrint_Printf(&printer, " ");
            }
        }

        if (CHECK_PAD(input->press, L_JPAD)) {
            timer = 10;
            curBit++;
        }
        if (CHECK_PAD(input->press, R_JPAD)) {
            curBit--;
            timer = 10;
        }

        if (timer == 0) {
            if (CHECK_PAD(input->cur, L_JPAD)) {
                curBit++;
                timer = 2;
            }
            if (CHECK_PAD(input->cur, R_JPAD)) {
                curBit--;
                timer = 2;
            }
        }

        curBit %= 16;
        if (CHECK_PAD(input->press, U_JPAD)) {
            entryIdx--;
            if (entryIdx < 0) {
                entryIdx = 0;
            }
            timer = 10;
        }
        if (CHECK_PAD(input->press, D_JPAD)) {
            timer = 10;
            entryIdx++;
            if (!entries[entryIdx].value) {
                entryIdx--;
            }
        }

        if (timer == 0) {
            if (CHECK_PAD(input->cur, U_JPAD)) {
                entryIdx--;
                timer = 2;
                if (entryIdx < 0) {
                    entryIdx = 0;
                }
            }
            if (CHECK_PAD(input->cur, D_JPAD)) {
                timer = 2;
                entryIdx++;
                if (!entries[entryIdx].value) {
                    entryIdx--;
                }
            }
        }

        if (CHECK_PAD(input->press, A_BUTTON)) {
            *entries[entryIdx].value ^= (1 << curBit);
        }

        if (timer != 0) {
            timer--;
        }

        gfx = GfxPrint_Close(&printer);
        GfxPrint_Destroy(&printer);

        gSPEndDisplayList(gfx++);
        Graph_BranchDlist(polyOpa, gfx);
        oGfxCtx->polyOpa.p = gfx;
    }

    if (CHECK_PAD(input->press, L_TRIG)) {
        globalCtx->pauseCtx.flag = 0;
    }

    CLOSE_DISPS(gfxCtx, "../flg_set.c", 241);
}
