glabel func_800292DC
/* AA047C 800292DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0480 800292E0 8FAE0040 */  lw    $t6, 0x40($sp)
/* AA0484 800292E4 8FAF0044 */  lw    $t7, 0x44($sp)
/* AA0488 800292E8 8FB80048 */  lw    $t8, 0x48($sp)
/* AA048C 800292EC AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0490 800292F0 24190064 */  li    $t9, 100
/* AA0494 800292F4 24080005 */  li    $t0, 5
/* AA0498 800292F8 AFA80020 */  sw    $t0, 0x20($sp)
/* AA049C 800292FC AFB9001C */  sw    $t9, 0x1c($sp)
/* AA04A0 80029300 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA04A4 80029304 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA04A8 80029308 0C00A418 */  jal   func_80029060
/* AA04AC 8002930C AFB80018 */   sw    $t8, 0x18($sp)
/* AA04B0 80029310 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA04B4 80029314 27BD0030 */  addiu $sp, $sp, 0x30
/* AA04B8 80029318 03E00008 */  jr    $ra
/* AA04BC 8002931C 00000000 */   nop   

