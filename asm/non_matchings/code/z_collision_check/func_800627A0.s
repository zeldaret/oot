glabel func_800627A0
/* AD9940 800627A0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AD9944 800627A4 0005C880 */  sll   $t9, $a1, 2
/* AD9948 800627A8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD994C 800627AC AFB00028 */  sw    $s0, 0x28($sp)
/* AD9950 800627B0 AFA40048 */  sw    $a0, 0x48($sp)
/* AD9954 800627B4 AFA5004C */  sw    $a1, 0x4c($sp)
/* AD9958 800627B8 AFA60050 */  sw    $a2, 0x50($sp)
/* AD995C 800627BC AFA70054 */  sw    $a3, 0x54($sp)
/* AD9960 800627C0 0325C823 */  subu  $t9, $t9, $a1
/* AD9964 800627C4 8C8F001C */  lw    $t7, 0x1c($a0)
/* AD9968 800627C8 0019C8C0 */  sll   $t9, $t9, 3
/* AD996C 800627CC 0325C823 */  subu  $t9, $t9, $a1
/* AD9970 800627D0 0019C880 */  sll   $t9, $t9, 2
/* AD9974 800627D4 01F98021 */  addu  $s0, $t7, $t9
/* AD9978 800627D8 26040028 */  addiu $a0, $s0, 0x28
/* AD997C 800627DC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9980 800627E0 00C02825 */   move  $a1, $a2
/* AD9984 800627E4 26040034 */  addiu $a0, $s0, 0x34
/* AD9988 800627E8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD998C 800627EC 8FA50054 */   lw    $a1, 0x54($sp)
/* AD9990 800627F0 26040040 */  addiu $a0, $s0, 0x40
/* AD9994 800627F4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD9998 800627F8 8FA50058 */   lw    $a1, 0x58($sp)
/* AD999C 800627FC 27A8003C */  addiu $t0, $sp, 0x3c
/* AD99A0 80062800 27A90038 */  addiu $t1, $sp, 0x38
/* AD99A4 80062804 27AA0034 */  addiu $t2, $sp, 0x34
/* AD99A8 80062808 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD99AC 8006280C AFA90014 */  sw    $t1, 0x14($sp)
/* AD99B0 80062810 AFA80010 */  sw    $t0, 0x10($sp)
/* AD99B4 80062814 8FA40050 */  lw    $a0, 0x50($sp)
/* AD99B8 80062818 8FA50054 */  lw    $a1, 0x54($sp)
/* AD99BC 8006281C 8FA60058 */  lw    $a2, 0x58($sp)
/* AD99C0 80062820 0C03322D */  jal   func_800CC8B4
/* AD99C4 80062824 27A70040 */   addiu $a3, $sp, 0x40
/* AD99C8 80062828 C7A40040 */  lwc1  $f4, 0x40($sp)
/* AD99CC 8006282C E604004C */  swc1  $f4, 0x4c($s0)
/* AD99D0 80062830 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* AD99D4 80062834 E6060050 */  swc1  $f6, 0x50($s0)
/* AD99D8 80062838 C7A80038 */  lwc1  $f8, 0x38($sp)
/* AD99DC 8006283C E6080054 */  swc1  $f8, 0x54($s0)
/* AD99E0 80062840 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* AD99E4 80062844 E60A0058 */  swc1  $f10, 0x58($s0)
/* AD99E8 80062848 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD99EC 8006284C 8FB00028 */  lw    $s0, 0x28($sp)
/* AD99F0 80062850 27BD0048 */  addiu $sp, $sp, 0x48
/* AD99F4 80062854 03E00008 */  jr    $ra
/* AD99F8 80062858 00000000 */   nop   

/* AD99FC 8006285C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD9A00 80062860 0006C880 */  sll   $t9, $a2, 2
/* AD9A04 80062864 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD9A08 80062868 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD9A0C 8006286C AFA60020 */  sw    $a2, 0x20($sp)
/* AD9A10 80062870 0326C823 */  subu  $t9, $t9, $a2
/* AD9A14 80062874 8CAF001C */  lw    $t7, 0x1c($a1)
/* AD9A18 80062878 0019C8C0 */  sll   $t9, $t9, 3
/* AD9A1C 8006287C 0326C823 */  subu  $t9, $t9, $a2
/* AD9A20 80062880 0019C880 */  sll   $t9, $t9, 2
/* AD9A24 80062884 01F91021 */  addu  $v0, $t7, $t9
/* AD9A28 80062888 24450028 */  addiu $a1, $v0, 0x28
/* AD9A2C 8006288C 0C017182 */  jal   func_8005C608
/* AD9A30 80062890 00E03025 */   move  $a2, $a3
/* AD9A34 80062894 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9A38 80062898 27BD0018 */  addiu $sp, $sp, 0x18
/* AD9A3C 8006289C 03E00008 */  jr    $ra
/* AD9A40 800628A0 00000000 */   nop   

