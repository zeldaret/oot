glabel func_80949920
/* 10C50 80949920 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10C54 80949924 3C0E8095 */  lui     $t6, %hi(func_809499AC)    ## $t6 = 80950000
/* 10C58 80949928 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 10C5C 8094992C AFA5001C */  sw      $a1, 0x001C($sp)
/* 10C60 80949930 25CE99AC */  addiu   $t6, $t6, %lo(func_809499AC) ## $t6 = 809499AC
/* 10C64 80949934 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 10C68 80949938 3C0F8095 */  lui     $t7, %hi(D_8094C85C)       ## $t7 = 80950000
/* 10C6C 8094993C 91EFC85C */  lbu     $t7, %lo(D_8094C85C)($t7)
/* 10C70 80949940 3C050602 */  lui     $a1, %hi(D_06023750)                ## $a1 = 06020000
/* 10C74 80949944 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 10C78 80949948 15E00009 */  bne     $t7, $zero, .L80949970
/* 10C7C 8094994C 24A53750 */  addiu   $a1, $a1, %lo(D_06023750)           ## $a1 = 06023750
/* 10C80 80949950 3C050602 */  lui     $a1, %hi(D_06022700)                ## $a1 = 06020000
/* 10C84 80949954 24A52700 */  addiu   $a1, $a1, %lo(D_06022700)           ## $a1 = 06022700
/* 10C88 80949958 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 10C8C 8094995C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 10C90 80949960 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 10C94 80949964 AFA70018 */  sw      $a3, 0x0018($sp)
/* 10C98 80949968 10000005 */  beq     $zero, $zero, .L80949980
/* 10C9C 8094996C 00000000 */  nop
.L80949970:
/* 10CA0 80949970 24E40568 */  addiu   $a0, $a3, 0x0568           ## $a0 = 00000568
/* 10CA4 80949974 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 10CA8 80949978 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 10CAC 8094997C AFA70018 */  sw      $a3, 0x0018($sp)
.L80949980:
/* 10CB0 80949980 3C040602 */  lui     $a0, %hi(D_06023750)                ## $a0 = 06020000
/* 10CB4 80949984 0C028800 */  jal     SkelAnime_GetFrameCount

/* 10CB8 80949988 24843750 */  addiu   $a0, $a0, %lo(D_06023750)           ## $a0 = 06023750
/* 10CBC 8094998C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 10CC0 80949990 8FB80018 */  lw      $t8, 0x0018($sp)
/* 10CC4 80949994 468021A0 */  cvt.s.w $f6, $f4
/* 10CC8 80949998 E70601A4 */  swc1    $f6, 0x01A4($t8)           ## 000001A4
/* 10CCC 8094999C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 10CD0 809499A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10CD4 809499A4 03E00008 */  jr      $ra
/* 10CD8 809499A8 00000000 */  nop
