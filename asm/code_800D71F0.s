.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800D71F0
/* B4E390 800D71F0 34018800 */  li    $at, 34816
/* B4E394 800D71F4 0081082A */  slt   $at, $a0, $at
/* B4E398 800D71F8 14200010 */  bnez  $at, .L800D723C
/* B4E39C 800D71FC 240600BC */   li    $a2, 188
/* B4E3A0 800D7200 00042A02 */  srl   $a1, $a0, 8
/* B4E3A4 800D7204 20A5FF78 */  addi  $a1, $a1, -0x88
/* B4E3A8 800D7208 00C50019 */  multu $a2, $a1
/* B4E3AC 800D720C 308700FF */  andi  $a3, $a0, 0xff
/* B4E3B0 800D7210 20E7FFC0 */  addi  $a3, $a3, -0x40
/* B4E3B4 800D7214 28E10040 */  slti  $at, $a3, 0x40
/* B4E3B8 800D7218 00003012 */  mflo  $a2
/* B4E3BC 800D721C 54200003 */  bnezl $at, .L800D722C
/* B4E3C0 800D7220 00003012 */   mflo  $a2
/* B4E3C4 800D7224 20E7FFFF */  addi  $a3, $a3, -1
/* B4E3C8 800D7228 00003012 */  mflo  $a2
.L800D722C:
/* B4E3CC 800D722C 20E7030A */  addi  $a3, $a3, 0x30a
/* B4E3D0 800D7230 00E63820 */  add   $a3, $a3, $a2
/* B4E3D4 800D7234 03E00008 */  jr    $ra
/* B4E3D8 800D7238 000711C0 */   sll   $v0, $a3, 7

.L800D723C:
/* B4E3DC 800D723C 00042A02 */  srl   $a1, $a0, 8
/* B4E3E0 800D7240 20A5FF7F */  addi  $a1, $a1, -0x81
/* B4E3E4 800D7244 00C50019 */  multu $a2, $a1
/* B4E3E8 800D7248 308700FF */  andi  $a3, $a0, 0xff
/* B4E3EC 800D724C 20E7FFC0 */  addi  $a3, $a3, -0x40
/* B4E3F0 800D7250 28E10040 */  slti  $at, $a3, 0x40
/* B4E3F4 800D7254 00003012 */  mflo  $a2
/* B4E3F8 800D7258 54200003 */  bnezl $at, .L800D7268
/* B4E3FC 800D725C 00003012 */   mflo  $a2
/* B4E400 800D7260 20E7FFFF */  addi  $a3, $a3, -1
/* B4E404 800D7264 00003012 */  mflo  $a2
.L800D7268:
/* B4E408 800D7268 00E63820 */  add   $a3, $a3, $a2
/* B4E40C 800D726C 3C06800D */  lui   $a2, %hi(D_800D7288) # $a2, 0x800d
/* B4E410 800D7270 00073840 */  sll   $a3, $a3, 1
/* B4E414 800D7274 24C67288 */  addiu $a2, %lo(D_800D7288) # addiu $a2, $a2, 0x7288
/* B4E418 800D7278 00E63820 */  add   $a3, $a3, $a2
/* B4E41C 800D727C 84E60000 */  lh    $a2, ($a3)
/* B4E420 800D7280 03E00008 */  jr    $ra
/* B4E424 800D7284 000611C0 */   sll   $v0, $a2, 7

glabel D_800D7288
.incbin "baserom.z64", 0xB4E428, 0xB4EE70-0xB4E428
