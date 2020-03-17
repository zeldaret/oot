glabel func_80AD9718
/* 00788 80AD9718 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0078C 80AD971C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00790 80AD9720 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00794 80AD9724 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00798 80AD9728 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0079C 80AD972C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 007A0 80AD9730 2484119C */  addiu   $a0, $a0, 0x119C           ## $a0 = 0600119C
/* 007A4 80AD9734 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 007A8 80AD9738 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 007AC 80AD973C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 007B0 80AD9740 468021A0 */  cvt.s.w $f6, $f4                   
/* 007B4 80AD9744 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007B8 80AD9748 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 007BC 80AD974C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007C0 80AD9750 24A5119C */  addiu   $a1, $a1, 0x119C           ## $a1 = 0600119C
/* 007C4 80AD9754 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 007C8 80AD9758 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 007CC 80AD975C 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 007D0 80AD9760 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 007D4 80AD9764 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 007D8 80AD9768 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 007DC 80AD976C 92190199 */  lbu     $t9, 0x0199($s0)           ## 00000199
/* 007E0 80AD9770 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 007E4 80AD9774 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 007E8 80AD9778 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 007EC 80AD977C 3328FFFA */  andi    $t0, $t9, 0xFFFA           ## $t0 = 00000000
/* 007F0 80AD9780 A60F019C */  sh      $t7, 0x019C($s0)           ## 0000019C
/* 007F4 80AD9784 A2080199 */  sb      $t0, 0x0199($s0)           ## 00000199
/* 007F8 80AD9788 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007FC 80AD978C 24053874 */  addiu   $a1, $zero, 0x3874         ## $a1 = 00003874
/* 00800 80AD9790 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00804 80AD9794 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00808 80AD9798 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 0080C 80AD979C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00810 80AD97A0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00814 80AD97A4 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
/* 00818 80AD97A8 3C0980AE */  lui     $t1, %hi(func_80ADAD54)    ## $t1 = 80AE0000
/* 0081C 80AD97AC 2529AD54 */  addiu   $t1, $t1, %lo(func_80ADAD54) ## $t1 = 80ADAD54
/* 00820 80AD97B0 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00824 80AD97B4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00828 80AD97B8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0082C 80AD97BC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00830 80AD97C0 03E00008 */  jr      $ra                        
/* 00834 80AD97C4 00000000 */  nop


