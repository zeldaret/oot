glabel func_80AFFE24
/* 01B74 80AFFE24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B78 80AFFE28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B7C 80AFFE2C 0C2BF8CE */  jal     func_80AFE338              
/* 01B80 80AFFE30 2405000E */  addiu   $a1, $zero, 0x000E         ## $a1 = 0000000E
/* 01B84 80AFFE34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B88 80AFFE38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B8C 80AFFE3C 03E00008 */  jr      $ra                        
/* 01B90 80AFFE40 00000000 */  nop


