.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80103BB0
/* B7AD50 80103BB0 3C018013 */  lui   $at, %hi(D_80134D00)
/* B7AD54 80103BB4 C4204D00 */  lwc1  $f0, %lo(D_80134D00)($at)
/* B7AD58 80103BB8 44856000 */  mtc1  $a1, $f12
/* B7AD5C 80103BBC 44867000 */  mtc1  $a2, $f14
/* B7AD60 80103BC0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B7AD64 80103BC4 46006302 */  mul.s $f12, $f12, $f0
/* B7AD68 80103BC8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B7AD6C 80103BCC 4487A000 */  mtc1  $a3, $f20
/* B7AD70 80103BD0 46007382 */  mul.s $f14, $f14, $f0
/* B7AD74 80103BD4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B7AD78 80103BD8 AFB00028 */  sw    $s0, 0x28($sp)
/* B7AD7C 80103BDC 4600A502 */  mul.s $f20, $f20, $f0
/* B7AD80 80103BE0 00808025 */  move  $s0, $a0
/* B7AD84 80103BE4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* B7AD88 80103BE8 E7AC004C */  swc1  $f12, 0x4c($sp)
/* B7AD8C 80103BEC E7AE0050 */  swc1  $f14, 0x50($sp)
/* B7AD90 80103BF0 0C0400A4 */  jal   sinf
/* B7AD94 80103BF4 E7B40054 */   swc1  $f20, 0x54($sp)
/* B7AD98 80103BF8 C7AC004C */  lwc1  $f12, 0x4c($sp)
/* B7AD9C 80103BFC 0C041184 */  jal   cosf
/* B7ADA0 80103C00 46000506 */   mov.s $f20, $f0
/* B7ADA4 80103C04 46000586 */  mov.s $f22, $f0
/* B7ADA8 80103C08 0C0400A4 */  jal   sinf
/* B7ADAC 80103C0C C7AC0050 */   lwc1  $f12, 0x50($sp)
/* B7ADB0 80103C10 E7A00040 */  swc1  $f0, 0x40($sp)
/* B7ADB4 80103C14 0C041184 */  jal   cosf
/* B7ADB8 80103C18 C7AC0050 */   lwc1  $f12, 0x50($sp)
/* B7ADBC 80103C1C C7AC0054 */  lwc1  $f12, 0x54($sp)
/* B7ADC0 80103C20 0C0400A4 */  jal   sinf
/* B7ADC4 80103C24 E7A00034 */   swc1  $f0, 0x34($sp)
/* B7ADC8 80103C28 C7AC0054 */  lwc1  $f12, 0x54($sp)
/* B7ADCC 80103C2C 0C041184 */  jal   cosf
/* B7ADD0 80103C30 E7A0003C */   swc1  $f0, 0x3c($sp)
/* B7ADD4 80103C34 C7B00034 */  lwc1  $f16, 0x34($sp)
/* B7ADD8 80103C38 C7A20058 */  lwc1  $f2, 0x58($sp)
/* B7ADDC 80103C3C C7AE003C */  lwc1  $f14, 0x3c($sp)
/* B7ADE0 80103C40 46008102 */  mul.s $f4, $f16, $f0
/* B7ADE4 80103C44 44809000 */  mtc1  $zero, $f18
/* B7ADE8 80103C48 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B7ADEC 80103C4C 46022182 */  mul.s $f6, $f4, $f2
/* B7ADF0 80103C50 00000000 */  nop   
/* B7ADF4 80103C54 460E8202 */  mul.s $f8, $f16, $f14
/* B7ADF8 80103C58 E6060000 */  swc1  $f6, ($s0)
/* B7ADFC 80103C5C 46024282 */  mul.s $f10, $f8, $f2
/* B7AE00 80103C60 E60A0004 */  swc1  $f10, 4($s0)
/* B7AE04 80103C64 C7A40040 */  lwc1  $f4, 0x40($sp)
/* B7AE08 80103C68 E612000C */  swc1  $f18, 0xc($s0)
/* B7AE0C 80103C6C 46002187 */  neg.s $f6, $f4
/* B7AE10 80103C70 46023202 */  mul.s $f8, $f6, $f2
/* B7AE14 80103C74 E6080008 */  swc1  $f8, 8($s0)
/* B7AE18 80103C78 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* B7AE1C 80103C7C E612001C */  swc1  $f18, 0x1c($s0)
/* B7AE20 80103C80 460AA302 */  mul.s $f12, $f20, $f10
/* B7AE24 80103C84 00000000 */  nop   
/* B7AE28 80103C88 46006102 */  mul.s $f4, $f12, $f0
/* B7AE2C 80103C8C 00000000 */  nop   
/* B7AE30 80103C90 460EB182 */  mul.s $f6, $f22, $f14
/* B7AE34 80103C94 46062201 */  sub.s $f8, $f4, $f6
/* B7AE38 80103C98 46024282 */  mul.s $f10, $f8, $f2
/* B7AE3C 80103C9C 00000000 */  nop   
/* B7AE40 80103CA0 460E6102 */  mul.s $f4, $f12, $f14
/* B7AE44 80103CA4 00000000 */  nop   
/* B7AE48 80103CA8 4600B182 */  mul.s $f6, $f22, $f0
/* B7AE4C 80103CAC E60A0010 */  swc1  $f10, 0x10($s0)
/* B7AE50 80103CB0 46062200 */  add.s $f8, $f4, $f6
/* B7AE54 80103CB4 46024282 */  mul.s $f10, $f8, $f2
/* B7AE58 80103CB8 00000000 */  nop   
/* B7AE5C 80103CBC 4610A102 */  mul.s $f4, $f20, $f16
/* B7AE60 80103CC0 E60A0014 */  swc1  $f10, 0x14($s0)
/* B7AE64 80103CC4 46022182 */  mul.s $f6, $f4, $f2
/* B7AE68 80103CC8 E6060018 */  swc1  $f6, 0x18($s0)
/* B7AE6C 80103CCC C7A80040 */  lwc1  $f8, 0x40($sp)
/* B7AE70 80103CD0 E612002C */  swc1  $f18, 0x2c($s0)
/* B7AE74 80103CD4 4608B302 */  mul.s $f12, $f22, $f8
/* B7AE78 80103CD8 00000000 */  nop   
/* B7AE7C 80103CDC 46006282 */  mul.s $f10, $f12, $f0
/* B7AE80 80103CE0 00000000 */  nop   
/* B7AE84 80103CE4 460EA102 */  mul.s $f4, $f20, $f14
/* B7AE88 80103CE8 46045180 */  add.s $f6, $f10, $f4
/* B7AE8C 80103CEC 46023202 */  mul.s $f8, $f6, $f2
/* B7AE90 80103CF0 00000000 */  nop   
/* B7AE94 80103CF4 460E6282 */  mul.s $f10, $f12, $f14
/* B7AE98 80103CF8 00000000 */  nop   
/* B7AE9C 80103CFC 4600A102 */  mul.s $f4, $f20, $f0
/* B7AEA0 80103D00 E6080020 */  swc1  $f8, 0x20($s0)
/* B7AEA4 80103D04 46045181 */  sub.s $f6, $f10, $f4
/* B7AEA8 80103D08 46023202 */  mul.s $f8, $f6, $f2
/* B7AEAC 80103D0C 00000000 */  nop   
/* B7AEB0 80103D10 4610B282 */  mul.s $f10, $f22, $f16
/* B7AEB4 80103D14 E6080024 */  swc1  $f8, 0x24($s0)
/* B7AEB8 80103D18 46025102 */  mul.s $f4, $f10, $f2
/* B7AEBC 80103D1C E6040028 */  swc1  $f4, 0x28($s0)
/* B7AEC0 80103D20 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* B7AEC4 80103D24 44812000 */  mtc1  $at, $f4
/* B7AEC8 80103D28 E6060030 */  swc1  $f6, 0x30($s0)
/* B7AECC 80103D2C C7A80060 */  lwc1  $f8, 0x60($sp)
/* B7AED0 80103D30 E6080034 */  swc1  $f8, 0x34($s0)
/* B7AED4 80103D34 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* B7AED8 80103D38 E604003C */  swc1  $f4, 0x3c($s0)
/* B7AEDC 80103D3C E60A0038 */  swc1  $f10, 0x38($s0)
/* B7AEE0 80103D40 8FBF002C */  lw    $ra, 0x2c($sp)
/* B7AEE4 80103D44 8FB00028 */  lw    $s0, 0x28($sp)
/* B7AEE8 80103D48 D7B60020 */  ldc1  $f22, 0x20($sp)
/* B7AEEC 80103D4C D7B40018 */  ldc1  $f20, 0x18($sp)
/* B7AEF0 80103D50 03E00008 */  jr    $ra
/* B7AEF4 80103D54 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_80103D58
/* B7AEF8 80103D58 27BDFF98 */  addiu $sp, $sp, -0x68
/* B7AEFC 80103D5C 44856000 */  mtc1  $a1, $f12
/* B7AF00 80103D60 44867000 */  mtc1  $a2, $f14
/* B7AF04 80103D64 C7A40078 */  lwc1  $f4, 0x78($sp)
/* B7AF08 80103D68 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* B7AF0C 80103D6C C7A80080 */  lwc1  $f8, 0x80($sp)
/* B7AF10 80103D70 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* B7AF14 80103D74 AFBF0024 */  sw    $ra, 0x24($sp)
/* B7AF18 80103D78 AFA40068 */  sw    $a0, 0x68($sp)
/* B7AF1C 80103D7C 44056000 */  mfc1  $a1, $f12
/* B7AF20 80103D80 44067000 */  mfc1  $a2, $f14
/* B7AF24 80103D84 AFA70074 */  sw    $a3, 0x74($sp)
/* B7AF28 80103D88 27A40028 */  addiu $a0, $sp, 0x28
/* B7AF2C 80103D8C E7A40010 */  swc1  $f4, 0x10($sp)
/* B7AF30 80103D90 E7A60014 */  swc1  $f6, 0x14($sp)
/* B7AF34 80103D94 E7A80018 */  swc1  $f8, 0x18($sp)
/* B7AF38 80103D98 0C040EEC */  jal   func_80103BB0
/* B7AF3C 80103D9C E7AA001C */   swc1  $f10, 0x1c($sp)
/* B7AF40 80103DA0 27A40028 */  addiu $a0, $sp, 0x28
/* B7AF44 80103DA4 0C041938 */  jal   func_801064E0
/* B7AF48 80103DA8 8FA50068 */   lw    $a1, 0x68($sp)
/* B7AF4C 80103DAC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B7AF50 80103DB0 27BD0068 */  addiu $sp, $sp, 0x68
/* B7AF54 80103DB4 03E00008 */  jr    $ra
/* B7AF58 80103DB8 00000000 */   nop   
