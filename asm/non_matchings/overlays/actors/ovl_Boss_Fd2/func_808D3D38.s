glabel func_808D3D38
/* 016C8 808D3D38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016CC 808D3D3C AFA5001C */  sw      $a1, 0x001C($sp)
/* 016D0 808D3D40 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 016D4 808D3D44 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 016D8 808D3D48 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 016DC 808D3D4C 24A57850 */  addiu   $a1, $a1, 0x7850           ## $a1 = 06007850
/* 016E0 808D3D50 AFA60018 */  sw      $a2, 0x0018($sp)
/* 016E4 808D3D54 0C02947A */  jal     Animation_PlayOnce
/* 016E8 808D3D58 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 016EC 808D3D5C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 016F0 808D3D60 0C028800 */  jal     Animation_GetLastFrame

/* 016F4 808D3D64 24847850 */  addiu   $a0, $a0, 0x7850           ## $a0 = 06007850
/* 016F8 808D3D68 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 016FC 808D3D6C 8FA60018 */  lw      $a2, 0x0018($sp)
/* 01700 808D3D70 3C0E808D */  lui     $t6, %hi(func_808D3D98)    ## $t6 = 808D0000
/* 01704 808D3D74 468021A0 */  cvt.s.w $f6, $f4
/* 01708 808D3D78 25CE3D98 */  addiu   $t6, $t6, %lo(func_808D3D98) ## $t6 = 808D3D98
/* 0170C 808D3D7C ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 01710 808D3D80 A4C00198 */  sh      $zero, 0x0198($a2)         ## 00000198
/* 01714 808D3D84 E4C601F0 */  swc1    $f6, 0x01F0($a2)           ## 000001F0
/* 01718 808D3D88 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0171C 808D3D8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01720 808D3D90 03E00008 */  jr      $ra
/* 01724 808D3D94 00000000 */  nop
