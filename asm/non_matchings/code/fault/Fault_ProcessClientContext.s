glabel Fault_ProcessClientContext
/* B4B1A4 800D4004 3C0DFFFA */  lui   $t5, (0xFFFA5A5A >> 16) # lui $t5, 0xfffa
/* B4B1A8 800D4008 03A07025 */  move  $t6, $sp
/* B4B1AC 800D400C 27BDFF58 */  addiu $sp, $sp, -0xa8
/* B4B1B0 800D4010 35AD5A5A */  ori   $t5, (0xFFFA5A5A & 0xFFFF) # ori $t5, $t5, 0x5a5a
.L800D4014:
/* B4B1B4 800D4014 25CEFFF8 */  addiu $t6, $t6, -8
/* B4B1B8 800D4018 ADCD0000 */  sw    $t5, ($t6)
/* B4B1BC 800D401C 15DDFFFD */  bne   $t6, $sp, .L800D4014
/* B4B1C0 800D4020 ADCD0004 */   sw    $t5, 4($t6)
/* B4B1C4 800D4024 AFBE0050 */  sw    $fp, 0x50($sp)
/* B4B1C8 800D4028 AFB00038 */  sw    $s0, 0x38($sp)
/* B4B1CC 800D402C 27B00090 */  addiu $s0, $sp, 0x90
/* B4B1D0 800D4030 03A0F025 */  move  $fp, $sp
/* B4B1D4 800D4034 AFBF0054 */  sw    $ra, 0x54($sp)
/* B4B1D8 800D4038 AFB5004C */  sw    $s5, 0x4c($sp)
/* B4B1DC 800D403C AFB40048 */  sw    $s4, 0x48($sp)
/* B4B1E0 800D4040 AFB30044 */  sw    $s3, 0x44($sp)
/* B4B1E4 800D4044 AFB20040 */  sw    $s2, 0x40($sp)
/* B4B1E8 800D4048 AFB1003C */  sw    $s1, 0x3c($sp)
/* B4B1EC 800D404C AFA400A8 */  sw    $a0, 0xa8($sp)
/* B4B1F0 800D4050 0000A825 */  move  $s5, $zero
/* B4B1F4 800D4054 02002025 */  move  $a0, $s0
/* B4B1F8 800D4058 27C5008C */  addiu $a1, $fp, 0x8c
/* B4B1FC 800D405C 0C001874 */  jal   osCreateMesgQueue
/* B4B200 800D4060 24060001 */   li    $a2, 1
/* B4B204 800D4064 8FC700A8 */  lw    $a3, 0xa8($fp)
/* B4B208 800D4068 3C0E8017 */  lui   $t6, %hi(sFaultStructPtr) # $t6, 0x8017
/* B4B20C 800D406C 3C06800D */  lui   $a2, %hi(Fault_ClientProcessThread) # $a2, 0x800d
/* B4B210 800D4070 ACF00010 */  sw    $s0, 0x10($a3)
/* B4B214 800D4074 ACE00014 */  sw    $zero, 0x14($a3)
/* B4B218 800D4078 8DCEA800 */  lw    $t6, %lo(sFaultStructPtr)($t6)
/* B4B21C 800D407C 24C63F90 */  addiu $a2, %lo(Fault_ClientProcessThread) # addiu $a2, $a2, 0x3f90
/* B4B220 800D4080 24050002 */  li    $a1, 2
/* B4B224 800D4084 8DC20848 */  lw    $v0, 0x848($t6)
/* B4B228 800D4088 240F007E */  li    $t7, 126
/* B4B22C 800D408C 1040000B */  beqz  $v0, .L800D40BC
/* B4B230 800D4090 00000000 */   nop   
/* B4B234 800D4094 27BDFE50 */  addiu $sp, $sp, -0x1b0
/* B4B238 800D4098 27B50020 */  addiu $s5, $sp, 0x20
/* B4B23C 800D409C 02A02025 */  move  $a0, $s5
/* B4B240 800D40A0 AFA20010 */  sw    $v0, 0x10($sp)
/* B4B244 800D40A4 0C001154 */  jal   osCreateThread
/* B4B248 800D40A8 AFAF0014 */   sw    $t7, 0x14($sp)
/* B4B24C 800D40AC 0C0023F0 */  jal   osStartThread
/* B4B250 800D40B0 02A02025 */   move  $a0, $s5
/* B4B254 800D40B4 10000003 */  b     .L800D40C4
/* B4B258 800D40B8 00000000 */   nop   
.L800D40BC:
/* B4B25C 800D40BC 0C034FE4 */  jal   Fault_ClientProcessThread
/* B4B260 800D40C0 00E02025 */   move  $a0, $a3
.L800D40C4:
/* B4B264 800D40C4 3C138017 */  lui   $s3, %hi(sFaultIsWaitingForInput) # $s3, 0x8017
/* B4B268 800D40C8 2673A804 */  addiu $s3, %lo(sFaultIsWaitingForInput) # addiu $s3, $s3, -0x57fc
/* B4B26C 800D40CC 27D40060 */  addiu $s4, $fp, 0x60
/* B4B270 800D40D0 2412029A */  li    $s2, 666
/* B4B274 800D40D4 27D10088 */  addiu $s1, $fp, 0x88
/* B4B278 800D40D8 3C0702CB */  lui   $a3, (0x02CB4178 >> 16) # lui $a3, 0x2cb
.L800D40DC:
/* B4B27C 800D40DC 24180000 */  li    $t8, 0
/* B4B280 800D40E0 24190000 */  li    $t9, 0
/* B4B284 800D40E4 2408029A */  li    $t0, 666
/* B4B288 800D40E8 AFA8001C */  sw    $t0, 0x1c($sp)
/* B4B28C 800D40EC AFB90014 */  sw    $t9, 0x14($sp)
/* B4B290 800D40F0 AFB80010 */  sw    $t8, 0x10($sp)
/* B4B294 800D40F4 34E74178 */  ori   $a3, (0x02CB4178 & 0xFFFF) # ori $a3, $a3, 0x4178
/* B4B298 800D40F8 02802025 */  move  $a0, $s4
/* B4B29C 800D40FC 24060000 */  li    $a2, 0
/* B4B2A0 800D4100 0C0418B8 */  jal   osSetTimer
/* B4B2A4 800D4104 AFB00018 */   sw    $s0, 0x18($sp)
/* B4B2A8 800D4108 02002025 */  move  $a0, $s0
/* B4B2AC 800D410C 02202825 */  move  $a1, $s1
/* B4B2B0 800D4110 0C000CA0 */  jal   osRecvMesg
/* B4B2B4 800D4114 24060001 */   li    $a2, 1
/* B4B2B8 800D4118 8FC90088 */  lw    $t1, 0x88($fp)
/* B4B2BC 800D411C 15320007 */  bne   $t1, $s2, .L800D413C
/* B4B2C0 800D4120 00000000 */   nop   
/* B4B2C4 800D4124 926A0000 */  lbu   $t2, ($s3)
/* B4B2C8 800D4128 5540FFEC */  bnezl $t2, .L800D40DC
/* B4B2CC 800D412C 3C0702CB */   lui   $a3, 0x2cb
/* B4B2D0 800D4130 8FCC00A8 */  lw    $t4, 0xa8($fp)
/* B4B2D4 800D4134 240BFFFF */  li    $t3, -1
/* B4B2D8 800D4138 AD8B000C */  sw    $t3, 0xc($t4)
.L800D413C:
/* B4B2DC 800D413C 0C0408CC */  jal   osStopTimer
/* B4B2E0 800D4140 02802025 */   move  $a0, $s4
/* B4B2E4 800D4144 52A00006 */  beql  $s5, $zero, .L800D4160
/* B4B2E8 800D4148 8FDF0054 */   lw    $ra, 0x54($fp)
/* B4B2EC 800D414C 0C000C6C */  jal   osStopThread
/* B4B2F0 800D4150 02A02025 */   move  $a0, $s5
/* B4B2F4 800D4154 0C0010D0 */  jal   osDestroyThread
/* B4B2F8 800D4158 02A02025 */   move  $a0, $s5
/* B4B2FC 800D415C 8FDF0054 */  lw    $ra, 0x54($fp)
.L800D4160:
/* B4B300 800D4160 03C0E825 */  move  $sp, $fp
/* B4B304 800D4164 8FD00038 */  lw    $s0, 0x38($fp)
/* B4B308 800D4168 8FD1003C */  lw    $s1, 0x3c($fp)
/* B4B30C 800D416C 8FD20040 */  lw    $s2, 0x40($fp)
/* B4B310 800D4170 8FD30044 */  lw    $s3, 0x44($fp)
/* B4B314 800D4174 8FD40048 */  lw    $s4, 0x48($fp)
/* B4B318 800D4178 8FD5004C */  lw    $s5, 0x4c($fp)
/* B4B31C 800D417C 8FDE0050 */  lw    $fp, 0x50($fp)
/* B4B320 800D4180 03E00008 */  jr    $ra
/* B4B324 800D4184 27BD00A8 */   addiu $sp, $sp, 0xa8

