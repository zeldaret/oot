glabel func_80AED57C
/* 0296C 80AED57C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02970 80AED580 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02974 80AED584 C4860068 */  lwc1    $f6, 0x0068($a0)           ## 00000068
/* 02978 80AED588 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0297C 80AED58C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 02980 80AED590 46062032 */  c.eq.s  $f4, $f6                   
/* 02984 80AED594 00000000 */  nop
/* 02988 80AED598 45030004 */  bc1tl   .L80AED5AC                 
/* 0298C 80AED59C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02990 80AED5A0 0C01E245 */  jal     func_80078914              
/* 02994 80AED5A4 24056865 */  addiu   $a1, $zero, 0x6865         ## $a1 = 00006865
/* 02998 80AED5A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AED5AC:
/* 0299C 80AED5AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 029A0 80AED5B0 03E00008 */  jr      $ra                        
/* 029A4 80AED5B4 00000000 */  nop
