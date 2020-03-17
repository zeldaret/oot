glabel func_8097AADC
/* 021AC 8097AADC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 021B0 8097AAE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 021B4 8097AAE4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 021B8 8097AAE8 0C25E3B9 */  jal     func_80978EE4              
/* 021BC 8097AAEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 021C0 8097AAF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 021C4 8097AAF4 0C25EA98 */  jal     func_8097AA60              
/* 021C8 8097AAF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 021CC 8097AAFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 021D0 8097AB00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021D4 8097AB04 03E00008 */  jr      $ra                        
/* 021D8 8097AB08 00000000 */  nop


