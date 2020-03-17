glabel func_80B50CA8
/* 02318 80B50CA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0231C 80B50CAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02320 80B50CB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02324 80B50CB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02328 80B50CB8 0C2D3F33 */  jal     func_80B4FCCC              
/* 0232C 80B50CBC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02330 80B50CC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02334 80B50CC4 0C2D3B4B */  jal     func_80B4ED2C              
/* 02338 80B50CC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0233C 80B50CCC 0C2D3A6C */  jal     func_80B4E9B0              
/* 02340 80B50CD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02344 80B50CD4 0C2D3B5D */  jal     func_80B4ED74              
/* 02348 80B50CD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0234C 80B50CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02350 80B50CE0 0C2D4281 */  jal     func_80B50A04              
/* 02354 80B50CE4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02358 80B50CE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0235C 80B50CEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02360 80B50CF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02364 80B50CF4 03E00008 */  jr      $ra                        
/* 02368 80B50CF8 00000000 */  nop


