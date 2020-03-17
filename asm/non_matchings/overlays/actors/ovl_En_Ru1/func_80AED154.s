glabel func_80AED154
/* 02544 80AED154 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02548 80AED158 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0254C 80AED15C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02550 80AED160 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 02554 80AED164 0C2BB421 */  jal     func_80AED084              
/* 02558 80AED168 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0255C 80AED16C 10400007 */  beq     $v0, $zero, .L80AED18C     
/* 02560 80AED170 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02564 80AED174 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02568 80AED178 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 0256C 80AED17C AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 02570 80AED180 E484026C */  swc1    $f4, 0x026C($a0)           ## 0000026C
/* 02574 80AED184 0C2BB3AD */  jal     func_80AECEB4              
/* 02578 80AED188 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AED18C:
/* 0257C 80AED18C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02580 80AED190 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02584 80AED194 03E00008 */  jr      $ra                        
/* 02588 80AED198 00000000 */  nop


