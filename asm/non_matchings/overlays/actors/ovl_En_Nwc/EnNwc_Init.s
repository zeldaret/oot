glabel EnNwc_Init
/* 0073C 80ABC81C 27BDFD60 */  addiu   $sp, $sp, 0xFD60           ## $sp = FFFFFD60
/* 00740 80ABC820 AFB4003C */  sw      $s4, 0x003C($sp)           
/* 00744 80ABC824 3C1480AC */  lui     $s4, %hi(D_80ABCAA4)       ## $s4 = 80AC0000
/* 00748 80ABC828 2694CAA4 */  addiu   $s4, $s4, %lo(D_80ABCAA4)  ## $s4 = 80ABCAA4
/* 0074C 80ABC82C AFB50040 */  sw      $s5, 0x0040($sp)           
/* 00750 80ABC830 AFB30038 */  sw      $s3, 0x0038($sp)           
/* 00754 80ABC834 AFB20034 */  sw      $s2, 0x0034($sp)           
/* 00758 80ABC838 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 0075C 80ABC83C 27A20058 */  addiu   $v0, $sp, 0x0058           ## $v0 = FFFFFDB8
/* 00760 80ABC840 3C0380AC */  lui     $v1, %hi(D_80ABCA80)       ## $v1 = 80AC0000
/* 00764 80ABC844 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00768 80ABC848 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0076C 80ABC84C AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00770 80ABC850 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00774 80ABC854 F7B80020 */  sdc1    $f24, 0x0020($sp)          
/* 00778 80ABC858 F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 0077C 80ABC85C F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 00780 80ABC860 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 00784 80ABC864 AE82000C */  sw      $v0, 0x000C($s4)           ## 80ABCAB0
/* 00788 80ABC868 2463CA80 */  addiu   $v1, $v1, %lo(D_80ABCA80)  ## $v1 = 80ABCA80
/* 0078C 80ABC86C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L80ABC870:
/* 00790 80ABC870 0060C825 */  or      $t9, $v1, $zero            ## $t9 = 80ABCA80
/* 00794 80ABC874 00404025 */  or      $t0, $v0, $zero            ## $t0 = FFFFFDB8
/* 00798 80ABC878 24690024 */  addiu   $t1, $v1, 0x0024           ## $t1 = 80ABCAA4
.L80ABC87C:
/* 0079C 80ABC87C 8F380000 */  lw      $t8, 0x0000($t9)           ## 80ABCA80
/* 007A0 80ABC880 2739000C */  addiu   $t9, $t9, 0x000C           ## $t9 = 80ABCA8C
/* 007A4 80ABC884 2508000C */  addiu   $t0, $t0, 0x000C           ## $t0 = FFFFFDC4
/* 007A8 80ABC888 AD18FFF4 */  sw      $t8, -0x000C($t0)          ## FFFFFDB8
/* 007AC 80ABC88C 8F2FFFF8 */  lw      $t7, -0x0008($t9)          ## 80ABCA84
/* 007B0 80ABC890 AD0FFFF8 */  sw      $t7, -0x0008($t0)          ## FFFFFDBC
/* 007B4 80ABC894 8F38FFFC */  lw      $t8, -0x0004($t9)          ## 80ABCA88
/* 007B8 80ABC898 1729FFF8 */  bne     $t9, $t1, .L80ABC87C       
/* 007BC 80ABC89C AD18FFFC */  sw      $t8, -0x0004($t0)          ## FFFFFDC0
/* 007C0 80ABC8A0 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 007C4 80ABC8A4 2A210010 */  slti    $at, $s1, 0x0010           
/* 007C8 80ABC8A8 1420FFF1 */  bne     $at, $zero, .L80ABC870     
/* 007CC 80ABC8AC 24420024 */  addiu   $v0, $v0, 0x0024           ## $v0 = FFFFFDDC
/* 007D0 80ABC8B0 2650014C */  addiu   $s0, $s2, 0x014C           ## $s0 = 0000014C
/* 007D4 80ABC8B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000014C
/* 007D8 80ABC8B8 0C016EFE */  jal     Collider_InitJntSph              
/* 007DC 80ABC8BC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 007E0 80ABC8C0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 007E4 80ABC8C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000014C
/* 007E8 80ABC8C8 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 007EC 80ABC8CC 0C016F94 */  jal     Collider_SetJntSph_Set3              ## ClObjJntSph_set3
/* 007F0 80ABC8D0 02803825 */  or      $a3, $s4, $zero            ## $a3 = 80ABCAA4
/* 007F4 80ABC8D4 240A0010 */  addiu   $t2, $zero, 0x0010         ## $t2 = 00000010
/* 007F8 80ABC8D8 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000010
/* 007FC 80ABC8DC A24A016C */  sb      $t2, 0x016C($s2)           ## 0000016C
/* 00800 80ABC8E0 26500170 */  addiu   $s0, $s2, 0x0170           ## $s0 = 00000170
/* 00804 80ABC8E4 19600020 */  blez    $t3, .L80ABC968            
/* 00808 80ABC8E8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0080C 80ABC8EC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00810 80ABC8F0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 00814 80ABC8F4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00818 80ABC8F8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 50.00
/* 0081C 80ABC8FC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00820 80ABC900 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 00824 80ABC904 24140005 */  addiu   $s4, $zero, 0x0005         ## $s4 = 00000005
/* 00828 80ABC908 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
.L80ABC90C:
/* 0082C 80ABC90C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00830 80ABC910 A2130000 */  sb      $s3, 0x0000($s0)           ## 00000170
/* 00834 80ABC914 46140102 */  mul.s   $f4, $f0, $f20             
/* 00838 80ABC918 C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 0083C 80ABC91C 46162181 */  sub.s   $f6, $f4, $f22             
/* 00840 80ABC920 46083280 */  add.s   $f10, $f6, $f8             
/* 00844 80ABC924 E60A0008 */  swc1    $f10, 0x0008($s0)          ## 00000178
/* 00848 80ABC928 C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 0084C 80ABC92C 46188480 */  add.s   $f18, $f16, $f24           
/* 00850 80ABC930 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00854 80ABC934 E612000C */  swc1    $f18, 0x000C($s0)          ## 0000017C
/* 00858 80ABC938 46140102 */  mul.s   $f4, $f0, $f20             
/* 0085C 80ABC93C C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 00860 80ABC940 A6140036 */  sh      $s4, 0x0036($s0)           ## 000001A6
/* 00864 80ABC944 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00868 80ABC948 2610005C */  addiu   $s0, $s0, 0x005C           ## $s0 = 000001CC
/* 0086C 80ABC94C 46162181 */  sub.s   $f6, $f4, $f22             
/* 00870 80ABC950 46083280 */  add.s   $f10, $f6, $f8             
/* 00874 80ABC954 E60AFFB4 */  swc1    $f10, -0x004C($s0)         ## 00000180
/* 00878 80ABC958 92AC016C */  lbu     $t4, 0x016C($s5)           ## 0000016C
/* 0087C 80ABC95C 022C082A */  slt     $at, $s1, $t4              
/* 00880 80ABC960 1420FFEA */  bne     $at, $zero, .L80ABC90C     
/* 00884 80ABC964 00000000 */  nop
.L80ABC968:
/* 00888 80ABC968 3C0580AC */  lui     $a1, %hi(func_80ABC9D0)    ## $a1 = 80AC0000
/* 0088C 80ABC96C 24A5C9D0 */  addiu   $a1, $a1, %lo(func_80ABC9D0) ## $a1 = 80ABC9D0
/* 00890 80ABC970 0C2AF038 */  jal     func_80ABC0E0              
/* 00894 80ABC974 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00898 80ABC978 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 0089C 80ABC97C D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 008A0 80ABC980 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 008A4 80ABC984 D7B80020 */  ldc1    $f24, 0x0020($sp)          
/* 008A8 80ABC988 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 008AC 80ABC98C 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 008B0 80ABC990 8FB20034 */  lw      $s2, 0x0034($sp)           
/* 008B4 80ABC994 8FB30038 */  lw      $s3, 0x0038($sp)           
/* 008B8 80ABC998 8FB4003C */  lw      $s4, 0x003C($sp)           
/* 008BC 80ABC99C 8FB50040 */  lw      $s5, 0x0040($sp)           
/* 008C0 80ABC9A0 03E00008 */  jr      $ra                        
/* 008C4 80ABC9A4 27BD02A0 */  addiu   $sp, $sp, 0x02A0           ## $sp = 00000000
