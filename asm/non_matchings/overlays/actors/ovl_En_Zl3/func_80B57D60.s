glabel func_80B57D60
/* 049B0 80B57D60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 049B4 80B57D64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 049B8 80B57D68 0C2D5C90 */  jal     func_80B57240              
/* 049BC 80B57D6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 049C0 80B57D70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 049C4 80B57D74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 049C8 80B57D78 03E00008 */  jr      $ra                        
/* 049CC 80B57D7C 00000000 */  nop


