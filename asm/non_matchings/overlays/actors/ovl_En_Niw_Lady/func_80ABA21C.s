glabel func_80ABA21C
/* 005DC 80ABA21C 3C0E80AC */  lui     $t6, %hi(D_80ABB3A0)       ## $t6 = 80AC0000
/* 005E0 80ABA220 85CEB3A0 */  lh      $t6, %lo(D_80ABB3A0)($t6)  
/* 005E4 80ABA224 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 005E8 80ABA228 3C1880AC */  lui     $t8, %hi(func_80ABA244)    ## $t8 = 80AC0000
/* 005EC 80ABA22C 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 005F0 80ABA230 2718A244 */  addiu   $t8, $t8, %lo(func_80ABA244) ## $t8 = 80ABA244
/* 005F4 80ABA234 A48F0262 */  sh      $t7, 0x0262($a0)           ## 00000262
/* 005F8 80ABA238 AC980250 */  sw      $t8, 0x0250($a0)           ## 00000250
/* 005FC 80ABA23C 03E00008 */  jr      $ra                        
/* 00600 80ABA240 A48E010E */  sh      $t6, 0x010E($a0)           ## 0000010E
