glabel func_8093C58C
/* 038BC 8093C58C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 038C0 8093C590 AFA5001C */  sw      $a1, 0x001C($sp)
/* 038C4 8093C594 3C0E8094 */  lui     $t6, %hi(func_8093C5F4)    ## $t6 = 80940000
/* 038C8 8093C598 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 038CC 8093C59C 25CEC5F4 */  addiu   $t6, $t6, %lo(func_8093C5F4) ## $t6 = 8093C5F4
/* 038D0 8093C5A0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 038D4 8093C5A4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 038D8 8093C5A8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 038DC 8093C5AC 24A588C8 */  addiu   $a1, $a1, 0x88C8           ## $a1 = 060088C8
/* 038E0 8093C5B0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 038E4 8093C5B4 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 038E8 8093C5B8 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 038EC 8093C5BC 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 038F0 8093C5C0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 038F4 8093C5C4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 038F8 8093C5C8 248488C8 */  addiu   $a0, $a0, 0x88C8           ## $a0 = 060088C8
/* 038FC 8093C5CC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03900 8093C5D0 8FA70018 */  lw      $a3, 0x0018($sp)
/* 03904 8093C5D4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 03908 8093C5D8 468021A0 */  cvt.s.w $f6, $f4
/* 0390C 8093C5DC E4E80068 */  swc1    $f8, 0x0068($a3)           ## 00000068
/* 03910 8093C5E0 E4E601A4 */  swc1    $f6, 0x01A4($a3)           ## 000001A4
/* 03914 8093C5E4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03918 8093C5E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0391C 8093C5EC 03E00008 */  jr      $ra
/* 03920 8093C5F0 00000000 */  nop


