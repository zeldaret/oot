glabel func_8007C7A8
/* AF3948 8007C7A8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AF394C 8007C7AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AF3950 8007C7B0 27AE0034 */  addiu $t6, $sp, 0x34
/* AF3954 8007C7B4 27A80038 */  addiu $t0, $sp, 0x38
/* AF3958 8007C7B8 240F0001 */  li    $t7, 1
/* AF395C 8007C7BC 24180001 */  li    $t8, 1
/* AF3960 8007C7C0 24190001 */  li    $t9, 1
/* AF3964 8007C7C4 AFA00034 */  sw    $zero, 0x34($sp)
/* AF3968 8007C7C8 AFB9001C */  sw    $t9, 0x1c($sp)
/* AF396C 8007C7CC AFB80018 */  sw    $t8, 0x18($sp)
/* AF3970 8007C7D0 AFAF0014 */  sw    $t7, 0x14($sp)
/* AF3974 8007C7D4 AFA80024 */  sw    $t0, 0x24($sp)
/* AF3978 8007C7D8 AFAE0010 */  sw    $t6, 0x10($sp)
/* AF397C 8007C7DC 27A7003C */  addiu $a3, $sp, 0x3c
/* AF3980 8007C7E0 0C00F75B */  jal   func_8003DD6C
/* AF3984 8007C7E4 AFA00020 */   sw    $zero, 0x20($sp)
/* AF3988 8007C7E8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AF398C 8007C7EC 27BD0048 */  addiu $sp, $sp, 0x48
/* AF3990 8007C7F0 03E00008 */  jr    $ra
/* AF3994 8007C7F4 00000000 */   nop   

