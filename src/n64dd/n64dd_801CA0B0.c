#include "global.h"
#include "n64dd.h"

// Draws text to framebuffer
typedef struct struct_801CA704 {
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
} struct_801CA704;

// clang-format off
u32 D_801D8BE0[0x5F] = {
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

// Loads character texture to buffer
s32 func_801CA0B0(s32 charCode, void* charTexBuf, int* dx, int* dy, int* cy) {
    s32 offset;
    OSPiHandle* handle;
    OSMesgQueue queue;
    OSMesg msgBuf[1];
    OSIoMesg mesg;

    handle = osDriveRomInit();
    if (charCode >= 0x20 && charCode < 0x7F) { // ASCII
        offset = LeoGetAAdr2(D_801D8BE0[charCode - 0x20], dx, dy, cy);
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

const u16 D_801D9390[16] = {
    0x0001, 0x1085, 0x2109, 0x318D, 0x4211, 0x5295, 0x6319, 0x739D,
    0x8C63, 0x9CE7, 0xAD6B, 0xBDEF, 0xCE73, 0xDEF7, 0xEF7B, 0xFFFF,
};

// Maps 4-bit intensity to a 16-bit color
u16 func_801CA1D4(u32 arg0) {
    return D_801D9390[arg0 % ARRAY_COUNT(D_801D9390)];
}

void func_801CA1F0(void* charTexBuf, s32 posX, s32 posY, s32 dx, s32 dy, s32 cy, void* frameBuf, s32 screenWidth) {
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
            dst[posX + x + ((posY + (11 - cy) + y) * screenWidth)] = func_801CA1D4(intensity);
        }
        if (dx & 1) {
            src++;
        }
    }
}

void func_801CA2F8(struct_801CA704* arg0, u32 r, u32 g, u32 b, u32 a) {
    arg0->color.r = r;
    arg0->color.g = g;
    arg0->color.b = b;
    arg0->color.a = a;
}

void func_801CA314(struct_801CA704* arg0, s32 arg1, s32 arg2) {
    arg0->posX = arg0->baseX + arg1;
    arg0->posY = arg0->baseY + arg2;
}

void func_801CA334(struct_801CA704* arg0, s32 baseX, s32 baseY, s32 endX, s32 endY) {
    arg0->baseX = baseX;
    arg0->baseY = baseY;
    arg0->endX = endX;
    arg0->endY = endY;
}

void func_801CA350(struct_801CA704* arg0, void* frameBuf, s32 screenWidth, s32 screenHeight) {
    arg0->frameBuf = (u8*)frameBuf + 0x20000000;
    arg0->screenWidth = screenWidth;
    arg0->screenHeight = screenHeight;
    func_801CA334(arg0, 0, 0, screenWidth - 1, screenHeight - 1);
}

void func_801CA3B4(struct_801CA704* arg0, void* charTexBuf, s32 arg2) {
    arg0->charTexBuf = (u8*)charTexBuf + 0x20000000;
    arg0->unk_08 = arg2;
}

void func_801CA3CC(struct_801CA704* arg0, char c) {
    s32 charCode;
    int dx;
    int dy;
    int cy;

    if (arg0->sjisPrevByte != 0) {
        charCode = (arg0->sjisPrevByte << 8) | c;
    } else {
        if (c >= 0x80 && c < 0x99) {
            arg0->sjisPrevByte = c;
            return;
        }
        charCode = c;
    }

    arg0->sjisPrevByte = 0;
    if (func_801CA0B0(charCode, arg0->charTexBuf, &dx, &dy, &cy) == 0) {
        if (arg0->posX + dx > arg0->endX) {
            arg0->posX = arg0->baseX;
            if (arg0->posY + 16 > arg0->endY) {
                arg0->posY = arg0->baseY;
            } else {
                arg0->posY += 16;
            }
        }
        func_801CA1F0(arg0->charTexBuf, arg0->posX, arg0->posY, dx, dy, cy, arg0->frameBuf, arg0->screenWidth);
        arg0->posX += (dx == 16 ? dx : dx + 2);
    }
}

void func_801CA4F4(struct_801CA704* arg0, char c) {
    if (c >= ' ' && c <= 0xFF) {
        func_801CA3CC(arg0, c);
    } else {
        switch (c) {
            case '\n':
                arg0->posY += 32;
                FALLTHROUGH;
            case '\r':
                arg0->posX = arg0->baseX;
                break;
            case '\t':
                do {
                    func_801CA3CC(arg0, ' ');
                } while ((arg0->posX - arg0->baseX) % 256);
                break;
            case '\0':
                break;
        }
    }
}

void func_801CA5BC(struct_801CA704* arg0, const char* str, s32 arg2, size_t count) {
    const char* s = str;
    s32 n = arg2 * count;

    while (n != 0) {
        func_801CA4F4(arg0, *s++);
        n--;
    }
}

void func_801CA618(struct_801CA704* arg0, const char* str) {
    while (*str != 0) {
        func_801CA4F4(arg0, *str++);
    }
}

void* func_801CA670(void* arg, const char* str, size_t count) {
    func_801CA5BC(arg, str, 1, count);
    return arg;
}

void func_801CA6A0(struct_801CA704* arg0) {
    arg0->callback = &func_801CA670;
    arg0->posX = 0;
    arg0->posY = 0;
    arg0->baseX = 0;
    arg0->baseY = 0;
    arg0->endX = 0;
    arg0->endY = 0;
    arg0->color.rgba = 0;
    arg0->sjisPrevByte = 0;
    arg0->charTexBuf = NULL;
}

void func_801CA6D8(struct_801CA704* arg0) {
}

s32 func_801CA6E4(struct_801CA704* arg0, const char* fmt, va_list args) {
    return PrintUtils_VPrintf(&arg0->callback, fmt, args);
}

s32 func_801CA704(struct_801CA704* arg0, const char* fmt, ...) {
    s32 ret;
    va_list args;

    va_start(args, fmt);
    ret = func_801CA6E4(arg0, fmt, args);
    va_end(args);

    return ret;
}
