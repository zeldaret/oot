glabel func_80B40040
/* 03E60 80B40040 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03E64 80B40044 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 03E68 80B40048 10A00014 */  beq     $a1, $zero, .L80B4009C
/* 03E6C 80B4004C AFA40028 */  sw      $a0, 0x0028($sp)
/* 03E70 80B40050 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03E74 80B40054 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03E78 80B40058 24841D14 */  addiu   $a0, $a0, 0x1D14           ## $a0 = 06001D14
/* 03E7C 80B4005C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03E80 80B40060 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03E84 80B40064 8FA40028 */  lw      $a0, 0x0028($sp)
/* 03E88 80B40068 468021A0 */  cvt.s.w $f6, $f4
/* 03E8C 80B4006C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03E90 80B40070 44070000 */  mfc1    $a3, $f0
/* 03E94 80B40074 24A51D14 */  addiu   $a1, $a1, 0x1D14           ## $a1 = 06001D14
/* 03E98 80B40078 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03E9C 80B4007C AFA00014 */  sw      $zero, 0x0014($sp)
/* 03EA0 80B40080 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 03EA4 80B40084 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03EA8 80B40088 0C029468 */  jal     SkelAnime_ChangeAnim

/* 03EAC 80B4008C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 03EB0 80B40090 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 03EB4 80B40094 240E0038 */  addiu   $t6, $zero, 0x0038         ## $t6 = 00000038
/* 03EB8 80B40098 ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
.L80B4009C:
/* 03EBC 80B4009C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 03EC0 80B400A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03EC4 80B400A4 03E00008 */  jr      $ra
/* 03EC8 80B400A8 00000000 */  nop


