glabel func_800285EC
/* A9F78C 800285EC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F790 800285F0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F794 800285F4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F798 800285F8 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F79C 800285FC 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F7A0 80028600 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F7A4 80028604 00A03025 */  move  $a2, $a1
/* A9F7A8 80028608 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F7AC 8002860C AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F7B0 80028610 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F7B4 80028614 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F7B8 80028618 24190064 */  li    $t9, 100
/* A9F7BC 8002861C 24080005 */  li    $t0, 5
/* A9F7C0 80028620 2409000A */  li    $t1, 10
/* A9F7C4 80028624 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F7C8 80028628 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F7CC 8002862C AFA80020 */  sw    $t0, 0x20($sp)
/* A9F7D0 80028630 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F7D4 80028634 AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F7D8 80028638 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F7DC 8002863C 24050005 */  li    $a1, 5
/* A9F7E0 80028640 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F7E4 80028644 0C00A07A */  jal   func_800281E8
/* A9F7E8 80028648 AFAE0010 */   sw    $t6, 0x10($sp)
/* A9F7EC 8002864C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F7F0 80028650 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F7F4 80028654 03E00008 */  jr    $ra
/* A9F7F8 80028658 00000000 */   nop   

