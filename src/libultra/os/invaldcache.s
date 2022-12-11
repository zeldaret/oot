#include "ultra64/asm.h"
#include "ultra64/R4300.h"

.set noat
.set noreorder

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
 *  If the amount to invalidate is at least the data cache size (DCACHE_SIZE),
 *  the entire data cache is invalidated.
 */
LEAF(osInvalDCache)
    // If the amount to invalidate is less than or equal to 0, return immediately
    blez    $a1, 3f
     nop
    // If the amount to invalidate is as large as or larger than
    // the data cache size, invalidate all
    li      $t3, DCACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, 4f
     nop
    // Ensure end address doesn't wrap around and end up smaller
    // than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, 3f
     nop
    // Mask start with cache line
    andi    $t2, $t0, DCACHE_LINEMASK
    // If mask is not zero, the start is not cache aligned
    beqz    $t2, 1f
     addiu  $t1, $t1, -DCACHE_LINESIZE
    // Subtract mask result to align to cache line
    subu    $t0, $t0, $t2
    // Hit-Writeback-Invalidate unaligned part
    cache   (CACH_PD | C_HWBINV), ($t0)
    sltu    $at, $t0, $t1
    // If that's all there is to do, return early
    beqz    $at, 3f
     nop
    addiu   $t0, $t0, DCACHE_LINESIZE
1:
    // Mask end with cache line
    andi    $t2, $t1, DCACHE_LINEMASK
    // If mask is not zero, the end is not cache aligned
    beqz    $t2, 1f
     nop
    // Subtract mask result to align to cache line
    subu    $t1, $t1, $t2
    // Hit-Writeback-Invalidate unaligned part
    cache   (CACH_PD | C_HWBINV), DCACHE_LINESIZE($t1)
    sltu    $at, $t1, $t0
    // If that's all there is to do, return early
    bnez    $at, 3f
     nop
    // Invalidate the rest
1:
    // Hit-Invalidate
    cache   (CACH_PD | C_HINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 1b
     addiu  $t0, $t0, DCACHE_LINESIZE
3:
    jr      $ra
     nop

4:
    li      $t0, K0BASE
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -DCACHE_LINESIZE
5:
    // Index-Writeback-Invalidate
    cache   (CACH_PD | C_IWBINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 5b
     addiu  $t0, DCACHE_LINESIZE
    jr      $ra
     nop
END(osInvalDCache)
