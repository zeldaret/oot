glabel func_80AEC9C4
/* 01DB4 80AEC9C4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DB8 80AEC9C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01DBC 80AEC9CC C484026C */  lwc1    $f4, 0x026C($a0)           ## 0000026C
/* 01DC0 80AEC9D0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01DC4 80AEC9D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 01DC8 80AEC9D8 46062200 */  add.s   $f8, $f4, $f6              
/* 01DCC 80AEC9DC 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 01DD0 80AEC9E0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01DD4 80AEC9E4 E488026C */  swc1    $f8, 0x026C($a0)           ## 0000026C
/* 01DD8 80AEC9E8 C48A026C */  lwc1    $f10, 0x026C($a0)          ## 0000026C
/* 01DDC 80AEC9EC 460A803E */  c.le.s  $f16, $f10                 
/* 01DE0 80AEC9F0 00000000 */  nop
/* 01DE4 80AEC9F4 45000006 */  bc1f    .L80AECA10                 
/* 01DE8 80AEC9F8 00000000 */  nop
/* 01DEC 80AEC9FC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01DF0 80AECA00 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 01DF4 80AECA04 AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 01DF8 80AECA08 E492026C */  swc1    $f18, 0x026C($a0)          ## 0000026C
/* 01DFC 80AECA0C E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
.L80AECA10:
/* 01E00 80AECA10 03E00008 */  jr      $ra                        
/* 01E04 80AECA14 00000000 */  nop
