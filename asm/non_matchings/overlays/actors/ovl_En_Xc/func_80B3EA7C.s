glabel func_80B3EA7C
/* 0289C 80B3EA7C 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 028A0 80B3EA80 AFBF002C */  sw      $ra, 0x002C($sp)
/* 028A4 80B3EA84 AFB00028 */  sw      $s0, 0x0028($sp)
/* 028A8 80B3EA88 AFA40080 */  sw      $a0, 0x0080($sp)
/* 028AC 80B3EA8C AFA50084 */  sw      $a1, 0x0084($sp)
/* 028B0 80B3EA90 8482025C */  lh      $v0, 0x025C($a0)           ## 0000025C
/* 028B4 80B3EA94 3C0880B4 */  lui     $t0, %hi(D_80B41D6C)       ## $t0 = 80B40000
/* 028B8 80B3EA98 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 028BC 80B3EA9C 00027880 */  sll     $t7, $v0,  2
/* 028C0 80B3EAA0 010F4021 */  addu    $t0, $t0, $t7
/* 028C4 80B3EAA4 8D081D6C */  lw      $t0, %lo(D_80B41D6C)($t0)
/* 028C8 80B3EAA8 3C0680B4 */  lui     $a2, %hi(D_80B42040)       ## $a2 = 80B40000
/* 028CC 80B3EAAC 24C62040 */  addiu   $a2, $a2, %lo(D_80B42040)  ## $a2 = 80B42040
/* 028D0 80B3EAB0 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD0
/* 028D4 80B3EAB4 240705E7 */  addiu   $a3, $zero, 0x05E7         ## $a3 = 000005E7
/* 028D8 80B3EAB8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 028DC 80B3EABC 0C031AB1 */  jal     Graph_OpenDisps
/* 028E0 80B3EAC0 AFA80070 */  sw      $t0, 0x0070($sp)
/* 028E4 80B3EAC4 8FA80070 */  lw      $t0, 0x0070($sp)
/* 028E8 80B3EAC8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 028EC 80B3EACC 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 028F0 80B3EAD0 00085100 */  sll     $t2, $t0,  4
/* 028F4 80B3EAD4 000A5F02 */  srl     $t3, $t2, 28
/* 028F8 80B3EAD8 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 028FC 80B3EADC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02900 80B3EAE0 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 02904 80B3EAE4 25AD6FA8 */  addiu   $t5, $t5, 0x6FA8           ## $t5 = 80166FA8
/* 02908 80B3EAE8 000B6080 */  sll     $t4, $t3,  2
/* 0290C 80B3EAEC 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 02910 80B3EAF0 018D2021 */  addu    $a0, $t4, $t5
/* 02914 80B3EAF4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02918 80B3EAF8 8C8E0000 */  lw      $t6, 0x0000($a0)           ## 00000000
/* 0291C 80B3EAFC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 02920 80B3EB00 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 02924 80B3EB04 01012824 */  and     $a1, $t0, $at
/* 02928 80B3EB08 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 0292C 80B3EB0C 01C57821 */  addu    $t7, $t6, $a1
/* 02930 80B3EB10 01E6C021 */  addu    $t8, $t7, $a2
/* 02934 80B3EB14 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 02938 80B3EB18 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0293C 80B3EB1C 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 02940 80B3EB20 35290024 */  ori     $t1, $t1, 0x0024           ## $t1 = DB060024
/* 02944 80B3EB24 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02948 80B3EB28 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 0294C 80B3EB2C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02950 80B3EB30 8C8A0000 */  lw      $t2, 0x0000($a0)           ## 00000000
/* 02954 80B3EB34 3C0FFFFF */  lui     $t7, 0xFFFF                ## $t7 = FFFF0000
/* 02958 80B3EB38 35EF1400 */  ori     $t7, $t7, 0x1400           ## $t7 = FFFF1400
/* 0295C 80B3EB3C 01455821 */  addu    $t3, $t2, $a1
/* 02960 80B3EB40 01666021 */  addu    $t4, $t3, $a2
/* 02964 80B3EB44 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 02968 80B3EB48 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0296C 80B3EB4C 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 02970 80B3EB50 3C093C00 */  lui     $t1, 0x3C00                ## $t1 = 3C000000
/* 02974 80B3EB54 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02978 80B3EB58 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 0297C 80B3EB5C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02980 80B3EB60 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02984 80B3EB64 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02988 80B3EB68 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 0298C 80B3EB6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02990 80B3EB70 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 02994 80B3EB74 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 02998 80B3EB78 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0299C 80B3EB7C 0C024F46 */  jal     func_80093D18
/* 029A0 80B3EB80 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 029A4 80B3EB84 8FA40080 */  lw      $a0, 0x0080($sp)
/* 029A8 80B3EB88 8FA50084 */  lw      $a1, 0x0084($sp)
/* 029AC 80B3EB8C 0C00BAF3 */  jal     func_8002EBCC
/* 029B0 80B3EB90 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 029B4 80B3EB94 8FAA0080 */  lw      $t2, 0x0080($sp)
/* 029B8 80B3EB98 3C0B80B4 */  lui     $t3, %hi(func_80B3E8E4)    ## $t3 = 80B40000
/* 029BC 80B3EB9C 256BE8E4 */  addiu   $t3, $t3, %lo(func_80B3E8E4) ## $t3 = 80B3E8E4
/* 029C0 80B3EBA0 2542014C */  addiu   $v0, $t2, 0x014C           ## $v0 = 0000014C
/* 029C4 80B3EBA4 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 029C8 80B3EBA8 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 029CC 80B3EBAC 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 029D0 80B3EBB0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 029D4 80B3EBB4 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 029D8 80B3EBB8 8FA40084 */  lw      $a0, 0x0084($sp)
/* 029DC 80B3EBBC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 029E0 80B3EBC0 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 029E4 80B3EBC4 3C0680B4 */  lui     $a2, %hi(D_80B42058)       ## $a2 = 80B40000
/* 029E8 80B3EBC8 24C62058 */  addiu   $a2, $a2, %lo(D_80B42058)  ## $a2 = 80B42058
/* 029EC 80B3EBCC 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD0
/* 029F0 80B3EBD0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 029F4 80B3EBD4 0C031AD5 */  jal     Graph_CloseDisps
/* 029F8 80B3EBD8 2407061C */  addiu   $a3, $zero, 0x061C         ## $a3 = 0000061C
/* 029FC 80B3EBDC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02A00 80B3EBE0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02A04 80B3EBE4 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 02A08 80B3EBE8 03E00008 */  jr      $ra
/* 02A0C 80B3EBEC 00000000 */  nop


