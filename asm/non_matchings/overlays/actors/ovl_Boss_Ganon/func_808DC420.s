glabel func_808DC420
/* 05BB0 808DC420 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05BB4 808DC424 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05BB8 808DC428 AFB00018 */  sw      $s0, 0x0018($sp)
/* 05BBC 808DC42C 8C8E0194 */  lw      $t6, 0x0194($a0)           ## 00000194
/* 05BC0 808DC430 3C02808E */  lui     $v0, %hi(func_808DC4DC)    ## $v0 = 808E0000
/* 05BC4 808DC434 2442C4DC */  addiu   $v0, $v0, %lo(func_808DC4DC) ## $v0 = 808DC4DC
/* 05BC8 808DC438 144E0003 */  bne     $v0, $t6, .L808DC448
/* 05BCC 808DC43C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05BD0 808DC440 848F01C2 */  lh      $t7, 0x01C2($a0)           ## 000001C2
/* 05BD4 808DC444 11E00011 */  beq     $t7, $zero, .L808DC48C
.L808DC448:
/* 05BD8 808DC448 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05BDC 808DC44C 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 05BE0 808DC450 0C235C4B */  jal     func_808D712C
/* 05BE4 808DC454 AFA20024 */  sw      $v0, 0x0024($sp)
/* 05BE8 808DC458 3C040601 */  lui     $a0, %hi(D_06009D5C)                ## $a0 = 06010000
/* 05BEC 808DC45C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05BF0 808DC460 24849D5C */  addiu   $a0, $a0, %lo(D_06009D5C)           ## $a0 = 06009D5C
/* 05BF4 808DC464 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 05BF8 808DC468 3C050601 */  lui     $a1, %hi(D_06009D5C)                ## $a1 = 06010000
/* 05BFC 808DC46C 24A59D5C */  addiu   $a1, $a1, %lo(D_06009D5C)           ## $a1 = 06009D5C
/* 05C00 808DC470 468021A0 */  cvt.s.w $f6, $f4
/* 05C04 808DC474 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 05C08 808DC478 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 05C0C 808DC47C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 05C10 808DC480 E60601CC */  swc1    $f6, 0x01CC($s0)           ## 000001CC
/* 05C14 808DC484 8FB80024 */  lw      $t8, 0x0024($sp)
/* 05C18 808DC488 AE180194 */  sw      $t8, 0x0194($s0)           ## 00000194
.L808DC48C:
/* 05C1C 808DC48C 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 05C20 808DC490 A61901B6 */  sh      $t9, 0x01B6($s0)           ## 000001B6
/* 05C24 808DC494 860801B6 */  lh      $t0, 0x01B6($s0)           ## 000001B6
/* 05C28 808DC498 A60001C2 */  sh      $zero, 0x01C2($s0)         ## 000001C2
/* 05C2C 808DC49C 3C098090 */  lui     $t1, %hi(D_808F93C0)       ## $t1 = 80900000
/* 05C30 808DC4A0 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 05C34 808DC4A4 8D2993C0 */  lw      $t1, %lo(D_808F93C0)($t1)
/* 05C38 808DC4A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C3C 808DC4AC 468042A0 */  cvt.s.w $f10, $f8
/* 05C40 808DC4B0 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 05C44 808DC4B4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 05C48 808DC4B8 E52A16C0 */  swc1    $f10, 0x16C0($t1)          ## 809016C0
/* 05C4C 808DC4BC 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 05C50 808DC4C0 00000000 */  nop
/* 05C54 808DC4C4 E6100254 */  swc1    $f16, 0x0254($s0)          ## 00000254
/* 05C58 808DC4C8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05C5C 808DC4CC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 05C60 808DC4D0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05C64 808DC4D4 03E00008 */  jr      $ra
/* 05C68 808DC4D8 00000000 */  nop
