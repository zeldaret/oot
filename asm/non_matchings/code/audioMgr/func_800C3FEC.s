glabel func_800C3FEC
/* B3B18C 800C3FEC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3B190 800C3FF0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3B194 800C3FF4 AFB00020 */  sw    $s0, 0x20($sp)
/* B3B198 800C3FF8 AFA50034 */  sw    $a1, 0x34($sp)
/* B3B19C 800C3FFC 00808025 */  move  $s0, $a0
/* B3B1A0 800C4000 AFA60038 */  sw    $a2, 0x38($sp)
/* B3B1A4 800C4004 AFA7003C */  sw    $a3, 0x3c($sp)
/* B3B1A8 800C4008 0C001114 */  jal   bzero
/* B3B1AC 800C400C 24050298 */   li    $a1, 664
/* B3B1B0 800C4010 8FAE0040 */  lw    $t6, 0x40($sp)
/* B3B1B4 800C4014 260400AC */  addiu $a0, $s0, 0xac
/* B3B1B8 800C4018 260500C4 */  addiu $a1, $s0, 0xc4
/* B3B1BC 800C401C AE0E0004 */  sw    $t6, 4($s0)
/* B3B1C0 800C4020 8FAF0044 */  lw    $t7, 0x44($sp)
/* B3B1C4 800C4024 AE000070 */  sw    $zero, 0x70($s0)
/* B3B1C8 800C4028 24060001 */  li    $a2, 1
/* B3B1CC 800C402C AE0F0000 */  sw    $t7, ($s0)
/* B3B1D0 800C4030 0C001874 */  jal   osCreateMesgQueue
/* B3B1D4 800C4034 AFA4002C */   sw    $a0, 0x2c($sp)
/* B3B1D8 800C4038 26040074 */  addiu $a0, $s0, 0x74
/* B3B1DC 800C403C 2605008C */  addiu $a1, $s0, 0x8c
/* B3B1E0 800C4040 0C001874 */  jal   osCreateMesgQueue
/* B3B1E4 800C4044 24060008 */   li    $a2, 8
/* B3B1E8 800C4048 260400C8 */  addiu $a0, $s0, 0xc8
/* B3B1EC 800C404C 260500E0 */  addiu $a1, $s0, 0xe0
/* B3B1F0 800C4050 0C001874 */  jal   osCreateMesgQueue
/* B3B1F4 800C4054 24060001 */   li    $a2, 1
/* B3B1F8 800C4058 8FA4002C */  lw    $a0, 0x2c($sp)
/* B3B1FC 800C405C 00002825 */  move  $a1, $zero
/* B3B200 800C4060 0C000C18 */  jal   osSendMesg
/* B3B204 800C4064 24060001 */   li    $a2, 1
/* B3B208 800C4068 8FB80034 */  lw    $t8, 0x34($sp)
/* B3B20C 800C406C 8FB90038 */  lw    $t9, 0x38($sp)
/* B3B210 800C4070 260400E8 */  addiu $a0, $s0, 0xe8
/* B3B214 800C4074 3C06800C */  lui   $a2, %hi(func_800C3E70) # $a2, 0x800c
/* B3B218 800C4078 24C63E70 */  addiu $a2, %lo(func_800C3E70) # addiu $a2, $a2, 0x3e70
/* B3B21C 800C407C AFA4002C */  sw    $a0, 0x2c($sp)
/* B3B220 800C4080 8FA5003C */  lw    $a1, 0x3c($sp)
/* B3B224 800C4084 02003825 */  move  $a3, $s0
/* B3B228 800C4088 AFB80010 */  sw    $t8, 0x10($sp)
/* B3B22C 800C408C 0C001154 */  jal   osCreateThread
/* B3B230 800C4090 AFB90014 */   sw    $t9, 0x14($sp)
/* B3B234 800C4094 0C0023F0 */  jal   osStartThread
/* B3B238 800C4098 8FA4002C */   lw    $a0, 0x2c($sp)
/* B3B23C 800C409C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B3B240 800C40A0 8FB00020 */  lw    $s0, 0x20($sp)
/* B3B244 800C40A4 27BD0030 */  addiu $sp, $sp, 0x30
/* B3B248 800C40A8 03E00008 */  jr    $ra
/* B3B24C 800C40AC 00000000 */   nop   
