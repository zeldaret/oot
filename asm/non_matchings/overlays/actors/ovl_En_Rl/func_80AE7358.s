glabel func_80AE7358
/* 000A8 80AE7358 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000AC 80AE735C AFB00028 */  sw      $s0, 0x0028($sp)
/* 000B0 80AE7360 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000B4 80AE7364 AFBF002C */  sw      $ra, 0x002C($sp)
/* 000B8 80AE7368 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000BC 80AE736C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 000C0 80AE7370 24840A3C */  addiu   $a0, $a0, 0x0A3C           ## $a0 = 06000A3C
/* 000C4 80AE7374 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 000C8 80AE7378 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000CC 80AE737C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 000D0 80AE7380 468021A0 */  cvt.s.w $f6, $f4
/* 000D4 80AE7384 44070000 */  mfc1    $a3, $f0
/* 000D8 80AE7388 24A50A3C */  addiu   $a1, $a1, 0x0A3C           ## $a1 = 06000A3C
/* 000DC 80AE738C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 000E0 80AE7390 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 000E4 80AE7394 AFA00014 */  sw      $zero, 0x0014($sp)
/* 000E8 80AE7398 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 000EC 80AE739C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 000F0 80AE73A0 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 000F4 80AE73A4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 000F8 80AE73A8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 000FC 80AE73AC AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 00100 80AE73B0 AE000198 */  sw      $zero, 0x0198($s0)         ## 00000198
/* 00104 80AE73B4 AE0001A0 */  sw      $zero, 0x01A0($s0)         ## 000001A0
/* 00108 80AE73B8 AE0001A4 */  sw      $zero, 0x01A4($s0)         ## 000001A4
/* 0010C 80AE73BC A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 00110 80AE73C0 E608019C */  swc1    $f8, 0x019C($s0)           ## 0000019C
/* 00114 80AE73C4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00118 80AE73C8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0011C 80AE73CC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00120 80AE73D0 03E00008 */  jr      $ra
/* 00124 80AE73D4 00000000 */  nop
