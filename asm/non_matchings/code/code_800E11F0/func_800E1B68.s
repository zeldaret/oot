glabel func_800E1B68
/* B58D08 800E1B68 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B58D0C 800E1B6C AFB30020 */  sw    $s3, 0x20($sp)
/* B58D10 800E1B70 3C138017 */  lui   $s3, %hi(gAudioContext) # $s3, 0x8017
/* B58D14 800E1B74 2673F180 */  addiu $s3, %lo(gAudioContext) # addiu $s3, $s3, -0xe80
/* B58D18 800E1B78 966E2840 */  lhu   $t6, 0x2840($s3)
/* B58D1C 800E1B7C AFBF0024 */  sw    $ra, 0x24($sp)
/* B58D20 800E1B80 AFB2001C */  sw    $s2, 0x1c($sp)
/* B58D24 800E1B84 008E082A */  slt   $at, $a0, $t6
/* B58D28 800E1B88 AFB10018 */  sw    $s1, 0x18($sp)
/* B58D2C 800E1B8C AFB00014 */  sw    $s0, 0x14($sp)
/* B58D30 800E1B90 14200003 */  bnez  $at, .L800E1BA0
/* B58D34 800E1B94 AFA5003C */   sw    $a1, 0x3c($sp)
/* B58D38 800E1B98 10000018 */  b     .L800E1BFC
/* B58D3C 800E1B9C 00001025 */   move  $v0, $zero
.L800E1BA0:
/* B58D40 800E1BA0 8E62283C */  lw    $v0, 0x283c($s3)
/* B58D44 800E1BA4 00047840 */  sll   $t7, $a0, 1
/* B58D48 800E1BA8 241200FF */  li    $s2, 255
/* B58D4C 800E1BAC 004FC021 */  addu  $t8, $v0, $t7
/* B58D50 800E1BB0 97100000 */  lhu   $s0, ($t8)
/* B58D54 800E1BB4 0202C821 */  addu  $t9, $s0, $v0
/* B58D58 800E1BB8 93310000 */  lbu   $s1, ($t9)
/* B58D5C 800E1BBC 26100001 */  addiu $s0, $s0, 1
/* B58D60 800E1BC0 5A20000C */  blezl $s1, .L800E1BF4
/* B58D64 800E1BC4 8FAA003C */   lw    $t2, 0x3c($sp)
/* B58D68 800E1BC8 8E68283C */  lw    $t0, 0x283c($s3)
.L800E1BCC:
/* B58D6C 800E1BCC 02084821 */  addu  $t1, $s0, $t0
/* B58D70 800E1BD0 91320000 */  lbu   $s2, ($t1)
/* B58D74 800E1BD4 26100001 */  addiu $s0, $s0, 1
/* B58D78 800E1BD8 0C038915 */  jal   func_800E2454
/* B58D7C 800E1BDC 02402025 */   move  $a0, $s2
/* B58D80 800E1BE0 2631FFFF */  addiu $s1, $s1, -1
/* B58D84 800E1BE4 5E20FFF9 */  bgtzl $s1, .L800E1BCC
/* B58D88 800E1BE8 8E68283C */   lw    $t0, 0x283c($s3)
/* B58D8C 800E1BEC AFA20028 */  sw    $v0, 0x28($sp)
/* B58D90 800E1BF0 8FAA003C */  lw    $t2, 0x3c($sp)
.L800E1BF4:
/* B58D94 800E1BF4 8FA20028 */  lw    $v0, 0x28($sp)
/* B58D98 800E1BF8 AD520000 */  sw    $s2, ($t2)
.L800E1BFC:
/* B58D9C 800E1BFC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B58DA0 800E1C00 8FB00014 */  lw    $s0, 0x14($sp)
/* B58DA4 800E1C04 8FB10018 */  lw    $s1, 0x18($sp)
/* B58DA8 800E1C08 8FB2001C */  lw    $s2, 0x1c($sp)
/* B58DAC 800E1C0C 8FB30020 */  lw    $s3, 0x20($sp)
/* B58DB0 800E1C10 03E00008 */  jr    $ra
/* B58DB4 800E1C14 27BD0038 */   addiu $sp, $sp, 0x38

