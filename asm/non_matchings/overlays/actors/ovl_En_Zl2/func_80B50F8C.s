glabel func_80B50F8C
/* 025FC 80B50F8C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02600 80B50F90 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02604 80B50F94 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02608 80B50F98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0260C 80B50F9C 0C2D3F33 */  jal     func_80B4FCCC              
/* 02610 80B50FA0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02614 80B50FA4 0C2D3F84 */  jal     func_80B4FE10              
/* 02618 80B50FA8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0261C 80B50FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02620 80B50FB0 0C2D3B4B */  jal     func_80B4ED2C              
/* 02624 80B50FB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02628 80B50FB8 0C2D3A6C */  jal     func_80B4E9B0              
/* 0262C 80B50FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02630 80B50FC0 0C2D3B5D */  jal     func_80B4ED74              
/* 02634 80B50FC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02638 80B50FC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0263C 80B50FCC 0C2D4281 */  jal     func_80B50A04              
/* 02640 80B50FD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02644 80B50FD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02648 80B50FD8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0264C 80B50FDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02650 80B50FE0 03E00008 */  jr      $ra                        
/* 02654 80B50FE4 00000000 */  nop
