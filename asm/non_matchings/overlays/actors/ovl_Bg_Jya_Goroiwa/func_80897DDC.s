glabel func_80897DDC
/* 0046C 80897DDC 3C0E8089 */  lui     $t6, %hi(func_80897DF0)    ## $t6 = 80890000
/* 00470 80897DE0 25CE7DF0 */  addiu   $t6, $t6, %lo(func_80897DF0) ## $t6 = 80897DF0
/* 00474 80897DE4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00478 80897DE8 03E00008 */  jr      $ra                        
/* 0047C 80897DEC A48001B6 */  sh      $zero, 0x01B6($a0)         ## 000001B6
