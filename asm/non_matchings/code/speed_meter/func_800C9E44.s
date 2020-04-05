.rdata
glabel D_80146274
    .asciz "\x1b[31m"
    .balign 4

glabel D_8014627C
    .asciz "../speed_meter.c"
    .balign 4

glabel D_80146290
    .asciz "this->maxval = %d\n"
    .balign 4

glabel D_801462A4
    .asciz "\x1b[m"
    .balign 4

glabel D_801462A8
    .asciz "../speed_meter.c"
    .balign 4

glabel D_801462BC
    .asciz "../speed_meter.c"
    .balign 4

.text
glabel func_800C9E44
/* B40FE4 800C9E44 27BDFE50 */  addiu $sp, $sp, -0x1b0
/* B40FE8 800C9E48 AFBF001C */  sw    $ra, 0x1c($sp)
/* B40FEC 800C9E4C AFB00018 */  sw    $s0, 0x18($sp)
/* B40FF0 800C9E50 AFA501B4 */  sw    $a1, 0x1b4($sp)
/* B40FF4 800C9E54 8C8E0000 */  lw    $t6, ($a0)
/* B40FF8 800C9E58 00808025 */  move  $s0, $a0
/* B40FFC 800C9E5C 27A40068 */  addiu $a0, $sp, 0x68
/* B41000 800C9E60 15C00011 */  bnez  $t6, .L800C9EA8
/* B41004 800C9E64 8FA501B4 */   lw    $a1, 0x1b4($sp)
/* B41008 800C9E68 3C048014 */  lui   $a0, %hi(D_80146274) # $a0, 0x8014
/* B4100C 800C9E6C 0C00084C */  jal   osSyncPrintf
/* B41010 800C9E70 24846274 */   addiu $a0, %lo(D_80146274) # addiu $a0, $a0, 0x6274
/* B41014 800C9E74 3C048014 */  lui   $a0, %hi(D_8014627C) # $a0, 0x8014
/* B41018 800C9E78 2484627C */  addiu $a0, %lo(D_8014627C) # addiu $a0, $a0, 0x627c
/* B4101C 800C9E7C 0C000B84 */  jal   LogUtils_LogThreadId
/* B41020 800C9E80 24050139 */   li    $a1, 313
/* B41024 800C9E84 3C048014 */  lui   $a0, %hi(D_80146290) # $a0, 0x8014
/* B41028 800C9E88 24846290 */  addiu $a0, %lo(D_80146290) # addiu $a0, $a0, 0x6290
/* B4102C 800C9E8C 0C00084C */  jal   osSyncPrintf
/* B41030 800C9E90 8E050000 */   lw    $a1, ($s0)
/* B41034 800C9E94 3C048014 */  lui   $a0, %hi(D_801462A4) # $a0, 0x8014
/* B41038 800C9E98 0C00084C */  jal   osSyncPrintf
/* B4103C 800C9E9C 248462A4 */   addiu $a0, %lo(D_801462A4) # addiu $a0, $a0, 0x62a4
/* B41040 800C9EA0 10000094 */  b     .L800CA0F4
/* B41044 800C9EA4 8FBF001C */   lw    $ra, 0x1c($sp)
.L800C9EA8:
/* B41048 800C9EA8 3C068014 */  lui   $a2, %hi(D_801462A8) # $a2, 0x8014
/* B4104C 800C9EAC 24C662A8 */  addiu $a2, %lo(D_801462A8) # addiu $a2, $a2, 0x62a8
/* B41050 800C9EB0 0C031AB1 */  jal   Graph_OpenDisps
/* B41054 800C9EB4 2407013E */   li    $a3, 318
/* B41058 800C9EB8 27A40080 */  addiu $a0, $sp, 0x80
/* B4105C 800C9EBC 0C02A89E */  jal   func_800AA278
/* B41060 800C9EC0 8FA501B4 */   lw    $a1, 0x1b4($sp)
/* B41064 800C9EC4 240F000A */  li    $t7, 10
/* B41068 800C9EC8 241800F0 */  li    $t8, 240
/* B4106C 800C9ECC 24190140 */  li    $t9, 320
/* B41070 800C9ED0 AFAF01A0 */  sw    $t7, 0x1a0($sp)
/* B41074 800C9ED4 AFB90064 */  sw    $t9, 0x64($sp)
/* B41078 800C9ED8 AFB8005C */  sw    $t8, 0x5c($sp)
/* B4107C 800C9EDC AFA00058 */  sw    $zero, 0x58($sp)
/* B41080 800C9EE0 AFA00060 */  sw    $zero, 0x60($sp)
/* B41084 800C9EE4 27A40080 */  addiu $a0, $sp, 0x80
/* B41088 800C9EE8 0C02A93F */  jal   func_800AA4FC
/* B4108C 800C9EEC 27A50058 */   addiu $a1, $sp, 0x58
/* B41090 800C9EF0 8FA901B4 */  lw    $t1, 0x1b4($sp)
/* B41094 800C9EF4 27A40080 */  addiu $a0, $sp, 0x80
/* B41098 800C9EF8 2405000F */  li    $a1, 15
/* B4109C 800C9EFC 8D2A02B0 */  lw    $t2, 0x2b0($t1)
/* B410A0 800C9F00 27A6007C */  addiu $a2, $sp, 0x7c
/* B410A4 800C9F04 0C02AE7B */  jal   func_800AB9EC
/* B410A8 800C9F08 AFAA007C */   sw    $t2, 0x7c($sp)
/* B410AC 800C9F0C 8FAB007C */  lw    $t3, 0x7c($sp)
/* B410B0 800C9F10 3C05E700 */  lui   $a1, 0xe700
/* B410B4 800C9F14 3C0FEF30 */  lui   $t7, 0xef30
/* B410B8 800C9F18 256C0008 */  addiu $t4, $t3, 8
/* B410BC 800C9F1C AFAC007C */  sw    $t4, 0x7c($sp)
/* B410C0 800C9F20 AD600004 */  sw    $zero, 4($t3)
/* B410C4 800C9F24 AD650000 */  sw    $a1, ($t3)
/* B410C8 800C9F28 8FAD007C */  lw    $t5, 0x7c($sp)
/* B410CC 800C9F2C 3C07F700 */  lui   $a3, 0xf700
/* B410D0 800C9F30 3C08F600 */  lui   $t0, 0xf600
/* B410D4 800C9F34 25AE0008 */  addiu $t6, $t5, 8
/* B410D8 800C9F38 AFAE007C */  sw    $t6, 0x7c($sp)
/* B410DC 800C9F3C ADA00004 */  sw    $zero, 4($t5)
/* B410E0 800C9F40 ADAF0000 */  sw    $t7, ($t5)
/* B410E4 800C9F44 8E02000C */  lw    $v0, 0xc($s0)
/* B410E8 800C9F48 8E180010 */  lw    $t8, 0x10($s0)
/* B410EC 800C9F4C 8E090004 */  lw    $t1, 4($s0)
/* B410F0 800C9F50 8E0B0000 */  lw    $t3, ($s0)
/* B410F4 800C9F54 0302C823 */  subu  $t9, $t8, $v0
/* B410F8 800C9F58 03290019 */  multu $t9, $t1
/* B410FC 800C9F5C 8FAD007C */  lw    $t5, 0x7c($sp)
/* B41100 800C9F60 25AE0008 */  addiu $t6, $t5, 8
/* B41104 800C9F64 AFAE007C */  sw    $t6, 0x7c($sp)
/* B41108 800C9F68 ADA00004 */  sw    $zero, 4($t5)
/* B4110C 800C9F6C ADA50000 */  sw    $a1, ($t5)
/* B41110 800C9F70 8FAF007C */  lw    $t7, 0x7c($sp)
/* B41114 800C9F74 00005012 */  mflo  $t2
/* B41118 800C9F78 25F80008 */  addiu $t8, $t7, 8
/* B4111C 800C9F7C AFB8007C */  sw    $t8, 0x7c($sp)
/* B41120 800C9F80 014B001A */  div   $zero, $t2, $t3
/* B41124 800C9F84 ADE70000 */  sw    $a3, ($t7)
/* B41128 800C9F88 96030008 */  lhu   $v1, 8($s0)
/* B4112C 800C9F8C 15600002 */  bnez  $t3, .L800C9F98
/* B41130 800C9F90 00000000 */   nop   
/* B41134 800C9F94 0007000D */  break 7
.L800C9F98:
/* B41138 800C9F98 2401FFFF */  li    $at, -1
/* B4113C 800C9F9C 15610004 */  bne   $t3, $at, .L800C9FB0
/* B41140 800C9FA0 3C018000 */   lui   $at, 0x8000
/* B41144 800C9FA4 15410002 */  bne   $t2, $at, .L800C9FB0
/* B41148 800C9FA8 00000000 */   nop   
/* B4114C 800C9FAC 0006000D */  break 6
.L800C9FB0:
/* B41150 800C9FB0 0003CC00 */  sll   $t9, $v1, 0x10
/* B41154 800C9FB4 03234825 */  or    $t1, $t9, $v1
/* B41158 800C9FB8 ADE90004 */  sw    $t1, 4($t7)
/* B4115C 800C9FBC 8FAA007C */  lw    $t2, 0x7c($sp)
/* B41160 800C9FC0 00006012 */  mflo  $t4
/* B41164 800C9FC4 01823021 */  addu  $a2, $t4, $v0
/* B41168 800C9FC8 254B0008 */  addiu $t3, $t2, 8
/* B4116C 800C9FCC AFAB007C */  sw    $t3, 0x7c($sp)
/* B41170 800C9FD0 8E0C0010 */  lw    $t4, 0x10($s0)
/* B41174 800C9FD4 8E180018 */  lw    $t8, 0x18($s0)
/* B41178 800C9FD8 01401025 */  move  $v0, $t2
/* B4117C 800C9FDC 318D03FF */  andi  $t5, $t4, 0x3ff
/* B41180 800C9FE0 000D7380 */  sll   $t6, $t5, 0xe
/* B41184 800C9FE4 331903FF */  andi  $t9, $t8, 0x3ff
/* B41188 800C9FE8 00194880 */  sll   $t1, $t9, 2
/* B4118C 800C9FEC 01C87825 */  or    $t7, $t6, $t0
/* B41190 800C9FF0 01E95025 */  or    $t2, $t7, $t1
/* B41194 800C9FF4 AC4A0000 */  sw    $t2, ($v0)
/* B41198 800C9FF8 8E0B0014 */  lw    $t3, 0x14($s0)
/* B4119C 800C9FFC 30C403FF */  andi  $a0, $a2, 0x3ff
/* B411A0 800CA000 00042380 */  sll   $a0, $a0, 0xe
/* B411A4 800CA004 316C03FF */  andi  $t4, $t3, 0x3ff
/* B411A8 800CA008 000C6880 */  sll   $t5, $t4, 2
/* B411AC 800CA00C 008D7025 */  or    $t6, $a0, $t5
/* B411B0 800CA010 AC4E0004 */  sw    $t6, 4($v0)
/* B411B4 800CA014 8FB8007C */  lw    $t8, 0x7c($sp)
/* B411B8 800CA018 3C068014 */  lui   $a2, %hi(D_801462BC) # $a2, 0x8014
/* B411BC 800CA01C 24C662BC */  addiu $a2, %lo(D_801462BC) # addiu $a2, $a2, 0x62bc
/* B411C0 800CA020 27190008 */  addiu $t9, $t8, 8
/* B411C4 800CA024 AFB9007C */  sw    $t9, 0x7c($sp)
/* B411C8 800CA028 AF000004 */  sw    $zero, 4($t8)
/* B411CC 800CA02C AF050000 */  sw    $a1, ($t8)
/* B411D0 800CA030 8FAF007C */  lw    $t7, 0x7c($sp)
/* B411D4 800CA034 0088C825 */  or    $t9, $a0, $t0
/* B411D8 800CA038 27A40068 */  addiu $a0, $sp, 0x68
/* B411DC 800CA03C 25E90008 */  addiu $t1, $t7, 8
/* B411E0 800CA040 AFA9007C */  sw    $t1, 0x7c($sp)
/* B411E4 800CA044 ADE00004 */  sw    $zero, 4($t7)
/* B411E8 800CA048 ADE50000 */  sw    $a1, ($t7)
/* B411EC 800CA04C 8FAA007C */  lw    $t2, 0x7c($sp)
/* B411F0 800CA050 254B0008 */  addiu $t3, $t2, 8
/* B411F4 800CA054 AFAB007C */  sw    $t3, 0x7c($sp)
/* B411F8 800CA058 AD470000 */  sw    $a3, ($t2)
/* B411FC 800CA05C 9603000A */  lhu   $v1, 0xa($s0)
/* B41200 800CA060 24070153 */  li    $a3, 339
/* B41204 800CA064 00036400 */  sll   $t4, $v1, 0x10
/* B41208 800CA068 01836825 */  or    $t5, $t4, $v1
/* B4120C 800CA06C AD4D0004 */  sw    $t5, 4($t2)
/* B41210 800CA070 8FAE007C */  lw    $t6, 0x7c($sp)
/* B41214 800CA074 25D80008 */  addiu $t8, $t6, 8
/* B41218 800CA078 AFB8007C */  sw    $t8, 0x7c($sp)
/* B4121C 800CA07C 8E0F0018 */  lw    $t7, 0x18($s0)
/* B41220 800CA080 01C01025 */  move  $v0, $t6
/* B41224 800CA084 31E903FF */  andi  $t1, $t7, 0x3ff
/* B41228 800CA088 00095080 */  sll   $t2, $t1, 2
/* B4122C 800CA08C 032A5825 */  or    $t3, $t9, $t2
/* B41230 800CA090 ADCB0000 */  sw    $t3, ($t6)
/* B41234 800CA094 8E180014 */  lw    $t8, 0x14($s0)
/* B41238 800CA098 8E0C000C */  lw    $t4, 0xc($s0)
/* B4123C 800CA09C 330F03FF */  andi  $t7, $t8, 0x3ff
/* B41240 800CA0A0 318D03FF */  andi  $t5, $t4, 0x3ff
/* B41244 800CA0A4 000D7380 */  sll   $t6, $t5, 0xe
/* B41248 800CA0A8 000F4880 */  sll   $t1, $t7, 2
/* B4124C 800CA0AC 01C9C825 */  or    $t9, $t6, $t1
/* B41250 800CA0B0 AC590004 */  sw    $t9, 4($v0)
/* B41254 800CA0B4 8FAA007C */  lw    $t2, 0x7c($sp)
/* B41258 800CA0B8 254B0008 */  addiu $t3, $t2, 8
/* B4125C 800CA0BC AFAB007C */  sw    $t3, 0x7c($sp)
/* B41260 800CA0C0 AD400004 */  sw    $zero, 4($t2)
/* B41264 800CA0C4 AD450000 */  sw    $a1, ($t2)
/* B41268 800CA0C8 8FAC007C */  lw    $t4, 0x7c($sp)
/* B4126C 800CA0CC 258D0008 */  addiu $t5, $t4, 8
/* B41270 800CA0D0 AFAD007C */  sw    $t5, 0x7c($sp)
/* B41274 800CA0D4 AD800004 */  sw    $zero, 4($t4)
/* B41278 800CA0D8 AD850000 */  sw    $a1, ($t4)
/* B4127C 800CA0DC 8FAF01B4 */  lw    $t7, 0x1b4($sp)
/* B41280 800CA0E0 8FB8007C */  lw    $t8, 0x7c($sp)
/* B41284 800CA0E4 ADF802B0 */  sw    $t8, 0x2b0($t7)
/* B41288 800CA0E8 0C031AD5 */  jal   Graph_CloseDisps
/* B4128C 800CA0EC 8FA501B4 */   lw    $a1, 0x1b4($sp)
/* B41290 800CA0F0 8FBF001C */  lw    $ra, 0x1c($sp)
.L800CA0F4:
/* B41294 800CA0F4 8FB00018 */  lw    $s0, 0x18($sp)
/* B41298 800CA0F8 27BD01B0 */  addiu $sp, $sp, 0x1b0
/* B4129C 800CA0FC 03E00008 */  jr    $ra
/* B412A0 800CA100 00000000 */   nop   

