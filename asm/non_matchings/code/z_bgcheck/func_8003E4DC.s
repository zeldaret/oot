glabel func_8003E4DC
/* AB567C 8003E4DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AB5680 8003E4E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5684 8003E4E4 94830002 */  lhu   $v1, 2($a0)
/* AB5688 8003E4E8 948F0000 */  lhu   $t7, ($a0)
/* AB568C 8003E4EC 3C058014 */  lui   $a1, %hi(D_80138B68) # $a1, 0x8014
/* AB5690 8003E4F0 246E0001 */  addiu $t6, $v1, 1
/* AB5694 8003E4F4 006F082A */  slt   $at, $v1, $t7
/* AB5698 8003E4F8 14200008 */  bnez  $at, .L8003E51C
/* AB569C 8003E4FC A48E0002 */   sh    $t6, 2($a0)
/* AB56A0 8003E500 3C048014 */  lui   $a0, %hi(D_80138B40) # $a0, 0x8014
/* AB56A4 8003E504 24848B40 */  addiu $a0, %lo(D_80138B40) # addiu $a0, $a0, -0x74c0
/* AB56A8 8003E508 24A58B68 */  addiu $a1, %lo(D_80138B68) # addiu $a1, $a1, -0x7498
/* AB56AC 8003E50C 24061785 */  li    $a2, 6021
/* AB56B0 8003E510 0C0007FC */  jal   __assert
/* AB56B4 8003E514 A7A3001E */   sh    $v1, 0x1e($sp)
/* AB56B8 8003E518 97A3001E */  lhu   $v1, 0x1e($sp)
.L8003E51C:
/* AB56BC 8003E51C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB56C0 8003E520 27BD0020 */  addiu $sp, $sp, 0x20
/* AB56C4 8003E524 00601025 */  move  $v0, $v1
/* AB56C8 8003E528 03E00008 */  jr    $ra
/* AB56CC 8003E52C 00000000 */   nop   

