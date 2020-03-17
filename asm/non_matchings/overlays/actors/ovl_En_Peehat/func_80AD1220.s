glabel func_80AD1220
/* 01D80 80AD1220 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D84 80AD1224 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 01D88 80AD1228 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.50
/* 01D8C 80AD122C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D90 80AD1230 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 01D94 80AD1234 3C0580AD */  lui     $a1, %hi(func_80AD1258)    ## $a1 = 80AD0000
/* 01D98 80AD1238 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 01D9C 80AD123C 24A51258 */  addiu   $a1, $a1, %lo(func_80AD1258) ## $a1 = 80AD1258
/* 01DA0 80AD1240 0C2B3D28 */  jal     func_80ACF4A0              
/* 01DA4 80AD1244 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01DA8 80AD1248 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DAC 80AD124C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DB0 80AD1250 03E00008 */  jr      $ra                        
/* 01DB4 80AD1254 00000000 */  nop


