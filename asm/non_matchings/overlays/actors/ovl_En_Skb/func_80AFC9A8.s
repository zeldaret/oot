.late_rodata
glabel D_80AFE100
    .float 6.28

glabel D_80AFE104
    .float 0.8

.text
glabel func_80AFC9A8
/* 00008 80AFC9A8 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 0000C 80AFC9AC 3C0F80B0 */  lui     $t7, %hi(D_80AFE0B8)       ## $t7 = 80B00000
/* 00010 80AFC9B0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00014 80AFC9B4 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 00018 80AFC9B8 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 0001C 80AFC9BC AFA60070 */  sw      $a2, 0x0070($sp)           
/* 00020 80AFC9C0 25EFE0B8 */  addiu   $t7, $t7, %lo(D_80AFE0B8)  ## $t7 = 80AFE0B8
/* 00024 80AFC9C4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AFE0B8
/* 00028 80AFC9C8 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFE8
/* 0002C 80AFC9CC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AFE0BC
/* 00030 80AFC9D0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 00034 80AFC9D4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AFE0C0
/* 00038 80AFC9D8 3C0980B0 */  lui     $t1, %hi(D_80AFE0C4)       ## $t1 = 80B00000
/* 0003C 80AFC9DC 2529E0C4 */  addiu   $t1, $t1, %lo(D_80AFE0C4)  ## $t1 = 80AFE0C4
/* 00040 80AFC9E0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 00044 80AFC9E4 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 00048 80AFC9E8 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80AFE0C4
/* 0004C 80AFC9EC 27A80044 */  addiu   $t0, $sp, 0x0044           ## $t0 = FFFFFFDC
/* 00050 80AFC9F0 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80AFE0C8
/* 00054 80AFC9F4 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFDC
/* 00058 80AFC9F8 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80AFE0CC
/* 0005C 80AFC9FC AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE0
/* 00060 80AFCA00 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00064 80AFCA04 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE4
/* 00068 80AFCA08 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0006C 80AFCA0C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00070 80AFCA10 3C0180B0 */  lui     $at, %hi(D_80AFE100)       ## $at = 80B00000
/* 00074 80AFCA14 C428E100 */  lwc1    $f8, %lo(D_80AFE100)($at)  
/* 00078 80AFCA18 46040181 */  sub.s   $f6, $f0, $f4              
/* 0007C 80AFCA1C 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 00080 80AFCA20 46083302 */  mul.s   $f12, $f6, $f8             
/* 00084 80AFCA24 E7AC0040 */  swc1    $f12, 0x0040($sp)          
/* 00088 80AFCA28 C58A0080 */  lwc1    $f10, 0x0080($t4)          ## 00000080
/* 0008C 80AFCA2C 0C0329C8 */  jal     func_800CA720              
/* 00090 80AFCA30 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 00094 80AFCA34 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00098 80AFCA38 44818000 */  mtc1    $at, $f16                  ## $f16 = 15.00
/* 0009C 80AFCA3C 8FAD0070 */  lw      $t5, 0x0070($sp)           
/* 000A0 80AFCA40 C7AC0040 */  lwc1    $f12, 0x0040($sp)          
/* 000A4 80AFCA44 46100482 */  mul.s   $f18, $f0, $f16            
/* 000A8 80AFCA48 C5A40000 */  lwc1    $f4, 0x0000($t5)           ## 00000000
/* 000AC 80AFCA4C 46049180 */  add.s   $f6, $f18, $f4             
/* 000B0 80AFCA50 0C0329DD */  jal     func_800CA774              
/* 000B4 80AFCA54 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 000B8 80AFCA58 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 000BC 80AFCA5C 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 000C0 80AFCA60 8FAE0070 */  lw      $t6, 0x0070($sp)           
/* 000C4 80AFCA64 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000C8 80AFCA68 46080282 */  mul.s   $f10, $f0, $f8             
/* 000CC 80AFCA6C C5D00008 */  lwc1    $f16, 0x0008($t6)          ## 00000008
/* 000D0 80AFCA70 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 000D4 80AFCA74 46105480 */  add.s   $f18, $f10, $f16           
/* 000D8 80AFCA78 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 000DC 80AFCA7C E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 000E0 80AFCA80 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000E4 80AFCA84 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 000E8 80AFCA88 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 000EC 80AFCA8C E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 000F0 80AFCA90 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000F4 80AFCA94 E7A0004C */  swc1    $f0, 0x004C($sp)           
/* 000F8 80AFCA98 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 000FC 80AFCA9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00100 80AFCAA0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00104 80AFCAA4 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 00108 80AFCAA8 46040181 */  sub.s   $f6, $f0, $f4              
/* 0010C 80AFCAAC C7B00054 */  lwc1    $f16, 0x0054($sp)          
/* 00110 80AFCAB0 46083282 */  mul.s   $f10, $f6, $f8             
/* 00114 80AFCAB4 460A8480 */  add.s   $f18, $f16, $f10           
/* 00118 80AFCAB8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0011C 80AFCABC E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 00120 80AFCAC0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00124 80AFCAC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00128 80AFCAC8 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 0012C 80AFCACC 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 00130 80AFCAD0 46040182 */  mul.s   $f6, $f0, $f4              
/* 00134 80AFCAD4 3C0180B0 */  lui     $at, %hi(D_80AFE104)       ## $at = 80B00000
/* 00138 80AFCAD8 C42AE104 */  lwc1    $f10, %lo(D_80AFE104)($at) 
/* 0013C 80AFCADC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00140 80AFCAE0 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 00144 80AFCAE4 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 00148 80AFCAE8 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0014C 80AFCAEC 46083400 */  add.s   $f16, $f6, $f8             
/* 00150 80AFCAF0 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00154 80AFCAF4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00158 80AFCAF8 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 0015C 80AFCAFC 460A8482 */  mul.s   $f18, $f16, $f10           
/* 00160 80AFCB00 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFF4
/* 00164 80AFCB04 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFE8
/* 00168 80AFCB08 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFDC
/* 0016C 80AFCB0C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00170 80AFCB10 4600910D */  trunc.w.s $f4, $f18                  
/* 00174 80AFCB14 44192000 */  mfc1    $t9, $f4                   
/* 00178 80AFCB18 0C00A5C9 */  jal     func_80029724              
/* 0017C 80AFCB1C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00180 80AFCB20 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 00184 80AFCB24 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00188 80AFCB28 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 0018C 80AFCB2C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00190 80AFCB30 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 00194 80AFCB34 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFF4
/* 00198 80AFCB38 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 0019C 80AFCB3C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 001A0 80AFCB40 0C00CD20 */  jal     func_80033480              
/* 001A4 80AFCB44 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 001A8 80AFCB48 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 001AC 80AFCB4C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 001B0 80AFCB50 03E00008 */  jr      $ra                        
/* 001B4 80AFCB54 00000000 */  nop
