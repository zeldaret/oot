glabel func_80AE31DC
/* 00DDC 80AE31DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DE0 80AE31E0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00DE4 80AE31E4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00DE8 80AE31E8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00DEC 80AE31EC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00DF0 80AE31F0 2484EFDC */  addiu   $a0, $a0, 0xEFDC           ## $a0 = 0600EFDC
/* 00DF4 80AE31F4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DF8 80AE31F8 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00DFC 80AE31FC 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00E00 80AE3200 468021A0 */  cvt.s.w $f6, $f4
/* 00E04 80AE3204 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00E08 80AE3208 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00E0C 80AE320C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00E10 80AE3210 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00E14 80AE3214 24A5EFDC */  addiu   $a1, $a1, 0xEFDC           ## $a1 = 0600EFDC
/* 00E18 80AE3218 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00E1C 80AE321C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00E20 80AE3220 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E24 80AE3224 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00E28 80AE3228 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00E2C 80AE322C 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00E30 80AE3230 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00E34 80AE3234 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00E38 80AE3238 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00E3C 80AE323C 3C0580AE */  lui     $a1, %hi(func_80AE3260)    ## $a1 = 80AE0000
/* 00E40 80AE3240 24A53260 */  addiu   $a1, $a1, %lo(func_80AE3260) ## $a1 = 80AE3260
/* 00E44 80AE3244 A08F031B */  sb      $t7, 0x031B($a0)           ## 0000031B
/* 00E48 80AE3248 0C2B8900 */  jal     func_80AE2400
/* 00E4C 80AE324C A0980305 */  sb      $t8, 0x0305($a0)           ## 00000305
/* 00E50 80AE3250 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00E54 80AE3254 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E58 80AE3258 03E00008 */  jr      $ra
/* 00E5C 80AE325C 00000000 */  nop


