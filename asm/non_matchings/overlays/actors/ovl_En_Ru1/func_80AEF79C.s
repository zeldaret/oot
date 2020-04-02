glabel func_80AEF79C
/* 04B8C 80AEF79C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04B90 80AEF7A0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 04B94 80AEF7A4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 04B98 80AEF7A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04B9C 80AEF7AC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 04BA0 80AEF7B0 0C2BABF8 */  jal     func_80AEAFE0
/* 04BA4 80AEF7B4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 04BA8 80AEF7B8 10400015 */  beq     $v0, $zero, .L80AEF810
/* 04BAC 80AEF7BC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04BB0 80AEF7C0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04BB4 80AEF7C4 24842EC0 */  addiu   $a0, $a0, 0x2EC0           ## $a0 = 06002EC0
/* 04BB8 80AEF7C8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04BBC 80AEF7CC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 04BC0 80AEF7D0 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 04BC4 80AEF7D4 468021A0 */  cvt.s.w $f6, $f4
/* 04BC8 80AEF7D8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04BCC 80AEF7DC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04BD0 80AEF7E0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 04BD4 80AEF7E4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 04BD8 80AEF7E8 24A52EC0 */  addiu   $a1, $a1, 0x2EC0           ## $a1 = 06002EC0
/* 04BDC 80AEF7EC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04BE0 80AEF7F0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04BE4 80AEF7F4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 04BE8 80AEF7F8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 04BEC 80AEF7FC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04BF0 80AEF800 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04BF4 80AEF804 8FB80028 */  lw      $t8, 0x0028($sp)
/* 04BF8 80AEF808 240F0027 */  addiu   $t7, $zero, 0x0027         ## $t7 = 00000027
/* 04BFC 80AEF80C AF0F0264 */  sw      $t7, 0x0264($t8)           ## 00000264
.L80AEF810:
/* 04C00 80AEF810 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04C04 80AEF814 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04C08 80AEF818 03E00008 */  jr      $ra
/* 04C0C 80AEF81C 00000000 */  nop


