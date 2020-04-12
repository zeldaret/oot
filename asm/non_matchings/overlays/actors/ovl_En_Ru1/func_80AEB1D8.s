glabel func_80AEB1D8
/* 005C8 80AEB1D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005CC 80AEB1DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005D0 80AEB1E0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005D4 80AEB1E4 240E0024 */  addiu   $t6, $zero, 0x0024         ## $t6 = 00000024
/* 005D8 80AEB1E8 AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 005DC 80AEB1EC AC800268 */  sw      $zero, 0x0268($a0)         ## 00000268
/* 005E0 80AEB1F0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005E4 80AEB1F4 E480005C */  swc1    $f0, 0x005C($a0)           ## 0000005C
/* 005E8 80AEB1F8 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 005EC 80AEB1FC E4800064 */  swc1    $f0, 0x0064($a0)           ## 00000064
/* 005F0 80AEB200 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 005F4 80AEB204 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 005F8 80AEB208 0C2BAC3B */  jal     func_80AEB0EC              
/* 005FC 80AEB20C E4800070 */  swc1    $f0, 0x0070($a0)           ## 00000070
/* 00600 80AEB210 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00604 80AEB214 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00608 80AEB218 03E00008 */  jr      $ra                        
/* 0060C 80AEB21C 00000000 */  nop
