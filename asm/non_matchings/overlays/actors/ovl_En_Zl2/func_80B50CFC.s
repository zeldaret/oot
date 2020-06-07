glabel func_80B50CFC
/* 0236C 80B50CFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02370 80B50D00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02374 80B50D04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02378 80B50D08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0237C 80B50D0C 0C2D3F33 */  jal     func_80B4FCCC              
/* 02380 80B50D10 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02384 80B50D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02388 80B50D18 0C2D3B4B */  jal     func_80B4ED2C              
/* 0238C 80B50D1C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02390 80B50D20 0C2D3A90 */  jal     func_80B4EA40              
/* 02394 80B50D24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02398 80B50D28 0C2D3B5D */  jal     func_80B4ED74              
/* 0239C 80B50D2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023A0 80B50D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023A4 80B50D34 0C2D4122 */  jal     func_80B50488              
/* 023A8 80B50D38 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 023AC 80B50D3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 023B0 80B50D40 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 023B4 80B50D44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 023B8 80B50D48 03E00008 */  jr      $ra                        
/* 023BC 80B50D4C 00000000 */  nop
