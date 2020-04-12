glabel func_809E9868
/* 00308 809E9868 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0030C 809E986C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00310 809E9870 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00314 809E9874 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00318 809E9878 24A504D8 */  addiu   $a1, $a1, 0x04D8           ## $a1 = 060004D8
/* 0031C 809E987C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00320 809E9880 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00324 809E9884 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00328 809E9888 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0032C 809E988C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00330 809E9890 2405387D */  addiu   $a1, $zero, 0x387D         ## $a1 = 0000387D
/* 00334 809E9894 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 00338 809E9898 3C0E809F */  lui     $t6, %hi(func_809EA0C4)    ## $t6 = 809F0000
/* 0033C 809E989C 25CEA0C4 */  addiu   $t6, $t6, %lo(func_809EA0C4) ## $t6 = 809EA0C4
/* 00340 809E98A0 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00344 809E98A4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00348 809E98A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0034C 809E98AC 03E00008 */  jr      $ra
/* 00350 809E98B0 00000000 */  nop
