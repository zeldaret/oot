glabel func_80AE3C20
/* 01820 80AE3C20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01824 80AE3C24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01828 80AE3C28 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0182C 80AE3C2C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01830 80AE3C30 24A56E88 */  addiu   $a1, $a1, 0x6E88           ## $a1 = 06006E88
/* 01834 80AE3C34 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01838 80AE3C38 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 0183C 80AE3C3C 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 01840 80AE3C40 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 01844 80AE3C44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01848 80AE3C48 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0184C 80AE3C4C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01850 80AE3C50 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 01854 80AE3C54 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01858 80AE3C58 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 0185C 80AE3C5C 0301C824 */  and     $t9, $t8, $at              
/* 01860 80AE3C60 240538E7 */  addiu   $a1, $zero, 0x38E7         ## $a1 = 000038E7
/* 01864 80AE3C64 A08E031B */  sb      $t6, 0x031B($a0)           ## 0000031B
/* 01868 80AE3C68 A48F030C */  sh      $t7, 0x030C($a0)           ## 0000030C
/* 0186C 80AE3C6C AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 01870 80AE3C70 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01874 80AE3C74 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01878 80AE3C78 3C0580AE */  lui     $a1, %hi(func_80AE3C98)    ## $a1 = 80AE0000
/* 0187C 80AE3C7C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01880 80AE3C80 0C2B8900 */  jal     func_80AE2400              
/* 01884 80AE3C84 24A53C98 */  addiu   $a1, $a1, %lo(func_80AE3C98) ## $a1 = 80AE3C98
/* 01888 80AE3C88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0188C 80AE3C8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01890 80AE3C90 03E00008 */  jr      $ra                        
/* 01894 80AE3C94 00000000 */  nop


