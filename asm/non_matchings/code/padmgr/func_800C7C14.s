.rdata
glabel D_80145BE4
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145BF0
    .asciz "this->pad_status[i].type = %x\n"
    .balign 4

glabel D_80145C10
    .asciz "知らない種類のコントローラが接続されています\n"
    # EUC-JP: 知らない種類のコントローラが接続されています | An unknown type of controller is connected
    .balign 4

.text
glabel func_800C7C14
/* B3EDB4 800C7C14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3EDB8 800C7C18 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3EDBC 800C7C1C AFB30020 */  sw    $s3, 0x20($sp)
/* B3EDC0 800C7C20 00809825 */  move  $s3, $a0
/* B3EDC4 800C7C24 AFB2001C */  sw    $s2, 0x1c($sp)
/* B3EDC8 800C7C28 AFB10018 */  sw    $s1, 0x18($sp)
/* B3EDCC 800C7C2C 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B3EDD0 800C7C30 AFB00014 */   sw    $s0, 0x14($sp)
/* B3EDD4 800C7C34 00408825 */  move  $s1, $v0
/* B3EDD8 800C7C38 0C0403BC */  jal   osContStartReadData /*(OSMesgQueue *mq)*/
/* B3EDDC 800C7C3C 00402025 */   move  $a0, $v0
/* B3EDE0 800C7C40 8E630460 */  lw    $v1, 0x460($s3)
/* B3EDE4 800C7C44 10600003 */  beqz  $v1, .L800C7C54
/* B3EDE8 800C7C48 02602025 */   move  $a0, $s3
/* B3EDEC 800C7C4C 0060F809 */  jalr  $v1
/* B3EDF0 800C7C50 8E650464 */  lw    $a1, 0x464($s3)
.L800C7C54:
/* B3EDF4 800C7C54 02202025 */  move  $a0, $s1
/* B3EDF8 800C7C58 00002825 */  move  $a1, $zero
/* B3EDFC 800C7C5C 0C000CA0 */  jal   osRecvMesg
/* B3EE00 800C7C60 24060001 */   li    $a2, 1
/* B3EE04 800C7C64 26700290 */  addiu $s0, $s3, 0x290
/* B3EE08 800C7C68 0C0403DD */  jal osContGetReadData /*(OSContPad *pad)*/
/* B3EE0C 800C7C6C 02002025 */   move  $a0, $s0
/* B3EE10 800C7C70 926E045E */  lbu   $t6, 0x45e($s3)
/* B3EE14 800C7C74 02002025 */  move  $a0, $s0
/* B3EE18 800C7C78 11C00003 */  beqz  $t6, .L800C7C88
/* B3EE1C 800C7C7C 00000000 */   nop   
/* B3EE20 800C7C80 0C001114 */  jal   bzero
/* B3EE24 800C7C84 24050018 */   li    $a1, 24
.L800C7C88:
/* B3EE28 800C7C88 0C031E5D */  jal   func_800C7974
/* B3EE2C 800C7C8C 02602025 */   move  $a0, $s3
/* B3EE30 800C7C90 0C040C84 */  jal   func_80103210
/* B3EE34 800C7C94 02202025 */   move  $a0, $s1
/* B3EE38 800C7C98 02202025 */  move  $a0, $s1
/* B3EE3C 800C7C9C 00002825 */  move  $a1, $zero
/* B3EE40 800C7CA0 0C000CA0 */  jal   osRecvMesg
/* B3EE44 800C7CA4 24060001 */   li    $a2, 1
/* B3EE48 800C7CA8 0C040CA3 */  jal   func_8010328C
/* B3EE4C 800C7CAC 02602025 */   move  $a0, $s3
/* B3EE50 800C7CB0 02602025 */  move  $a0, $s3
/* B3EE54 800C7CB4 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B3EE58 800C7CB8 02202825 */   move  $a1, $s1
/* B3EE5C 800C7CBC 00009025 */  move  $s2, $zero
/* B3EE60 800C7CC0 00008825 */  move  $s1, $zero
/* B3EE64 800C7CC4 02608025 */  move  $s0, $s3
.L800C7CC8:
/* B3EE68 800C7CC8 920F0003 */  lbu   $t7, 3($s0)
/* B3EE6C 800C7CCC 55E00014 */  bnezl $t7, .L800C7D20
/* B3EE70 800C7CD0 26310001 */   addiu $s1, $s1, 1
/* B3EE74 800C7CD4 96180000 */  lhu   $t8, ($s0)
/* B3EE78 800C7CD8 24010005 */  li    $at, 5
/* B3EE7C 800C7CDC 3C048014 */  lui   $a0, %hi(D_80145BE4) # $a0, 0x8014
/* B3EE80 800C7CE0 17010005 */  bne   $t8, $at, .L800C7CF8
/* B3EE84 800C7CE4 24845BE4 */   addiu $a0, %lo(D_80145BE4) # addiu $a0, $a0, 0x5be4
/* B3EE88 800C7CE8 24190001 */  li    $t9, 1
/* B3EE8C 800C7CEC 02394004 */  sllv  $t0, $t9, $s1
/* B3EE90 800C7CF0 1000000A */  b     .L800C7D1C
/* B3EE94 800C7CF4 02489025 */   or    $s2, $s2, $t0
.L800C7CF8:
/* B3EE98 800C7CF8 0C000B84 */  jal   LogUtils_LogThreadId
/* B3EE9C 800C7CFC 240501CA */   li    $a1, 458
/* B3EEA0 800C7D00 3C048014 */  lui   $a0, %hi(D_80145BF0) # $a0, 0x8014
/* B3EEA4 800C7D04 24845BF0 */  addiu $a0, %lo(D_80145BF0) # addiu $a0, $a0, 0x5bf0
/* B3EEA8 800C7D08 0C00084C */  jal   osSyncPrintf
/* B3EEAC 800C7D0C 96050000 */   lhu   $a1, ($s0)
/* B3EEB0 800C7D10 3C048014 */  lui   $a0, %hi(D_80145C10) # $a0, 0x8014
/* B3EEB4 800C7D14 0C00084C */  jal   osSyncPrintf
/* B3EEB8 800C7D18 24845C10 */   addiu $a0, %lo(D_80145C10) # addiu $a0, $a0, 0x5c10
.L800C7D1C:
/* B3EEBC 800C7D1C 26310001 */  addiu $s1, $s1, 1
.L800C7D20:
/* B3EEC0 800C7D20 24010004 */  li    $at, 4
/* B3EEC4 800C7D24 1621FFE8 */  bne   $s1, $at, .L800C7CC8
/* B3EEC8 800C7D28 26100004 */   addiu $s0, $s0, 4
/* B3EECC 800C7D2C A27202A8 */  sb    $s2, 0x2a8($s3)
/* B3EED0 800C7D30 3C098017 */  lui   $t1, %hi(gFaultStruct+0x7CD) # $t1, 0x8017
/* B3EED4 800C7D34 9129B5F5 */  lbu   $t1, %lo(gFaultStruct+0x7CD)($t1)
/* B3EED8 800C7D38 51200006 */  beql  $t1, $zero, .L800C7D54
/* B3EEDC 800C7D3C 926A045C */   lbu   $t2, 0x45c($s3)
/* B3EEE0 800C7D40 0C031E06 */  jal   func_800C7818
/* B3EEE4 800C7D44 02602025 */   move  $a0, $s3
/* B3EEE8 800C7D48 1000001B */  b     .L800C7DB8
/* B3EEEC 800C7D4C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EEF0 800C7D50 926A045C */  lbu   $t2, 0x45c($s3)
.L800C7D54:
/* B3EEF4 800C7D54 59400009 */  blezl $t2, .L800C7D7C
/* B3EEF8 800C7D58 926D045D */   lbu   $t5, 0x45d($s3)
/* B3EEFC 800C7D5C 926B045C */  lbu   $t3, 0x45c($s3)
/* B3EF00 800C7D60 02602025 */  move  $a0, $s3
/* B3EF04 800C7D64 256CFFFF */  addiu $t4, $t3, -1
/* B3EF08 800C7D68 0C031E06 */  jal   func_800C7818
/* B3EF0C 800C7D6C A26C045C */   sb    $t4, 0x45c($s3)
/* B3EF10 800C7D70 10000011 */  b     .L800C7DB8
/* B3EF14 800C7D74 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EF18 800C7D78 926D045D */  lbu   $t5, 0x45d($s3)
.L800C7D7C:
/* B3EF1C 800C7D7C 55A00006 */  bnezl $t5, .L800C7D98
/* B3EF20 800C7D80 926E045E */   lbu   $t6, 0x45e($s3)
/* B3EF24 800C7D84 0C031E06 */  jal   func_800C7818
/* B3EF28 800C7D88 02602025 */   move  $a0, $s3
/* B3EF2C 800C7D8C 1000000A */  b     .L800C7DB8
/* B3EF30 800C7D90 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EF34 800C7D94 926E045E */  lbu   $t6, 0x45e($s3)
.L800C7D98:
/* B3EF38 800C7D98 55C00007 */  bnezl $t6, .L800C7DB8
/* B3EF3C 800C7D9C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EF40 800C7DA0 0C031D03 */  jal   func_800C740C
/* B3EF44 800C7DA4 02602025 */   move  $a0, $s3
/* B3EF48 800C7DA8 926F045D */  lbu   $t7, 0x45d($s3)
/* B3EF4C 800C7DAC 25F8FFFF */  addiu $t8, $t7, -1
/* B3EF50 800C7DB0 A278045D */  sb    $t8, 0x45d($s3)
/* B3EF54 800C7DB4 8FBF0024 */  lw    $ra, 0x24($sp)
.L800C7DB8:
/* B3EF58 800C7DB8 8FB00014 */  lw    $s0, 0x14($sp)
/* B3EF5C 800C7DBC 8FB10018 */  lw    $s1, 0x18($sp)
/* B3EF60 800C7DC0 8FB2001C */  lw    $s2, 0x1c($sp)
/* B3EF64 800C7DC4 8FB30020 */  lw    $s3, 0x20($sp)
/* B3EF68 800C7DC8 03E00008 */  jr    $ra
/* B3EF6C 800C7DCC 27BD0028 */   addiu $sp, $sp, 0x28
