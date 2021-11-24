#include "ultra64/r4300.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/**
 *  void osInvalDCache(void* vaddr, s32 nbytes);
 *
 *  Invalidates the CPU Data Cache for `nbytes` at `vaddr`.
 *  The cache is not automatically synced with physical memory, so cache
 *  lines must be invalidated to ensure old data is not used in place of
 *  newly available data supplied by an external agent in a DMA operation.
 *
 *  If `vaddr` is not aligned to a cache line boundary, or nbytes is not a
 *  multiple of the data cache line size (16 bytes) a larger region is
 *  invalidated.
 *
 *  If the amount to invalidate is greater than the data cache size, 8192, 
 *  the entire data cache is invalidated.
 */
BEGIN osInvalDCache
    # If the amount to invalidate is less or equal to 0, return immediately
    blez    $a1, .ret
     nop
    # If the amount to invalidate is as large as or larger than
    # the data cache size, invalidate all
    li      $t3, DCACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, .invalidate_all
     nop
    # Ensure end address doesn't wrap around and end up smaller
    # than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, .ret
     nop
    # Mask start with cache line
    andi    $t2, $t0, DCACHE_LINEMASK
    # If mask is not zero, the start is not cache aligned
    beqz    $t2, .start_is_aligned
     addiu  $t1, $t1, -DCACHE_LINESIZE
    # Subtract mask result to align to cache line
    subu    $t0, $t0, $t2
    # Hit-Writeback-Invalidate unaligned part
    cache   (CACH_PD | C_HWBINV), ($t0)
    sltu    $at, $t0, $t1
    # If that's all there is to do, return early
    beqz    $at, .ret
     nop
    addiu   $t0, $t0, DCACHE_LINESIZE
.start_is_aligned:
    # Mask end with cache line
    andi    $t2, $t1, DCACHE_LINEMASK
    # If mask is not zero, the end is not cache aligned
    beqz    $t2, .invalidate
     nop
    # Subtract mask result to align to cache line
    subu    $t1, $t1, $t2
    # Hit-Writeback-Invalidate unaligned part
    cache   (CACH_PD | C_HWBINV), DCACHE_LINESIZE($t1)
    sltu    $at, $t1, $t0
    # If that's all there is to do, return early
    bnez    $at, .ret
     nop
    # Invalidate the rest
.invalidate:
    # Index-Invalidate
    cache   (CACH_PD | C_HINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .invalidate
     addiu  $t0, $t0, DCACHE_LINESIZE
.ret:
    jr      $ra
     nop

.invalidate_all:
    li      $t0, K0BASE
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -DCACHE_LINESIZE
.all:
    # Index-Writeback-Invalidate
    cache   (CACH_PD | C_IWBINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .all
     addiu  $t0, DCACHE_LINESIZE
    jr      $ra
     nop
END osInvalDCache
