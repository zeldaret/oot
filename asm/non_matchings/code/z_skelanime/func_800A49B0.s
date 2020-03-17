glabel func_800A49B0
/* B1BB50 800A49B0 90820001 */  lbu   $v0, 1($a0)
/* B1BB54 800A49B4 3C0E800A */  lui   $t6, %hi(func_800A4D9C) # $t6, 0x800a
/* B1BB58 800A49B8 25CE4D9C */  addiu $t6, %lo(func_800A4D9C) # addiu $t6, $t6, 0x4d9c
/* B1BB5C 800A49BC 28410002 */  slti  $at, $v0, 2
/* B1BB60 800A49C0 50200004 */  beql  $at, $zero, .L800A49D4
/* B1BB64 800A49C4 28410004 */   slti  $at, $v0, 4
/* B1BB68 800A49C8 03E00008 */  jr    $ra
/* B1BB6C 800A49CC AC8E0030 */   sw    $t6, 0x30($a0)
/* B1BB70 800A49D0 28410004 */  slti  $at, $v0, 4
.L800A49D4:
/* B1BB74 800A49D4 10200005 */  beqz  $at, .L800A49EC
/* B1BB78 800A49D8 3C18800A */   lui   $t8, %hi(func_800A4E38)
/* B1BB7C 800A49DC 3C0F800A */  lui   $t7, %hi(func_800A4EE0) # $t7, 0x800a
/* B1BB80 800A49E0 25EF4EE0 */  addiu $t7, %lo(func_800A4EE0) # addiu $t7, $t7, 0x4ee0
/* B1BB84 800A49E4 03E00008 */  jr    $ra
/* B1BB88 800A49E8 AC8F0030 */   sw    $t7, 0x30($a0)
.L800A49EC:
/* B1BB8C 800A49EC 27184E38 */  addiu $t8, %lo(func_800A4E38)
/* B1BB90 800A49F0 AC980030 */  sw    $t8, 0x30($a0)
/* B1BB94 800A49F4 03E00008 */  jr    $ra
/* B1BB98 800A49F8 00000000 */   nop   

