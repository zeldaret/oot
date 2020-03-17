glabel func_80ADE9BC
/* 00C6C 80ADE9BC 3C0E80AE */  lui     $t6, %hi(func_80AE0204)    ## $t6 = 80AE0000
/* 00C70 80ADE9C0 25CE0204 */  addiu   $t6, $t6, %lo(func_80AE0204) ## $t6 = 80AE0204
/* 00C74 80ADE9C4 03E00008 */  jr      $ra                        
/* 00C78 80ADE9C8 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190


