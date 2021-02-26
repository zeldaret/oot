.late_rodata
glabel D_808C0A68
 .word 0x462AA800
glabel D_808C0A6C
 .word 0x3C088889
glabel D_808C0A70
    .float 0.7

.text
glabel func_808BF97C
/* 0056C 808BF97C 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 00570 808BF980 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00574 808BF984 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00578 808BF988 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 0057C 808BF98C AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00580 808BF990 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00584 808BF994 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00588 808BF998 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 0058C 808BF99C AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00590 808BF9A0 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00594 808BF9A4 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00598 808BF9A8 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 0059C 808BF9AC F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 005A0 808BF9B0 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 005A4 808BF9B4 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 005A8 808BF9B8 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 005AC 808BF9BC F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 005B0 808BF9C0 AFA500DC */  sw      $a1, 0x00DC($sp)           
/* 005B4 808BF9C4 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 005B8 808BF9C8 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 005BC 808BF9CC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 005C0 808BF9D0 10400003 */  beq     $v0, $zero, .L808BF9E0     
/* 005C4 808BF9D4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 005C8 808BF9D8 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 005CC 808BF9DC 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L808BF9E0:
/* 005D0 808BF9E0 14400005 */  bne     $v0, $zero, .L808BF9F8     
/* 005D4 808BF9E4 00000000 */  nop
/* 005D8 808BF9E8 0C00B55C */  jal     Actor_Kill
              
/* 005DC 808BF9EC 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 005E0 808BF9F0 10000086 */  beq     $zero, $zero, .L808BFC0C   
/* 005E4 808BF9F4 8FBF009C */  lw      $ra, 0x009C($sp)           
.L808BF9F8:
/* 005E8 808BF9F8 0041001A */  div     $zero, $v0, $at            
/* 005EC 808BF9FC 00007810 */  mfhi    $t7                        
/* 005F0 808BFA00 55E00082 */  bnel    $t7, $zero, .L808BFC0C     
/* 005F4 808BFA04 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 005F8 808BFA08 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 005FC 808BFA0C 00000000 */  nop
/* 00600 808BFA10 3C01808C */  lui     $at, %hi(D_808C0A68)       ## $at = 808C0000
/* 00604 808BFA14 C4240A68 */  lwc1    $f4, %lo(D_808C0A68)($at)  
/* 00608 808BFA18 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 0060C 808BFA1C 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00610 808BFA20 46040182 */  mul.s   $f6, $f0, $f4              
/* 00614 808BFA24 4481E000 */  mtc1    $at, $f28                  ## $f28 = 7.00
/* 00618 808BFA28 3C01808C */  lui     $at, %hi(D_808C0A6C)       ## $at = 808C0000
/* 0061C 808BFA2C E7BE00D0 */  swc1    $f30, 0x00D0($sp)          
/* 00620 808BFA30 C6AA0028 */  lwc1    $f10, 0x0028($s5)          ## 00000028
/* 00624 808BFA34 C43A0A6C */  lwc1    $f26, %lo(D_808C0A6C)($at) 
/* 00628 808BFA38 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0062C 808BFA3C 4600320D */  trunc.w.s $f8, $f6                   
/* 00630 808BFA40 4481C000 */  mtc1    $at, $f24                  ## $f24 = 120.00
/* 00634 808BFA44 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00638 808BFA48 26B40008 */  addiu   $s4, $s5, 0x0008           ## $s4 = 00000008
/* 0063C 808BFA4C 44124000 */  mfc1    $s2, $f8                   
/* 00640 808BFA50 27BE00CC */  addiu   $s8, $sp, 0x00CC           ## $s8 = FFFFFFF4
/* 00644 808BFA54 34178000 */  ori     $s7, $zero, 0x8000         ## $s7 = 00008000
/* 00648 808BFA58 00129400 */  sll     $s2, $s2, 16               
/* 0064C 808BFA5C 00129403 */  sra     $s2, $s2, 16               
/* 00650 808BFA60 27B600C0 */  addiu   $s6, $sp, 0x00C0           ## $s6 = FFFFFFE8
/* 00654 808BFA64 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
.L808BFA68:
/* 00658 808BFA68 3C014620 */  lui     $at, 0x4620                ## $at = 46200000
/* 0065C 808BFA6C 44816000 */  mtc1    $at, $f12                  ## $f12 = 10240.00
/* 00660 808BFA70 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00664 808BFA74 00000000 */  nop
/* 00668 808BFA78 44928000 */  mtc1    $s2, $f16                  ## $f16 = 0.00
/* 0066C 808BFA7C 00000000 */  nop
/* 00670 808BFA80 468084A0 */  cvt.s.w $f18, $f16                 
/* 00674 808BFA84 46120100 */  add.s   $f4, $f0, $f18             
/* 00678 808BFA88 4600218D */  trunc.w.s $f6, $f4                   
/* 0067C 808BFA8C 44023000 */  mfc1    $v0, $f6                   
/* 00680 808BFA90 00000000 */  nop
/* 00684 808BFA94 00028400 */  sll     $s0, $v0, 16               
/* 00688 808BFA98 00022400 */  sll     $a0, $v0, 16               
/* 0068C 808BFA9C 00108403 */  sra     $s0, $s0, 16               
/* 00690 808BFAA0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00694 808BFAA4 00042403 */  sra     $a0, $a0, 16               
/* 00698 808BFAA8 00102400 */  sll     $a0, $s0, 16               
/* 0069C 808BFAAC 46000506 */  mov.s   $f20, $f0                  
/* 006A0 808BFAB0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 006A4 808BFAB4 00042403 */  sra     $a0, $a0, 16               
/* 006A8 808BFAB8 4614C282 */  mul.s   $f10, $f24, $f20           
/* 006AC 808BFABC C6A80024 */  lwc1    $f8, 0x0024($s5)           ## 00000024
/* 006B0 808BFAC0 46000586 */  mov.s   $f22, $f0                  
/* 006B4 808BFAC4 4600C102 */  mul.s   $f4, $f24, $f0             
/* 006B8 808BFAC8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000008
/* 006BC 808BFACC 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFE8
/* 006C0 808BFAD0 460A4400 */  add.s   $f16, $f8, $f10            
/* 006C4 808BFAD4 E7B000C0 */  swc1    $f16, 0x00C0($sp)          
/* 006C8 808BFAD8 C6B2002C */  lwc1    $f18, 0x002C($s5)          ## 0000002C
/* 006CC 808BFADC 46049180 */  add.s   $f6, $f18, $f4             
/* 006D0 808BFAE0 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 006D4 808BFAE4 E7A600C8 */  swc1    $f6, 0x00C8($sp)           
/* 006D8 808BFAE8 461A0302 */  mul.s   $f12, $f0, $f26            
/* 006DC 808BFAEC 3C01808C */  lui     $at, %hi(D_808C0A70)       ## $at = 808C0000
/* 006E0 808BFAF0 C4280A70 */  lwc1    $f8, %lo(D_808C0A70)($at)  
/* 006E4 808BFAF4 02178821 */  addu    $s1, $s0, $s7              
/* 006E8 808BFAF8 00118C00 */  sll     $s1, $s1, 16               
/* 006EC 808BFAFC 00118C03 */  sra     $s1, $s1, 16               
/* 006F0 808BFB00 00112400 */  sll     $a0, $s1, 16               
/* 006F4 808BFB04 4608603C */  c.lt.s  $f12, $f8                  
/* 006F8 808BFB08 00000000 */  nop
/* 006FC 808BFB0C 45000015 */  bc1f    .L808BFB64                 
/* 00700 808BFB10 00000000 */  nop
/* 00704 808BFB14 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00708 808BFB18 00042403 */  sra     $a0, $a0, 16               
/* 0070C 808BFB1C 00112400 */  sll     $a0, $s1, 16               
/* 00710 808BFB20 46000506 */  mov.s   $f20, $f0                  
/* 00714 808BFB24 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00718 808BFB28 00042403 */  sra     $a0, $a0, 16               
/* 0071C 808BFB2C 4614C402 */  mul.s   $f16, $f24, $f20           
/* 00720 808BFB30 C6AA0024 */  lwc1    $f10, 0x0024($s5)          ## 00000024
/* 00724 808BFB34 46000586 */  mov.s   $f22, $f0                  
/* 00728 808BFB38 4600C182 */  mul.s   $f6, $f24, $f0             
/* 0072C 808BFB3C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000008
/* 00730 808BFB40 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFE8
/* 00734 808BFB44 46105480 */  add.s   $f18, $f10, $f16           
/* 00738 808BFB48 E7B200C0 */  swc1    $f18, 0x00C0($sp)          
/* 0073C 808BFB4C C6A4002C */  lwc1    $f4, 0x002C($s5)           ## 0000002C
/* 00740 808BFB50 46062200 */  add.s   $f8, $f4, $f6              
/* 00744 808BFB54 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 00748 808BFB58 E7A800C8 */  swc1    $f8, 0x00C8($sp)           
/* 0074C 808BFB5C 461A0302 */  mul.s   $f12, $f0, $f26            
/* 00750 808BFB60 00000000 */  nop
.L808BFB64:
/* 00754 808BFB64 4614E282 */  mul.s   $f10, $f28, $f20           
/* 00758 808BFB68 3C07808C */  lui     $a3, %hi(D_808C09BC)       ## $a3 = 808C0000
/* 0075C 808BFB6C 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 00760 808BFB70 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 00764 808BFB74 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00768 808BFB78 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0076C 808BFB7C 240C0096 */  addiu   $t4, $zero, 0x0096         ## $t4 = 00000096
/* 00770 808BFB80 460C5402 */  mul.s   $f16, $f10, $f12           
/* 00774 808BFB84 240D00AA */  addiu   $t5, $zero, 0x00AA         ## $t5 = 000000AA
/* 00778 808BFB88 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0077C 808BFB8C 4616E482 */  mul.s   $f18, $f28, $f22           
/* 00780 808BFB90 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00784 808BFB94 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 00788 808BFB98 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0078C 808BFB9C E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 00790 808BFBA0 E7BE00D0 */  swc1    $f30, 0x00D0($sp)          
/* 00794 808BFBA4 AFB9003C */  sw      $t9, 0x003C($sp)           
/* 00798 808BFBA8 460C9102 */  mul.s   $f4, $f18, $f12            
/* 0079C 808BFBAC AFB80038 */  sw      $t8, 0x0038($sp)           
/* 007A0 808BFBB0 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 007A4 808BFBB4 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 007A8 808BFBB8 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 007AC 808BFBBC AFAC0020 */  sw      $t4, 0x0020($sp)           
/* 007B0 808BFBC0 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 007B4 808BFBC4 E7A400D4 */  swc1    $f4, 0x00D4($sp)           
/* 007B8 808BFBC8 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 007BC 808BFBCC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 007C0 808BFBD0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 007C4 808BFBD4 24E709BC */  addiu   $a3, $a3, %lo(D_808C09BC)  ## $a3 = 808C09BC
/* 007C8 808BFBD8 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 007CC 808BFBDC 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000008
/* 007D0 808BFBE0 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFF4
/* 007D4 808BFBE4 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 007D8 808BFBE8 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 007DC 808BFBEC AFA00030 */  sw      $zero, 0x0030($sp)         
/* 007E0 808BFBF0 26522AAA */  addiu   $s2, $s2, 0x2AAA           ## $s2 = 00002AAA
/* 007E4 808BFBF4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 007E8 808BFBF8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 007EC 808BFBFC 00129400 */  sll     $s2, $s2, 16               
/* 007F0 808BFC00 1661FF99 */  bne     $s3, $at, .L808BFA68       
/* 007F4 808BFC04 00129403 */  sra     $s2, $s2, 16               
/* 007F8 808BFC08 8FBF009C */  lw      $ra, 0x009C($sp)           
.L808BFC0C:
/* 007FC 808BFC0C D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00800 808BFC10 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00804 808BFC14 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00808 808BFC18 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 0080C 808BFC1C D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00810 808BFC20 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00814 808BFC24 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00818 808BFC28 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 0081C 808BFC2C 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00820 808BFC30 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00824 808BFC34 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00828 808BFC38 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 0082C 808BFC3C 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00830 808BFC40 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00834 808BFC44 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00838 808BFC48 03E00008 */  jr      $ra                        
/* 0083C 808BFC4C 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
