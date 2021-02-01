glabel func_8097AB3C
/* 0220C 8097AB3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02210 8097AB40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02214 8097AB44 3C060600 */  lui     $a2, %hi(D_06003190)                ## $a2 = 06000000
/* 02218 8097AB48 0C25E40C */  jal     func_80979030              
/* 0221C 8097AB4C 24C63190 */  addiu   $a2, $a2, %lo(D_06003190)           ## $a2 = 06003190
/* 02220 8097AB50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02224 8097AB54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02228 8097AB58 03E00008 */  jr      $ra                        
/* 0222C 8097AB5C 00000000 */  nop
