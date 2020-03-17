glabel func_8005BBF8
/* AD2D98 8005BBF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2D9C 8005BBFC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2DA0 8005BC00 0C016D97 */  jal   func_8005B65C
/* AD2DA4 8005BC04 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2DA8 8005BC08 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2DAC 8005BC0C 24020001 */  li    $v0, 1
/* AD2DB0 8005BC10 ACA00018 */  sw    $zero, 0x18($a1)
/* AD2DB4 8005BC14 ACA0001C */  sw    $zero, 0x1c($a1)
/* AD2DB8 8005BC18 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2DBC 8005BC1C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2DC0 8005BC20 03E00008 */  jr    $ra
/* AD2DC4 8005BC24 00000000 */   nop   

