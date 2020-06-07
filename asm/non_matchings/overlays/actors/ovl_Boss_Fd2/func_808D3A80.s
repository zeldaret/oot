glabel func_808D3A80
/* 01410 808D3A80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01414 808D3A84 AFA5001C */  sw      $a1, 0x001C($sp)
/* 01418 808D3A88 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0141C 808D3A8C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01420 808D3A90 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01424 808D3A94 24A5A31C */  addiu   $a1, $a1, 0xA31C           ## $a1 = 0600A31C
/* 01428 808D3A98 AFA60018 */  sw      $a2, 0x0018($sp)
/* 0142C 808D3A9C 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 01430 808D3AA0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01434 808D3AA4 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01438 808D3AA8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0143C 808D3AAC 2484A31C */  addiu   $a0, $a0, 0xA31C           ## $a0 = 0600A31C
/* 01440 808D3AB0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01444 808D3AB4 8FA60018 */  lw      $a2, 0x0018($sp)
/* 01448 808D3AB8 3C0E808D */  lui     $t6, %hi(func_808D3AE0)    ## $t6 = 808D0000
/* 0144C 808D3ABC 468021A0 */  cvt.s.w $f6, $f4
/* 01450 808D3AC0 25CE3AE0 */  addiu   $t6, $t6, %lo(func_808D3AE0) ## $t6 = 808D3AE0
/* 01454 808D3AC4 ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 01458 808D3AC8 A4C00198 */  sh      $zero, 0x0198($a2)         ## 00000198
/* 0145C 808D3ACC E4C601F0 */  swc1    $f6, 0x01F0($a2)           ## 000001F0
/* 01460 808D3AD0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01464 808D3AD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01468 808D3AD8 03E00008 */  jr      $ra
/* 0146C 808D3ADC 00000000 */  nop
