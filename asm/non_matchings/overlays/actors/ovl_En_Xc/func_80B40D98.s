glabel func_80B40D98
/* 04BB8 80B40D98 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 04BBC 80B40D9C 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 04BC0 80B40DA0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04BC4 80B40DA4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 04BC8 80B40DA8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 04BCC 80B40DAC 85F8145E */  lh      $t8, 0x145E($t7)           ## 8016145E
/* 04BD0 80B40DB0 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 04BD4 80B40DB4 44814000 */  mtc1    $at, $f8                   ## $f8 = 140.00
/* 04BD8 80B40DB8 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 04BDC 80B40DBC C4800090 */  lwc1    $f0, 0x0090($a0)           ## 00000090
/* 04BE0 80B40DC0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04BE4 80B40DC4 468021A0 */  cvt.s.w $f6, $f4
/* 04BE8 80B40DC8 46083280 */  add.s   $f10, $f6, $f8
/* 04BEC 80B40DCC 4600503E */  c.le.s  $f10, $f0
/* 04BF0 80B40DD0 00000000 */  nop
/* 04BF4 80B40DD4 45020017 */  bc1fl   .L80B40E34
/* 04BF8 80B40DD8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04BFC 80B40DDC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04C00 80B40DE0 24844828 */  addiu   $a0, $a0, 0x4828           ## $a0 = 06004828
/* 04C04 80B40DE4 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 04C08 80B40DE8 3C01C140 */  lui     $at, 0xC140                ## $at = C1400000
/* 04C0C 80B40DEC 44812000 */  mtc1    $at, $f4                   ## $f4 = -12.00
/* 04C10 80B40DF0 468084A0 */  cvt.s.w $f18, $f16
/* 04C14 80B40DF4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04C18 80B40DF8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04C1C 80B40DFC 24A54828 */  addiu   $a1, $a1, 0x4828           ## $a1 = 06004828
/* 04C20 80B40E00 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04C24 80B40E04 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 04C28 80B40E08 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 04C2C 80B40E0C AFA00014 */  sw      $zero, 0x0014($sp)
/* 04C30 80B40E10 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 04C34 80B40E14 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04C38 80B40E18 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04C3C 80B40E1C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 04C40 80B40E20 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 04C44 80B40E24 2419004B */  addiu   $t9, $zero, 0x004B         ## $t9 = 0000004B
/* 04C48 80B40E28 AC590260 */  sw      $t9, 0x0260($v0)           ## 00000260
/* 04C4C 80B40E2C E4460268 */  swc1    $f6, 0x0268($v0)           ## 00000268
/* 04C50 80B40E30 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B40E34:
/* 04C54 80B40E34 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04C58 80B40E38 03E00008 */  jr      $ra
/* 04C5C 80B40E3C 00000000 */  nop


