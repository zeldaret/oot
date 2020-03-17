glabel EnFdFire_Draw
/* 00730 80A0EBE0 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 00734 80A0EBE4 3C0F80A1 */  lui     $t7, %hi(D_80A0F0C4)       ## $t7 = 80A10000
/* 00738 80A0EBE8 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0073C 80A0EBEC AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00740 80A0EBF0 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00744 80A0EBF4 AFA400C0 */  sw      $a0, 0x00C0($sp)           
/* 00748 80A0EBF8 25EFF0C4 */  addiu   $t7, $t7, %lo(D_80A0F0C4)  ## $t7 = 80A0F0C4
/* 0074C 80A0EBFC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0F0C4
/* 00750 80A0EC00 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0F0C8
/* 00754 80A0EC04 27AE00B8 */  addiu   $t6, $sp, 0x00B8           ## $t6 = FFFFFFF8
/* 00758 80A0EC08 3C0980A1 */  lui     $t1, %hi(D_80A0F0CC)       ## $t1 = 80A10000
/* 0075C 80A0EC0C 2529F0CC */  addiu   $t1, $t1, %lo(D_80A0F0CC)  ## $t1 = 80A0F0CC
/* 00760 80A0EC10 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF8
/* 00764 80A0EC14 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFFC
/* 00768 80A0EC18 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A0F0D0
/* 0076C 80A0EC1C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A0F0CC
/* 00770 80A0EC20 27A800B0 */  addiu   $t0, $sp, 0x00B0           ## $t0 = FFFFFFF0
/* 00774 80A0EC24 3C0D80A1 */  lui     $t5, %hi(D_80A0F0D4)       ## $t5 = 80A10000
/* 00778 80A0EC28 25ADF0D4 */  addiu   $t5, $t5, %lo(D_80A0F0D4)  ## $t5 = 80A0F0D4
/* 0077C 80A0EC2C AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFF4
/* 00780 80A0EC30 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFF0
/* 00784 80A0EC34 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80A0F0D4
/* 00788 80A0EC38 27AC009C */  addiu   $t4, $sp, 0x009C           ## $t4 = FFFFFFDC
/* 0078C 80A0EC3C 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80A0F0D8
/* 00790 80A0EC40 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFDC
/* 00794 80A0EC44 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80A0F0DC
/* 00798 80A0EC48 3C1980A1 */  lui     $t9, %hi(D_80A0F0E0)       ## $t9 = 80A10000
/* 0079C 80A0EC4C 2739F0E0 */  addiu   $t9, $t9, %lo(D_80A0F0E0)  ## $t9 = 80A0F0E0
/* 007A0 80A0EC50 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFE0
/* 007A4 80A0EC54 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE4
/* 007A8 80A0EC58 8F290000 */  lw      $t1, 0x0000($t9)           ## 80A0F0E0
/* 007AC 80A0EC5C 27B80090 */  addiu   $t8, $sp, 0x0090           ## $t8 = FFFFFFD0
/* 007B0 80A0EC60 8F280004 */  lw      $t0, 0x0004($t9)           ## 80A0F0E4
/* 007B4 80A0EC64 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFFD0
/* 007B8 80A0EC68 8F290008 */  lw      $t1, 0x0008($t9)           ## 80A0F0E8
/* 007BC 80A0EC6C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 007C0 80A0EC70 AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFD4
/* 007C4 80A0EC74 AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFFD8
/* 007C8 80A0EC78 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 007CC 80A0EC7C 3C0680A1 */  lui     $a2, %hi(D_80A0F0F0)       ## $a2 = 80A10000
/* 007D0 80A0EC80 24C6F0F0 */  addiu   $a2, $a2, %lo(D_80A0F0F0)  ## $a2 = 80A0F0F0
/* 007D4 80A0EC84 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFAC
/* 007D8 80A0EC88 2407023C */  addiu   $a3, $zero, 0x023C         ## $a3 = 0000023C
/* 007DC 80A0EC8C 0C031AB1 */  jal     func_800C6AC4              
/* 007E0 80A0EC90 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007E4 80A0EC94 8FA200C0 */  lw      $v0, 0x00C0($sp)           
/* 007E8 80A0EC98 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 007EC 80A0EC9C C44C0024 */  lwc1    $f12, 0x0024($v0)          ## 00000024
/* 007F0 80A0ECA0 C44E0028 */  lwc1    $f14, 0x0028($v0)          ## 00000028
/* 007F4 80A0ECA4 0C034261 */  jal     Matrix_Translate              
/* 007F8 80A0ECA8 8C46002C */  lw      $a2, 0x002C($v0)           ## 0000002C
/* 007FC 80A0ECAC 8FA500C0 */  lw      $a1, 0x00C0($sp)           
/* 00800 80A0ECB0 27A4009C */  addiu   $a0, $sp, 0x009C           ## $a0 = FFFFFFDC
/* 00804 80A0ECB4 24A5005C */  addiu   $a1, $a1, 0x005C           ## $a1 = 0000005C
/* 00808 80A0ECB8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 0080C 80A0ECBC AFA50048 */  sw      $a1, 0x0048($sp)           
/* 00810 80A0ECC0 A7A20052 */  sh      $v0, 0x0052($sp)           
/* 00814 80A0ECC4 862A07A0 */  lh      $t2, 0x07A0($s1)           ## 000007A0
/* 00818 80A0ECC8 000A5880 */  sll     $t3, $t2,  2               
/* 0081C 80A0ECCC 022B6021 */  addu    $t4, $s1, $t3              
/* 00820 80A0ECD0 0C016A7D */  jal     func_8005A9F4              
/* 00824 80A0ECD4 8D840790 */  lw      $a0, 0x0790($t4)           ## 00000790
/* 00828 80A0ECD8 87AD0052 */  lh      $t5, 0x0052($sp)           
/* 0082C 80A0ECDC 01A21823 */  subu    $v1, $t5, $v0              
/* 00830 80A0ECE0 00032400 */  sll     $a0, $v1, 16               
/* 00834 80A0ECE4 A7A3008E */  sh      $v1, 0x008E($sp)           
/* 00838 80A0ECE8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0083C 80A0ECEC 00042403 */  sra     $a0, $a0, 16               
/* 00840 80A0ECF0 46000005 */  abs.s   $f0, $f0                   
/* 00844 80A0ECF4 87A4008E */  lh      $a0, 0x008E($sp)           
/* 00848 80A0ECF8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0084C 80A0ECFC E7A00084 */  swc1    $f0, 0x0084($sp)           
/* 00850 80A0ED00 E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 00854 80A0ED04 27A4009C */  addiu   $a0, $sp, 0x009C           ## $a0 = FFFFFFDC
/* 00858 80A0ED08 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 0085C 80A0ED0C 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 00860 80A0ED10 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00864 80A0ED14 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00868 80A0ED18 00000000 */  nop
/* 0086C 80A0ED1C 46040183 */  div.s   $f6, $f0, $f4              
/* 00870 80A0ED20 E7A60080 */  swc1    $f6, 0x0080($sp)           
/* 00874 80A0ED24 862E07A0 */  lh      $t6, 0x07A0($s1)           ## 000007A0
/* 00878 80A0ED28 000E7880 */  sll     $t7, $t6,  2               
/* 0087C 80A0ED2C 022FC021 */  addu    $t8, $s1, $t7              
/* 00880 80A0ED30 0C016A7D */  jal     func_8005A9F4              
/* 00884 80A0ED34 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 00888 80A0ED38 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0088C 80A0ED3C 0041C821 */  addu    $t9, $v0, $at              
/* 00890 80A0ED40 00194400 */  sll     $t0, $t9, 16               
/* 00894 80A0ED44 00084C03 */  sra     $t1, $t0, 16               
/* 00898 80A0ED48 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 0089C 80A0ED4C 3C0180A1 */  lui     $at, %hi(D_80A0F138)       ## $at = 80A10000
/* 008A0 80A0ED50 C430F138 */  lwc1    $f16, %lo(D_80A0F138)($at) 
/* 008A4 80A0ED54 468042A0 */  cvt.s.w $f10, $f8                  
/* 008A8 80A0ED58 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 008AC 80A0ED5C 46105302 */  mul.s   $f12, $f10, $f16           
/* 008B0 80A0ED60 0C034348 */  jal     Matrix_RotateY              
/* 008B4 80A0ED64 00000000 */  nop
/* 008B8 80A0ED68 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 008BC 80A0ED6C 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 008C0 80A0ED70 C7B20088 */  lwc1    $f18, 0x0088($sp)          
/* 008C4 80A0ED74 C7A80080 */  lwc1    $f8, 0x0080($sp)           
/* 008C8 80A0ED78 3C0180A1 */  lui     $at, %hi(D_80A0F13C)       ## $at = 80A10000
/* 008CC 80A0ED7C 46049182 */  mul.s   $f6, $f18, $f4             
/* 008D0 80A0ED80 C430F13C */  lwc1    $f16, %lo(D_80A0F13C)($at) 
/* 008D4 80A0ED84 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 008D8 80A0ED88 46083282 */  mul.s   $f10, $f6, $f8             
/* 008DC 80A0ED8C 00000000 */  nop
/* 008E0 80A0ED90 46105302 */  mul.s   $f12, $f10, $f16           
/* 008E4 80A0ED94 0C0343B5 */  jal     Matrix_RotateZ              
/* 008E8 80A0ED98 00000000 */  nop
/* 008EC 80A0ED9C 8FAA00C0 */  lw      $t2, 0x00C0($sp)           
/* 008F0 80A0EDA0 3C0180A1 */  lui     $at, %hi(D_80A0F140)       ## $at = 80A10000
/* 008F4 80A0EDA4 C424F140 */  lwc1    $f4, %lo(D_80A0F140)($at)  
/* 008F8 80A0EDA8 C55201A0 */  lwc1    $f18, 0x01A0($t2)          ## 000001A0
/* 008FC 80A0EDAC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00900 80A0EDB0 46049382 */  mul.s   $f14, $f18, $f4            
/* 00904 80A0EDB4 44067000 */  mfc1    $a2, $f14                  
/* 00908 80A0EDB8 E7AE00A4 */  swc1    $f14, 0x00A4($sp)          
/* 0090C 80A0EDBC E7AE00A0 */  swc1    $f14, 0x00A0($sp)          
/* 00910 80A0EDC0 E7AE009C */  swc1    $f14, 0x009C($sp)          
/* 00914 80A0EDC4 0C0342A3 */  jal     Matrix_Scale              
/* 00918 80A0EDC8 46007306 */  mov.s   $f12, $f14                 
/* 0091C 80A0EDCC 3C0180A1 */  lui     $at, %hi(D_80A0F144)       ## $at = 80A10000
/* 00920 80A0EDD0 C420F144 */  lwc1    $f0, %lo(D_80A0F144)($at)  
/* 00924 80A0EDD4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00928 80A0EDD8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0092C 80A0EDDC 3C0180A1 */  lui     $at, %hi(D_80A0F148)       ## $at = 80A10000
/* 00930 80A0EDE0 C7A20084 */  lwc1    $f2, 0x0084($sp)           
/* 00934 80A0EDE4 C428F148 */  lwc1    $f8, %lo(D_80A0F148)($at)  
/* 00938 80A0EDE8 C7B00080 */  lwc1    $f16, 0x0080($sp)          
/* 0093C 80A0EDEC 46024282 */  mul.s   $f10, $f8, $f2             
/* 00940 80A0EDF0 00000000 */  nop
/* 00944 80A0EDF4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00948 80A0EDF8 460C9080 */  add.s   $f2, $f18, $f12            
/* 0094C 80A0EDFC 4600103C */  c.lt.s  $f2, $f0                   
/* 00950 80A0EE00 E7A20084 */  swc1    $f2, 0x0084($sp)           
/* 00954 80A0EE04 45000002 */  bc1f    .L80A0EE10                 
/* 00958 80A0EE08 00000000 */  nop
/* 0095C 80A0EE0C E7A00084 */  swc1    $f0, 0x0084($sp)           
.L80A0EE10:
/* 00960 80A0EE10 C7AE0084 */  lwc1    $f14, 0x0084($sp)          
/* 00964 80A0EE14 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00968 80A0EE18 460E6103 */  div.s   $f4, $f12, $f14            
/* 0096C 80A0EE1C 44062000 */  mfc1    $a2, $f4                   
/* 00970 80A0EE20 0C0342A3 */  jal     Matrix_Scale              
/* 00974 80A0EE24 00000000 */  nop
/* 00978 80A0EE28 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0097C 80A0EE2C 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00980 80A0EE30 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00984 80A0EE34 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00988 80A0EE38 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0098C 80A0EE3C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00990 80A0EE40 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00994 80A0EE44 3C0580A1 */  lui     $a1, %hi(D_80A0F104)       ## $a1 = 80A10000
/* 00998 80A0EE48 24A5F104 */  addiu   $a1, $a1, %lo(D_80A0F104)  ## $a1 = 80A0F104
/* 0099C 80A0EE4C 2406026F */  addiu   $a2, $zero, 0x026F         ## $a2 = 0000026F
/* 009A0 80A0EE50 0C0346A2 */  jal     Matrix_NewMtx              
/* 009A4 80A0EE54 AFA20068 */  sw      $v0, 0x0068($sp)           
/* 009A8 80A0EE58 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 009AC 80A0EE5C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 009B0 80A0EE60 0C024F61 */  jal     func_80093D84              
/* 009B4 80A0EE64 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 009B8 80A0EE68 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 009BC 80A0EE6C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 009C0 80A0EE70 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 009C4 80A0EE74 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 009C8 80A0EE78 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 009CC 80A0EE7C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 009D0 80A0EE80 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 009D4 80A0EE84 8FA900C0 */  lw      $t1, 0x00C0($sp)           
/* 009D8 80A0EE88 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 009DC 80A0EE8C 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 009E0 80A0EE90 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 009E4 80A0EE94 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 009E8 80A0EE98 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 009EC 80A0EE9C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 009F0 80A0EEA0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 009F4 80A0EEA4 8E28009C */  lw      $t0, 0x009C($s1)           ## 0000009C
/* 009F8 80A0EEA8 852A01A8 */  lh      $t2, 0x01A8($t1)           ## 000001A8
/* 009FC 80A0EEAC 240D0080 */  addiu   $t5, $zero, 0x0080         ## $t5 = 00000080
/* 00A00 80A0EEB0 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00A04 80A0EEB4 010A0019 */  multu   $t0, $t2                   
/* 00A08 80A0EEB8 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00A0C 80A0EEBC AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 00A10 80A0EEC0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A14 80A0EEC4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A18 80A0EEC8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A1C 80A0EECC AFA20064 */  sw      $v0, 0x0064($sp)           
/* 00A20 80A0EED0 00005812 */  mflo    $t3                        
/* 00A24 80A0EED4 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00A28 80A0EED8 0C0253D0 */  jal     Draw_TwoTexScroll              
/* 00A2C 80A0EEDC 00000000 */  nop
/* 00A30 80A0EEE0 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00A34 80A0EEE4 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00A38 80A0EEE8 35EF8080 */  ori     $t7, $t7, 0x8080           ## $t7 = FA008080
/* 00A3C 80A0EEEC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00A40 80A0EEF0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00A44 80A0EEF4 27AB00B8 */  addiu   $t3, $sp, 0x00B8           ## $t3 = FFFFFFF8
/* 00A48 80A0EEF8 3C0680A1 */  lui     $a2, %hi(D_80A0F118)       ## $a2 = 80A10000
/* 00A4C 80A0EEFC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00A50 80A0EF00 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00A54 80A0EF04 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00A58 80A0EF08 8FB800C0 */  lw      $t8, 0x00C0($sp)           
/* 00A5C 80A0EF0C 24C6F118 */  addiu   $a2, $a2, %lo(D_80A0F118)  ## $a2 = 80A0F118
/* 00A60 80A0EF10 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFAC
/* 00A64 80A0EF14 8719001C */  lh      $t9, 0x001C($t8)           ## 0000001C
/* 00A68 80A0EF18 240702A0 */  addiu   $a3, $zero, 0x02A0         ## $a3 = 000002A0
/* 00A6C 80A0EF1C 33298000 */  andi    $t1, $t9, 0x8000           ## $t1 = 00000000
/* 00A70 80A0EF20 000943C3 */  sra     $t0, $t1, 15               
/* 00A74 80A0EF24 00085080 */  sll     $t2, $t0,  2               
/* 00A78 80A0EF28 014B1821 */  addu    $v1, $t2, $t3              
/* 00A7C 80A0EF2C 906F0000 */  lbu     $t7, 0x0000($v1)           ## 00000000
/* 00A80 80A0EF30 906D0003 */  lbu     $t5, 0x0003($v1)           ## 00000003
/* 00A84 80A0EF34 90680001 */  lbu     $t0, 0x0001($v1)           ## 00000001
/* 00A88 80A0EF38 906E0002 */  lbu     $t6, 0x0002($v1)           ## 00000002
/* 00A8C 80A0EF3C 000FC600 */  sll     $t8, $t7, 24               
/* 00A90 80A0EF40 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 00000000
/* 00A94 80A0EF44 00085400 */  sll     $t2, $t0, 16               
/* 00A98 80A0EF48 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 00A9C 80A0EF4C 000E7A00 */  sll     $t7, $t6,  8               
/* 00AA0 80A0EF50 016F6825 */  or      $t5, $t3, $t7              ## $t5 = FA008080
/* 00AA4 80A0EF54 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00AA8 80A0EF58 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00AAC 80A0EF5C 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 00AB0 80A0EF60 27AB00B0 */  addiu   $t3, $sp, 0x00B0           ## $t3 = FFFFFFF0
/* 00AB4 80A0EF64 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00AB8 80A0EF68 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00ABC 80A0EF6C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00AC0 80A0EF70 8FA800C0 */  lw      $t0, 0x00C0($sp)           
/* 00AC4 80A0EF74 8519001C */  lh      $t9, 0x001C($t0)           ## 0000001C
/* 00AC8 80A0EF78 332A8000 */  andi    $t2, $t9, 0x8000           ## $t2 = 00000000
/* 00ACC 80A0EF7C 000A63C3 */  sra     $t4, $t2, 15               
/* 00AD0 80A0EF80 000C7080 */  sll     $t6, $t4,  2               
/* 00AD4 80A0EF84 01CB1821 */  addu    $v1, $t6, $t3              
/* 00AD8 80A0EF88 90690000 */  lbu     $t1, 0x0000($v1)           ## 00000000
/* 00ADC 80A0EF8C 906D0003 */  lbu     $t5, 0x0003($v1)           ## 00000003
/* 00AE0 80A0EF90 906C0001 */  lbu     $t4, 0x0001($v1)           ## 00000001
/* 00AE4 80A0EF94 90780002 */  lbu     $t8, 0x0002($v1)           ## 00000002
/* 00AE8 80A0EF98 00094600 */  sll     $t0, $t1, 24               
/* 00AEC 80A0EF9C 01A8C825 */  or      $t9, $t5, $t0              ## $t9 = FA008080
/* 00AF0 80A0EFA0 000C7400 */  sll     $t6, $t4, 16               
/* 00AF4 80A0EFA4 032E5825 */  or      $t3, $t9, $t6              ## $t3 = FA008088
/* 00AF8 80A0EFA8 00184A00 */  sll     $t1, $t8,  8               
/* 00AFC 80A0EFAC 01696825 */  or      $t5, $t3, $t1              ## $t5 = FB008088
/* 00B00 80A0EFB0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00B04 80A0EFB4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B08 80A0EFB8 3C0AE700 */  lui     $t2, 0xE700                ## $t2 = E7000000
/* 00B0C 80A0EFBC 3C0E0405 */  lui     $t6, 0x0405                ## $t6 = 04050000
/* 00B10 80A0EFC0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00B14 80A0EFC4 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00B18 80A0EFC8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00B1C 80A0EFCC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00B20 80A0EFD0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B24 80A0EFD4 25CED4E0 */  addiu   $t6, $t6, 0xD4E0           ## $t6 = 0404D4E0
/* 00B28 80A0EFD8 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 00B2C 80A0EFDC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00B30 80A0EFE0 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00B34 80A0EFE4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00B38 80A0EFE8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00B3C 80A0EFEC 0C031AD5 */  jal     func_800C6B54              
/* 00B40 80A0EFF0 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00B44 80A0EFF4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00B48 80A0EFF8 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00B4C 80A0EFFC 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00B50 80A0F000 03E00008 */  jr      $ra                        
/* 00B54 80A0F004 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
/* 00B58 80A0F008 00000000 */  nop
/* 00B5C 80A0F00C 00000000 */  nop

