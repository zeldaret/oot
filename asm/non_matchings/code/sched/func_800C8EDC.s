.rdata
glabel D_8014607C
    .asciz "[YIELD B]"
    .balign 4

glabel D_80146088
    .asciz "EN sc:%08x sp:%08x dp:%08x state:%x\n"
    .balign 4

.text
glabel func_800C8EDC
/* B4007C 800C8EDC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B40080 800C8EE0 AFB30028 */  sw    $s3, 0x28($sp)
/* B40084 800C8EE4 AFB20024 */  sw    $s2, 0x24($sp)
/* B40088 800C8EE8 AFB10020 */  sw    $s1, 0x20($sp)
/* B4008C 800C8EEC 27B20038 */  addiu $s2, $sp, 0x38
/* B40090 800C8EF0 00809825 */  move  $s3, $a0
/* B40094 800C8EF4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B40098 800C8EF8 24910038 */  addiu $s1, $a0, 0x38
/* B4009C 800C8EFC AFB0001C */  sw    $s0, 0x1c($sp)
/* B400A0 800C8F00 AFA00044 */  sw    $zero, 0x44($sp)
/* B400A4 800C8F04 AFA00040 */  sw    $zero, 0x40($sp)
/* B400A8 800C8F08 AFA00038 */  sw    $zero, 0x38($sp)
/* B400AC 800C8F0C 02202025 */  move  $a0, $s1
/* B400B0 800C8F10 02402825 */  move  $a1, $s2
/* B400B4 800C8F14 0C000CA0 */  jal   osRecvMesg
/* B400B8 800C8F18 00003025 */   move  $a2, $zero
/* B400BC 800C8F1C 2410FFFF */  li    $s0, -1
/* B400C0 800C8F20 10500009 */  beq   $v0, $s0, .L800C8F48
/* B400C4 800C8F24 02602025 */   move  $a0, $s3
.L800C8F28:
/* B400C8 800C8F28 0C0321FC */  jal   func_800C87F0
/* B400CC 800C8F2C 8FA50038 */   lw    $a1, 0x38($sp)
/* B400D0 800C8F30 02202025 */  move  $a0, $s1
/* B400D4 800C8F34 02402825 */  move  $a1, $s2
/* B400D8 800C8F38 0C000CA0 */  jal   osRecvMesg
/* B400DC 800C8F3C 00003025 */   move  $a2, $zero
/* B400E0 800C8F40 5450FFF9 */  bnel  $v0, $s0, .L800C8F28
/* B400E4 800C8F44 02602025 */   move  $a0, $s3
.L800C8F48:
/* B400E8 800C8F48 8E6E023C */  lw    $t6, 0x23c($s3)
/* B400EC 800C8F4C 02602025 */  move  $a0, $s3
/* B400F0 800C8F50 27A50044 */  addiu $a1, $sp, 0x44
/* B400F4 800C8F54 51C00011 */  beql  $t6, $zero, .L800C8F9C
/* B400F8 800C8F58 8E680230 */   lw    $t0, 0x230($s3)
/* B400FC 800C8F5C 8E6F0230 */  lw    $t7, 0x230($s3)
/* B40100 800C8F60 3C188013 */  lui   $t8, %hi(D_8012D290) # $t8, 0x8013
/* B40104 800C8F64 2718D290 */  addiu $t8, %lo(D_8012D290) # addiu $t8, $t8, -0x2d70
/* B40108 800C8F68 51E0000C */  beql  $t7, $zero, .L800C8F9C
/* B4010C 800C8F6C 8E680230 */   lw    $t0, 0x230($s3)
/* B40110 800C8F70 8F190000 */  lw    $t9, ($t8)
/* B40114 800C8F74 3C048014 */  lui   $a0, %hi(D_8014607C) # $a0, 0x8014
/* B40118 800C8F78 13200003 */  beqz  $t9, .L800C8F88
/* B4011C 800C8F7C 00000000 */   nop   
/* B40120 800C8F80 0C00084C */  jal   osSyncPrintf
/* B40124 800C8F84 2484607C */   addiu $a0, %lo(D_8014607C) # addiu $a0, $a0, 0x607c
.L800C8F88:
/* B40128 800C8F88 0C032244 */  jal   func_800C8910
/* B4012C 800C8F8C 02602025 */   move  $a0, $s3
/* B40130 800C8F90 1000001B */  b     .L800C9000
/* B40134 800C8F94 8FBF002C */   lw    $ra, 0x2c($sp)
/* B40138 800C8F98 8E680230 */  lw    $t0, 0x230($s3)
.L800C8F9C:
/* B4013C 800C8F9C 8E6B0234 */  lw    $t3, 0x234($s3)
/* B40140 800C8FA0 27A60040 */  addiu $a2, $sp, 0x40
/* B40144 800C8FA4 2D090001 */  sltiu $t1, $t0, 1
/* B40148 800C8FA8 00095040 */  sll   $t2, $t1, 1
/* B4014C 800C8FAC 2D6C0001 */  sltiu $t4, $t3, 1
/* B40150 800C8FB0 014C8025 */  or    $s0, $t2, $t4
/* B40154 800C8FB4 0C0322A5 */  jal   func_800C8A94
/* B40158 800C8FB8 02003825 */   move  $a3, $s0
/* B4015C 800C8FBC 10500004 */  beq   $v0, $s0, .L800C8FD0
/* B40160 800C8FC0 02602025 */   move  $a0, $s3
/* B40164 800C8FC4 8FA50044 */  lw    $a1, 0x44($sp)
/* B40168 800C8FC8 0C03232E */  jal   func_800C8CB8
/* B4016C 800C8FCC 8FA60040 */   lw    $a2, 0x40($sp)
.L800C8FD0:
/* B40170 800C8FD0 3C0D8013 */  lui   $t5, %hi(D_8012D290) # $t5, 0x8013
/* B40174 800C8FD4 25ADD290 */  addiu $t5, %lo(D_8012D290) # addiu $t5, $t5, -0x2d70
/* B40178 800C8FD8 8DAE0000 */  lw    $t6, ($t5)
/* B4017C 800C8FDC 3C048014 */  lui   $a0, %hi(D_80146088) # $a0, 0x8014
/* B40180 800C8FE0 24846088 */  addiu $a0, %lo(D_80146088) # addiu $a0, $a0, 0x6088
/* B40184 800C8FE4 11C00005 */  beqz  $t6, .L800C8FFC
/* B40188 800C8FE8 02602825 */   move  $a1, $s3
/* B4018C 800C8FEC 8FA60044 */  lw    $a2, 0x44($sp)
/* B40190 800C8FF0 8FA70040 */  lw    $a3, 0x40($sp)
/* B40194 800C8FF4 0C00084C */  jal   osSyncPrintf
/* B40198 800C8FF8 AFB00010 */   sw    $s0, 0x10($sp)
.L800C8FFC:
/* B4019C 800C8FFC 8FBF002C */  lw    $ra, 0x2c($sp)
.L800C9000:
/* B401A0 800C9000 8FB0001C */  lw    $s0, 0x1c($sp)
/* B401A4 800C9004 8FB10020 */  lw    $s1, 0x20($sp)
/* B401A8 800C9008 8FB20024 */  lw    $s2, 0x24($sp)
/* B401AC 800C900C 8FB30028 */  lw    $s3, 0x28($sp)
/* B401B0 800C9010 03E00008 */  jr    $ra
/* B401B4 800C9014 27BD0048 */   addiu $sp, $sp, 0x48

