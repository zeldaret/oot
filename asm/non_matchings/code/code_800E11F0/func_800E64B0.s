glabel func_800E64B0
/* B5D650 800E64B0 308E00FF */  andi  $t6, $a0, 0xff
/* B5D654 800E64B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D658 800E64B8 000E7C00 */  sll   $t7, $t6, 0x10
/* B5D65C 800E64BC 3C01FA00 */  lui   $at, 0xfa00
/* B5D660 800E64C0 30A800FF */  andi  $t0, $a1, 0xff
/* B5D664 800E64C4 00084A00 */  sll   $t1, $t0, 8
/* B5D668 800E64C8 01E1C025 */  or    $t8, $t7, $at
/* B5D66C 800E64CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D670 800E64D0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B5D674 800E64D4 03095025 */  or    $t2, $t8, $t1
/* B5D678 800E64D8 30CB00FF */  andi  $t3, $a2, 0xff
/* B5D67C 800E64DC 014B2025 */  or    $a0, $t2, $t3
/* B5D680 800E64E0 0C0396BF */  jal   func_800E5AFC
/* B5D684 800E64E4 24050001 */   li    $a1, 1
/* B5D688 800E64E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D68C 800E64EC 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D690 800E64F0 03E00008 */  jr    $ra
/* B5D694 800E64F4 00000000 */   nop

