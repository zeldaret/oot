glabel func_8097B8C4
/* 02F94 8097B8C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F98 8097B8C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F9C 8097B8CC 3C060600 */  lui     $a2, %hi(D_06002160)                ## $a2 = 06000000
/* 02FA0 8097B8D0 0C25E40C */  jal     func_80979030              
/* 02FA4 8097B8D4 24C62160 */  addiu   $a2, $a2, %lo(D_06002160)           ## $a2 = 06002160
/* 02FA8 8097B8D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02FAC 8097B8DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02FB0 8097B8E0 03E00008 */  jr      $ra                        
/* 02FB4 8097B8E4 00000000 */  nop
