glabel func_80AFAA20
/* 00300 80AFAA20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00304 80AFAA24 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00308 80AFAA28 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0030C 80AFAA2C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00310 80AFAA30 24A50764 */  addiu   $a1, $a1, 0x0764           ## $a1 = 06000764
/* 00314 80AFAA34 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00318 80AFAA38 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0031C 80AFAA3C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00320 80AFAA40 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00324 80AFAA44 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00328 80AFAA48 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0032C 80AFAA4C 24053880 */  addiu   $a1, $zero, 0x3880         ## $a1 = 00003880
/* 00330 80AFAA50 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00334 80AFAA54 3C1880B0 */  lui     $t8, %hi(func_80AFB028)    ## $t8 = 80B00000
/* 00338 80AFAA58 2718B028 */  addiu   $t8, $t8, %lo(func_80AFB028) ## $t8 = 80AFB028
/* 0033C 80AFAA5C 90EE0281 */  lbu     $t6, 0x0281($a3)           ## 00000281
/* 00340 80AFAA60 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 00344 80AFAA64 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 00348 80AFAA68 A0EF0281 */  sb      $t7, 0x0281($a3)           ## 00000281
/* 0034C 80AFAA6C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00350 80AFAA70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00354 80AFAA74 03E00008 */  jr      $ra
/* 00358 80AFAA78 00000000 */  nop


