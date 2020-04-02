glabel func_80832284
/* 00074 80832284 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00078 80832288 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0007C 8083228C 0C029050 */  jal     SkelAnime_ChangeLinkAnimDefaultRepeat
/* 00080 80832290 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00084 80832294 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00088 80832298 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0008C 8083229C 03E00008 */  jr      $ra
/* 00090 808322A0 00000000 */  nop


