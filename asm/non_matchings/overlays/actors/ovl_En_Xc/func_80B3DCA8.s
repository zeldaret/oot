glabel func_80B3DCA8
/* 01AC8 80B3DCA8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01ACC 80B3DCAC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01AD0 80B3DCB0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01AD4 80B3DCB4 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01AD8 80B3DCB8 51C0001D */  beql    $t6, $zero, .L80B3DD30
/* 01ADC 80B3DCBC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01AE0 80B3DCC0 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 01AE4 80B3DCC4 5040001A */  beql    $v0, $zero, .L80B3DD30
/* 01AE8 80B3DCC8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01AEC 80B3DCCC 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 01AF0 80B3DCD0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01AF4 80B3DCD4 3C040601 */  lui     $a0, %hi(D_06017C54)                ## $a0 = 06010000
/* 01AF8 80B3DCD8 55E10015 */  bnel    $t7, $at, .L80B3DD30
/* 01AFC 80B3DCDC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01B00 80B3DCE0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01B04 80B3DCE4 24847C54 */  addiu   $a0, $a0, %lo(D_06017C54)           ## $a0 = 06017C54
/* 01B08 80B3DCE8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01B0C 80B3DCEC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01B10 80B3DCF0 44813000 */  mtc1    $at, $f6                   ## $f6 = -8.00
/* 01B14 80B3DCF4 46802020 */  cvt.s.w $f0, $f4
/* 01B18 80B3DCF8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01B1C 80B3DCFC 3C050601 */  lui     $a1, %hi(D_06017C54)                ## $a1 = 06010000
/* 01B20 80B3DD00 24A57C54 */  addiu   $a1, $a1, %lo(D_06017C54)           ## $a1 = 06017C54
/* 01B24 80B3DD04 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01B28 80B3DD08 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01B2C 80B3DD0C 44070000 */  mfc1    $a3, $f0
/* 01B30 80B3DD10 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01B34 80B3DD14 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 01B38 80B3DD18 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01B3C 80B3DD1C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B40 80B3DD20 8FB90028 */  lw      $t9, 0x0028($sp)
/* 01B44 80B3DD24 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01B48 80B3DD28 AF380260 */  sw      $t8, 0x0260($t9)           ## 00000260
/* 01B4C 80B3DD2C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B3DD30:
/* 01B50 80B3DD30 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B54 80B3DD34 03E00008 */  jr      $ra
/* 01B58 80B3DD38 00000000 */  nop
