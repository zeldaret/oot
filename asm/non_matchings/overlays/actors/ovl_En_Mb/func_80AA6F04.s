glabel func_80AA6F04
/* 00EB4 80AA6F04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EB8 80AA6F08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EBC 80AA6F0C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00EC0 80AA6F10 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00EC4 80AA6F14 24A5BE58 */  addiu   $a1, $a1, 0xBE58           ## $a1 = 0600BE58
/* 00EC8 80AA6F18 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00ECC 80AA6F1C 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 00ED0 80AA6F20 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 00ED4 80AA6F24 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 00ED8 80AA6F28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00EDC 80AA6F2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EE0 80AA6F30 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00EE4 80AA6F34 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00EE8 80AA6F38 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00EEC 80AA6F3C 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 00EF0 80AA6F40 2408005F */  addiu   $t0, $zero, 0x005F         ## $t0 = 0000005F
/* 00EF4 80AA6F44 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 00EF8 80AA6F48 01E1C024 */  and     $t8, $t7, $at              
/* 00EFC 80AA6F4C 240538BE */  addiu   $a1, $zero, 0x38BE         ## $a1 = 000038BE
/* 00F00 80AA6F50 AC8E0320 */  sw      $t6, 0x0320($a0)           ## 00000320
/* 00F04 80AA6F54 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 00F08 80AA6F58 A49903AA */  sh      $t9, 0x03AA($a0)           ## 000003AA
/* 00F0C 80AA6F5C A48803A8 */  sh      $t0, 0x03A8($a0)           ## 000003A8
/* 00F10 80AA6F60 A489032A */  sh      $t1, 0x032A($a0)           ## 0000032A
/* 00F14 80AA6F64 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F18 80AA6F68 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00F1C 80AA6F6C 3C0580AB */  lui     $a1, %hi(func_80AA8514)    ## $a1 = 80AB0000
/* 00F20 80AA6F70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F24 80AA6F74 0C2A9814 */  jal     func_80AA6050              
/* 00F28 80AA6F78 24A58514 */  addiu   $a1, $a1, %lo(func_80AA8514) ## $a1 = 80AA8514
/* 00F2C 80AA6F7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F30 80AA6F80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F34 80AA6F84 03E00008 */  jr      $ra                        
/* 00F38 80AA6F88 00000000 */  nop


