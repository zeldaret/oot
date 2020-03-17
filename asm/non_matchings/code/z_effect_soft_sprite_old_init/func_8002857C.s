glabel func_8002857C
/* A9F71C 8002857C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F720 80028580 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F724 80028584 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F728 80028588 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F72C 8002858C 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F730 80028590 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F734 80028594 00A03025 */  move  $a2, $a1
/* A9F738 80028598 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F73C 8002859C AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F740 800285A0 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F744 800285A4 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F748 800285A8 24190064 */  li    $t9, 100
/* A9F74C 800285AC 24080005 */  li    $t0, 5
/* A9F750 800285B0 2409000A */  li    $t1, 10
/* A9F754 800285B4 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F758 800285B8 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F75C 800285BC AFA80020 */  sw    $t0, 0x20($sp)
/* A9F760 800285C0 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F764 800285C4 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F768 800285C8 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F76C 800285CC 24050004 */  li    $a1, 4
/* A9F770 800285D0 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F774 800285D4 0C00A07A */  jal   func_800281E8
/* A9F778 800285D8 AFAE0010 */   sw    $t6, 0x10($sp)
/* A9F77C 800285DC 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F780 800285E0 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F784 800285E4 03E00008 */  jr    $ra
/* A9F788 800285E8 00000000 */   nop   

