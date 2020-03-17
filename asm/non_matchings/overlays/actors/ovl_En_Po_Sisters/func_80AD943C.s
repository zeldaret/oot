glabel func_80AD943C
/* 004AC 80AD943C 3C0E80AE */  lui     $t6, %hi(func_80ADA6A0)    ## $t6 = 80AE0000
/* 004B0 80AD9440 25CEA6A0 */  addiu   $t6, $t6, %lo(func_80ADA6A0) ## $t6 = 80ADA6A0
/* 004B4 80AD9444 03E00008 */  jr      $ra                        
/* 004B8 80AD9448 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190


