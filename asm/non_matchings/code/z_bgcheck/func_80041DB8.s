glabel func_80041DB8
/* AB8F58 80041DB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8F5C 80041DBC AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8F60 80041DC0 0C010765 */  jal   func_80041D94
/* AB8F64 80041DC4 00000000 */   nop   
/* AB8F68 80041DC8 00027080 */  sll   $t6, $v0, 2
/* AB8F6C 80041DCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB8F70 80041DD0 3C028012 */  lui   $v0, %hi(D_80119D90)
/* AB8F74 80041DD4 004E1021 */  addu  $v0, $v0, $t6
/* AB8F78 80041DD8 8C429D90 */  lw    $v0, %lo(D_80119D90)($v0)
/* AB8F7C 80041DDC 03E00008 */  jr    $ra
/* AB8F80 80041DE0 27BD0018 */   addiu $sp, $sp, 0x18

