glabel func_80A3EDE0
/* 00870 80A3EDE0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00874 80A3EDE4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00878 80A3EDE8 AFA40038 */  sw      $a0, 0x0038($sp)
/* 0087C 80A3EDEC 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00880 80A3EDF0 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 00884 80A3EDF4 0005C900 */  sll     $t9, $a1,  4
/* 00888 80A3EDF8 31F800F0 */  andi    $t8, $t7, 0x00F0           ## $t8 = 00000000
/* 0088C 80A3EDFC 17010005 */  bne     $t8, $at, .L80A3EE14
/* 00890 80A3EE00 3C0880A4 */  lui     $t0, %hi(D_80A41B38)       ## $t0 = 80A40000
/* 00894 80A3EE04 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00898 80A3EE08 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.50
/* 0089C 80A3EE0C 10000004 */  beq     $zero, $zero, .L80A3EE20
/* 008A0 80A3EE10 00000000 */  nop
.L80A3EE14:
/* 008A4 80A3EE14 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 008A8 80A3EE18 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 008AC 80A3EE1C 00000000 */  nop
.L80A3EE20:
/* 008B0 80A3EE20 25081B38 */  addiu   $t0, $t0, %lo(D_80A41B38)  ## $t0 = 80A41B38
/* 008B4 80A3EE24 03281821 */  addu    $v1, $t9, $t0
/* 008B8 80A3EE28 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 008BC 80A3EE2C AFA3002C */  sw      $v1, 0x002C($sp)
/* 008C0 80A3EE30 0C028800 */  jal     SkelAnime_GetFrameCount

/* 008C4 80A3EE34 E7A00030 */  swc1    $f0, 0x0030($sp)
/* 008C8 80A3EE38 8FA3002C */  lw      $v1, 0x002C($sp)
/* 008CC 80A3EE3C C7A00030 */  lwc1    $f0, 0x0030($sp)
/* 008D0 80A3EE40 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 008D4 80A3EE44 C4640004 */  lwc1    $f4, 0x0004($v1)           ## 00000004
/* 008D8 80A3EE48 8FA40038 */  lw      $a0, 0x0038($sp)
/* 008DC 80A3EE4C 468042A0 */  cvt.s.w $f10, $f8
/* 008E0 80A3EE50 46040182 */  mul.s   $f6, $f0, $f4
/* 008E4 80A3EE54 90690008 */  lbu     $t1, 0x0008($v1)           ## 00000008
/* 008E8 80A3EE58 C470000C */  lwc1    $f16, 0x000C($v1)          ## 0000000C
/* 008EC 80A3EE5C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 008F0 80A3EE60 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 008F4 80A3EE64 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 008F8 80A3EE68 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008FC 80A3EE6C 44063000 */  mfc1    $a2, $f6
/* 00900 80A3EE70 AFA90014 */  sw      $t1, 0x0014($sp)
/* 00904 80A3EE74 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00908 80A3EE78 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 0090C 80A3EE7C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00910 80A3EE80 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00914 80A3EE84 03E00008 */  jr      $ra
/* 00918 80A3EE88 00000000 */  nop


