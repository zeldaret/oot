glabel func_80AFFEB4
/* 01C04 80AFFEB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C08 80AFFEB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C0C 80AFFEBC 0C2BF8CE */  jal     func_80AFE338              
/* 01C10 80AFFEC0 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 01C14 80AFFEC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C18 80AFFEC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C1C 80AFFECC 03E00008 */  jr      $ra                        
/* 01C20 80AFFED0 00000000 */  nop


