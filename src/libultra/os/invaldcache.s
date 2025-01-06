#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

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
    /* If the amount to invalidate is less than or equal to 0, return immediately */
    blez    a1, 3f
    /* If the amount to invalidate is as large as or larger than
     * the data cache size, invalidate all */
    li      t3, DCACHE_SIZE
    bgeu    a1, t3, 4f
    /* Ensure end address doesn't wrap around and end up smaller
     * than the start address */
    move    t0, a0
    addu    t1, a0, a1
    bgeu    t0, t1, 3f
    /* Mask start with cache line */
    addiu  t1, t1, -DCACHE_LINESIZE
    andi    t2, t0, DCACHE_LINEMASK
    /* If mask is not zero, the start is not cache aligned */
    beqz    t2, 1f
    /* Subtract mask result to align to cache line */
    subu    t0, t0, t2
    /* Hit-Writeback-Invalidate unaligned part */
    CACHE(  (CACH_PD | C_HWBINV), (t0))
    /* If that's all there is to do, return early */
    bgeu    t0, t1, 3f
    addiu   t0, t0, DCACHE_LINESIZE
1:
    /* Mask end with cache line */
    andi    t2, t1, DCACHE_LINEMASK
    /* If mask is not zero, the end is not cache aligned */
    beqz    t2, 2f
    /* Subtract mask result to align to cache line */
    subu    t1, t1, t2
    /* Hit-Writeback-Invalidate unaligned part */
    CACHE(  (CACH_PD | C_HWBINV), DCACHE_LINESIZE(t1))
    /* If that's all there is to do, return early */
    bltu    t1, t0, 3f
    /* Invalidate the rest */
2:
    /* Hit-Invalidate */
    CACHE(  (CACH_PD | C_HINV), (t0))
.set noreorder
    bltu    t0, t1, 2b
     addiu  t0, t0, DCACHE_LINESIZE
.set reorder
3:
    jr      ra

4:
    li      t0, K0BASE
    addu    t1, t0, t3
    addiu   t1, t1, -DCACHE_LINESIZE
5:
    /* Index-Writeback-Invalidate */
    CACHE(  (CACH_PD | C_IWBINV), (t0))
.set noreorder
    bltu    t0, t1, 5b
     addiu  t0, DCACHE_LINESIZE
.set reorder
    jr      ra
END(osInvalDCache)
