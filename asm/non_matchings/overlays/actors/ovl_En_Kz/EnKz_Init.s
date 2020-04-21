glabel EnKz_Init
/* 009BC 80A9CF0C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 009C0 80A9CF10 AFB00034 */  sw      $s0, 0x0034($sp)
/* 009C4 80A9CF14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009C8 80A9CF18 AFB10038 */  sw      $s1, 0x0038($sp)
/* 009CC 80A9CF1C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 009D0 80A9CF20 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 009D4 80A9CF24 AFBF003C */  sw      $ra, 0x003C($sp)
/* 009D8 80A9CF28 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 009DC 80A9CF2C 260E0216 */  addiu   $t6, $s0, 0x0216           ## $t6 = 00000216
/* 009E0 80A9CF30 260F025E */  addiu   $t7, $s0, 0x025E           ## $t7 = 0000025E
/* 009E4 80A9CF34 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 009E8 80A9CF38 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 009EC 80A9CF3C AFB80018 */  sw      $t8, 0x0018($sp)
/* 009F0 80A9CF40 24C686D0 */  addiu   $a2, $a2, 0x86D0           ## $a2 = 060086D0
/* 009F4 80A9CF44 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 009F8 80A9CF48 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 009FC 80A9CF4C AFA50044 */  sw      $a1, 0x0044($sp)
/* 00A00 80A9CF50 0C0291BE */  jal     SkelAnime_InitSV
/* 00A04 80A9CF54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A08 80A9CF58 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A0C 80A9CF5C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00A10 80A9CF60 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A14 80A9CF64 44050000 */  mfc1    $a1, $f0
/* 00A18 80A9CF68 44070000 */  mfc1    $a3, $f0
/* 00A1C 80A9CF6C 0C00AC78 */  jal     ActorShape_Init

/* 00A20 80A9CF70 00000000 */  nop
/* 00A24 80A9CF74 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00A28 80A9CF78 AFA50040 */  sw      $a1, 0x0040($sp)
/* 00A2C 80A9CF7C 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00A30 80A9CF80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A34 80A9CF84 3C0780AA */  lui     $a3, %hi(D_80A9D8C0)       ## $a3 = 80AA0000
/* 00A38 80A9CF88 8FA50040 */  lw      $a1, 0x0040($sp)
/* 00A3C 80A9CF8C 24E7D8C0 */  addiu   $a3, $a3, %lo(D_80A9D8C0)  ## $a3 = 80A9D8C0
/* 00A40 80A9CF90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A44 80A9CF94 0C01712B */  jal     ActorCollider_InitCylinder

/* 00A48 80A9CF98 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00A4C 80A9CF9C 3C0680AA */  lui     $a2, %hi(D_80A9D8EC)       ## $a2 = 80AA0000
/* 00A50 80A9CFA0 24C6D8EC */  addiu   $a2, $a2, %lo(D_80A9D8EC)  ## $a2 = 80A9D8EC
/* 00A54 80A9CFA4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00A58 80A9CFA8 0C0187BF */  jal     func_80061EFC
/* 00A5C 80A9CFAC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A60 80A9CFB0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00A64 80A9CFB4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00A68 80A9CFB8 0C00B58B */  jal     Actor_SetScale

/* 00A6C 80A9CFBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A70 80A9CFC0 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00A74 80A9CFC4 A219001F */  sb      $t9, 0x001F($s0)           ## 0000001F
/* 00A78 80A9CFC8 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 00A7C 80A9CFCC 3C0580AA */  lui     $a1, %hi(D_80A9D8F8)       ## $a1 = 80AA0000
/* 00A80 80A9CFD0 24A5D8F8 */  addiu   $a1, $a1, %lo(D_80A9D8F8)  ## $a1 = 80A9D8F8
/* 00A84 80A9CFD4 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00A88 80A9CFD8 0C00D3B0 */  jal     func_80034EC0
/* 00A8C 80A9CFDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A90 80A9CFE0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00A94 80A9CFE4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00A98 80A9CFE8 94480EDA */  lhu     $t0, 0x0EDA($v0)           ## 8015F53A
/* 00A9C 80A9CFEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA0 80A9CFF0 31090008 */  andi    $t1, $t0, 0x0008           ## $t1 = 00000000
/* 00AA4 80A9CFF4 51200006 */  beql    $t1, $zero, .L80A9D010
/* 00AA8 80A9CFF8 8C4A0004 */  lw      $t2, 0x0004($v0)           ## 8015E664
/* 00AAC 80A9CFFC 0C2A7391 */  jal     func_80A9CE44
/* 00AB0 80A9D000 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AB4 80A9D004 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00AB8 80A9D008 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00ABC 80A9D00C 8C4A0004 */  lw      $t2, 0x0004($v0)           ## 8015E664
.L80A9D010:
/* 00AC0 80A9D010 3C0F80AA */  lui     $t7, %hi(func_80A9D0C0)    ## $t7 = 80AA0000
/* 00AC4 80A9D014 25EFD0C0 */  addiu   $t7, $t7, %lo(func_80A9D0C0) ## $t7 = 80A9D0C0
/* 00AC8 80A9D018 5540001A */  bnel    $t2, $zero, .L80A9D084
/* 00ACC 80A9D01C AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 00AD0 80A9D020 944B0F1E */  lhu     $t3, 0x0F1E($v0)           ## 8015F57E
/* 00AD4 80A9D024 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00AD8 80A9D028 316C0100 */  andi    $t4, $t3, 0x0100           ## $t4 = 00000000
/* 00ADC 80A9D02C 15800010 */  bne     $t4, $zero, .L80A9D070
/* 00AE0 80A9D030 00000000 */  nop
/* 00AE4 80A9D034 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00AE8 80A9D038 240D04FF */  addiu   $t5, $zero, 0x04FF         ## $t5 = 000004FF
/* 00AEC 80A9D03C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AF0 80A9D040 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00AF4 80A9D044 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00AF8 80A9D048 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00AFC 80A9D04C 240700EF */  addiu   $a3, $zero, 0x00EF         ## $a3 = 000000EF
/* 00B00 80A9D050 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 00B04 80A9D054 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00B08 80A9D058 AFAD0028 */  sw      $t5, 0x0028($sp)
/* 00B0C 80A9D05C AFA00024 */  sw      $zero, 0x0024($sp)
/* 00B10 80A9D060 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00B14 80A9D064 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00B18 80A9D068 0C00C916 */  jal     Actor_SpawnAttached

/* 00B1C 80A9D06C E7A80018 */  swc1    $f8, 0x0018($sp)
.L80A9D070:
/* 00B20 80A9D070 3C0E80AA */  lui     $t6, %hi(func_80A9D42C)    ## $t6 = 80AA0000
/* 00B24 80A9D074 25CED42C */  addiu   $t6, $t6, %lo(func_80A9D42C) ## $t6 = 80A9D42C
/* 00B28 80A9D078 10000002 */  beq     $zero, $zero, .L80A9D084
/* 00B2C 80A9D07C AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00B30 80A9D080 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80A9D084:
/* 00B34 80A9D084 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00B38 80A9D088 8FB00034 */  lw      $s0, 0x0034($sp)
/* 00B3C 80A9D08C 8FB10038 */  lw      $s1, 0x0038($sp)
/* 00B40 80A9D090 03E00008 */  jr      $ra
/* 00B44 80A9D094 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
