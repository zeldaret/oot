glabel TransitionFade_Draw
/* B2A8B8 800B3718 908E0007 */  lbu   $t6, 7($a0)
/* B2A8BC 800B371C 3C188013 */  lui   $t8, %hi(sRCPSetupFade) # $t8, 0x8013
/* B2A8C0 800B3720 2718CEA0 */  addiu $t8, %lo(sRCPSetupFade) # addiu $t8, $t8, -0x3160
/* B2A8C4 800B3724 19C0002B */  blez  $t6, .L800B37D4
/* B2A8C8 800B3728 3C0FDE00 */   lui   $t7, 0xde00
/* B2A8CC 800B372C 8CA20000 */  lw    $v0, ($a1)
/* B2A8D0 800B3730 3C19FA00 */  lui   $t9, 0xfa00
/* B2A8D4 800B3734 3C01F600 */  lui   $at, 0xf600
/* B2A8D8 800B3738 24460008 */  addiu $a2, $v0, 8
/* B2A8DC 800B373C AC4F0000 */  sw    $t7, ($v0)
/* B2A8E0 800B3740 AC580004 */  sw    $t8, 4($v0)
/* B2A8E4 800B3744 ACD90000 */  sw    $t9, ($a2)
/* B2A8E8 800B3748 24820004 */  addiu $v0, $a0, 4
/* B2A8EC 800B374C 90490000 */  lbu   $t1, ($v0)
/* B2A8F0 800B3750 904C0001 */  lbu   $t4, 1($v0)
/* B2A8F4 800B3754 90580002 */  lbu   $t8, 2($v0)
/* B2A8F8 800B3758 904B0003 */  lbu   $t3, 3($v0)
/* B2A8FC 800B375C 00095600 */  sll   $t2, $t1, 0x18
/* B2A900 800B3760 000C6C00 */  sll   $t5, $t4, 0x10
/* B2A904 800B3764 014D7025 */  or    $t6, $t2, $t5
/* B2A908 800B3768 0018CA00 */  sll   $t9, $t8, 8
/* B2A90C 800B376C 01D94025 */  or    $t0, $t6, $t9
/* B2A910 800B3770 010B6025 */  or    $t4, $t0, $t3
/* B2A914 800B3774 ACCC0004 */  sw    $t4, 4($a2)
/* B2A918 800B3778 3C0A8013 */  lui   $t2, %hi(gScreenWidth) # $t2, 0x8013
/* B2A91C 800B377C 8D4AD270 */  lw    $t2, %lo(gScreenWidth)($t2)
/* B2A920 800B3780 3C198013 */  lui   $t9, %hi(gScreenHeight) # $t9, 0x8013
/* B2A924 800B3784 8F39D274 */  lw    $t9, %lo(gScreenHeight)($t9)
/* B2A928 800B3788 254DFFFF */  addiu $t5, $t2, -1
/* B2A92C 800B378C 24C30008 */  addiu $v1, $a2, 8
/* B2A930 800B3790 31AF03FF */  andi  $t7, $t5, 0x3ff
/* B2A934 800B3794 2729FFFF */  addiu $t1, $t9, -1
/* B2A938 800B3798 312803FF */  andi  $t0, $t1, 0x3ff
/* B2A93C 800B379C 000FC380 */  sll   $t8, $t7, 0xe
/* B2A940 800B37A0 00601025 */  move  $v0, $v1
/* B2A944 800B37A4 03017025 */  or    $t6, $t8, $at
/* B2A948 800B37A8 00085880 */  sll   $t3, $t0, 2
/* B2A94C 800B37AC 01CB6025 */  or    $t4, $t6, $t3
/* B2A950 800B37B0 AC4C0000 */  sw    $t4, ($v0)
/* B2A954 800B37B4 AC400004 */  sw    $zero, 4($v0)
/* B2A958 800B37B8 24630008 */  addiu $v1, $v1, 8
/* B2A95C 800B37BC 00601025 */  move  $v0, $v1
/* B2A960 800B37C0 3C0AE700 */  lui   $t2, 0xe700
/* B2A964 800B37C4 AC4A0000 */  sw    $t2, ($v0)
/* B2A968 800B37C8 AC400004 */  sw    $zero, 4($v0)
/* B2A96C 800B37CC 24630008 */  addiu $v1, $v1, 8
/* B2A970 800B37D0 ACA30000 */  sw    $v1, ($a1)
.L800B37D4:
/* B2A974 800B37D4 03E00008 */  jr    $ra
/* B2A978 800B37D8 00000000 */   nop
