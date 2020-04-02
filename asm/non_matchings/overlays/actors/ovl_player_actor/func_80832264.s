glabel func_80832264
/* 00054 80832264 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00058 80832268 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0005C 8083226C 0C02901F */  jal     SkelAnime_ChangeLinkAnimDefaultStop
/* 00060 80832270 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00064 80832274 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00068 80832278 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0006C 8083227C 03E00008 */  jr      $ra
/* 00070 80832280 00000000 */  nop


