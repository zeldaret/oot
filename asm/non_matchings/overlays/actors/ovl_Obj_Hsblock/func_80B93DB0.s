glabel func_80B93DB0
/* 00250 80B93DB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00254 80B93DB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00258 80B93DB8 3C0142D2 */  lui     $at, 0x42D2                ## $at = 42D20000
/* 0025C 80B93DBC 44813000 */  mtc1    $at, $f6                   ## $f6 = 105.00
/* 00260 80B93DC0 C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 00264 80B93DC4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00268 80B93DC8 3C0580B9 */  lui     $a1, %hi(func_80B93DF4)    ## $a1 = 80B90000
/* 0026C 80B93DCC 46062201 */  sub.s   $f8, $f4, $f6              
/* 00270 80B93DD0 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 00274 80B93DD4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00278 80B93DD8 24A53DF4 */  addiu   $a1, $a1, %lo(func_80B93DF4) ## $a1 = 80B93DF4
/* 0027C 80B93DDC 0C2E4ED8 */  jal     func_80B93B60              
/* 00280 80B93DE0 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 00284 80B93DE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00288 80B93DE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0028C 80B93DEC 03E00008 */  jr      $ra                        
/* 00290 80B93DF0 00000000 */  nop
