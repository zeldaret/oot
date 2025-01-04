#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "boot.h"

.text

#if defined(NON_MATCHING) || defined(__sgi)
/* Non-matching builds or IDO */
#define PAD_TO 0x60
#define LA(reg, sym) la reg, sym
#define BOOT_STACK_TOP sBootThreadStack + BOOT_STACK_SIZE
#else
/* EGCS */
#define PAD_TO 0x50
#define LA(reg, sym)        \
    lui reg, %lo(sym##_HI); \
    ori reg, %lo(sym)
#endif

#if !defined(AVOID_UB)
/* Old assembler workarounds: The makerom tool in the N64 SDK was given the bss segment size as a const
 * literal, and since this literal was < 0x10000 it was loaded in one instruction. We don't have access
 * to the bss segment size until we link everything so we cannot do the same thing. Instead we must load
 * only the lower 16 bits of the bss size for matching.
 * When AVOID_UB is enabled, don't do this and instead load the full symbol value, otherwise not all of
 * bss may be cleared. */
#if defined(__sgi)
#define LOAD_BSS_SIZE(reg) li reg, %half(_bootSegmentBssSize)
#else
#define LOAD_BSS_SIZE(reg) ori reg, zero, %lo(_bootSegmentBssSize)
#endif
#else
#define LOAD_BSS_SIZE(reg) LA(reg, _bootSegmentBssSize)
#endif

LEAF(entrypoint)
    /* Clear boot segment .bss */
    LA(     t0, _bootSegmentBssStart)
    LOAD_BSS_SIZE(t1)
.clear_bss:
    sw      zero, 0(t0)
    sw      zero, 4(t0)
    addi    t0, t0, 8
    addi    t1, t1, -8
    bnez    t1, .clear_bss

    /* Set up stack and enter program code */
    LA(     sp, BOOT_STACK_TOP)
    LA(     t2, bootproc)
    jr      t2
END(entrypoint)

#ifdef __sgi
/* IDO can't take absolute differences of symbols so the size of the above is hardcoded */
.space PAD_TO - 0x34
#else
/* Pad to a total size taking into account the size of the above */
.space PAD_TO - (. - entrypoint)
#endif
