glabel func_8097A96C
/* 0203C 8097A96C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02040 8097A970 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02044 8097A974 3C060600 */  lui     $a2, %hi(gGanonsCastleRubble6DL)                ## $a2 = 06000000
/* 02048 8097A978 0C25E40C */  jal     func_80979030              
/* 0204C 8097A97C 24C62E80 */  addiu   $a2, $a2, %lo(gGanonsCastleRubble6DL)           ## $a2 = 06002E80
/* 02050 8097A980 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02054 8097A984 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02058 8097A988 03E00008 */  jr      $ra                        
/* 0205C 8097A98C 00000000 */  nop
