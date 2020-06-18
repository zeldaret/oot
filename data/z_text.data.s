.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

# temporary file name, rename to something more appropriate when decompiled

glabel gLetterTLUT
    .incbin "baserom.z64", 0xBA18E0, 0x80

glabel gFontFF
    .incbin "baserom.z64", 0xBA1960, 0x400

# Unused
glabel D_8012ABC0
    .word func_801067F0 # fmodf?
    .word guScale
    .word guRotate
    .word guTranslate
    .word GfxPrint_SetPos
    .word GfxPrint_SetColor
    .word GfxPrint_Printf
    .word GfxPrint_SetPosPx
    .word GfxPrint_Init
    .word GfxPrint_Open
    .word GfxPrint_Close
    .word GfxPrint_Destroy
