.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text

.balign 16

glabel aspMainTextStart
    .incbin "incbin/aspMainText"
glabel aspMainTextEnd

.section .rodata

.balign 16

glabel aspMainDataStart
    .incbin "incbin/aspMainData"
glabel aspMainDataEnd
