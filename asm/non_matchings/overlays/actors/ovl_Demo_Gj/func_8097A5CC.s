glabel func_8097A5CC
/* 01C9C 8097A5CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CA0 8097A5D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CA4 8097A5D4 3C060600 */  lui     $a2, %hi(D_06002600)                ## $a2 = 06000000
/* 01CA8 8097A5D8 0C25E40C */  jal     func_80979030              
/* 01CAC 8097A5DC 24C62600 */  addiu   $a2, $a2, %lo(D_06002600)           ## $a2 = 06002600
/* 01CB0 8097A5E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CB4 8097A5E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CB8 8097A5E8 03E00008 */  jr      $ra                        
/* 01CBC 8097A5EC 00000000 */  nop
