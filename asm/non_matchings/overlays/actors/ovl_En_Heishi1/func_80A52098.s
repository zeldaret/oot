glabel func_80A52098
/* 00DC8 80A52098 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DCC 80A5209C AFA40028 */  sw      $a0, 0x0028($sp)
/* 00DD0 80A520A0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00DD4 80A520A4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DD8 80A520A8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00DDC 80A520AC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00DE0 80A520B0 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 00DE4 80A520B4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DE8 80A520B8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00DEC 80A520BC 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00DF0 80A520C0 468021A0 */  cvt.s.w $f6, $f4
/* 00DF4 80A520C4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00DF8 80A520C8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DFC 80A520CC 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 00E00 80A520D0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E04 80A520D4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E08 80A520D8 4600320D */  trunc.w.s $f8, $f6
/* 00E0C 80A520DC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00E10 80A520E0 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00E14 80A520E4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E18 80A520E8 440F4000 */  mfc1    $t7, $f8
/* 00E1C 80A520EC 00000000 */  nop
/* 00E20 80A520F0 000FC400 */  sll     $t8, $t7, 16
/* 00E24 80A520F4 0018CC03 */  sra     $t9, $t8, 16
/* 00E28 80A520F8 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00E2C 80A520FC 00000000 */  nop
/* 00E30 80A52100 46805420 */  cvt.s.w $f16, $f10
/* 00E34 80A52104 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00E38 80A52108 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00E3C 80A5210C 8FA90028 */  lw      $t1, 0x0028($sp)
/* 00E40 80A52110 3C0880A5 */  lui     $t0, %hi(func_80A5212C)    ## $t0 = 80A50000
/* 00E44 80A52114 2508212C */  addiu   $t0, $t0, %lo(func_80A5212C) ## $t0 = 80A5212C
/* 00E48 80A52118 AD28025C */  sw      $t0, 0x025C($t1)           ## 0000025C
/* 00E4C 80A5211C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00E50 80A52120 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E54 80A52124 03E00008 */  jr      $ra
/* 00E58 80A52128 00000000 */  nop


