#include "n64dd.h"

#include "libc64/aprintf.h"
#include "attributes.h"
#include "array_count.h"
#include "color.h"

// Draws text to framebuffer
typedef struct n64dd_Textbox {
    /* 0x00 */ PrintCallback callback;
    /* 0x04 */ void* charTexBuf;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 posX;
    /* 0x0C */ u16 posY;
    /* 0x10 */ Color_RGBA8_u32 color;
    /* 0x14 */ u16 baseX;
    /* 0x16 */ u16 baseY;
    /* 0x18 */ u16 endX;
    /* 0x1A */ u16 endY;
    /* 0x1C */ u8 sjisPrevByte;
    /* 0x20 */ void* frameBuf;
    /* 0x24 */ u16 screenWidth;
    /* 0x26 */ u16 screenHeight;
} n64dd_Textbox;

// clang-format off
u32 charTexOffset[0x5F] = {
    0x00009D14, 0x00232A14, 0x00296314, 0x002F8A14, 0x00457E18, 0x0063CA14, 0x0084AA14, 0x00A03314,
    0x00A45E14, 0x00BB4E14, 0x00CA6514, 0x00D3770E, 0x00E33302, 0x00E78108, 0x00EB2102, 0x00EC6C14,
    0x01008A14, 0x01163A14, 0x01217A14, 0x01377A14, 0x014D8A14, 0x01638A14, 0x01798A14, 0x018F7A14,
    0x01A58A14, 0x01BB8A14, 0x01D1170E, 0x01D5490E, 0x01DF770E, 0x01EF740A, 0x01F9770E, 0x02097A14,
    0x021FDC16, 0x024DBA14, 0x026E7A14, 0x0284BA14, 0x02A59A14, 0x02C16A14, 0x02D26A14, 0x02E3BA14,
    0x03048A14, 0x031A1A14, 0x03206A14, 0x03318A14, 0x03476A14, 0x0358CA14, 0x03799A14, 0x0395CA14,
    0x03B67A14, 0x03CCCA14, 0x03ED8A14, 0x04037A14, 0x04196A14, 0x042A8A14, 0x0440AA14, 0x045CDA14,
    0x04839A14, 0x049F9A14, 0x04BB7A14, 0x04D14D14, 0x04DF5C14, 0x04F33D14, 0x05015216, 0x050681FA,
    0x050A9D14, 0x052D9810, 0x05449A14, 0x05609810, 0x05779A14, 0x05939810, 0x05AA5A14, 0x05BB9C10,
    0x05DC7A14, 0x05F22A14, 0x05F83D14, 0x06067A14, 0x061C2A14, 0x0622D810, 0x06427810, 0x06549810,
    0x066B9B10, 0x06899B10, 0x06A74810, 0x06B06810, 0x06BE5A14, 0x06CF770E, 0x06DF870E, 0x06EFB70E,
    0x0707670E, 0x07138A0E, 0x0729670E, 0x07356D14, 0x074A1F16, 0x07526D14, 0x07675216,
};
// clang-format on

/**
 * Loads character texture to buffer.
 * @param charCode What character
 * @param charTexBuf Buffer for loading the character texture
 * @param dx x offset for the character in the textbox
 * @param dy y offset for the character in the textbox
 * @param cy y offset of the textbox (?)
 */
s32 n64dd_loadCharTex(s32 charCode, void* charTexBuf, int* dx, int* dy, int* cy) {
    s32 offset;
    OSPiHandle* handle;
    OSMesgQueue queue;
    OSMesg msgBuf[1];
    OSIoMesg mesg;

    handle = osDriveRomInit();
    if (charCode >= 0x20 && charCode < 0x7F) { // ASCII
        offset = LeoGetAAdr2(charTexOffset[charCode - 0x20], dx, dy, cy);
    } else if (charCode >= 0x8140) { // Shift-JIS
        offset = LeoGetKAdr(charCode);
        *dx = 16;
        *dy = 16;
        *cy = 11;
    } else {
        return -1;
    }

    osCreateMesgQueue(&queue, msgBuf, ARRAY_COUNT(msgBuf));

    // clang-format off
    mesg.hdr.retQueue = &queue; \
    mesg.devAddr = offset + DDROM_FONT_START; \
    mesg.dramAddr = charTexBuf; \
    mesg.size = 0x80; \
    mesg.hdr.pri = 0;
    // clang-format on

    handle->transferInfo.cmdType = 2;
    osEPiStartDma(handle, &mesg, 0);
    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);

    return 0;
}

const u16 intensColorMap[16] = {
    0x0001, 0x1085, 0x2109, 0x318D, 0x4211, 0x5295, 0x6319, 0x739D,
    0x8C63, 0x9CE7, 0xAD6B, 0xBDEF, 0xCE73, 0xDEF7, 0xEF7B, 0xFFFF,
};

// Maps 4-bit intensity to a 16-bit color
u16 n64dd_mapIntensToColor(u32 arg0) {
    return intensColorMap[arg0 % ARRAY_COUNT(intensColorMap)];
}

/**
 * Prints text to the framebuffer.
 * @param charTexBuf Buffer with all the characters to print
 * @param posX x position of the textbox
 * @param posY y position of the textbox
 * @param dx x offset of the characters in the textbox
 * @param dy y offset of the characters in the textbox
 * @param cy y offset of the textbox (?)
 * @param frameBuf Framebuffer
 * @param screenWidth The width of the screen
 */
void n64dd_printTextFB(void* charTexBuf, s32 posX, s32 posY, s32 dx, s32 dy, s32 cy, void* frameBuf, s32 screenWidth) {
    s32 intensity;
    s32 x;
    s32 y;
    u8* src = charTexBuf;
    u16* dst = frameBuf;

    for (y = 0; y < dy; y++) {
        for (x = 0; x < dx; x++) {
            if (!(x & 1)) {
                intensity = *src >> 4;
            } else {
                intensity = *src & 0xF;
                src++;
            }
            dst[posX + x + ((posY + (11 - cy) + y) * screenWidth)] = n64dd_mapIntensToColor(intensity);
        }
        if (dx & 1) {
            src++;
        }
    }
}

void n64dd_setTextboxColor(n64dd_Textbox* textbox, u32 r, u32 g, u32 b, u32 a) {
    textbox->color.r = r;
    textbox->color.g = g;
    textbox->color.b = b;
    textbox->color.a = a;
}

void n64dd_setTextboxOffset(n64dd_Textbox* textbox, s32 arg1, s32 arg2) {
    textbox->posX = textbox->baseX + arg1;
    textbox->posY = textbox->baseY + arg2;
}

void n64dd_setTextboxBaseDimension(n64dd_Textbox* textbox, s32 baseX, s32 baseY, s32 endX, s32 endY) {
    textbox->baseX = baseX;
    textbox->baseY = baseY;
    textbox->endX = endX;
    textbox->endY = endY;
}

// moves the textbox to a secondary framebuffer
void n64dd_moveTextboxFB(n64dd_Textbox* textbox, void* frameBuf, s32 screenWidth, s32 screenHeight) {
    textbox->frameBuf = (u8*)frameBuf + 0x20000000;
    textbox->screenWidth = screenWidth;
    textbox->screenHeight = screenHeight;
    n64dd_setTextboxBaseDimension(textbox, 0, 0, screenWidth - 1, screenHeight - 1);
}

void func_801CA3B4(n64dd_Textbox* textbox, void* charTexBuf, s32 arg2) {
    textbox->charTexBuf = (u8*)charTexBuf + 0x20000000;
    textbox->unk_08 = arg2;
}

// remove invalid characters, insert spaces
void n64dd_textboxPrintSpaces(n64dd_Textbox* textbox, char c) {
    s32 charCode;
    int dx;
    int dy;
    int cy;

    if (textbox->sjisPrevByte != 0) {
        charCode = (textbox->sjisPrevByte << 8) | c;
    } else {
        if (c >= 0x80 && c < 0x99) {
            textbox->sjisPrevByte = c;
            return;
        }
        charCode = c;
    }

    textbox->sjisPrevByte = 0;
    if (n64dd_loadCharTex(charCode, textbox->charTexBuf, &dx, &dy, &cy) == 0) {
        if (textbox->posX + dx > textbox->endX) {
            textbox->posX = textbox->baseX;
            if (textbox->posY + 16 > textbox->endY) {
                textbox->posY = textbox->baseY;
            } else {
                textbox->posY += 16;
            }
        }
        n64dd_printTextFB(textbox->charTexBuf, textbox->posX, textbox->posY, dx, dy, cy, textbox->frameBuf,
                        textbox->screenWidth);
        textbox->posX += (dx == 16 ? dx : dx + 2);
    }
}

// escape tabs, newlines, carriage returns
void n64dd_textboxEscapeChar(n64dd_Textbox* textbox, char c) {
    if (c >= ' ' && c <= 0xFF) {
        n64dd_textboxPrintSpaces(textbox, c);
    } else {
        switch (c) {
            case '\n':
                textbox->posY += 32;
                FALLTHROUGH;
            case '\r':
                textbox->posX = textbox->baseX;
                break;
            case '\t':
                do {
                    n64dd_textboxPrintSpaces(textbox, ' ');
                } while ((textbox->posX - textbox->baseX) % 256);
                break;
            case '\0':
                break;
        }
    }
}

/**
 * Escapes all whitespaces, tabs, carriage returns, newlines, etc. from a textbox.
 * @param textbox The textbox
 * @param str The string to escape
 * @param nChars The number of characters in the string
 * @param count sizeof(char)
 */
void n64dd_textboxEscapeText(n64dd_Textbox* textbox, const char* str, s32 nChars, size_t count) {
    const char* s = str;
    s32 n = nChars * count;

    while (n != 0) {
        n64dd_textboxEscapeChar(textbox, *s++);
        n--;
    }
}

/**
 * Escapes all whitespaces, tabs, carriage returns, newlines, etc. from a textbox.
 * Equivalent to n64dd_textboxEscapeText
 */
void n64dd_textboxEscapeStrings(n64dd_Textbox* textbox, const char* str) {
    while (*str != 0) {
        n64dd_textboxEscapeChar(textbox, *str++);
    }
}

/**
 * Escape a textbox.
 * @param textbox the textbox
 * @param str the string to escape
 * @param count sizeof(char)
 * @returns the escaped textbox
 */
void* n64dd_getEscapedTextbox(void* textbox, const char* str, size_t count) {
    n64dd_textboxEscapeText(textbox, str, 1, count);
    return textbox;
}

void n64dd_initTextbox(n64dd_Textbox* textbox) {
    textbox->callback = &n64dd_getEscapedTextbox;
    textbox->posX = 0;
    textbox->posY = 0;
    textbox->baseX = 0;
    textbox->baseY = 0;
    textbox->endX = 0;
    textbox->endY = 0;
    textbox->color.rgba = 0;
    textbox->sjisPrevByte = 0;
    textbox->charTexBuf = NULL;
}

void n64dd_textboxEmpty(n64dd_Textbox* textbox) {
}

s32 n64dd_textboxVPrintfInternal(n64dd_Textbox* textbox, const char* fmt, va_list args) {
    return PrintUtils_VPrintf(&textbox->callback, fmt, args);
}

s32 n64dd_textboxVPrintf(n64dd_Textbox* textbox, const char* fmt, ...) {
    s32 ret;
    va_list args;

    va_start(args, fmt);
    ret = n64dd_textboxVPrintfInternal(textbox, fmt, args);
    va_end(args);

    return ret;
}
