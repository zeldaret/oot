glabel func_80AEF170
/* 04560 80AEF170 10C00003 */  beq     $a2, $zero, .L80AEF180     
/* 04564 80AEF174 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 04568 80AEF178 240E0019 */  addiu   $t6, $zero, 0x0019         ## $t6 = 00000019
/* 0456C 80AEF17C AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
.L80AEF180:
/* 04570 80AEF180 03E00008 */  jr      $ra                        
/* 04574 80AEF184 00000000 */  nop


