glabel func_80AFF620
/* 01370 80AFF620 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01374 80AFF624 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01378 80AFF628 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0137C 80AFF62C C4860164 */  lwc1    $f6, 0x0164($a0)           ## 00000164
/* 01380 80AFF630 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01384 80AFF634 00000000 */  nop
/* 01388 80AFF638 46062032 */  c.eq.s  $f4, $f6                   
/* 0138C 80AFF63C 00000000 */  nop
/* 01390 80AFF640 45020004 */  bc1fl   .L80AFF654                 
/* 01394 80AFF644 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01398 80AFF648 0C2BFCF4 */  jal     func_80AFF3D0              
/* 0139C 80AFF64C 00000000 */  nop
/* 013A0 80AFF650 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF654:
/* 013A4 80AFF654 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013A8 80AFF658 03E00008 */  jr      $ra                        
/* 013AC 80AFF65C 00000000 */  nop


