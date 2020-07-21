glabel func_800FA034
/* B711D4 800FA034 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B711D8 800FA038 AFB2001C */  sw    $s2, 0x1c($sp)
/* B711DC 800FA03C AFB10018 */  sw    $s1, 0x18($sp)
/* B711E0 800FA040 3C118013 */  lui   $s1, %hi(D_80133404) # $s1, 0x8013
/* B711E4 800FA044 3C128013 */  lui   $s2, %hi(D_80133400) # $s2, 0x8013
/* B711E8 800FA048 26523400 */  addiu $s2, %lo(D_80133400) # addiu $s2, $s2, 0x3400
/* B711EC 800FA04C 26313404 */  addiu $s1, %lo(D_80133404) # addiu $s1, $s1, 0x3404
/* B711F0 800FA050 AFB00014 */  sw    $s0, 0x14($sp)
/* B711F4 800FA054 92300000 */  lbu   $s0, ($s1)
/* B711F8 800FA058 924E0000 */  lbu   $t6, ($s2)
/* B711FC 800FA05C AFB30020 */  sw    $s3, 0x20($sp)
/* B71200 800FA060 AFBF0024 */  sw    $ra, 0x24($sp)
/* B71204 800FA064 120E000C */  beq   $s0, $t6, .L800FA098
/* B71208 800FA068 3C138017 */   lui   $s3, %hi(D_8016E350) # $s3, 0x8017
/* B7120C 800FA06C 2673E350 */  addiu $s3, %lo(D_8016E350) # addiu $s3, $s3, -0x1cb0
/* B71210 800FA070 00107880 */  sll   $t7, $s0, 2
.L800FA074:
/* B71214 800FA074 026FC021 */  addu  $t8, $s3, $t7
/* B71218 800FA078 8F040000 */  lw    $a0, ($t8)
/* B7121C 800FA07C 26190001 */  addiu $t9, $s0, 1
/* B71220 800FA080 0C03E53F */  jal   func_800F94FC
/* B71224 800FA084 A2390000 */   sb    $t9, ($s1)
/* B71228 800FA088 92300000 */  lbu   $s0, ($s1)
/* B7122C 800FA08C 92480000 */  lbu   $t0, ($s2)
/* B71230 800FA090 5608FFF8 */  bnel  $s0, $t0, .L800FA074
/* B71234 800FA094 00107880 */   sll   $t7, $s0, 2
.L800FA098:
/* B71238 800FA098 8FBF0024 */  lw    $ra, 0x24($sp)
/* B7123C 800FA09C 8FB00014 */  lw    $s0, 0x14($sp)
/* B71240 800FA0A0 8FB10018 */  lw    $s1, 0x18($sp)
/* B71244 800FA0A4 8FB2001C */  lw    $s2, 0x1c($sp)
/* B71248 800FA0A8 8FB30020 */  lw    $s3, 0x20($sp)
/* B7124C 800FA0AC 03E00008 */  jr    $ra
/* B71250 800FA0B0 27BD0028 */   addiu $sp, $sp, 0x28

