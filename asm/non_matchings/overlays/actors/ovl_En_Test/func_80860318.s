.late_rodata
glabel D_80864788
    .float 0.15

.text
glabel func_80860318
/* 00CC8 80860318 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CCC 8086031C AFB00018 */  sw      $s0, 0x0018($sp)
/* 00CD0 80860320 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CD4 80860324 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00CD8 80860328 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00CDC 8086032C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00CE0 80860330 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00CE4 80860334 AFA40024 */  sw      $a0, 0x0024($sp)
/* 00CE8 80860338 24A5C438 */  addiu   $a1, $a1, 0xC438           ## $a1 = 0600C438
/* 00CEC 8086033C 0C0294A7 */  jal     SkelAnime_ChangeAnimPlaybackStop
/* 00CF0 80860340 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00CF4 80860344 0C02927F */  jal     SkelAnime_Update

/* 00CF8 80860348 8FA40024 */  lw      $a0, 0x0024($sp)
/* 00CFC 8086034C C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 00D00 80860350 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D04 80860354 4604303E */  c.le.s  $f6, $f4
/* 00D08 80860358 00000000 */  nop
/* 00D0C 8086035C 45020017 */  bc1fl   .L808603BC
/* 00D10 80860360 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00D14 80860364 8E0F07E4 */  lw      $t7, 0x07E4($s0)           ## 000007E4
/* 00D18 80860368 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00D1C 8086036C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00D20 80860370 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00D24 80860374 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 00D28 80860378 A20E07C8 */  sb      $t6, 0x07C8($s0)           ## 000007C8
/* 00D2C 8086037C 46805420 */  cvt.s.w $f16, $f10
/* 00D30 80860380 3C018086 */  lui     $at, %hi(D_80864788)       ## $at = 80860000
/* 00D34 80860384 E60801A4 */  swc1    $f8, 0x01A4($s0)           ## 000001A4
/* 00D38 80860388 C4324788 */  lwc1    $f18, %lo(D_80864788)($at)
/* 00D3C 8086038C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D40 80860390 2405387A */  addiu   $a1, $zero, 0x387A         ## $a1 = 0000387A
/* 00D44 80860394 46128102 */  mul.s   $f4, $f16, $f18
/* 00D48 80860398 4600218D */  trunc.w.s $f6, $f4
/* 00D4C 8086039C 44193000 */  mfc1    $t9, $f6
/* 00D50 808603A0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00D54 808603A4 AE1907E8 */  sw      $t9, 0x07E8($s0)           ## 000007E8
/* 00D58 808603A8 3C058086 */  lui     $a1, %hi(func_808603CC)    ## $a1 = 80860000
/* 00D5C 808603AC 24A503CC */  addiu   $a1, $a1, %lo(func_808603CC) ## $a1 = 808603CC
/* 00D60 808603B0 0C217D94 */  jal     EnTest_SetupAction
/* 00D64 808603B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D68 808603B8 8FBF001C */  lw      $ra, 0x001C($sp)
.L808603BC:
/* 00D6C 808603BC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00D70 808603C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D74 808603C4 03E00008 */  jr      $ra
/* 00D78 808603C8 00000000 */  nop
