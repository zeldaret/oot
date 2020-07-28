glabel func_800F4B58
/* B6BCF8 800F4B58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6BCFC 800F4B5C AFA60028 */  sw    $a2, 0x28($sp)
/* B6BD00 800F4B60 3C0E8013 */  lui   $t6, %hi(D_801305CC) # $t6, 0x8013
/* B6BD04 800F4B64 91CE05CC */  lbu   $t6, %lo(D_801305CC)($t6)
/* B6BD08 800F4B68 8FAF0028 */  lw    $t7, 0x28($sp)
/* B6BD0C 800F4B6C AFBF001C */  sw    $ra, 0x1c($sp)
/* B6BD10 800F4B70 AFA40020 */  sw    $a0, 0x20($sp)
/* B6BD14 800F4B74 AFA50024 */  sw    $a1, 0x24($sp)
/* B6BD18 800F4B78 01CFC021 */  addu  $t8, $t6, $t7
/* B6BD1C 800F4B7C 93190000 */  lbu   $t9, ($t8)
/* B6BD20 800F4B80 3C0A8013 */  lui   $t2, %hi(D_8012F8B4) # $t2, 0x8013
/* B6BD24 800F4B84 3C0B8013 */  lui   $t3, %hi(D_801333E0) # $t3, 0x8013
/* B6BD28 800F4B88 3C0C8013 */  lui   $t4, %hi(D_801333E8) # $t4, 0x8013
/* B6BD2C 800F4B8C 00194080 */  sll   $t0, $t9, 2
/* B6BD30 800F4B90 00802825 */  move  $a1, $a0
/* B6BD34 800F4B94 2509009C */  addiu $t1, $t0, 0x9c
/* B6BD38 800F4B98 258C33E8 */  addiu $t4, %lo(D_801333E8) # addiu $t4, $t4, 0x33e8
/* B6BD3C 800F4B9C 256B33E0 */  addiu $t3, %lo(D_801333E0) # addiu $t3, $t3, 0x33e0
/* B6BD40 800F4BA0 254AF8B4 */  addiu $t2, %lo(D_8012F8B4) # addiu $t2, $t2, -0x74c
/* B6BD44 800F4BA4 012A3821 */  addu  $a3, $t1, $t2
/* B6BD48 800F4BA8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B6BD4C 800F4BAC AFAC0014 */  sw    $t4, 0x14($sp)
/* B6BD50 800F4BB0 97A40026 */  lhu   $a0, 0x26($sp)
/* B6BD54 800F4BB4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6BD58 800F4BB8 24060004 */   li    $a2, 4
/* B6BD5C 800F4BBC 3C038013 */  lui   $v1, %hi(D_801305CC) # $v1, 0x8013
/* B6BD60 800F4BC0 246305CC */  addiu $v1, %lo(D_801305CC) # addiu $v1, $v1, 0x5cc
/* B6BD64 800F4BC4 90620000 */  lbu   $v0, ($v1)
/* B6BD68 800F4BC8 2841000F */  slti  $at, $v0, 0xf
/* B6BD6C 800F4BCC 10200002 */  beqz  $at, .L800F4BD8
/* B6BD70 800F4BD0 244D0001 */   addiu $t5, $v0, 1
/* B6BD74 800F4BD4 A06D0000 */  sb    $t5, ($v1)
.L800F4BD8:
/* B6BD78 800F4BD8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6BD7C 800F4BDC 27BD0020 */  addiu $sp, $sp, 0x20
/* B6BD80 800F4BE0 03E00008 */  jr    $ra
/* B6BD84 800F4BE4 00000000 */   nop   

