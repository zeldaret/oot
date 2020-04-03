glabel func_80AA6E1C
/* 00DCC 80AA6E1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DD0 80AA6E20 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00DD4 80AA6E24 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00DD8 80AA6E28 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00DDC 80AA6E2C 24A5C44C */  addiu   $a1, $a1, 0xC44C           ## $a1 = 0600C44C
/* 00DE0 80AA6E30 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00DE4 80AA6E34 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00DE8 80AA6E38 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 00DEC 80AA6E3C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00DF0 80AA6E40 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00DF4 80AA6E44 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00DF8 80AA6E48 240538BE */  addiu   $a1, $zero, 0x38BE         ## $a1 = 000038BE
/* 00DFC 80AA6E4C AC8E0320 */  sw      $t6, 0x0320($a0)           ## 00000320
/* 00E00 80AA6E50 A480032A */  sh      $zero, 0x032A($a0)         ## 0000032A
/* 00E04 80AA6E54 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00E08 80AA6E58 A48F032E */  sh      $t7, 0x032E($a0)           ## 0000032E
/* 00E0C 80AA6E5C 3C0580AB */  lui     $a1, %hi(func_80AA8378)    ## $a1 = 80AB0000
/* 00E10 80AA6E60 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00E14 80AA6E64 0C2A9814 */  jal     func_80AA6050
/* 00E18 80AA6E68 24A58378 */  addiu   $a1, $a1, %lo(func_80AA8378) ## $a1 = 80AA8378
/* 00E1C 80AA6E6C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00E20 80AA6E70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E24 80AA6E74 03E00008 */  jr      $ra
/* 00E28 80AA6E78 00000000 */  nop


