glabel func_80AEB104
/* 004F4 80AEB104 8C83028C */  lw      $v1, 0x028C($a0)           ## 0000028C
/* 004F8 80AEB108 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 004FC 80AEB10C 10600003 */  beq     $v1, $zero, .L80AEB11C     
/* 00500 80AEB110 00000000 */  nop
/* 00504 80AEB114 03E00008 */  jr      $ra                        
/* 00508 80AEB118 8C6201B8 */  lw      $v0, 0x01B8($v1)           ## 000001B8
.L80AEB11C:
/* 0050C 80AEB11C 03E00008 */  jr      $ra                        
/* 00510 80AEB120 00000000 */  nop


