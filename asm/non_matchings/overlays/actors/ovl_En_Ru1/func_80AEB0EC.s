glabel func_80AEB0EC
/* 004DC 80AEB0EC 8C82028C */  lw      $v0, 0x028C($a0)           ## 0000028C
/* 004E0 80AEB0F0 10400002 */  beq     $v0, $zero, .L80AEB0FC     
/* 004E4 80AEB0F4 00000000 */  nop
/* 004E8 80AEB0F8 AC4501B8 */  sw      $a1, 0x01B8($v0)           ## 000001B8
.L80AEB0FC:
/* 004EC 80AEB0FC 03E00008 */  jr      $ra                        
/* 004F0 80AEB100 00000000 */  nop


