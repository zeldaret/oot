.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80B20130
 .space 0x02
glabel D_80B20132
 .space 0x01
glabel D_80B20133
 .space 0x03
glabel D_80B20136
 .space 0x02
glabel D_80B20138
 .space 0x01
glabel D_80B20139
 .space 0x03
glabel D_80B2013C
 .space 0x02
glabel D_80B2013E
 .space 0x01
glabel D_80B2013F
 .space 0x03
glabel D_80B20142
 .space 0x06
glabel D_80B20148
 .space 0x08
glabel D_80B20150
 .space 0x04
glabel D_80B20154
 .space 0x04
glabel D_80B20158
 .space 0x04
glabel D_80B2015C
 .space 0x01
glabel D_80B2015D
 .space 0x01
glabel D_80B2015E
 .space 0x01
glabel D_80B2015F
 .space 0x01
glabel D_80B20160
 .space 0x01
glabel D_80B20161
 .space 0x01
glabel D_80B20162
 .space 0x01
glabel D_80B20163
 .space 0x01
glabel D_80B20164
 .space 0x01
glabel D_80B20165
 .space 0x0B

