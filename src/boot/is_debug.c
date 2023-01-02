#include "is_debug.h"

#define ISV_BASE        PHYS_TO_K1(PI_DOM1_ADDR2 | 0x03FF0000)
#define ISV_MAGIC_ADDR  (ISV_BASE + 0x00)
#define ISV_GET_ADDR    (ISV_BASE + 0x04)
#define ISV_PUT_ADDR    (ISV_BASE + 0x14)
#define ISV_BUFFER      (ISV_BASE + 0x20)

#define ISV_BUFFER_LEN  (0x10000 - 0x20)

#define ISV_MAGIC_VAUE  (('I' << 24) | ('S' << 16) | ('6' << 8) | ('4' << 0))

OSPiHandle* sISVHandle; // official name : is_Handle

void isPrintfInit(void) {
    sISVHandle = osCartRomInit();
    osEPiWriteIo(sISVHandle, ISV_PUT_ADDR, 0);
    osEPiWriteIo(sISVHandle, ISV_GET_ADDR, 0);
    osEPiWriteIo(sISVHandle, ISV_MAGIC_ADDR, ISV_MAGIC_VAUE);
}

void* is_proutSyncPrintf(void* arg, const char* str, size_t count);

void isPrintf(const char* fmt, ...) {
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

void rmonPrintf(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    _Printf(is_proutSyncPrintf, NULL, fmt, args);

    va_end(args);
}

void* is_proutSyncPrintf(void* arg, const char* str, size_t count) {
    u32 data;
    s32 pos;
    s32 start;
    s32 end;

    osEPiReadIo(sISVHandle, ISV_MAGIC_ADDR, &data);
    if (data != ISV_MAGIC_VAUE) {
        return (void*)1;
    }
    osEPiReadIo(sISVHandle, ISV_GET_ADDR, &data);
    pos = data;
    osEPiReadIo(sISVHandle, ISV_PUT_ADDR, &data);
    start = data;

    end = start + count;
    if (end >= ISV_BUFFER_LEN) {
        end -= ISV_BUFFER_LEN;
        if (pos < end || start < pos) {
            return (void*)1;
        }
    } else {
        if (start < pos && pos < end) {
            return (void*)1;
        }
    }

    while (count) {
        u32 addr = ISV_BUFFER + (start & 0xFFFFFFC);
        u32 shift = (3 - (start & 3)) * 8;

        if (*str) {
            osEPiReadIo(sISVHandle, addr, &data);
            osEPiWriteIo(sISVHandle, addr, (*str << shift) | (data & ~(0xFF << shift)));

            start++;
            if (start >= ISV_BUFFER_LEN) {
                start -= ISV_BUFFER_LEN;
            }
        }
        count--;
        str++;
    }
    osEPiWriteIo(sISVHandle, ISV_PUT_ADDR, start);
    return (void*)1;
}

NORETURN void isAssertFail(const char* exp, const char* file, int line) {
    osSyncPrintf("File:%s Line:%d  %s \n", file, line, exp);
    while (true) {
        ;
    }
}
