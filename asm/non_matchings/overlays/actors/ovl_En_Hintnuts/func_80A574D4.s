glabel func_80A574D4
/* 002D4 80A574D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D8 80A574D8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002DC 80A574DC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002E0 80A574E0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002E4 80A574E4 24A52894 */  addiu   $a1, $a1, 0x2894           ## $a1 = 06002894
/* 002E8 80A574E8 AFA60018 */  sw      $a2, 0x0018($sp)
/* 002EC 80A574EC 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 002F0 80A574F0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002F4 80A574F4 8FA60018 */  lw      $a2, 0x0018($sp)
/* 002F8 80A574F8 3C0F80A5 */  lui     $t7, %hi(func_80A57B60)    ## $t7 = 80A50000
/* 002FC 80A574FC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00300 80A57500 25EF7B60 */  addiu   $t7, $t7, %lo(func_80A57B60) ## $t7 = 80A57B60
/* 00304 80A57504 A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
/* 00308 80A57508 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 0030C 80A5750C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00310 80A57510 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00314 80A57514 03E00008 */  jr      $ra
/* 00318 80A57518 00000000 */  nop


