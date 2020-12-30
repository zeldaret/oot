glabel func_8086EDFC
/* 0062C 8086EDFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00630 8086EE00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00634 8086EE04 3C0E0500 */  lui     $t6, %hi(D_05003FC0)                ## $t6 = 05000000
/* 00638 8086EE08 25CE3FC0 */  addiu   $t6, $t6, %lo(D_05003FC0)           ## $t6 = 05003FC0
/* 0063C 8086EE0C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00640 8086EE10 AC8E029C */  sw      $t6, 0x029C($a0)           ## 0000029C
/* 00644 8086EE14 A48F02A0 */  sh      $t7, 0x02A0($a0)           ## 000002A0
/* 00648 8086EE18 0C21BAD7 */  jal     func_8086EB5C              
/* 0064C 8086EE1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00650 8086EE20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00654 8086EE24 3C188087 */  lui     $t8, %hi(func_8086EE40)    ## $t8 = 80870000
/* 00658 8086EE28 2718EE40 */  addiu   $t8, $t8, %lo(func_8086EE40) ## $t8 = 8086EE40
/* 0065C 8086EE2C AC980298 */  sw      $t8, 0x0298($a0)           ## 00000298
/* 00660 8086EE30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00664 8086EE34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00668 8086EE38 03E00008 */  jr      $ra                        
/* 0066C 8086EE3C 00000000 */  nop
