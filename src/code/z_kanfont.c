#include "global.h"
#include "message_data_static.h"

/**
 * Loads a texture from kanji for the requested `character` into the character texture buffer
 * at `codePointIndex`. The value of `character` is the SHIFT-JIS encoding of the character.
 */
void Font_LoadCharWide(Font* font, u16 character, u16 codePointIndex) {
#if OOT_NTSC
    DmaMgr_RequestSync(&font->charTexBuf[codePointIndex],
                       (uintptr_t)_kanjiSegmentRomStart + Kanji_OffsetFromShiftJIS(character), FONT_CHAR_TEX_SIZE);
#endif
}

/**
 * Loads a texture from nes_font_static for the requested `character` into the character texture buffer
 * at `codePointIndex`. The value of `character` is the ASCII codepoint subtract ' '/0x20.
 */
void Font_LoadChar(Font* font, u8 character, u16 codePointIndex) {
    u8 charTmp = character;

    DMA_REQUEST_SYNC(&font->charTexBuf[codePointIndex],
                     (uintptr_t)_nes_font_staticSegmentRomStart + charTmp * FONT_CHAR_TEX_SIZE, FONT_CHAR_TEX_SIZE,
                     "../z_kanfont.c", 93);
}

/**
 * Loads a message box icon from message_static, such as the ending triangle/square or choice arrow into the
 * icon buffer.
 * The different icons are given in the MessageBoxIcon enum.
 */
void Font_LoadMessageBoxIcon(Font* font, u16 icon) {
    DMA_REQUEST_SYNC(font->iconBuf,
                     (uintptr_t)_message_staticSegmentRomStart + 4 * MESSAGE_STATIC_TEX_SIZE +
                         icon * FONT_CHAR_TEX_SIZE,
                     FONT_CHAR_TEX_SIZE, "../z_kanfont.c", 100);
}

/**
 * Loads a full set of character textures based on their ordering in the message with text id 0xFFFC into
 * the font buffer.
 */
void Font_LoadOrderedFont(Font* font) {
    s32 size;
    s32 len;
    s32 codePointIndex;
    s32 fontBufIndex;
    u32 offset;

    font->msgOffset = FONT_MESSAGE_OFFSET;
    size = font->msgLength = FONT_MESSAGE_LENGTH;

#if OOT_NTSC
    len = (u32)size / 2;
    DmaMgr_RequestSync(font->msgBufWide, (uintptr_t)_jpn_message_data_staticSegmentRomStart + font->msgOffset, size);

    fontBufIndex = 0;
    for (codePointIndex = 0; font->msgBufWide[codePointIndex] != MESSAGE_WIDE_END; codePointIndex++) {
        if (len < codePointIndex) {
            return;
        }

        if (font->msgBufWide[codePointIndex] != MESSAGE_WIDE_NEWLINE) {
            offset = Kanji_OffsetFromShiftJIS(font->msgBufWide[codePointIndex]);
            DmaMgr_RequestSync(&font->fontBuf[fontBufIndex * 8], (uintptr_t)_kanjiSegmentRomStart + offset,
                               FONT_CHAR_TEX_SIZE);
            fontBufIndex += FONT_CHAR_TEX_SIZE / 8;
        }
    }
#else
    len = size;
    DMA_REQUEST_SYNC(font->msgBuf, (uintptr_t)_nes_message_data_staticSegmentRomStart + font->msgOffset, len,
                     "../z_kanfont.c", 122);

    PRINTF("msg_data=%x,  msg_data0=%x   jj=%x\n", font->msgOffset, font->msgLength, len * 1);

    fontBufIndex = 0;
    for (codePointIndex = 0; font->msgBuf[codePointIndex] != MESSAGE_END; codePointIndex++) {
        if (codePointIndex > (len * 1)) {
            PRINTF("ＥＲＲＯＲ！！  エラー！！！  error───！！！！\n");
            return;
        }

        if (font->msgBuf[codePointIndex] != MESSAGE_NEWLINE) {
            PRINTF("nes_mes_buf[%d]=%d\n", codePointIndex, font->msgBuf[codePointIndex]);

            offset = (font->msgBuf[codePointIndex] - ' ') * FONT_CHAR_TEX_SIZE;
            DMA_REQUEST_SYNC(font->fontBuf + fontBufIndex * 8, (uintptr_t)_nes_font_staticSegmentRomStart + offset,
                             FONT_CHAR_TEX_SIZE, "../z_kanfont.c", 134);
            fontBufIndex += FONT_CHAR_TEX_SIZE / 8;
        }
    }
#endif
}
