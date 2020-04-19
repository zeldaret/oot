glabel func_80AA1D44
/* 003A4 80AA1D44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003A8 80AA1D48 3C0F80AA */  lui     $t7, %hi(D_80AA2858)       ## $t7 = 80AA0000
/* 003AC 80AA1D4C 25EF2858 */  addiu   $t7, $t7, %lo(D_80AA2858)  ## $t7 = 80AA2858
/* 003B0 80AA1D50 00057100 */  sll     $t6, $a1,  4
/* 003B4 80AA1D54 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003B8 80AA1D58 AFA40030 */  sw      $a0, 0x0030($sp)
/* 003BC 80AA1D5C 01CF1821 */  addu    $v1, $t6, $t7
/* 003C0 80AA1D60 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 003C4 80AA1D64 0C028800 */  jal     SkelAnime_GetFrameCount

/* 003C8 80AA1D68 AFA30028 */  sw      $v1, 0x0028($sp)
/* 003CC 80AA1D6C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 003D0 80AA1D70 8FA30028 */  lw      $v1, 0x0028($sp)
/* 003D4 80AA1D74 8FA40030 */  lw      $a0, 0x0030($sp)
/* 003D8 80AA1D78 468021A0 */  cvt.s.w $f6, $f4
/* 003DC 80AA1D7C 90780008 */  lbu     $t8, 0x0008($v1)           ## 00000008
/* 003E0 80AA1D80 C468000C */  lwc1    $f8, 0x000C($v1)           ## 0000000C
/* 003E4 80AA1D84 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 003E8 80AA1D88 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 003EC 80AA1D8C 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 003F0 80AA1D90 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 003F4 80AA1D94 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003F8 80AA1D98 AFB80014 */  sw      $t8, 0x0014($sp)
/* 003FC 80AA1D9C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00400 80AA1DA0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00404 80AA1DA4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00408 80AA1DA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0040C 80AA1DAC 03E00008 */  jr      $ra
/* 00410 80AA1DB0 00000000 */  nop
