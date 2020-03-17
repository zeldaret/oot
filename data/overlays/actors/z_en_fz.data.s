.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Fz_InitVars
 .word 0x01210500, 0x00000415, 0x01140000, 0x00000BD4
.word EnFz_Init
.word EnFz_Destroy
.word EnFz_Update
.word EnFz_Draw
glabel D_80A21B90
 .word 0x0A110939, 0x01000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0xFFCE0FDB, 0x00000000, 0x01050100, 0x001E0050, 0x00000000, 0x00000000
glabel D_80A21BBC
 .word 0x09000D00, 0x01000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x0001F024, 0x00000000, 0x00010000, 0x00230050, 0x00000000, 0x00000000
glabel D_80A21BE8
 .word 0x0A110000, 0x01000000, 0x00000000, 0x20000000, 0x02080000, 0x00000000, 0x00000000, 0x01000000, 0x0014001E, 0xFFF10000, 0x00000000
glabel D_80A21C14
 .word 0x00F0F0F2, 0xF0F0F2F2, 0xF0F2F424, 0xF0F0F0F0, 0xF0240000, 0x0000F0F4, 0xF2F0F8F4, 0x00000000
glabel D_80A21C34
 .word 0x8917003B, 0x801F0002, 0x304C001E
glabel jtbl_80A21C40
.word L80A202F4
.word func_80A202FC
.word func_80A203DC
.word func_80A203DC
glabel D_80A21C50
 .word 0x06001130, 0x060021A0, 0x06002CA0, 0x00000000

