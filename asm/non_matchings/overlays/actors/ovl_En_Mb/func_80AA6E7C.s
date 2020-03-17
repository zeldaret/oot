glabel func_80AA6E7C
/* 00E2C 80AA6E7C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E30 80AA6E80 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00E34 80AA6E84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E38 80AA6E88 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00E3C 80AA6E8C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00E40 80AA6E90 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00E44 80AA6E94 2484D5D4 */  addiu   $a0, $a0, 0xD5D4           ## $a0 = 0600D5D4
/* 00E48 80AA6E98 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00E4C 80AA6E9C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00E50 80AA6EA0 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 00E54 80AA6EA4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00E58 80AA6EA8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00E5C 80AA6EAC AE0E0320 */  sw      $t6, 0x0320($s0)           ## 00000320
/* 00E60 80AA6EB0 A600032A */  sh      $zero, 0x032A($s0)         ## 0000032A
/* 00E64 80AA6EB4 A60F032E */  sh      $t7, 0x032E($s0)           ## 0000032E
/* 00E68 80AA6EB8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00E6C 80AA6EBC 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00E70 80AA6EC0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00E74 80AA6EC4 24A5D5D4 */  addiu   $a1, $a1, 0xD5D4           ## $a1 = 0600D5D4
/* 00E78 80AA6EC8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00E7C 80AA6ECC 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 00E80 80AA6ED0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E84 80AA6ED4 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 00E88 80AA6ED8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00E8C 80AA6EDC E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00E90 80AA6EE0 3C0580AB */  lui     $a1, %hi(func_80AA840C)    ## $a1 = 80AB0000
/* 00E94 80AA6EE4 24A5840C */  addiu   $a1, $a1, %lo(func_80AA840C) ## $a1 = 80AA840C
/* 00E98 80AA6EE8 0C2A9814 */  jal     func_80AA6050              
/* 00E9C 80AA6EEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA0 80AA6EF0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00EA4 80AA6EF4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00EA8 80AA6EF8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00EAC 80AA6EFC 03E00008 */  jr      $ra                        
/* 00EB0 80AA6F00 00000000 */  nop


