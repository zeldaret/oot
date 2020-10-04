.late_rodata
glabel D_8088AF98
    .float 1.6

.text
glabel func_8088A914
/* 008F4 8088A914 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 008F8 8088A918 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 008FC 8088A91C 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00900 8088A920 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00904 8088A924 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00908 8088A928 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 0090C 8088A92C AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00910 8088A930 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00914 8088A934 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00918 8088A938 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 0091C 8088A93C AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00920 8088A940 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00924 8088A944 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00928 8088A948 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 0092C 8088A94C F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00930 8088A950 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00934 8088A954 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00938 8088A958 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 0093C 8088A95C AFA500EC */  sw      $a1, 0x00EC($sp)           
/* 00940 8088A960 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00944 8088A964 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00948 8088A968 46000606 */  mov.s   $f24, $f0                  
/* 0094C 8088A96C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00950 8088A970 868400B6 */  lh      $a0, 0x00B6($s4)           ## 000000B6
/* 00954 8088A974 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 00958 8088A978 4481F000 */  mtc1    $at, $f30                  ## $f30 = 14.00
/* 0095C 8088A97C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00960 8088A980 3C1E0500 */  lui     $s8, 0x0500                ## $s8 = 05000000
/* 00964 8088A984 4481E000 */  mtc1    $at, $f28                  ## $f28 = 6.00
/* 00968 8088A988 46000686 */  mov.s   $f26, $f0                  
/* 0096C 8088A98C 27DE0530 */  addiu   $s8, $s8, 0x0530           ## $s8 = 05000530
/* 00970 8088A990 26950024 */  addiu   $s5, $s4, 0x0024           ## $s5 = 00000024
/* 00974 8088A994 AFA000A8 */  sw      $zero, 0x00A8($sp)         
/* 00978 8088A998 27B700D4 */  addiu   $s7, $sp, 0x00D4           ## $s7 = FFFFFFEC
/* 0097C 8088A99C 27B600C8 */  addiu   $s6, $sp, 0x00C8           ## $s6 = FFFFFFE0
.L8088A9A0:
/* 00980 8088A9A0 8FA200A8 */  lw      $v0, 0x00A8($sp)           
/* 00984 8088A9A4 C6880028 */  lwc1    $f8, 0x0028($s4)           ## 00000028
/* 00988 8088A9A8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0098C 8088A9AC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00990 8088A9B0 2412FFC8 */  addiu   $s2, $zero, 0xFFC8         ## $s2 = FFFFFFC8
/* 00994 8088A9B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00998 8088A9B8 46083280 */  add.s   $f10, $f6, $f8             
/* 0099C 8088A9BC E7AA00CC */  swc1    $f10, 0x00CC($sp)          
.L8088A9C0:
/* 009A0 8088A9C0 44928000 */  mtc1    $s2, $f16                  ## $f16 = NaN
/* 009A4 8088A9C4 C6840024 */  lwc1    $f4, 0x0024($s4)           ## 00000024
/* 009A8 8088A9C8 46808020 */  cvt.s.w $f0, $f16                  
/* 009AC 8088A9CC 461A0482 */  mul.s   $f18, $f0, $f26            
/* 009B0 8088A9D0 46049180 */  add.s   $f6, $f18, $f4             
/* 009B4 8088A9D4 46180282 */  mul.s   $f10, $f0, $f24            
/* 009B8 8088A9D8 E7A600C8 */  swc1    $f6, 0x00C8($sp)           
/* 009BC 8088A9DC C688002C */  lwc1    $f8, 0x002C($s4)           ## 0000002C
/* 009C0 8088A9E0 460A4401 */  sub.s   $f16, $f8, $f10            
/* 009C4 8088A9E4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009C8 8088A9E8 E7B000D0 */  swc1    $f16, 0x00D0($sp)          
/* 009CC 8088A9EC 262EFFFE */  addiu   $t6, $s1, 0xFFFE           ## $t6 = FFFFFFFE
/* 009D0 8088A9F0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = NaN
/* 009D4 8088A9F4 461C0482 */  mul.s   $f18, $f0, $f28            
/* 009D8 8088A9F8 468021A0 */  cvt.s.w $f6, $f4                   
/* 009DC 8088A9FC 46069502 */  mul.s   $f20, $f18, $f6            
/* 009E0 8088AA00 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009E4 8088AA04 00000000 */  nop
/* 009E8 8088AA08 461C0582 */  mul.s   $f22, $f0, $f28            
/* 009EC 8088AA0C 00000000 */  nop
/* 009F0 8088AA10 4618B202 */  mul.s   $f8, $f22, $f24            
/* 009F4 8088AA14 00000000 */  nop
/* 009F8 8088AA18 461AA282 */  mul.s   $f10, $f20, $f26           
/* 009FC 8088AA1C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00A00 8088AA20 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A04 8088AA24 E7B000D4 */  swc1    $f16, 0x00D4($sp)          
/* 00A08 8088AA28 3C014208 */  lui     $at, 0x4208                ## $at = 42080000
/* 00A0C 8088AA2C 44812000 */  mtc1    $at, $f4                   ## $f4 = 34.00
/* 00A10 8088AA30 00000000 */  nop
/* 00A14 8088AA34 46040482 */  mul.s   $f18, $f0, $f4             
/* 00A18 8088AA38 00000000 */  nop
/* 00A1C 8088AA3C 461AB182 */  mul.s   $f6, $f22, $f26            
/* 00A20 8088AA40 00000000 */  nop
/* 00A24 8088AA44 4618A202 */  mul.s   $f8, $f20, $f24            
/* 00A28 8088AA48 E7B200D8 */  swc1    $f18, 0x00D8($sp)          
/* 00A2C 8088AA4C 46083281 */  sub.s   $f10, $f6, $f8             
/* 00A30 8088AA50 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A34 8088AA54 E7AA00DC */  swc1    $f10, 0x00DC($sp)          
/* 00A38 8088AA58 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A3C 8088AA5C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00A40 8088AA60 3C018089 */  lui     $at, %hi(D_8088AF98)       ## $at = 80890000
/* 00A44 8088AA64 C426AF98 */  lwc1    $f6, %lo(D_8088AF98)($at)  
/* 00A48 8088AA68 46100101 */  sub.s   $f4, $f0, $f16             
/* 00A4C 8088AA6C 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
/* 00A50 8088AA70 461E2482 */  mul.s   $f18, $f4, $f30            
/* 00A54 8088AA74 00000000 */  nop
/* 00A58 8088AA78 46069202 */  mul.s   $f8, $f18, $f6             
/* 00A5C 8088AA7C 461E4280 */  add.s   $f10, $f8, $f30            
/* 00A60 8088AA80 4600540D */  trunc.w.s $f16, $f10                 
/* 00A64 8088AA84 44028000 */  mfc1    $v0, $f16                  
/* 00A68 8088AA88 00000000 */  nop
/* 00A6C 8088AA8C 0002C400 */  sll     $t8, $v0, 16               
/* 00A70 8088AA90 0018CC03 */  sra     $t9, $t8, 16               
/* 00A74 8088AA94 2B210015 */  slti    $at, $t9, 0x0015           
/* 00A78 8088AA98 00029C00 */  sll     $s3, $v0, 16               
/* 00A7C 8088AA9C 14200003 */  bne     $at, $zero, .L8088AAAC     
/* 00A80 8088AAA0 00139C03 */  sra     $s3, $s3, 16               
/* 00A84 8088AAA4 10000001 */  beq     $zero, $zero, .L8088AAAC   
/* 00A88 8088AAA8 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
.L8088AAAC:
/* 00A8C 8088AAAC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A90 8088AAB0 00000000 */  nop
/* 00A94 8088AAB4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A98 8088AAB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00A9C 8088AABC 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 00AA0 8088AAC0 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFE0
/* 00AA4 8088AAC4 4604003C */  c.lt.s  $f0, $f4                   
/* 00AA8 8088AAC8 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFEC
/* 00AAC 8088AACC 02A03825 */  or      $a3, $s5, $zero            ## $a3 = 00000024
/* 00AB0 8088AAD0 2408FD76 */  addiu   $t0, $zero, 0xFD76         ## $t0 = FFFFFD76
/* 00AB4 8088AAD4 45000004 */  bc1f    .L8088AAE8                 
/* 00AB8 8088AAD8 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 00ABC 8088AADC 36100001 */  ori     $s0, $s0, 0x0001           ## $s0 = 00000021
/* 00AC0 8088AAE0 00108400 */  sll     $s0, $s0, 16               
/* 00AC4 8088AAE4 00108403 */  sra     $s0, $s0, 16               
.L8088AAE8:
/* 00AC8 8088AAE8 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00ACC 8088AAEC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00AD0 8088AAF0 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00AD4 8088AAF4 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00AD8 8088AAF8 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00ADC 8088AAFC 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00AE0 8088AB00 AFAF0038 */  sw      $t7, 0x0038($sp)           
/* 00AE4 8088AB04 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00AE8 8088AB08 AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00AEC 8088AB0C AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00AF0 8088AB10 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 00AF4 8088AB14 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00AF8 8088AB18 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00AFC 8088AB1C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00B00 8088AB20 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00B04 8088AB24 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00B08 8088AB28 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 00B0C 8088AB2C 0C00A7A3 */  jal     EffectSsKakera_Spawn
              
/* 00B10 8088AB30 AFBE003C */  sw      $s8, 0x003C($sp)           
/* 00B14 8088AB34 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00B18 8088AB38 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B1C 8088AB3C 1621FFA0 */  bne     $s1, $at, .L8088A9C0       
/* 00B20 8088AB40 2652001C */  addiu   $s2, $s2, 0x001C           ## $s2 = FFFFFFE4
/* 00B24 8088AB44 8FB800A8 */  lw      $t8, 0x00A8($sp)           
/* 00B28 8088AB48 24010078 */  addiu   $at, $zero, 0x0078         ## $at = 00000078
/* 00B2C 8088AB4C 27190018 */  addiu   $t9, $t8, 0x0018           ## $t9 = 00000018
/* 00B30 8088AB50 1721FF93 */  bne     $t9, $at, .L8088A9A0       
/* 00B34 8088AB54 AFB900A8 */  sw      $t9, 0x00A8($sp)           
/* 00B38 8088AB58 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00B3C 8088AB5C D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00B40 8088AB60 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00B44 8088AB64 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00B48 8088AB68 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00B4C 8088AB6C D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00B50 8088AB70 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00B54 8088AB74 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00B58 8088AB78 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00B5C 8088AB7C 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00B60 8088AB80 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00B64 8088AB84 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00B68 8088AB88 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00B6C 8088AB8C 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00B70 8088AB90 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00B74 8088AB94 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00B78 8088AB98 03E00008 */  jr      $ra                        
/* 00B7C 8088AB9C 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
