.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80105F40
/* B7D0E0 80105F40 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B7D0E4 80105F44 AFBF003C */  sw    $ra, 0x3c($sp)
/* B7D0E8 80105F48 AFB60030 */  sw    $s6, 0x30($sp)
/* B7D0EC 80105F4C AFB5002C */  sw    $s5, 0x2c($sp)
/* B7D0F0 80105F50 AFB1001C */  sw    $s1, 0x1c($sp)
/* B7D0F4 80105F54 00A08825 */  move  $s1, $a1
/* B7D0F8 80105F58 0080B025 */  move  $s6, $a0
/* B7D0FC 80105F5C AFBE0038 */  sw    $fp, 0x38($sp)
/* B7D100 80105F60 AFB70034 */  sw    $s7, 0x34($sp)
/* B7D104 80105F64 AFB40028 */  sw    $s4, 0x28($sp)
/* B7D108 80105F68 AFB30024 */  sw    $s3, 0x24($sp)
/* B7D10C 80105F6C AFB20020 */  sw    $s2, 0x20($sp)
/* B7D110 80105F70 AFB00018 */  sw    $s0, 0x18($sp)
/* B7D114 80105F74 AFA60068 */  sw    $a2, 0x68($sp)
/* B7D118 80105F78 AFA7006C */  sw    $a3, 0x6c($sp)
/* B7D11C 80105F7C 0C0402E8 */  jal   __osSiGetAccess
/* B7D120 80105F80 24150002 */   li    $s5, 2
/* B7D124 80105F84 97A5006A */  lhu   $a1, 0x6a($sp)
/* B7D128 80105F88 3C1E8013 */  lui   $fp, %hi(D_80134D20) # $fp, 0x8013
/* B7D12C 80105F8C 3C178017 */  lui   $s7, %hi(_osCont_lastPollType) # $s7, 0x8017
/* B7D130 80105F90 3C148017 */  lui   $s4, %hi(D_80175960) # $s4, 0x8017
/* B7D134 80105F94 000570C3 */  sra   $t6, $a1, 3
/* B7D138 80105F98 00057940 */  sll   $t7, $a1, 5
/* B7D13C 80105F9C AFAF0040 */  sw    $t7, 0x40($sp)
/* B7D140 80105FA0 AFAE0044 */  sw    $t6, 0x44($sp)
/* B7D144 80105FA4 26945960 */  addiu $s4, %lo(D_80175960) # addiu $s4, $s4, 0x5960
/* B7D148 80105FA8 26F75810 */  addiu $s7, %lo(_osCont_lastPollType) # addiu $s7, $s7, 0x5810
/* B7D14C 80105FAC 27DE4D20 */  addiu $fp, %lo(D_80134D20) # addiu $fp, $fp, 0x4d20
.L80105FB0:
/* B7D150 80105FB0 92F80000 */  lbu   $t8, ($s7)
/* B7D154 80105FB4 24010002 */  li    $at, 2
/* B7D158 80105FB8 97A5006A */  lhu   $a1, 0x6a($sp)
/* B7D15C 80105FBC 17010003 */  bne   $t8, $at, .L80105FCC
/* B7D160 80105FC0 02808025 */   move  $s0, $s4
/* B7D164 80105FC4 8FD90000 */  lw    $t9, ($fp)
/* B7D168 80105FC8 12390023 */  beq   $s1, $t9, .L80106058
.L80105FCC:
/* B7D16C 80105FCC 24080002 */   li    $t0, 2
/* B7D170 80105FD0 A2E80000 */  sb    $t0, ($s7)
/* B7D174 80105FD4 AFD10000 */  sw    $s1, ($fp)
/* B7D178 80105FD8 1A200010 */  blez  $s1, .L8010601C
/* B7D17C 80105FDC 00001025 */   move  $v0, $zero
/* B7D180 80105FE0 32240003 */  andi  $a0, $s1, 3
/* B7D184 80105FE4 10800006 */  beqz  $a0, .L80106000
/* B7D188 80105FE8 00801825 */   move  $v1, $a0
.L80105FEC:
/* B7D18C 80105FEC 24420001 */  addiu $v0, $v0, 1
/* B7D190 80105FF0 A2000000 */  sb    $zero, ($s0)
/* B7D194 80105FF4 1462FFFD */  bne   $v1, $v0, .L80105FEC
/* B7D198 80105FF8 26100001 */   addiu $s0, $s0, 1
/* B7D19C 80105FFC 10510007 */  beq   $v0, $s1, .L8010601C
.L80106000:
/* B7D1A0 80106000 24420004 */   addiu $v0, $v0, 4
/* B7D1A4 80106004 A2000000 */  sb    $zero, ($s0)
/* B7D1A8 80106008 A2000001 */  sb    $zero, 1($s0)
/* B7D1AC 8010600C A2000002 */  sb    $zero, 2($s0)
/* B7D1B0 80106010 A2000003 */  sb    $zero, 3($s0)
/* B7D1B4 80106014 1451FFFA */  bne   $v0, $s1, .L80106000
/* B7D1B8 80106018 26100004 */   addiu $s0, $s0, 4
.L8010601C:
/* B7D1BC 8010601C 24090001 */  li    $t1, 1
/* B7D1C0 80106020 AE89003C */  sw    $t1, 0x3c($s4)
/* B7D1C4 80106024 240A00FF */  li    $t2, 255
/* B7D1C8 80106028 240B0003 */  li    $t3, 3
/* B7D1CC 8010602C 240C0021 */  li    $t4, 33
/* B7D1D0 80106030 240D0002 */  li    $t5, 2
/* B7D1D4 80106034 240E00FF */  li    $t6, 255
/* B7D1D8 80106038 240F00FE */  li    $t7, 254
/* B7D1DC 8010603C A20A0000 */  sb    $t2, ($s0)
/* B7D1E0 80106040 A20B0001 */  sb    $t3, 1($s0)
/* B7D1E4 80106044 A20C0002 */  sb    $t4, 2($s0)
/* B7D1E8 80106048 A20D0003 */  sb    $t5, 3($s0)
/* B7D1EC 8010604C A20E0026 */  sb    $t6, 0x26($s0)
/* B7D1F0 80106050 10000002 */  b     .L8010605C
/* B7D1F4 80106054 A20F0027 */   sb    $t7, 0x27($s0)
.L80106058:
/* B7D1F8 80106058 02918021 */  addu  $s0, $s4, $s1
.L8010605C:
/* B7D1FC 8010605C 8FB80044 */  lw    $t8, 0x44($sp)
/* B7D200 80106060 30A4FFFF */  andi  $a0, $a1, 0xffff
/* B7D204 80106064 0C04185C */  jal   func_80106170
/* B7D208 80106068 A2180004 */   sb    $t8, 4($s0)
/* B7D20C 8010606C 8FB90040 */  lw    $t9, 0x40($sp)
/* B7D210 80106070 24040001 */  li    $a0, 1
/* B7D214 80106074 02802825 */  move  $a1, $s4
/* B7D218 80106078 00594025 */  or    $t0, $v0, $t9
/* B7D21C 8010607C 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B7D220 80106080 A2080005 */   sb    $t0, 5($s0)
/* B7D224 80106084 02C02025 */  move  $a0, $s6
/* B7D228 80106088 00002825 */  move  $a1, $zero
/* B7D22C 8010608C 0C000CA0 */  jal   osRecvMesg
/* B7D230 80106090 24060001 */   li    $a2, 1
/* B7D234 80106094 00002025 */  move  $a0, $zero
/* B7D238 80106098 0C0404FC */  jal   __osSiRawStartDma /*(s32 dir, void *addr)*/
/* B7D23C 8010609C 02802825 */   move  $a1, $s4
/* B7D240 801060A0 02C02025 */  move  $a0, $s6
/* B7D244 801060A4 00002825 */  move  $a1, $zero
/* B7D248 801060A8 0C000CA0 */  jal   osRecvMesg
/* B7D24C 801060AC 24060001 */   li    $a2, 1
/* B7D250 801060B0 92130002 */  lbu   $s3, 2($s0)
/* B7D254 801060B4 26120006 */  addiu $s2, $s0, 6
/* B7D258 801060B8 326900C0 */  andi  $t1, $s3, 0xc0
/* B7D25C 801060BC 00099903 */  sra   $s3, $t1, 4
/* B7D260 801060C0 56600014 */  bnezl $s3, .L80106114
/* B7D264 801060C4 24130001 */   li    $s3, 1
/* B7D268 801060C8 0C041890 */  jal   func_80106240
/* B7D26C 801060CC 02402025 */   move  $a0, $s2
/* B7D270 801060D0 920B0026 */  lbu   $t3, 0x26($s0)
/* B7D274 801060D4 02402025 */  move  $a0, $s2
/* B7D278 801060D8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B7D27C 801060DC 11620008 */  beq   $t3, $v0, .L80106100
/* B7D280 801060E0 00000000 */   nop   
/* B7D284 801060E4 02C02025 */  move  $a0, $s6
/* B7D288 801060E8 0C040644 */  jal   func_80101910
/* B7D28C 801060EC 02202825 */   move  $a1, $s1
/* B7D290 801060F0 1440000D */  bnez  $v0, .L80106128
/* B7D294 801060F4 00409825 */   move  $s3, $v0
/* B7D298 801060F8 10000006 */  b     .L80106114
/* B7D29C 801060FC 24130004 */   li    $s3, 4
.L80106100:
/* B7D2A0 80106100 0C001BC4 */  jal   bcopy
/* B7D2A4 80106104 24060020 */   li    $a2, 32
/* B7D2A8 80106108 10000003 */  b     .L80106118
/* B7D2AC 8010610C 24010004 */   li    $at, 4
/* B7D2B0 80106110 24130001 */  li    $s3, 1
.L80106114:
/* B7D2B4 80106114 24010004 */  li    $at, 4
.L80106118:
/* B7D2B8 80106118 16610003 */  bne   $s3, $at, .L80106128
/* B7D2BC 8010611C 2AA20000 */   slti  $v0, $s5, 0
/* B7D2C0 80106120 1040FFA3 */  beqz  $v0, .L80105FB0
/* B7D2C4 80106124 26B5FFFF */   addiu $s5, $s5, -1
.L80106128:
/* B7D2C8 80106128 0C0402F9 */  jal   __osSiRelAccess
/* B7D2CC 8010612C 00000000 */   nop   
/* B7D2D0 80106130 8FBF003C */  lw    $ra, 0x3c($sp)
/* B7D2D4 80106134 02601025 */  move  $v0, $s3
/* B7D2D8 80106138 8FB30024 */  lw    $s3, 0x24($sp)
/* B7D2DC 8010613C 8FB00018 */  lw    $s0, 0x18($sp)
/* B7D2E0 80106140 8FB1001C */  lw    $s1, 0x1c($sp)
/* B7D2E4 80106144 8FB20020 */  lw    $s2, 0x20($sp)
/* B7D2E8 80106148 8FB40028 */  lw    $s4, 0x28($sp)
/* B7D2EC 8010614C 8FB5002C */  lw    $s5, 0x2c($sp)
/* B7D2F0 80106150 8FB60030 */  lw    $s6, 0x30($sp)
/* B7D2F4 80106154 8FB70034 */  lw    $s7, 0x34($sp)
/* B7D2F8 80106158 8FBE0038 */  lw    $fp, 0x38($sp)
/* B7D2FC 8010615C 03E00008 */  jr    $ra
/* B7D300 80106160 27BD0060 */   addiu $sp, $sp, 0x60
