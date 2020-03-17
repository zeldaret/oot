glabel func_80028858
/* A9F9F8 80028858 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9F9FC 8002885C 8FAE0038 */  lw    $t6, 0x38($sp)
/* A9FA00 80028860 8FAF003C */  lw    $t7, 0x3c($sp)
/* A9FA04 80028864 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9FA08 80028868 24180064 */  li    $t8, 100
/* A9FA0C 8002886C 24190005 */  li    $t9, 5
/* A9FA10 80028870 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9FA14 80028874 AFB80018 */  sw    $t8, 0x18($sp)
/* A9FA18 80028878 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9FA1C 8002887C 0C00A0C1 */  jal   func_80028304
/* A9FA20 80028880 AFAF0014 */   sw    $t7, 0x14($sp)
/* A9FA24 80028884 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9FA28 80028888 27BD0028 */  addiu $sp, $sp, 0x28
/* A9FA2C 8002888C 03E00008 */  jr    $ra
/* A9FA30 80028890 00000000 */   nop   

