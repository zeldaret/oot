glabel func_80B51A8C
/* 030FC 80B51A8C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03100 80B51A90 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03104 80B51A94 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03108 80B51A98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0310C 80B51A9C 0C2D3F33 */  jal     func_80B4FCCC              
/* 03110 80B51AA0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03114 80B51AA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03118 80B51AA8 0C2D3B4B */  jal     func_80B4ED2C              
/* 0311C 80B51AAC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03120 80B51AB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03124 80B51AB4 0C2D4506 */  jal     func_80B51418              
/* 03128 80B51AB8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0312C 80B51ABC 0C2D3B5D */  jal     func_80B4ED74              
/* 03130 80B51AC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03134 80B51AC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03138 80B51AC8 0C2D4652 */  jal     func_80B51948              
/* 0313C 80B51ACC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03140 80B51AD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03144 80B51AD4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03148 80B51AD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0314C 80B51ADC 03E00008 */  jr      $ra                        
/* 03150 80B51AE0 00000000 */  nop


