glabel func_809F29E0
/* 00F00 809F29E0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00F04 809F29E4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00F08 809F29E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F0C 809F29EC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00F10 809F29F0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00F14 809F29F4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00F18 809F29F8 0C028800 */  jal     SkelAnime_GetLastFrame

/* 00F1C 809F29FC 248437C0 */  addiu   $a0, $a0, 0x37C0           ## $a0 = 060037C0
/* 00F20 809F2A00 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F24 809F2A04 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00F28 809F2A08 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00F2C 809F2A0C 468021A0 */  cvt.s.w $f6, $f4
/* 00F30 809F2A10 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F34 809F2A14 24A537C0 */  addiu   $a1, $a1, 0x37C0           ## $a1 = 060037C0
/* 00F38 809F2A18 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00F3C 809F2A1C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00F40 809F2A20 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00F44 809F2A24 4600320D */  trunc.w.s $f8, $f6
/* 00F48 809F2A28 440F4000 */  mfc1    $t7, $f8
/* 00F4C 809F2A2C 00000000 */  nop
/* 00F50 809F2A30 A60F0248 */  sh      $t7, 0x0248($s0)           ## 00000248
/* 00F54 809F2A34 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 00F58 809F2A38 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00F5C 809F2A3C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00F60 809F2A40 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00F64 809F2A44 00000000 */  nop
/* 00F68 809F2A48 46805420 */  cvt.s.w $f16, $f10
/* 00F6C 809F2A4C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00F70 809F2A50 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00F74 809F2A54 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00F78 809F2A58 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00F7C 809F2A5C A619024A */  sh      $t9, 0x024A($s0)           ## 0000024A
/* 00F80 809F2A60 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00F84 809F2A64 8608024A */  lh      $t0, 0x024A($s0)           ## 0000024A
/* 00F88 809F2A68 3C09809F */  lui     $t1, %hi(func_809F2A90)    ## $t1 = 809F0000
/* 00F8C 809F2A6C 25292A90 */  addiu   $t1, $t1, %lo(func_809F2A90) ## $t1 = 809F2A90
/* 00F90 809F2A70 AE09022C */  sw      $t1, 0x022C($s0)           ## 0000022C
/* 00F94 809F2A74 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00F98 809F2A78 A208023C */  sb      $t0, 0x023C($s0)           ## 0000023C
/* 00F9C 809F2A7C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00FA0 809F2A80 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00FA4 809F2A84 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00FA8 809F2A88 03E00008 */  jr      $ra
/* 00FAC 809F2A8C 00000000 */  nop
