glabel func_80897B1C
/* 001AC 80897B1C 908F0160 */  lbu     $t7, 0x0160($a0)           ## 00000160
/* 001B0 80897B20 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 001B4 80897B24 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 001B8 80897B28 3C0E8089 */  lui     $t6, %hi(func_80897B48)    ## $t6 = 80890000
/* 001BC 80897B2C 25CE7B48 */  addiu   $t6, $t6, %lo(func_80897B48) ## $t6 = 80897B48
/* 001C0 80897B30 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 001C4 80897B34 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 001C8 80897B38 A0980160 */  sb      $t8, 0x0160($a0)           ## 00000160
/* 001CC 80897B3C A48001B4 */  sh      $zero, 0x01B4($a0)         ## 000001B4
/* 001D0 80897B40 03E00008 */  jr      $ra                        
/* 001D4 80897B44 E48401B0 */  swc1    $f4, 0x01B0($a0)           ## 000001B0
