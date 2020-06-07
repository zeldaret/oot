glabel func_80B3F620
/* 03440 80B3F620 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03444 80B3F624 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03448 80B3F628 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 0344C 80B3F62C 0C2CF1EF */  jal     func_80B3C7BC              
/* 03450 80B3F630 2406002E */  addiu   $a2, $zero, 0x002E         ## $a2 = 0000002E
/* 03454 80B3F634 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03458 80B3F638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0345C 80B3F63C 03E00008 */  jr      $ra                        
/* 03460 80B3F640 00000000 */  nop
