glabel func_8005D334
/* AD44D4 8005D334 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD44D8 8005D338 AFA40018 */  sw    $a0, 0x18($sp)
/* AD44DC 8005D33C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD44E0 8005D340 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD44E4 8005D344 00A02025 */  move  $a0, $a1
/* AD44E8 8005D348 AFA70024 */  sw    $a3, 0x24($sp)
/* AD44EC 8005D34C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD44F0 8005D350 00C02825 */   move  $a1, $a2
/* AD44F4 8005D354 8FA4001C */  lw    $a0, 0x1c($sp)
/* AD44F8 8005D358 8FA50024 */  lw    $a1, 0x24($sp)
/* AD44FC 8005D35C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AD4500 8005D360 2484000C */   addiu $a0, $a0, 0xc
/* AD4504 8005D364 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4508 8005D368 27BD0018 */  addiu $sp, $sp, 0x18
/* AD450C 8005D36C 24020001 */  li    $v0, 1
/* AD4510 8005D370 03E00008 */  jr    $ra
/* AD4514 8005D374 00000000 */   nop   

/* AD4518 8005D378 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD451C 8005D37C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4520 8005D380 94CE0018 */  lhu   $t6, 0x18($a2)
/* AD4524 8005D384 24C7000C */  addiu $a3, $a2, 0xc
/* AD4528 8005D388 0C0174CD */  jal   func_8005D334
/* AD452C 8005D38C A4AE0018 */   sh    $t6, 0x18($a1)
/* AD4530 8005D390 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4534 8005D394 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4538 8005D398 24020001 */  li    $v0, 1
/* AD453C 8005D39C 03E00008 */  jr    $ra
/* AD4540 8005D3A0 00000000 */   nop   

