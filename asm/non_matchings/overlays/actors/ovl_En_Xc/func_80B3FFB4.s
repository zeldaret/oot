glabel func_80B3FFB4
/* 03DD4 80B3FFB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03DD8 80B3FFB8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 03DDC 80B3FFBC AFA40028 */  sw      $a0, 0x0028($sp)
/* 03DE0 80B3FFC0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 03DE4 80B3FFC4 0C2CF13C */  jal     func_80B3C4F0
/* 03DE8 80B3FFC8 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 03DEC 80B3FFCC 10400018 */  beq     $v0, $zero, .L80B40030
/* 03DF0 80B3FFD0 3C040600 */  lui     $a0, %hi(D_06001A08)                ## $a0 = 06000000
/* 03DF4 80B3FFD4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03DF8 80B3FFD8 24841A08 */  addiu   $a0, $a0, %lo(D_06001A08)           ## $a0 = 06001A08
/* 03DFC 80B3FFDC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03E00 80B3FFE0 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03E04 80B3FFE4 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 03E08 80B3FFE8 468021A0 */  cvt.s.w $f6, $f4
/* 03E0C 80B3FFEC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 03E10 80B3FFF0 3C050600 */  lui     $a1, %hi(D_06001A08)                ## $a1 = 06000000
/* 03E14 80B3FFF4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 03E18 80B3FFF8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 03E1C 80B3FFFC 24A51A08 */  addiu   $a1, $a1, %lo(D_06001A08)           ## $a1 = 06001A08
/* 03E20 80B40000 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 03E24 80B40004 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03E28 80B40008 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03E2C 80B4000C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 03E30 80B40010 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03E34 80B40014 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03E38 80B40018 8FB80028 */  lw      $t8, 0x0028($sp)
/* 03E3C 80B4001C 240F0037 */  addiu   $t7, $zero, 0x0037         ## $t7 = 00000037
/* 03E40 80B40020 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 03E44 80B40024 AF0F0260 */  sw      $t7, 0x0260($t8)           ## 00000260
/* 03E48 80B40028 8FA80028 */  lw      $t0, 0x0028($sp)
/* 03E4C 80B4002C AD190264 */  sw      $t9, 0x0264($t0)           ## 00000264
.L80B40030:
/* 03E50 80B40030 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 03E54 80B40034 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03E58 80B40038 03E00008 */  jr      $ra
/* 03E5C 80B4003C 00000000 */  nop
