glabel func_80AB627C
/* 00AFC 80AB627C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B00 80AB6280 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00B04 80AB6284 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B08 80AB6288 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00B0C 80AB628C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00B10 80AB6290 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00B14 80AB6294 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B18 80AB6298 248400E8 */  addiu   $a0, $a0, 0x00E8           ## $a0 = 060000E8
/* 00B1C 80AB629C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B20 80AB62A0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00B24 80AB62A4 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00B28 80AB62A8 468021A0 */  cvt.s.w $f6, $f4
/* 00B2C 80AB62AC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B30 80AB62B0 24A500E8 */  addiu   $a1, $a1, 0x00E8           ## $a1 = 060000E8
/* 00B34 80AB62B4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B38 80AB62B8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B3C 80AB62BC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B40 80AB62C0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00B44 80AB62C4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00B48 80AB62C8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B4C 80AB62CC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00B50 80AB62D0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00B54 80AB62D4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B58 80AB62D8 3C0F80AB */  lui     $t7, %hi(func_80AB6450)    ## $t7 = 80AB0000
/* 00B5C 80AB62DC 10410008 */  beq     $v0, $at, .L80AB6300
/* 00B60 80AB62E0 25EF6450 */  addiu   $t7, $t7, %lo(func_80AB6450) ## $t7 = 80AB6450
/* 00B64 80AB62E4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00B68 80AB62E8 10410007 */  beq     $v0, $at, .L80AB6308
/* 00B6C 80AB62EC 3C1880AB */  lui     $t8, %hi(func_80AB6324)    ## $t8 = 80AB0000
/* 00B70 80AB62F0 3C0E80AB */  lui     $t6, %hi(func_80AB6570)    ## $t6 = 80AB0000
/* 00B74 80AB62F4 25CE6570 */  addiu   $t6, $t6, %lo(func_80AB6570) ## $t6 = 80AB6570
/* 00B78 80AB62F8 10000005 */  beq     $zero, $zero, .L80AB6310
/* 00B7C 80AB62FC AE0E0250 */  sw      $t6, 0x0250($s0)           ## 00000250
.L80AB6300:
/* 00B80 80AB6300 10000003 */  beq     $zero, $zero, .L80AB6310
/* 00B84 80AB6304 AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
.L80AB6308:
/* 00B88 80AB6308 27186324 */  addiu   $t8, $t8, %lo(func_80AB6324) ## $t8 = 80AB6324
/* 00B8C 80AB630C AE180250 */  sw      $t8, 0x0250($s0)           ## 00000250
.L80AB6310:
/* 00B90 80AB6310 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B94 80AB6314 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B98 80AB6318 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B9C 80AB631C 03E00008 */  jr      $ra
/* 00BA0 80AB6320 00000000 */  nop
