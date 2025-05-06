#include "libc64/sleep.h"
#include "attributes.h"
#include "printf.h"
#include "sys_freeze.h"
#include "terminal.h"

NORETURN void func_800D31A0(void) {
    PRINTF(VT_FGCOL(RED) "\n**** Freeze!! ****\n" VT_RST);
    for (;;) {
        Sleep_Msec(1000);
    }
}
