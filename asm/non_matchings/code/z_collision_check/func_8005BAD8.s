glabel func_8005BAD8
/* AD2C78 8005BAD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2C7C 8005BADC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2C80 8005BAE0 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2C84 8005BAE4 0C016E21 */  jal   func_8005B884
/* AD2C88 8005BAE8 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2C8C 8005BAEC 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2C90 8005BAF0 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2C94 8005BAF4 0C016E8C */  jal   func_8005BA30
/* AD2C98 8005BAF8 24A50028 */   addiu $a1, $a1, 0x28
/* AD2C9C 8005BAFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2CA0 8005BB00 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2CA4 8005BB04 24020001 */  li    $v0, 1
/* AD2CA8 8005BB08 03E00008 */  jr    $ra
/* AD2CAC 8005BB0C 00000000 */   nop   

