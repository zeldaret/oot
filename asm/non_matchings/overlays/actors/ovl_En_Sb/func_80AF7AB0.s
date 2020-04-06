glabel func_80AF7AB0
/* 002C0 80AF7AB0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 002C4 80AF7AB4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 002C8 80AF7AB8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 002CC 80AF7ABC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 002D0 80AF7AC0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 002D4 80AF7AC4 24842C8C */  addiu   $a0, $a0, 0x2C8C           ## $a0 = 06002C8C
/* 002D8 80AF7AC8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 002DC 80AF7ACC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 002E0 80AF7AD0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 002E4 80AF7AD4 468021A0 */  cvt.s.w $f6, $f4
/* 002E8 80AF7AD8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002EC 80AF7ADC 24A52C8C */  addiu   $a1, $a1, 0x2C8C           ## $a1 = 06002C8C
/* 002F0 80AF7AE0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 002F4 80AF7AE4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 002F8 80AF7AE8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 002FC 80AF7AEC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00300 80AF7AF0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00304 80AF7AF4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00308 80AF7AF8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0030C 80AF7AFC 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00310 80AF7B00 3C0F80AF */  lui     $t7, %hi(func_80AF7E90)    ## $t7 = 80AF0000
/* 00314 80AF7B04 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00318 80AF7B08 25EF7E90 */  addiu   $t7, $t7, %lo(func_80AF7E90) ## $t7 = 80AF7E90
/* 0031C 80AF7B0C A44E01FA */  sh      $t6, 0x01FA($v0)           ## 000001FA
/* 00320 80AF7B10 AC4F0190 */  sw      $t7, 0x0190($v0)           ## 00000190
/* 00324 80AF7B14 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00328 80AF7B18 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0032C 80AF7B1C 03E00008 */  jr      $ra
/* 00330 80AF7B20 00000000 */  nop


