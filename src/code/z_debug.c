#include "global.h"

typedef struct {
    u8 x;
    u8 y;
    u8 colorIndex;
    char text[21];
} PrintTextBufferEntry; // size = 0x18

typedef struct {
    u16 hold;
    u16 press;
} InputCombo; // size = 0x4

RegEditor* gRegEditor;

PrintTextBufferEntry sDebugPrintTextBuffer[22];
s16 sDebugPrintTextBufferNumUsed = 0;
Color_RGBA8 sDebugPrintTextColors[] = {
    { 255, 255, 32, 192 },  // 0
    { 255, 150, 128, 192 }, // 1
    { 128, 96, 0, 64 },     // 2
    { 192, 128, 16, 128 },  // 3
    { 255, 192, 32, 128 },  // 4
    { 230, 230, 220, 64 },  // 5
    { 128, 150, 255, 128 }, // 6
    { 128, 255, 32, 128 },  // 7
};

InputCombo sRegGroupInputCombos[REG_GROUPS] = {
    { BTN_L, BTN_CUP },        //  REG
    { BTN_L, BTN_CLEFT },      // SREG
    { BTN_L, BTN_CDOWN },      // OREG
    { BTN_L, BTN_A },          // PREG
    { BTN_R, BTN_CDOWN },      // QREG
    { BTN_L, BTN_CRIGHT },     // MREG
    { BTN_L, BTN_R },          // YREG
    { BTN_L, BTN_DLEFT },      // DREG
    { BTN_L, BTN_DRIGHT },     // UREG
    { BTN_L, BTN_DUP },        // IREG
    { BTN_L, BTN_B },          // ZREG
    { BTN_L, BTN_Z },          // CREG
    { BTN_L, BTN_DDOWN },      // NREG
    { BTN_R, BTN_A },          // KREG
    { BTN_R, BTN_B },          // XREG
    { BTN_R, BTN_Z },          // cREG
    { BTN_R, BTN_L },          // sREG
    { BTN_R, BTN_CUP },        // iREG
    { BTN_R, BTN_CRIGHT },     // WREG
    { BTN_R, BTN_DLEFT },      // AREG
    { BTN_R, BTN_CLEFT },      // VREG
    { BTN_R, BTN_START },      // HREG
    { BTN_L, BTN_START },      // GREG
    { BTN_R, BTN_DRIGHT },     // mREG
    { BTN_R, BTN_DUP },        // nREG
    { BTN_START, BTN_R },      // BREG
    { BTN_START, BTN_A },      // dREG
    { BTN_START, BTN_B },      // kREG
    { BTN_START, BTN_CRIGHT }, // bREG

};

char sRegGroupChars[REG_GROUPS] = {
    ' ', //  REG
    'S', // SREG
    'O', // OREG
    'P', // PREG
    'Q', // QREG
    'M', // MREG
    'Y', // YREG
    'D', // DREG
    'U', // UREG
    'I', // IREG
    'Z', // ZREG
    'C', // CREG
    'N', // NREG
    'K', // KREG
    'X', // XREG
    'c', // cREG
    's', // sREG
    'i', // iREG
    'W', // WREG
    'A', // AREG
    'V', // VREG
    'H', // HREG
    'G', // GREG
    'm', // mREG
    'n', // nREG
    'B', // BREG
    'd', // dREG
    'k', // kREG
    'b', // bREG
};

void Regs_Init(void) {
    s32 i;

    gRegEditor = SystemArena_MallocDebug(sizeof(RegEditor), "../z_debug.c", 260);
    gRegEditor->regPage = 0;
    gRegEditor->regGroup = 0;
    gRegEditor->regCur = 0;
    gRegEditor->dPadInputPrev = 0;
    gRegEditor->inputRepeatTimer = 0;
    for (i = 0; i < ARRAY_COUNT(gRegEditor->data); i++) {
        gRegEditor->data[i] = 0;
    }
}

// Called when free movement is active.
void func_8006375C(s32 arg0, s32 arg1, const char* text) {
}

// Store text during Update, to be drawn later during Draw
void func_8006376C(u8 x, u8 y, u8 colorIndex, const char* text) {
    PrintTextBufferEntry* entry;
    char* textDest;
    s16 charCount;

    entry = &sDebugPrintTextBuffer[sDebugPrintTextBufferNumUsed];
    if (sDebugPrintTextBufferNumUsed < ARRAY_COUNT(sDebugPrintTextBuffer)) {
        entry->x = x;
        entry->y = y;
        entry->colorIndex = colorIndex;

        // Copy text into the entry, truncating if needed
        charCount = 0;
        textDest = entry->text;
        while ((*textDest++ = *text++) != '\0') {
            if (charCount++ > (ARRAY_COUNT(entry->text) - 1)) {
                break;
            }
        }
        *textDest = '\0';

        sDebugPrintTextBufferNumUsed++;
    }
}

// Draw text previously stored by calls to `func_8006376C`
void func_80063828(GfxPrint* printer) {
    s32 i;
    Color_RGBA8* color;
    PrintTextBufferEntry* entry;

    for (i = 0; i < sDebugPrintTextBufferNumUsed; i++) {
        entry = &sDebugPrintTextBuffer[i];

        color = &sDebugPrintTextColors[entry->colorIndex];
        GfxPrint_SetColor(printer, color->r, color->g, color->b, color->a);
        GfxPrint_SetPos(printer, entry->x, entry->y);
        GfxPrint_Printf(printer, "%s", entry->text);
    }
}

// Process inputs to control the reg editor
void Regs_UpdateEditor(Input* input) {
    s32 dPadInputCur;
    s32 pageDataStart = ((gRegEditor->regGroup * REG_PAGES) + gRegEditor->regPage - 1) * REGS_PER_PAGE;
    s32 increment;
    s32 i;

    dPadInputCur = input->cur.button & (BTN_DUP | BTN_DLEFT | BTN_DRIGHT | BTN_DDOWN);
    if (CHECK_BTN_ALL(input->cur.button, BTN_L) || CHECK_BTN_ALL(input->cur.button, BTN_R) ||
        CHECK_BTN_ALL(input->cur.button, BTN_START)) {

        for (i = 0; i < REG_GROUPS; i++) {
            if (CHECK_BTN_ALL(input->cur.button, sRegGroupInputCombos[i].hold) &&
                CHECK_BTN_ALL(input->press.button, sRegGroupInputCombos[i].press)) {
                break;
            }
        }

        // If a combo corresponding to a reg group was found
        if (i < REG_GROUPS) {
            if (i == gRegEditor->regGroup) {
                // Same reg group as current, advance page index
                gRegEditor->regPage = (gRegEditor->regPage + 1) % (REG_PAGES + 1);
            } else {
                gRegEditor->regGroup = i; // Switch current reg group
                gRegEditor->regPage = 0;  // Disable reg editor
            }
        }
    } else {
        switch (gRegEditor->regPage) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:

                if (dPadInputCur == gRegEditor->dPadInputPrev) {
                    gRegEditor->inputRepeatTimer--;
                    if (gRegEditor->inputRepeatTimer < 0) {
                        gRegEditor->inputRepeatTimer = 1;
                    } else {
                        dPadInputCur ^= gRegEditor->dPadInputPrev;
                    }
                } else {
                    gRegEditor->inputRepeatTimer = 16;
                    gRegEditor->dPadInputPrev = dPadInputCur;
                }

                increment =
                    CHECK_BTN_ANY(dPadInputCur, BTN_DRIGHT)  ? (CHECK_BTN_ALL(input->cur.button, BTN_A | BTN_B) ? 1000
                                                                : CHECK_BTN_ALL(input->cur.button, BTN_A)       ? 100
                                                                : CHECK_BTN_ALL(input->cur.button, BTN_B)       ? 10
                                                                                                                : 1)
                    : CHECK_BTN_ANY(dPadInputCur, BTN_DLEFT) ? (CHECK_BTN_ALL(input->cur.button, BTN_A | BTN_B) ? -1000
                                                                : CHECK_BTN_ALL(input->cur.button, BTN_A)       ? -100
                                                                : CHECK_BTN_ALL(input->cur.button, BTN_B)       ? -10
                                                                                                                : -1)
                                                             : 0;

                gRegEditor->data[gRegEditor->regCur + pageDataStart] += increment;

                if (CHECK_BTN_ANY(dPadInputCur, BTN_DUP)) {
                    gRegEditor->regCur--;
                    if (gRegEditor->regCur < 0) {
                        gRegEditor->regCur = REGS_PER_PAGE - 1;
                    }
                } else if (CHECK_BTN_ANY(dPadInputCur, BTN_DDOWN)) {
                    gRegEditor->regCur++;
                    if (gRegEditor->regCur >= REGS_PER_PAGE) {
                        gRegEditor->regCur = 0;
                    }
                }

                if (iREG(0)) {
                    iREG(0) = 0;
                    Rumble_Request(0.0f, iREG(1), iREG(2), iREG(3));
                }

                break;

            default:
                break;
        }
    }
}

// Draw the reg editor
void Regs_DrawEditor(GfxPrint* printer) {
    s32 i;
    s32 pageStart = (gRegEditor->regPage - 1) * REGS_PER_PAGE;
    s32 pageDataStart = ((gRegEditor->regGroup * REG_PAGES) + gRegEditor->regPage - 1) * REGS_PER_PAGE;
    s32 pad;
    char regGroupName[3];

    regGroupName[0] = 'R';
    regGroupName[1] = sRegGroupChars[gRegEditor->regGroup];
    regGroupName[2] = '\0';

    GfxPrint_SetColor(printer, 0, 128, 128, 128);

    for (i = 0; i < REGS_PER_PAGE; i++) {
        if (i == gRegEditor->regCur) {
            GfxPrint_SetColor(printer, 0, 255, 255, 255);
        }

        GfxPrint_SetPos(printer, 3, i + 5);
        GfxPrint_Printf(printer, "%s%02d%6d", regGroupName, pageStart + i, gRegEditor->data[i + pageDataStart]);

        if (i == gRegEditor->regCur) {
            GfxPrint_SetColor(printer, 0, 128, 128, 128);
        }
    }
}

void func_80063D7C(GraphicsContext* gfxCtx) {
    Gfx* gfx;
    Gfx* opaStart;
    GfxPrint printer;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_debug.c", 628);

    GfxPrint_Init(&printer);
    opaStart = POLY_OPA_DISP;
    gfx = Graph_GfxPlusOne(POLY_OPA_DISP);
    gSPDisplayList(OVERLAY_DISP++, gfx);
    GfxPrint_Open(&printer, gfx);

    if ((OREG(0) == 1) || (OREG(0) == 8)) {
        func_80063828(&printer);
    }

    if (gRegEditor->regPage != 0) {
        Regs_DrawEditor(&printer);
    }

    sDebugPrintTextBufferNumUsed = 0;

    gfx = GfxPrint_Close(&printer);
    gSPEndDisplayList(gfx++);
    Graph_BranchDlist(opaStart, gfx);
    POLY_OPA_DISP = gfx;

    if (1) {}

    CLOSE_DISPS(gfxCtx, "../z_debug.c", 664);

    GfxPrint_Destroy(&printer);
}
