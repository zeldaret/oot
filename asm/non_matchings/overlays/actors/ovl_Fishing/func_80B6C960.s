glabel func_80B6C960
/* 02FC0 80B6C960 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 02FC4 80B6C964 3C0E80B8 */  lui     $t6, %hi(D_80B7AE64)       ## $t6 = 80B80000
/* 02FC8 80B6C968 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 02FCC 80B6C96C AFB60050 */  sw      $s6, 0x0050($sp)           
/* 02FD0 80B6C970 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 02FD4 80B6C974 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 02FD8 80B6C978 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 02FDC 80B6C97C AFB20040 */  sw      $s2, 0x0040($sp)           
/* 02FE0 80B6C980 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 02FE4 80B6C984 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 02FE8 80B6C988 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 02FEC 80B6C98C F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 02FF0 80B6C990 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 02FF4 80B6C994 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 02FF8 80B6C998 25CEAE64 */  addiu   $t6, $t6, %lo(D_80B7AE64)  ## $t6 = 80B7AE64
/* 02FFC 80B6C99C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B7AE64
/* 03000 80B6C9A0 27B40070 */  addiu   $s4, $sp, 0x0070           ## $s4 = FFFFFFD8
/* 03004 80B6C9A4 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 03008 80B6C9A8 AE980000 */  sw      $t8, 0x0000($s4)           ## FFFFFFD8
/* 0300C 80B6C9AC 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B7AE68
/* 03010 80B6C9B0 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 03014 80B6C9B4 241100C6 */  addiu   $s1, $zero, 0x00C6         ## $s1 = 000000C6
/* 03018 80B6C9B8 AE8F0004 */  sw      $t7, 0x0004($s4)           ## FFFFFFDC
/* 0301C 80B6C9BC 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B7AE6C
/* 03020 80B6C9C0 2415000C */  addiu   $s5, $zero, 0x000C         ## $s5 = 0000000C
/* 03024 80B6C9C4 27B60064 */  addiu   $s6, $sp, 0x0064           ## $s6 = FFFFFFCC
/* 03028 80B6C9C8 AE980008 */  sw      $t8, 0x0008($s4)           ## FFFFFFE0
/* 0302C 80B6C9CC C424E144 */  lwc1    $f4, %lo(D_80B7E144)($at)  
/* 03030 80B6C9D0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 03034 80B6C9D4 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 03038 80B6C9D8 4600218D */  trunc.w.s $f6, $f4                   
/* 0303C 80B6C9DC E7A80078 */  swc1    $f8, 0x0078($sp)           
/* 03040 80B6C9E0 44123000 */  mfc1    $s2, $f6                   
/* 03044 80B6C9E4 00000000 */  nop
/* 03048 80B6C9E8 00129400 */  sll     $s2, $s2, 16               
/* 0304C 80B6C9EC 00129403 */  sra     $s2, $s2, 16               
/* 03050 80B6C9F0 2A4100C6 */  slti    $at, $s2, 0x00C6           
/* 03054 80B6C9F4 50200033 */  beql    $at, $zero, .L80B6CAC4     
/* 03058 80B6C9F8 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L80B6C9FC:
/* 0305C 80B6C9FC 02350019 */  multu   $s1, $s5                   
/* 03060 80B6CA00 00004012 */  mflo    $t0                        
/* 03064 80B6CA04 01138021 */  addu    $s0, $t0, $s3              
/* 03068 80B6CA08 C60A0000 */  lwc1    $f10, 0x0000($s0)          ## 00000000
/* 0306C 80B6CA0C C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 03070 80B6CA10 C6060008 */  lwc1    $f6, 0x0008($s0)           ## 00000008
/* 03074 80B6CA14 C6080014 */  lwc1    $f8, 0x0014($s0)           ## 00000014
/* 03078 80B6CA18 46105501 */  sub.s   $f20, $f10, $f16           
/* 0307C 80B6CA1C C6120004 */  lwc1    $f18, 0x0004($s0)          ## 00000004
/* 03080 80B6CA20 C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 03084 80B6CA24 46083581 */  sub.s   $f22, $f6, $f8             
/* 03088 80B6CA28 4600A386 */  mov.s   $f14, $f20                 
/* 0308C 80B6CA2C 46049601 */  sub.s   $f24, $f18, $f4            
/* 03090 80B6CA30 0C0341F5 */  jal     atan2f
              
/* 03094 80B6CA34 4600B306 */  mov.s   $f12, $f22                 
/* 03098 80B6CA38 4614A282 */  mul.s   $f10, $f20, $f20           
/* 0309C 80B6CA3C 46000686 */  mov.s   $f26, $f0                  
/* 030A0 80B6CA40 4600C386 */  mov.s   $f14, $f24                 
/* 030A4 80B6CA44 4616B402 */  mul.s   $f16, $f22, $f22           
/* 030A8 80B6CA48 46105000 */  add.s   $f0, $f10, $f16            
/* 030AC 80B6CA4C 0C0341F5 */  jal     atan2f
              
/* 030B0 80B6CA50 46000304 */  sqrt.s  $f12, $f0                  
/* 030B4 80B6CA54 46000507 */  neg.s   $f20, $f0                  
/* 030B8 80B6CA58 4600D306 */  mov.s   $f12, $f26                 
/* 030BC 80B6CA5C 0C034348 */  jal     Matrix_RotateY              
/* 030C0 80B6CA60 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 030C4 80B6CA64 4600A306 */  mov.s   $f12, $f20                 
/* 030C8 80B6CA68 0C0342DC */  jal     Matrix_RotateX              
/* 030CC 80B6CA6C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 030D0 80B6CA70 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFD8
/* 030D4 80B6CA74 0C0346BD */  jal     Matrix_MultVec3f              
/* 030D8 80B6CA78 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFCC
/* 030DC 80B6CA7C C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 030E0 80B6CA80 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 030E4 80B6CA84 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 030E8 80B6CA88 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 000000C5
/* 030EC 80B6CA8C 46049180 */  add.s   $f6, $f18, $f4             
/* 030F0 80B6CA90 C6120014 */  lwc1    $f18, 0x0014($s0)          ## 00000014
/* 030F4 80B6CA94 00118C00 */  sll     $s1, $s1, 16               
/* 030F8 80B6CA98 00118C03 */  sra     $s1, $s1, 16               
/* 030FC 80B6CA9C E6060000 */  swc1    $f6, 0x0000($s0)           ## 00000000
/* 03100 80B6CAA0 C7AA0068 */  lwc1    $f10, 0x0068($sp)          
/* 03104 80B6CAA4 0251082A */  slt     $at, $s2, $s1              
/* 03108 80B6CAA8 460A4400 */  add.s   $f16, $f8, $f10            
/* 0310C 80B6CAAC E6100004 */  swc1    $f16, 0x0004($s0)          ## 00000004
/* 03110 80B6CAB0 C7A4006C */  lwc1    $f4, 0x006C($sp)           
/* 03114 80B6CAB4 46049180 */  add.s   $f6, $f18, $f4             
/* 03118 80B6CAB8 1420FFD0 */  bne     $at, $zero, .L80B6C9FC     
/* 0311C 80B6CABC E6060008 */  swc1    $f6, 0x0008($s0)           ## 00000008
/* 03120 80B6CAC0 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L80B6CAC4:
/* 03124 80B6CAC4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 03128 80B6CAC8 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 0312C 80B6CACC D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 03130 80B6CAD0 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 03134 80B6CAD4 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 03138 80B6CAD8 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 0313C 80B6CADC 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 03140 80B6CAE0 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 03144 80B6CAE4 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 03148 80B6CAE8 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 0314C 80B6CAEC 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 03150 80B6CAF0 03E00008 */  jr      $ra                        
/* 03154 80B6CAF4 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


