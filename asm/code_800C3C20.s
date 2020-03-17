.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C3C20
/* B3ADC0 800C3C20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3ADC4 800C3C24 AFB10018 */  sw    $s1, 0x18($sp)
/* B3ADC8 800C3C28 AFB00014 */  sw    $s0, 0x14($sp)
/* B3ADCC 800C3C2C 3C108013 */  lui   $s0, %hi(D_8012D200) # $s0, 0x8013
/* B3ADD0 800C3C30 3C118013 */  lui   $s1, %hi(D_8012D207) # $s1, 0x8013
/* B3ADD4 800C3C34 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3ADD8 800C3C38 2631D207 */  addiu $s1, %lo(D_8012D207) # addiu $s1, $s1, -0x2df9
/* B3ADDC 800C3C3C 2610D200 */  addiu $s0, %lo(D_8012D200) # addiu $s0, $s0, -0x2e00
.L800C3C40:
/* B3ADE0 800C3C40 0C03E1E8 */  jal   func_800F87A0
/* B3ADE4 800C3C44 92040000 */   lbu   $a0, ($s0)
/* B3ADE8 800C3C48 26100001 */  addiu $s0, $s0, 1
/* B3ADEC 800C3C4C 0211082B */  sltu  $at, $s0, $s1
/* B3ADF0 800C3C50 1420FFFB */  bnez  $at, .L800C3C40
/* B3ADF4 800C3C54 00000000 */   nop   
/* B3ADF8 800C3C58 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3ADFC 800C3C5C 8FB00014 */  lw    $s0, 0x14($sp)
/* B3AE00 800C3C60 8FB10018 */  lw    $s1, 0x18($sp)
/* B3AE04 800C3C64 03E00008 */  jr    $ra
/* B3AE08 800C3C68 27BD0020 */   addiu $sp, $sp, 0x20
