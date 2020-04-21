glabel func_80832BE8
/* 009D8 80832BE8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009DC 80832BEC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009E0 80832BF0 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 009E4 80832BF4 44812000 */  mtc1    $at, $f4                   ## $f4 = -6.00
/* 009E8 80832BF8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 009EC 80832BFC AFA5002C */  sw      $a1, 0x002C($sp)
/* 009F0 80832C00 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 009F4 80832C04 AFA00018 */  sw      $zero, 0x0018($sp)
/* 009F8 80832C08 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 009FC 80832C0C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00A00 80832C10 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 00A04 80832C14 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 00A08 80832C18 E7A4001C */  swc1    $f4, 0x001C($sp)
/* 00A0C 80832C1C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00A10 80832C20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A14 80832C24 03E00008 */  jr      $ra
/* 00A18 80832C28 00000000 */  nop
