glabel func_808B280C
/* 0001C 808B280C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00020 808B2810 3C03808B */  lui     $v1, %hi(D_808B2E10)       ## $v1 = 808B0000
/* 00024 808B2814 24632E10 */  addiu   $v1, $v1, %lo(D_808B2E10)  ## $v1 = 808B2E10
/* 00028 808B2818 846E0000 */  lh      $t6, 0x0000($v1)           ## 808B2E10
/* 0002C 808B281C 846F0002 */  lh      $t7, 0x0002($v1)           ## 808B2E12
/* 00030 808B2820 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00034 808B2824 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00038 808B2828 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 0003C 808B282C AFB50030 */  sw      $s5, 0x0030($sp)           
/* 00040 808B2830 468021A0 */  cvt.s.w $f6, $f4                   
/* 00044 808B2834 AFB4002C */  sw      $s4, 0x002C($sp)           
/* 00048 808B2838 AFB30028 */  sw      $s3, 0x0028($sp)           
/* 0004C 808B283C AFB20024 */  sw      $s2, 0x0024($sp)           
/* 00050 808B2840 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00054 808B2844 468042A0 */  cvt.s.w $f10, $f8                  
/* 00058 808B2848 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0005C 808B284C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00060 808B2850 8C911C44 */  lw      $s1, 0x1C44($a0)           ## 00001C44
/* 00064 808B2854 3C10808B */  lui     $s0, %hi(D_808B2E14)       ## $s0 = 808B0000
/* 00068 808B2858 3C15808B */  lui     $s5, %hi(D_808B2E20)       ## $s5 = 808B0000
/* 0006C 808B285C E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 00070 808B2860 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 00074 808B2864 26B52E20 */  addiu   $s5, $s5, %lo(D_808B2E20)  ## $s5 = 808B2E20
/* 00078 808B2868 26102E14 */  addiu   $s0, $s0, %lo(D_808B2E14)  ## $s0 = 808B2E14
/* 0007C 808B286C 27B20058 */  addiu   $s2, $sp, 0x0058           ## $s2 = FFFFFFF0
/* 00080 808B2870 27B3004C */  addiu   $s3, $sp, 0x004C           ## $s3 = FFFFFFE4
/* 00084 808B2874 27B40040 */  addiu   $s4, $sp, 0x0040           ## $s4 = FFFFFFD8
/* 00088 808B2878 E7A0005C */  swc1    $f0, 0x005C($sp)           
/* 0008C 808B287C E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 00090 808B2880 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 00094 808B2884 86180000 */  lh      $t8, 0x0000($s0)           ## 808B2E14
.L808B2888:
/* 00098 808B2888 86190002 */  lh      $t9, 0x0002($s0)           ## 808B2E16
/* 0009C 808B288C 86080004 */  lh      $t0, 0x0004($s0)           ## 808B2E18
/* 000A0 808B2890 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 000A4 808B2894 86090006 */  lh      $t1, 0x0006($s0)           ## 808B2E1A
/* 000A8 808B2898 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 000AC 808B289C 468084A0 */  cvt.s.w $f18, $f16                 
/* 000B0 808B28A0 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 000B4 808B28A4 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 000B8 808B28A8 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFFF0
/* 000BC 808B28AC 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE4
/* 000C0 808B28B0 468021A0 */  cvt.s.w $f6, $f4                   
/* 000C4 808B28B4 E7B2004C */  swc1    $f18, 0x004C($sp)          
/* 000C8 808B28B8 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFD8
/* 000CC 808B28BC 468042A0 */  cvt.s.w $f10, $f8                  
/* 000D0 808B28C0 E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 000D4 808B28C4 468084A0 */  cvt.s.w $f18, $f16                 
/* 000D8 808B28C8 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 000DC 808B28CC E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 000E0 808B28D0 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 000E4 808B28D4 8E27002C */  lw      $a3, 0x002C($s1)           ## 0000002C
/* 000E8 808B28D8 0C0333D2 */  jal     Math3D_TriChkPointParaYSlopedY              
/* 000EC 808B28DC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000F0 808B28E0 10400003 */  beq     $v0, $zero, .L808B28F0     
/* 000F4 808B28E4 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 808B2E18
/* 000F8 808B28E8 10000004 */  beq     $zero, $zero, .L808B28FC   
/* 000FC 808B28EC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B28F0:
/* 00100 808B28F0 5615FFE5 */  bnel    $s0, $s5, .L808B2888       
/* 00104 808B28F4 86180000 */  lh      $t8, 0x0000($s0)           ## 808B2E18
/* 00108 808B28F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B28FC:
/* 0010C 808B28FC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00110 808B2900 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00114 808B2904 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00118 808B2908 8FB20024 */  lw      $s2, 0x0024($sp)           
/* 0011C 808B290C 8FB30028 */  lw      $s3, 0x0028($sp)           
/* 00120 808B2910 8FB4002C */  lw      $s4, 0x002C($sp)           
/* 00124 808B2914 8FB50030 */  lw      $s5, 0x0030($sp)           
/* 00128 808B2918 03E00008 */  jr      $ra                        
/* 0012C 808B291C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
