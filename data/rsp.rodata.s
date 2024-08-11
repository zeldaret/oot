.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .rodata

.balign 16

glabel aspMainDataStart
    .incbin "incbin/aspMainData"
glabel aspMainDataEnd

glabel gspF3DZEX2_NoN_PosLight_fifoTextStart
    .incbin "incbin/gspF3DZEX2_NoN_PosLight_fifoText"
glabel gspF3DZEX2_NoN_PosLight_fifoTextEnd

glabel gspF3DZEX2_NoN_PosLight_fifoDataStart
    .incbin "incbin/gspF3DZEX2_NoN_PosLight_fifoData"
glabel gspF3DZEX2_NoN_PosLight_fifoDataEnd

glabel gspS2DEX2d_fifoDataStart
    .incbin "incbin/gspS2DEX2d_fifoData"
glabel gspS2DEX2d_fifoDataEnd

glabel njpgdspMainDataStart
    .incbin "incbin/njpgdspMainData"
glabel njpgdspMainDataEnd
