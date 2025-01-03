#ifdef BBPLAYER
#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/bcp.h"

.text

#define SKC(name, num)                               \
    LEAF(name)                                      ;\
    .set noreorder                                  ;\
        /* Load syscall number into v0 */           ;\
        li  v0, num                                 ;\
        /* Read from MI_SECURE_EXCEPTION_REG to  */ ;\
        /* transfer control to the Secure Kernel */ ;\
        li  t0, PHYS_TO_K1(MI_SECURE_EXCEPTION_REG) ;\
        lw  t1, (t0)                                ;\
        nop                                         ;\
        jr ra                                       ;\
         nop                                        ;\
    .set reorder                                    ;\
    END(name)

SKC(skGetId,               0)
SKC(skLaunchSetup,         1)
SKC(skLaunch,              2)
SKC(skRecryptListValid,    3)
SKC(skRecryptBegin,        4)
SKC(skRecryptData,         5)
SKC(skRecryptComputeState, 6)
SKC(skRecryptEnd,          7)
SKC(skSignHash,            8)
SKC(skVerifyHash,          9)
SKC(skGetConsumption,      10)
SKC(skAdvanceTicketWindow, 11)
SKC(skSetLimit,            12)
SKC(skExit,                13)
SKC(skKeepAlive,           14)

/* These are not valid for a retail Secure Kernel, their usage pattern is unknown. */

SKC(skGetRandomKeyData,    15)
SKC(skDumpVirage,          16)
SKC(skTest2,               17)
SKC(skTest3,               18)
SKC(skResetWindow,         19)
SKC(skValidateRls,         20)

#endif
