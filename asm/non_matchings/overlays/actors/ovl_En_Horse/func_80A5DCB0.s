glabel func_80A5DCB0
/* 029C0 80A5DCB0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 029C4 80A5DCB4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 029C8 80A5DCB8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 029CC 80A5DCBC 8C980158 */  lw      $t8, 0x0158($a0)           ## 00000158
/* 029D0 80A5DCC0 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 029D4 80A5DCC4 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 029D8 80A5DCC8 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 029DC 80A5DCCC 0018C880 */  sll     $t9, $t8,  2
/* 029E0 80A5DCD0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 029E4 80A5DCD4 AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 029E8 80A5DCD8 AC800234 */  sw      $zero, 0x0234($a0)         ## 00000234
/* 029EC 80A5DCDC 01194021 */  addu    $t0, $t0, $t9
/* 029F0 80A5DCE0 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 029F4 80A5DCE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029F8 80A5DCE8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 029FC 80A5DCEC 8D040018 */  lw      $a0, 0x0018($t0)           ## 80A60018
/* 02A00 80A5DCF0 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 02A04 80A5DCF4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02A08 80A5DCF8 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 02A0C 80A5DCFC 00095080 */  sll     $t2, $t1,  2
/* 02A10 80A5DD00 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 02A14 80A5DD04 016A5821 */  addu    $t3, $t3, $t2
/* 02A18 80A5DD08 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)
/* 02A1C 80A5DD0C 468021A0 */  cvt.s.w $f6, $f4
/* 02A20 80A5DD10 000C6880 */  sll     $t5, $t4,  2
/* 02A24 80A5DD14 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 02A28 80A5DD18 016D7021 */  addu    $t6, $t3, $t5
/* 02A2C 80A5DD1C 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 02A30 80A5DD20 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 02A34 80A5DD24 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02A38 80A5DD28 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 02A3C 80A5DD2C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02A40 80A5DD30 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 02A44 80A5DD34 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02A48 80A5DD38 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02A4C 80A5DD3C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02A50 80A5DD40 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 02A54 80A5DD44 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02A58 80A5DD48 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02A5C 80A5DD4C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02A60 80A5DD50 03E00008 */  jr      $ra
/* 02A64 80A5DD54 00000000 */  nop
