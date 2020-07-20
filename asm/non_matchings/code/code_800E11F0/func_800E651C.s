glabel func_800E651C
/* B5D6BC 800E651C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D6C0 800E6520 00A03025 */  move  $a2, $a1
/* B5D6C4 800E6524 00802825 */  move  $a1, $a0
/* B5D6C8 800E6528 AFA40018 */  sw    $a0, 0x18($sp)
/* B5D6CC 800E652C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D6D0 800E6530 30C400FF */  andi  $a0, $a2, 0xff
/* B5D6D4 800E6534 3C01FD00 */  lui   $at, 0xfd00
/* B5D6D8 800E6538 0C0396BF */  jal   func_800E5AFC
/* B5D6DC 800E653C 00812025 */   or    $a0, $a0, $at
/* B5D6E0 800E6540 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D6E4 800E6544 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D6E8 800E6548 03E00008 */  jr    $ra
/* B5D6EC 800E654C 00000000 */   nop

