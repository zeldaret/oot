glabel func_80B26D54
/* 006A4 80B26D54 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006A8 80B26D58 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 006AC 80B26D5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006B0 80B26D60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006B4 80B26D64 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006B8 80B26D68 24A50710 */  addiu   $a1, $a1, 0x0710           ## $a1 = 06000710
/* 006BC 80B26D6C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006C0 80B26D70 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 006C4 80B26D74 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 006C8 80B26D78 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006CC 80B26D7C 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 006D0 80B26D80 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 006D4 80B26D84 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 006D8 80B26D88 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 006DC 80B26D8C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 006E0 80B26D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006E4 80B26D94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006E8 80B26D98 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 006EC 80B26D9C 0C00D09B */  jal     func_8003426C              
/* 006F0 80B26DA0 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 006F4 80B26DA4 A2000420 */  sb      $zero, 0x0420($s0)         ## 00000420
/* 006F8 80B26DA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006FC 80B26DAC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00700 80B26DB0 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00704 80B26DB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00708 80B26DB8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0070C 80B26DBC 3C1880B2 */  lui     $t8, %hi(func_80B27654)    ## $t8 = 80B20000
/* 00710 80B26DC0 27187654 */  addiu   $t8, $t8, %lo(func_80B27654) ## $t8 = 80B27654
/* 00714 80B26DC4 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 00718 80B26DC8 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 0071C 80B26DCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00720 80B26DD0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00724 80B26DD4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00728 80B26DD8 03E00008 */  jr      $ra                        
/* 0072C 80B26DDC 00000000 */  nop


