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

#ifndef F3DEX_GBI_PL
glabel gspF3DZEX2_NoN_fifoTextStart
    .incbin "incbin/gspF3DZEX2_NoN_fifoText"
glabel gspF3DZEX2_NoN_fifoTextEnd
#endif

glabel gspS2DEX2d_fifoTextStart
    .incbin "incbin/gspS2DEX2d_fifoText"
glabel gspS2DEX2d_fifoTextEnd

glabel njpgdspMainTextStart
    .incbin "incbin/njpgdspMainText"
glabel njpgdspMainTextEnd
