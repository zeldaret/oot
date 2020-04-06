glabel func_80AE2F50
/* 00B50 80AE2F50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B54 80AE2F54 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00B58 80AE2F58 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00B5C 80AE2F5C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00B60 80AE2F60 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00B64 80AE2F64 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B68 80AE2F68 2484EFDC */  addiu   $a0, $a0, 0xEFDC           ## $a0 = 0600EFDC
/* 00B6C 80AE2F6C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B70 80AE2F70 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00B74 80AE2F74 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00B78 80AE2F78 468021A0 */  cvt.s.w $f6, $f4
/* 00B7C 80AE2F7C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00B80 80AE2F80 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00B84 80AE2F84 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00B88 80AE2F88 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00B8C 80AE2F8C 24A5EFDC */  addiu   $a1, $a1, 0xEFDC           ## $a1 = 0600EFDC
/* 00B90 80AE2F90 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00B94 80AE2F94 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00B98 80AE2F98 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B9C 80AE2F9C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00BA0 80AE2FA0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00BA4 80AE2FA4 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00BA8 80AE2FA8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00BAC 80AE2FAC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00BB0 80AE2FB0 3C0580AE */  lui     $a1, %hi(func_80AE2FD0)    ## $a1 = 80AE0000
/* 00BB4 80AE2FB4 24A52FD0 */  addiu   $a1, $a1, %lo(func_80AE2FD0) ## $a1 = 80AE2FD0
/* 00BB8 80AE2FB8 0C2B8900 */  jal     func_80AE2400
/* 00BBC 80AE2FBC A08F031B */  sb      $t7, 0x031B($a0)           ## 0000031B
/* 00BC0 80AE2FC0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00BC4 80AE2FC4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00BC8 80AE2FC8 03E00008 */  jr      $ra
/* 00BCC 80AE2FCC 00000000 */  nop


