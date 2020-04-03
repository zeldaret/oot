glabel func_808322D0
/* 000C0 808322D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C4 808322D4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 000C8 808322D8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 000CC 808322DC 3C073F2A */  lui     $a3, 0x3F2A                ## $a3 = 3F2A0000
/* 000D0 808322E0 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3F2AAAAB
/* 000D4 808322E4 0C029037 */  jal     SkelAnime_ChangeLinkAnimPlaybackStop
/* 000D8 808322E8 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 000DC 808322EC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 000E0 808322F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E4 808322F4 03E00008 */  jr      $ra
/* 000E8 808322F8 00000000 */  nop


