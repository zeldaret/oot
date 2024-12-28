#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "boot.h"

.text

#if defined(__sgi) && !defined(AVOID_UB)
/* IDO assembler workaround: The makerom tool in the N64 SDK was given the bss segment size as a const
 * literal, and since this literal was < 0x10000 it was loaded in one instruction. We don't have access
 * to the bss segment size until we link everything so we cannot do the same thing. Instead we must load
 * only the lower 16 bits of the bss size for matching.
 * When AVOID_UB is enabled, don't do this and instead load the full symbol value, otherwise not all of
 * bss may be cleared. */
#define LOAD_BSS_SIZE(reg) li reg, %half(_bootSegmentBssSize)
#else
#define LOAD_BSS_SIZE(reg) la reg, _bootSegmentBssSize
#endif

LEAF(entrypoint)
    /* Clear boot segment .bss */
    la      t0, _bootSegmentBssStart
    LOAD_BSS_SIZE(t1)
.clear_bss:
    sw      zero, 0(t0)
    sw      zero, 4(t0)
    addi    t0, t0, 8
    addi    t1, t1, -8
    bnez    t1, .clear_bss

    /* Set up stack and enter program code */
    la      sp, sBootThreadStack + BOOT_STACK_SIZE
    la      t2, bootproc
    jr      t2
END(entrypoint)

#ifdef __GNUC__
/* Pad to a total size of 0x60 */
.fill 0x60 - (. - entrypoint)
#else
/* IDO can't take absolute differences of symbols.. */
.repeat (0x60 - 0x34)
    .byte 0
.endr
#endif
