glabel func_80860BDC
/* 0158C 80860BDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01590 80860BE0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01594 80860BE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01598 80860BE8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0159C 80860BEC 24A5E2B0 */  addiu   $a1, $a1, 0xE2B0           ## $a1 = 0600E2B0
/* 015A0 80860BF0 AFA60018 */  sw      $a2, 0x0018($sp)
/* 015A4 80860BF4 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 015A8 80860BF8 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 015AC 80860BFC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 015B0 80860C00 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 015B4 80860C04 3C058086 */  lui     $a1, %hi(func_80860C24)    ## $a1 = 80860000
/* 015B8 80860C08 24A50C24 */  addiu   $a1, $a1, %lo(func_80860C24) ## $a1 = 80860C24
/* 015BC 80860C0C 0C217D94 */  jal     func_8085F650
/* 015C0 80860C10 A08E07C8 */  sb      $t6, 0x07C8($a0)           ## 000007C8
/* 015C4 80860C14 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 015C8 80860C18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 015CC 80860C1C 03E00008 */  jr      $ra
/* 015D0 80860C20 00000000 */  nop


