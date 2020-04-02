glabel func_80AD2FBC
/* 0030C 80AD2FBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00310 80AD2FC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00314 80AD2FC4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00318 80AD2FC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0031C 80AD2FCC 24A50924 */  addiu   $a1, $a1, 0x0924           ## $a1 = 06000924
/* 00320 80AD2FD0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00324 80AD2FD4 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 00328 80AD2FD8 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 0032C 80AD2FDC 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 00330 80AD2FE0 3C0E80AD */  lui     $t6, %hi(func_80AD3194)    ## $t6 = 80AD0000
/* 00334 80AD2FE4 25CE3194 */  addiu   $t6, $t6, %lo(func_80AD3194) ## $t6 = 80AD3194
/* 00338 80AD2FE8 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 0033C 80AD2FEC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00340 80AD2FF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00344 80AD2FF4 03E00008 */  jr      $ra
/* 00348 80AD2FF8 00000000 */  nop


