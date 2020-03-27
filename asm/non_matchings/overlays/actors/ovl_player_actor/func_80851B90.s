glabel func_80851B90
/* 1F980 80851B90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1F984 80851B94 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 1F988 80851B98 44810000 */  mtc1    $at, $f0                   ## $f0 = 12.00
/* 1F98C 80851B9C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 1F990 80851BA0 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1F994 80851BA4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1F998 80851BA8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1F99C 80851BAC 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1F9A0 80851BB0 3C07BF2A */  lui     $a3, 0xBF2A                ## $a3 = BF2A0000
/* 1F9A4 80851BB4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 1F9A8 80851BB8 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 1F9AC 80851BBC 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = BF2AAAAB
/* 1F9B0 80851BC0 24C62860 */  addiu   $a2, $a2, 0x2860           ## $a2 = 04002860
/* 1F9B4 80851BC4 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1F9B8 80851BC8 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 1F9BC 80851BCC E7A00014 */  swc1    $f0, 0x0014($sp)
/* 1F9C0 80851BD0 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 1F9C4 80851BD4 E7A4001C */  swc1    $f4, 0x001C($sp)
/* 1F9C8 80851BD8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1F9CC 80851BDC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1F9D0 80851BE0 03E00008 */  jr      $ra
/* 1F9D4 80851BE4 00000000 */  nop


