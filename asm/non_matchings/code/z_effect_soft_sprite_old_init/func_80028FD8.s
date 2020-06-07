glabel func_80028FD8
/* AA0178 80028FD8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA017C 80028FDC 8FAE0040 */  lw    $t6, 0x40($sp)
/* AA0180 80028FE0 8FAF0044 */  lw    $t7, 0x44($sp)
/* AA0184 80028FE4 87A9004A */  lh    $t1, 0x4a($sp)
/* AA0188 80028FE8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AA018C 80028FEC 24180064 */  li    $t8, 100
/* AA0190 80028FF0 24190177 */  li    $t9, 375
/* AA0194 80028FF4 24080023 */  li    $t0, 35
/* AA0198 80028FF8 AFA80020 */  sw    $t0, 0x20($sp)
/* AA019C 80028FFC AFB9001C */  sw    $t9, 0x1c($sp)
/* AA01A0 80029000 AFB80018 */  sw    $t8, 0x18($sp)
/* AA01A4 80029004 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA01A8 80029008 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA01AC 8002900C 0C00A3BD */  jal   func_80028EF4
/* AA01B0 80029010 AFA90024 */   sw    $t1, 0x24($sp)
/* AA01B4 80029014 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA01B8 80029018 27BD0030 */  addiu $sp, $sp, 0x30
/* AA01BC 8002901C 03E00008 */  jr    $ra
/* AA01C0 80029020 00000000 */   nop   

