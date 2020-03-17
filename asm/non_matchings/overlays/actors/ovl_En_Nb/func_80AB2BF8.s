glabel func_80AB2BF8
/* 01E68 80AB2BF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E6C 80AB2BFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E70 80AB2C00 0C2ACABF */  jal     func_80AB2AFC              
/* 01E74 80AB2C04 00000000 */  nop
/* 01E78 80AB2C08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E7C 80AB2C0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E80 80AB2C10 03E00008 */  jr      $ra                        
/* 01E84 80AB2C14 00000000 */  nop


