glabel func_80AE57F0
/* 00B20 80AE57F0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B24 80AE57F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B28 80AE57F8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B2C 80AE57FC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00B30 80AE5800 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 00B34 80AE5804 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 00B38 80AE5808 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 00B3C 80AE580C A48E0276 */  sh      $t6, 0x0276($a0)           ## 00000276
/* 00B40 80AE5810 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00B44 80AE5814 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00B48 80AE5818 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 00B4C 80AE581C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00B50 80AE5820 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00B54 80AE5824 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00B58 80AE5828 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00B5C 80AE582C 0C00D09B */  jal     func_8003426C              
/* 00B60 80AE5830 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00B64 80AE5834 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00B68 80AE5838 3C1980AE */  lui     $t9, %hi(func_80AE5854)    ## $t9 = 80AE0000
/* 00B6C 80AE583C 27395854 */  addiu   $t9, $t9, %lo(func_80AE5854) ## $t9 = 80AE5854
/* 00B70 80AE5840 AC99026C */  sw      $t9, 0x026C($a0)           ## 0000026C
/* 00B74 80AE5844 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B78 80AE5848 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B7C 80AE584C 03E00008 */  jr      $ra                        
/* 00B80 80AE5850 00000000 */  nop


