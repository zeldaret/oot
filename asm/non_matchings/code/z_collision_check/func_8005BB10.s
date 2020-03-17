glabel func_8005BB10
/* AD2CB0 8005BB10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2CB4 8005BB14 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2CB8 8005BB18 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2CBC 8005BB1C 0C016E41 */  jal   func_8005B904
/* AD2CC0 8005BB20 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2CC4 8005BB24 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2CC8 8005BB28 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2CCC 8005BB2C 0C016E9D */  jal   func_8005BA74
/* AD2CD0 8005BB30 24A50028 */   addiu $a1, $a1, 0x28
/* AD2CD4 8005BB34 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2CD8 8005BB38 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2CDC 8005BB3C 24020001 */  li    $v0, 1
/* AD2CE0 8005BB40 03E00008 */  jr    $ra
/* AD2CE4 8005BB44 00000000 */   nop   

