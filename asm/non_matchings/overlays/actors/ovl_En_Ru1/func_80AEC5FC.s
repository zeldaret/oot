.late_rodata
glabel D_80AF1BE4
    .float 265.0

.text
glabel func_80AEC5FC
/* 019EC 80AEC5FC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 019F0 80AEC600 C480002C */  lwc1    $f0, 0x002C($a0)           ## 0000002C
/* 019F4 80AEC604 3C0180AF */  lui     $at, %hi(D_80AF1BE4)       ## $at = 80AF0000
/* 019F8 80AEC608 C442002C */  lwc1    $f2, 0x002C($v0)           ## 0000002C
/* 019FC 80AEC60C C4241BE4 */  lwc1    $f4, %lo(D_80AF1BE4)($at)  
/* 01A00 80AEC610 46001181 */  sub.s   $f6, $f2, $f0              
/* 01A04 80AEC614 4604303E */  c.le.s  $f6, $f4                   
/* 01A08 80AEC618 00000000 */  nop
/* 01A0C 80AEC61C 4502000A */  bc1fl   .L80AEC648                 
/* 01A10 80AEC620 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01A14 80AEC624 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 01A18 80AEC628 C48A0028 */  lwc1    $f10, 0x0028($a0)          ## 00000028
/* 01A1C 80AEC62C 4608503E */  c.le.s  $f10, $f8                  
/* 01A20 80AEC630 00000000 */  nop
/* 01A24 80AEC634 45020004 */  bc1fl   .L80AEC648                 
/* 01A28 80AEC638 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01A2C 80AEC63C 03E00008 */  jr      $ra                        
/* 01A30 80AEC640 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEC644:
/* 01A34 80AEC644 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEC648:
/* 01A38 80AEC648 03E00008 */  jr      $ra                        
/* 01A3C 80AEC64C 00000000 */  nop
