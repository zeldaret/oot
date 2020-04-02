glabel func_80A77158
/* 02E48 80A77158 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02E4C 80A7715C AFB00028 */  sw      $s0, 0x0028($sp)
/* 02E50 80A77160 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E54 80A77164 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02E58 80A77168 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 02E5C 80A7716C AFA50034 */  sw      $a1, 0x0034($sp)
/* 02E60 80A77170 0C028800 */  jal     SkelAnime_GetFrameCount

/* 02E64 80A77174 2484C114 */  addiu   $a0, $a0, 0xC114           ## $a0 = 0600C114
/* 02E68 80A77178 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02E6C 80A7717C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02E70 80A77180 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02E74 80A77184 468021A0 */  cvt.s.w $f6, $f4
/* 02E78 80A77188 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 02E7C 80A7718C 44070000 */  mfc1    $a3, $f0
/* 02E80 80A77190 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 02E84 80A77194 24A5C114 */  addiu   $a1, $a1, 0xC114           ## $a1 = 0600C114
/* 02E88 80A77198 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02E8C 80A7719C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02E90 80A771A0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02E94 80A771A4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02E98 80A771A8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 02E9C 80A771AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EA0 80A771B0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 02EA4 80A771B4 0C29DC30 */  jal     func_80A770C0
/* 02EA8 80A771B8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02EAC 80A771BC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02EB0 80A771C0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 02EB4 80A771C4 AE0204C8 */  sw      $v0, 0x04C8($s0)           ## 000004C8
/* 02EB8 80A771C8 AE0204CC */  sw      $v0, 0x04CC($s0)           ## 000004CC
/* 02EBC 80A771CC A20F00C8 */  sb      $t7, 0x00C8($s0)           ## 000000C8
/* 02EC0 80A771D0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02EC4 80A771D4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02EC8 80A771D8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02ECC 80A771DC 03E00008 */  jr      $ra
/* 02ED0 80A771E0 00000000 */  nop


