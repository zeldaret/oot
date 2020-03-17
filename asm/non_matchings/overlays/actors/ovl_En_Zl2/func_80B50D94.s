glabel func_80B50D94
/* 02404 80B50D94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02408 80B50D98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0240C 80B50D9C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02410 80B50DA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02414 80B50DA4 0C2D3F33 */  jal     func_80B4FCCC              
/* 02418 80B50DA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0241C 80B50DAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02420 80B50DB0 0C2D3B4B */  jal     func_80B4ED2C              
/* 02424 80B50DB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02428 80B50DB8 0C2D3ABD */  jal     func_80B4EAF4              
/* 0242C 80B50DBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02430 80B50DC0 0C2D3B5D */  jal     func_80B4ED74              
/* 02434 80B50DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02438 80B50DC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0243C 80B50DCC 0C2D414F */  jal     func_80B5053C              
/* 02440 80B50DD0 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 02444 80B50DD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02448 80B50DD8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0244C 80B50DDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02450 80B50DE0 03E00008 */  jr      $ra                        
/* 02454 80B50DE4 00000000 */  nop


