glabel func_80B21EE8
/* 01108 80B21EE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0110C 80B21EEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01110 80B21EF0 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 01114 80B21EF4 3C0580B2 */  lui     $a1, %hi(func_80B21F18)    ## $a1 = 80B20000
/* 01118 80B21EF8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 0111C 80B21EFC A480015A */  sh      $zero, 0x015A($a0)         ## 0000015A
/* 01120 80B21F00 0C2C8378 */  jal     func_80B20DE0              
/* 01124 80B21F04 24A51F18 */  addiu   $a1, $a1, %lo(func_80B21F18) ## $a1 = 80B21F18
/* 01128 80B21F08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0112C 80B21F0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01130 80B21F10 03E00008 */  jr      $ra                        
/* 01134 80B21F14 00000000 */  nop


