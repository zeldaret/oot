.late_rodata
glabel D_80AD2928
 .word 0x40A9999A
glabel D_80AD292C
 .word 0x3A03126F

.text
glabel func_80AD076C
/* 012CC 80AD076C 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 012D0 80AD0770 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 012D4 80AD0774 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 012D8 80AD0778 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 012DC 80AD077C AFB00050 */  sw      $s0, 0x0050($sp)           
/* 012E0 80AD0780 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 012E4 80AD0784 AFA50094 */  sw      $a1, 0x0094($sp)           
/* 012E8 80AD0788 3C0180AD */  lui     $at, %hi(D_80AD2928)       ## $at = 80AD0000
/* 012EC 80AD078C C4222928 */  lwc1    $f2, %lo(D_80AD2928)($at)  
/* 012F0 80AD0790 C4800090 */  lwc1    $f0, 0x0090($a0)           ## 00000090
/* 012F4 80AD0794 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 012F8 80AD0798 3C0180AD */  lui     $at, %hi(D_80AD292C)       ## $at = 80AD0000
/* 012FC 80AD079C 4602003E */  c.le.s  $f0, $f2                   
/* 01300 80AD07A0 00000000 */  nop
/* 01304 80AD07A4 45020004 */  bc1fl   .L80AD07B8                 
/* 01308 80AD07A8 8E420118 */  lw      $v0, 0x0118($s2)           ## 00000118
/* 0130C 80AD07AC C424292C */  lwc1    $f4, %lo(D_80AD292C)($at)  
/* 01310 80AD07B0 46040080 */  add.s   $f2, $f0, $f4              
/* 01314 80AD07B4 8E420118 */  lw      $v0, 0x0118($s2)           ## 00000118
.L80AD07B8:
/* 01318 80AD07B8 3C05BE0A */  lui     $a1, 0xBE0A                ## $a1 = BE0A0000
/* 0131C 80AD07BC 34A53D71 */  ori     $a1, $a1, 0x3D71           ## $a1 = BE0A3D71
/* 01320 80AD07C0 10400005 */  beq     $v0, $zero, .L80AD07D8     
/* 01324 80AD07C4 26440060 */  addiu   $a0, $s2, 0x0060           ## $a0 = 00000060
/* 01328 80AD07C8 8C4E0130 */  lw      $t6, 0x0130($v0)           ## 00000130
/* 0132C 80AD07CC 55C00003 */  bnel    $t6, $zero, .L80AD07DC     
/* 01330 80AD07D0 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
/* 01334 80AD07D4 AE400118 */  sw      $zero, 0x0118($s2)         ## 00000118
.L80AD07D8:
/* 01338 80AD07D8 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
.L80AD07DC:
/* 0133C 80AD07DC C6480080 */  lwc1    $f8, 0x0080($s2)           ## 00000080
/* 01340 80AD07E0 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01344 80AD07E4 44818000 */  mtc1    $at, $f16                  ## $f16 = 70.00
/* 01348 80AD07E8 46083281 */  sub.s   $f10, $f6, $f8             
/* 0134C 80AD07EC E6420068 */  swc1    $f2, 0x0068($s2)           ## 00000068
/* 01350 80AD07F0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01354 80AD07F4 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 01358 80AD07F8 460A803E */  c.le.s  $f16, $f10                 
/* 0135C 80AD07FC 00000000 */  nop
/* 01360 80AD0800 4502000E */  bc1fl   .L80AD083C                 
/* 01364 80AD0804 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 01368 80AD0808 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0136C 80AD080C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 01370 80AD0810 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01374 80AD0814 3C05BFA6 */  lui     $a1, 0xBFA6                ## $a1 = BFA60000
/* 01378 80AD0818 4406A000 */  mfc1    $a2, $f20                  
/* 0137C 80AD081C 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = BFA66666
/* 01380 80AD0820 26440060 */  addiu   $a0, $s2, 0x0060           ## $a0 = 00000060
/* 01384 80AD0824 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 01388 80AD0828 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0138C 80AD082C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01390 80AD0830 10000008 */  beq     $zero, $zero, .L80AD0854   
/* 01394 80AD0834 8E4202D4 */  lw      $v0, 0x02D4($s2)           ## 000002D4
/* 01398 80AD0838 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.00
.L80AD083C:
/* 0139C 80AD083C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 013A0 80AD0840 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 0000CCCD
/* 013A4 80AD0844 4406A000 */  mfc1    $a2, $f20                  
/* 013A8 80AD0848 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 013AC 80AD084C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 013B0 80AD0850 8E4202D4 */  lw      $v0, 0x02D4($s2)           ## 000002D4
.L80AD0854:
/* 013B4 80AD0854 26440032 */  addiu   $a0, $s2, 0x0032           ## $a0 = 00000032
/* 013B8 80AD0858 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 013BC 80AD085C 14400007 */  bne     $v0, $zero, .L80AD087C     
/* 013C0 80AD0860 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 013C4 80AD0864 8645008A */  lh      $a1, 0x008A($s2)           ## 0000008A
/* 013C8 80AD0868 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 013CC 80AD086C 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 013D0 80AD0870 2407033E */  addiu   $a3, $zero, 0x033E         ## $a3 = 0000033E
/* 013D4 80AD0874 10000003 */  beq     $zero, $zero, .L80AD0884   
/* 013D8 80AD0878 865800B6 */  lh      $t8, 0x00B6($s2)           ## 000000B6
.L80AD087C:
/* 013DC 80AD087C AE4F02D4 */  sw      $t7, 0x02D4($s2)           ## 000002D4
/* 013E0 80AD0880 865800B6 */  lh      $t8, 0x00B6($s2)           ## 000000B6
.L80AD0884:
/* 013E4 80AD0884 2644014C */  addiu   $a0, $s2, 0x014C           ## $a0 = 0000014C
/* 013E8 80AD0888 2719015E */  addiu   $t9, $t8, 0x015E           ## $t9 = 0000015E
/* 013EC 80AD088C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 013F0 80AD0890 A65900B6 */  sh      $t9, 0x00B6($s2)           ## 000000B6
/* 013F4 80AD0894 264402F0 */  addiu   $a0, $s2, 0x02F0           ## $a0 = 000002F0
/* 013F8 80AD0898 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
/* 013FC 80AD089C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01400 80AD08A0 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 01404 80AD08A4 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 01408 80AD08A8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0140C 80AD08AC 864802F2 */  lh      $t0, 0x02F2($s2)           ## 000002F2
/* 01410 80AD08B0 864902F0 */  lh      $t1, 0x02F0($s2)           ## 000002F0
/* 01414 80AD08B4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01418 80AD08B8 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 0141C 80AD08BC 01095021 */  addu    $t2, $t0, $t1              
/* 01420 80AD08C0 A64A02F2 */  sh      $t2, 0x02F2($s2)           ## 000002F2
/* 01424 80AD08C4 4406A000 */  mfc1    $a2, $f20                  
/* 01428 80AD08C8 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 0142C 80AD08CC 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01430 80AD08D0 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 01434 80AD08D4 264402EC */  addiu   $a0, $s2, 0x02EC           ## $a0 = 000002EC
/* 01438 80AD08D8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0143C 80AD08DC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01440 80AD08E0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01444 80AD08E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01448 80AD08E8 24053184 */  addiu   $a1, $zero, 0x3184         ## $a1 = 00003184
/* 0144C 80AD08EC 924303BC */  lbu     $v1, 0x03BC($s2)           ## 000003BC
/* 01450 80AD08F0 306B0004 */  andi    $t3, $v1, 0x0004           ## $t3 = 00000000
/* 01454 80AD08F4 11600009 */  beq     $t3, $zero, .L80AD091C     
/* 01458 80AD08F8 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 0145C 80AD08FC 924C03BD */  lbu     $t4, 0x03BD($s2)           ## 000003BD
/* 01460 80AD0900 A24000AF */  sb      $zero, 0x00AF($s2)         ## 000000AF
/* 01464 80AD0904 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01468 80AD0908 318DFF7F */  andi    $t5, $t4, 0xFF7F           ## $t5 = 00000000
/* 0146C 80AD090C 0C2B4510 */  jal     func_80AD1440              
/* 01470 80AD0910 A24D03BD */  sb      $t5, 0x03BD($s2)           ## 000003BD
/* 01474 80AD0914 10000083 */  beq     $zero, $zero, .L80AD0B24   
/* 01478 80AD0918 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AD091C:
/* 0147C 80AD091C 15C00009 */  bne     $t6, $zero, .L80AD0944     
/* 01480 80AD0920 8FA90094 */  lw      $t1, 0x0094($sp)           
/* 01484 80AD0924 924F0311 */  lbu     $t7, 0x0311($s2)           ## 00000311
/* 01488 80AD0928 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 0148C 80AD092C 57000006 */  bnel    $t8, $zero, .L80AD0948     
/* 01490 80AD0930 8D2A1C44 */  lw      $t2, 0x1C44($t1)           ## 00001C44
/* 01494 80AD0934 96590088 */  lhu     $t9, 0x0088($s2)           ## 00000088
/* 01498 80AD0938 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 0149C 80AD093C 51000079 */  beql    $t0, $zero, .L80AD0B24     
/* 014A0 80AD0940 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AD0944:
/* 014A4 80AD0944 8D2A1C44 */  lw      $t2, 0x1C44($t1)           ## 00001C44
.L80AD0948:
/* 014A8 80AD0948 306BFFFD */  andi    $t3, $v1, 0xFFFD           ## $t3 = 00000000
/* 014AC 80AD094C AFAA0088 */  sw      $t2, 0x0088($sp)           
/* 014B0 80AD0950 92420311 */  lbu     $v0, 0x0311($s2)           ## 00000311
/* 014B4 80AD0954 A24B03BC */  sb      $t3, 0x03BC($s2)           ## 000003BC
/* 014B8 80AD0958 8FAC0088 */  lw      $t4, 0x0088($sp)           
/* 014BC 80AD095C 30420002 */  andi    $v0, $v0, 0x0002           ## $v0 = 00000000
/* 014C0 80AD0960 14400016 */  bne     $v0, $zero, .L80AD09BC     
/* 014C4 80AD0964 00000000 */  nop
/* 014C8 80AD0968 8E4D03B0 */  lw      $t5, 0x03B0($s2)           ## 000003B0
/* 014CC 80AD096C 158D0013 */  bne     $t4, $t5, .L80AD09BC       
/* 014D0 80AD0970 00000000 */  nop
/* 014D4 80AD0974 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 014D8 80AD0978 00000000 */  nop
/* 014DC 80AD097C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 014E0 80AD0980 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 014E4 80AD0984 24080028 */  addiu   $t0, $zero, 0x0028         ## $t0 = 00000028
/* 014E8 80AD0988 4600403C */  c.lt.s  $f8, $f0                   
/* 014EC 80AD098C 00000000 */  nop
/* 014F0 80AD0990 45020006 */  bc1fl   .L80AD09AC                 
/* 014F4 80AD0994 86580032 */  lh      $t8, 0x0032($s2)           ## 00000032
/* 014F8 80AD0998 864E0032 */  lh      $t6, 0x0032($s2)           ## 00000032
/* 014FC 80AD099C 25CF2000 */  addiu   $t7, $t6, 0x2000           ## $t7 = 00002000
/* 01500 80AD09A0 10000004 */  beq     $zero, $zero, .L80AD09B4   
/* 01504 80AD09A4 A64F0032 */  sh      $t7, 0x0032($s2)           ## 00000032
/* 01508 80AD09A8 86580032 */  lh      $t8, 0x0032($s2)           ## 00000032
.L80AD09AC:
/* 0150C 80AD09AC 2719E000 */  addiu   $t9, $t8, 0xE000           ## $t9 = FFFFE000
/* 01510 80AD09B0 A6590032 */  sh      $t9, 0x0032($s2)           ## 00000032
.L80AD09B4:
/* 01514 80AD09B4 1000003F */  beq     $zero, $zero, .L80AD0AB4   
/* 01518 80AD09B8 AE4802D4 */  sw      $t0, 0x02D4($s2)           ## 000002D4
.L80AD09BC:
/* 0151C 80AD09BC 14400004 */  bne     $v0, $zero, .L80AD09D0     
/* 01520 80AD09C0 3C0B80AD */  lui     $t3, %hi(D_80AD282C)       ## $t3 = 80AD0000
/* 01524 80AD09C4 96490088 */  lhu     $t1, 0x0088($s2)           ## 00000088
/* 01528 80AD09C8 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 0152C 80AD09CC 11400039 */  beq     $t2, $zero, .L80AD0AB4     
.L80AD09D0:
/* 01530 80AD09D0 256B282C */  addiu   $t3, $t3, %lo(D_80AD282C)  ## $t3 = 80AD282C
/* 01534 80AD09D4 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 80AD282C
/* 01538 80AD09D8 27B1007C */  addiu   $s1, $sp, 0x007C           ## $s1 = FFFFFFEC
/* 0153C 80AD09DC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01540 80AD09E0 AE2D0000 */  sw      $t5, 0x0000($s1)           ## FFFFFFEC
/* 01544 80AD09E4 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 80AD2830
/* 01548 80AD09E8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 0154C 80AD09EC 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 01550 80AD09F0 AE2C0004 */  sw      $t4, 0x0004($s1)           ## FFFFFFF0
/* 01554 80AD09F4 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 80AD2834
/* 01558 80AD09F8 AE2D0008 */  sw      $t5, 0x0008($s1)           ## FFFFFFF4
.L80AD09FC:
/* 0155C 80AD09FC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01560 80AD0A00 4600A306 */  mov.s   $f12, $f20                 
/* 01564 80AD0A04 C64A0024 */  lwc1    $f10, 0x0024($s2)          ## 00000024
/* 01568 80AD0A08 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0156C 80AD0A0C 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 01570 80AD0A10 460A0400 */  add.s   $f16, $f0, $f10            
/* 01574 80AD0A14 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01578 80AD0A18 E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 0157C 80AD0A1C C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 01580 80AD0A20 4600A306 */  mov.s   $f12, $f20                 
/* 01584 80AD0A24 46120100 */  add.s   $f4, $f0, $f18             
/* 01588 80AD0A28 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0158C 80AD0A2C E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 01590 80AD0A30 C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 01594 80AD0A34 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 01598 80AD0A38 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 0159C 80AD0A3C 46060200 */  add.s   $f8, $f0, $f6              
/* 015A0 80AD0A40 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 015A4 80AD0A44 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 015A8 80AD0A48 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 015AC 80AD0A4C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 015B0 80AD0A50 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 015B4 80AD0A54 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 015B8 80AD0A58 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 015BC 80AD0A5C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 015C0 80AD0A60 E7A80074 */  swc1    $f8, 0x0074($sp)           
/* 015C4 80AD0A64 AFAD003C */  sw      $t5, 0x003C($sp)           
/* 015C8 80AD0A68 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 015CC 80AD0A6C AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 015D0 80AD0A70 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 015D4 80AD0A74 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 015D8 80AD0A78 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 015DC 80AD0A7C AFB9001C */  sw      $t9, 0x001C($sp)           
/* 015E0 80AD0A80 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 015E4 80AD0A84 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 015E8 80AD0A88 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 015EC 80AD0A8C AFA00030 */  sw      $zero, 0x0030($sp)         
/* 015F0 80AD0A90 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 015F4 80AD0A94 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 015F8 80AD0A98 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFDC
/* 015FC 80AD0A9C 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFEC
/* 01600 80AD0AA0 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01604 80AD0AA4 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFEC
/* 01608 80AD0AA8 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 0160C 80AD0AAC 0601FFD3 */  bgez    $s0, .L80AD09FC            
/* 01610 80AD0AB0 00000000 */  nop
.L80AD0AB4:
/* 01614 80AD0AB4 8FAE0088 */  lw      $t6, 0x0088($sp)           
/* 01618 80AD0AB8 8E4F03B0 */  lw      $t7, 0x03B0($s2)           ## 000003B0
/* 0161C 80AD0ABC 55CF0006 */  bnel    $t6, $t7, .L80AD0AD8       
/* 01620 80AD0AC0 96480088 */  lhu     $t0, 0x0088($s2)           ## 00000088
/* 01624 80AD0AC4 92580311 */  lbu     $t8, 0x0311($s2)           ## 00000311
/* 01628 80AD0AC8 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 0162C 80AD0ACC 53200015 */  beql    $t9, $zero, .L80AD0B24     
/* 01630 80AD0AD0 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 01634 80AD0AD4 96480088 */  lhu     $t0, 0x0088($s2)           ## 00000088
.L80AD0AD8:
/* 01638 80AD0AD8 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 0163C 80AD0ADC 264500E4 */  addiu   $a1, $s2, 0x00E4           ## $a1 = 000000E4
/* 01640 80AD0AE0 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 01644 80AD0AE4 15200007 */  bne     $t1, $zero, .L80AD0B04     
/* 01648 80AD0AE8 24063985 */  addiu   $a2, $zero, 0x3985         ## $a2 = 00003985
/* 0164C 80AD0AEC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01650 80AD0AF0 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 01654 80AD0AF4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 01658 80AD0AF8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0165C 80AD0AFC 0C00AA7D */  jal     EffectSsDeadSound_SpawnStationary              
/* 01660 80AD0B00 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AD0B04:
/* 01664 80AD0B04 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 01668 80AD0B08 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0166C 80AD0B0C 26460024 */  addiu   $a2, $s2, 0x0024           ## $a2 = 00000024
/* 01670 80AD0B10 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01674 80AD0B14 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
/* 01678 80AD0B18 0C00B55C */  jal     Actor_Kill
              
/* 0167C 80AD0B1C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01680 80AD0B20 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AD0B24:
/* 01684 80AD0B24 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 01688 80AD0B28 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 0168C 80AD0B2C 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 01690 80AD0B30 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 01694 80AD0B34 03E00008 */  jr      $ra                        
/* 01698 80AD0B38 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
