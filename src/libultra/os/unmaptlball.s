#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(osUnmapTLBAll)
    MFC0(   t0, C0_ENTRYHI)
    li      t1, (NTLBENTRIES - 1)
    li      t2, (K0BASE & TLBHI_VPN2MASK)
    MTC0(   t2, C0_ENTRYHI)
    MTC0(   zero, C0_ENTRYLO0)
    MTC0(   zero, C0_ENTRYLO1)
1:
    MTC0(   t1, C0_INX)
    NOP
    TLBWI
    NOP
    NOP
    addi    t1, t1, -1
    bgez    t1, 1b

    MTC0(   t0, C0_ENTRYHI)
    jr      ra
END(osUnmapTLBAll)
