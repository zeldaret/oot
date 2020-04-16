glabel func_808DACE8
/* 04478 808DACE8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0447C 808DACEC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04480 808DACF0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 04484 808DACF4 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 04488 808DACF8 3C0F808E */  lui     $t7, %hi(func_808DAD20)    ## $t7 = 808E0000
/* 0448C 808DACFC 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 04490 808DAD00 25EFAD20 */  addiu   $t7, $t7, %lo(func_808DAD20) ## $t7 = 808DAD20
/* 04494 808DAD04 A48001C2 */  sh      $zero, 0x01C2($a0)         ## 000001C2
/* 04498 808DAD08 A48E01B6 */  sh      $t6, 0x01B6($a0)           ## 000001B6
/* 0449C 808DAD0C AC8F0194 */  sw      $t7, 0x0194($a0)           ## 00000194
/* 044A0 808DAD10 E480005C */  swc1    $f0, 0x005C($a0)           ## 0000005C
/* 044A4 808DAD14 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 044A8 808DAD18 03E00008 */  jr      $ra                        
/* 044AC 808DAD1C E48401D0 */  swc1    $f4, 0x01D0($a0)           ## 000001D0
