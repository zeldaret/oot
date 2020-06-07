glabel func_80ADA7F0
/* 01860 80ADA7F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01864 80ADA7F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01868 80ADA7F8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0186C 80ADA7FC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01870 80ADA800 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01874 80ADA804 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01878 80ADA808 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0187C 80ADA80C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01880 80ADA810 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01884 80ADA814 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01888 80ADA818 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
/* 0188C 80ADA81C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01890 80ADA820 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01894 80ADA824 10400003 */  beq     $v0, $zero, .L80ADA834     
/* 01898 80ADA828 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0189C 80ADA82C A4CE019A */  sh      $t6, 0x019A($a2)           ## 0000019A
/* 018A0 80ADA830 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
.L80ADA834:
/* 018A4 80ADA834 C4C4015C */  lwc1    $f4, 0x015C($a2)           ## 0000015C
/* 018A8 80ADA838 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 018AC 80ADA83C 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 018B0 80ADA840 46062200 */  add.s   $f8, $f4, $f6              
/* 018B4 80ADA844 84CF00B6 */  lh      $t7, 0x00B6($a2)           ## 000000B6
/* 018B8 80ADA848 3C0143C0 */  lui     $at, 0x43C0                ## $at = 43C00000
/* 018BC 80ADA84C 46809120 */  cvt.s.w $f4, $f18                  
/* 018C0 80ADA850 460A4402 */  mul.s   $f16, $f8, $f10            
/* 018C4 80ADA854 44814000 */  mtc1    $at, $f8                   ## $f8 = 384.00
/* 018C8 80ADA858 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 018CC 80ADA85C 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 018D0 80ADA860 240538EE */  addiu   $a1, $zero, 0x38EE         ## $a1 = 000038EE
/* 018D4 80ADA864 46048181 */  sub.s   $f6, $f16, $f4             
/* 018D8 80ADA868 46809420 */  cvt.s.w $f16, $f18                 
/* 018DC 80ADA86C 46064282 */  mul.s   $f10, $f8, $f6             
/* 018E0 80ADA870 460A8100 */  add.s   $f4, $f16, $f10            
/* 018E4 80ADA874 4600220D */  trunc.w.s $f8, $f4                   
/* 018E8 80ADA878 44194000 */  mfc1    $t9, $f8                   
/* 018EC 80ADA87C 10410004 */  beq     $v0, $at, .L80ADA890       
/* 018F0 80ADA880 A4D900B6 */  sh      $t9, 0x00B6($a2)           ## 000000B6
/* 018F4 80ADA884 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 018F8 80ADA888 14410005 */  bne     $v0, $at, .L80ADA8A0       
/* 018FC 80ADA88C 00000000 */  nop
.L80ADA890:
/* 01900 80ADA890 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01904 80ADA894 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01908 80ADA898 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0190C 80ADA89C 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
.L80ADA8A0:
/* 01910 80ADA8A0 54400004 */  bnel    $v0, $zero, .L80ADA8B4     
/* 01914 80ADA8A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01918 80ADA8A8 0C2B6538 */  jal     func_80AD94E0              
/* 0191C 80ADA8AC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01920 80ADA8B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADA8B4:
/* 01924 80ADA8B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01928 80ADA8B8 03E00008 */  jr      $ra                        
/* 0192C 80ADA8BC 00000000 */  nop
