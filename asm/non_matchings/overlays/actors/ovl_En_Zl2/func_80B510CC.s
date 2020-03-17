glabel func_80B510CC
/* 0273C 80B510CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02740 80B510D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02744 80B510D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02748 80B510D8 0C2D3F33 */  jal     func_80B4FCCC              
/* 0274C 80B510DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02750 80B510E0 0C2D3F84 */  jal     func_80B4FE10              
/* 02754 80B510E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02758 80B510E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0275C 80B510EC 0C2D3B4B */  jal     func_80B4ED2C              
/* 02760 80B510F0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02764 80B510F4 0C2D3B5D */  jal     func_80B4ED74              
/* 02768 80B510F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0276C 80B510FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02770 80B51100 0C2D4281 */  jal     func_80B50A04              
/* 02774 80B51104 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02778 80B51108 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0277C 80B5110C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02780 80B51110 03E00008 */  jr      $ra                        
/* 02784 80B51114 00000000 */  nop


