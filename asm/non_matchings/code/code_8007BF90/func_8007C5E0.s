.late_rodata
glabel D_8013CB98
    .float 57.295776

glabel D_8013CB9C
    .float 182.04167

.text
glabel func_8007C5E0
/* AF3780 8007C5E0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF3784 8007C5E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF3788 8007C5E8 AFA40030 */  sw    $a0, 0x30($sp)
/* AF378C 8007C5EC 0C01F138 */  jal   func_8007C4E0
/* AF3790 8007C5F0 27A40024 */   addiu $a0, $sp, 0x24
/* AF3794 8007C5F4 3C018014 */  lui   $at, %hi(D_8013CB98)
/* AF3798 8007C5F8 C420CB98 */  lwc1  $f0, %lo(D_8013CB98)($at)
/* AF379C 8007C5FC C7A40024 */  lwc1  $f4, 0x24($sp)
/* AF37A0 8007C600 3C018014 */  lui   $at, %hi(D_8013CB9C)
/* AF37A4 8007C604 C422CB9C */  lwc1  $f2, %lo(D_8013CB9C)($at)
/* AF37A8 8007C608 46002182 */  mul.s $f6, $f4, $f0
/* AF37AC 8007C60C C7B20028 */  lwc1  $f18, 0x28($sp)
/* AF37B0 8007C610 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AF37B4 8007C614 44816000 */  mtc1  $at, $f12
/* AF37B8 8007C618 A7A00020 */  sh    $zero, 0x20($sp)
/* AF37BC 8007C61C 27A8001C */  addiu $t0, $sp, 0x1c
/* AF37C0 8007C620 8FA20030 */  lw    $v0, 0x30($sp)
/* AF37C4 8007C624 46023202 */  mul.s $f8, $f6, $f2
/* AF37C8 8007C628 00000000 */  nop   
/* AF37CC 8007C62C 46009102 */  mul.s $f4, $f18, $f0
/* AF37D0 8007C630 460C4280 */  add.s $f10, $f8, $f12
/* AF37D4 8007C634 46022182 */  mul.s $f6, $f4, $f2
/* AF37D8 8007C638 4600540D */  trunc.w.s $f16, $f10
/* AF37DC 8007C63C 460C3200 */  add.s $f8, $f6, $f12
/* AF37E0 8007C640 440F8000 */  mfc1  $t7, $f16
/* AF37E4 8007C644 4600428D */  trunc.w.s $f10, $f8
/* AF37E8 8007C648 A7AF001C */  sh    $t7, 0x1c($sp)
/* AF37EC 8007C64C 44195000 */  mfc1  $t9, $f10
/* AF37F0 8007C650 00000000 */  nop   
/* AF37F4 8007C654 A7B9001E */  sh    $t9, 0x1e($sp)
/* AF37F8 8007C658 8D0A0000 */  lw    $t2, ($t0)
/* AF37FC 8007C65C A84A0000 */  swl   $t2, ($v0)
/* AF3800 8007C660 B84A0003 */  swr   $t2, 3($v0)
/* AF3804 8007C664 950A0004 */  lhu   $t2, 4($t0)
/* AF3808 8007C668 A44A0004 */  sh    $t2, 4($v0)
/* AF380C 8007C66C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF3810 8007C670 27BD0030 */  addiu $sp, $sp, 0x30
/* AF3814 8007C674 03E00008 */  jr    $ra
/* AF3818 8007C678 00000000 */   nop   
