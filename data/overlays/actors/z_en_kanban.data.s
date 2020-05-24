.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel En_Kanban_InitVars
 .word 0x01410600, 0x00000019, 0x012F0000, 0x000001EC
.word EnKanban_Init
.word EnKanban_Destroy
.word EnKanban_Update
.word EnKanban_Draw
glabel D_80A94490
 .word 0x0A110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x01010100, 0x00140032, 0x00050000, 0x00000000
glabel D_80A944BC
 .word 0x00010002, 0x00040008, 0x00100020, 0x00400080, 0x01000200, 0x04000000
glabel D_80A944D4
 .word 0x00000000, 0x42300000, 0x00000000, 0x00000000, 0x42480000, 0x00000000, 0x00000000, 0x42180000, 0x00000000, 0x41200000, 0x42300000, 0x00000000, 0xC1200000, 0x42300000, 0x00000000, 0xC1200000, 0x42480000, 0x00000000, 0x41200000, 0x42480000, 0x00000000, 0xC1200000, 0x42180000, 0x00000000, 0x41200000, 0x42180000, 0x00000000, 0xC0F00000, 0x424C0000, 0x00000000, 0xC1480000, 0x42400000, 0x00000000, 0xC1480000, 0x42200000, 0x00000000, 0xC0F00000, 0x42140000, 0x00000000, 0x40F00000, 0x424C0000, 0x00000000, 0x41480000, 0x42400000, 0x00000000, 0x41480000, 0x42200000, 0x00000000, 0x40F00000, 0x42140000, 0x00000000, 0x00000000, 0x42480000, 0x00000000, 0x00000000, 0x42180000, 0x00000000
glabel D_80A945B8
 .word 0x44BB8000, 0x447A0000, 0x00000000, 0x44BB8000, 0x43FA0000, 0x00000000, 0x44BB8000, 0x43FA0000, 0x00000000, 0x442F0000, 0x447A0000, 0x00000000, 0x442F0000, 0x447A0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x442F0000, 0x43FA0000, 0x00000000, 0x43480000, 0x43FA0000, 0x00000000, 0x43480000, 0x43FA0000, 0x00000000
glabel D_80A9469C
 .word 0x01010404, 0x02020202, 0x02020202, 0x00000000, 0x01010101, 0x02020000, 0x00000000
glabel D_80A946B8
 .word 0x03FF0027, 0x014B0147, 0x015900D8
glabel D_80A946C4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A946D0
 .word 0x06000CB0, 0x06000DB8, 0x06000E78, 0x06000F38, 0x06000FF8, 0x060010B8, 0x060011C0, 0x060012C8, 0x060013D0, 0x06001488, 0x06001540
glabel D_80A946FC
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x01000100, 0x01000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x01000100, 0x01000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x01000100, 0x01000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x01010101, 0x01400140, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00020002, 0x00020001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x01010101, 0x01400140, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00400008, 0x00080008, 0x00020002, 0x00020002, 0x00020002, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x01010101, 0x01400140, 0x00400040, 0x00400040, 0x00400040, 0x00400040, 0x00080008, 0x00080008, 0x00080008, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00020001, 0x00010001, 0x00010001, 0x01010101, 0x01400140, 0x00400040, 0x00400040, 0x00400008, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010001, 0x01010101, 0x01400140, 0x00400040, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x01020301, 0x03400108, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00080008, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x02040220, 0x02800210, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00200020, 0x02200220, 0x02800280, 0x00800080, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00040004, 0x00040004, 0x00040004, 0x00040004, 0x00040020, 0x00200020, 0x00200020, 0x02200220, 0x02800280, 0x00800080, 0x00800080, 0x00800010, 0x00100010, 0x00100010, 0x00100010, 0x00100010, 0x00040004, 0x00040004, 0x00040004, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x02200220, 0x02800280, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00100010, 0x00100010, 0x00100010, 0x00040004, 0x00040020, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x02200220, 0x02800280, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00800010, 0x00100010, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x00200020, 0x02200620, 0x06800280, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00800080, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x04000400, 0x04000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_80A94EFC
 .word 0x3FC90FDB, 0x00000000, 0x3FC90FDB, 0x4004B36D, 0x3F88B8DD, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_80A94F20
 .word 0xF8300000, 0x00000000, 0x00000400, 0xFFFFFFFF, 0x07D00000, 0x00000000, 0x04000400, 0xFFFFFFFF, 0x07D01770, 0x00000000, 0x04000000, 0xFFFFFFFF, 0xF8301770, 0x00000000, 0x00000000, 0xFFFFFFFF
glabel D_80A94F60
 .word 0xE7000000, 0x00000000, 0xE3001001, 0x00000000, 0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x08000000, 0xF5900000, 0x07098260, 0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, 0xF5880800, 0x00098260, 0xF2000000, 0x0007C07C, 0xFC3097FF, 0xFFFFFE38, 0xE200001C, 0x0C184F50, 0xD9F0FBFF, 0x00000000, 0x01004008
.word D_80A94F20
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000

