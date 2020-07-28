#include <ultra64.h>
#include <ultra64/controller.h>
#include <global.h>

typedef struct {
    u8 x;
    u8 y;
    u8 colorId;
    char text[0x15];
} PrintTextBuffer;

typedef struct {
    u16 push;
    u16 held;
} InputCombo;

GameInfo* gGameInfo;
int D_8015FA94; // no known symbols
PrintTextBuffer D_8015FA98[0x16];

s16 D_8011E0B0 = 0; // PrintTextBuffer index
Color_RGBA8 printTextColors[] = {
    { 255, 255, 32, 192 }, { 255, 150, 128, 192 }, { 128, 96, 0, 64 },     { 192, 128, 16, 128 },
    { 255, 192, 32, 128 }, { 230, 230, 220, 64 },  { 128, 150, 255, 128 }, { 128, 255, 32, 128 },
};

InputCombo inputCombos[REG_GROUPS] = {
    { L_TRIG, U_CBUTTONS },       { L_TRIG, L_CBUTTONS },   { L_TRIG, D_CBUTTONS },     { L_TRIG, A_BUTTON },
    { R_TRIG, D_CBUTTONS },       { L_TRIG, R_CBUTTONS },   { L_TRIG, R_TRIG },         { L_TRIG, L_JPAD },
    { L_TRIG, R_JPAD },           { L_TRIG, U_JPAD },       { L_TRIG, B_BUTTON },       { L_TRIG, Z_TRIG },
    { L_TRIG, D_JPAD },           { R_TRIG, A_BUTTON },     { R_TRIG, B_BUTTON },       { R_TRIG, Z_TRIG },
    { R_TRIG, L_TRIG },           { R_TRIG, U_CBUTTONS },   { R_TRIG, R_CBUTTONS },     { R_TRIG, L_JPAD },
    { R_TRIG, L_CBUTTONS },       { R_TRIG, START_BUTTON }, { L_TRIG, START_BUTTON },   { R_TRIG, R_JPAD },
    { R_TRIG, U_JPAD },           { START_BUTTON, R_TRIG }, { START_BUTTON, A_BUTTON }, { START_BUTTON, B_BUTTON },
    { START_BUTTON, R_CBUTTONS },
};

char regChar[] = " SOPQMYDUIZCNKXcsiWAVHGmnBdkb";

// initialize GameInfo
void func_800636C0() {
    s32 i;

    gGameInfo = (GameInfo*)SystemArena_MallocDebug(sizeof(GameInfo), "../z_debug.c", 260);
    gGameInfo->regPage = 0;
    gGameInfo->regGroup = 0;
    gGameInfo->regCur = 0;
    gGameInfo->dpadLast = 0;
    gGameInfo->repeat = 0;
    for (i = 0; i < ARRAY_COUNT(gGameInfo->data); i++) {
        gGameInfo->data[i] = 0;
    }
}

// Called when free movement is active.
// 8011D394 to enable camera debugger
void func_8006375C(s32 arg0, s32 arg1, float* d_80855320) {
}

// Copy Camera Debugger Text
void func_8006376C(u8 x, u8 y, u8 colorId, const char* text) {
    PrintTextBuffer* buf;
    char* bufText;
    s16 i;

    buf = &D_8015FA98[D_8011E0B0];
    if (D_8011E0B0 < 0x16) {
        buf->x = x;
        buf->y = y;
        buf->colorId = colorId;

        i = 0;
        bufText = buf->text;
        while (*bufText++ = *text++) {
            if (i++ > 0x14) {
                break;
            }
        }

        *bufText = '\0';
        D_8011E0B0++;
    }
}

// Draw Text
void func_80063828(GfxPrint* gfxPrint) {
    s32 i;
    Color_RGBA8* color;
    PrintTextBuffer* buffer;
    char* text;

    i = 0;
    if (D_8011E0B0 > 0) {
        do {
            buffer = &D_8015FA98[i];
            text = buffer->text;

            color = &printTextColors[buffer->colorId];
            GfxPrint_SetColor(gfxPrint, color->r, color->g, color->b, color->a);
            GfxPrint_SetPos(gfxPrint, buffer->x, buffer->y);
            GfxPrint_Printf(gfxPrint, "%s", text);
            i += 1;
        } while (i < D_8011E0B0);
    }
}

// Edit REG
void func_8006390C(Input* input) {

    s32 dpad;
    s32 regGroup;
    s32 increment;
    InputCombo* input_combo;
    s32 i;

    regGroup = (gGameInfo->regGroup * REG_PAGES + gGameInfo->regPage) * REG_PER_PAGE - REG_PER_PAGE;
    dpad = input->cur.in.button & (U_JPAD | L_JPAD | R_JPAD | D_JPAD);
    if (CHECK_PAD(input->cur, L_TRIG) || CHECK_PAD(input->cur, R_TRIG) || CHECK_PAD(input->cur, START_BUTTON)) {
        input_combo = inputCombos;
        for (i = 0; i < REG_GROUPS; i++) {
            if (~(~input_combo->push | input->cur.in.button) || ~(~input_combo->held | input->press.in.button)) {
                input_combo++;
            } else {
                break;
            }
        }

        if (i < REG_GROUPS) {
            if (i == gGameInfo->regGroup) {
                gGameInfo->regPage = (gGameInfo->regPage + 1) % (REG_PAGES + 1);
                return;
            }
            gGameInfo->regGroup = i;
            gGameInfo->regPage = 0;
        }
    } else {
        switch (gGameInfo->regPage - 1) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:

                if (dpad == gGameInfo->dpadLast) {
                    gGameInfo->repeat--;
                    if (gGameInfo->repeat < 0) {
                        gGameInfo->repeat = 1;
                    } else {
                        dpad ^= gGameInfo->dpadLast;
                    }
                } else {
                    gGameInfo->repeat = 0x10;
                    gGameInfo->dpadLast = dpad;
                }

                increment =
                    (dpad & R_JPAD)
                        ? (CHECK_PAD(input->cur, A_BUTTON | B_BUTTON)
                               ? 1000
                               : CHECK_PAD(input->cur, A_BUTTON) ? 100 : CHECK_PAD(input->cur, B_BUTTON) ? 10 : 1)
                        : (dpad & L_JPAD)
                              ? (CHECK_PAD(input->cur, A_BUTTON | B_BUTTON)
                                     ? -1000
                                     : CHECK_PAD(input->cur, A_BUTTON) ? -100
                                                                       : CHECK_PAD(input->cur, B_BUTTON) ? -10 : -1)
                              : 0;

                gGameInfo->data[gGameInfo->regCur + regGroup] += increment;
                if (dpad & U_JPAD) {
                    gGameInfo->regCur--;
                    if (gGameInfo->regCur < 0) {
                        gGameInfo->regCur = REG_PER_PAGE - 1;
                    }
                } else if (dpad & D_JPAD) {
                    gGameInfo->regCur++;
                    if (gGameInfo->regCur >= REG_PER_PAGE) {
                        gGameInfo->regCur = 0;
                    }
                }
                if (iREG(0)) {
                    iREG(0) = 0;
                    func_800AA000(0, iREG(1), iREG(2), iREG(3));
                }
        }
    }
}

// Draw Memory Viewer
void func_80063C04(GfxPrint* gfxPrint) {
    s32 i;
    s32 page;
    s32 regGroup;
    s32 test; // removing affects stack
    char name[3];

    page = (gGameInfo->regPage * REG_PER_PAGE) - REG_PER_PAGE;
    regGroup = (gGameInfo->regGroup * REG_PAGES + gGameInfo->regPage) * REG_PER_PAGE - REG_PER_PAGE;

    // set up register name string
    name[0] = 'R';
    name[1] = regChar[gGameInfo->regGroup]; // r_group type char
    name[2] = '\0';
    GfxPrint_SetColor(gfxPrint, 0, 128, 128, 128);

    for (i = 0; i != REG_PER_PAGE; i++) {
        if (i == gGameInfo->regCur) {
            GfxPrint_SetColor(gfxPrint, 0, 255, 255, 255);
        }
        GfxPrint_SetPos(gfxPrint, 3, i + 5);
        GfxPrint_Printf(gfxPrint, "%s%02d%6d", &name, page + i, gGameInfo->data[i + regGroup]);
        if (i == gGameInfo->regCur) {
            GfxPrint_SetColor(gfxPrint, 0, 128, 128, 128);
        }
    }
}

void func_80063D7C(GraphicsContext* gfxCtx) {
    Gfx* sp7C;
    Gfx* sp78;
    GfxPrint gfxPrint;
    Gfx* tempRet;
    s32 pad;
    Gfx* dispRefs[4]; // stores state of GfxCtx next ptrs

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_debug.c", 628);
    GfxPrint_Init(&gfxPrint);
    sp78 = gfxCtx->polyOpa.p;
    tempRet = Graph_GfxPlusOne(gfxCtx->polyOpa.p);
    gSPDisplayList(gfxCtx->overlay.p++, tempRet);
    GfxPrint_Open(&gfxPrint, tempRet);

    if ((OREG(0) == 1) || (OREG(0) == 8)) {
        func_80063828(&gfxPrint);
    }

    if (gGameInfo->regPage != 0) {
        func_80063C04(&gfxPrint);
    }

    D_8011E0B0 = 0;
    sp7C = GfxPrint_Close(&gfxPrint);
    gSPEndDisplayList(sp7C++);
    Graph_BranchDlist(sp78, sp7C);
    gfxCtx->polyOpa.p = sp7C;
    if (0) {}
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_debug.c", 664);
    GfxPrint_Destroy(&gfxPrint);
}
