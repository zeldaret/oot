.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text

.balign 16

glabel njpgdspMainTextStart
    .incbin "incbin/njpgdspMainText"
glabel njpgdspMainTextEnd

.section .rodata

.balign 16

glabel njpgdspMainDataStart
    .incbin "incbin/njpgdspMainData"
glabel njpgdspMainDataEnd
