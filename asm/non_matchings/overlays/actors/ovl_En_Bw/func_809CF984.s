glabel func_809CF984
/* 012A4 809CF984 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 012A8 809CF988 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 012AC 809CF98C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 012B0 809CF990 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 012B4 809CF994 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 012B8 809CF998 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 012BC 809CF99C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012C0 809CF9A0 44050000 */  mfc1    $a1, $f0                   
/* 012C4 809CF9A4 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 012C8 809CF9A8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 012CC 809CF9AC 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 012D0 809CF9B0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 012D4 809CF9B4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 012D8 809CF9B8 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 012DC 809CF9BC 86180222 */  lh      $t8, 0x0222($s0)           ## 00000222
/* 012E0 809CF9C0 3C01809D */  lui     $at, %hi(D_809D163C)       ## $at = 809D0000
/* 012E4 809CF9C4 271900FA */  addiu   $t9, $t8, 0x00FA           ## $t9 = 000000FA
/* 012E8 809CF9C8 A6190222 */  sh      $t9, 0x0222($s0)           ## 00000222
/* 012EC 809CF9CC 86080222 */  lh      $t0, 0x0222($s0)           ## 00000222
/* 012F0 809CF9D0 C428163C */  lwc1    $f8, %lo(D_809D163C)($at)  
/* 012F4 809CF9D4 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 012F8 809CF9D8 00000000 */  nop
/* 012FC 809CF9DC 468021A0 */  cvt.s.w $f6, $f4                   
/* 01300 809CF9E0 46083302 */  mul.s   $f12, $f6, $f8             
/* 01304 809CF9E4 0C0329C8 */  jal     func_800CA720              
/* 01308 809CF9E8 00000000 */  nop
/* 0130C 809CF9EC 3C01809D */  lui     $at, %hi(D_809D1640)       ## $at = 809D0000
/* 01310 809CF9F0 C42A1640 */  lwc1    $f10, %lo(D_809D1640)($at) 
/* 01314 809CF9F4 3C01809D */  lui     $at, %hi(D_809D1644)       ## $at = 809D0000
/* 01318 809CF9F8 C4301644 */  lwc1    $f16, %lo(D_809D1644)($at) 
/* 0131C 809CF9FC 86090222 */  lh      $t1, 0x0222($s0)           ## 00000222
/* 01320 809CFA00 3C01809D */  lui     $at, %hi(D_809D1648)       ## $at = 809D0000
/* 01324 809CFA04 46100482 */  mul.s   $f18, $f0, $f16            
/* 01328 809CFA08 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 0132C 809CFA0C 00000000 */  nop
/* 01330 809CFA10 46803220 */  cvt.s.w $f8, $f6                   
/* 01334 809CFA14 46125101 */  sub.s   $f4, $f10, $f18            
/* 01338 809CFA18 E6040050 */  swc1    $f4, 0x0050($s0)           ## 00000050
/* 0133C 809CFA1C C4301648 */  lwc1    $f16, %lo(D_809D1648)($at) 
/* 01340 809CFA20 46104302 */  mul.s   $f12, $f8, $f16            
/* 01344 809CFA24 0C0329C8 */  jal     func_800CA720              
/* 01348 809CFA28 00000000 */  nop
/* 0134C 809CFA2C 3C01809D */  lui     $at, %hi(D_809D164C)       ## $at = 809D0000
/* 01350 809CFA30 C42A164C */  lwc1    $f10, %lo(D_809D164C)($at) 
/* 01354 809CFA34 860A0222 */  lh      $t2, 0x0222($s0)           ## 00000222
/* 01358 809CFA38 3C01809D */  lui     $at, %hi(D_809D1650)       ## $at = 809D0000
/* 0135C 809CFA3C 460A0482 */  mul.s   $f18, $f0, $f10            
/* 01360 809CFA40 C4241650 */  lwc1    $f4, %lo(D_809D1650)($at)  
/* 01364 809CFA44 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 01368 809CFA48 3C01809D */  lui     $at, %hi(D_809D1654)       ## $at = 809D0000
/* 0136C 809CFA4C 46804420 */  cvt.s.w $f16, $f8                  
/* 01370 809CFA50 46049180 */  add.s   $f6, $f18, $f4             
/* 01374 809CFA54 E6060054 */  swc1    $f6, 0x0054($s0)           ## 00000054
/* 01378 809CFA58 C42A1654 */  lwc1    $f10, %lo(D_809D1654)($at) 
/* 0137C 809CFA5C 460A8302 */  mul.s   $f12, $f16, $f10           
/* 01380 809CFA60 0C0329C8 */  jal     func_800CA720              
/* 01384 809CFA64 00000000 */  nop
/* 01388 809CFA68 3C01809D */  lui     $at, %hi(D_809D1658)       ## $at = 809D0000
/* 0138C 809CFA6C C4321658 */  lwc1    $f18, %lo(D_809D1658)($at) 
/* 01390 809CFA70 3C01809D */  lui     $at, %hi(D_809D165C)       ## $at = 809D0000
/* 01394 809CFA74 C424165C */  lwc1    $f4, %lo(D_809D165C)($at)  
/* 01398 809CFA78 920202A4 */  lbu     $v0, 0x02A4($s0)           ## 000002A4
/* 0139C 809CFA7C 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 013A0 809CFA80 46040182 */  mul.s   $f6, $f0, $f4              
/* 013A4 809CFA84 304B0002 */  andi    $t3, $v0, 0x0002           ## $t3 = 00000000
/* 013A8 809CFA88 00416024 */  and     $t4, $v0, $at              
/* 013AC 809CFA8C 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 013B0 809CFA90 46069201 */  sub.s   $f8, $f18, $f6             
/* 013B4 809CFA94 1160000E */  beq     $t3, $zero, .L809CFAD0     
/* 013B8 809CFA98 E6080058 */  swc1    $f8, 0x0058($s0)           ## 00000058
/* 013BC 809CFA9C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 013C0 809CFAA0 8E0E0298 */  lw      $t6, 0x0298($s0)           ## 00000298
/* 013C4 809CFAA4 44818000 */  mtc1    $at, $f16                  ## $f16 = -6.00
/* 013C8 809CFAA8 860D008A */  lh      $t5, 0x008A($s0)           ## 0000008A
/* 013CC 809CFAAC A20C02A4 */  sb      $t4, 0x02A4($s0)           ## 000002A4
/* 013D0 809CFAB0 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 013D4 809CFAB4 148E0006 */  bne     $a0, $t6, .L809CFAD0       
/* 013D8 809CFAB8 A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
/* 013DC 809CFABC 31980004 */  andi    $t8, $t4, 0x0004           ## $t8 = 00000000
/* 013E0 809CFAC0 17000003 */  bne     $t8, $zero, .L809CFAD0     
/* 013E4 809CFAC4 00000000 */  nop
/* 013E8 809CFAC8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013EC 809CFACC 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
.L809CFAD0:
/* 013F0 809CFAD0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 013F4 809CFAD4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 013F8 809CFAD8 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 013FC 809CFADC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01400 809CFAE0 33280003 */  andi    $t0, $t9, 0x0003           ## $t0 = 00000000
/* 01404 809CFAE4 1100002B */  beq     $t0, $zero, .L809CFB94     
/* 01408 809CFAE8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0140C 809CFAEC 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 01410 809CFAF0 0C010753 */  jal     func_80041D4C              
/* 01414 809CFAF4 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 01418 809CFAF8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0141C 809CFAFC 10410005 */  beq     $v0, $at, .L809CFB14       
/* 01420 809CFB00 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01424 809CFB04 10410003 */  beq     $v0, $at, .L809CFB14       
/* 01428 809CFB08 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0142C 809CFB0C 14410005 */  bne     $v0, $at, .L809CFB24       
/* 01430 809CFB10 8FA40044 */  lw      $a0, 0x0044($sp)           
.L809CFB14:
/* 01434 809CFB14 0C00B55C */  jal     Actor_Kill
              
/* 01438 809CFB18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0143C 809CFB1C 1000001E */  beq     $zero, $zero, .L809CFB98   
/* 01440 809CFB20 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809CFB24:
/* 01444 809CFB24 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01448 809CFB28 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 0144C 809CFB2C 2409000B */  addiu   $t1, $zero, 0x000B         ## $t1 = 0000000B
/* 01450 809CFB30 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01454 809CFB34 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01458 809CFB38 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 0145C 809CFB3C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 01460 809CFB40 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01464 809CFB44 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01468 809CFB48 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0146C 809CFB4C 0C00CC98 */  jal     func_80033260              
/* 01470 809CFB50 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01474 809CFB54 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 01478 809CFB58 3C01FEFF */  lui     $at, 0xFEFF                ## $at = FEFF0000
/* 0147C 809CFB5C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01480 809CFB60 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FEFFFFFF
/* 01484 809CFB64 240A0BB8 */  addiu   $t2, $zero, 0x0BB8         ## $t2 = 00000BB8
/* 01488 809CFB68 01616024 */  and     $t4, $t3, $at              
/* 0148C 809CFB6C A60A0222 */  sh      $t2, 0x0222($s0)           ## 00000222
/* 01490 809CFB70 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 01494 809CFB74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01498 809CFB78 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 0149C 809CFB7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 014A0 809CFB80 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 014A4 809CFB84 3C05809D */  lui     $a1, %hi(func_809CE884)    ## $a1 = 809D0000
/* 014A8 809CFB88 24A5E884 */  addiu   $a1, $a1, %lo(func_809CE884) ## $a1 = 809CE884
/* 014AC 809CFB8C 0C2739B8 */  jal     func_809CE6E0              
/* 014B0 809CFB90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809CFB94:
/* 014B4 809CFB94 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809CFB98:
/* 014B8 809CFB98 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 014BC 809CFB9C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 014C0 809CFBA0 03E00008 */  jr      $ra                        
/* 014C4 809CFBA4 00000000 */  nop


