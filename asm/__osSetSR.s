#include "ultra64/asm.h"
#include "ultra64/r4300.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(__osSetSR)
    mtc0    $a0, C0_SR
    nop
    jr      $ra
     nop
END(__osSetSR)
