glabel func_8002A9F4
/* AA1B94 8002A9F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA1B98 8002A9F8 AFA60030 */  sw    $a2, 0x30($sp)
/* AA1B9C 8002A9FC AFA70034 */  sw    $a3, 0x34($sp)
/* AA1BA0 8002AA00 87AF0036 */  lh    $t7, 0x36($sp)
/* AA1BA4 8002AA04 97AE0032 */  lhu   $t6, 0x32($sp)
/* AA1BA8 8002AA08 87B8003A */  lh    $t8, 0x3a($sp)
/* AA1BAC 8002AA0C 8FB9003C */  lw    $t9, 0x3c($sp)
/* AA1BB0 8002AA10 3C068011 */  lui   $a2, %hi(D_801158C0) # $a2, 0x8011
/* AA1BB4 8002AA14 24C658C0 */  addiu $a2, %lo(D_801158C0) # addiu $a2, $a2, 0x58c0
/* AA1BB8 8002AA18 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA1BBC 8002AA1C 00C03825 */  move  $a3, $a2
/* AA1BC0 8002AA20 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA1BC4 8002AA24 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA1BC8 8002AA28 AFB80018 */  sw    $t8, 0x18($sp)
/* AA1BCC 8002AA2C 0C00AA57 */  jal   func_8002A95C
/* AA1BD0 8002AA30 AFB9001C */   sw    $t9, 0x1c($sp)
/* AA1BD4 8002AA34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA1BD8 8002AA38 27BD0028 */  addiu $sp, $sp, 0x28
/* AA1BDC 8002AA3C 03E00008 */  jr    $ra
/* AA1BE0 8002AA40 00000000 */   nop   

