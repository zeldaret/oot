glabel func_8083328C
/* 0107C 8083328C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01080 80833290 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01084 80833294 AFA5001C */  sw      $a1, 0x001C($sp)
/* 01088 80833298 3C078085 */  lui     $a3, %hi(D_808535E8)       ## $a3 = 80850000
/* 0108C 8083329C 8CE735E8 */  lw      $a3, %lo(D_808535E8)($a3)
/* 01090 808332A0 0C029037 */  jal     SkelAnime_LinkChangeAnimationPlaybackStop
/* 01094 808332A4 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 01098 808332A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0109C 808332AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010A0 808332B0 03E00008 */  jr      $ra
/* 010A4 808332B4 00000000 */  nop


