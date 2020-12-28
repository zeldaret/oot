glabel func_808D39A8
/* 01338 808D39A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0133C 808D39AC AFA5001C */  sw      $a1, 0x001C($sp)
/* 01340 808D39B0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01344 808D39B4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 01348 808D39B8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0134C 808D39BC 24A5B7A4 */  addiu   $a1, $a1, 0xB7A4           ## $a1 = 0600B7A4
/* 01350 808D39C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01354 808D39C4 0C029490 */  jal     Animation_MorphToPlayOnce
/* 01358 808D39C8 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 0135C 808D39CC 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 01360 808D39D0 3C0E808D */  lui     $t6, %hi(func_808D3A08)    ## $t6 = 808D0000
/* 01364 808D39D4 25CE3A08 */  addiu   $t6, $t6, %lo(func_808D3A08) ## $t6 = 808D3A08
/* 01368 808D39D8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0136C 808D39DC 2484B7A4 */  addiu   $a0, $a0, 0xB7A4           ## $a0 = 0600B7A4
/* 01370 808D39E0 0C028800 */  jal     Animation_GetLastFrame

/* 01374 808D39E4 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 01378 808D39E8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0137C 808D39EC 8FB80018 */  lw      $t8, 0x0018($sp)
/* 01380 808D39F0 468021A0 */  cvt.s.w $f6, $f4
/* 01384 808D39F4 E70601F0 */  swc1    $f6, 0x01F0($t8)           ## 000001F0
/* 01388 808D39F8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0138C 808D39FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01390 808D3A00 03E00008 */  jr      $ra
/* 01394 808D3A04 00000000 */  nop
