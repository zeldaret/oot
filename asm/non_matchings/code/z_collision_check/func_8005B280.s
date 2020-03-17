glabel func_8005B280
/* AD2420 8005B280 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2424 8005B284 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2428 8005B288 240E00FF */  li    $t6, 255
/* AD242C 8005B28C AFAE0010 */  sw    $t6, 0x10($sp)
/* AD2430 8005B290 AFA00014 */  sw    $zero, 0x14($sp)
/* AD2434 8005B294 0C016CAB */  jal   func_8005B2AC
/* AD2438 8005B298 AFA00018 */   sw    $zero, 0x18($sp)
/* AD243C 8005B29C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2440 8005B2A0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2444 8005B2A4 03E00008 */  jr    $ra
/* AD2448 8005B2A8 00000000 */   nop   

