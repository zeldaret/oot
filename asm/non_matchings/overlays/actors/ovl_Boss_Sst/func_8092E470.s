glabel func_8092E470
/* 01EA0 8092E470 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01EA4 8092E474 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01EA8 8092E478 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EAC 8092E47C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01EB0 8092E480 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01EB4 8092E484 24A5B6FC */  addiu   $a1, $a1, 0xB6FC           ## $a1 = 0600B6FC
/* 01EB8 8092E488 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01EBC 8092E48C 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 01EC0 8092E490 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 01EC4 8092E494 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01EC8 8092E498 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01ECC 8092E49C 2484B6FC */  addiu   $a0, $a0, 0xB6FC           ## $a0 = 0600B6FC
/* 01ED0 8092E4A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01ED4 8092E4A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01ED8 8092E4A8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01EDC 8092E4AC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01EE0 8092E4B0 0C00D09B */  jal     func_8003426C              
/* 01EE4 8092E4B4 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 01EE8 8092E4B8 920E03E4 */  lbu     $t6, 0x03E4($s0)           ## 000003E4
/* 01EEC 8092E4BC 921806C5 */  lbu     $t8, 0x06C5($s0)           ## 000006C5
/* 01EF0 8092E4C0 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 01EF4 8092E4C4 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 01EF8 8092E4C8 31CFFFFC */  andi    $t7, $t6, 0xFFFC           ## $t7 = 00000000
/* 01EFC 8092E4CC 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 01F00 8092E4D0 01014824 */  and     $t1, $t0, $at              
/* 01F04 8092E4D4 A20F03E4 */  sb      $t7, 0x03E4($s0)           ## 000003E4
/* 01F08 8092E4D8 A21906C5 */  sb      $t9, 0x06C5($s0)           ## 000006C5
/* 01F0C 8092E4DC A2000194 */  sb      $zero, 0x0194($s0)         ## 00000194
/* 01F10 8092E4E0 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 01F14 8092E4E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F18 8092E4E8 0C24CF4B */  jal     func_80933D2C              
/* 01F1C 8092E4EC 2405396E */  addiu   $a1, $zero, 0x396E         ## $a1 = 0000396E
/* 01F20 8092E4F0 3C0A8093 */  lui     $t2, %hi(func_8092E510)    ## $t2 = 80930000
/* 01F24 8092E4F4 254AE510 */  addiu   $t2, $t2, %lo(func_8092E510) ## $t2 = 8092E510
/* 01F28 8092E4F8 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 01F2C 8092E4FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01F30 8092E500 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01F34 8092E504 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01F38 8092E508 03E00008 */  jr      $ra                        
/* 01F3C 8092E50C 00000000 */  nop


