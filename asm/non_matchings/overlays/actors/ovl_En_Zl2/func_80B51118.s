glabel func_80B51118
/* 02788 80B51118 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0278C 80B5111C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02790 80B51120 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02794 80B51124 0C2D3F33 */  jal     func_80B4FCCC              
/* 02798 80B51128 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0279C 80B5112C 0C2D3F84 */  jal     func_80B4FE10              
/* 027A0 80B51130 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 027A4 80B51134 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027A8 80B51138 0C2D3B4B */  jal     func_80B4ED2C              
/* 027AC 80B5113C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 027B0 80B51140 0C2D3B5D */  jal     func_80B4ED74              
/* 027B4 80B51144 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027B8 80B51148 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027BC 80B5114C 0C2D4220 */  jal     func_80B50880              
/* 027C0 80B51150 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 027C4 80B51154 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 027C8 80B51158 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 027CC 80B5115C 03E00008 */  jr      $ra                        
/* 027D0 80B51160 00000000 */  nop
