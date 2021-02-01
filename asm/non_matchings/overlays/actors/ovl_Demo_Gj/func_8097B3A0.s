glabel func_8097B3A0
/* 02A70 8097B3A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A74 8097B3A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A78 8097B3A8 3C060600 */  lui     $a2, %hi(D_06001D20)                ## $a2 = 06000000
/* 02A7C 8097B3AC 0C25E40C */  jal     func_80979030              
/* 02A80 8097B3B0 24C61D20 */  addiu   $a2, $a2, %lo(D_06001D20)           ## $a2 = 06001D20
/* 02A84 8097B3B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02A88 8097B3B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02A8C 8097B3BC 03E00008 */  jr      $ra                        
/* 02A90 8097B3C0 00000000 */  nop
