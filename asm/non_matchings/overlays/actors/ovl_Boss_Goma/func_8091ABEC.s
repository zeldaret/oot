glabel func_8091ABEC
/* 051DC 8091ABEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 051E0 8091ABF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 051E4 8091ABF4 0C031A73 */  jal     Graph_Alloc
              
/* 051E8 8091ABF8 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 051EC 8091ABFC 3C0EDF00 */  lui     $t6, 0xDF00                ## $t6 = DF000000
/* 051F0 8091AC00 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 051F4 8091AC04 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 051F8 8091AC08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 051FC 8091AC0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05200 8091AC10 03E00008 */  jr      $ra                        
/* 05204 8091AC14 00000000 */  nop
