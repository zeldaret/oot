glabel func_80ACFD20
/* 00880 80ACFD20 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00884 80ACFD24 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00888 80ACFD28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0088C 80ACFD2C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00890 80ACFD30 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00894 80ACFD34 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00898 80ACFD38 248409C4 */  addiu   $a0, $a0, 0x09C4           ## $a0 = 060009C4
/* 0089C 80ACFD3C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008A0 80ACFD40 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008A4 80ACFD44 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008A8 80ACFD48 468021A0 */  cvt.s.w $f6, $f4
/* 008AC 80ACFD4C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 008B0 80ACFD50 44060000 */  mfc1    $a2, $f0
/* 008B4 80ACFD54 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 008B8 80ACFD58 24A509C4 */  addiu   $a1, $a1, 0x09C4           ## $a1 = 060009C4
/* 008BC 80ACFD5C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008C0 80ACFD60 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 008C4 80ACFD64 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 008C8 80ACFD68 0C029468 */  jal     SkelAnime_ChangeAnim

/* 008CC 80ACFD6C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 008D0 80ACFD70 240F0190 */  addiu   $t7, $zero, 0x0190         ## $t7 = 00000190
/* 008D4 80ACFD74 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 008D8 80ACFD78 3C0580AD */  lui     $a1, %hi(func_80ACFDAC)    ## $a1 = 80AD0000
/* 008DC 80ACFD7C A60F02F8 */  sh      $t7, 0x02F8($s0)           ## 000002F8
/* 008E0 80ACFD80 AE0002D4 */  sw      $zero, 0x02D4($s0)         ## 000002D4
/* 008E4 80ACFD84 A60002FA */  sh      $zero, 0x02FA($s0)         ## 000002FA
/* 008E8 80ACFD88 AE1802B0 */  sw      $t8, 0x02B0($s0)           ## 000002B0
/* 008EC 80ACFD8C 24A5FDAC */  addiu   $a1, $a1, %lo(func_80ACFDAC) ## $a1 = 80ACFDAC
/* 008F0 80ACFD90 0C2B3D28 */  jal     func_80ACF4A0
/* 008F4 80ACFD94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F8 80ACFD98 8FBF002C */  lw      $ra, 0x002C($sp)
/* 008FC 80ACFD9C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00900 80ACFDA0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00904 80ACFDA4 03E00008 */  jr      $ra
/* 00908 80ACFDA8 00000000 */  nop
