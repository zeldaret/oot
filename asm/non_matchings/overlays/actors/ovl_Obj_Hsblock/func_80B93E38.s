glabel func_80B93E38
/* 002D8 80B93E38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002DC 80B93E3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E0 80B93E40 3C0580B9 */  lui     $a1, %hi(func_80B93E5C)    ## $a1 = 80B90000
/* 002E4 80B93E44 0C2E4ED8 */  jal     func_80B93B60              
/* 002E8 80B93E48 24A53E5C */  addiu   $a1, $a1, %lo(func_80B93E5C) ## $a1 = 80B93E5C
/* 002EC 80B93E4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F0 80B93E50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F4 80B93E54 03E00008 */  jr      $ra                        
/* 002F8 80B93E58 00000000 */  nop
