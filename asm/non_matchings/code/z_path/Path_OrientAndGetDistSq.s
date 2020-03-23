.late_rodata
glabel D_8013E760
    .float 10430.378 # 32768 / M_PI

.text
glabel Path_OrientAndGetDistSq
/* B056C0 8008E520 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B056C4 8008E524 AFA60028 */  sw    $a2, 0x28($sp)
/* B056C8 8008E528 00063400 */  sll   $a2, $a2, 0x10
/* B056CC 8008E52C 00063403 */  sra   $a2, $a2, 0x10
/* B056D0 8008E530 AFBF0014 */  sw    $ra, 0x14($sp)
/* B056D4 8008E534 14A00005 */  bnez  $a1, .L8008E54C
/* B056D8 8008E538 AFA7002C */   sw    $a3, 0x2c($sp)
/* B056DC 8008E53C 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* B056E0 8008E540 44810000 */  mtc1  $at, $f0
/* B056E4 8008E544 1000002E */  b     .L8008E600
/* B056E8 8008E548 8FBF0014 */   lw    $ra, 0x14($sp)
.L8008E54C:
/* B056EC 8008E54C 8CA30004 */  lw    $v1, 4($a1)
/* B056F0 8008E550 3C198016 */  lui   $t9, %hi(gSegments)
/* B056F4 8008E554 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B056F8 8008E558 00037100 */  sll   $t6, $v1, 4
/* B056FC 8008E55C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B05700 8008E560 000FC080 */  sll   $t8, $t7, 2
/* B05704 8008E564 0338C821 */  addu  $t9, $t9, $t8
/* B05708 8008E568 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B0570C 8008E56C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B05710 8008E570 00614024 */  and   $t0, $v1, $at
/* B05714 8008E574 00064880 */  sll   $t1, $a2, 2
/* B05718 8008E578 3C018000 */  lui   $at, 0x8000
/* B0571C 8008E57C 01264823 */  subu  $t1, $t1, $a2
/* B05720 8008E580 03281021 */  addu  $v0, $t9, $t0
/* B05724 8008E584 00411021 */  addu  $v0, $v0, $at
/* B05728 8008E588 00094840 */  sll   $t1, $t1, 1
/* B0572C 8008E58C 01221021 */  addu  $v0, $t1, $v0
/* B05730 8008E590 844A0000 */  lh    $t2, ($v0)
/* B05734 8008E594 844B0004 */  lh    $t3, 4($v0)
/* B05738 8008E598 C4880024 */  lwc1  $f8, 0x24($a0)
/* B0573C 8008E59C 448A2000 */  mtc1  $t2, $f4
/* B05740 8008E5A0 448B5000 */  mtc1  $t3, $f10
/* B05744 8008E5A4 C492002C */  lwc1  $f18, 0x2c($a0)
/* B05748 8008E5A8 468021A0 */  cvt.s.w $f6, $f4
/* B0574C 8008E5AC 46805420 */  cvt.s.w $f16, $f10
/* B05750 8008E5B0 46083301 */  sub.s $f12, $f6, $f8
/* B05754 8008E5B4 46128381 */  sub.s $f14, $f16, $f18
/* B05758 8008E5B8 E7AC001C */  swc1  $f12, 0x1c($sp)
/* B0575C 8008E5BC 0C03F494 */  jal   Math_atan2f
/* B05760 8008E5C0 E7AE0018 */   swc1  $f14, 0x18($sp)
/* B05764 8008E5C4 3C018014 */  lui   $at, %hi(D_8013E760)
/* B05768 8008E5C8 C424E760 */  lwc1  $f4, %lo(D_8013E760)($at)
/* B0576C 8008E5CC C7AC001C */  lwc1  $f12, 0x1c($sp)
/* B05770 8008E5D0 C7AE0018 */  lwc1  $f14, 0x18($sp)
/* B05774 8008E5D4 46040182 */  mul.s $f6, $f0, $f4
/* B05778 8008E5D8 8FAE002C */  lw    $t6, 0x2c($sp)
/* B0577C 8008E5DC 460C6282 */  mul.s $f10, $f12, $f12
/* B05780 8008E5E0 00000000 */  nop   
/* B05784 8008E5E4 460E7402 */  mul.s $f16, $f14, $f14
/* B05788 8008E5E8 4600320D */  trunc.w.s $f8, $f6
/* B0578C 8008E5EC 46105000 */  add.s $f0, $f10, $f16
/* B05790 8008E5F0 440D4000 */  mfc1  $t5, $f8
/* B05794 8008E5F4 00000000 */  nop   
/* B05798 8008E5F8 A5CD0000 */  sh    $t5, ($t6)
/* B0579C 8008E5FC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008E600:
/* B057A0 8008E600 27BD0020 */  addiu $sp, $sp, 0x20
/* B057A4 8008E604 03E00008 */  jr    $ra
/* B057A8 8008E608 00000000 */   nop   
