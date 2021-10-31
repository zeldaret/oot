#include "ultra64/r4300.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

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
glabel __osProbeTLB
    # Set EntryHi based on supplied vaddr
    mfc0    $t0, EntryHi
    andi    $t1, $t0, TLBHI_PIDMASK
    li      $at, TLBHI_VPN2MASK
    and     $t2, $a0, $at
    or      $t1, $t1, $t2
    mtc0    $t1, EntryHi
    nop
    nop
    nop
    # TLB probe, sets the Index register to a value matching EntryHi.
    # If no match is found the TLBINX_PROBE bit is set to indicate this.
    tlbp
    nop
    nop
    # Read result
    mfc0    $t3, Index
    li      $at, TLBINX_PROBE
    and     $t3, $t3, $at
    # Branch if no match was found
    bnez    $t3, .no_paddr
     nop
    # Read TLB, sets EntryHi, EntryLo0, EntryLo1 and PageMask for the TLB
    # entry indicated by the Index register
    tlbr
    nop
    nop
    nop
    # Get PageMask
    mfc0    $t3, PageMask
    addi    $t3, $t3, DCACHE_SIZE
    srl     $t3, $t3, 1
    and     $t4, $t3, $a0
    # Select EntryLo0 or EntryLo1
    bnez    $t4, .get_lo1
     addi   $t3, $t3, -1
    mfc0    $v0, EntryLo0
    b       .got_lo0
     nop
.get_lo1:
    mfc0    $v0, EntryLo1
.got_lo0:
    # Check valid bit and branch if not valid
    andi    $t5, $v0, TLBLO_V
    beqz    $t5, .no_paddr
     nop
    # Extract the Page Frame Number from the entry
    li      $at, TLBLO_PFNMASK
    and     $v0, $v0, $at
    sll     $v0, $v0, TLBLO_PFNSHIFT
    # Mask vaddr
    and     $t5, $a0, $t3
    # Add masked vaddr to pfn to obtain the physical address
    add     $v0, $v0, $t5
    b       .got_paddr
     nop
.no_paddr:
    # No physical address for the supplied virtual address was found,
    # return -1
    li      $v0, -1
.got_paddr:
    # Restore original EntryHi value before returning
    mtc0    $t0, EntryHi
    jr      $ra
     nop
