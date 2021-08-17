#include "global.h"

// To be moved to message_data_static header
#define MESSAGE_NEWLINE '\x01'
#define MESSAGE_END '\x02'
// message_data_static symbols
extern const char D_07000000[]; // start of file
extern const char D_070380D4[]; // charset message (id 0xFFFC)
extern const char D_0703811C[]; // end marker of last message

// stubbed in PAL
void func_8006EE50(Font* font, s16 arg1, s16 arg2) {
}

void Font_LoadChar(Font* font, u8 character, u16 codePointIndex) {
    DmaMgr_SendRequest1(&font->unk_8[codePointIndex], &_nes_font_staticSegmentRomStart[character * FONT_CHAR_TEX_SIZE],
                        FONT_CHAR_TEX_SIZE, "../z_kanfont.c", 93);
}

void Font_LoadMessageBoxEndIcon(Font* font, u16 icon) {
    DmaMgr_SendRequest1(font->iconBuf, &_message_staticSegmentRomStart[4 * 0x1000 + icon * FONT_CHAR_TEX_SIZE],
                        FONT_CHAR_TEX_SIZE, "../z_kanfont.c", 100);
}

void Font_LoadOrderedFont(Font* font) {
    s32 len;
    s32 jj;
    s32 fontStatic;
    u32 fontBuf;
    s32 codePointIndex;
    s32 fontBufIndex;
    s32 offset;

    font->msgOffset = D_070380D4 - D_07000000;
    len = font->msgLength = D_0703811C - D_070380D4;
    DmaMgr_SendRequest1(font->msgBuf, &_nes_message_data_staticSegmentRomStart[font->msgOffset], len, "../z_kanfont.c",
                        122);
    osSyncPrintf("msg_data=%x,  msg_data0=%x   jj=%x\n", font->msgOffset, font->msgLength, jj = len);
    len = jj;
    for (fontBufIndex = 0, codePointIndex = 0; font->msgBuf[codePointIndex] != MESSAGE_END; codePointIndex++) {
        if (codePointIndex > len) {
            osSyncPrintf("ＥＲＲＯＲ！！  エラー！！！  error───！！！！\n");
            return;
        }
        if (font->msgBuf[codePointIndex] != MESSAGE_NEWLINE) {
            fontBuf = font->fontBuf + fontBufIndex * 8;
            fontStatic = _nes_font_staticSegmentRomStart;
            osSyncPrintf("nes_mes_buf[%d]=%d\n", codePointIndex, font->msgBuf[codePointIndex]);
            offset = (font->msgBuf[codePointIndex] - '\x20') * FONT_CHAR_TEX_SIZE;
            DmaMgr_SendRequest1(fontBuf, fontStatic + offset, FONT_CHAR_TEX_SIZE, "../z_kanfont.c", 134);
            fontBufIndex += 0x10;
        }
    }
}
