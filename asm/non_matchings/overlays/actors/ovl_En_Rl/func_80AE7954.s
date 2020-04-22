glabel func_80AE7954
/* 006A4 80AE7954 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006A8 80AE7958 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006AC 80AE795C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006B0 80AE7960 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 006B4 80AE7964 0C2B9D2D */  jal     func_80AE74B4              
/* 006B8 80AE7968 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 006BC 80AE796C 10400009 */  beq     $v0, $zero, .L80AE7994     
/* 006C0 80AE7970 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006C4 80AE7974 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006C8 80AE7978 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 006CC 80AE797C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 006D0 80AE7980 AC8E0194 */  sw      $t6, 0x0194($a0)           ## 00000194
/* 006D4 80AE7984 AC8F0198 */  sw      $t7, 0x0198($a0)           ## 00000198
/* 006D8 80AE7988 AC8001A0 */  sw      $zero, 0x01A0($a0)         ## 000001A0
/* 006DC 80AE798C A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 006E0 80AE7990 E484019C */  swc1    $f4, 0x019C($a0)           ## 0000019C
.L80AE7994:
/* 006E4 80AE7994 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006E8 80AE7998 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006EC 80AE799C 03E00008 */  jr      $ra                        
/* 006F0 80AE79A0 00000000 */  nop
