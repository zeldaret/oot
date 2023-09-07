#include "ultra64/asm.h"
#include "ultra64/R4300.h"

.set noat
.set noreorder

.section .text

.balign 16

/**
 *  u32 __osProbeTLB(void* vaddr);
 *
 *  Searches the TLB for the physical address associated with
 *  the virtual address `vaddr`.
 *
 *  Returns the physical address if found, or -1 if not found.
 */
LEAF(__osProbeTLB)
    // Set C0_ENTRYHI based on supplied vaddr
    mfc0    $t0, C0_ENTRYHI
    andi    $t1, $t0, TLBHI_PIDMASK
    li      $at, TLBHI_VPN2MASK
    and     $t2, $a0, $at
    or      $t1, $t1, $t2
    mtc0    $t1, C0_ENTRYHI
    nop
    nop
    nop
    // TLB probe, sets C0_INX to a value matching C0_ENTRYHI.
    // If no match is found the TLBINX_PROBE bit is set to indicate this.
    tlbp
    nop
    nop
    // Read result
    mfc0    $t3, C0_INX
    li      $at, TLBINX_PROBE
    and     $t3, $t3, $at
    // Branch if no match was found
    bnez    $t3, 3f
     nop
    // Read TLB, sets C0_ENTRYHI, C0_ENTRYLO0, C0_ENTRYLO1 and C0_PAGEMASK for the TLB
    // entry indicated by C0_INX
    tlbr
    nop
    nop
    nop
    // Calculate page size = (page mask + 0x2000) >> 1
    mfc0    $t3, C0_PAGEMASK
    addi    $t3, $t3, 0x2000
    srl     $t3, $t3, 1
    // & with vaddr
    and     $t4, $t3, $a0
    // Select C0_ENTRYLO0 or C0_ENTRYLO1
    bnez    $t4, 1f
     addi   $t3, $t3, -1 // make bitmask out of page size
    mfc0    $v0, C0_ENTRYLO0
    b       2f
     nop
1:
    mfc0    $v0, C0_ENTRYLO1
2:
    // Check valid bit and branch if not valid
    andi    $t5, $v0, TLBLO_V
    beqz    $t5, 3f
     nop
    // Extract the Page Frame Number from the entry
    li      $at, TLBLO_PFNMASK
    and     $v0, $v0, $at
    sll     $v0, $v0, TLBLO_PFNSHIFT
    // Mask vaddr with page size mask
    and     $t5, $a0, $t3
    // Add masked vaddr to pfn to obtain the physical address
    add     $v0, $v0, $t5
    b       4f
     nop
3:
    // No physical address for the supplied virtual address was found,
    // return -1
    li      $v0, -1
4:
    // Restore original C0_ENTRYHI value before returning
    mtc0    $t0, C0_ENTRYHI
    jr      $ra
     nop
END(__osProbeTLB)
