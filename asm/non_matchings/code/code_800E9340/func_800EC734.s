glabel func_800EC734
/* B638D4 800EC734 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B638D8 800EC738 00047080 */  sll   $t6, $a0, 2
/* B638DC 800EC73C 01C47023 */  subu  $t6, $t6, $a0
/* B638E0 800EC740 000E7080 */  sll   $t6, $t6, 2
/* B638E4 800EC744 01C47023 */  subu  $t6, $t6, $a0
/* B638E8 800EC748 000E7140 */  sll   $t6, $t6, 5
/* B638EC 800EC74C 3C188017 */  lui   $t8, %hi(gAudioContext) # $t8, 0x8017
/* B638F0 800EC750 AFB40024 */  sw    $s4, 0x24($sp)
/* B638F4 800EC754 AFB30020 */  sw    $s3, 0x20($sp)
/* B638F8 800EC758 AFB2001C */  sw    $s2, 0x1c($sp)
/* B638FC 800EC75C 2718F180 */  addiu $t8, %lo(gAudioContext) # addiu $t8, $t8, -0xe80
/* B63900 800EC760 25CF3530 */  addiu $t7, $t6, 0x3530
/* B63904 800EC764 AFB50028 */  sw    $s5, 0x28($sp)
/* B63908 800EC768 AFB10018 */  sw    $s1, 0x18($sp)
/* B6390C 800EC76C AFB00014 */  sw    $s0, 0x14($sp)
/* B63910 800EC770 01F89021 */  addu  $s2, $t7, $t8
/* B63914 800EC774 3C138017 */  lui   $s3, %hi(D_80171B40) # $s3, 0x8017
/* B63918 800EC778 3C148017 */  lui   $s4, %hi(D_80174C30) # $s4, 0x8017
/* B6391C 800EC77C AFBF002C */  sw    $ra, 0x2c($sp)
/* B63920 800EC780 26944C30 */  addiu $s4, %lo(D_80174C30) # addiu $s4, $s4, 0x4c30
/* B63924 800EC784 26731B40 */  addiu $s3, %lo(D_80171B40) # addiu $s3, $s3, 0x1b40
/* B63928 800EC788 02408025 */  move  $s0, $s2
/* B6392C 800EC78C 00008825 */  move  $s1, $zero
/* B63930 800EC790 24150040 */  li    $s5, 64
.L800EC794:
/* B63934 800EC794 02602025 */  move  $a0, $s3
/* B63938 800EC798 0C0378E0 */  jal   func_800DE380
/* B6393C 800EC79C 240500D4 */   li    $a1, 212
/* B63940 800EC7A0 14400003 */  bnez  $v0, .L800EC7B0
/* B63944 800EC7A4 AE020038 */   sw    $v0, 0x38($s0)
/* B63948 800EC7A8 1000000A */  b     .L800EC7D4
/* B6394C 800EC7AC AE140038 */   sw    $s4, 0x38($s0)
.L800EC7B0:
/* B63950 800EC7B0 8E030038 */  lw    $v1, 0x38($s0)
/* B63954 800EC7B4 90790000 */  lbu   $t9, ($v1)
/* B63958 800EC7B8 AC72004C */  sw    $s2, 0x4c($v1)
/* B6395C 800EC7BC AC600054 */  sw    $zero, 0x54($v1)
/* B63960 800EC7C0 3328FF7F */  andi  $t0, $t9, 0xff7f
/* B63964 800EC7C4 A0680000 */  sb    $t0, ($v1)
/* B63968 800EC7C8 AC600058 */  sw    $zero, 0x58($v1)
/* B6396C 800EC7CC AC60005C */  sw    $zero, 0x5c($v1)
/* B63970 800EC7D0 AC600050 */  sw    $zero, 0x50($v1)
.L800EC7D4:
/* B63974 800EC7D4 0C03A561 */  jal   func_800E9584
/* B63978 800EC7D8 8E040038 */   lw    $a0, 0x38($s0)
/* B6397C 800EC7DC 26310004 */  addiu $s1, $s1, 4
/* B63980 800EC7E0 1635FFEC */  bne   $s1, $s5, .L800EC794
/* B63984 800EC7E4 26100004 */   addiu $s0, $s0, 4
/* B63988 800EC7E8 8FBF002C */  lw    $ra, 0x2c($sp)
/* B6398C 800EC7EC 8FB00014 */  lw    $s0, 0x14($sp)
/* B63990 800EC7F0 8FB10018 */  lw    $s1, 0x18($sp)
/* B63994 800EC7F4 8FB2001C */  lw    $s2, 0x1c($sp)
/* B63998 800EC7F8 8FB30020 */  lw    $s3, 0x20($sp)
/* B6399C 800EC7FC 8FB40024 */  lw    $s4, 0x24($sp)
/* B639A0 800EC800 8FB50028 */  lw    $s5, 0x28($sp)
/* B639A4 800EC804 03E00008 */  jr    $ra
/* B639A8 800EC808 27BD0030 */   addiu $sp, $sp, 0x30

