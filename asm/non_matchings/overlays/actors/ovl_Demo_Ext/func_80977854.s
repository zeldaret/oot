glabel func_80977854
/* 004C4 80977854 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004C8 80977858 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004CC 8097785C 0C25DD84 */  jal     func_80977610              
/* 004D0 80977860 00000000 */  nop
/* 004D4 80977864 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D8 80977868 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004DC 8097786C 03E00008 */  jr      $ra                        
/* 004E0 80977870 00000000 */  nop
