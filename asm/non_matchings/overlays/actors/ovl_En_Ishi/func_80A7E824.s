.late_rodata
glabel D_80A87460
    .float -0.9

glabel D_80A87464
    .float 0.9

glabel D_80A87468
    .float -0.8

glabel D_80A8746C
    .float 0.8

glabel D_80A87470
    .float 0.7

.text
glabel func_80A7E824
/* 003C4 80A7E824 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 003C8 80A7E828 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 003CC 80A7E82C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 003D0 80A7E830 4481F000 */  mtc1    $at, $f30                  ## $f30 = 40.00
/* 003D4 80A7E834 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 003D8 80A7E838 3C0180A8 */  lui     $at, %hi(D_80A87460)       ## $at = 80A80000
/* 003DC 80A7E83C C43C7460 */  lwc1    $f28, %lo(D_80A87460)($at) 
/* 003E0 80A7E840 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 003E4 80A7E844 3C0180A8 */  lui     $at, %hi(D_80A87464)       ## $at = 80A80000
/* 003E8 80A7E848 C43A7464 */  lwc1    $f26, %lo(D_80A87464)($at) 
/* 003EC 80A7E84C AFB60090 */  sw      $s6, 0x0090($sp)           
/* 003F0 80A7E850 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 003F4 80A7E854 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 003F8 80A7E858 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 003FC 80A7E85C AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00400 80A7E860 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00404 80A7E864 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00408 80A7E868 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 0040C 80A7E86C AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00410 80A7E870 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00414 80A7E874 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00418 80A7E878 3C1380A8 */  lui     $s3, %hi(D_80A873A4)       ## $s3 = 80A80000
/* 0041C 80A7E87C 3C160501 */  lui     $s6, 0x0501                ## $s6 = 05010000
/* 00420 80A7E880 248E005C */  addiu   $t6, $a0, 0x005C           ## $t6 = 0000005C
/* 00424 80A7E884 4481C000 */  mtc1    $at, $f24                  ## $f24 = 10.00
/* 00428 80A7E888 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0042C 80A7E88C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00430 80A7E890 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00434 80A7E894 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00438 80A7E898 AFA500EC */  sw      $a1, 0x00EC($sp)           
/* 0043C 80A7E89C 24111000 */  addiu   $s1, $zero, 0x1000         ## $s1 = 00001000
/* 00440 80A7E8A0 AFAE00A4 */  sw      $t6, 0x00A4($sp)           
/* 00444 80A7E8A4 26D6A5E8 */  addiu   $s6, $s6, 0xA5E8           ## $s6 = 0500A5E8
/* 00448 80A7E8A8 267373A4 */  addiu   $s3, $s3, %lo(D_80A873A4)  ## $s3 = 80A873A4
/* 0044C 80A7E8AC 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00450 80A7E8B0 27B400D8 */  addiu   $s4, $sp, 0x00D8           ## $s4 = FFFFFFF0
/* 00454 80A7E8B4 27B500CC */  addiu   $s5, $sp, 0x00CC           ## $s5 = FFFFFFE4
/* 00458 80A7E8B8 24170009 */  addiu   $s7, $zero, 0x0009         ## $s7 = 00000009
/* 0045C 80A7E8BC 249E0024 */  addiu   $s8, $a0, 0x0024           ## $s8 = 00000024
.L80A7E8C0:
/* 00460 80A7E8C0 26314E20 */  addiu   $s1, $s1, 0x4E20           ## $s1 = 00005E20
/* 00464 80A7E8C4 00118C00 */  sll     $s1, $s1, 16               
/* 00468 80A7E8C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0046C 80A7E8CC 00118C03 */  sra     $s1, $s1, 16               
/* 00470 80A7E8D0 46180502 */  mul.s   $f20, $f0, $f24            
/* 00474 80A7E8D4 00112400 */  sll     $a0, $s1, 16               
/* 00478 80A7E8D8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0047C 80A7E8DC 00042403 */  sra     $a0, $a0, 16               
/* 00480 80A7E8E0 46140102 */  mul.s   $f4, $f0, $f20             
/* 00484 80A7E8E4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00488 80A7E8E8 46062200 */  add.s   $f8, $f4, $f6              
/* 0048C 80A7E8EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00490 80A7E8F0 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00494 80A7E8F4 461E0282 */  mul.s   $f10, $f0, $f30            
/* 00498 80A7E8F8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 0049C 80A7E8FC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 004A0 80A7E900 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 004A4 80A7E904 00112400 */  sll     $a0, $s1, 16               
/* 004A8 80A7E908 00042403 */  sra     $a0, $a0, 16               
/* 004AC 80A7E90C 46105480 */  add.s   $f18, $f10, $f16           
/* 004B0 80A7E910 46049180 */  add.s   $f6, $f18, $f4             
/* 004B4 80A7E914 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 004B8 80A7E918 E7A600D0 */  swc1    $f6, 0x00D0($sp)           
/* 004BC 80A7E91C 46140202 */  mul.s   $f8, $f0, $f20             
/* 004C0 80A7E920 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 004C4 80A7E924 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFF0
/* 004C8 80A7E928 8FA500A4 */  lw      $a1, 0x00A4($sp)           
/* 004CC 80A7E92C 460A4400 */  add.s   $f16, $f8, $f10            
/* 004D0 80A7E930 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 004D4 80A7E934 E7B000D4 */  swc1    $f16, 0x00D4($sp)          
/* 004D8 80A7E938 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 004DC 80A7E93C C7B200D8 */  lwc1    $f18, 0x00D8($sp)          
/* 004E0 80A7E940 3C0180A8 */  lui     $at, %hi(D_80A87468)       ## $at = 80A80000
/* 004E4 80A7E944 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 004E8 80A7E948 11E0000B */  beq     $t7, $zero, .L80A7E978     
/* 004EC 80A7E94C 30580008 */  andi    $t8, $v0, 0x0008           ## $t8 = 00000000
/* 004F0 80A7E950 461A9102 */  mul.s   $f4, $f18, $f26            
/* 004F4 80A7E954 C7A600DC */  lwc1    $f6, 0x00DC($sp)           
/* 004F8 80A7E958 C4287468 */  lwc1    $f8, %lo(D_80A87468)($at)  
/* 004FC 80A7E95C C7B000E0 */  lwc1    $f16, 0x00E0($sp)          
/* 00500 80A7E960 46083282 */  mul.s   $f10, $f6, $f8             
/* 00504 80A7E964 E7A400D8 */  swc1    $f4, 0x00D8($sp)           
/* 00508 80A7E968 461A8482 */  mul.s   $f18, $f16, $f26           
/* 0050C 80A7E96C E7AA00DC */  swc1    $f10, 0x00DC($sp)          
/* 00510 80A7E970 1000000D */  beq     $zero, $zero, .L80A7E9A8   
/* 00514 80A7E974 E7B200E0 */  swc1    $f18, 0x00E0($sp)          
.L80A7E978:
/* 00518 80A7E978 1300000B */  beq     $t8, $zero, .L80A7E9A8     
/* 0051C 80A7E97C C7A400D8 */  lwc1    $f4, 0x00D8($sp)           
/* 00520 80A7E980 3C0180A8 */  lui     $at, %hi(D_80A8746C)       ## $at = 80A80000
/* 00524 80A7E984 461C2182 */  mul.s   $f6, $f4, $f28             
/* 00528 80A7E988 C42A746C */  lwc1    $f10, %lo(D_80A8746C)($at) 
/* 0052C 80A7E98C C7A800DC */  lwc1    $f8, 0x00DC($sp)           
/* 00530 80A7E990 C7B200E0 */  lwc1    $f18, 0x00E0($sp)          
/* 00534 80A7E994 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00538 80A7E998 E7A600D8 */  swc1    $f6, 0x00D8($sp)           
/* 0053C 80A7E99C 461C9102 */  mul.s   $f4, $f18, $f28            
/* 00540 80A7E9A0 E7B000DC */  swc1    $f16, 0x00DC($sp)          
/* 00544 80A7E9A4 E7A400E0 */  swc1    $f4, 0x00E0($sp)           
.L80A7E9A8:
/* 00548 80A7E9A8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0054C 80A7E9AC 00000000 */  nop
/* 00550 80A7E9B0 46180502 */  mul.s   $f20, $f0, $f24            
/* 00554 80A7E9B4 00112400 */  sll     $a0, $s1, 16               
/* 00558 80A7E9B8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0055C 80A7E9BC 00042403 */  sra     $a0, $a0, 16               
/* 00560 80A7E9C0 4600A202 */  mul.s   $f8, $f20, $f0             
/* 00564 80A7E9C4 C7A600D8 */  lwc1    $f6, 0x00D8($sp)           
/* 00568 80A7E9C8 46083280 */  add.s   $f10, $f6, $f8             
/* 0056C 80A7E9CC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00570 80A7E9D0 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 00574 80A7E9D4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00578 80A7E9D8 46000586 */  mov.s   $f22, $f0                  
/* 0057C 80A7E9DC 44928000 */  mtc1    $s2, $f16                  ## $f16 = 0.00
/* 00580 80A7E9E0 3C0180A8 */  lui     $at, %hi(D_80A87470)       ## $at = 80A80000
/* 00584 80A7E9E4 C4267470 */  lwc1    $f6, %lo(D_80A87470)($at)  
/* 00588 80A7E9E8 468084A0 */  cvt.s.w $f18, $f16                 
/* 0058C 80A7E9EC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00590 80A7E9F0 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 00594 80A7E9F4 00112400 */  sll     $a0, $s1, 16               
/* 00598 80A7E9F8 00042403 */  sra     $a0, $a0, 16               
/* 0059C 80A7E9FC 4612B102 */  mul.s   $f4, $f22, $f18            
/* 005A0 80A7EA00 00000000 */  nop
/* 005A4 80A7EA04 46062202 */  mul.s   $f8, $f4, $f6              
/* 005A8 80A7EA08 C7A400DC */  lwc1    $f4, 0x00DC($sp)           
/* 005AC 80A7EA0C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 005B0 80A7EA10 46088480 */  add.s   $f18, $f16, $f8            
/* 005B4 80A7EA14 46122180 */  add.s   $f6, $f4, $f18             
/* 005B8 80A7EA18 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 005BC 80A7EA1C E7A600DC */  swc1    $f6, 0x00DC($sp)           
/* 005C0 80A7EA20 4600A402 */  mul.s   $f16, $f20, $f0            
/* 005C4 80A7EA24 C7AA00E0 */  lwc1    $f10, 0x00E0($sp)          
/* 005C8 80A7EA28 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 005CC 80A7EA2C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE4
/* 005D0 80A7EA30 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFF0
/* 005D4 80A7EA34 03C03825 */  or      $a3, $s8, $zero            ## $a3 = 00000024
/* 005D8 80A7EA38 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 005DC 80A7EA3C 46105200 */  add.s   $f8, $f10, $f16            
/* 005E0 80A7EA40 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 005E4 80A7EA44 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 005E8 80A7EA48 16400004 */  bne     $s2, $zero, .L80A7EA5C     
/* 005EC 80A7EA4C E7A800E0 */  swc1    $f8, 0x00E0($sp)           
/* 005F0 80A7EA50 24020029 */  addiu   $v0, $zero, 0x0029         ## $v0 = 00000029
/* 005F4 80A7EA54 10000008 */  beq     $zero, $zero, .L80A7EA78   
/* 005F8 80A7EA58 2403FE3E */  addiu   $v1, $zero, 0xFE3E         ## $v1 = FFFFFE3E
.L80A7EA5C:
/* 005FC 80A7EA5C 2A410004 */  slti    $at, $s2, 0x0004           
/* 00600 80A7EA60 10200004 */  beq     $at, $zero, .L80A7EA74     
/* 00604 80A7EA64 24020045 */  addiu   $v0, $zero, 0x0045         ## $v0 = 00000045
/* 00608 80A7EA68 24020025 */  addiu   $v0, $zero, 0x0025         ## $v0 = 00000025
/* 0060C 80A7EA6C 10000002 */  beq     $zero, $zero, .L80A7EA78   
/* 00610 80A7EA70 2403FE84 */  addiu   $v1, $zero, 0xFE84         ## $v1 = FFFFFE84
.L80A7EA74:
/* 00614 80A7EA74 2403FEC0 */  addiu   $v1, $zero, 0xFEC0         ## $v1 = FFFFFEC0
.L80A7EA78:
/* 00618 80A7EA78 86690000 */  lh      $t1, 0x0000($s3)           ## 80A873A4
/* 0061C 80A7EA7C 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00620 80A7EA80 240C0046 */  addiu   $t4, $zero, 0x0046         ## $t4 = 00000046
/* 00624 80A7EA84 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00628 80A7EA88 AFAD0038 */  sw      $t5, 0x0038($sp)           
/* 0062C 80A7EA8C AFAC0030 */  sw      $t4, 0x0030($sp)           
/* 00630 80A7EA90 AFAB002C */  sw      $t3, 0x002C($sp)           
/* 00634 80A7EA94 AFA30010 */  sw      $v1, 0x0010($sp)           
/* 00638 80A7EA98 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 0063C 80A7EA9C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00640 80A7EAA0 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00644 80A7EAA4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00648 80A7EAA8 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 0064C 80A7EAAC AFA00034 */  sw      $zero, 0x0034($sp)         
/* 00650 80A7EAB0 AFB6003C */  sw      $s6, 0x003C($sp)           
/* 00654 80A7EAB4 0C00A7A3 */  jal     EffectSsKakera_Spawn
              
/* 00658 80A7EAB8 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 0065C 80A7EABC 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 00660 80A7EAC0 1657FF7F */  bne     $s2, $s7, .L80A7E8C0       
/* 00664 80A7EAC4 26730002 */  addiu   $s3, $s3, 0x0002           ## $s3 = 80A873A6
/* 00668 80A7EAC8 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 0066C 80A7EACC D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00670 80A7EAD0 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00674 80A7EAD4 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00678 80A7EAD8 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 0067C 80A7EADC D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00680 80A7EAE0 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00684 80A7EAE4 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00688 80A7EAE8 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 0068C 80A7EAEC 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00690 80A7EAF0 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00694 80A7EAF4 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00698 80A7EAF8 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 0069C 80A7EAFC 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 006A0 80A7EB00 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 006A4 80A7EB04 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 006A8 80A7EB08 03E00008 */  jr      $ra                        
/* 006AC 80A7EB0C 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
