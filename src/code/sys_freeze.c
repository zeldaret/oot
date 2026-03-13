#include "libc64/sleep.h"
#include "attributes.h"
#include "printf.h"
#include "sys_freeze.h"
#include "terminal.h"

/**
 * Halts the calling thread forever (this neither destroys it nor affects other threads).
 * This may be used to halt execution in the event of an irrecoverable error without triggering
 * the crash screen or otherwise halting the rest of the programs, other threads will continue
 * to run as normal.
 *
 * @note In practice, use of this function is very rare, only occuring in a few N64DD-related
 *       codepaths. In most cases where one needs to halt execution due to a critical error,
 *       it is more appropriate to use Fault_AddHangupAndCrash or related functions.
 *
 * @see Fault_AddHungupAndCrash
 */
NORETURN void Freeze_CurrentThread(void) {
    PRINTF(VT_FGCOL(RED) "\n**** Freeze!! ****\n" VT_RST);
    for (;;) {
        Sleep_Msec(1000);
    }
}
