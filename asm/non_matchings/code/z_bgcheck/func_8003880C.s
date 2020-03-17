glabel func_8003880C
/* AAF9AC 8003880C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AAF9B0 80038810 AFA5001C */  sw    $a1, 0x1c($sp)
/* AAF9B4 80038814 AFBF0014 */  sw    $ra, 0x14($sp)
/* AAF9B8 80038818 AFA60020 */  sw    $a2, 0x20($sp)
/* AAF9BC 8003881C 00062880 */  sll   $a1, $a2, 2
/* AAF9C0 80038820 2406FFFE */  li    $a2, -2
/* AAF9C4 80038824 0C030EDC */  jal   THA_AllocEndAlign
/* AAF9C8 80038828 24840074 */   addiu $a0, $a0, 0x74
/* AAF9CC 8003882C 8FA3001C */  lw    $v1, 0x1c($sp)
/* AAF9D0 80038830 3C048014 */  lui   $a0, %hi(D_801386F4) # $a0, 0x8014
/* AAF9D4 80038834 14400007 */  bnez  $v0, .L80038854
/* AAF9D8 80038838 AC620000 */   sw    $v0, ($v1)
/* AAF9DC 8003883C 3C058014 */  lui   $a1, %hi(D_80138708) # $a1, 0x8014
/* AAF9E0 80038840 24A58708 */  addiu $a1, %lo(D_80138708) # addiu $a1, $a1, -0x78f8
/* AAF9E4 80038844 248486F4 */  addiu $a0, %lo(D_801386F4) # addiu $a0, $a0, -0x790c
/* AAF9E8 80038848 0C0007FC */  jal   __assert
/* AAF9EC 8003884C 24060713 */   li    $a2, 1811
/* AAF9F0 80038850 8FA3001C */  lw    $v1, 0x1c($sp)
.L80038854:
/* AAF9F4 80038854 8FAE0020 */  lw    $t6, 0x20($sp)
/* AAF9F8 80038858 AC600004 */  sw    $zero, 4($v1)
/* AAF9FC 8003885C AC6E0008 */  sw    $t6, 8($v1)
/* AAFA00 80038860 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAFA04 80038864 27BD0018 */  addiu $sp, $sp, 0x18
/* AAFA08 80038868 03E00008 */  jr    $ra
/* AAFA0C 8003886C 00000000 */   nop   

