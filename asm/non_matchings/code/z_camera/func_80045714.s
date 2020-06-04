glabel func_80045714
/* ABC8B4 80045714 27BDFFD8 */  addiu $sp, $sp, -0x28
/* ABC8B8 80045718 AFA5002C */  sw    $a1, 0x2c($sp)
/* ABC8BC 8004571C 00802825 */  move  $a1, $a0
/* ABC8C0 80045720 AFBF0014 */  sw    $ra, 0x14($sp)
/* ABC8C4 80045724 AFA40028 */  sw    $a0, 0x28($sp)
/* ABC8C8 80045728 AFA60030 */  sw    $a2, 0x30($sp)
/* ABC8CC 8004572C AFA70034 */  sw    $a3, 0x34($sp)
/* ABC8D0 80045730 0C01F0FD */  jal   OLib_Vec3fToVecSphRot90
/* ABC8D4 80045734 27A4001C */   addiu $a0, $sp, 0x1c
/* ABC8D8 80045738 0C01DE0D */  jal   Math_Coss
/* ABC8DC 8004573C 87A40020 */   lh    $a0, 0x20($sp)
/* ABC8E0 80045740 87AE002E */  lh    $t6, 0x2e($sp)
/* ABC8E4 80045744 87AF0022 */  lh    $t7, 0x22($sp)
/* ABC8E8 80045748 E7A00018 */  swc1  $f0, 0x18($sp)
/* ABC8EC 8004574C 01CF2023 */  subu  $a0, $t6, $t7
/* ABC8F0 80045750 00042400 */  sll   $a0, $a0, 0x10
/* ABC8F4 80045754 0C01DE0D */  jal   Math_Coss
/* ABC8F8 80045758 00042403 */   sra   $a0, $a0, 0x10
/* ABC8FC 8004575C C7A40018 */  lwc1  $f4, 0x18($sp)
/* ABC900 80045760 87B8002E */  lh    $t8, 0x2e($sp)
/* ABC904 80045764 87B90032 */  lh    $t9, 0x32($sp)
/* ABC908 80045768 46040002 */  mul.s $f0, $f0, $f4
/* ABC90C 8004576C 03192023 */  subu  $a0, $t8, $t9
/* ABC910 80045770 00042400 */  sll   $a0, $a0, 0x10
/* ABC914 80045774 00042403 */  sra   $a0, $a0, 0x10
/* ABC918 80045778 46000005 */  abs.s $f0, $f0
/* ABC91C 8004577C 0C01DE0D */  jal   Math_Coss
/* ABC920 80045780 E7A00018 */   swc1  $f0, 0x18($sp)
/* ABC924 80045784 C7A60018 */  lwc1  $f6, 0x18($sp)
/* ABC928 80045788 C7A80034 */  lwc1  $f8, 0x34($sp)
/* ABC92C 8004578C 8FBF0014 */  lw    $ra, 0x14($sp)
/* ABC930 80045790 27BD0028 */  addiu $sp, $sp, 0x28
/* ABC934 80045794 46083282 */  mul.s $f10, $f6, $f8
/* ABC938 80045798 00000000 */  nop
/* ABC93C 8004579C 460A0002 */  mul.s $f0, $f0, $f10
/* ABC940 800457A0 03E00008 */  jr    $ra
/* ABC944 800457A4 00000000 */   nop

