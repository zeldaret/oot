glabel func_80AD0F38
/* 01A98 80AD0F38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A9C 80AD0F3C AFB00018 */  sw      $s0, 0x0018($sp)
/* 01AA0 80AD0F40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AA4 80AD0F44 AFBF001C */  sw      $ra, 0x001C($sp)
/* 01AA8 80AD0F48 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01AAC 80AD0F4C 24A505C4 */  addiu   $a1, $a1, 0x05C4           ## $a1 = 060005C4
/* 01AB0 80AD0F50 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 01AB4 80AD0F54 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01AB8 80AD0F58 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01ABC 80AD0F5C 00000000 */  nop
/* 01AC0 80AD0F60 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01AC4 80AD0F64 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 01AC8 80AD0F68 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 01ACC 80AD0F6C 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.50
/* 01AD0 80AD0F70 46040182 */  mul.s   $f6, $f0, $f4
/* 01AD4 80AD0F74 46083280 */  add.s   $f10, $f6, $f8
/* 01AD8 80AD0F78 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01ADC 80AD0F7C E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 01AE0 80AD0F80 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01AE4 80AD0F84 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 01AE8 80AD0F88 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 01AEC 80AD0F8C 3C0580AD */  lui     $a1, %hi(func_80AD0FC8)    ## $a1 = 80AD0000
/* 01AF0 80AD0F90 46020402 */  mul.s   $f16, $f0, $f2
/* 01AF4 80AD0F94 AE1802B0 */  sw      $t8, 0x02B0($s0)           ## 000002B0
/* 01AF8 80AD0F98 24A50FC8 */  addiu   $a1, $a1, %lo(func_80AD0FC8) ## $a1 = 80AD0FC8
/* 01AFC 80AD0F9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B00 80AD0FA0 46028480 */  add.s   $f18, $f16, $f2
/* 01B04 80AD0FA4 4600910D */  trunc.w.s $f4, $f18
/* 01B08 80AD0FA8 440F2000 */  mfc1    $t7, $f4
/* 01B0C 80AD0FAC 0C2B3D28 */  jal     func_80ACF4A0
/* 01B10 80AD0FB0 AE0F02D4 */  sw      $t7, 0x02D4($s0)           ## 000002D4
/* 01B14 80AD0FB4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01B18 80AD0FB8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01B1C 80AD0FBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01B20 80AD0FC0 03E00008 */  jr      $ra
/* 01B24 80AD0FC4 00000000 */  nop


