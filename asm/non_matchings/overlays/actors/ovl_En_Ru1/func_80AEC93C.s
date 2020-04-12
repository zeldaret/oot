glabel func_80AEC93C
/* 01D2C 80AEC93C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01D30 80AEC940 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01D34 80AEC944 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D38 80AEC948 10A00019 */  beq     $a1, $zero, .L80AEC9B0
/* 01D3C 80AEC94C AFBF002C */  sw      $ra, 0x002C($sp)
/* 01D40 80AEC950 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01D44 80AEC954 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01D48 80AEC958 248478E4 */  addiu   $a0, $a0, 0x78E4           ## $a0 = 060078E4
/* 01D4C 80AEC95C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01D50 80AEC960 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01D54 80AEC964 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01D58 80AEC968 468021A0 */  cvt.s.w $f6, $f4
/* 01D5C 80AEC96C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01D60 80AEC970 24A578E4 */  addiu   $a1, $a1, 0x78E4           ## $a1 = 060078E4
/* 01D64 80AEC974 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01D68 80AEC978 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D6C 80AEC97C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01D70 80AEC980 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01D74 80AEC984 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01D78 80AEC988 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01D7C 80AEC98C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01D80 80AEC990 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 01D84 80AEC994 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01D88 80AEC998 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01D8C 80AEC99C 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 01D90 80AEC9A0 01C17821 */  addu    $t7, $t6, $at
/* 01D94 80AEC9A4 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 01D98 80AEC9A8 AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 01D9C 80AEC9AC E60A026C */  swc1    $f10, 0x026C($s0)          ## 0000026C
.L80AEC9B0:
/* 01DA0 80AEC9B0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01DA4 80AEC9B4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01DA8 80AEC9B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01DAC 80AEC9BC 03E00008 */  jr      $ra
/* 01DB0 80AEC9C0 00000000 */  nop
