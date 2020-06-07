glabel func_80AC30FC
/* 0045C 80AC30FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00460 80AC3100 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00464 80AC3104 0C042DC8 */  jal     func_8010B720              
/* 00468 80AC3108 2405504E */  addiu   $a1, $zero, 0x504E         ## $a1 = 0000504E
/* 0046C 80AC310C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00470 80AC3110 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00474 80AC3114 03E00008 */  jr      $ra                        
/* 00478 80AC3118 00000000 */  nop
