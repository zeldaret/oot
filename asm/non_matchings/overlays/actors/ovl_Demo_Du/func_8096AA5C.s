glabel func_8096AA5C
/* 00F8C 8096AA5C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F90 8096AA60 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00F94 8096AA64 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00F98 8096AA68 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00F9C 8096AA6C 51C00021 */  beql    $t6, $zero, .L8096AAF4
/* 00FA0 8096AA70 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00FA4 8096AA74 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 00FA8 8096AA78 5040001E */  beql    $v0, $zero, .L8096AAF4
/* 00FAC 8096AA7C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00FB0 8096AA80 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00FB4 8096AA84 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00FB8 8096AA88 3C040600 */  lui     $a0, %hi(D_0600288C)                ## $a0 = 06000000
/* 00FBC 8096AA8C 11E10018 */  beq     $t7, $at, .L8096AAF0
/* 00FC0 8096AA90 2484288C */  addiu   $a0, $a0, %lo(D_0600288C)           ## $a0 = 0600288C
/* 00FC4 8096AA94 0C028800 */  jal     Animation_GetLastFrame

/* 00FC8 8096AA98 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00FCC 8096AA9C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00FD0 8096AAA0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00FD4 8096AAA4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00FD8 8096AAA8 468021A0 */  cvt.s.w $f6, $f4
/* 00FDC 8096AAAC 3C050600 */  lui     $a1, %hi(D_0600288C)                ## $a1 = 06000000
/* 00FE0 8096AAB0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00FE4 8096AAB4 44070000 */  mfc1    $a3, $f0
/* 00FE8 8096AAB8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00FEC 8096AABC 24A5288C */  addiu   $a1, $a1, %lo(D_0600288C)           ## $a1 = 0600288C
/* 00FF0 8096AAC0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00FF4 8096AAC4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FF8 8096AAC8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FFC 8096AACC 0C029468 */  jal     Animation_Change

/* 01000 8096AAD0 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01004 8096AAD4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01008 8096AAD8 24190009 */  addiu   $t9, $zero, 0x0009         ## $t9 = 00000009
/* 0100C 8096AADC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01010 8096AAE0 AC990198 */  sw      $t9, 0x0198($a0)           ## 00000198
/* 01014 8096AAE4 AC88019C */  sw      $t0, 0x019C($a0)           ## 0000019C
/* 01018 8096AAE8 0C25AA5C */  jal     func_8096A970
/* 0101C 8096AAEC 8FA5002C */  lw      $a1, 0x002C($sp)
.L8096AAF0:
/* 01020 8096AAF0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8096AAF4:
/* 01024 8096AAF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01028 8096AAF8 03E00008 */  jr      $ra
/* 0102C 8096AAFC 00000000 */  nop
