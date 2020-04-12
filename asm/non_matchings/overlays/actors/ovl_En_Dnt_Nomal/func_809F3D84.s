glabel func_809F3D84
/* 00AC4 809F3D84 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00AC8 809F3D88 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00ACC 809F3D8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AD0 809F3D90 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AD4 809F3D94 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00AD8 809F3D98 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00ADC 809F3D9C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00AE0 809F3DA0 24842E84 */  addiu   $a0, $a0, 0x2E84           ## $a0 = 06002E84
/* 00AE4 809F3DA4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00AE8 809F3DA8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00AEC 809F3DAC 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00AF0 809F3DB0 468021A0 */  cvt.s.w $f6, $f4
/* 00AF4 809F3DB4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AF8 809F3DB8 24A52E84 */  addiu   $a1, $a1, 0x2E84           ## $a1 = 06002E84
/* 00AFC 809F3DBC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B00 809F3DC0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B04 809F3DC4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B08 809F3DC8 4600320D */  trunc.w.s $f8, $f6
/* 00B0C 809F3DCC 440F4000 */  mfc1    $t7, $f8
/* 00B10 809F3DD0 00000000 */  nop
/* 00B14 809F3DD4 A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
/* 00B18 809F3DD8 8618026E */  lh      $t8, 0x026E($s0)           ## 0000026E
/* 00B1C 809F3DDC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00B20 809F3DE0 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00B24 809F3DE4 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00B28 809F3DE8 00000000 */  nop
/* 00B2C 809F3DEC 46805420 */  cvt.s.w $f16, $f10
/* 00B30 809F3DF0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B34 809F3DF4 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00B38 809F3DF8 241910AF */  addiu   $t9, $zero, 0x10AF         ## $t9 = 000010AF
/* 00B3C 809F3DFC A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00B40 809F3E00 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00B44 809F3E04 3325FFFF */  andi    $a1, $t9, 0xFFFF           ## $a1 = 000010AF
/* 00B48 809F3E08 0C042DA0 */  jal     func_8010B680
/* 00B4C 809F3E0C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00B50 809F3E10 3C08809F */  lui     $t0, %hi(func_809F3E30)    ## $t0 = 809F0000
/* 00B54 809F3E14 25083E30 */  addiu   $t0, $t0, %lo(func_809F3E30) ## $t0 = 809F3E30
/* 00B58 809F3E18 AE080214 */  sw      $t0, 0x0214($s0)           ## 00000214
/* 00B5C 809F3E1C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B60 809F3E20 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B64 809F3E24 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B68 809F3E28 03E00008 */  jr      $ra
/* 00B6C 809F3E2C 00000000 */  nop
