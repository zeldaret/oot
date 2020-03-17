glabel func_80AC801C
/* 0537C 80AC801C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05380 80AC8020 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05384 80AC8024 0C031A73 */  jal     Graph_Alloc
              
/* 05388 80AC8028 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 0538C 80AC802C 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 05390 80AC8030 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 05394 80AC8034 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 05398 80AC8038 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0539C 80AC803C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 053A0 80AC8040 03E00008 */  jr      $ra                        
/* 053A4 80AC8044 00000000 */  nop


