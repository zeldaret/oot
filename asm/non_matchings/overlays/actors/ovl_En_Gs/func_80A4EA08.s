glabel func_80A4EA08
/* 006E8 80A4EA08 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 006EC 80A4EA0C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 006F0 80A4EA10 9082019F */  lbu     $v0, 0x019F($a0)           ## 0000019F
/* 006F4 80A4EA14 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006F8 80A4EA18 1440000E */  bne     $v0, $zero, .L80A4EA54     
/* 006FC 80A4EA1C 00000000 */  nop
/* 00700 80A4EA20 24053831 */  addiu   $a1, $zero, 0x3831         ## $a1 = 00003831
/* 00704 80A4EA24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00708 80A4EA28 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 0070C 80A4EA2C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00710 80A4EA30 3C0180A5 */  lui     $at, %hi(D_80A4FEA4)       ## $at = 80A50000
/* 00714 80A4EA34 C424FEA4 */  lwc1    $f4, %lo(D_80A4FEA4)($at)  
/* 00718 80A4EA38 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0071C 80A4EA3C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00720 80A4EA40 A4800200 */  sh      $zero, 0x0200($a0)         ## 00000200
/* 00724 80A4EA44 A08E019F */  sb      $t6, 0x019F($a0)           ## 0000019F
/* 00728 80A4EA48 E48401E8 */  swc1    $f4, 0x01E8($a0)           ## 000001E8
/* 0072C 80A4EA4C 10000037 */  beq     $zero, $zero, .L80A4EB2C   
/* 00730 80A4EA50 E48601EC */  swc1    $f6, 0x01EC($a0)           ## 000001EC
.L80A4EA54:
/* 00734 80A4EA54 54410036 */  bnel    $v0, $at, .L80A4EB30       
/* 00738 80A4EA58 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0073C 80A4EA5C 948F0200 */  lhu     $t7, 0x0200($a0)           ## 00000200
/* 00740 80A4EA60 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 00744 80A4EA64 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.12
/* 00748 80A4EA68 05E10004 */  bgez    $t7, .L80A4EA7C            
/* 0074C 80A4EA6C 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 00750 80A4EA70 13000002 */  beq     $t8, $zero, .L80A4EA7C     
/* 00754 80A4EA74 00000000 */  nop
/* 00758 80A4EA78 2718FFF8 */  addiu   $t8, $t8, 0xFFF8           ## $t8 = FFFFFFF8
.L80A4EA7C:
/* 0075C 80A4EA7C 44984000 */  mtc1    $t8, $f8                   ## $f8 = NaN
/* 00760 80A4EA80 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 00764 80A4EA84 44812000 */  mtc1    $at, $f4                   ## $f4 = 360.00
/* 00768 80A4EA88 468042A0 */  cvt.s.w $f10, $f8                  
/* 0076C 80A4EA8C 3C0180A5 */  lui     $at, %hi(D_80A4FEA8)       ## $at = 80A50000
/* 00770 80A4EA90 C428FEA8 */  lwc1    $f8, %lo(D_80A4FEA8)($at)  
/* 00774 80A4EA94 3C0180A5 */  lui     $at, %hi(D_80A4FEAC)       ## $at = 80A50000
/* 00778 80A4EA98 248B0200 */  addiu   $t3, $a0, 0x0200           ## $t3 = 00000200
/* 0077C 80A4EA9C 240C0007 */  addiu   $t4, $zero, 0x0007         ## $t4 = 00000007
/* 00780 80A4EAA0 46105482 */  mul.s   $f18, $f10, $f16           
/* 00784 80A4EAA4 248601E8 */  addiu   $a2, $a0, 0x01E8           ## $a2 = 000001E8
/* 00788 80A4EAA8 248701EC */  addiu   $a3, $a0, 0x01EC           ## $a3 = 000001EC
/* 0078C 80A4EAAC 46049182 */  mul.s   $f6, $f18, $f4             
/* 00790 80A4EAB0 00000000 */  nop
/* 00794 80A4EAB4 46083282 */  mul.s   $f10, $f6, $f8             
/* 00798 80A4EAB8 4600540D */  trunc.w.s $f16, $f10                 
/* 0079C 80A4EABC 44088000 */  mfc1    $t0, $f16                  
/* 007A0 80A4EAC0 00000000 */  nop
/* 007A4 80A4EAC4 A48801A4 */  sh      $t0, 0x01A4($a0)           ## 000001A4
/* 007A8 80A4EAC8 848901A4 */  lh      $t1, 0x01A4($a0)           ## 000001A4
/* 007AC 80A4EACC 00095023 */  subu    $t2, $zero, $t1            
/* 007B0 80A4EAD0 A48A01AA */  sh      $t2, 0x01AA($a0)           ## 000001AA
/* 007B4 80A4EAD4 C432FEAC */  lwc1    $f18, %lo(D_80A4FEAC)($at) 
/* 007B8 80A4EAD8 3C0180A5 */  lui     $at, %hi(D_80A4FEB0)       ## $at = 80A50000
/* 007BC 80A4EADC C424FEB0 */  lwc1    $f4, %lo(D_80A4FEB0)($at)  
/* 007C0 80A4EAE0 3C0180A5 */  lui     $at, %hi(D_80A4FEB4)       ## $at = 80A50000
/* 007C4 80A4EAE4 C426FEB4 */  lwc1    $f6, %lo(D_80A4FEB4)($at)  
/* 007C8 80A4EAE8 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 007CC 80A4EAEC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 007D0 80A4EAF0 AFAC0020 */  sw      $t4, 0x0020($sp)           
/* 007D4 80A4EAF4 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 007D8 80A4EAF8 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 007DC 80A4EAFC E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 007E0 80A4EB00 0C2939D5 */  jal     func_80A4E754              
/* 007E4 80A4EB04 E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 007E8 80A4EB08 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 007EC 80A4EB0C 3C0D80A5 */  lui     $t5, %hi(func_80A4F734)    ## $t5 = 80A50000
/* 007F0 80A4EB10 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 007F4 80A4EB14 46080032 */  c.eq.s  $f0, $f8                   
/* 007F8 80A4EB18 25ADF734 */  addiu   $t5, $t5, %lo(func_80A4F734) ## $t5 = 80A4F734
/* 007FC 80A4EB1C 45020004 */  bc1fl   .L80A4EB30                 
/* 00800 80A4EB20 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00804 80A4EB24 A080019C */  sb      $zero, 0x019C($a0)         ## 0000019C
/* 00808 80A4EB28 AC8D0198 */  sw      $t5, 0x0198($a0)           ## 00000198
.L80A4EB2C:
/* 0080C 80A4EB2C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A4EB30:
/* 00810 80A4EB30 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00814 80A4EB34 03E00008 */  jr      $ra                        
/* 00818 80A4EB38 00000000 */  nop


