glabel func_8003E834
/* AB59D4 8003E834 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB59D8 8003E838 AFA5001C */  sw    $a1, 0x1c($sp)
/* AB59DC 8003E83C AFBF0014 */  sw    $ra, 0x14($sp)
/* AB59E0 8003E840 AFA60020 */  sw    $a2, 0x20($sp)
/* AB59E4 8003E844 00062900 */  sll   $a1, $a2, 4
/* AB59E8 8003E848 2406FFFE */  li    $a2, -2
/* AB59EC 8003E84C 0C030EDC */  jal   THA_AllocEndAlign
/* AB59F0 8003E850 24840074 */   addiu $a0, $a0, 0x74
/* AB59F4 8003E854 8FAE001C */  lw    $t6, 0x1c($sp)
/* AB59F8 8003E858 3C048014 */  lui   $a0, %hi(D_80138B78) # $a0, 0x8014
/* AB59FC 8003E85C 14400006 */  bnez  $v0, .L8003E878
/* AB5A00 8003E860 ADC20000 */   sw    $v0, ($t6)
/* AB5A04 8003E864 3C058014 */  lui   $a1, %hi(D_80138B8C) # $a1, 0x8014
/* AB5A08 8003E868 24A58B8C */  addiu $a1, %lo(D_80138B8C) # addiu $a1, $a1, -0x7474
/* AB5A0C 8003E86C 24848B78 */  addiu $a0, %lo(D_80138B78) # addiu $a0, $a0, -0x7488
/* AB5A10 8003E870 0C0007FC */  jal   __assert
/* AB5A14 8003E874 24061867 */   li    $a2, 6247
.L8003E878:
/* AB5A18 8003E878 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB5A1C 8003E87C 27BD0018 */  addiu $sp, $sp, 0x18
/* AB5A20 8003E880 03E00008 */  jr    $ra
/* AB5A24 8003E884 00000000 */   nop   

