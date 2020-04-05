.section .data

glabel D_8011DEEC
    .incbin "baserom.z64", 0xB9508C, 0xC

.text
glabel func_8005D2C4
/* AD4464 8005D2C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD4468 8005D2C8 3C0E8012 */  lui   $t6, %hi(D_8011DEEC) # $t6, 0x8012
/* AD446C 8005D2CC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4470 8005D2D0 AFA40028 */  sw    $a0, 0x28($sp)
/* AD4474 8005D2D4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD4478 8005D2D8 25CEDEEC */  addiu $t6, %lo(D_8011DEEC) # addiu $t6, $t6, -0x2114
/* AD447C 8005D2DC 8DD80000 */  lw    $t8, ($t6)
/* AD4480 8005D2E0 27A5001C */  addiu $a1, $sp, 0x1c
/* AD4484 8005D2E4 ACB80000 */  sw    $t8, ($a1)
/* AD4488 8005D2E8 8DCF0004 */  lw    $t7, 4($t6)
/* AD448C 8005D2EC ACAF0004 */  sw    $t7, 4($a1)
/* AD4490 8005D2F0 8DD80008 */  lw    $t8, 8($t6)
/* AD4494 8005D2F4 ACB80008 */  sw    $t8, 8($a1)
/* AD4498 8005D2F8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD449C 8005D2FC 8FA4002C */   lw    $a0, 0x2c($sp)
/* AD44A0 8005D300 8FA4002C */  lw    $a0, 0x2c($sp)
/* AD44A4 8005D304 27A5001C */  addiu $a1, $sp, 0x1c
/* AD44A8 8005D308 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD44AC 8005D30C 2484000C */   addiu $a0, $a0, 0xc
/* AD44B0 8005D310 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD44B4 8005D314 27BD0028 */  addiu $sp, $sp, 0x28
/* AD44B8 8005D318 24020001 */  li    $v0, 1
/* AD44BC 8005D31C 03E00008 */  jr    $ra
/* AD44C0 8005D320 00000000 */   nop   
