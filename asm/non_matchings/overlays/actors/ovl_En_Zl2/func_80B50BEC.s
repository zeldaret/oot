glabel func_80B50BEC
/* 0225C 80B50BEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02260 80B50BF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02264 80B50BF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02268 80B50BF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0226C 80B50BFC 0C2D3F33 */  jal     func_80B4FCCC              
/* 02270 80B50C00 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02274 80B50C04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02278 80B50C08 0C2D3B4B */  jal     func_80B4ED2C              
/* 0227C 80B50C0C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02280 80B50C10 0C2D3A6C */  jal     func_80B4E9B0              
/* 02284 80B50C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02288 80B50C18 0C2D3B5D */  jal     func_80B4ED74              
/* 0228C 80B50C1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02290 80B50C20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02294 80B50C24 0C2D4281 */  jal     func_80B50A04              
/* 02298 80B50C28 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0229C 80B50C2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022A0 80B50C30 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 022A4 80B50C34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 022A8 80B50C38 03E00008 */  jr      $ra                        
/* 022AC 80B50C3C 00000000 */  nop


