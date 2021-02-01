glabel func_8097A39C
/* 01A6C 8097A39C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A70 8097A3A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A74 8097A3A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A78 8097A3A8 0C25E3B9 */  jal     func_80978EE4              
/* 01A7C 8097A3AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01A80 8097A3B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A84 8097A3B4 0C25E8C8 */  jal     func_8097A320              
/* 01A88 8097A3B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01A8C 8097A3BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A90 8097A3C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A94 8097A3C4 03E00008 */  jr      $ra                        
/* 01A98 8097A3C8 00000000 */  nop
