glabel func_80B3DBAC
/* 019CC 80B3DBAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019D0 80B3DBB0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 019D4 80B3DBB4 10A00017 */  beq     $a1, $zero, .L80B3DC14
/* 019D8 80B3DBB8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 019DC 80B3DBBC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 019E0 80B3DBC0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 019E4 80B3DBC4 24847C54 */  addiu   $a0, $a0, 0x7C54           ## $a0 = 06017C54
/* 019E8 80B3DBC8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 019EC 80B3DBCC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 019F0 80B3DBD0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 019F4 80B3DBD4 468021A0 */  cvt.s.w $f6, $f4
/* 019F8 80B3DBD8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 019FC 80B3DBDC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01A00 80B3DBE0 44070000 */  mfc1    $a3, $f0
/* 01A04 80B3DBE4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01A08 80B3DBE8 24A57C54 */  addiu   $a1, $a1, 0x7C54           ## $a1 = 06017C54
/* 01A0C 80B3DBEC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01A10 80B3DBF0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A14 80B3DBF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A18 80B3DBF8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01A1C 80B3DBFC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01A20 80B3DC00 8FA20028 */  lw      $v0, 0x0028($sp)
/* 01A24 80B3DC04 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 01A28 80B3DC08 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01A2C 80B3DC0C AC4F0260 */  sw      $t7, 0x0260($v0)           ## 00000260
/* 01A30 80B3DC10 AC580264 */  sw      $t8, 0x0264($v0)           ## 00000264
.L80B3DC14:
/* 01A34 80B3DC14 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01A38 80B3DC18 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01A3C 80B3DC1C 03E00008 */  jr      $ra
/* 01A40 80B3DC20 00000000 */  nop


