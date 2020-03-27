glabel func_80832B78
/* 00968 80832B78 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0096C 80832B7C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00970 80832B80 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00974 80832B84 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00978 80832B88 AFA60030 */  sw      $a2, 0x0030($sp)
/* 0097C 80832B8C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00980 80832B90 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00984 80832B94 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00988 80832B98 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 0098C 80832B9C 44815000 */  mtc1    $at, $f10                  ## $f10 = -6.00
/* 00990 80832BA0 46803220 */  cvt.s.w $f8, $f6
/* 00994 80832BA4 8FA5002C */  lw      $a1, 0x002C($sp)
/* 00998 80832BA8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0099C 80832BAC 3C073F2A */  lui     $a3, 0x3F2A                ## $a3 = 3F2A0000
/* 009A0 80832BB0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 009A4 80832BB4 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 009A8 80832BB8 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3F2AAAAB
/* 009AC 80832BBC E7A80014 */  swc1    $f8, 0x0014($sp)
/* 009B0 80832BC0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 009B4 80832BC4 8FA60030 */  lw      $a2, 0x0030($sp)
/* 009B8 80832BC8 E7AA001C */  swc1    $f10, 0x001C($sp)
/* 009BC 80832BCC 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 009C0 80832BD0 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 009C4 80832BD4 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 009C8 80832BD8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 009CC 80832BDC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009D0 80832BE0 03E00008 */  jr      $ra
/* 009D4 80832BE4 00000000 */  nop


