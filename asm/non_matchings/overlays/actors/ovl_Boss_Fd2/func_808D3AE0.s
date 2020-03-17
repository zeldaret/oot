glabel func_808D3AE0
/* 01470 808D3AE0 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 01474 808D3AE4 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 01478 808D3AE8 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 0147C 808D3AEC AFB3004C */  sw      $s3, 0x004C($sp)           
/* 01480 808D3AF0 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 01484 808D3AF4 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 01488 808D3AF8 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 0148C 808D3AFC F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 01490 808D3B00 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 01494 808D3B04 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 01498 808D3B08 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 0149C 808D3B0C 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 014A0 808D3B10 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 014A4 808D3B14 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 014A8 808D3B18 35F80400 */  ori     $t8, $t7, 0x0400           ## $t8 = 00000400
/* 014AC 808D3B1C 8C910118 */  lw      $s1, 0x0118($a0)           ## 00000118
/* 014B0 808D3B20 A08E0194 */  sb      $t6, 0x0194($a0)           ## 00000194
/* 014B4 808D3B24 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 014B8 808D3B28 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 014BC 808D3B2C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 014C0 808D3B30 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 014C4 808D3B34 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 014C8 808D3B38 86430198 */  lh      $v1, 0x0198($s2)           ## 00000198
/* 014CC 808D3B3C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 014D0 808D3B40 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 014D4 808D3B44 10600005 */  beq     $v1, $zero, .L808D3B5C     
/* 014D8 808D3B48 00000000 */  nop
/* 014DC 808D3B4C 50610061 */  beql    $v1, $at, .L808D3CD4       
/* 014E0 808D3B50 864B019C */  lh      $t3, 0x019C($s2)           ## 0000019C
/* 014E4 808D3B54 1000006D */  beq     $zero, $zero, .L808D3D0C   
/* 014E8 808D3B58 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L808D3B5C:
/* 014EC 808D3B5C 0C0295B2 */  jal     func_800A56C8              
/* 014F0 808D3B60 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 014F4 808D3B64 10400003 */  beq     $v0, $zero, .L808D3B74     
/* 014F8 808D3B68 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 014FC 808D3B6C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01500 808D3B70 240538D3 */  addiu   $a1, $zero, 0x38D3         ## $a1 = 000038D3
.L808D3B74:
/* 01504 808D3B74 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01508 808D3B78 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 0150C 808D3B7C C64401F0 */  lwc1    $f4, 0x01F0($s2)           ## 000001F0
/* 01510 808D3B80 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 01514 808D3B84 46062201 */  sub.s   $f8, $f4, $f6              
/* 01518 808D3B88 44054000 */  mfc1    $a1, $f8                   
/* 0151C 808D3B8C 0C0295B2 */  jal     func_800A56C8              
/* 01520 808D3B90 00000000 */  nop
/* 01524 808D3B94 10400040 */  beq     $v0, $zero, .L808D3C98     
/* 01528 808D3B98 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0152C 808D3B9C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01530 808D3BA0 4481D000 */  mtc1    $at, $f26                  ## $f26 = 300.00
/* 01534 808D3BA4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01538 808D3BA8 4481C000 */  mtc1    $at, $f24                  ## $f24 = 0.50
/* 0153C 808D3BAC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01540 808D3BB0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 8.00
/* 01544 808D3BB4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01548 808D3BB8 26341970 */  addiu   $s4, $s1, 0x1970           ## $s4 = 00001970
/* 0154C 808D3BBC 3C13808D */  lui     $s3, %hi(D_808D61C4)       ## $s3 = 808D0000
/* 01550 808D3BC0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 01554 808D3BC4 267361C4 */  addiu   $s3, $s3, %lo(D_808D61C4)  ## $s3 = 808D61C4
/* 01558 808D3BC8 27B10078 */  addiu   $s1, $sp, 0x0078           ## $s1 = FFFFFFE0
/* 0155C 808D3BCC 8E680000 */  lw      $t0, 0x0000($s3)           ## 808D61C4
.L808D3BD0:
/* 01560 808D3BD0 8E790004 */  lw      $t9, 0x0004($s3)           ## 808D61C8
/* 01564 808D3BD4 4600B306 */  mov.s   $f12, $f22                 
/* 01568 808D3BD8 AE280000 */  sw      $t0, 0x0000($s1)           ## FFFFFFE0
/* 0156C 808D3BDC 8E680008 */  lw      $t0, 0x0008($s3)           ## 808D61CC
/* 01570 808D3BE0 AE390004 */  sw      $t9, 0x0004($s1)           ## FFFFFFE4
/* 01574 808D3BE4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01578 808D3BE8 AE280008 */  sw      $t0, 0x0008($s1)           ## FFFFFFE8
/* 0157C 808D3BEC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01580 808D3BF0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01584 808D3BF4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01588 808D3BF8 E7A00084 */  swc1    $f0, 0x0084($sp)           
/* 0158C 808D3BFC E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 01590 808D3C00 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01594 808D3C04 4600B306 */  mov.s   $f12, $f22                 
/* 01598 808D3C08 E7A0008C */  swc1    $f0, 0x008C($sp)           
/* 0159C 808D3C0C E7B8007C */  swc1    $f24, 0x007C($sp)          
/* 015A0 808D3C10 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 015A4 808D3C14 4600A306 */  mov.s   $f12, $f20                 
/* 015A8 808D3C18 C64A0038 */  lwc1    $f10, 0x0038($s2)          ## 00000038
/* 015AC 808D3C1C 4600A306 */  mov.s   $f12, $f20                 
/* 015B0 808D3C20 460A0400 */  add.s   $f16, $f0, $f10            
/* 015B4 808D3C24 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 015B8 808D3C28 E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 015BC 808D3C2C C652003C */  lwc1    $f18, 0x003C($s2)          ## 0000003C
/* 015C0 808D3C30 4600A306 */  mov.s   $f12, $f20                 
/* 015C4 808D3C34 46120100 */  add.s   $f4, $f0, $f18             
/* 015C8 808D3C38 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 015CC 808D3C3C E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 015D0 808D3C40 C6460040 */  lwc1    $f6, 0x0040($s2)           ## 00000040
/* 015D4 808D3C44 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 015D8 808D3C48 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 015DC 808D3C4C 46060200 */  add.s   $f8, $f0, $f6              
/* 015E0 808D3C50 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 015E4 808D3C54 E7A80074 */  swc1    $f8, 0x0074($sp)           
/* 015E8 808D3C58 461A0280 */  add.s   $f10, $f0, $f26            
/* 015EC 808D3C5C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001970
/* 015F0 808D3C60 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFD4
/* 015F4 808D3C64 27A60084 */  addiu   $a2, $sp, 0x0084           ## $a2 = FFFFFFEC
/* 015F8 808D3C68 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 015FC 808D3C6C 0C234A82 */  jal     func_808D2A08              
/* 01600 808D3C70 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFE0
/* 01604 808D3C74 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 01608 808D3C78 00108400 */  sll     $s0, $s0, 16               
/* 0160C 808D3C7C 00108403 */  sra     $s0, $s0, 16               
/* 01610 808D3C80 2A010019 */  slti    $at, $s0, 0x0019           
/* 01614 808D3C84 5420FFD2 */  bnel    $at, $zero, .L808D3BD0     
/* 01618 808D3C88 8E680000 */  lw      $t0, 0x0000($s3)           ## 808D61C4
/* 0161C 808D3C8C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01620 808D3C90 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01624 808D3C94 24053927 */  addiu   $a1, $zero, 0x3927         ## $a1 = 00003927
.L808D3C98:
/* 01628 808D3C98 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 0162C 808D3C9C 0C0295B2 */  jal     func_800A56C8              
/* 01630 808D3CA0 8E4501F0 */  lw      $a1, 0x01F0($s2)           ## 000001F0
/* 01634 808D3CA4 10400018 */  beq     $v0, $zero, .L808D3D08     
/* 01638 808D3CA8 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 0163C 808D3CAC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01640 808D3CB0 24A5A86C */  addiu   $a1, $a1, 0xA86C           ## $a1 = 0600A86C
/* 01644 808D3CB4 0C0294D3 */  jal     func_800A534C              
/* 01648 808D3CB8 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 0164C 808D3CBC 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01650 808D3CC0 240A003C */  addiu   $t2, $zero, 0x003C         ## $t2 = 0000003C
/* 01654 808D3CC4 A6490198 */  sh      $t1, 0x0198($s2)           ## 00000198
/* 01658 808D3CC8 1000000F */  beq     $zero, $zero, .L808D3D08   
/* 0165C 808D3CCC A64A01BC */  sh      $t2, 0x01BC($s2)           ## 000001BC
/* 01660 808D3CD0 864B019C */  lh      $t3, 0x019C($s2)           ## 0000019C
.L808D3CD4:
/* 01664 808D3CD4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01668 808D3CD8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0166C 808D3CDC 316C000F */  andi    $t4, $t3, 0x000F           ## $t4 = 00000000
/* 01670 808D3CE0 55810004 */  bnel    $t4, $at, .L808D3CF4       
/* 01674 808D3CE4 864D01BC */  lh      $t5, 0x01BC($s2)           ## 000001BC
/* 01678 808D3CE8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0167C 808D3CEC 240538D4 */  addiu   $a1, $zero, 0x38D4         ## $a1 = 000038D4
/* 01680 808D3CF0 864D01BC */  lh      $t5, 0x01BC($s2)           ## 000001BC
.L808D3CF4:
/* 01684 808D3CF4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01688 808D3CF8 55A00004 */  bnel    $t5, $zero, .L808D3D0C     
/* 0168C 808D3CFC 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 01690 808D3D00 0C234CAD */  jal     func_808D32B4              
/* 01694 808D3D04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000001
.L808D3D08:
/* 01698 808D3D08 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L808D3D0C:
/* 0169C 808D3D0C D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 016A0 808D3D10 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 016A4 808D3D14 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 016A8 808D3D18 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 016AC 808D3D1C 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 016B0 808D3D20 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 016B4 808D3D24 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 016B8 808D3D28 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 016BC 808D3D2C 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 016C0 808D3D30 03E00008 */  jr      $ra                        
/* 016C4 808D3D34 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


