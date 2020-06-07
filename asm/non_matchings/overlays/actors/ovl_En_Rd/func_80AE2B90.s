.late_rodata
glabel D_80AE499C
    .float 0.4

.text
glabel func_80AE2B90
/* 00790 80AE2B90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00794 80AE2B94 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00798 80AE2B98 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0079C 80AE2B9C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 007A0 80AE2BA0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 007A4 80AE2BA4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 007A8 80AE2BA8 2484EFDC */  addiu   $a0, $a0, 0xEFDC           ## $a0 = 0600EFDC
/* 007AC 80AE2BAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 007B0 80AE2BB0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 007B4 80AE2BB4 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 007B8 80AE2BB8 468021A0 */  cvt.s.w $f6, $f4
/* 007BC 80AE2BBC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 007C0 80AE2BC0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 007C4 80AE2BC4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 007C8 80AE2BC8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 007CC 80AE2BCC 24A5EFDC */  addiu   $a1, $a1, 0xEFDC           ## $a1 = 0600EFDC
/* 007D0 80AE2BD0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 007D4 80AE2BD4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007D8 80AE2BD8 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 007DC 80AE2BDC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 007E0 80AE2BE0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 007E4 80AE2BE4 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 007E8 80AE2BE8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 007EC 80AE2BEC 3C0180AE */  lui     $at, %hi(D_80AE499C)       ## $at = 80AE0000
/* 007F0 80AE2BF0 C42A499C */  lwc1    $f10, %lo(D_80AE499C)($at)
/* 007F4 80AE2BF4 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 007F8 80AE2BF8 3C0580AE */  lui     $a1, %hi(func_80AE2C1C)    ## $a1 = 80AE0000
/* 007FC 80AE2BFC 24A52C1C */  addiu   $a1, $a1, %lo(func_80AE2C1C) ## $a1 = 80AE2C1C
/* 00800 80AE2C00 A08F031B */  sb      $t7, 0x031B($a0)           ## 0000031B
/* 00804 80AE2C04 0C2B8900 */  jal     func_80AE2400
/* 00808 80AE2C08 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
/* 0080C 80AE2C0C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00810 80AE2C10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00814 80AE2C14 03E00008 */  jr      $ra
/* 00818 80AE2C18 00000000 */  nop
