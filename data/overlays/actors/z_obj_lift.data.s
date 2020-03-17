.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Lift_InitVars
 .word 0x012C0100, 0x00000010, 0x011D0000, 0x00000170
.word ObjLift_Init
.word ObjLift_Destroy
.word ObjLift_Update
.word ObjLift_Draw
glabel D_80B969C0
 .word 0x0000000A, 0x0014001E, 0x00280032, 0x003C0000
glabel D_80B969D0
 .word 0x0078FF88, 0x00780000, 0x00780078, 0x0000FF88, 0x00000000, 0x00000078, 0xFF88FF88, 0xFF880000, 0xFF880078
glabel D_80B969F4
 .word 0xB86CFDA8, 0xB870C568, 0xB0F407D0, 0xB0F801F4, 0x30FC07D0
glabel D_80B96A08
 .word 0x3DCCCCCD, 0x3D4CCCCD
glabel D_80B96A10
 .word 0xC1900000, 0xC1100000, 0x00000000, 0x00000000

