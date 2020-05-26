.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Horse_Link_Child_InitVars
 .word 0x009A0100, 0x02000010, 0x00A00000, 0x000002A4
.word EnHorseLinkChild_Init
.word EnHorseLinkChild_Destroy
.word EnHorseLinkChild_Update
.word EnHorseLinkChild_Draw
glabel D_80A6AEE0
 .word 0x060043E4, 0x06004B08
glabel D_80A6AEE8
 .word 0x060053F0, 0x0600360C, 0x06002F98
glabel D_80A6AEF4
 .word 0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00140064, 0x00000000, 0x00000000
glabel D_80A6AF20
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0D000000, 0x00000000, 0x000A0064
glabel D_80A6AF44
 .word 0x0A000939, 0x12000000, 0x00000001
.word D_80A6AF20
glabel D_80A6AF54
 .word 0x0A000023, 0x0064FE00
glabel D_80A6AF5C
 .word 0x00000001, 0x00000013
glabel D_80A6AF64
 .word 0x3F800000, 0x3F800000, 0x3FC00000, 0x3FC00000, 0x3FC00000
glabel D_80A6AF78
 .word 0x30F804B0
glabel D_80A6AF7C
 .word func_80A698F4
.word func_80A69C18
.word func_80A699FC
.word func_80A6A068
.word func_80A6A7D0
.word func_80A6A5A4
glabel D_80A6AF94
 .word 0x06001D28, 0x06001928, 0x06001B28
glabel D_80A6AFA0
 .word 0x00010201, 0x00000000, 0x00000000, 0x00000000

