glabel func_80AED0B0
/* 024A0 80AED0B0 8C820278 */  lw      $v0, 0x0278($a0)           ## 00000278
/* 024A4 80AED0B4 10400002 */  beq     $v0, $zero, .L80AED0C0     
/* 024A8 80AED0B8 00000000 */  nop
/* 024AC 80AED0BC AC4501EC */  sw      $a1, 0x01EC($v0)           ## 000001EC
.L80AED0C0:
/* 024B0 80AED0C0 03E00008 */  jr      $ra                        
/* 024B4 80AED0C4 00000000 */  nop
