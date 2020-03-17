glabel func_80041D28
/* AB8EC8 80041D28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8ECC 80041D2C AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8ED0 80041D30 0C01066C */  jal   func_800419B0
/* AB8ED4 80041D34 00003825 */   move  $a3, $zero
/* AB8ED8 80041D38 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB8EDC 80041D3C 00021202 */  srl   $v0, $v0, 8
/* AB8EE0 80041D40 3042001F */  andi  $v0, $v0, 0x1f
/* AB8EE4 80041D44 03E00008 */  jr    $ra
/* AB8EE8 80041D48 27BD0018 */   addiu $sp, $sp, 0x18

