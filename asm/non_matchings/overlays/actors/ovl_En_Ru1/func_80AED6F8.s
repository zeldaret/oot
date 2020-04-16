glabel func_80AED6F8
/* 02AE8 80AED6F8 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 02AEC 80AED6FC 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 02AF0 80AED700 94A20F20 */  lhu     $v0, 0x0F20($a1)           ## 8015F580
/* 02AF4 80AED704 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 02AF8 80AED708 00641821 */  addu    $v1, $v1, $a0              
/* 02AFC 80AED70C 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 02B00 80AED710 15C00007 */  bne     $t6, $zero, .L80AED730     
/* 02B04 80AED714 00000000 */  nop
/* 02B08 80AED718 80631CBC */  lb      $v1, 0x1CBC($v1)           ## 00011CBC
/* 02B0C 80AED71C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02B10 80AED720 344F0080 */  ori     $t7, $v0, 0x0080           ## $t7 = 00000080
/* 02B14 80AED724 14610002 */  bne     $v1, $at, .L80AED730       
/* 02B18 80AED728 00000000 */  nop
/* 02B1C 80AED72C A4AF0F20 */  sh      $t7, 0x0F20($a1)           ## 8015F580
.L80AED730:
/* 02B20 80AED730 03E00008 */  jr      $ra                        
/* 02B24 80AED734 00000000 */  nop
