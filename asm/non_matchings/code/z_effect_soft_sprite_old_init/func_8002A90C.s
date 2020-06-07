glabel func_8002A90C
/* AA1AAC 8002A90C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA1AB0 8002A910 AFA60030 */  sw    $a2, 0x30($sp)
/* AA1AB4 8002A914 AFA70034 */  sw    $a3, 0x34($sp)
/* AA1AB8 8002A918 87AF0036 */  lh    $t7, 0x36($sp)
/* AA1ABC 8002A91C 87AE0032 */  lh    $t6, 0x32($sp)
/* AA1AC0 8002A920 87B8003A */  lh    $t8, 0x3a($sp)
/* AA1AC4 8002A924 8FB9003C */  lw    $t9, 0x3c($sp)
/* AA1AC8 8002A928 3C068011 */  lui   $a2, %hi(D_801158C0) # $a2, 0x8011
/* AA1ACC 8002A92C 24C658C0 */  addiu $a2, %lo(D_801158C0) # addiu $a2, $a2, 0x58c0
/* AA1AD0 8002A930 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA1AD4 8002A934 00C03825 */  move  $a3, $a2
/* AA1AD8 8002A938 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA1ADC 8002A93C AFAE0010 */  sw    $t6, 0x10($sp)
/* AA1AE0 8002A940 AFB80018 */  sw    $t8, 0x18($sp)
/* AA1AE4 8002A944 0C00AA25 */  jal   func_8002A894
/* AA1AE8 8002A948 AFB9001C */   sw    $t9, 0x1c($sp)
/* AA1AEC 8002A94C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA1AF0 8002A950 27BD0028 */  addiu $sp, $sp, 0x28
/* AA1AF4 8002A954 03E00008 */  jr    $ra
/* AA1AF8 8002A958 00000000 */   nop   

