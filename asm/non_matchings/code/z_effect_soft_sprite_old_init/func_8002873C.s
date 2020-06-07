glabel func_8002873C
/* A9F8DC 8002873C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F8E0 80028740 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F8E4 80028744 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F8E8 80028748 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F8EC 8002874C 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F8F0 80028750 87A90052 */  lh    $t1, 0x52($sp)
/* A9F8F4 80028754 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F8F8 80028758 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F8FC 8002875C 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F900 80028760 00A03025 */  move  $a2, $a1
/* A9F904 80028764 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F908 80028768 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F90C 8002876C 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F910 80028770 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F914 80028774 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F918 80028778 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F91C 8002877C AFB80018 */  sw    $t8, 0x18($sp)
/* A9F920 80028780 24050004 */  li    $a1, 4
/* A9F924 80028784 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F928 80028788 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F92C 8002878C AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F930 80028790 AFA80020 */  sw    $t0, 0x20($sp)
/* A9F934 80028794 0C00A07A */  jal   func_800281E8
/* A9F938 80028798 AFA90024 */   sw    $t1, 0x24($sp)
/* A9F93C 8002879C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F940 800287A0 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F944 800287A4 03E00008 */  jr    $ra
/* A9F948 800287A8 00000000 */   nop   

