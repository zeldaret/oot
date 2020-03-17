glabel func_8005C6C0
/* AD3860 8005C6C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3864 8005C6C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3868 8005C6C8 AFA40018 */  sw    $a0, 0x18($sp)
/* AD386C 8005C6CC 0C016E21 */  jal   func_8005B884
/* AD3870 8005C6D0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3874 8005C6D4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3878 8005C6D8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD387C 8005C6DC 0C01716C */  jal   func_8005C5B0
/* AD3880 8005C6E0 24A50028 */   addiu $a1, $a1, 0x28
/* AD3884 8005C6E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3888 8005C6E8 27BD0018 */  addiu $sp, $sp, 0x18
/* AD388C 8005C6EC 24020001 */  li    $v0, 1
/* AD3890 8005C6F0 03E00008 */  jr    $ra
/* AD3894 8005C6F4 00000000 */   nop   

