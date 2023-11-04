/**
 * @file fault_drawer.c
 *
 * Implements routines for drawing text with a fixed font directly to a framebuffer, used in displaying
 * the crash screen implemented by fault.c
 */
#include "global.h"
#include "terminal.h"

typedef struct {
    /* 0x00 */ u16* fb;
    /* 0x04 */ u16 w;
    /* 0x06 */ u16 h;
    /* 0x08 */ u16 yStart;
    /* 0x0A */ u16 yEnd;
    /* 0x0C */ u16 xStart;
    /* 0x0E */ u16 xEnd;
    /* 0x10 */ u16 foreColor;
    /* 0x12 */ u16 backColor;
    /* 0x14 */ u16 cursorX;
    /* 0x16 */ u16 cursorY;
    /* 0x18 */ const u32* fontData;
    /* 0x1C */ u8 charW;
    /* 0x1D */ u8 charH;
    /* 0x1E */ s8 charWPad;
    /* 0x1F */ s8 charHPad;
    /* 0x20 */ u16 printColors[10];
    /* 0x34 */ u8 escCode; // bool
    /* 0x35 */ u8 osSyncPrintfEnabled;
    /* 0x38 */ void (*inputCallback)(void);
} FaultDrawer; // size = 0x3C

const u32 sFaultDrawerFont[] = {
    0x00DFFD00, 0x0AEEFFA0, 0x0DF22DD0, 0x06611DC0, 0x01122DD0, 0x06719900, 0x011EED10, 0x077EF700, 0x01562990,
    0x05589760, 0x0DD22990, 0x05599770, 0x04DFFD40, 0x026EF700, 0x00000000, 0x00000000, 0x08BFFB00, 0x0EFFFFC0,
    0x0BF00FB0, 0x0FF00330, 0x0FF00FF0, 0x0FF00220, 0x0CFBBF60, 0x0FFCCE20, 0x0DD44FF0, 0x0FF00220, 0x0FF00FF0,
    0x0FF00330, 0x0CFBBF40, 0x0EF77740, 0x00000000, 0x00000000, 0x00DFFD00, 0x0AEEFFA0, 0x0DF22DD0, 0x06611DC0,
    0x01122DD0, 0x06719900, 0x011EED10, 0x077EF700, 0x01562990, 0x05589760, 0x0DD22990, 0x05599770, 0x04DFFD40,
    0x026EF700, 0x00000000, 0x00000000, 0x08BFFB00, 0x000DE000, 0x0BF00FB0, 0x005DE600, 0x0FF00FF0, 0x055CC660,
    0x0CFBBF60, 0x773FF377, 0x0DD44FF0, 0xBB3FF3BB, 0x0FF00FF0, 0x099CCAA0, 0x0CFBBF40, 0x009DEA00, 0x00000000,
    0x000DE000, 0x04C22C40, 0x028D5020, 0x0CCAACC0, 0x21F91710, 0x04C22C40, 0x12493400, 0x00820800, 0x01975110,
    0x088A8880, 0x04615241, 0x00800800, 0x43117530, 0x00A20800, 0x60055600, 0x00000000, 0x04400040, 0x00221100,
    0x00000080, 0x000FB000, 0x00000880, 0x040DA400, 0x00008800, 0x08CDE880, 0x022AA220, 0x08CDE880, 0x02AA2220,
    0x040DA400, 0x0CD10000, 0x000FB000, 0x8C510000, 0x00221100, 0x81100000, 0x00DFFD00, 0x0AEEFFA0, 0x0DF22DD0,
    0x06611DC0, 0x01122DD0, 0x06719900, 0x011EED10, 0x077EF700, 0x01562990, 0x05589760, 0x0DD22990, 0x05599770,
    0x04DFFD40, 0x026EF700, 0x00000000, 0x00000000, 0x00333300, 0x04489980, 0x033CC330, 0x00CD1088, 0x033CC330,
    0x02BF62A8, 0x00333320, 0x01104C80, 0x01100330, 0x0015C800, 0x033CC330, 0x02673220, 0x003FF300, 0x04409900,
    0x00880000, 0x00000000, 0x05DFFD10, 0x07FFFF60, 0x1CE00EC1, 0x0FF00990, 0x1EE11661, 0x0FF00110, 0x1EF45621,
    0x0FF66710, 0x1EF23661, 0x0FF08990, 0x1EF10FE1, 0x0FF00990, 0x16ECCE21, 0x07FBBB20, 0x01111110, 0x00000000,
    0x09B66FD0, 0x27D88E60, 0x0992ED10, 0x2FF02EE0, 0x099AE510, 0x2FF62EE0, 0x099B7510, 0x2FD64EE0, 0x0DDAE510,
    0x2FD04EE0, 0x0DD2ED10, 0x2FD00EE0, 0x09F66F90, 0x27D99F70, 0x00000000, 0x00000000, 0x07FFFF00, 0x8F711FF0,
    0x2FD00FF0, 0x8F711FF0, 0x2FD00770, 0x8E611EE0, 0x27DDDF60, 0x8E691EE0, 0x27764AA0, 0x8EE99EE0, 0x2FD06E80,
    0x8AE7FEA0, 0x07FA8E60, 0x88277A80, 0x00000000, 0x00000000, 0x077CCFF0, 0x13266011, 0x077CCFF0, 0x03766510,
    0x0239D720, 0x04533540, 0x002FF200, 0x01133110, 0x005FB100, 0x00033000, 0x055EE550, 0x01133110, 0x055EEDD0,
    0x02233000, 0x00088880, 0x8AABB888, 0x00001100, 0x00044510, 0x04623320, 0x00440110, 0x04C89AA0, 0x00EEAB10,
    0x0CE66720, 0x0EF55FB0, 0x0EE00660, 0x0BF62B90, 0x0EE00660, 0x03FC8990, 0x04EEEEA0, 0x00773BB0, 0x00000000,
    0x08888800, 0x09900000, 0x00111000, 0x09922440, 0x00011000, 0x09908800, 0x26EFDE20, 0x099BB540, 0x2EC33CE2,
    0x0D9A2550, 0x2EC33CE2, 0x0DDAA550, 0x2EC33CE2, 0x09D6ED10, 0x26CBBC62, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00011000, 0x05FBFFE0, 0x8E6116E8, 0x0FF40330, 0x8F7117F8, 0x07FC8B30, 0x8E6996E8,
    0x05733BA0, 0x8A6DD6A8, 0x0DD88A20, 0x08A779B2, 0x01100220, 0x00000000, 0x00000080, 0x8A011000, 0x00000800,
    0x80A11000, 0x07744F70, 0x80A99000, 0x0231DF20, 0x84E60004, 0x0027DA20, 0xC8AA4C40, 0x00573B20, 0x00A11800,
    0x05546F50, 0x00A99800, 0x02222080, 0x02001888,
};

#define FAULT_DRAWER_CURSOR_X 22
#define FAULT_DRAWER_CURSOR_Y 16

FaultDrawer sFaultDrawerDefault = {
    (u16*)(PHYS_TO_K0(0x400000) - sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH])),
    SCREEN_WIDTH,
    SCREEN_HEIGHT,
    FAULT_DRAWER_CURSOR_Y,
    SCREEN_HEIGHT - FAULT_DRAWER_CURSOR_Y - 1,
    FAULT_DRAWER_CURSOR_X,
    SCREEN_WIDTH - FAULT_DRAWER_CURSOR_X - 1,
    GPACK_RGBA5551(255, 255, 255, 1),
    GPACK_RGBA5551(0, 0, 0, 0),
    FAULT_DRAWER_CURSOR_X,
    FAULT_DRAWER_CURSOR_Y,
    sFaultDrawerFont,
    8,
    8,
    0,
    0,
    {
        GPACK_RGBA5551(0, 0, 0, 1),
        GPACK_RGBA5551(255, 0, 0, 1),
        GPACK_RGBA5551(0, 255, 0, 1),
        GPACK_RGBA5551(255, 255, 0, 1),
        GPACK_RGBA5551(0, 0, 255, 1),
        GPACK_RGBA5551(255, 0, 255, 1),
        GPACK_RGBA5551(0, 255, 255, 1),
        GPACK_RGBA5551(255, 255, 255, 1),
        GPACK_RGBA5551(120, 120, 120, 1),
        GPACK_RGBA5551(176, 176, 176, 1),
    },
    false,
    false,
    NULL,
};

#ifndef NON_MATCHING
// TODO: match .bss (has reordering issues)
extern FaultDrawer sFaultDrawer;
extern char D_8016B6BC[0x24];
#else
// Non-matching version for struct shiftability
FaultDrawer sFaultDrawer;
char D_8016B6BC[0x24];
#endif

void FaultDrawer_SetOsSyncPrintfEnabled(u32 enabled) {
    sFaultDrawer.osSyncPrintfEnabled = enabled;
}

void FaultDrawer_DrawRecImpl(s32 xStart, s32 yStart, s32 xEnd, s32 yEnd, u16 color) {
    u16* fb;
    s32 x, y;
    s32 xDiff = sFaultDrawer.w - xStart;
    s32 yDiff = sFaultDrawer.h - yStart;
    s32 xSize = xEnd - xStart + 1;
    s32 ySize = yEnd - yStart + 1;

    if (xDiff > 0 && yDiff > 0) {
        if (xDiff < xSize) {
            xSize = xDiff;
        }

        if (yDiff < ySize) {
            ySize = yDiff;
        }

        fb = sFaultDrawer.fb + sFaultDrawer.w * yStart + xStart;
        for (y = 0; y < ySize; y++) {
            for (x = 0; x < xSize; x++) {
                *fb++ = color;
            }
            fb += sFaultDrawer.w - xSize;
        }

        osWritebackDCacheAll();
    }
}

void FaultDrawer_DrawChar(char c) {
    u16* fb;
    s32 x, y;
    const u32* dataPtr;
    u32 data;
    s32 cursorX = sFaultDrawer.cursorX;
    s32 cursorY = sFaultDrawer.cursorY;
    const u32** fontData = &sFaultDrawer.fontData;
    s32 shift = c % 4;

    dataPtr = &fontData[0][(((c / 8) * 16) + ((c & 4) >> 2))];
    fb = sFaultDrawer.fb + (sFaultDrawer.w * cursorY) + cursorX;

    if ((sFaultDrawer.xStart <= cursorX) && ((sFaultDrawer.charW + cursorX - 1) <= sFaultDrawer.xEnd) &&
        (sFaultDrawer.yStart <= cursorY) && ((sFaultDrawer.charH + cursorY - 1) <= sFaultDrawer.yEnd)) {
        for (y = 0; y < sFaultDrawer.charH; y++) {
            u32 mask = 0x10000000 << shift;

            data = *dataPtr;
            for (x = 0; x < sFaultDrawer.charW; x++) {
                if (mask & data) {
                    fb[x] = sFaultDrawer.foreColor;
                } else if (sFaultDrawer.backColor & 1) {
                    fb[x] = sFaultDrawer.backColor;
                }
                mask >>= 4;
            }
            fb += sFaultDrawer.w;
            dataPtr += 2;
        }
    }
}

s32 FaultDrawer_ColorToPrintColor(u16 color) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sFaultDrawer.printColors); i++) {
        if (color == sFaultDrawer.printColors[i]) {
            return i;
        }
    }
    return -1;
}

void FaultDrawer_UpdatePrintColor(void) {
    s32 idx;

    if (sFaultDrawer.osSyncPrintfEnabled) {
        osSyncPrintf(VT_RST);

        idx = FaultDrawer_ColorToPrintColor(sFaultDrawer.foreColor);
        if (idx >= 0 && idx < ARRAY_COUNT(sFaultDrawer.printColors) - 2) {
            osSyncPrintf(VT_SGR("3%d"), idx);
        }

        idx = FaultDrawer_ColorToPrintColor(sFaultDrawer.backColor);
        if (idx >= 0 && idx < ARRAY_COUNT(sFaultDrawer.printColors) - 2) {
            osSyncPrintf(VT_SGR("4%d"), idx);
        }
    }
}

void FaultDrawer_SetForeColor(u16 color) {
    sFaultDrawer.foreColor = color;
    FaultDrawer_UpdatePrintColor();
}

void FaultDrawer_SetBackColor(u16 color) {
    sFaultDrawer.backColor = color;
    FaultDrawer_UpdatePrintColor();
}

void FaultDrawer_SetFontColor(u16 color) {
    FaultDrawer_SetForeColor(color | 1); // force alpha to be set
}

void FaultDrawer_SetCharPad(s8 padW, s8 padH) {
    sFaultDrawer.charWPad = padW;
    sFaultDrawer.charHPad = padH;
}

void FaultDrawer_SetCursor(s32 x, s32 y) {
    if (sFaultDrawer.osSyncPrintfEnabled) {
        osSyncPrintf(VT_CUP("%d", "%d"), (y - sFaultDrawer.yStart) / (sFaultDrawer.charH + sFaultDrawer.charHPad),
                     (x - sFaultDrawer.xStart) / (sFaultDrawer.charW + sFaultDrawer.charWPad));
    }
    sFaultDrawer.cursorX = x;
    sFaultDrawer.cursorY = y;
}

void FaultDrawer_FillScreen(void) {
    if (sFaultDrawer.osSyncPrintfEnabled) {
        osSyncPrintf(VT_CLS);
    }

    FaultDrawer_DrawRecImpl(sFaultDrawer.xStart, sFaultDrawer.yStart, sFaultDrawer.xEnd, sFaultDrawer.yEnd,
                            sFaultDrawer.backColor | 1);
    FaultDrawer_SetCursor(sFaultDrawer.xStart, sFaultDrawer.yStart);
}

void* FaultDrawer_PrintCallback(void* arg, const char* str, size_t count) {
    for (; count != 0; count--, str++) {
        s32 curXStart;
        s32 curXEnd;

        if (sFaultDrawer.escCode) {
            sFaultDrawer.escCode = false;
            if (*str > '0' && *str <= '9') {
                FaultDrawer_SetForeColor(sFaultDrawer.printColors[*str - '0']);
            }

            curXStart = sFaultDrawer.cursorX;
            curXEnd = sFaultDrawer.xEnd - sFaultDrawer.charW;
        } else {
            switch (*str) {
                case '\n':
                    if (sFaultDrawer.osSyncPrintfEnabled) {
                        osSyncPrintf("\n");
                    }

                    sFaultDrawer.cursorX = sFaultDrawer.w;
                    curXStart = sFaultDrawer.cursorX;
                    curXEnd = sFaultDrawer.xEnd - sFaultDrawer.charW;
                    break;
                case FAULT_ESC:
                    sFaultDrawer.escCode = true;
                    curXStart = sFaultDrawer.cursorX;
                    curXEnd = sFaultDrawer.xEnd - sFaultDrawer.charW;
                    break;
                default:
                    if (sFaultDrawer.osSyncPrintfEnabled) {
                        osSyncPrintf("%c", *str);
                    }

                    FaultDrawer_DrawChar(*str);
                    sFaultDrawer.cursorX += sFaultDrawer.charW + sFaultDrawer.charWPad;

                    curXStart = sFaultDrawer.cursorX;
                    curXEnd = sFaultDrawer.xEnd - sFaultDrawer.charW;
                    break;
            }
        }

        if (curXEnd <= curXStart) {
            sFaultDrawer.cursorX = sFaultDrawer.xStart;
            sFaultDrawer.cursorY += sFaultDrawer.charH + sFaultDrawer.charHPad;
            if (sFaultDrawer.yEnd - sFaultDrawer.charH <= sFaultDrawer.cursorY) {
                if (sFaultDrawer.inputCallback) {
                    sFaultDrawer.inputCallback();
                    FaultDrawer_FillScreen();
                }
                sFaultDrawer.cursorY = sFaultDrawer.yStart;
            }
        }
    }
    osWritebackDCacheAll();

    return arg;
}

s32 FaultDrawer_VPrintf(const char* fmt, va_list args) {
    return _Printf(FaultDrawer_PrintCallback, &sFaultDrawer, fmt, args);
}

s32 FaultDrawer_Printf(const char* fmt, ...) {
    s32 ret;
    va_list args;
    va_start(args, fmt);

    ret = FaultDrawer_VPrintf(fmt, args);

    va_end(args);
    return ret;
}

void FaultDrawer_DrawText(s32 x, s32 y, const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    FaultDrawer_SetCursor(x, y);
    FaultDrawer_VPrintf(fmt, args);

    va_end(args);
}

void FaultDrawer_SetDrawerFB(void* fb, u16 w, u16 h) {
    sFaultDrawer.fb = fb;
    sFaultDrawer.w = w;
    sFaultDrawer.h = h;
}

void FaultDrawer_SetInputCallback(void (*callback)(void)) {
    sFaultDrawer.inputCallback = callback;
}

void FaultDrawer_WritebackFBDCache(void) {
    osWritebackDCache(sFaultDrawer.fb, sFaultDrawer.w * sFaultDrawer.h * sizeof(u16));
}

void FaultDrawer_Init(void) {
    bcopy(&sFaultDrawerDefault, &sFaultDrawer, sizeof(FaultDrawer));
    sFaultDrawer.fb = (u16*)(PHYS_TO_K0(osMemSize) - sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]));
}
