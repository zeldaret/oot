glabel func_80ACFEF8
/* 00A58 80ACFEF8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00A5C 80ACFEFC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00A60 80ACFF00 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00A64 80ACFF04 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00A68 80ACFF08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A6C 80ACFF0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A70 80ACFF10 24053155 */  addiu   $a1, $zero, 0x3155         ## $a1 = 00003155
/* 00A74 80ACFF14 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A78 80ACFF18 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00A7C 80ACFF1C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00A80 80ACFF20 8DCEE670 */  lw      $t6, -0x1990($t6)          ## 8015E670
/* 00A84 80ACFF24 15C00007 */  bne     $t6, $zero, .L80ACFF44     
/* 00A88 80ACFF28 00000000 */  nop
/* 00A8C 80ACFF2C C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00A90 80ACFF30 C60402DC */  lwc1    $f4, 0x02DC($s0)           ## 000002DC
/* 00A94 80ACFF34 4600203C */  c.lt.s  $f4, $f0                   
/* 00A98 80ACFF38 00000000 */  nop
/* 00A9C 80ACFF3C 45020006 */  bc1fl   .L80ACFF58                 
/* 00AA0 80ACFF40 C60602D8 */  lwc1    $f6, 0x02D8($s0)           ## 000002D8
.L80ACFF44:
/* 00AA4 80ACFF44 0C2B434F */  jal     func_80AD0D3C              
/* 00AA8 80ACFF48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AAC 80ACFF4C 10000040 */  beq     $zero, $zero, .L80AD0050   
/* 00AB0 80ACFF50 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 00AB4 80ACFF54 C60602D8 */  lwc1    $f6, 0x02D8($s0)           ## 000002D8
.L80ACFF58:
/* 00AB8 80ACFF58 4606003C */  c.lt.s  $f0, $f6                   
/* 00ABC 80ACFF5C 00000000 */  nop
/* 00AC0 80ACFF60 4502003B */  bc1fl   .L80AD0050                 
/* 00AC4 80ACFF64 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 00AC8 80ACFF68 860F02FA */  lh      $t7, 0x02FA($s0)           ## 000002FA
/* 00ACC 80ACFF6C 8FB80054 */  lw      $t8, 0x0054($sp)           
/* 00AD0 80ACFF70 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00AD4 80ACFF74 29E10003 */  slti    $at, $t7, 0x0003           
/* 00AD8 80ACFF78 10200034 */  beq     $at, $zero, .L80AD004C     
/* 00ADC 80ACFF7C 0338C821 */  addu    $t9, $t9, $t8              
/* 00AE0 80ACFF80 8F391DE4 */  lw      $t9, 0x1DE4($t9)           ## 00011DE4
/* 00AE4 80ACFF84 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00AE8 80ACFF88 33280007 */  andi    $t0, $t9, 0x0007           ## $t0 = 00000000
/* 00AEC 80ACFF8C 55000030 */  bnel    $t0, $zero, .L80AD0050     
/* 00AF0 80ACFF90 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 00AF4 80ACFF94 44816000 */  mtc1    $at, $f12                  ## $f12 = 25.00
/* 00AF8 80ACFF98 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00AFC 80ACFF9C 00000000 */  nop
/* 00B00 80ACFFA0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00B04 80ACFFA4 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 00B08 80ACFFA8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B0C 80ACFFAC E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00B10 80ACFFB0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00B14 80ACFFB4 44816000 */  mtc1    $at, $f12                  ## $f12 = 25.00
/* 00B18 80ACFFB8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B1C 80ACFFBC E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 00B20 80ACFFC0 C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 00B24 80ACFFC4 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00B28 80ACFFC8 C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 00B2C 80ACFFCC 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 00B30 80ACFFD0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00B34 80ACFFD4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00B38 80ACFFD8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B3C 80ACFFDC 2407001D */  addiu   $a3, $zero, 0x001D         ## $a3 = 0000001D
/* 00B40 80ACFFE0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00B44 80ACFFE4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00B48 80ACFFE8 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00B4C 80ACFFEC 46049180 */  add.s   $f6, $f18, $f4             
/* 00B50 80ACFFF0 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00B54 80ACFFF4 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00B58 80ACFFF8 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 00B5C 80ACFFFC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00B60 80AD0000 46080280 */  add.s   $f10, $f0, $f8             
/* 00B64 80AD0004 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00B68 80AD0008 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00B6C 80AD000C 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00B70 80AD0010 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00B74 80AD0014 1040000D */  beq     $v0, $zero, .L80AD004C     
/* 00B78 80AD0018 3C0180AD */  lui     $at, %hi(D_80AD291C)       ## $at = 80AD0000
/* 00B7C 80AD001C C42C291C */  lwc1    $f12, %lo(D_80AD291C)($at) 
/* 00B80 80AD0020 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B84 80AD0024 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 00B88 80AD0028 4600040D */  trunc.w.s $f16, $f0                  
/* 00B8C 80AD002C 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00B90 80AD0030 44028000 */  mfc1    $v0, $f16                  
/* 00B94 80AD0034 00000000 */  nop
/* 00B98 80AD0038 A4620032 */  sh      $v0, 0x0032($v1)           ## 00000032
/* 00B9C 80AD003C A46200B6 */  sh      $v0, 0x00B6($v1)           ## 000000B6
/* 00BA0 80AD0040 860C02FA */  lh      $t4, 0x02FA($s0)           ## 000002FA
/* 00BA4 80AD0044 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00BA8 80AD0048 A60D02FA */  sh      $t5, 0x02FA($s0)           ## 000002FA
.L80AD004C:
/* 00BAC 80AD004C 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
.L80AD0050:
/* 00BB0 80AD0050 860F02F0 */  lh      $t7, 0x02F0($s0)           ## 000002F0
/* 00BB4 80AD0054 01CFC021 */  addu    $t8, $t6, $t7              
/* 00BB8 80AD0058 A61802F2 */  sh      $t8, 0x02F2($s0)           ## 000002F2
/* 00BBC 80AD005C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00BC0 80AD0060 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00BC4 80AD0064 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00BC8 80AD0068 03E00008 */  jr      $ra                        
/* 00BCC 80AD006C 00000000 */  nop


