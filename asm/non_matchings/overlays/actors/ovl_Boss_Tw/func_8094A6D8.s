glabel func_8094A6D8
/* 11A08 8094A6D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 11A0C 8094A6DC AFA5001C */  sw      $a1, 0x001C($sp)
/* 11A10 8094A6E0 3C0E8095 */  lui     $t6, %hi(func_8094A740)    ## $t6 = 80950000
/* 11A14 8094A6E4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11A18 8094A6E8 25CEA740 */  addiu   $t6, $t6, %lo(func_8094A740) ## $t6 = 8094A740
/* 11A1C 8094A6EC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 11A20 8094A6F0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 11A24 8094A6F4 3C050604 */  lui     $a1, 0x0604                ## $a1 = 06040000
/* 11A28 8094A6F8 24A5A2D0 */  addiu   $a1, $a1, 0xA2D0           ## $a1 = 0603A2D0
/* 11A2C 8094A6FC AFA70018 */  sw      $a3, 0x0018($sp)
/* 11A30 8094A700 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 11A34 8094A704 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 11A38 8094A708 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 11A3C 8094A70C 3C040604 */  lui     $a0, 0x0604                ## $a0 = 06040000
/* 11A40 8094A710 0C028800 */  jal     SkelAnime_GetFrameCount

/* 11A44 8094A714 2484A2D0 */  addiu   $a0, $a0, 0xA2D0           ## $a0 = 0603A2D0
/* 11A48 8094A718 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 11A4C 8094A71C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 11A50 8094A720 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 11A54 8094A724 468021A0 */  cvt.s.w $f6, $f4
/* 11A58 8094A728 E4E80068 */  swc1    $f8, 0x0068($a3)           ## 00000068
/* 11A5C 8094A72C E4E601A4 */  swc1    $f6, 0x01A4($a3)           ## 000001A4
/* 11A60 8094A730 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 11A64 8094A734 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 11A68 8094A738 03E00008 */  jr      $ra
/* 11A6C 8094A73C 00000000 */  nop


