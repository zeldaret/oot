glabel func_80B51CA8
/* 03318 80B51CA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0331C 80B51CAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03320 80B51CB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03324 80B51CB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03328 80B51CB8 0C2D3F33 */  jal     func_80B4FCCC              
/* 0332C 80B51CBC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03330 80B51CC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03334 80B51CC4 0C2D3B4B */  jal     func_80B4ED2C              
/* 03338 80B51CC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0333C 80B51CCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03340 80B51CD0 0C2D4553 */  jal     func_80B5154C              
/* 03344 80B51CD4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03348 80B51CD8 0C2D3B5D */  jal     func_80B4ED74              
/* 0334C 80B51CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03350 80B51CE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03354 80B51CE4 0C2D461F */  jal     func_80B5187C              
/* 03358 80B51CE8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0335C 80B51CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03360 80B51CF0 0C2D4652 */  jal     func_80B51948              
/* 03364 80B51CF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03368 80B51CF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0336C 80B51CFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03370 80B51D00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03374 80B51D04 03E00008 */  jr      $ra                        
/* 03378 80B51D08 00000000 */  nop


