#include "ultra64/asm.h"
#include "ultra64/R4300.h"

.set noreorder

.section .text

.balign 16

LEAF(__osSetFpcCsr)
    cfc1    $v0, C1_FPCSR
    ctc1    $a0, C1_FPCSR
    jr      $ra
     nop
END(__osSetFpcCsr)
