glabel func_80AFFF38
/* 01C88 80AFFF38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C8C 80AFFF3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C90 80AFFF40 0C2BF8CE */  jal     func_80AFE338              
/* 01C94 80AFFF44 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 01C98 80AFFF48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C9C 80AFFF4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CA0 80AFFF50 03E00008 */  jr      $ra                        
/* 01CA4 80AFFF54 00000000 */  nop


