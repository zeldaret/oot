glabel func_80AB2A68
/* 01CD8 80AB2A68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01CDC 80AB2A6C AFA40028 */  sw      $a0, 0x0028($sp)
/* 01CE0 80AB2A70 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01CE4 80AB2A74 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01CE8 80AB2A78 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01CEC 80AB2A7C 24846320 */  addiu   $a0, $a0, 0x6320           ## $a0 = 06006320
/* 01CF0 80AB2A80 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01CF4 80AB2A84 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01CF8 80AB2A88 8FA30028 */  lw      $v1, 0x0028($sp)
/* 01CFC 80AB2A8C 468021A0 */  cvt.s.w $f6, $f4
/* 01D00 80AB2A90 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01D04 80AB2A94 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01D08 80AB2A98 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01D0C 80AB2A9C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01D10 80AB2AA0 24A56320 */  addiu   $a1, $a1, 0x6320           ## $a1 = 06006320
/* 01D14 80AB2AA4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01D18 80AB2AA8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D1C 80AB2AAC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01D20 80AB2AB0 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 01D24 80AB2AB4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01D28 80AB2AB8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01D2C 80AB2ABC 8FA30028 */  lw      $v1, 0x0028($sp)
/* 01D30 80AB2AC0 240F0012 */  addiu   $t7, $zero, 0x0012         ## $t7 = 00000012
/* 01D34 80AB2AC4 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01D38 80AB2AC8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01D3C 80AB2ACC AC6F0278 */  sw      $t7, 0x0278($v1)           ## 00000278
/* 01D40 80AB2AD0 AC78027C */  sw      $t8, 0x027C($v1)           ## 0000027C
/* 01D44 80AB2AD4 A07900C8 */  sb      $t9, 0x00C8($v1)           ## 000000C8
/* 01D48 80AB2AD8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01D4C 80AB2ADC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D50 80AB2AE0 03E00008 */  jr      $ra
/* 01D54 80AB2AE4 00000000 */  nop


