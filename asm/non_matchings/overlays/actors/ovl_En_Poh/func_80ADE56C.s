glabel func_80ADE56C
/* 0081C 80ADE56C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00820 80ADE570 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00824 80ADE574 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00828 80ADE578 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 0082C 80ADE57C 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00830 80ADE580 A08E0194 */  sb      $t6, 0x0194($a0)           ## 00000194
/* 00834 80ADE584 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00838 80ADE588 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 0083C 80ADE58C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00840 80ADE590 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00844 80ADE594 24053874 */  addiu   $a1, $zero, 0x3874         ## $a1 = 00003874
/* 00848 80ADE598 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0084C 80ADE59C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00850 80ADE5A0 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 00854 80ADE5A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00858 80ADE5A8 3C1880AE */  lui     $t8, %hi(func_80ADF660)    ## $t8 = 80AE0000
/* 0085C 80ADE5AC 2718F660 */  addiu   $t8, $t8, %lo(func_80ADF660) ## $t8 = 80ADF660
/* 00860 80ADE5B0 AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
/* 00864 80ADE5B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00868 80ADE5B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0086C 80ADE5BC 03E00008 */  jr      $ra                        
/* 00870 80ADE5C0 00000000 */  nop


