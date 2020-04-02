glabel func_809BD658
/* 009F8 809BD658 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009FC 809BD65C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00A00 809BD660 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00A04 809BD664 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A08 809BD668 24A50A74 */  addiu   $a1, $a1, 0x0A74           ## $a1 = 06000A74
/* 00A0C 809BD66C AFA70018 */  sw      $a3, 0x0018($sp)
/* 00A10 809BD670 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A14 809BD674 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00A18 809BD678 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00A1C 809BD67C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00A20 809BD680 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A24 809BD684 2405390A */  addiu   $a1, $zero, 0x390A         ## $a1 = 0000390A
/* 00A28 809BD688 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00A2C 809BD68C 3C18809C */  lui     $t8, %hi(func_809BE26C)    ## $t8 = 809C0000
/* 00A30 809BD690 240E0026 */  addiu   $t6, $zero, 0x0026         ## $t6 = 00000026
/* 00A34 809BD694 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 00A38 809BD698 2718E26C */  addiu   $t8, $t8, %lo(func_809BE26C) ## $t8 = 809BE26C
/* 00A3C 809BD69C A4EE0196 */  sh      $t6, 0x0196($a3)           ## 00000196
/* 00A40 809BD6A0 A4EF0198 */  sh      $t7, 0x0198($a3)           ## 00000198
/* 00A44 809BD6A4 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 00A48 809BD6A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00A4C 809BD6AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A50 809BD6B0 03E00008 */  jr      $ra
/* 00A54 809BD6B4 00000000 */  nop


