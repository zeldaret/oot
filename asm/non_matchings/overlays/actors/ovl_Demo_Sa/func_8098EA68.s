glabel func_8098EA68
/* 00608 8098EA68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0060C 8098EA6C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00610 8098EA70 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00614 8098EA74 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00618 8098EA78 51C0001E */  beql    $t6, $zero, .L8098EAF4
/* 0061C 8098EA7C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00620 8098EA80 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 00624 8098EA84 5040001B */  beql    $v0, $zero, .L8098EAF4
/* 00628 8098EA88 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0062C 8098EA8C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00630 8098EA90 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00634 8098EA94 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00638 8098EA98 55E10016 */  bnel    $t7, $at, .L8098EAF4
/* 0063C 8098EA9C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00640 8098EAA0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00644 8098EAA4 2484DF80 */  addiu   $a0, $a0, 0xDF80           ## $a0 = 0600DF80
/* 00648 8098EAA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0064C 8098EAAC 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00650 8098EAB0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00654 8098EAB4 468021A0 */  cvt.s.w $f6, $f4
/* 00658 8098EAB8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0065C 8098EABC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00660 8098EAC0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00664 8098EAC4 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00668 8098EAC8 24A5DF80 */  addiu   $a1, $a1, 0xDF80           ## $a1 = 0600DF80
/* 0066C 8098EACC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00670 8098EAD0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00674 8098EAD4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00678 8098EAD8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0067C 8098EADC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00680 8098EAE0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00684 8098EAE4 8FA80028 */  lw      $t0, 0x0028($sp)
/* 00688 8098EAE8 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 0068C 8098EAEC AD190198 */  sw      $t9, 0x0198($t0)           ## 00000198
/* 00690 8098EAF0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8098EAF4:
/* 00694 8098EAF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00698 8098EAF8 03E00008 */  jr      $ra
/* 0069C 8098EAFC 00000000 */  nop


