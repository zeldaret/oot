glabel func_800C3FC4
/* B3B164 800C3FC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B168 800C3FC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B16C 800C3FCC 248400C8 */  addiu $a0, $a0, 0xc8
/* B3B170 800C3FD0 00002825 */  move  $a1, $zero
/* B3B174 800C3FD4 0C000CA0 */  jal   osRecvMesg
/* B3B178 800C3FD8 24060001 */   li    $a2, 1
/* B3B17C 800C3FDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B180 800C3FE0 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B184 800C3FE4 03E00008 */  jr    $ra
/* B3B188 800C3FE8 00000000 */   nop   

