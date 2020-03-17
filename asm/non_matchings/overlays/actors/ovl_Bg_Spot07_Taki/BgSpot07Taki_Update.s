glabel BgSpot07Taki_Update
/* 000E4 808AFD14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E8 808AFD18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000EC 808AFD1C 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 000F0 808AFD20 0320F809 */  jalr    $ra, $t9                   
/* 000F4 808AFD24 00000000 */  nop
/* 000F8 808AFD28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000FC 808AFD2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00100 808AFD30 03E00008 */  jr      $ra                        
/* 00104 808AFD34 00000000 */  nop


