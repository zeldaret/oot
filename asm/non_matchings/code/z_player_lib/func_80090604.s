glabel func_80090604
/* B077A4 80090604 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B077A8 80090608 AFBF001C */  sw    $ra, 0x1c($sp)
/* B077AC 8009060C AFA40058 */  sw    $a0, 0x58($sp)
/* B077B0 80090610 AFA5005C */  sw    $a1, 0x5c($sp)
/* B077B4 80090614 AFA60060 */  sw    $a2, 0x60($sp)
/* B077B8 80090618 AFA70064 */  sw    $a3, 0x64($sp)
/* B077BC 8009061C 8CAF067C */  lw    $t7, 0x67c($a1)
/* B077C0 80090620 000FC240 */  sll   $t8, $t7, 9
/* B077C4 80090624 07030028 */  bgezl $t8, .L800906C8
/* B077C8 80090628 8FBF001C */   lw    $ra, 0x1c($sp)
/* B077CC 8009062C 80B9014E */  lb    $t9, 0x14e($a1)
/* B077D0 80090630 3C088012 */  lui   $t0, %hi(D_8012607C)
/* B077D4 80090634 01194021 */  addu  $t0, $t0, $t9
/* B077D8 80090638 9108607C */  lbu   $t0, %lo(D_8012607C)($t0)
/* B077DC 8009063C A0A805F8 */  sb    $t0, 0x5f8($a1)
/* B077E0 80090640 8FA40064 */  lw    $a0, 0x64($sp)
/* B077E4 80090644 0C0346BD */  jal   Matrix_MultVec3f
/* B077E8 80090648 27A50028 */   addiu $a1, $sp, 0x28
/* B077EC 8009064C 8FA40064 */  lw    $a0, 0x64($sp)
/* B077F0 80090650 27A50034 */  addiu $a1, $sp, 0x34
/* B077F4 80090654 0C0346BD */  jal   Matrix_MultVec3f
/* B077F8 80090658 2484000C */   addiu $a0, $a0, 0xc
/* B077FC 8009065C 8FA40064 */  lw    $a0, 0x64($sp)
/* B07800 80090660 27A50040 */  addiu $a1, $sp, 0x40
/* B07804 80090664 0C0346BD */  jal   Matrix_MultVec3f
/* B07808 80090668 24840018 */   addiu $a0, $a0, 0x18
/* B0780C 8009066C 8FA40064 */  lw    $a0, 0x64($sp)
/* B07810 80090670 27A5004C */  addiu $a1, $sp, 0x4c
/* B07814 80090674 0C0346BD */  jal   Matrix_MultVec3f
/* B07818 80090678 24840024 */   addiu $a0, $a0, 0x24
/* B0781C 8009067C 27A9004C */  addiu $t1, $sp, 0x4c
/* B07820 80090680 AFA90010 */  sw    $t1, 0x10($sp)
/* B07824 80090684 8FA40060 */  lw    $a0, 0x60($sp)
/* B07828 80090688 27A50028 */  addiu $a1, $sp, 0x28
/* B0782C 8009068C 27A60034 */  addiu $a2, $sp, 0x34
/* B07830 80090690 0C0189CD */  jal   func_80062734
/* B07834 80090694 27A70040 */   addiu $a3, $sp, 0x40
/* B07838 80090698 8FA40058 */  lw    $a0, 0x58($sp)
/* B0783C 8009069C 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* B07840 800906A0 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* B07844 800906A4 00812821 */  addu  $a1, $a0, $at
/* B07848 800906A8 AFA50024 */  sw    $a1, 0x24($sp)
/* B0784C 800906AC 0C01767D */  jal   CollisionCheck_SetAC
/* B07850 800906B0 8FA60060 */   lw    $a2, 0x60($sp)
/* B07854 800906B4 8FA50024 */  lw    $a1, 0x24($sp)
/* B07858 800906B8 8FA40058 */  lw    $a0, 0x58($sp)
/* B0785C 800906BC 0C0175E7 */  jal   CollisionCheck_SetAT
/* B07860 800906C0 8FA60060 */   lw    $a2, 0x60($sp)
/* B07864 800906C4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800906C8:
/* B07868 800906C8 27BD0058 */  addiu $sp, $sp, 0x58
/* B0786C 800906CC 03E00008 */  jr    $ra
/* B07870 800906D0 00000000 */   nop   

