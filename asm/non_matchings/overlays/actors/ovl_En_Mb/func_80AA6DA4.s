glabel func_80AA6DA4
/* 00D54 80AA6DA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D58 80AA6DA8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00D5C 80AA6DAC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D60 80AA6DB0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00D64 80AA6DB4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00D68 80AA6DB8 2484EBE4 */  addiu   $a0, $a0, 0xEBE4           ## $a0 = 0600EBE4
/* 00D6C 80AA6DBC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00D70 80AA6DC0 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00D74 80AA6DC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D78 80AA6DC8 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D7C 80AA6DCC 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00D80 80AA6DD0 AC6E0320 */  sw      $t6, 0x0320($v1)           ## 00000320
/* 00D84 80AA6DD4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00D88 80AA6DD8 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00D8C 80AA6DDC 44070000 */  mfc1    $a3, $f0                   
/* 00D90 80AA6DE0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00D94 80AA6DE4 24A5EBE4 */  addiu   $a1, $a1, 0xEBE4           ## $a1 = 0600EBE4
/* 00D98 80AA6DE8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00D9C 80AA6DEC 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00DA0 80AA6DF0 2464018C */  addiu   $a0, $v1, 0x018C           ## $a0 = 0000018C
/* 00DA4 80AA6DF4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00DA8 80AA6DF8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00DAC 80AA6DFC 3C0580AA */  lui     $a1, %hi(func_80AA7478)    ## $a1 = 80AA0000
/* 00DB0 80AA6E00 24A57478 */  addiu   $a1, $a1, %lo(func_80AA7478) ## $a1 = 80AA7478
/* 00DB4 80AA6E04 0C2A9814 */  jal     func_80AA6050              
/* 00DB8 80AA6E08 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00DBC 80AA6E0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DC0 80AA6E10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DC4 80AA6E14 03E00008 */  jr      $ra                        
/* 00DC8 80AA6E18 00000000 */  nop


