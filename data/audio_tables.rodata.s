.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .rodata

.balign 16

glabel gSoundFontTable
    .incbin "incbin/gSoundFontTable"

glabel gSequenceFontTable
    .incbin "incbin/gSequenceFontTable"

glabel gSequenceTable
    .incbin "incbin/gSequenceTable"

glabel gSampleBankTable
    .incbin "incbin/gSampleBankTable"
