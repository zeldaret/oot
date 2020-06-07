#include <z64.h>
#include <global.h>
#include <vt.h>

float LogUtils_CheckFloatRange(const char* exp, s32 arg1, const char* var1Name, float var1, const char* var2Name,
                               float var2, const char* var3Name, float var3) {
    if (var1 < var2 || var3 < var1) {
        osSyncPrintf("%s %d: range error %s(%f) < %s(%f) < %s(%f)\n", exp, arg1, var2Name, var2, var1Name, var1,
                     var3Name, var3);
    }
    return var1;
}

s32 LogUtils_CheckIntRange(const char* exp, s32 arg1, const char* var1Name, s32 var1, const char* var2Name, s32 var2,
                           const char* var3Name, s32 var3) {
    if (var1 < var2 || var3 < var1) {
        osSyncPrintf("%s %d: range error %s(%d) < %s(%d) < %s(%d)\n", exp, arg1, var2Name, var2, var1Name, var1,
                     var3Name, var3);
    }
    return var1;
}

void LogUtils_LogHexDump(void* ptr, s32 size0) {
    u8* addr = (u8*)ptr;
    s32 size = (s32)size0;
    s32 rest;
    s32 i;
    u32 off;

    osSyncPrintf("dump(%08x, %u)\n", addr, size);
    osSyncPrintf("address  off  +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +a +b +c +d +e +f   0123456789abcdef\n");

    off = 0;
    while (size > 0) {

        osSyncPrintf("%08x %04x", addr, off);
        rest = (size < 0x10) ? size : 0x10;

        i = 0;
        while (true) {
            if (i < rest) {
                osSyncPrintf(" %02x", *((u8*)addr + i));
            } else {
                osSyncPrintf("   ");
            }

            i++;
            if (i > 0xf) {
                break;
            }
        }
        osSyncPrintf("   ");

        i = 0;
        while (true) {
            if (i < rest) {
                u8 a = *(addr + i);
                osSyncPrintf("%c", (a >= 0x20 && a < 0x7f) ? a : '.');
            } else {
                osSyncPrintf(" ");
            }

            i++;
            if (i > 0xf) {
                break;
            }
        }
        osSyncPrintf("\n");
        size -= rest;
        addr += rest;
        off += rest;
    }
}

void LogUtils_LogPointer(s32 value, u32 max, void* ptr, const char* name, const char* file, s32 line) {
    osSyncPrintf(VT_COL(RED, WHITE) "%s %d %s[%d] max=%u ptr=%08x\n" VT_RST, file, line, name, value, max, ptr);
}

void LogUtils_CheckBoundary(const char* name, s32 value, s32 unk, const char* file, s32 line) {
    u32 mask = (unk - 1);
    if (value & mask) {
        osSyncPrintf(VT_COL(RED, WHITE) "%s %d:%s(%08x) は バウンダリ(%d)違反です\n" VT_RST, file, line, name, value,
                     unk);
    }
}

void LogUtils_CheckNullPointer(const char* exp, void* ptr, const char* file, s32 line) {
    if (!ptr) {
        osSyncPrintf(VT_COL(RED, WHITE) "%s %d:%s は はヌルポインタです\n" VT_RST, file, line, exp);
    }
}

// check valid pointer
void LogUtils_CheckValidPointer(const char* exp, void* ptr0, const char* file, s32 line) {
    u32 ptr = (u32)ptr0;
    if (!ptr || ptr < 0x80000000U || (0x80000000U + osMemSize) <= ptr) {
        osSyncPrintf(VT_COL(RED, WHITE) "%s %d:ポインタ %s(%08x) が異常です\n" VT_RST, file, line, exp, ptr);
    }
}

void LogUtils_LogThreadId(const char* name, s32 line) {
    osSyncPrintf("<%d %s %d>", osGetThreadId(NULL), name, line);
}

void LogUtils_HungupThread(const char* name, s32 line) {
    osSyncPrintf("*** HungUp in thread %d, [%s:%d] ***\n", osGetThreadId(NULL), name, line);
    Fault_AddHungupAndCrash(name, line);
}

void LogUtils_ResetHungup() {
    osSyncPrintf("*** Reset ***\n");
    Fault_AddHungupAndCrash("Reset", 0);
}
