.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text

.balign 16

glabel gspF3DZEX2_NoN_fifoTextStart
    .incbin "incbin/gspF3DZEX2_NoN_fifoText"
glabel gspF3DZEX2_NoN_fifoTextEnd

.section .rodata

.balign 16

glabel gspF3DZEX2_NoN_fifoDataStart
    .incbin "incbin/gspF3DZEX2_NoN_fifoData"
glabel gspF3DZEX2_NoN_fifoDataEnd
