glabel func_800287AC
/* A9F94C 800287AC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F950 800287B0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F954 800287B4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F958 800287B8 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F95C 800287BC 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F960 800287C0 87A90052 */  lh    $t1, 0x52($sp)
/* A9F964 800287C4 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F968 800287C8 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F96C 800287CC 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F970 800287D0 00A03025 */  move  $a2, $a1
/* A9F974 800287D4 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F978 800287D8 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F97C 800287DC 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F980 800287E0 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F984 800287E4 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F988 800287E8 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F98C 800287EC AFB80018 */  sw    $t8, 0x18($sp)
/* A9F990 800287F0 24050005 */  li    $a1, 5
/* A9F994 800287F4 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F998 800287F8 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F99C 800287FC AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F9A0 80028800 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F9A4 80028804 0C00A07A */  jal   func_800281E8
/* A9F9A8 80028808 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F9AC 8002880C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F9B0 80028810 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F9B4 80028814 03E00008 */  jr    $ra
/* A9F9B8 80028818 00000000 */   nop   

