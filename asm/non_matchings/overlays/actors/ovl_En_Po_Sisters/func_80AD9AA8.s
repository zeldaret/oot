glabel func_80AD9AA8
/* 00B18 80AD9AA8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00B1C 80AD9AAC AFB00030 */  sw      $s0, 0x0030($sp)
/* 00B20 80AD9AB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B24 80AD9AB4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00B28 80AD9AB8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00B2C 80AD9ABC 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00B30 80AD9AC0 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00B34 80AD9AC4 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00B38 80AD9AC8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00B3C 80AD9ACC 240E0400 */  addiu   $t6, $zero, 0x0400         ## $t6 = 00000400
/* 00B40 80AD9AD0 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 00B44 80AD9AD4 AFA50054 */  sw      $a1, 0x0054($sp)
/* 00B48 80AD9AD8 AFA40038 */  sw      $a0, 0x0038($sp)
/* 00B4C 80AD9ADC AFA00020 */  sw      $zero, 0x0020($sp)
/* 00B50 80AD9AE0 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00B54 80AD9AE4 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00B58 80AD9AE8 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 00B5C 80AD9AEC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00B60 80AD9AF0 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 00B64 80AD9AF4 AFA2004C */  sw      $v0, 0x004C($sp)
/* 00B68 80AD9AF8 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00B6C 80AD9AFC 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00B70 80AD9B00 240F0800 */  addiu   $t7, $zero, 0x0800         ## $t7 = 00000800
/* 00B74 80AD9B04 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00B78 80AD9B08 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00B7C 80AD9B0C AFAF0024 */  sw      $t7, 0x0024($sp)
/* 00B80 80AD9B10 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00B84 80AD9B14 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00B88 80AD9B18 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00B8C 80AD9B1C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00B90 80AD9B20 8FA50054 */  lw      $a1, 0x0054($sp)
/* 00B94 80AD9B24 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 00B98 80AD9B28 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00B9C 80AD9B2C E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 00BA0 80AD9B30 AFA20048 */  sw      $v0, 0x0048($sp)
/* 00BA4 80AD9B34 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00BA8 80AD9B38 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00BAC 80AD9B3C 24180C00 */  addiu   $t8, $zero, 0x0C00         ## $t8 = 00000C00
/* 00BB0 80AD9B40 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00BB4 80AD9B44 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00BB8 80AD9B48 AFB80024 */  sw      $t8, 0x0024($sp)
/* 00BBC 80AD9B4C AFA00020 */  sw      $zero, 0x0020($sp)
/* 00BC0 80AD9B50 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00BC4 80AD9B54 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00BC8 80AD9B58 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00BCC 80AD9B5C 8FA50054 */  lw      $a1, 0x0054($sp)
/* 00BD0 80AD9B60 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 00BD4 80AD9B64 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00BD8 80AD9B68 E7B20014 */  swc1    $f18, 0x0014($sp)
/* 00BDC 80AD9B6C 8FA7004C */  lw      $a3, 0x004C($sp)
/* 00BE0 80AD9B70 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 00BE4 80AD9B74 8FB90048 */  lw      $t9, 0x0048($sp)
/* 00BE8 80AD9B78 10E00005 */  beq     $a3, $zero, .L80AD9B90
/* 00BEC 80AD9B7C 00000000 */  nop
/* 00BF0 80AD9B80 13200003 */  beq     $t9, $zero, .L80AD9B90
/* 00BF4 80AD9B84 00000000 */  nop
/* 00BF8 80AD9B88 14400014 */  bne     $v0, $zero, .L80AD9BDC
/* 00BFC 80AD9B8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AD9B90:
/* 00C00 80AD9B90 10E00004 */  beq     $a3, $zero, .L80AD9BA4
/* 00C04 80AD9B94 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00C08 80AD9B98 0C00B55C */  jal     Actor_Kill

/* 00C0C 80AD9B9C AFA60044 */  sw      $a2, 0x0044($sp)
/* 00C10 80AD9BA0 8FA60044 */  lw      $a2, 0x0044($sp)
.L80AD9BA4:
/* 00C14 80AD9BA4 8FA80048 */  lw      $t0, 0x0048($sp)
/* 00C18 80AD9BA8 11000004 */  beq     $t0, $zero, .L80AD9BBC
/* 00C1C 80AD9BAC 01002025 */  or      $a0, $t0, $zero            ## $a0 = 00000000
/* 00C20 80AD9BB0 0C00B55C */  jal     Actor_Kill

/* 00C24 80AD9BB4 AFA60044 */  sw      $a2, 0x0044($sp)
/* 00C28 80AD9BB8 8FA60044 */  lw      $a2, 0x0044($sp)
.L80AD9BBC:
/* 00C2C 80AD9BBC 10C00003 */  beq     $a2, $zero, .L80AD9BCC
/* 00C30 80AD9BC0 00000000 */  nop
/* 00C34 80AD9BC4 0C00B55C */  jal     Actor_Kill

/* 00C38 80AD9BC8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80AD9BCC:
/* 00C3C 80AD9BCC 0C00B55C */  jal     Actor_Kill

/* 00C40 80AD9BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C44 80AD9BD4 1000000F */  beq     $zero, $zero, .L80AD9C14
/* 00C48 80AD9BD8 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AD9BDC:
/* 00C4C 80AD9BDC ACD00118 */  sw      $s0, 0x0118($a2)           ## 00000118
/* 00C50 80AD9BE0 8FA90048 */  lw      $t1, 0x0048($sp)
/* 00C54 80AD9BE4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C58 80AD9BE8 24A50680 */  addiu   $a1, $a1, 0x0680           ## $a1 = 06000680
/* 00C5C 80AD9BEC AD300118 */  sw      $s0, 0x0118($t1)           ## 00000118
/* 00C60 80AD9BF0 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00C64 80AD9BF4 ACF00118 */  sw      $s0, 0x0118($a3)           ## 00000118
/* 00C68 80AD9BF8 3C0B80AE */  lui     $t3, %hi(func_80ADB2B8)    ## $t3 = 80AE0000
/* 00C6C 80AD9BFC 240A00A0 */  addiu   $t2, $zero, 0x00A0         ## $t2 = 000000A0
/* 00C70 80AD9C00 256BB2B8 */  addiu   $t3, $t3, %lo(func_80ADB2B8) ## $t3 = 80ADB2B8
/* 00C74 80AD9C04 A2000198 */  sb      $zero, 0x0198($s0)         ## 00000198
/* 00C78 80AD9C08 A20A0199 */  sb      $t2, 0x0199($s0)           ## 00000199
/* 00C7C 80AD9C0C AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 00C80 80AD9C10 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80AD9C14:
/* 00C84 80AD9C14 8FB00030 */  lw      $s0, 0x0030($sp)
/* 00C88 80AD9C18 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00C8C 80AD9C1C 03E00008 */  jr      $ra
/* 00C90 80AD9C20 00000000 */  nop


