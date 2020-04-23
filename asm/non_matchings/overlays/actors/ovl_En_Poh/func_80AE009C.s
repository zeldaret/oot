glabel func_80AE009C
/* 0234C 80AE009C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02350 80AE00A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02354 80AE00A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02358 80AE00A8 2405FFF3 */  addiu   $a1, $zero, 0xFFF3         ## $a1 = FFFFFFF3
/* 0235C 80AE00AC 0C2B7EA4 */  jal     func_80ADFA90              
/* 02360 80AE00B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02364 80AE00B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02368 80AE00B8 908E029D */  lbu     $t6, 0x029D($a0)           ## 0000029D
/* 0236C 80AE00BC 55C00004 */  bnel    $t6, $zero, .L80AE00D0     
/* 02370 80AE00C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02374 80AE00C4 0C00B55C */  jal     Actor_Kill
              
/* 02378 80AE00C8 00000000 */  nop
/* 0237C 80AE00CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE00D0:
/* 02380 80AE00D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02384 80AE00D4 03E00008 */  jr      $ra                        
/* 02388 80AE00D8 00000000 */  nop
