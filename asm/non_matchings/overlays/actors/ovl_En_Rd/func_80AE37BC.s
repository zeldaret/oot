glabel func_80AE37BC
/* 013BC 80AE37BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013C0 80AE37C0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 013C4 80AE37C4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 013C8 80AE37C8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 013CC 80AE37CC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 013D0 80AE37D0 24844F94 */  addiu   $a0, $a0, 0x4F94           ## $a0 = 06004F94
/* 013D4 80AE37D4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 013D8 80AE37D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 013DC 80AE37DC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 013E0 80AE37E0 468021A0 */  cvt.s.w $f6, $f4
/* 013E4 80AE37E4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 013E8 80AE37E8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 013EC 80AE37EC 44060000 */  mfc1    $a2, $f0
/* 013F0 80AE37F0 44070000 */  mfc1    $a3, $f0
/* 013F4 80AE37F4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 013F8 80AE37F8 24A54F94 */  addiu   $a1, $a1, 0x4F94           ## $a1 = 06004F94
/* 013FC 80AE37FC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01400 80AE3800 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01404 80AE3804 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01408 80AE3808 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0140C 80AE380C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01410 80AE3810 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 01414 80AE3814 3C0580AE */  lui     $a1, %hi(func_80AE3834)    ## $a1 = 80AE0000
/* 01418 80AE3818 24A53834 */  addiu   $a1, $a1, %lo(func_80AE3834) ## $a1 = 80AE3834
/* 0141C 80AE381C 0C2B8900 */  jal     func_80AE2400
/* 01420 80AE3820 A08F031B */  sb      $t7, 0x031B($a0)           ## 0000031B
/* 01424 80AE3824 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01428 80AE3828 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0142C 80AE382C 03E00008 */  jr      $ra
/* 01430 80AE3830 00000000 */  nop
