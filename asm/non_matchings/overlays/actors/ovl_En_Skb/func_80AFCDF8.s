glabel func_80AFCDF8
/* 00458 80AFCDF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0045C 80AFCDFC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00460 80AFCE00 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00464 80AFCE04 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00468 80AFCE08 24A51854 */  addiu   $a1, $a1, 0x1854           ## $a1 = 06001854
/* 0046C 80AFCE0C AFA70018 */  sw      $a3, 0x0018($sp)
/* 00470 80AFCE10 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00474 80AFCE14 0C0294A7 */  jal     SkelAnime_ChangeAnimPlaybackStop
/* 00478 80AFCE18 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0047C 80AFCE1C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00480 80AFCE20 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00484 80AFCE24 24053986 */  addiu   $a1, $zero, 0x3986         ## $a1 = 00003986
/* 00488 80AFCE28 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0048C 80AFCE2C A0800280 */  sb      $zero, 0x0280($a0)         ## 00000280
/* 00490 80AFCE30 01C17824 */  and     $t7, $t6, $at
/* 00494 80AFCE34 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00498 80AFCE38 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 0049C 80AFCE3C 3C0580B0 */  lui     $a1, %hi(func_80AFCE5C)    ## $a1 = 80B00000
/* 004A0 80AFCE40 8FA40018 */  lw      $a0, 0x0018($sp)
/* 004A4 80AFCE44 0C2BF268 */  jal     func_80AFC9A0
/* 004A8 80AFCE48 24A5CE5C */  addiu   $a1, $a1, %lo(func_80AFCE5C) ## $a1 = 80AFCE5C
/* 004AC 80AFCE4C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 004B0 80AFCE50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004B4 80AFCE54 03E00008 */  jr      $ra
/* 004B8 80AFCE58 00000000 */  nop
