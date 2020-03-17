glabel func_80B166CC
/* 02C2C 80B166CC 848202B6 */  lh      $v0, 0x02B6($a0)           ## 000002B6
/* 02C30 80B166D0 3C0E80B1 */  lui     $t6, %hi(func_80B16700)    ## $t6 = 80B10000
/* 02C34 80B166D4 25CE6700 */  addiu   $t6, $t6, %lo(func_80B16700) ## $t6 = 80B16700
/* 02C38 80B166D8 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 02C3C 80B166DC 00021400 */  sll     $v0, $v0, 16               
/* 02C40 80B166E0 00021403 */  sra     $v0, $v0, 16               
/* 02C44 80B166E4 50400004 */  beql    $v0, $zero, .L80B166F8     
/* 02C48 80B166E8 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 02C4C 80B166EC 03E00008 */  jr      $ra                        
/* 02C50 80B166F0 A48202B6 */  sh      $v0, 0x02B6($a0)           ## 000002B6
.L80B166F4:
/* 02C54 80B166F4 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
.L80B166F8:
/* 02C58 80B166F8 03E00008 */  jr      $ra                        
/* 02C5C 80B166FC 00000000 */  nop


