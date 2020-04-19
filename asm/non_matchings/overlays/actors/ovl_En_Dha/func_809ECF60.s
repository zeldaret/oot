glabel func_809ECF60
/* 006E0 809ECF60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006E4 809ECF64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006E8 809ECF68 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 006EC 809ECF6C 3C05809F */  lui     $a1, %hi(func_809ECF8C)    ## $a1 = 809F0000
/* 006F0 809ECF70 A48E01C8 */  sh      $t6, 0x01C8($a0)           ## 000001C8
/* 006F4 809ECF74 0C27B220 */  jal     func_809EC880              
/* 006F8 809ECF78 24A5CF8C */  addiu   $a1, $a1, %lo(func_809ECF8C) ## $a1 = 809ECF8C
/* 006FC 809ECF7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00700 809ECF80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00704 809ECF84 03E00008 */  jr      $ra                        
/* 00708 809ECF88 00000000 */  nop
