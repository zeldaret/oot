glabel func_80AAEE50
/* 00000 80AAEE50 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80AAEE54 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00008 80AAEE58 AFA40038 */  sw      $a0, 0x0038($sp)
/* 0000C 80AAEE5C AFA60040 */  sw      $a2, 0x0040($sp)
/* 00010 80AAEE60 8CC20000 */  lw      $v0, 0x0000($a2)           ## 00000000
/* 00014 80AAEE64 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00018 80AAEE68 00057900 */  sll     $t7, $a1,  4
/* 0001C 80AAEE6C 04400003 */  bltz    $v0, .L80AAEE7C
/* 00020 80AAEE70 3C1880AB */  lui     $t8, %hi(D_80AAFAEC)       ## $t8 = 80AB0000
/* 00024 80AAEE74 14A20005 */  bne     $a1, $v0, .L80AAEE8C
/* 00028 80AAEE78 0005C900 */  sll     $t9, $a1,  4
.L80AAEE7C:
/* 0002C 80AAEE7C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00030 80AAEE80 2718FAEC */  addiu   $t8, $t8, %lo(D_80AAFAEC)  ## $t8 = 80AAFAEC
/* 00034 80AAEE84 10000005 */  beq     $zero, $zero, .L80AAEE9C
/* 00038 80AAEE88 01F81821 */  addu    $v1, $t7, $t8
.L80AAEE8C:
/* 0003C 80AAEE8C 3C0880AB */  lui     $t0, %hi(D_80AAFAEC)       ## $t0 = 80AB0000
/* 00040 80AAEE90 2508FAEC */  addiu   $t0, $t0, %lo(D_80AAFAEC)  ## $t0 = 80AAFAEC
/* 00044 80AAEE94 03281821 */  addu    $v1, $t9, $t0
/* 00048 80AAEE98 C460000C */  lwc1    $f0, 0x000C($v1)           ## 0000000C
.L80AAEE9C:
/* 0004C 80AAEE9C C4640004 */  lwc1    $f4, 0x0004($v1)           ## 00000004
/* 00050 80AAEEA0 4604303E */  c.le.s  $f6, $f4
/* 00054 80AAEEA4 00000000 */  nop
/* 00058 80AAEEA8 45020017 */  bc1fl   .L80AAEF08
/* 0005C 80AAEEAC 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 00060 80AAEEB0 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 00064 80AAEEB4 AFA3002C */  sw      $v1, 0x002C($sp)
/* 00068 80AAEEB8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0006C 80AAEEBC 0C028800 */  jal     Animation_GetLastFrame

/* 00070 80AAEEC0 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 00074 80AAEEC4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00078 80AAEEC8 8FA3002C */  lw      $v1, 0x002C($sp)
/* 0007C 80AAEECC C7A00034 */  lwc1    $f0, 0x0034($sp)
/* 00080 80AAEED0 468042A0 */  cvt.s.w $f10, $f8
/* 00084 80AAEED4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00088 80AAEED8 90690008 */  lbu     $t1, 0x0008($v1)           ## 00000008
/* 0008C 80AAEEDC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00090 80AAEEE0 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00094 80AAEEE4 8C660004 */  lw      $a2, 0x0004($v1)           ## 00000004
/* 00098 80AAEEE8 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 0009C 80AAEEEC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 000A0 80AAEEF0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 000A4 80AAEEF4 0C029468 */  jal     Animation_Change

/* 000A8 80AAEEF8 AFA90014 */  sw      $t1, 0x0014($sp)
/* 000AC 80AAEEFC 10000016 */  beq     $zero, $zero, .L80AAEF58
/* 000B0 80AAEF00 8FAB003C */  lw      $t3, 0x003C($sp)
/* 000B4 80AAEF04 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
.L80AAEF08:
/* 000B8 80AAEF08 AFA3002C */  sw      $v1, 0x002C($sp)
/* 000BC 80AAEF0C AFA5003C */  sw      $a1, 0x003C($sp)
/* 000C0 80AAEF10 0C028800 */  jal     Animation_GetLastFrame

/* 000C4 80AAEF14 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 000C8 80AAEF18 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 000CC 80AAEF1C 8FA3002C */  lw      $v1, 0x002C($sp)
/* 000D0 80AAEF20 C7A00034 */  lwc1    $f0, 0x0034($sp)
/* 000D4 80AAEF24 46808420 */  cvt.s.w $f16, $f16
/* 000D8 80AAEF28 8FA40038 */  lw      $a0, 0x0038($sp)
/* 000DC 80AAEF2C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 000E0 80AAEF30 906A0008 */  lbu     $t2, 0x0008($v1)           ## 00000008
/* 000E4 80AAEF34 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 000E8 80AAEF38 8C660004 */  lw      $a2, 0x0004($v1)           ## 00000004
/* 000EC 80AAEF3C 44078000 */  mfc1    $a3, $f16
/* 000F0 80AAEF40 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 000F4 80AAEF44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 000F8 80AAEF48 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 000FC 80AAEF4C 0C029468 */  jal     Animation_Change

/* 00100 80AAEF50 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00104 80AAEF54 8FAB003C */  lw      $t3, 0x003C($sp)
.L80AAEF58:
/* 00108 80AAEF58 8FAC0040 */  lw      $t4, 0x0040($sp)
/* 0010C 80AAEF5C AD8B0000 */  sw      $t3, 0x0000($t4)           ## 00000000
/* 00110 80AAEF60 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00114 80AAEF64 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00118 80AAEF68 03E00008 */  jr      $ra
/* 0011C 80AAEF6C 00000000 */  nop
