glabel func_809EEDB8
/* 01548 809EEDB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0154C 809EEDBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01550 809EEDC0 0C031A73 */  jal     Graph_Alloc
              
/* 01554 809EEDC4 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01558 809EEDC8 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 0155C 809EEDCC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01560 809EEDD0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01564 809EEDD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01568 809EEDD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0156C 809EEDDC 03E00008 */  jr      $ra                        
/* 01570 809EEDE0 00000000 */  nop


