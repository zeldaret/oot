glabel func_8005BB48
/* AD2CE8 8005BB48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2CEC 8005BB4C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2CF0 8005BB50 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2CF4 8005BB54 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD2CF8 8005BB58 0C016E4F */  jal   func_8005B93C
/* AD2CFC 8005BB5C AFA60020 */   sw    $a2, 0x20($sp)
/* AD2D00 8005BB60 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2D04 8005BB64 8FA60020 */  lw    $a2, 0x20($sp)
/* AD2D08 8005BB68 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2D0C 8005BB6C 24A50028 */  addiu $a1, $a1, 0x28
/* AD2D10 8005BB70 0C016EA1 */  jal   func_8005BA84
/* AD2D14 8005BB74 24C60018 */   addiu $a2, $a2, 0x18
/* AD2D18 8005BB78 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2D1C 8005BB7C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2D20 8005BB80 24020001 */  li    $v0, 1
/* AD2D24 8005BB84 03E00008 */  jr    $ra
/* AD2D28 8005BB88 00000000 */   nop   

