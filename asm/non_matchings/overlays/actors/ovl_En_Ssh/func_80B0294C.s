.late_rodata
glabel D_80B045F0
    .float 0.04
    .balign 4

.text
glabel func_80B0294C
/* 006DC 80B0294C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006E0 80B02950 44857000 */  mtc1    $a1, $f14                  ## $f14 = 0.00
/* 006E4 80B02954 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006E8 80B02958 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006EC 80B0295C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 006F0 80B02960 8C8504E0 */  lw      $a1, 0x04E0($a0)           ## 000004E0
/* 006F4 80B02964 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 006F8 80B02968 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 006FC 80B0296C 84AE002E */  lh      $t6, 0x002E($a1)           ## 0000002E
/* 00700 80B02970 240401C8 */  addiu   $a0, $zero, 0x01C8         ## $a0 = 000001C8
/* 00704 80B02974 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00708 80B02978 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 0070C 80B0297C 00000000 */  nop
/* 00710 80B02980 46802320 */  cvt.s.w $f12, $f4                  
/* 00714 80B02984 460E6302 */  mul.s   $f12, $f12, $f14           
/* 00718 80B02988 4600618D */  trunc.w.s $f6, $f12                  
/* 0071C 80B0298C 44183000 */  mfc1    $t8, $f6                   
/* 00720 80B02990 00000000 */  nop
/* 00724 80B02994 A4B8002E */  sh      $t8, 0x002E($a1)           ## 0000002E
/* 00728 80B02998 C7A80020 */  lwc1    $f8, 0x0020($sp)           
/* 0072C 80B0299C 46087402 */  mul.s   $f16, $f14, $f8            
/* 00730 80B029A0 00000000 */  nop
/* 00734 80B029A4 2463004C */  addiu   $v1, $v1, 0x004C           ## $v1 = 0000004C
/* 00738 80B029A8 10640019 */  beq     $v1, $a0, .L80B02A10       
/* 0073C 80B029AC 84590340 */  lh      $t9, 0x0340($v0)           ## 00000340
.L80B029B0:
/* 00740 80B029B0 8448033C */  lh      $t0, 0x033C($v0)           ## 0000033C
/* 00744 80B029B4 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 00748 80B029B8 8449033E */  lh      $t1, 0x033E($v0)           ## 0000033E
/* 0074C 80B029BC 44886000 */  mtc1    $t0, $f12                  ## $f12 = 0.00
/* 00750 80B029C0 468094A0 */  cvt.s.w $f18, $f18                 
/* 00754 80B029C4 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 00758 80B029C8 2463004C */  addiu   $v1, $v1, 0x004C           ## $v1 = 00000098
/* 0075C 80B029CC 2442004C */  addiu   $v0, $v0, 0x004C           ## $v0 = 0000004C
/* 00760 80B029D0 84590340 */  lh      $t9, 0x0340($v0)           ## 0000038C
/* 00764 80B029D4 46806320 */  cvt.s.w $f12, $f12                 
/* 00768 80B029D8 460E9482 */  mul.s   $f18, $f18, $f14           
/* 0076C 80B029DC 468052A0 */  cvt.s.w $f10, $f10                 
/* 00770 80B029E0 46106302 */  mul.s   $f12, $f12, $f16           
/* 00774 80B029E4 4600948D */  trunc.w.s $f18, $f18                 
/* 00778 80B029E8 460E5282 */  mul.s   $f10, $f10, $f14           
/* 0077C 80B029EC 440B9000 */  mfc1    $t3, $f18                  
/* 00780 80B029F0 4600630D */  trunc.w.s $f12, $f12                 
/* 00784 80B029F4 A44B02F4 */  sh      $t3, 0x02F4($v0)           ## 00000340
/* 00788 80B029F8 4600528D */  trunc.w.s $f10, $f10                 
/* 0078C 80B029FC 440D6000 */  mfc1    $t5, $f12                  
/* 00790 80B02A00 440F5000 */  mfc1    $t7, $f10                  
/* 00794 80B02A04 A44D02F0 */  sh      $t5, 0x02F0($v0)           ## 0000033C
/* 00798 80B02A08 1464FFE9 */  bne     $v1, $a0, .L80B029B0       
/* 0079C 80B02A0C A44F02F2 */  sh      $t7, 0x02F2($v0)           ## 0000033E
.L80B02A10:
/* 007A0 80B02A10 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 007A4 80B02A14 8448033C */  lh      $t0, 0x033C($v0)           ## 00000388
/* 007A8 80B02A18 8449033E */  lh      $t1, 0x033E($v0)           ## 0000038A
/* 007AC 80B02A1C 468094A0 */  cvt.s.w $f18, $f18                 
/* 007B0 80B02A20 44886000 */  mtc1    $t0, $f12                  ## $f12 = 0.00
/* 007B4 80B02A24 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 007B8 80B02A28 2442004C */  addiu   $v0, $v0, 0x004C           ## $v0 = 00000098
/* 007BC 80B02A2C 46806320 */  cvt.s.w $f12, $f12                 
/* 007C0 80B02A30 460E9482 */  mul.s   $f18, $f18, $f14           
/* 007C4 80B02A34 00000000 */  nop
/* 007C8 80B02A38 46106302 */  mul.s   $f12, $f12, $f16           
/* 007CC 80B02A3C 468052A0 */  cvt.s.w $f10, $f10                 
/* 007D0 80B02A40 4600948D */  trunc.w.s $f18, $f18                 
/* 007D4 80B02A44 460E5282 */  mul.s   $f10, $f10, $f14           
/* 007D8 80B02A48 440B9000 */  mfc1    $t3, $f18                  
/* 007DC 80B02A4C 4600630D */  trunc.w.s $f12, $f12                 
/* 007E0 80B02A50 A44B02F4 */  sh      $t3, 0x02F4($v0)           ## 0000038C
/* 007E4 80B02A54 4600528D */  trunc.w.s $f10, $f10                 
/* 007E8 80B02A58 440D6000 */  mfc1    $t5, $f12                  
/* 007EC 80B02A5C 440F5000 */  mfc1    $t7, $f10                  
/* 007F0 80B02A60 A44D02F0 */  sh      $t5, 0x02F0($v0)           ## 00000388
/* 007F4 80B02A64 A44F02F2 */  sh      $t7, 0x02F2($v0)           ## 0000038A
/* 007F8 80B02A68 3C0180B0 */  lui     $at, %hi(D_80B045F0)       ## $at = 80B00000
/* 007FC 80B02A6C C43245F0 */  lwc1    $f18, %lo(D_80B045F0)($at) 
/* 00800 80B02A70 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00804 80B02A74 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00808 80B02A78 460E9102 */  mul.s   $f4, $f18, $f14            
/* 0080C 80B02A7C E7AE001C */  swc1    $f14, 0x001C($sp)          
/* 00810 80B02A80 44052000 */  mfc1    $a1, $f4                   
/* 00814 80B02A84 0C00B58B */  jal     Actor_SetScale
              
/* 00818 80B02A88 00000000 */  nop
/* 0081C 80B02A8C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00820 80B02A90 C7AE001C */  lwc1    $f14, 0x001C($sp)          
/* 00824 80B02A94 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00828 80B02A98 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0082C 80B02A9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 00830 80B02AA0 460E3202 */  mul.s   $f8, $f6, $f14             
/* 00834 80B02AA4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00838 80B02AA8 460A7482 */  mul.s   $f18, $f14, $f10           
/* 0083C 80B02AAC E4C80540 */  swc1    $f8, 0x0540($a2)           ## 00000540
/* 00840 80B02AB0 E4D2053C */  swc1    $f18, 0x053C($a2)          ## 0000053C
/* 00844 80B02AB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00848 80B02AB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0084C 80B02ABC 03E00008 */  jr      $ra                        
/* 00850 80B02AC0 00000000 */  nop


