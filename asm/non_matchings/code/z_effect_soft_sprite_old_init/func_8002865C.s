glabel func_8002865C
/* A9F7FC 8002865C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F800 80028660 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F804 80028664 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F808 80028668 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F80C 8002866C 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F810 80028670 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F814 80028674 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F818 80028678 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F81C 8002867C 00A03025 */  move  $a2, $a1
/* A9F820 80028680 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F824 80028684 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F828 80028688 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F82C 8002868C 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F830 80028690 2409000A */  li    $t1, 10
/* A9F834 80028694 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F838 80028698 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F83C 8002869C AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F840 800286A0 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F844 800286A4 24050004 */  li    $a1, 4
/* A9F848 800286A8 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F84C 800286AC AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F850 800286B0 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F854 800286B4 0C00A07A */  jal   func_800281E8
/* A9F858 800286B8 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F85C 800286BC 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F860 800286C0 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F864 800286C4 03E00008 */  jr    $ra
/* A9F868 800286C8 00000000 */   nop   

