glabel func_80B50EE4
/* 02554 80B50EE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02558 80B50EE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0255C 80B50EEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02560 80B50EF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02564 80B50EF4 0C2D3F33 */  jal     func_80B4FCCC              
/* 02568 80B50EF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0256C 80B50EFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02570 80B50F00 0C2D3B4B */  jal     func_80B4ED2C              
/* 02574 80B50F04 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02578 80B50F08 0C2D3A6C */  jal     func_80B4E9B0              
/* 0257C 80B50F0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02580 80B50F10 0C2D3B5D */  jal     func_80B4ED74              
/* 02584 80B50F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02588 80B50F18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0258C 80B50F1C 0C2D4281 */  jal     func_80B50A04              
/* 02590 80B50F20 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02594 80B50F24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02598 80B50F28 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0259C 80B50F2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 025A0 80B50F30 03E00008 */  jr      $ra                        
/* 025A4 80B50F34 00000000 */  nop


