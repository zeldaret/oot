glabel func_80AE538C
/* 006BC 80AE538C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 006C0 80AE5390 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 006C4 80AE5394 3C1880AE */  lui     $t8, %hi(func_80AE53AC)    ## $t8 = 80AE0000
/* 006C8 80AE5398 271853AC */  addiu   $t8, $t8, %lo(func_80AE53AC) ## $t8 = 80AE53AC
/* 006CC 80AE539C 35CF0005 */  ori     $t7, $t6, 0x0005           ## $t7 = 00000005
/* 006D0 80AE53A0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 006D4 80AE53A4 03E00008 */  jr      $ra                        
/* 006D8 80AE53A8 AC98026C */  sw      $t8, 0x026C($a0)           ## 0000026C


