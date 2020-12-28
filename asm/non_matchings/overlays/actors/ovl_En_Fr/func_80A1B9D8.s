glabel func_80A1B9D8
/* 01038 80A1B9D8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0103C 80A1B9DC AFBF001C */  sw      $ra, 0x001C($sp)
/* 01040 80A1B9E0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01044 80A1B9E4 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01048 80A1B9E8 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 0104C 80A1B9EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01050 80A1B9F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01054 80A1B9F4 A7AE003E */  sh      $t6, 0x003E($sp)
/* 01058 80A1B9F8 848F03AA */  lh      $t7, 0x03AA($a0)           ## 000003AA
/* 0105C 80A1B9FC 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 01060 80A1BA00 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 01064 80A1BA04 25F81000 */  addiu   $t8, $t7, 0x1000           ## $t8 = 00001000
/* 01068 80A1BA08 A49803AA */  sh      $t8, 0x03AA($a0)           ## 000003AA
/* 0106C 80A1BA0C 0C034261 */  jal     Matrix_Translate
/* 01070 80A1BA10 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 01074 80A1BA14 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 01078 80A1BA18 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 0107C 80A1BA1C 86060034 */  lh      $a2, 0x0034($s0)           ## 00000034
/* 01080 80A1BA20 0C034421 */  jal     Matrix_RotateRPY
/* 01084 80A1BA24 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01088 80A1BA28 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0108C 80A1BA2C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01090 80A1BA30 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 01094 80A1BA34 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 01098 80A1BA38 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFFE0
/* 0109C 80A1BA3C E7A00030 */  swc1    $f0, 0x0030($sp)
/* 010A0 80A1BA40 E7A0002C */  swc1    $f0, 0x002C($sp)
/* 010A4 80A1BA44 0C0346BD */  jal     Matrix_MultVec3f
/* 010A8 80A1BA48 E7A40034 */  swc1    $f4, 0x0034($sp)
/* 010AC 80A1BA4C 860403AA */  lh      $a0, 0x03AA($s0)           ## 000003AA
/* 010B0 80A1BA50 00042040 */  sll     $a0, $a0,  1
/* 010B4 80A1BA54 00042400 */  sll     $a0, $a0, 16
/* 010B8 80A1BA58 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 010BC 80A1BA5C 00042403 */  sra     $a0, $a0, 16
/* 010C0 80A1BA60 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 010C4 80A1BA64 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 010C8 80A1BA68 87A4003E */  lh      $a0, 0x003E($sp)
/* 010CC 80A1BA6C 46060202 */  mul.s   $f8, $f0, $f6
/* 010D0 80A1BA70 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 010D4 80A1BA74 E7A80038 */  swc1    $f8, 0x0038($sp)
/* 010D8 80A1BA78 C7AA0038 */  lwc1    $f10, 0x0038($sp)
/* 010DC 80A1BA7C C7B20020 */  lwc1    $f18, 0x0020($sp)
/* 010E0 80A1BA80 860403AA */  lh      $a0, 0x03AA($s0)           ## 000003AA
/* 010E4 80A1BA84 460A0402 */  mul.s   $f16, $f0, $f10
/* 010E8 80A1BA88 46128100 */  add.s   $f4, $f16, $f18
/* 010EC 80A1BA8C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 010F0 80A1BA90 E60403AC */  swc1    $f4, 0x03AC($s0)           ## 000003AC
/* 010F4 80A1BA94 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 010F8 80A1BA98 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 010FC 80A1BA9C C6060390 */  lwc1    $f6, 0x0390($s0)           ## 00000390
/* 01100 80A1BAA0 46000400 */  add.s   $f16, $f0, $f0
/* 01104 80A1BAA4 46083280 */  add.s   $f10, $f6, $f8
/* 01108 80A1BAA8 460A8480 */  add.s   $f18, $f16, $f10
/* 0110C 80A1BAAC E61203B0 */  swc1    $f18, 0x03B0($s0)          ## 000003B0
/* 01110 80A1BAB0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01114 80A1BAB4 87A4003E */  lh      $a0, 0x003E($sp)
/* 01118 80A1BAB8 C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 0111C 80A1BABC C7A80028 */  lwc1    $f8, 0x0028($sp)
/* 01120 80A1BAC0 C60C03AC */  lwc1    $f12, 0x03AC($s0)          ## 000003AC
/* 01124 80A1BAC4 46040182 */  mul.s   $f6, $f0, $f4
/* 01128 80A1BAC8 C60E03B0 */  lwc1    $f14, 0x03B0($s0)          ## 000003B0
/* 0112C 80A1BACC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01130 80A1BAD0 46083400 */  add.s   $f16, $f6, $f8
/* 01134 80A1BAD4 E61003B4 */  swc1    $f16, 0x03B4($s0)          ## 000003B4
/* 01138 80A1BAD8 0C034261 */  jal     Matrix_Translate
/* 0113C 80A1BADC 8E0603B4 */  lw      $a2, 0x03B4($s0)           ## 000003B4
/* 01140 80A1BAE0 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 01144 80A1BAE4 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 01148 80A1BAE8 86060034 */  lh      $a2, 0x0034($s0)           ## 00000034
/* 0114C 80A1BAEC 0C034421 */  jal     Matrix_RotateRPY
/* 01150 80A1BAF0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01154 80A1BAF4 3C01C170 */  lui     $at, 0xC170                ## $at = C1700000
/* 01158 80A1BAF8 44819000 */  mtc1    $at, $f18                  ## $f18 = -15.00
/* 0115C 80A1BAFC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01160 80A1BB00 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01164 80A1BB04 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 01168 80A1BB08 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 0116C 80A1BB0C 260503B8 */  addiu   $a1, $s0, 0x03B8           ## $a1 = 000003B8
/* 01170 80A1BB10 E7B20030 */  swc1    $f18, 0x0030($sp)
/* 01174 80A1BB14 E7AA002C */  swc1    $f10, 0x002C($sp)
/* 01178 80A1BB18 0C0346BD */  jal     Matrix_MultVec3f
/* 0117C 80A1BB1C E7A40034 */  swc1    $f4, 0x0034($sp)
/* 01180 80A1BB20 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01184 80A1BB24 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01188 80A1BB28 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0118C 80A1BB2C 03E00008 */  jr      $ra
/* 01190 80A1BB30 00000000 */  nop
