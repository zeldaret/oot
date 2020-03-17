glabel func_80AED084
/* 02474 80AED084 8C820278 */  lw      $v0, 0x0278($a0)           ## 00000278
/* 02478 80AED088 50400007 */  beql    $v0, $zero, .L80AED0A8     
/* 0247C 80AED08C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02480 80AED090 8C4E01EC */  lw      $t6, 0x01EC($v0)           ## 000001EC
/* 02484 80AED094 54AE0004 */  bnel    $a1, $t6, .L80AED0A8       
/* 02488 80AED098 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0248C 80AED09C 03E00008 */  jr      $ra                        
/* 02490 80AED0A0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AED0A4:
/* 02494 80AED0A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AED0A8:
/* 02498 80AED0A8 03E00008 */  jr      $ra                        
/* 0249C 80AED0AC 00000000 */  nop


