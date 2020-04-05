glabel func_80AACCA0
/* 003A0 80AACCA0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003A4 80AACCA4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 003A8 80AACCA8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 003AC 80AACCAC AFA50034 */  sw      $a1, 0x0034($sp)
/* 003B0 80AACCB0 94820282 */  lhu     $v0, 0x0282($a0)           ## 00000282
/* 003B4 80AACCB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003B8 80AACCB8 24190078 */  addiu   $t9, $zero, 0x0078         ## $t9 = 00000078
/* 003BC 80AACCBC 18400007 */  blez    $v0, .L80AACCDC
/* 003C0 80AACCC0 3C0880AB */  lui     $t0, %hi(func_80AACC04)    ## $t0 = 80AB0000
/* 003C4 80AACCC4 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 003C8 80AACCC8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003CC 80AACCCC A48E0282 */  sh      $t6, 0x0282($a0)           ## 00000282
/* 003D0 80AACCD0 25F80800 */  addiu   $t8, $t7, 0x0800           ## $t8 = 00000800
/* 003D4 80AACCD4 10000017 */  beq     $zero, $zero, .L80AACD34
/* 003D8 80AACCD8 A49800B6 */  sh      $t8, 0x00B6($a0)           ## 000000B6
.L80AACCDC:
/* 003DC 80AACCDC 2508CC04 */  addiu   $t0, $t0, %lo(func_80AACC04) ## $t0 = 80AACC04
/* 003E0 80AACCE0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003E4 80AACCE4 A6190282 */  sh      $t9, 0x0282($s0)           ## 00000282
/* 003E8 80AACCE8 AE080284 */  sw      $t0, 0x0284($s0)           ## 00000284
/* 003EC 80AACCEC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 003F0 80AACCF0 24840724 */  addiu   $a0, $a0, 0x0724           ## $a0 = 06000724
/* 003F4 80AACCF4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 003F8 80AACCF8 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 003FC 80AACCFC 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00400 80AACD00 468021A0 */  cvt.s.w $f6, $f4
/* 00404 80AACD04 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00408 80AACD08 24A50724 */  addiu   $a1, $a1, 0x0724           ## $a1 = 06000724
/* 0040C 80AACD0C 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00410 80AACD10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00414 80AACD14 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00418 80AACD18 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0041C 80AACD1C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00420 80AACD20 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00424 80AACD24 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00428 80AACD28 9609027E */  lhu     $t1, 0x027E($s0)           ## 0000027E
/* 0042C 80AACD2C 312AFFFD */  andi    $t2, $t1, 0xFFFD           ## $t2 = 00000000
/* 00430 80AACD30 A60A027E */  sh      $t2, 0x027E($s0)           ## 0000027E
.L80AACD34:
/* 00434 80AACD34 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00438 80AACD38 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0043C 80AACD3C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00440 80AACD40 03E00008 */  jr      $ra
/* 00444 80AACD44 00000000 */  nop


