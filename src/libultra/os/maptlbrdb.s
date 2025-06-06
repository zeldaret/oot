#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"
#include "ultra64/rdb.h"

.text

LEAF(osMapTLBRdb)
    MFC0(   t0, C0_ENTRYHI)
    li      t1, NTLBENTRIES
    MTC0(   t1, C0_INX)
    MTC0(   zero, C0_PAGEMASK)
    li      t2, (TLBLO_UNCACHED | TLBLO_D | TLBLO_V | TLBLO_G)
    li      t1, (RDB_BASE_REG & TLBHI_VPN2MASK)
    MTC0(   t1, C0_ENTRYHI)
    /* Possible bug? Virtual address instead of physical address set as page frame number */
    li      t1, RDB_BASE_VIRTUAL_ADDR
    srl     t3, t1, TLBLO_PFNSHIFT
    or      t3, t3, t2
    MTC0(   t3, C0_ENTRYLO0)
    li      t1, TLBLO_G
    MTC0(   t1, C0_ENTRYLO1)
    NOP
    TLBWI
    NOP
    NOP
    NOP
    NOP
    MTC0(   t0, C0_ENTRYHI)
    jr      ra
END(osMapTLBRdb)
