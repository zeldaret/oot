glabel func_80B51AE4
/* 03154 80B51AE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03158 80B51AE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0315C 80B51AEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03160 80B51AF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03164 80B51AF4 0C2D3F33 */  jal     func_80B4FCCC              
/* 03168 80B51AF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0316C 80B51AFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03170 80B51B00 0C2D3B4B */  jal     func_80B4ED2C              
/* 03174 80B51B04 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03178 80B51B08 0C2D3A6C */  jal     func_80B4E9B0              
/* 0317C 80B51B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03180 80B51B10 0C2D3B5D */  jal     func_80B4ED74              
/* 03184 80B51B14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03188 80B51B18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0318C 80B51B1C 0C2D4591 */  jal     func_80B51644              
/* 03190 80B51B20 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03194 80B51B24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03198 80B51B28 0C2D4652 */  jal     func_80B51948              
/* 0319C 80B51B2C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 031A0 80B51B30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 031A4 80B51B34 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 031A8 80B51B38 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 031AC 80B51B3C 03E00008 */  jr      $ra                        
/* 031B0 80B51B40 00000000 */  nop
