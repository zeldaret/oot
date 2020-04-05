glabel func_80AA0A84
/* 003F4 80AA0A84 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003F8 80AA0A88 3C0F80AA */  lui     $t7, %hi(D_80AA1678)       ## $t7 = 80AA0000
/* 003FC 80AA0A8C 25EF1678 */  addiu   $t7, $t7, %lo(D_80AA1678)  ## $t7 = 80AA1678
/* 00400 80AA0A90 00057100 */  sll     $t6, $a1,  4
/* 00404 80AA0A94 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00408 80AA0A98 AFA40030 */  sw      $a0, 0x0030($sp)
/* 0040C 80AA0A9C 01CF1821 */  addu    $v1, $t6, $t7
/* 00410 80AA0AA0 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 00414 80AA0AA4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00418 80AA0AA8 AFA30028 */  sw      $v1, 0x0028($sp)
/* 0041C 80AA0AAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00420 80AA0AB0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00424 80AA0AB4 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00428 80AA0AB8 468021A0 */  cvt.s.w $f6, $f4
/* 0042C 80AA0ABC 90780008 */  lbu     $t8, 0x0008($v1)           ## 00000008
/* 00430 80AA0AC0 C468000C */  lwc1    $f8, 0x000C($v1)           ## 0000000C
/* 00434 80AA0AC4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00438 80AA0AC8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0043C 80AA0ACC 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00440 80AA0AD0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00444 80AA0AD4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00448 80AA0AD8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 0044C 80AA0ADC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00450 80AA0AE0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00454 80AA0AE4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00458 80AA0AE8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0045C 80AA0AEC 03E00008 */  jr      $ra
/* 00460 80AA0AF0 00000000 */  nop


