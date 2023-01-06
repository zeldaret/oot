.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel gSoundFontTable
    .incbin "build/assets/data/sound_font_table.bin"

glabel gSequenceFontTable
    .incbin "build/assets/data/sequence_font_table.bin"

glabel gSequenceTable
    .incbin "build/assets/data/sequence_table.bin"

glabel gSampleBankTable
    .incbin "build/assets/data/sample_bank_table.bin"
