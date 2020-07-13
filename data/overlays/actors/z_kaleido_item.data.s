.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8082A420
 .word 0x00010203, 0xFFFF06FF, 0x09FFFFFF, 0xFFFF10FF
glabel D_8082A430
 .word 0x00000000
glabel D_8082A434
 .word 0x00000000
glabel D_8082A438
 .word 0x000A0000
glabel D_8082A43C
 .word 0x00000002, 0x00040006, 0x00630063, 0x00080063, 0x0063000A, 0x00630063, 0x00630063, 0x00630063, 0x000C0000, 0x00FF0064, 0x00FF0000, 0x00000064, 0x00FF0000
glabel D_8082A470
 .word 0x000000FF, 0x00640000
glabel D_8082A478
 .word 0x02940384, 0x04740000
glabel D_8082A480
 .word 0x044C0398, 0x044C0000
glabel D_8082A488
 .word 0x00000000, 0x00000000
