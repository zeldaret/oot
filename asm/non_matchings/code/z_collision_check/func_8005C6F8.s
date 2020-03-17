glabel func_8005C6F8
/* AD3898 8005C6F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD389C 8005C6FC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD38A0 8005C700 AFA40018 */  sw    $a0, 0x18($sp)
/* AD38A4 8005C704 0C016E41 */  jal   func_8005B904
/* AD38A8 8005C708 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD38AC 8005C70C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD38B0 8005C710 8FA40018 */  lw    $a0, 0x18($sp)
/* AD38B4 8005C714 0C01717E */  jal   func_8005C5F8
/* AD38B8 8005C718 24A50028 */   addiu $a1, $a1, 0x28
/* AD38BC 8005C71C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD38C0 8005C720 27BD0018 */  addiu $sp, $sp, 0x18
/* AD38C4 8005C724 24020001 */  li    $v0, 1
/* AD38C8 8005C728 03E00008 */  jr    $ra
/* AD38CC 8005C72C 00000000 */   nop   

