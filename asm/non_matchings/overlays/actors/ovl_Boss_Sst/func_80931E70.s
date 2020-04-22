glabel func_80931E70
/* 058A0 80931E70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 058A4 80931E74 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 058A8 80931E78 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 058AC 80931E7C 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 058B0 80931E80 3C058093 */  lui     $a1, %hi(D_80937854)       ## $a1 = 80930000
/* 058B4 80931E84 AFA70018 */  sw      $a3, 0x0018($sp)
/* 058B8 80931E88 000E7880 */  sll     $t7, $t6,  2
/* 058BC 80931E8C 00AF2821 */  addu    $a1, $a1, $t7
/* 058C0 80931E90 8CA57854 */  lw      $a1, %lo(D_80937854)($a1)
/* 058C4 80931E94 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 058C8 80931E98 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 058CC 80931E9C 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 058D0 80931EA0 8FA70018 */  lw      $a3, 0x0018($sp)
/* 058D4 80931EA4 3C188093 */  lui     $t8, %hi(func_80931EC0)    ## $t8 = 80930000
/* 058D8 80931EA8 27181EC0 */  addiu   $t8, $t8, %lo(func_80931EC0) ## $t8 = 80931EC0
/* 058DC 80931EAC ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 058E0 80931EB0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 058E4 80931EB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 058E8 80931EB8 03E00008 */  jr      $ra
/* 058EC 80931EBC 00000000 */  nop
