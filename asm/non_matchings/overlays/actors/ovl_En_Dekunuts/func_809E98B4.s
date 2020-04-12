glabel func_809E98B4
/* 00354 809E98B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00358 809E98B8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0035C 809E98BC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00360 809E98C0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00364 809E98C4 24A508C4 */  addiu   $a1, $a1, 0x08C4           ## $a1 = 060008C4
/* 00368 809E98C8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0036C 809E98CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00370 809E98D0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00374 809E98D4 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00378 809E98D8 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0037C 809E98DC 240E0025 */  addiu   $t6, $zero, 0x0025         ## $t6 = 00000025
/* 00380 809E98E0 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 00384 809E98E4 24053880 */  addiu   $a1, $zero, 0x3880         ## $a1 = 00003880
/* 00388 809E98E8 A48E030A */  sh      $t6, 0x030A($a0)           ## 0000030A
/* 0038C 809E98EC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00390 809E98F0 A08F00AE */  sb      $t7, 0x00AE($a0)           ## 000000AE
/* 00394 809E98F4 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00398 809E98F8 3C08809F */  lui     $t0, %hi(func_809EA1D8)    ## $t0 = 809F0000
/* 0039C 809E98FC 2508A1D8 */  addiu   $t0, $t0, %lo(func_809EA1D8) ## $t0 = 809EA1D8
/* 003A0 809E9900 90F802D9 */  lbu     $t8, 0x02D9($a3)           ## 000002D9
/* 003A4 809E9904 ACE80190 */  sw      $t0, 0x0190($a3)           ## 00000190
/* 003A8 809E9908 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 003AC 809E990C A0F902D9 */  sb      $t9, 0x02D9($a3)           ## 000002D9
/* 003B0 809E9910 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 003B4 809E9914 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003B8 809E9918 03E00008 */  jr      $ra
/* 003BC 809E991C 00000000 */  nop


