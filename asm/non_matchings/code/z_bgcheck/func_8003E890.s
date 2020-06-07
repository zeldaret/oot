glabel func_8003E890
/* AB5A30 8003E890 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB5A34 8003E894 AFA5001C */  sw    $a1, 0x1c($sp)
/* AB5A38 8003E898 00062880 */  sll   $a1, $a2, 2
/* AB5A3C 8003E89C AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5A40 8003E8A0 AFA60020 */  sw    $a2, 0x20($sp)
/* AB5A44 8003E8A4 00A62823 */  subu  $a1, $a1, $a2
/* AB5A48 8003E8A8 00052840 */  sll   $a1, $a1, 1
/* AB5A4C 8003E8AC 2406FFFE */  li    $a2, -2
/* AB5A50 8003E8B0 0C030EDC */  jal   THA_AllocEndAlign
/* AB5A54 8003E8B4 24840074 */   addiu $a0, $a0, 0x74
/* AB5A58 8003E8B8 8FAE001C */  lw    $t6, 0x1c($sp)
/* AB5A5C 8003E8BC 3C048014 */  lui   $a0, %hi(D_80138B9C) # $a0, 0x8014
/* AB5A60 8003E8C0 14400006 */  bnez  $v0, .L8003E8DC
/* AB5A64 8003E8C4 ADC20000 */   sw    $v0, ($t6)
/* AB5A68 8003E8C8 3C058014 */  lui   $a1, %hi(D_80138BB0) # $a1, 0x8014
/* AB5A6C 8003E8CC 24A58BB0 */  addiu $a1, %lo(D_80138BB0) # addiu $a1, $a1, -0x7450
/* AB5A70 8003E8D0 24848B9C */  addiu $a0, %lo(D_80138B9C) # addiu $a0, $a0, -0x7464
/* AB5A74 8003E8D4 0C0007FC */  jal   __assert
/* AB5A78 8003E8D8 24061885 */   li    $a2, 6277
.L8003E8DC:
/* AB5A7C 8003E8DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB5A80 8003E8E0 27BD0018 */  addiu $sp, $sp, 0x18
/* AB5A84 8003E8E4 03E00008 */  jr    $ra
/* AB5A88 8003E8E8 00000000 */   nop   

