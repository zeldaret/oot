glabel func_809E9B48
/* 005E8 809E9B48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005EC 809E9B4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 005F0 809E9B50 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 005F4 809E9B54 3C050600 */  lui     $a1, %hi(D_060006B0)                ## $a1 = 06000000
/* 005F8 809E9B58 24A506B0 */  addiu   $a1, $a1, %lo(D_060006B0)           ## $a1 = 060006B0
/* 005FC 809E9B5C AFA60018 */  sw      $a2, 0x0018($sp)
/* 00600 809E9B60 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00604 809E9B64 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00608 809E9B68 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0060C 809E9B6C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00610 809E9B70 3C0E809F */  lui     $t6, %hi(func_809EA5B0)    ## $t6 = 809F0000
/* 00614 809E9B74 25CEA5B0 */  addiu   $t6, $t6, %lo(func_809EA5B0) ## $t6 = 809EA5B0
/* 00618 809E9B78 24053881 */  addiu   $a1, $zero, 0x3881         ## $a1 = 00003881
/* 0061C 809E9B7C AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 00620 809E9B80 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00624 809E9B84 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00628 809E9B88 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0062C 809E9B8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00630 809E9B90 03E00008 */  jr      $ra
/* 00634 809E9B94 00000000 */  nop
