#include "global.h"
#include "terminal.h"

#if OOT_DEBUG
f32 LogUtils_CheckFloatRange(const char* exp, int line, const char* valueName, f32 value, const char* minName, f32 min,
                             const char* maxName, f32 max) {
    if (value < min || max < value) {
        PRINTF("%s %d: range error %s(%f) < %s(%f) < %s(%f)\n", exp, line, minName, min, valueName, value, maxName,
               max);
    }
    return value;
}

s32 LogUtils_CheckIntRange(const char* exp, int line, const char* valueName, s32 value, const char* minName, s32 min,
                           const char* maxName, s32 max) {
    if (value < min || max < value) {
        PRINTF("%s %d: range error %s(%d) < %s(%d) < %s(%d)\n", exp, line, minName, min, valueName, value, maxName,
               max);
    }
    return value;
}

void LogUtils_LogHexDump(void* ptr, s32 size0) {
    u8* addr = (u8*)ptr;
    s32 size = (s32)size0;
    s32 rest;
    s32 i;
    u32 off;

    PRINTF("dump(%08x, %u)\n", addr, size);
    PRINTF("address  off  +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +a +b +c +d +e +f   0123456789abcdef\n");

    off = 0;
    while (size > 0) {

        PRINTF("%08x %04x", addr, off);
        rest = (size < 0x10) ? size : 0x10;

        i = 0;
        while (true) {
            if (i < rest) {
                PRINTF(" %02x", *((u8*)addr + i));
            } else {
                PRINTF("   ");
            }

            i++;
            if (i > 0xF) {
                break;
            }
        }
        PRINTF("   ");

        i = 0;
        while (true) {
            if (i < rest) {
                u8 a = *(addr + i);

                PRINTF("%c", (a >= 0x20 && a < 0x7F) ? a : '.');
            } else {
                PRINTF(" ");
            }

            i++;
            if (i > 0xF) {
                break;
            }
        }
        PRINTF("\n");
        size -= rest;
        addr += rest;
        off += rest;
    }
}

void LogUtils_LogPointer(s32 value, u32 max, void* ptr, const char* name, const char* file, int line) {
    PRINTF(VT_COL(RED, WHITE) "%s %d %s[%d] max=%u ptr=%08x\n" VT_RST, file, line, name, value, max, ptr);
}

void LogUtils_CheckBoundary(const char* name, s32 value, s32 unk, const char* file, int line) {
    u32 mask = (unk - 1);

    if (value & mask) {
        PRINTF(VT_COL(RED, WHITE) "%s %d:%s(%08x) は バウンダリ(%d)違反です\n" VT_RST, file, line, name, value, unk);
    }
}

void LogUtils_CheckNullPointer(const char* exp, void* ptr, const char* file, int line) {
    if (ptr == NULL) {
        PRINTF(VT_COL(RED, WHITE) "%s %d:%s は はヌルポインタです\n" VT_RST, file, line, exp);
    }
}

void LogUtils_CheckValidPointer(const char* exp, void* ptr, const char* file, int line) {
    if (ptr == NULL || (u32)ptr < 0x80000000 || (0x80000000 + osMemSize) <= (u32)ptr) {
        PRINTF(VT_COL(RED, WHITE) "%s %d:ポインタ %s(%08x) が異常です\n" VT_RST, file, line, exp, ptr);
    }
}

void LogUtils_LogThreadId(const char* name, int line) {
    PRINTF("<%d %s %d>", osGetThreadId(NULL), name, line);
}
#endif

void LogUtils_HungupThread(const char* name, int line) {
    OSId threadId = osGetThreadId(NULL);

    PRINTF("*** HungUp in thread %d, [%s:%d] ***\n", threadId, name, line);
    Fault_AddHungupAndCrash(name, line);
}

void LogUtils_ResetHungup(void) {
    PRINTF("*** Reset ***\n");
    Fault_AddHungupAndCrash("Reset", 0);
}
