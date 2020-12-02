glabel EnMb_Draw
/* 039B8 80AA9A08 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 039BC 80AA9A0C AFB50048 */  sw      $s5, 0x0048($sp)
/* 039C0 80AA9A10 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 039C4 80AA9A14 AFBF004C */  sw      $ra, 0x004C($sp)
/* 039C8 80AA9A18 AFB40044 */  sw      $s4, 0x0044($sp)
/* 039CC 80AA9A1C AFB30040 */  sw      $s3, 0x0040($sp)
/* 039D0 80AA9A20 AFB2003C */  sw      $s2, 0x003C($sp)
/* 039D4 80AA9A24 AFB10038 */  sw      $s1, 0x0038($sp)
/* 039D8 80AA9A28 AFB00034 */  sw      $s0, 0x0034($sp)
/* 039DC 80AA9A2C AFA500BC */  sw      $a1, 0x00BC($sp)
/* 039E0 80AA9A30 0C024F46 */  jal     func_80093D18
/* 039E4 80AA9A34 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 039E8 80AA9A38 8EA50190 */  lw      $a1, 0x0190($s5)           ## 00000190
/* 039EC 80AA9A3C 8EA601AC */  lw      $a2, 0x01AC($s5)           ## 000001AC
/* 039F0 80AA9A40 92A7018E */  lbu     $a3, 0x018E($s5)           ## 0000018E
/* 039F4 80AA9A44 3C0F80AB */  lui     $t7, %hi(func_80AA9870)    ## $t7 = 80AB0000
/* 039F8 80AA9A48 25EF9870 */  addiu   $t7, $t7, %lo(func_80AA9870) ## $t7 = 80AA9870
/* 039FC 80AA9A4C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 03A00 80AA9A50 AFB50018 */  sw      $s5, 0x0018($sp)
/* 03A04 80AA9A54 AFA00010 */  sw      $zero, 0x0010($sp)
/* 03A08 80AA9A58 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 03A0C 80AA9A5C 8FA400BC */  lw      $a0, 0x00BC($sp)
/* 03A10 80AA9A60 86B8001C */  lh      $t8, 0x001C($s5)           ## 0000001C
/* 03A14 80AA9A64 53000029 */  beql    $t8, $zero, .L80AA9B0C
/* 03A18 80AA9A68 86AA0328 */  lh      $t2, 0x0328($s5)           ## 00000328
/* 03A1C 80AA9A6C 86B90334 */  lh      $t9, 0x0334($s5)           ## 00000334
/* 03A20 80AA9A70 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 03A24 80AA9A74 1B200003 */  blez    $t9, .L80AA9A84
/* 03A28 80AA9A78 00000000 */  nop
/* 03A2C 80AA9A7C 0C2AA4AE */  jal     func_80AA92B8
/* 03A30 80AA9A80 8FA500BC */  lw      $a1, 0x00BC($sp)
.L80AA9A84:
/* 03A34 80AA9A84 3C1180AB */  lui     $s1, %hi(D_80AA9E20)       ## $s1 = 80AB0000
/* 03A38 80AA9A88 3C1380AB */  lui     $s3, %hi(D_80AA9E44)       ## $s3 = 80AB0000
/* 03A3C 80AA9A8C 26739E44 */  addiu   $s3, $s3, %lo(D_80AA9E44)  ## $s3 = 80AA9E44
/* 03A40 80AA9A90 26319E20 */  addiu   $s1, $s1, %lo(D_80AA9E20)  ## $s1 = 80AA9E20
/* 03A44 80AA9A94 27B2008C */  addiu   $s2, $sp, 0x008C           ## $s2 = FFFFFFD4
/* 03A48 80AA9A98 27B00068 */  addiu   $s0, $sp, 0x0068           ## $s0 = FFFFFFB0
/* 03A4C 80AA9A9C 27B4008C */  addiu   $s4, $sp, 0x008C           ## $s4 = FFFFFFD4
.L80AA9AA0:
/* 03A50 80AA9AA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80AA9E20
/* 03A54 80AA9AA4 0C0346BD */  jal     Matrix_MultVec3f
/* 03A58 80AA9AA8 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFD4
/* 03A5C 80AA9AAC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 80AA9E44
/* 03A60 80AA9AB0 0C0346BD */  jal     Matrix_MultVec3f
/* 03A64 80AA9AB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFB0
/* 03A68 80AA9AB8 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFFBC
/* 03A6C 80AA9ABC 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80AA9E2C
/* 03A70 80AA9AC0 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = FFFFFFE0
/* 03A74 80AA9AC4 1614FFF6 */  bne     $s0, $s4, .L80AA9AA0
/* 03A78 80AA9AC8 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = 80AA9E50
/* 03A7C 80AA9ACC 26B00434 */  addiu   $s0, $s5, 0x0434           ## $s0 = 00000434
/* 03A80 80AA9AD0 27A800A4 */  addiu   $t0, $sp, 0x00A4           ## $t0 = FFFFFFEC
/* 03A84 80AA9AD4 AFA80010 */  sw      $t0, 0x0010($sp)
/* 03A88 80AA9AD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000434
/* 03A8C 80AA9ADC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03A90 80AA9AE0 27A6008C */  addiu   $a2, $sp, 0x008C           ## $a2 = FFFFFFD4
/* 03A94 80AA9AE4 0C0189E8 */  jal     func_800627A0
/* 03A98 80AA9AE8 27A70098 */  addiu   $a3, $sp, 0x0098           ## $a3 = FFFFFFE0
/* 03A9C 80AA9AEC 27A90080 */  addiu   $t1, $sp, 0x0080           ## $t1 = FFFFFFC8
/* 03AA0 80AA9AF0 AFA90010 */  sw      $t1, 0x0010($sp)
/* 03AA4 80AA9AF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000434
/* 03AA8 80AA9AF8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03AAC 80AA9AFC 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFB0
/* 03AB0 80AA9B00 0C0189E8 */  jal     func_800627A0
/* 03AB4 80AA9B04 27A70074 */  addiu   $a3, $sp, 0x0074           ## $a3 = FFFFFFBC
/* 03AB8 80AA9B08 86AA0328 */  lh      $t2, 0x0328($s5)           ## 00000328
.L80AA9B0C:
/* 03ABC 80AA9B0C 5140002A */  beql    $t2, $zero, .L80AA9BB8
/* 03AC0 80AA9B10 8FBF004C */  lw      $ra, 0x004C($sp)
/* 03AC4 80AA9B14 92AB0114 */  lbu     $t3, 0x0114($s5)           ## 00000114
/* 03AC8 80AA9B18 86A30328 */  lh      $v1, 0x0328($s5)           ## 00000328
/* 03ACC 80AA9B1C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 03AD0 80AA9B20 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 03AD4 80AA9B24 04600004 */  bltz    $v1, .L80AA9B38
/* 03AD8 80AA9B28 A2AC0114 */  sb      $t4, 0x0114($s5)           ## 00000114
/* 03ADC 80AA9B2C 246DFFFF */  addiu   $t5, $v1, 0xFFFF           ## $t5 = FFFFFFFF
/* 03AE0 80AA9B30 A6AD0328 */  sh      $t5, 0x0328($s5)           ## 00000328
/* 03AE4 80AA9B34 86A30328 */  lh      $v1, 0x0328($s5)           ## 00000328
.L80AA9B38:
/* 03AE8 80AA9B38 306E0003 */  andi    $t6, $v1, 0x0003           ## $t6 = 00000000
/* 03AEC 80AA9B3C 15C0001D */  bne     $t6, $zero, .L80AA9BB4
/* 03AF0 80AA9B40 00031083 */  sra     $v0, $v1,  2
/* 03AF4 80AA9B44 86AF001C */  lh      $t7, 0x001C($s5)           ## 0000001C
/* 03AF8 80AA9B48 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 03AFC 80AA9B4C 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.50
/* 03B00 80AA9B50 15E00004 */  bne     $t7, $zero, .L80AA9B64
/* 03B04 80AA9B54 8FA400BC */  lw      $a0, 0x00BC($sp)
/* 03B08 80AA9B58 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 03B0C 80AA9B5C 44810000 */  mtc1    $at, $f0                   ## $f0 = 4.00
/* 03B10 80AA9B60 00000000 */  nop
.L80AA9B64:
/* 03B14 80AA9B64 0002C080 */  sll     $t8, $v0,  2
/* 03B18 80AA9B68 0302C023 */  subu    $t8, $t8, $v0
/* 03B1C 80AA9B6C 0018C040 */  sll     $t8, $t8,  1
/* 03B20 80AA9B70 02B83021 */  addu    $a2, $s5, $t8
/* 03B24 80AA9B74 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 03B28 80AA9B78 24080096 */  addiu   $t0, $zero, 0x0096         ## $t0 = 00000096
/* 03B2C 80AA9B7C 240900FA */  addiu   $t1, $zero, 0x00FA         ## $t1 = 000000FA
/* 03B30 80AA9B80 240A00EB */  addiu   $t2, $zero, 0x00EB         ## $t2 = 000000EB
/* 03B34 80AA9B84 240B00F5 */  addiu   $t3, $zero, 0x00F5         ## $t3 = 000000F5
/* 03B38 80AA9B88 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 03B3C 80AA9B8C AFAC0024 */  sw      $t4, 0x0024($sp)
/* 03B40 80AA9B90 AFAB0020 */  sw      $t3, 0x0020($sp)
/* 03B44 80AA9B94 AFAA001C */  sw      $t2, 0x001C($sp)
/* 03B48 80AA9B98 AFA90018 */  sw      $t1, 0x0018($sp)
/* 03B4C 80AA9B9C AFA80014 */  sw      $t0, 0x0014($sp)
/* 03B50 80AA9BA0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 03B54 80AA9BA4 24C6014C */  addiu   $a2, $a2, 0x014C           ## $a2 = 0000014C
/* 03B58 80AA9BA8 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 03B5C 80AA9BAC 0C00A877 */  jal     EffectSsEnIce_SpawnFlyingVec3s
/* 03B60 80AA9BB0 E7A00028 */  swc1    $f0, 0x0028($sp)
.L80AA9BB4:
/* 03B64 80AA9BB4 8FBF004C */  lw      $ra, 0x004C($sp)
.L80AA9BB8:
/* 03B68 80AA9BB8 8FB00034 */  lw      $s0, 0x0034($sp)
/* 03B6C 80AA9BBC 8FB10038 */  lw      $s1, 0x0038($sp)
/* 03B70 80AA9BC0 8FB2003C */  lw      $s2, 0x003C($sp)
/* 03B74 80AA9BC4 8FB30040 */  lw      $s3, 0x0040($sp)
/* 03B78 80AA9BC8 8FB40044 */  lw      $s4, 0x0044($sp)
/* 03B7C 80AA9BCC 8FB50048 */  lw      $s5, 0x0048($sp)
/* 03B80 80AA9BD0 03E00008 */  jr      $ra
/* 03B84 80AA9BD4 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
/* 03B88 80AA9BD8 00000000 */  nop
/* 03B8C 80AA9BDC 00000000 */  nop
