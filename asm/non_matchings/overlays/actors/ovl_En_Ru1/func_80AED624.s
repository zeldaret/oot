glabel func_80AED624
/* 02A14 80AED624 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A18 80AED628 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A1C 80AED62C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02A20 80AED630 00451021 */  addu    $v0, $v0, $a1              
/* 02A24 80AED634 80421CBC */  lb      $v0, 0x1CBC($v0)           ## 00011CBC
/* 02A28 80AED638 80830285 */  lb      $v1, 0x0285($a0)           ## 00000285
/* 02A2C 80AED63C 50430006 */  beql    $v0, $v1, .L80AED658       
/* 02A30 80AED640 808E0284 */  lb      $t6, 0x0284($a0)           ## 00000284
/* 02A34 80AED644 0C00B55C */  jal     Actor_Kill
              
/* 02A38 80AED648 00000000 */  nop
/* 02A3C 80AED64C 1000001F */  beq     $zero, $zero, .L80AED6CC   
/* 02A40 80AED650 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02A44 80AED654 808E0284 */  lb      $t6, 0x0284($a0)           ## 00000284
.L80AED658:
/* 02A48 80AED658 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 02A4C 80AED65C 144E0003 */  bne     $v0, $t6, .L80AED66C       
/* 02A50 80AED660 00000000 */  nop
/* 02A54 80AED664 50430019 */  beql    $v0, $v1, .L80AED6CC       
/* 02A58 80AED668 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AED66C:
/* 02A5C 80AED66C 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 02A60 80AED670 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02A64 80AED674 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 02A68 80AED678 85F81474 */  lh      $t8, 0x1474($t7)           ## 80161474
/* 02A6C 80AED67C C4900084 */  lwc1    $f16, 0x0084($a0)          ## 00000084
/* 02A70 80AED680 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 02A74 80AED684 00000000 */  nop
/* 02A78 80AED688 468021A0 */  cvt.s.w $f6, $f4                   
/* 02A7C 80AED68C 46083280 */  add.s   $f10, $f6, $f8             
/* 02A80 80AED690 4610503C */  c.lt.s  $f10, $f16                 
/* 02A84 80AED694 00000000 */  nop
/* 02A88 80AED698 4502000C */  bc1fl   .L80AED6CC                 
/* 02A8C 80AED69C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02A90 80AED6A0 8C990264 */  lw      $t9, 0x0264($a0)           ## 00000264
/* 02A94 80AED6A4 24020021 */  addiu   $v0, $zero, 0x0021         ## $v0 = 00000021
/* 02A98 80AED6A8 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 02A9C 80AED6AC 10590006 */  beq     $v0, $t9, .L80AED6C8       
/* 02AA0 80AED6B0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 02AA4 80AED6B4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02AA8 80AED6B8 AC820264 */  sw      $v0, 0x0264($a0)           ## 00000264
/* 02AAC 80AED6BC AC880268 */  sw      $t0, 0x0268($a0)           ## 00000268
/* 02AB0 80AED6C0 AC8902A8 */  sw      $t1, 0x02A8($a0)           ## 000002A8
/* 02AB4 80AED6C4 E49202A4 */  swc1    $f18, 0x02A4($a0)          ## 000002A4
.L80AED6C8:
/* 02AB8 80AED6C8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AED6CC:
/* 02ABC 80AED6CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02AC0 80AED6D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02AC4 80AED6D4 03E00008 */  jr      $ra                        
/* 02AC8 80AED6D8 00000000 */  nop


