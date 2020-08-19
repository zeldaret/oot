glabel func_800E3874
/* B5AA14 800E3874 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B5AA18 800E3878 AFB00030 */  sw    $s0, 0x30($sp)
/* B5AA1C 800E387C 00808025 */  move  $s0, $a0
/* B5AA20 800E3880 AFBF0034 */  sw    $ra, 0x34($sp)
/* B5AA24 800E3884 AFA50044 */  sw    $a1, 0x44($sp)
/* B5AA28 800E3888 0C039A10 */  jal   func_800E6840
/* B5AA2C 800E388C 8C84000C */   lw    $a0, 0xc($a0)
/* B5AA30 800E3890 26040030 */  addiu $a0, $s0, 0x30
/* B5AA34 800E3894 AFA4003C */  sw    $a0, 0x3c($sp)
/* B5AA38 800E3898 26050048 */  addiu $a1, $s0, 0x48
/* B5AA3C 800E389C 0C001874 */  jal   osCreateMesgQueue
/* B5AA40 800E38A0 24060001 */   li    $a2, 1
/* B5AA44 800E38A4 8E0E000C */  lw    $t6, 0xc($s0)
/* B5AA48 800E38A8 8FAF0044 */  lw    $t7, 0x44($sp)
/* B5AA4C 800E38AC 8FB8003C */  lw    $t8, 0x3c($sp)
/* B5AA50 800E38B0 8E070008 */  lw    $a3, 8($s0)
/* B5AA54 800E38B4 AFAE0010 */  sw    $t6, 0x10($sp)
/* B5AA58 800E38B8 AFAF0014 */  sw    $t7, 0x14($sp)
/* B5AA5C 800E38BC AFB80018 */  sw    $t8, 0x18($sp)
/* B5AA60 800E38C0 92190000 */  lbu   $t9, ($s0)
/* B5AA64 800E38C4 3C088015 */  lui   $t0, %hi(D_80149444) # $t0, 0x8015
/* B5AA68 800E38C8 25089444 */  addiu $t0, %lo(D_80149444) # addiu $t0, $t0, -0x6bbc
/* B5AA6C 800E38CC AFA80020 */  sw    $t0, 0x20($sp)
/* B5AA70 800E38D0 2604004C */  addiu $a0, $s0, 0x4c
/* B5AA74 800E38D4 00002825 */  move  $a1, $zero
/* B5AA78 800E38D8 00003025 */  move  $a2, $zero
/* B5AA7C 800E38DC 0C038AF8 */  jal   func_800E2BE0
/* B5AA80 800E38E0 AFB9001C */   sw    $t9, 0x1c($sp)
/* B5AA84 800E38E4 8FBF0034 */  lw    $ra, 0x34($sp)
/* B5AA88 800E38E8 8FB00030 */  lw    $s0, 0x30($sp)
/* B5AA8C 800E38EC 27BD0040 */  addiu $sp, $sp, 0x40
/* B5AA90 800E38F0 03E00008 */  jr    $ra
/* B5AA94 800E38F4 00000000 */   nop

