glabel func_80ABB0A0
/* 01460 80ABB0A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01464 80ABB0A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01468 80ABB0A8 0C031A73 */  jal     Graph_Alloc
              
/* 0146C 80ABB0AC 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01470 80ABB0B0 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 01474 80ABB0B4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01478 80ABB0B8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0147C 80ABB0BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01480 80ABB0C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01484 80ABB0C4 03E00008 */  jr      $ra                        
/* 01488 80ABB0C8 00000000 */  nop


