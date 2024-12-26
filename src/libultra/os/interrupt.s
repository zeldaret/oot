#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"
#include "ultra64/thread.h"

.text

LEAF(__osDisableInt)
    la      t2, __OSGlobalIntMask
    lw      t3, (t2)
    and     t3, t3, SR_IMASK
    MFC0(   t0, C0_SR)
    and     t1, t0, ~SR_IE
    MTC0(   t1, C0_SR)
    and     v0, t0, SR_IE
    lw      t0, (t2)
    and     t0, t0, SR_IMASK
.set noreorder
    beq     t0, t3, No_Change_Global_Int
    /*! @bug this la should be lw, it may never come up in practice as to reach this code
     *! the CPU bits of __OSGlobalIntMask must have changed while this function is running.
     */
    la      t2, __osRunningThread
    lw      t1, THREAD_SR(t2)
    and     t2, t1, SR_IMASK
    and     t2, t2, t0
.set reorder
    and     t1, t1, ~SR_IMASK
    or      t1, t1, t2
    and     t1, t1, ~SR_IE
    MTC0(   t1, C0_SR)
    NOP
    NOP
No_Change_Global_Int:
    jr      ra
END(__osDisableInt)

LEAF(__osRestoreInt)
    MFC0(   t0, C0_SR)
    or      t0, t0, a0
    MTC0(   t0, C0_SR)
    NOP
    NOP
    jr      ra
END(__osRestoreInt)
