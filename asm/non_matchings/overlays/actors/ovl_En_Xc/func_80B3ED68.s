glabel func_80B3ED68
/* 02B88 80B3ED68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B8C 80B3ED6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B90 80B3ED70 0C2CFB03 */  jal     func_80B3EC0C              
/* 02B94 80B3ED74 00000000 */  nop
/* 02B98 80B3ED78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B9C 80B3ED7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02BA0 80B3ED80 03E00008 */  jr      $ra                        
/* 02BA4 80B3ED84 00000000 */  nop
