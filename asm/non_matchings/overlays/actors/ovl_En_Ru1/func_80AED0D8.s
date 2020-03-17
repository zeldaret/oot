glabel func_80AED0D8
/* 024C8 80AED0D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 024CC 80AED0DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 024D0 80AED0E0 8482008A */  lh      $v0, 0x008A($a0)           ## 0000008A
/* 024D4 80AED0E4 240E0011 */  addiu   $t6, $zero, 0x0011         ## $t6 = 00000011
/* 024D8 80AED0E8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 024DC 80AED0EC AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 024E0 80AED0F0 AC8F0268 */  sw      $t7, 0x0268($a0)           ## 00000268
/* 024E4 80AED0F4 A4820032 */  sh      $v0, 0x0032($a0)           ## 00000032
/* 024E8 80AED0F8 0C2BB32C */  jal     func_80AECCB0              
/* 024EC 80AED0FC A48200B6 */  sh      $v0, 0x00B6($a0)           ## 000000B6
/* 024F0 80AED100 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 024F4 80AED104 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 024F8 80AED108 03E00008 */  jr      $ra                        
/* 024FC 80AED10C 00000000 */  nop


