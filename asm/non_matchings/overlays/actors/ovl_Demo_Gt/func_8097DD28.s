.late_rodata
glabel D_80982A80
    .float 0.1

glabel D_80982A84
    .float 0.7

.text
glabel func_8097DD28
/* 006B8 8097DD28 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 006BC 8097DD2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006C0 8097DD30 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 006C4 8097DD34 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 006C8 8097DD38 4600218D */  trunc.w.s $f6, $f4                   
/* 006CC 8097DD3C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 2.00
/* 006D0 8097DD40 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 006D4 8097DD44 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 006D8 8097DD48 4481D000 */  mtc1    $at, $f26                  ## $f26 = 75.00
/* 006DC 8097DD4C AFB40088 */  sw      $s4, 0x0088($sp)           
/* 006E0 8097DD50 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 006E4 8097DD54 3C018098 */  lui     $at, %hi(D_80982A80)       ## $at = 80980000
/* 006E8 8097DD58 44143000 */  mfc1    $s4, $f6                   
/* 006EC 8097DD5C C4382A80 */  lwc1    $f24, %lo(D_80982A80)($at) 
/* 006F0 8097DD60 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 006F4 8097DD64 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 006F8 8097DD68 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 006FC 8097DD6C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00700 8097DD70 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00704 8097DD74 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00708 8097DD78 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 0070C 8097DD7C AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00710 8097DD80 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00714 8097DD84 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00718 8097DD88 3C1E0600 */  lui     $s8, 0x0600                ## $s8 = 06000000
/* 0071C 8097DD8C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 30.00
/* 00720 8097DD90 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 00724 8097DD94 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 00728 8097DD98 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 0072C 8097DD9C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00730 8097DDA0 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00734 8097DDA4 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00738 8097DDA8 AFA400D0 */  sw      $a0, 0x00D0($sp)           
/* 0073C 8097DDAC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00740 8097DDB0 27DE0EA0 */  addiu   $s8, $s8, 0x0EA0           ## $s8 = 06000EA0
/* 00744 8097DDB4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00748 8097DDB8 27B600C4 */  addiu   $s6, $sp, 0x00C4           ## $s6 = FFFFFFF4
/* 0074C 8097DDBC 27B700B8 */  addiu   $s7, $sp, 0x00B8           ## $s7 = FFFFFFE8
/* 00750 8097DDC0 2694001E */  addiu   $s4, $s4, 0x001E           ## $s4 = 0000001E
.L8097DDC4:
/* 00754 8097DDC4 00112400 */  sll     $a0, $s1, 16               
/* 00758 8097DDC8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0075C 8097DDCC 00042403 */  sra     $a0, $a0, 16               
/* 00760 8097DDD0 46160202 */  mul.s   $f8, $f0, $f22             
/* 00764 8097DDD4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00768 8097DDD8 E7A800C4 */  swc1    $f8, 0x00C4($sp)           
/* 0076C 8097DDDC 461A0282 */  mul.s   $f10, $f0, $f26            
/* 00770 8097DDE0 00112400 */  sll     $a0, $s1, 16               
/* 00774 8097DDE4 00042403 */  sra     $a0, $a0, 16               
/* 00778 8097DDE8 461C5400 */  add.s   $f16, $f10, $f28           
/* 0077C 8097DDEC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00780 8097DDF0 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 00784 8097DDF4 46160482 */  mul.s   $f18, $f0, $f22            
/* 00788 8097DDF8 E7BE00B8 */  swc1    $f30, 0x00B8($sp)          
/* 0078C 8097DDFC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00790 8097DE00 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 00794 8097DE04 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00798 8097DE08 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 0079C 8097DE0C C7A800CC */  lwc1    $f8, 0x00CC($sp)           
/* 007A0 8097DE10 C7B000C4 */  lwc1    $f16, 0x00C4($sp)          
/* 007A4 8097DE14 46040182 */  mul.s   $f6, $f0, $f4              
/* 007A8 8097DE18 00000000 */  nop
/* 007AC 8097DE1C 46184282 */  mul.s   $f10, $f8, $f24            
/* 007B0 8097DE20 E7A600BC */  swc1    $f6, 0x00BC($sp)           
/* 007B4 8097DE24 C7A600C8 */  lwc1    $f6, 0x00C8($sp)           
/* 007B8 8097DE28 E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
/* 007BC 8097DE2C C6520000 */  lwc1    $f18, 0x0000($s2)          ## 00000000
/* 007C0 8097DE30 46128100 */  add.s   $f4, $f16, $f18            
/* 007C4 8097DE34 E7A400C4 */  swc1    $f4, 0x00C4($sp)           
/* 007C8 8097DE38 C64A0004 */  lwc1    $f10, 0x0004($s2)          ## 00000004
/* 007CC 8097DE3C 460A3400 */  add.s   $f16, $f6, $f10            
/* 007D0 8097DE40 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 007D4 8097DE44 C6520008 */  lwc1    $f18, 0x0008($s2)          ## 00000008
/* 007D8 8097DE48 46124100 */  add.s   $f4, $f8, $f18             
/* 007DC 8097DE4C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007E0 8097DE50 E7A400CC */  swc1    $f4, 0x00CC($sp)           
/* 007E4 8097DE54 4618003C */  c.lt.s  $f0, $f24                  
/* 007E8 8097DE58 3C018098 */  lui     $at, %hi(D_80982A84)       ## $at = 80980000
/* 007EC 8097DE5C 45000003 */  bc1f    .L8097DE6C                 
/* 007F0 8097DE60 00000000 */  nop
/* 007F4 8097DE64 10000009 */  beq     $zero, $zero, .L8097DE8C   
/* 007F8 8097DE68 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L8097DE6C:
/* 007FC 8097DE6C C4262A84 */  lwc1    $f6, %lo(D_80982A84)($at)  
/* 00800 8097DE70 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 00804 8097DE74 4606003C */  c.lt.s  $f0, $f6                   
/* 00808 8097DE78 00000000 */  nop
/* 0080C 8097DE7C 45000003 */  bc1f    .L8097DE8C                 
/* 00810 8097DE80 00000000 */  nop
/* 00814 8097DE84 10000001 */  beq     $zero, $zero, .L8097DE8C   
/* 00818 8097DE88 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L8097DE8C:
/* 0081C 8097DE8C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00820 8097DE90 00000000 */  nop
/* 00824 8097DE94 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00828 8097DE98 46000506 */  mov.s   $f20, $f0                  
/* 0082C 8097DE9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00830 8097DEA0 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00834 8097DEA4 240FFF09 */  addiu   $t7, $zero, 0xFF09         ## $t7 = FFFFFF09
/* 00838 8097DEA8 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 0083C 8097DEAC 460AA402 */  mul.s   $f16, $f20, $f10           
/* 00840 8097DEB0 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00844 8097DEB4 240A012C */  addiu   $t2, $zero, 0x012C         ## $t2 = 0000012C
/* 00848 8097DEB8 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 0084C 8097DEBC 240C0186 */  addiu   $t4, $zero, 0x0186         ## $t4 = 00000186
/* 00850 8097DEC0 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 00854 8097DEC4 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00858 8097DEC8 46168200 */  add.s   $f8, $f16, $f22            
/* 0085C 8097DECC AFAA002C */  sw      $t2, 0x002C($sp)           
/* 00860 8097DED0 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00864 8097DED4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00868 8097DED8 4600448D */  trunc.w.s $f18, $f8                  
/* 0086C 8097DEDC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00870 8097DEE0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00874 8097DEE4 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFF4
/* 00878 8097DEE8 44089000 */  mfc1    $t0, $f18                  
/* 0087C 8097DEEC 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFE8
/* 00880 8097DEF0 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
/* 00884 8097DEF4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00888 8097DEF8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0088C 8097DEFC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00890 8097DF00 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 00894 8097DF04 AFBE003C */  sw      $s8, 0x003C($sp)           
/* 00898 8097DF08 0C00A7A3 */  jal     func_80029E8C
              
/* 0089C 8097DF0C AFA80024 */  sw      $t0, 0x0024($sp)           
/* 008A0 8097DF10 26312000 */  addiu   $s1, $s1, 0x2000           ## $s1 = 00002000
/* 008A4 8097DF14 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 008A8 8097DF18 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 008AC 8097DF1C 00118C00 */  sll     $s1, $s1, 16               
/* 008B0 8097DF20 1661FFA8 */  bne     $s3, $at, .L8097DDC4       
/* 008B4 8097DF24 00118C03 */  sra     $s1, $s1, 16               
/* 008B8 8097DF28 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 008BC 8097DF2C D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 008C0 8097DF30 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 008C4 8097DF34 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 008C8 8097DF38 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 008CC 8097DF3C D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 008D0 8097DF40 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 008D4 8097DF44 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 008D8 8097DF48 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 008DC 8097DF4C 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 008E0 8097DF50 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 008E4 8097DF54 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 008E8 8097DF58 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 008EC 8097DF5C 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 008F0 8097DF60 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 008F4 8097DF64 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 008F8 8097DF68 03E00008 */  jr      $ra                        
/* 008FC 8097DF6C 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
