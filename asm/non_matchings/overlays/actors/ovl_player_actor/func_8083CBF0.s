glabel func_8083CBF0
/* 0A9E0 8083CBF0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0A9E4 8083CBF4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0A9E8 8083CBF8 AFA60030 */  sw      $a2, 0x0030($sp)
/* 0A9EC 8083CBFC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0A9F0 8083CC00 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0A9F4 8083CC04 AFA5002C */  sw      $a1, 0x002C($sp)
/* 0A9F8 8083CC08 3C068084 */  lui     $a2, %hi(func_808423EC)    ## $a2 = 80840000
/* 0A9FC 8083CC0C 24C623EC */  addiu   $a2, $a2, %lo(func_808423EC) ## $a2 = 808423EC
/* 0AA00 8083CC10 8FA50028 */  lw      $a1, 0x0028($sp)
/* 0AA04 8083CC14 0C20D716 */  jal     func_80835C58
/* 0AA08 8083CC18 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0AA0C 8083CC1C 3C040400 */  lui     $a0, 0x0400                ## $a0 = 04000000
/* 0AA10 8083CC20 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0AA14 8083CC24 248424F8 */  addiu   $a0, $a0, 0x24F8           ## $a0 = 040024F8
/* 0AA18 8083CC28 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 0AA1C 8083CC2C 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 0AA20 8083CC30 44815000 */  mtc1    $at, $f10                  ## $f10 = -6.00
/* 0AA24 8083CC34 46803220 */  cvt.s.w $f8, $f6
/* 0AA28 8083CC38 8FA50028 */  lw      $a1, 0x0028($sp)
/* 0AA2C 8083CC3C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0AA30 8083CC40 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0AA34 8083CC44 3C07400C */  lui     $a3, 0x400C                ## $a3 = 400C0000
/* 0AA38 8083CC48 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0AA3C 8083CC4C AFAE0018 */  sw      $t6, 0x0018($sp)
/* 0AA40 8083CC50 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 400CCCCD
/* 0AA44 8083CC54 24C624F8 */  addiu   $a2, $a2, 0x24F8           ## $a2 = 040024F8
/* 0AA48 8083CC58 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 0AA4C 8083CC5C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 0AA50 8083CC60 E7AA001C */  swc1    $f10, 0x001C($sp)
/* 0AA54 8083CC64 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 0AA58 8083CC68 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 0AA5C 8083CC6C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 0AA60 8083CC70 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0AA64 8083CC74 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 0AA68 8083CC78 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 0AA6C 8083CC7C E5F00838 */  swc1    $f16, 0x0838($t7)          ## 00000838
/* 0AA70 8083CC80 8FB90028 */  lw      $t9, 0x0028($sp)
/* 0AA74 8083CC84 87B8002E */  lh      $t8, 0x002E($sp)
/* 0AA78 8083CC88 A738083C */  sh      $t8, 0x083C($t9)           ## 0000083C
/* 0AA7C 8083CC8C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0AA80 8083CC90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0AA84 8083CC94 03E00008 */  jr      $ra
/* 0AA88 8083CC98 00000000 */  nop


