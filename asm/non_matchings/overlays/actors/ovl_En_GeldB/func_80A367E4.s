glabel func_80A367E4
/* 014D4 80A367E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014D8 80A367E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 014DC 80A367EC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 014E0 80A367F0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 014E4 80A367F4 24A5A814 */  addiu   $a1, $a1, 0xA814           ## $a1 = 0600A814
/* 014E8 80A367F8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 014EC 80A367FC 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 014F0 80A36800 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 014F4 80A36804 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 014F8 80A36808 8FA40018 */  lw      $a0, 0x0018($sp)
/* 014FC 80A3680C 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 01500 80A36810 3C0580A3 */  lui     $a1, %hi(func_80A36830)    ## $a1 = 80A30000
/* 01504 80A36814 24A56830 */  addiu   $a1, $a1, %lo(func_80A36830) ## $a1 = 80A36830
/* 01508 80A36818 0C28D4C4 */  jal     func_80A35310
/* 0150C 80A3681C AC8E02EC */  sw      $t6, 0x02EC($a0)           ## 000002EC
/* 01510 80A36820 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01514 80A36824 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01518 80A36828 03E00008 */  jr      $ra
/* 0151C 80A3682C 00000000 */  nop


