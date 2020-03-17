glabel func_80AED6DC
/* 02ACC 80AED6DC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02AD0 80AED6E0 00451021 */  addu    $v0, $v0, $a1              
/* 02AD4 80AED6E4 80421CBC */  lb      $v0, 0x1CBC($v0)           ## 00011CBC
/* 02AD8 80AED6E8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02ADC 80AED6EC A0820285 */  sb      $v0, 0x0285($a0)           ## 00000285
/* 02AE0 80AED6F0 03E00008 */  jr      $ra                        
/* 02AE4 80AED6F4 E4840288 */  swc1    $f4, 0x0288($a0)           ## 00000288


