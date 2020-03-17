.late_rodata
glabel D_8013CB94
    .float 57.295776

.text
glabel func_8007C574
/* AF3714 8007C574 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF3718 8007C578 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF371C 8007C57C AFA40030 */  sw    $a0, 0x30($sp)
/* AF3720 8007C580 0C01F138 */  jal   func_8007C4E0
/* AF3724 8007C584 27A40024 */   addiu $a0, $sp, 0x24
/* AF3728 8007C588 3C018014 */  lui   $at, %hi(D_8013CB94)
/* AF372C 8007C58C C420CB94 */  lwc1  $f0, %lo(D_8013CB94)($at)
/* AF3730 8007C590 C7A40024 */  lwc1  $f4, 0x24($sp)
/* AF3734 8007C594 C7A80028 */  lwc1  $f8, 0x28($sp)
/* AF3738 8007C598 44808000 */  mtc1  $zero, $f16
/* AF373C 8007C59C 46002182 */  mul.s $f6, $f4, $f0
/* AF3740 8007C5A0 27AE0018 */  addiu $t6, $sp, 0x18
/* AF3744 8007C5A4 E7B00020 */  swc1  $f16, 0x20($sp)
/* AF3748 8007C5A8 46004282 */  mul.s $f10, $f8, $f0
/* AF374C 8007C5AC 8FA20030 */  lw    $v0, 0x30($sp)
/* AF3750 8007C5B0 E7A60018 */  swc1  $f6, 0x18($sp)
/* AF3754 8007C5B4 E7AA001C */  swc1  $f10, 0x1c($sp)
/* AF3758 8007C5B8 8DD80000 */  lw    $t8, ($t6)
/* AF375C 8007C5BC AC580000 */  sw    $t8, ($v0)
/* AF3760 8007C5C0 8DCF0004 */  lw    $t7, 4($t6)
/* AF3764 8007C5C4 AC4F0004 */  sw    $t7, 4($v0)
/* AF3768 8007C5C8 8DD80008 */  lw    $t8, 8($t6)
/* AF376C 8007C5CC AC580008 */  sw    $t8, 8($v0)
/* AF3770 8007C5D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF3774 8007C5D4 27BD0030 */  addiu $sp, $sp, 0x30
/* AF3778 8007C5D8 03E00008 */  jr    $ra
/* AF377C 8007C5DC 00000000 */   nop   
