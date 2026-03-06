#include "n64dd.h"

#include "libc64/aprintf.h"
#include "attributes.h"
#include "array_count.h"
#include "color.h"

// Draws text to framebuffer
// is this a textbox?
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
// disk addresses for individual character texture into the font?
u32 n64dd_ASCIICharTexAddr[0x5F] = {
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

// Loads character textures from DD ROM?
s32 n64dd_loadCharTexToBuf(s32 charCode, void* charTexBuf, int* dx, int* dy, int* cy) {
    s32 offset;
    OSPiHandle* handle;
    OSMesgQueue queue;
    OSMesg msgBuf[1];
    OSIoMesg mesg;

    //! @bug handle is never null-checked. Though it should never be null.
    handle = osDriveRomInit();
    if (charCode >= 0x20 && charCode < 0x7F) { // ASCII
        offset = LeoGetAAdr2(n64dd_ASCIICharTexAddr[charCode - 0x20], dx, dy, cy);
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

const u16 intensityColorMap[16] = {
    0x0001, 0x1085, 0x2109, 0x318D, 0x4211, 0x5295, 0x6319, 0x739D,
    0x8C63, 0x9CE7, 0xAD6B, 0xBDEF, 0xCE73, 0xDEF7, 0xEF7B, 0xFFFF,
};


/**
 * Maps 4-bit intensity to a 16-bit color.
 * @param intensity The intensity
 * @returns The color
*/
u16 n64dd_mapIntensityToColor(u32 intensity) {
    return intensityColorMap[intensity % ARRAY_COUNT(intensityColorMap)];
}


/**
 * Puts characters onto the framebuffer at a given position.
 * @param charTexBuf A buffer that contains the textures to all the needed characters
 * @param posX X position of the text
 * @param posY Y position of the text
 * @param dx Not sure
 * @param dy Not sure
 * @param cy Not sure
 * @param frameBuf A pointer to the framebuffer
 * @param screenWidth The width of the framebuffer (used to scale the position of each character?)
 */
void n64dd_writeCharsToFB(void* charTexBuf, s32 posX, s32 posY, s32 dx, s32 dy, s32 cy, void* frameBuf, s32 screenWidth) {
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
            dst[posX + x + ((posY + (11 - cy) + y) * screenWidth)] = n64dd_mapIntensityToColor(intensity);
        }
        if (dx & 1) {
            src++;
        }
    }
}

/**
 * Change the colors of a textbox.
 * @param ddTextbox The textbox
 * @param r Red channel value
 * @param g Green channel value
 * @param b Blue channel value
 * @param a Alpha channel value
 */
void n64dd_changeTextboxColors(n64dd_Textbox* ddTextbox, u32 r, u32 g, u32 b, u32 a) {
    ddTextbox->color.r = r;
    ddTextbox->color.g = g;
    ddTextbox->color.b = b;
    ddTextbox->color.a = a;
}

/**
 * Move a textbox on the screen.
 * @param ddTextbox The textbox
 * @param xDelta How much to move the textbox horizontally
 * @param yDelta How much to move the textbox vertically
 * @remark Unused
 */
void n64dd_moveTextbox(n64dd_Textbox* ddTextbox, s32 xDelta, s32 yDelta) {
    ddTextbox->posX = ddTextbox->baseX + xDelta;
    ddTextbox->posY = ddTextbox->baseY + yDelta;
}


/**
 * Changes a textbox's base coordinates (where it spawns) and the end coordinates (where is the end of the textbox).
 * End coords (I think) are the point diagonal to the spawn point of the textbox (since textboxes are rectangles)
 * @param ddTextbox The textbox
 * @param baseX The base X coordinate
 * @param baseY The base Y coordinate
 * @param endX The end X coordinate
 * @param endY The end Y coordinate
*/
void n64dd_setTextboxBaseCoords(n64dd_Textbox* ddTextbox, s32 baseX, s32 baseY, s32 endX, s32 endY) {
    ddTextbox->baseX = baseX;
    ddTextbox->baseY = baseY;
    ddTextbox->endX = endX;
    ddTextbox->endY = endY;
}

/**
 * Initializes a textbox.
 * @param ddTextbox The textbox
 * @param frameBuf The current framebuffer (the textbox will be drawn on the next framebuffer)
 * @param screenWidth The width of the screen
 * @param screenHeight The height of the screen
 * @remark Unused
 */
void n64dd_initTextbox(n64dd_Textbox* ddTextbox, void* frameBuf, s32 screenWidth, s32 screenHeight) {
    ddTextbox->frameBuf = (u8*)frameBuf + 0x20000000;
    ddTextbox->screenWidth = screenWidth;
    ddTextbox->screenHeight = screenHeight;
    n64dd_setTextboxBaseCoords(ddTextbox, 0, 0, screenWidth - 1, screenHeight - 1);
}

// Attaches buffer for character texture to a textbox; what is arg2 though?
void func_801CA3B4(n64dd_Textbox* ddTextbox, void* charTexBuf, s32 arg2) {
    ddTextbox->charTexBuf = (u8*)charTexBuf + 0x20000000;
    ddTextbox->unk_08 = arg2;
}

/**
 * Prints a single character inside a textbox. Does not run sanity checks on the input character.
 * @param ddTextbox The textbox
 * @param c The character to print
*/
void n64dd_printCharacterToTextboxInternal(n64dd_Textbox* ddTextbox, char c) {
    s32 charCode;
    int dx;
    int dy;
    int cy;

    if (ddTextbox->sjisPrevByte != 0) {
        charCode = (ddTextbox->sjisPrevByte << 8) | c;
    } else {
        if (c >= 0x80 && c < 0x99) {
            ddTextbox->sjisPrevByte = c;
            return;
        }
        charCode = c;
    }

    ddTextbox->sjisPrevByte = 0;
    if (n64dd_loadCharTexToBuf(charCode, ddTextbox->charTexBuf, &dx, &dy, &cy) == 0) {
        if (ddTextbox->posX + dx > ddTextbox->endX) {
            ddTextbox->posX = ddTextbox->baseX;
            if (ddTextbox->posY + 16 > ddTextbox->endY) {
                ddTextbox->posY = ddTextbox->baseY;
            } else {
                ddTextbox->posY += 16;
            }
        }
        n64dd_writeCharsToFB(ddTextbox->charTexBuf, ddTextbox->posX, ddTextbox->posY, dx, dy, cy, ddTextbox->frameBuf, ddTextbox->screenWidth);
        ddTextbox->posX += (dx == 16 ? dx : dx + 2);
    }
}

/**
 * Prints a single character inside a textbox. Does run sanity checks on the input character, and deals with tabs and newlines.
 * @param ddTextbox The textbox
 * @param c The character to print
*/
void n64dd_printCharacterToTextbox(n64dd_Textbox* ddTextbox, char c) {
    if (c >= ' ' && c <= 0xFF) {
        n64dd_printCharacterToTextboxInternal(ddTextbox, c);
    } else {
        switch (c) {
            case '\n':
                ddTextbox->posY += 32;
                FALLTHROUGH;
            case '\r':
                ddTextbox->posX = ddTextbox->baseX;
                break;
            case '\t':
                do {
                    n64dd_printCharacterToTextboxInternal(ddTextbox, ' ');
                } while ((ddTextbox->posX - ddTextbox->baseX) % 256);
                break;
            case '\0':
                break;
        }
    }
}

/**
 * Prints a string in a textbox.
 * @param ddTextbox The textbox
 * @param str The string to print
 * @param strlen The length of the string
 * @param count sizeof(char)
 */
void n64dd_printStringToTextboxInternal(n64dd_Textbox* ddTextbox, const char* str, s32 strlen, size_t count) {
    //! @bug str and s are never null checked
    const char* s = str;
    s32 n = strlen * count;

    while (n != 0) {
        n64dd_printCharacterToTextbox(ddTextbox, *s++);
        n--;
    }
}

/**
 * Prints a string in a textbox, character by character.
 * @param ddTextbox The textbox
 * @param str The string
 * @remark Duplicate function. Also unused.
*/
void n64dd_printStringToTextboxInternal2(n64dd_Textbox* ddTextbox, const char* str) {
    while (*str != 0) {
        n64dd_printCharacterToTextbox(ddTextbox, *str++);
    }
}


/**
 * This is used to get a callback pointer to the textbox itself. No idea what that means.
 * @param ddTextbox The textbox
 * @param str Any string
 * @param count sizeof(char)
 * @remark void* ddTextbox should be n64dd_Textbox* ddTextbox
*/
void* n64dd_printCharToTextboxCallback(void* ddTextbox, const char* str, size_t count) {
    n64dd_printStringToTextboxInternal(ddTextbox, str, 1, count);
    return ddTextbox;
}

/**
 * Initialize a textbox properly.
 * @param ddTextbox The textbox
*/
void n64dd_initTextboxProperly(n64dd_Textbox* ddTextbox) {
    ddTextbox->callback = &n64dd_printCharToTextboxCallback;
    ddTextbox->posX = 0;
    ddTextbox->posY = 0;
    ddTextbox->baseX = 0;
    ddTextbox->baseY = 0;
    ddTextbox->endX = 0;
    ddTextbox->endY = 0;
    ddTextbox->color.rgba = 0;
    ddTextbox->sjisPrevByte = 0;
    ddTextbox->charTexBuf = NULL;
}

void n64dd_emptyFunction(n64dd_Textbox* ddTextbox) {
}

/**
 * Prints the callback pointer value somewhere, probably debug console.
 * Same as POSIX vprintf().
 * @param ddTextbox The textbox
 * @param fmt The format of the text
 * @param args Pointer to a variable amount of arguments for PrintUtils_VPrintf
 * @returns 0 if PrintUtils_VPrintf was successful, < 0 if it wasn't
*/
s32 n64dd_debugVPrintf(n64dd_Textbox* ddTextbox, const char* fmt, va_list args) {
    return PrintUtils_VPrintf(&ddTextbox->callback, fmt, args);
}

/**
 * Prints the callback pointer value somewhere, probably debug console.
 * Same as POSIX vprintf().
 * Wrapper for n64dd_debugVPrintf().
 * @param ddTextbox The textbox
 * @param fmt The format of the text
 * @returns 0 if n64dd_debugVPrintf was successful, < 0 if it wasn't
*/
s32 n64dd_debugPrintTextbox(n64dd_Textbox* ddTextbox, const char* fmt, ...) {
    s32 ret;
    va_list args;

    va_start(args, fmt);
    ret = n64dd_debugVPrintf(ddTextbox, fmt, args);
    va_end(args);

    return ret;
}
