glabel func_80850F1C
/* 1ED0C 80850F1C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1ED10 80850F20 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1ED14 80850F24 AFA40028 */  sw      $a0, 0x0028($sp)
/* 1ED18 80850F28 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1ED1C 80850F2C AFA60030 */  sw      $a2, 0x0030($sp)
/* 1ED20 80850F30 0C20CB6C */  jal     func_80832DB0
/* 1ED24 80850F34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1ED28 80850F38 0C028800 */  jal     SkelAnime_GetFrameCount

/* 1ED2C 80850F3C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1ED30 80850F40 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 1ED34 80850F44 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 1ED38 80850F48 44815000 */  mtc1    $at, $f10                  ## $f10 = -8.00
/* 1ED3C 80850F4C 46803220 */  cvt.s.w $f8, $f6
/* 1ED40 80850F50 8FA5002C */  lw      $a1, 0x002C($sp)
/* 1ED44 80850F54 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 1ED48 80850F58 3C073F2A */  lui     $a3, 0x3F2A                ## $a3 = 3F2A0000
/* 1ED4C 80850F5C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 1ED50 80850F60 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 1ED54 80850F64 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3F2AAAAB
/* 1ED58 80850F68 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 1ED5C 80850F6C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1ED60 80850F70 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1ED64 80850F74 E7AA001C */  swc1    $f10, 0x001C($sp)
/* 1ED68 80850F78 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1ED6C 80850F7C 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 1ED70 80850F80 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1ED74 80850F84 0C20C884 */  jal     func_80832210
/* 1ED78 80850F88 8FA4002C */  lw      $a0, 0x002C($sp)
/* 1ED7C 80850F8C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1ED80 80850F90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1ED84 80850F94 03E00008 */  jr      $ra
/* 1ED88 80850F98 00000000 */  nop


