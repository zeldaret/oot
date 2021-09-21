#include "global.h"

OSPiHandle* sISVHandle; // official name : is_Handle

#define gISVDbgPrnAdrs ((ISVDbg*)0xB3FF0000)

void isPrintfInit(void) {
    sISVHandle = osCartRomInit();
    osEPiWriteIo(sISVHandle, (u32)&gISVDbgPrnAdrs->put, 0);
    osEPiWriteIo(sISVHandle, (u32)&gISVDbgPrnAdrs->get, 0);
    osEPiWriteIo(sISVHandle, (u32)&gISVDbgPrnAdrs->magic, 'IS64');
}

void osSyncPrintfUnused(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    _Printf(is_proutSyncPrintf, NULL, fmt, args);

    va_end(args);
}

void osSyncPrintf(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    _Printf(is_proutSyncPrintf, NULL, fmt, args);

    va_end(args);
}

// assumption
void rmonPrintf(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    _Printf(is_proutSyncPrintf, NULL, fmt, args);

    va_end(args);
}

void* is_proutSyncPrintf(void* arg, const char* str, u32 count) {
    u32 data;
    s32 pos;
    s32 start;
    s32 end;

    osEPiReadIo(sISVHandle, (u32)&gISVDbgPrnAdrs->magic, &data);
    if (data != 'IS64') {
        return 1;
    }
    osEPiReadIo(sISVHandle, (u32)&gISVDbgPrnAdrs->get, &data);
    pos = data;
    osEPiReadIo(sISVHandle, (u32)&gISVDbgPrnAdrs->put, &data);
    start = data;
    end = start + count;
    if (end >= 0xFFE0) {
        end -= 0xFFE0;
        if (pos < end || start < pos) {
            return 1;
        }
    } else {
        if (start < pos && pos < end) {
            return 1;
        }
    }
    while (count) {
        u32 addr = (u32)&gISVDbgPrnAdrs->data + (start & 0xFFFFFFC);
        s32 shift = ((3 - (start & 3)) * 8);

        if (*str) {
            osEPiReadIo(sISVHandle, addr, &data);
            osEPiWriteIo(sISVHandle, addr, (*str << shift) | (data & ~(0xFF << shift)));

            start++;
            if (start >= 0xFFE0) {
                start -= 0xFFE0;
            }
        }
        count--;
        str++;
    }
    osEPiWriteIo(sISVHandle, (u32)&gISVDbgPrnAdrs->put, start);

    return 1;
}

void func_80002384(const char* exp, const char* file, u32 line) {
    osSyncPrintf("File:%s Line:%d  %s \n", file, line, exp);
    while (true) {
        ;
    }
}
