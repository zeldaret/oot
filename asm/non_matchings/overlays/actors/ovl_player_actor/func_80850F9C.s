glabel func_80850F9C
/* 1ED8C 80850F9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1ED90 80850FA0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1ED94 80850FA4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 1ED98 80850FA8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1ED9C 80850FAC AFA60030 */  sw      $a2, 0x0030($sp)
/* 1EDA0 80850FB0 0C20CB6C */  jal     func_80832DB0
/* 1EDA4 80850FB4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1EDA8 80850FB8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1EDAC 80850FBC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 1EDB0 80850FC0 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 1EDB4 80850FC4 8FA5002C */  lw      $a1, 0x002C($sp)
/* 1EDB8 80850FC8 3C073F2A */  lui     $a3, 0x3F2A                ## $a3 = 3F2A0000
/* 1EDBC 80850FCC 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3F2AAAAB
/* 1EDC0 80850FD0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1EDC4 80850FD4 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1EDC8 80850FD8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1EDCC 80850FDC E7A00010 */  swc1    $f0, 0x0010($sp)
/* 1EDD0 80850FE0 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 1EDD4 80850FE4 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1EDD8 80850FE8 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 1EDDC 80850FEC E7A4001C */  swc1    $f4, 0x001C($sp)
/* 1EDE0 80850FF0 0C20C884 */  jal     func_80832210
/* 1EDE4 80850FF4 8FA4002C */  lw      $a0, 0x002C($sp)
/* 1EDE8 80850FF8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1EDEC 80850FFC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1EDF0 80851000 03E00008 */  jr      $ra
/* 1EDF4 80851004 00000000 */  nop


