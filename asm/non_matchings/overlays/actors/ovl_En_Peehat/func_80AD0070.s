glabel func_80AD0070
/* 00BD0 80AD0070 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00BD4 80AD0074 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00BD8 80AD0078 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BDC 80AD007C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00BE0 80AD0080 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00BE4 80AD0084 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00BE8 80AD0088 248409C4 */  addiu   $a0, $a0, 0x09C4           ## $a0 = 060009C4
/* 00BEC 80AD008C 8E0E02B0 */  lw      $t6, 0x02B0($s0)           ## 000002B0
/* 00BF0 80AD0090 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00BF4 80AD0094 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00BF8 80AD0098 11C1000E */  beq     $t6, $at, .L80AD00D4
/* 00BFC 80AD009C 46802020 */  cvt.s.w $f0, $f4
/* 00C00 80AD00A0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00C04 80AD00A4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C08 80AD00A8 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00C0C 80AD00AC 44061000 */  mfc1    $a2, $f2
/* 00C10 80AD00B0 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00C14 80AD00B4 24A509C4 */  addiu   $a1, $a1, 0x09C4           ## $a1 = 060009C4
/* 00C18 80AD00B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00C1C 80AD00BC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00C20 80AD00C0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00C24 80AD00C4 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 00C28 80AD00C8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00C2C 80AD00CC E7A20018 */  swc1    $f2, 0x0018($sp)
/* 00C30 80AD00D0 C7A00034 */  lwc1    $f0, 0x0034($sp)
.L80AD00D4:
/* 00C34 80AD00D4 4600018D */  trunc.w.s $f6, $f0
/* 00C38 80AD00D8 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00C3C 80AD00DC AE1802B0 */  sw      $t8, 0x02B0($s0)           ## 000002B0
/* 00C40 80AD00E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C44 80AD00E4 44083000 */  mfc1    $t0, $f6
/* 00C48 80AD00E8 24053954 */  addiu   $a1, $zero, 0x3954         ## $a1 = 00003954
/* 00C4C 80AD00EC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00C50 80AD00F0 A60802FC */  sh      $t0, 0x02FC($s0)           ## 000002FC
/* 00C54 80AD00F4 3C0580AD */  lui     $a1, %hi(func_80AD0118)    ## $a1 = 80AD0000
/* 00C58 80AD00F8 24A50118 */  addiu   $a1, $a1, %lo(func_80AD0118) ## $a1 = 80AD0118
/* 00C5C 80AD00FC 0C2B3D28 */  jal     func_80ACF4A0
/* 00C60 80AD0100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C64 80AD0104 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00C68 80AD0108 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00C6C 80AD010C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00C70 80AD0110 03E00008 */  jr      $ra
/* 00C74 80AD0114 00000000 */  nop


