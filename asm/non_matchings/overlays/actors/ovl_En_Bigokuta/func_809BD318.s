glabel func_809BD318
/* 006B8 809BD318 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006BC 809BD31C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 006C0 809BD320 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 006C4 809BD324 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 006C8 809BD328 24A514B8 */  addiu   $a1, $a1, 0x14B8           ## $a1 = 060014B8
/* 006CC 809BD32C AFA60018 */  sw      $a2, 0x0018($sp)
/* 006D0 809BD330 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 006D4 809BD334 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006D8 809BD338 8FA60018 */  lw      $a2, 0x0018($sp)
/* 006DC 809BD33C 3C01809C */  lui     $at, %hi(D_809BF534)       ## $at = 809C0000
/* 006E0 809BD340 3C0F809C */  lui     $t7, %hi(func_809BD84C)    ## $t7 = 809C0000
/* 006E4 809BD344 A4C0019A */  sh      $zero, 0x019A($a2)         ## 0000019A
/* 006E8 809BD348 C424F534 */  lwc1    $f4, %lo(D_809BF534)($at)
/* 006EC 809BD34C 240E0079 */  addiu   $t6, $zero, 0x0079         ## $t6 = 00000079
/* 006F0 809BD350 25EFD84C */  addiu   $t7, $t7, %lo(func_809BD84C) ## $t7 = 809BD84C
/* 006F4 809BD354 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 006F8 809BD358 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 006FC 809BD35C E4C4000C */  swc1    $f4, 0x000C($a2)           ## 0000000C
/* 00700 809BD360 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00704 809BD364 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00708 809BD368 03E00008 */  jr      $ra
/* 0070C 809BD36C 00000000 */  nop


