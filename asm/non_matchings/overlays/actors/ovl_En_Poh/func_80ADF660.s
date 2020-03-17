glabel func_80ADF660
/* 01910 80ADF660 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01914 80ADF664 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01918 80ADF668 90820194 */  lbu     $v0, 0x0194($a0)           ## 00000194
/* 0191C 80ADF66C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01920 80ADF670 10400002 */  beq     $v0, $zero, .L80ADF67C     
/* 01924 80ADF674 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01928 80ADF678 A08E0194 */  sb      $t6, 0x0194($a0)           ## 00000194
.L80ADF67C:
/* 0192C 80ADF67C 84CF0032 */  lh      $t7, 0x0032($a2)           ## 00000032
/* 01930 80ADF680 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01934 80ADF684 25F81000 */  addiu   $t8, $t7, 0x1000           ## $t8 = 00001000
/* 01938 80ADF688 A4D80032 */  sh      $t8, 0x0032($a2)           ## 00000032
/* 0193C 80ADF68C 0C2B7A73 */  jal     func_80ADE9CC              
/* 01940 80ADF690 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01944 80ADF694 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01948 80ADF698 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0194C 80ADF69C 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 01950 80ADF6A0 90C20194 */  lbu     $v0, 0x0194($a2)           ## 00000194
/* 01954 80ADF6A4 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 01958 80ADF6A8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0195C 80ADF6AC 04410004 */  bgez    $v0, .L80ADF6C0            
/* 01960 80ADF6B0 468021A0 */  cvt.s.w $f6, $f4                   
/* 01964 80ADF6B4 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 01968 80ADF6B8 00000000 */  nop
/* 0196C 80ADF6BC 46083180 */  add.s   $f6, $f6, $f8              
.L80ADF6C0:
/* 01970 80ADF6C0 3C0140FF */  lui     $at, 0x40FF                ## $at = 40FF0000
/* 01974 80ADF6C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.97
/* 01978 80ADF6C8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0197C 80ADF6CC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01980 80ADF6D0 460A3402 */  mul.s   $f16, $f6, $f10            
/* 01984 80ADF6D4 4459F800 */  cfc1    $t9, $31
/* 01988 80ADF6D8 44C8F800 */  ctc1    $t0, $31
/* 0198C 80ADF6DC 00000000 */  nop
/* 01990 80ADF6E0 460084A4 */  cvt.w.s $f18, $f16                 
/* 01994 80ADF6E4 4448F800 */  cfc1    $t0, $31
/* 01998 80ADF6E8 00000000 */  nop
/* 0199C 80ADF6EC 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 019A0 80ADF6F0 51000013 */  beql    $t0, $zero, .L80ADF740     
/* 019A4 80ADF6F4 44089000 */  mfc1    $t0, $f18                  
/* 019A8 80ADF6F8 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 019AC 80ADF6FC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 019B0 80ADF700 46128481 */  sub.s   $f18, $f16, $f18           
/* 019B4 80ADF704 44C8F800 */  ctc1    $t0, $31
/* 019B8 80ADF708 00000000 */  nop
/* 019BC 80ADF70C 460094A4 */  cvt.w.s $f18, $f18                 
/* 019C0 80ADF710 4448F800 */  cfc1    $t0, $31
/* 019C4 80ADF714 00000000 */  nop
/* 019C8 80ADF718 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 019CC 80ADF71C 15000005 */  bne     $t0, $zero, .L80ADF734     
/* 019D0 80ADF720 00000000 */  nop
/* 019D4 80ADF724 44089000 */  mfc1    $t0, $f18                  
/* 019D8 80ADF728 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 019DC 80ADF72C 10000007 */  beq     $zero, $zero, .L80ADF74C   
/* 019E0 80ADF730 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L80ADF734:
/* 019E4 80ADF734 10000005 */  beq     $zero, $zero, .L80ADF74C   
/* 019E8 80ADF738 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 019EC 80ADF73C 44089000 */  mfc1    $t0, $f18                  
.L80ADF740:
/* 019F0 80ADF740 00000000 */  nop
/* 019F4 80ADF744 0500FFFB */  bltz    $t0, .L80ADF734            
/* 019F8 80ADF748 00000000 */  nop
.L80ADF74C:
/* 019FC 80ADF74C 44D9F800 */  ctc1    $t9, $31
/* 01A00 80ADF750 14400006 */  bne     $v0, $zero, .L80ADF76C     
/* 01A04 80ADF754 A0C8029D */  sb      $t0, 0x029D($a2)           ## 0000029D
/* 01A08 80ADF758 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 01A0C 80ADF75C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01A10 80ADF760 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A14 80ADF764 0C2B785B */  jal     func_80ADE16C              
/* 01A18 80ADF768 A482019A */  sh      $v0, 0x019A($a0)           ## 0000019A
.L80ADF76C:
/* 01A1C 80ADF76C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A20 80ADF770 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A24 80ADF774 03E00008 */  jr      $ra                        
/* 01A28 80ADF778 00000000 */  nop


