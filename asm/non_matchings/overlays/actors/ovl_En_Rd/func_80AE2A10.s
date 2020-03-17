glabel func_80AE2A10
/* 00610 80AE2A10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00614 80AE2A14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00618 80AE2A18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0061C 80AE2A1C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00620 80AE2A20 848E00B4 */  lh      $t6, 0x00B4($a0)           ## 000000B4
/* 00624 80AE2A24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00628 80AE2A28 2401C000 */  addiu   $at, $zero, 0xC000         ## $at = FFFFC000
/* 0062C 80AE2A2C 11C1001A */  beq     $t6, $at, .L80AE2A98       
/* 00630 80AE2A30 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00634 80AE2A34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00638 80AE2A38 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0063C 80AE2A3C 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00640 80AE2A40 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00644 80AE2A44 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00648 80AE2A48 3C0180AE */  lui     $at, %hi(D_80AE4990)       ## $at = 80AE0000
/* 0064C 80AE2A4C C4224990 */  lwc1    $f2, %lo(D_80AE4990)($at)  
/* 00650 80AE2A50 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00654 80AE2A54 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00658 80AE2A58 44061000 */  mfc1    $a2, $f2                   
/* 0065C 80AE2A5C 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 00660 80AE2A60 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00664 80AE2A64 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00668 80AE2A68 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0066C 80AE2A6C 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 00670 80AE2A70 46040032 */  c.eq.s  $f0, $f4                   
/* 00674 80AE2A74 00000000 */  nop
/* 00678 80AE2A78 45020041 */  bc1fl   .L80AE2B80                 
/* 0067C 80AE2A7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00680 80AE2A80 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.50
/* 00684 80AE2A84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00688 80AE2A88 0C2B89A7 */  jal     func_80AE269C              
/* 0068C 80AE2A8C E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 00690 80AE2A90 1000003B */  beq     $zero, $zero, .L80AE2B80   
/* 00694 80AE2A94 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE2A98:
/* 00698 80AE2A98 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
/* 0069C 80AE2A9C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 006A0 80AE2AA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A4 80AE2AA4 46080032 */  c.eq.s  $f0, $f8                   
/* 006A8 80AE2AA8 00000000 */  nop
/* 006AC 80AE2AAC 45000004 */  bc1f    .L80AE2AC0                 
/* 006B0 80AE2AB0 00000000 */  nop
/* 006B4 80AE2AB4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006B8 80AE2AB8 240538E4 */  addiu   $a1, $zero, 0x38E4         ## $a1 = 000038E4
/* 006BC 80AE2ABC C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
.L80AE2AC0:
/* 006C0 80AE2AC0 3C0180AE */  lui     $at, %hi(D_80AE4994)       ## $at = 80AE0000
/* 006C4 80AE2AC4 C4224994 */  lwc1    $f2, %lo(D_80AE4994)($at)  
/* 006C8 80AE2AC8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 006CC 80AE2ACC 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 006D0 80AE2AD0 44061000 */  mfc1    $a2, $f2                   
/* 006D4 80AE2AD4 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 006D8 80AE2AD8 460A0400 */  add.s   $f16, $f0, $f10            
/* 006DC 80AE2ADC 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 006E0 80AE2AE0 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 006E4 80AE2AE4 44058000 */  mfc1    $a1, $f16                  
/* 006E8 80AE2AE8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 006EC 80AE2AEC 00000000 */  nop
/* 006F0 80AE2AF0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 006F4 80AE2AF4 3C0180AE */  lui     $at, %hi(D_80AE4998)       ## $at = 80AE0000
/* 006F8 80AE2AF8 C4224998 */  lwc1    $f2, %lo(D_80AE4998)($at)  
/* 006FC 80AE2AFC 460C0032 */  c.eq.s  $f0, $f12                  
/* 00700 80AE2B00 00000000 */  nop
/* 00704 80AE2B04 4502001E */  bc1fl   .L80AE2B80                 
/* 00708 80AE2B08 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0070C 80AE2B0C 8602030C */  lh      $v0, 0x030C($s0)           ## 0000030C
/* 00710 80AE2B10 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00714 80AE2B14 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00718 80AE2B18 1040000A */  beq     $v0, $zero, .L80AE2B44     
/* 0071C 80AE2B1C 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00720 80AE2B20 A60F030C */  sh      $t7, 0x030C($s0)           ## 0000030C
/* 00724 80AE2B24 44061000 */  mfc1    $a2, $f2                   
/* 00728 80AE2B28 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 0072C 80AE2B2C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00730 80AE2B30 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00734 80AE2B34 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00738 80AE2B38 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 0073C 80AE2B3C 10000010 */  beq     $zero, $zero, .L80AE2B80   
/* 00740 80AE2B40 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE2B44:
/* 00744 80AE2B44 44056000 */  mfc1    $a1, $f12                  
/* 00748 80AE2B48 44061000 */  mfc1    $a2, $f2                   
/* 0074C 80AE2B4C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00750 80AE2B50 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00754 80AE2B54 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00758 80AE2B58 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0075C 80AE2B5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00760 80AE2B60 46120032 */  c.eq.s  $f0, $f18                  
/* 00764 80AE2B64 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00768 80AE2B68 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0076C 80AE2B6C 45020004 */  bc1fl   .L80AE2B80                 
/* 00770 80AE2B70 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00774 80AE2B74 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00778 80AE2B78 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0077C 80AE2B7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE2B80:
/* 00780 80AE2B80 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00784 80AE2B84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00788 80AE2B88 03E00008 */  jr      $ra                        
/* 0078C 80AE2B8C 00000000 */  nop


