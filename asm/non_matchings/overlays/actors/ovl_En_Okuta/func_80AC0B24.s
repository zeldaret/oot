glabel func_80AC0B24
/* 004C4 80AC0B24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004C8 80AC0B28 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 004CC 80AC0B2C AFA40018 */  sw      $a0, 0x0018($sp)
/* 004D0 80AC0B30 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004D4 80AC0B34 24A50AC0 */  addiu   $a1, $a1, 0x0AC0           ## $a1 = 06000AC0
/* 004D8 80AC0B38 0C02947A */  jal     SkelAnime_ChangeAnimationDefaultStop
/* 004DC 80AC0B3C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004E0 80AC0B40 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 004E4 80AC0B44 3C0E80AC */  lui     $t6, %hi(func_80AC10A8)    ## $t6 = 80AC0000
/* 004E8 80AC0B48 25CE10A8 */  addiu   $t6, $t6, %lo(func_80AC10A8) ## $t6 = 80AC10A8
/* 004EC 80AC0B4C ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 004F0 80AC0B50 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 004F4 80AC0B54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004F8 80AC0B58 03E00008 */  jr      $ra
/* 004FC 80AC0B5C 00000000 */  nop


