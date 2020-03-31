glabel func_808322A4
/* 00094 808322A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00098 808322A8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0009C 808322AC AFA5001C */  sw      $a1, 0x001C($sp)
/* 000A0 808322B0 3C073F2A */  lui     $a3, 0x3F2A                ## $a3 = 3F2A0000
/* 000A4 808322B4 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3F2AAAAB
/* 000A8 808322B8 0C029067 */  jal     SkelAnime_LinkChangeAnimationPlaybackRepeat
/* 000AC 808322BC 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 000B0 808322C0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 000B4 808322C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B8 808322C8 03E00008 */  jr      $ra
/* 000BC 808322CC 00000000 */  nop


