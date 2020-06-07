glabel func_80B50E90
/* 02500 80B50E90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02504 80B50E94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02508 80B50E98 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0250C 80B50E9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02510 80B50EA0 0C2D3F33 */  jal     func_80B4FCCC              
/* 02514 80B50EA4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02518 80B50EA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0251C 80B50EAC 0C2D3B4B */  jal     func_80B4ED2C              
/* 02520 80B50EB0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02524 80B50EB4 0C2D3A6C */  jal     func_80B4E9B0              
/* 02528 80B50EB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0252C 80B50EBC 0C2D3B5D */  jal     func_80B4ED74              
/* 02530 80B50EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02534 80B50EC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02538 80B50EC8 0C2D4281 */  jal     func_80B50A04              
/* 0253C 80B50ECC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02540 80B50ED0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02544 80B50ED4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02548 80B50ED8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0254C 80B50EDC 03E00008 */  jr      $ra                        
/* 02550 80B50EE0 00000000 */  nop
