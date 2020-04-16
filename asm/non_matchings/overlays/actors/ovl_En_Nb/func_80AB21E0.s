glabel func_80AB21E0
/* 01450 80AB21E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01454 80AB21E4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01458 80AB21E8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0145C 80AB21EC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01460 80AB21F0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01464 80AB21F4 24841E7C */  addiu   $a0, $a0, 0x1E7C           ## $a0 = 06001E7C
/* 01468 80AB21F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0146C 80AB21FC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01470 80AB2200 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01474 80AB2204 468021A0 */  cvt.s.w $f6, $f4
/* 01478 80AB2208 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0147C 80AB220C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01480 80AB2210 24A51E7C */  addiu   $a1, $a1, 0x1E7C           ## $a1 = 06001E7C
/* 01484 80AB2214 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01488 80AB2218 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0148C 80AB221C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01490 80AB2220 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01494 80AB2224 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01498 80AB2228 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0149C 80AB222C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 014A0 80AB2230 8FA20028 */  lw      $v0, 0x0028($sp)
/* 014A4 80AB2234 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 014A8 80AB2238 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 014AC 80AB223C AC4E0278 */  sw      $t6, 0x0278($v0)           ## 00000278
/* 014B0 80AB2240 AC4F027C */  sw      $t7, 0x027C($v0)           ## 0000027C
/* 014B4 80AB2244 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 014B8 80AB2248 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 014BC 80AB224C 03E00008 */  jr      $ra
/* 014C0 80AB2250 00000000 */  nop
