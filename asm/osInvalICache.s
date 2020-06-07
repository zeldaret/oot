.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16
  
glabel osInvalICache
/* 006D50 80006150 18A00011 */  blez  $a1, .L80006198
/* 006D54 80006154 00000000 */   nop   
/* 006D58 80006158 240B4000 */  li    $t3, 16384
/* 006D5C 8000615C 00AB082B */  sltu  $at, $a1, $t3
/* 006D60 80006160 1020000F */  beqz  $at, .L800061A0
/* 006D64 80006164 00000000 */   nop   
/* 006D68 80006168 00804025 */  move  $t0, $a0
/* 006D6C 8000616C 00854821 */  addu  $t1, $a0, $a1
/* 006D70 80006170 0109082B */  sltu  $at, $t0, $t1
/* 006D74 80006174 10200008 */  beqz  $at, .L80006198
/* 006D78 80006178 00000000 */   nop   
/* 006D7C 8000617C 310A001F */  andi  $t2, $t0, 0x1f
/* 006D80 80006180 2529FFE0 */  addiu $t1, $t1, -0x20
/* 006D84 80006184 010A4023 */  subu  $t0, $t0, $t2
.L80006188:
/* 006D88 80006188 BD100000 */  cache 0x10, ($t0)
/* 006D8C 8000618C 0109082B */  sltu  $at, $t0, $t1
/* 006D90 80006190 1420FFFD */  bnez  $at, .L80006188
/* 006D94 80006194 25080020 */   addiu $t0, $t0, 0x20
.L80006198:
/* 006D98 80006198 03E00008 */  jr    $ra
/* 006D9C 8000619C 00000000 */   nop   

.L800061A0:
/* 006DA0 800061A0 3C088000 */  lui   $t0, %hi(D_80000020) # $t0, 0x8000
/* 006DA4 800061A4 010B4821 */  addu  $t1, $t0, $t3
/* 006DA8 800061A8 2529FFE0 */  addiu $t1, $t1, -0x20
.L800061AC:
/* 006DAC 800061AC BD000000 */  cache 0, ($t0)
/* 006DB0 800061B0 0109082B */  sltu  $at, $t0, $t1
/* 006DB4 800061B4 1420FFFD */  bnez  $at, .L800061AC
/* 006DB8 800061B8 25080020 */   addiu $t0, %lo(D_80000020) # addiu $t0, $t0, 0x20
/* 006DBC 800061BC 03E00008 */  jr    $ra
/* 006DC0 800061C0 00000000 */   nop   
