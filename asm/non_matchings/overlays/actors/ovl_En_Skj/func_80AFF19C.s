glabel func_80AFF19C
/* 00EEC 80AFF19C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EF0 80AFF1A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EF4 80AFF1A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EF8 80AFF1A8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00EFC 80AFF1AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F00 80AFF1B0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00F04 80AFF1B4 24846A98 */  addiu   $a0, $a0, 0x6A98           ## $a0 = 06006A98
/* 00F08 80AFF1B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F0C 80AFF1BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F10 80AFF1C0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F14 80AFF1C4 C4880164 */  lwc1    $f8, 0x0164($a0)           ## 00000164
/* 00F18 80AFF1C8 46083032 */  c.eq.s  $f6, $f8                   
/* 00F1C 80AFF1CC 00000000 */  nop
/* 00F20 80AFF1D0 45020004 */  bc1fl   .L80AFF1E4                 
/* 00F24 80AFF1D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F28 80AFF1D8 0C2BFD98 */  jal     func_80AFF660              
/* 00F2C 80AFF1DC 00000000 */  nop
/* 00F30 80AFF1E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF1E4:
/* 00F34 80AFF1E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F38 80AFF1E8 03E00008 */  jr      $ra                        
/* 00F3C 80AFF1EC 00000000 */  nop
