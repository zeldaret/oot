glabel func_8092E34C
/* 01D7C 8092E34C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D80 8092E350 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01D84 8092E354 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01D88 8092E358 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01D8C 8092E35C 24A5E7B8 */  addiu   $a1, $a1, 0xE7B8           ## $a1 = 0600E7B8
/* 01D90 8092E360 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01D94 8092E364 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01D98 8092E368 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01D9C 8092E36C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 01DA0 8092E370 8FA70018 */  lw      $a3, 0x0018($sp)
/* 01DA4 8092E374 3C188093 */  lui     $t8, %hi(func_8092E3A0)    ## $t8 = 80930000
/* 01DA8 8092E378 2718E3A0 */  addiu   $t8, $t8, %lo(func_8092E3A0) ## $t8 = 8092E3A0
/* 01DAC 8092E37C 90EE06C5 */  lbu     $t6, 0x06C5($a3)           ## 000006C5
/* 01DB0 8092E380 A0E00195 */  sb      $zero, 0x0195($a3)         ## 00000195
/* 01DB4 8092E384 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 01DB8 8092E388 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01DBC 8092E38C A0EF06C5 */  sb      $t7, 0x06C5($a3)           ## 000006C5
/* 01DC0 8092E390 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01DC4 8092E394 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DC8 8092E398 03E00008 */  jr      $ra
/* 01DCC 8092E39C 00000000 */  nop


