#ifndef FONT_H
#define FONT_H

#include "ultra64.h"

// TODO get these properties from the textures themselves
#define FONT_CHAR_TEX_WIDTH  16
#define FONT_CHAR_TEX_HEIGHT 16
#define FONT_CHAR_TEX_SIZE ((FONT_CHAR_TEX_WIDTH * FONT_CHAR_TEX_HEIGHT) / 2) // 16x16 I4 texture

typedef struct Font {
    /* 0x0000 */ u32 msgOffset;
    /* 0x0004 */ u32 msgLength;
    union {
        /* 0x0008 */ u8 charTexBuf[FONT_CHAR_TEX_SIZE * 120];
        /* 0x0008 */ u64 force_structure_alignment_charTex;
    };
    union {
        /* 0x3C08 */ u8 iconBuf[FONT_CHAR_TEX_SIZE];
        /* 0x3C08 */ u64 force_structure_alignment_icon;
    };
    union {
        /* 0x3C88 */ u8 fontBuf[FONT_CHAR_TEX_SIZE * 320];
        /* 0x3C88 */ u64 force_structure_alignment_font;
    };
    union {
        /* 0xDC88 */ u8 msgBuf[1280];
        /* 0xDC88 */ u16 msgBufWide[640];
        /* 0xDC88 */ u64 force_structure_alignment_msg;
    };
} Font; // size = 0xE188

#if PLATFORM_IQUE
void Font_LoadCharCHN(Font* font, u16 character, u16 codePointIndex);
#endif
void Font_LoadCharWide(Font* font, u16 character, u16 codePointIndex);
void Font_LoadChar(Font* font, u8 character, u16 codePointIndex);
void Font_LoadMessageBoxIcon(Font* font, u16 icon);
void Font_LoadOrderedFont(Font* font);

#endif
