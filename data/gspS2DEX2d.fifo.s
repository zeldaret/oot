.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text

.balign 16

glabel gspS2DEX2d_fifoTextStart
    .incbin "incbin/gspS2DEX2d_fifoText"
glabel gspS2DEX2d_fifoTextEnd

.section .rodata

.balign 16

glabel gspS2DEX2d_fifoDataStart
    .incbin "incbin/gspS2DEX2d_fifoData"
glabel gspS2DEX2d_fifoDataEnd
