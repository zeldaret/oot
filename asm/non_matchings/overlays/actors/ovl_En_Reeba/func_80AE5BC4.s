glabel func_80AE5BC4
/* 00EF4 80AE5BC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EF8 80AE5BC8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EFC 80AE5BCC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F00 80AE5BD0 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00F04 80AE5BD4 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 00F08 80AE5BD8 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00F0C 80AE5BDC 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00F10 80AE5BE0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00F14 80AE5BE4 A48E0032 */  sh      $t6, 0x0032($a0)           ## 00000032
/* 00F18 80AE5BE8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F1C 80AE5BEC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00F20 80AE5BF0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00F24 80AE5BF4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00F28 80AE5BF8 0C00D09B */  jal     func_8003426C              
/* 00F2C 80AE5BFC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00F30 80AE5C00 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00F34 80AE5C04 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00F38 80AE5C08 3C0980AE */  lui     $t1, %hi(func_80AE5C38)    ## $t1 = 80AE0000
/* 00F3C 80AE5C0C 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
/* 00F40 80AE5C10 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 00F44 80AE5C14 25295C38 */  addiu   $t1, $t1, %lo(func_80AE5C38) ## $t1 = 80AE5C38
/* 00F48 80AE5C18 03214024 */  and     $t0, $t9, $at              
/* 00F4C 80AE5C1C A4980278 */  sh      $t8, 0x0278($a0)           ## 00000278
/* 00F50 80AE5C20 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 00F54 80AE5C24 AC89026C */  sw      $t1, 0x026C($a0)           ## 0000026C
/* 00F58 80AE5C28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F5C 80AE5C2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F60 80AE5C30 03E00008 */  jr      $ra                        
/* 00F64 80AE5C34 00000000 */  nop


