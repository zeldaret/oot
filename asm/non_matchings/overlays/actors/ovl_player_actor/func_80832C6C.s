glabel func_80832C6C
/* 00A5C 80832C6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A60 80832C70 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A64 80832C74 3C01C180 */  lui     $at, 0xC180                ## $at = C1800000
/* 00A68 80832C78 44812000 */  mtc1    $at, $f4                   ## $f4 = -16.00
/* 00A6C 80832C7C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00A70 80832C80 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00A74 80832C84 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00A78 80832C88 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00A7C 80832C8C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00A80 80832C90 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00A84 80832C94 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 00A88 80832C98 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 00A8C 80832C9C E7A4001C */  swc1    $f4, 0x001C($sp)
/* 00A90 80832CA0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00A94 80832CA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A98 80832CA8 03E00008 */  jr      $ra
/* 00A9C 80832CAC 00000000 */  nop
