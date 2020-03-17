glabel func_8005C540
/* AD36E0 8005C540 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD36E4 8005C544 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD36E8 8005C548 AFA40018 */  sw    $a0, 0x18($sp)
/* AD36EC 8005C54C 0C016DE1 */  jal   func_8005B784
/* AD36F0 8005C550 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD36F4 8005C554 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD36F8 8005C558 8FA40018 */  lw    $a0, 0x18($sp)
/* AD36FC 8005C55C 0C016E7A */  jal   func_8005B9E8
/* AD3700 8005C560 24A50018 */   addiu $a1, $a1, 0x18
/* AD3704 8005C564 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3708 8005C568 27BD0018 */  addiu $sp, $sp, 0x18
/* AD370C 8005C56C 24020001 */  li    $v0, 1
/* AD3710 8005C570 03E00008 */  jr    $ra
/* AD3714 8005C574 00000000 */   nop   
