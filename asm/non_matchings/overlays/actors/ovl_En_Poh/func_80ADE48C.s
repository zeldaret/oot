glabel func_80ADE48C
/* 0073C 80ADE48C 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00740 80ADE490 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00744 80ADE494 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 00748 80ADE498 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0074C 80ADE49C 3C0880AE */  lui     $t0, %hi(func_80ADF15C)    ## $t0 = 80AE0000
/* 00750 80ADE4A0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00754 80ADE4A4 2508F15C */  addiu   $t0, $t0, %lo(func_80ADF15C) ## $t0 = 80ADF15C
/* 00758 80ADE4A8 0301C824 */  and     $t9, $t8, $at              
/* 0075C 80ADE4AC A4800198 */  sh      $zero, 0x0198($a0)         ## 00000198
/* 00760 80ADE4B0 A08F0117 */  sb      $t7, 0x0117($a0)           ## 00000117
/* 00764 80ADE4B4 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00768 80ADE4B8 AC880190 */  sw      $t0, 0x0190($a0)           ## 00000190
/* 0076C 80ADE4BC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00770 80ADE4C0 03E00008 */  jr      $ra                        
/* 00774 80ADE4C4 A48E0032 */  sh      $t6, 0x0032($a0)           ## 00000032
