#include "ultra64/asm.h"
#include "ultra64/R4300.h"

.set noreorder

.section .text

.balign 16

LEAF(__osGetFpcCsr)
    cfc1    $v0, C1_FPCSR
    jr      $ra
     nop
END(__osGetFpcCsr)
