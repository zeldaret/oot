.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80115760
    .incbin "baserom.z64", 0xB8C900, 0x10

glabel D_80115770
    .incbin "baserom.z64", 0xB8C910, 0x10

glabel D_80115780
    .incbin "baserom.z64", 0xB8C920, 0xC

glabel D_8011578C
    .incbin "baserom.z64", 0xB8C92C, 0x10

glabel D_8011579C
    .incbin "baserom.z64", 0xB8C93C, 0x10

glabel D_801157AC
    .incbin "baserom.z64", 0xB8C94C, 0x10

glabel D_801157BC
    .incbin "baserom.z64", 0xB8C95C, 0x10

glabel D_801157CC
    .incbin "baserom.z64", 0xB8C96C, 0x10

glabel D_801157DC
    .incbin "baserom.z64", 0xB8C97C, 0x10

glabel D_801157EC
    .incbin "baserom.z64", 0xB8C98C, 0x10

glabel D_801157FC
    .incbin "baserom.z64", 0xB8C99C, 0x14
