glabel func_80AD02E4
/* 00E44 80AD02E4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00E48 80AD02E8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00E4C 80AD02EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E50 80AD02F0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00E54 80AD02F4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00E58 80AD02F8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00E5C 80AD02FC 248409C4 */  addiu   $a0, $a0, 0x09C4           ## $a0 = 060009C4
/* 00E60 80AD0300 8E0E02B0 */  lw      $t6, 0x02B0($s0)           ## 000002B0
/* 00E64 80AD0304 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00E68 80AD0308 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00E6C 80AD030C 11C1000E */  beq     $t6, $at, .L80AD0348
/* 00E70 80AD0310 46802020 */  cvt.s.w $f0, $f4
/* 00E74 80AD0314 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00E78 80AD0318 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E7C 80AD031C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00E80 80AD0320 44061000 */  mfc1    $a2, $f2
/* 00E84 80AD0324 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00E88 80AD0328 24A509C4 */  addiu   $a1, $a1, 0x09C4           ## $a1 = 060009C4
/* 00E8C 80AD032C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E90 80AD0330 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00E94 80AD0334 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00E98 80AD0338 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 00E9C 80AD033C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00EA0 80AD0340 E7A20018 */  swc1    $f2, 0x0018($sp)
/* 00EA4 80AD0344 C7A00034 */  lwc1    $f0, 0x0034($sp)
.L80AD0348:
/* 00EA8 80AD0348 4600018D */  trunc.w.s $f6, $f0
/* 00EAC 80AD034C 24180009 */  addiu   $t8, $zero, 0x0009         ## $t8 = 00000009
/* 00EB0 80AD0350 AE1802B0 */  sw      $t8, 0x02B0($s0)           ## 000002B0
/* 00EB4 80AD0354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EB8 80AD0358 44083000 */  mfc1    $t0, $f6
/* 00EBC 80AD035C 24053954 */  addiu   $a1, $zero, 0x3954         ## $a1 = 00003954
/* 00EC0 80AD0360 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00EC4 80AD0364 A60802FC */  sh      $t0, 0x02FC($s0)           ## 000002FC
/* 00EC8 80AD0368 3C0580AD */  lui     $a1, %hi(func_80AD038C)    ## $a1 = 80AD0000
/* 00ECC 80AD036C 24A5038C */  addiu   $a1, $a1, %lo(func_80AD038C) ## $a1 = 80AD038C
/* 00ED0 80AD0370 0C2B3D28 */  jal     func_80ACF4A0
/* 00ED4 80AD0374 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ED8 80AD0378 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00EDC 80AD037C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00EE0 80AD0380 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00EE4 80AD0384 03E00008 */  jr      $ra
/* 00EE8 80AD0388 00000000 */  nop


