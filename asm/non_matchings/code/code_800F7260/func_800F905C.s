glabel func_800F905C
/* B701FC 800F905C 3C018013 */  lui   $at, %hi(D_801333A0) # $at, 0x8013
/* B70200 800F9060 A02033A0 */  sb    $zero, %lo(D_801333A0)($at)
/* B70204 800F9064 3C018013 */  lui   $at, %hi(D_801333A4) # $at, 0x8013
/* B70208 800F9068 A02033A4 */  sb    $zero, %lo(D_801333A4)($at)
/* B7020C 800F906C 3C018013 */  lui   $at, %hi(D_801333D0) # $at, 0x8013
/* B70210 800F9070 A42033D0 */  sh    $zero, %lo(D_801333D0)($at)
/* B70214 800F9074 3C013F80 */  lui   $at, 0x3f80
/* B70218 800F9078 3C098017 */  lui   $t1, %hi(D_8016E270) # $t1, 0x8017
/* B7021C 800F907C 3C088017 */  lui   $t0, %hi(D_8016E264) # $t0, 0x8017
/* B70220 800F9080 3C078017 */  lui   $a3, %hi(D_8016E1B0) # $a3, 0x8017
/* B70224 800F9084 3C058017 */  lui   $a1, %hi(D_8016E1A8) # $a1, 0x8017
/* B70228 800F9088 3C048017 */  lui   $a0, %hi(D_8016E1A0)
/* B7022C 800F908C 44810000 */  mtc1  $at, $f0
/* B70230 800F9090 2484E1A0 */  addiu $a0, %lo(D_8016E1A0)
/* B70234 800F9094 24A5E1A8 */  addiu $a1, %lo(D_8016E1A8) # addiu $a1, $a1, -0x1e58
/* B70238 800F9098 24E7E1B0 */  addiu $a3, %lo(D_8016E1B0) # addiu $a3, $a3, -0x1e50
/* B7023C 800F909C 2508E264 */  addiu $t0, %lo(D_8016E264) # addiu $t0, $t0, -0x1d9c
/* B70240 800F90A0 2529E270 */  addiu $t1, %lo(D_8016E270) # addiu $t1, $t1, -0x1d90
/* B70244 800F90A4 00001025 */  move  $v0, $zero
/* B70248 800F90A8 24060001 */  li    $a2, 1
.L800F90AC:
/* B7024C 800F90AC 00827021 */  addu  $t6, $a0, $v0
/* B70250 800F90B0 00A27821 */  addu  $t7, $a1, $v0
/* B70254 800F90B4 A1C00000 */  sb    $zero, ($t6)
/* B70258 800F90B8 00E2C021 */  addu  $t8, $a3, $v0
/* B7025C 800F90BC 0102C821 */  addu  $t9, $t0, $v0
/* B70260 800F90C0 00026100 */  sll   $t4, $v0, 4
/* B70264 800F90C4 24420001 */  addiu $v0, $v0, 1
/* B70268 800F90C8 A1E60000 */  sb    $a2, ($t7)
/* B7026C 800F90CC 304200FF */  andi  $v0, $v0, 0xff
/* B70270 800F90D0 A3000000 */  sb    $zero, ($t8)
/* B70274 800F90D4 28410007 */  slti  $at, $v0, 7
/* B70278 800F90D8 A3200000 */  sb    $zero, ($t9)
/* B7027C 800F90DC 012C1821 */  addu  $v1, $t1, $t4
/* B70280 800F90E0 E4600000 */  swc1  $f0, ($v1)
/* B70284 800F90E4 1420FFF1 */  bnez  $at, .L800F90AC
/* B70288 800F90E8 A460000C */   sh    $zero, 0xc($v1)
/* B7028C 800F90EC 00001025 */  move  $v0, $zero
/* B70290 800F90F0 240800FF */  li    $t0, 255
/* B70294 800F90F4 00026880 */  sll   $t5, $v0, 2
.L800F90F8:
/* B70298 800F90F8 01A26823 */  subu  $t5, $t5, $v0
/* B7029C 800F90FC 3C0E8017 */  lui   $t6, %hi(D_8016E1B8) # $t6, 0x8017
/* B702A0 800F9100 25CEE1B8 */  addiu $t6, %lo(D_8016E1B8) # addiu $t6, $t6, -0x1e48
/* B702A4 800F9104 000D68C0 */  sll   $t5, $t5, 3
/* B702A8 800F9108 01AE2021 */  addu  $a0, $t5, $t6
/* B702AC 800F910C 00001825 */  move  $v1, $zero
.L800F9110:
/* B702B0 800F9110 000378C0 */  sll   $t7, $v1, 3
/* B702B4 800F9114 24630001 */  addiu $v1, $v1, 1
/* B702B8 800F9118 306300FF */  andi  $v1, $v1, 0xff
/* B702BC 800F911C 28610003 */  slti  $at, $v1, 3
/* B702C0 800F9120 008FC021 */  addu  $t8, $a0, $t7
/* B702C4 800F9124 1420FFFA */  bnez  $at, .L800F9110
/* B702C8 800F9128 A3080004 */   sb    $t0, 4($t8)
/* B702CC 800F912C 24420001 */  addiu $v0, $v0, 1
/* B702D0 800F9130 304200FF */  andi  $v0, $v0, 0xff
/* B702D4 800F9134 28410007 */  slti  $at, $v0, 7
/* B702D8 800F9138 5420FFEF */  bnezl $at, .L800F90F8
/* B702DC 800F913C 00026880 */   sll   $t5, $v0, 2
/* B702E0 800F9140 3C0A8013 */  lui   $t2, %hi(D_801333C4) # $t2, 0x8013
/* B702E4 800F9144 3C098013 */  lui   $t1, %hi(D_801333A8) # $t1, 0x8013
/* B702E8 800F9148 252933A8 */  addiu $t1, %lo(D_801333A8) # addiu $t1, $t1, 0x33a8
/* B702EC 800F914C 254A33C4 */  addiu $t2, %lo(D_801333C4) # addiu $t2, $t2, 0x33c4
/* B702F0 800F9150 00001025 */  move  $v0, $zero
/* B702F4 800F9154 240B0030 */  li    $t3, 48
.L800F9158:
/* B702F8 800F9158 0002C880 */  sll   $t9, $v0, 2
/* B702FC 800F915C 01392821 */  addu  $a1, $t1, $t9
/* B70300 800F9160 8CAC0000 */  lw    $t4, ($a1)
/* B70304 800F9164 01423021 */  addu  $a2, $t2, $v0
/* B70308 800F9168 24030001 */  li    $v1, 1
/* B7030C 800F916C A188002C */  sb    $t0, 0x2c($t4)
/* B70310 800F9170 8CAD0000 */  lw    $t5, ($a1)
/* B70314 800F9174 24040001 */  li    $a0, 1
/* B70318 800F9178 A1A8002D */  sb    $t0, 0x2d($t5)
/* B7031C 800F917C 90CE0000 */  lbu   $t6, ($a2)
/* B70320 800F9180 25CFFFFF */  addiu $t7, $t6, -1
/* B70324 800F9184 29E10002 */  slti  $at, $t7, 2
/* B70328 800F9188 14200013 */  bnez  $at, .L800F91D8
/* B7032C 800F918C 00000000 */   nop   
.L800F9190:
/* B70330 800F9190 006B0019 */  multu $v1, $t3
/* B70334 800F9194 8CB90000 */  lw    $t9, ($a1)
/* B70338 800F9198 2498FFFF */  addiu $t8, $a0, -1
/* B7033C 800F919C 248D0001 */  addiu $t5, $a0, 1
/* B70340 800F91A0 24630001 */  addiu $v1, $v1, 1
/* B70344 800F91A4 306300FF */  andi  $v1, $v1, 0xff
/* B70348 800F91A8 00602025 */  move  $a0, $v1
/* B7034C 800F91AC 00003812 */  mflo  $a3
/* B70350 800F91B0 03276021 */  addu  $t4, $t9, $a3
/* B70354 800F91B4 A198002C */  sb    $t8, 0x2c($t4)
/* B70358 800F91B8 8CAE0000 */  lw    $t6, ($a1)
/* B7035C 800F91BC 01C77821 */  addu  $t7, $t6, $a3
/* B70360 800F91C0 A1ED002D */  sb    $t5, 0x2d($t7)
/* B70364 800F91C4 90D90000 */  lbu   $t9, ($a2)
/* B70368 800F91C8 2738FFFF */  addiu $t8, $t9, -1
/* B7036C 800F91CC 0078082A */  slt   $at, $v1, $t8
/* B70370 800F91D0 1420FFEF */  bnez  $at, .L800F9190
/* B70374 800F91D4 00000000 */   nop   
.L800F91D8:
/* B70378 800F91D8 006B0019 */  multu $v1, $t3
/* B7037C 800F91DC 8CAE0000 */  lw    $t6, ($a1)
/* B70380 800F91E0 246CFFFF */  addiu $t4, $v1, -1
/* B70384 800F91E4 24420001 */  addiu $v0, $v0, 1
/* B70388 800F91E8 304200FF */  andi  $v0, $v0, 0xff
/* B7038C 800F91EC 28410007 */  slti  $at, $v0, 7
/* B70390 800F91F0 00003812 */  mflo  $a3
/* B70394 800F91F4 01C76821 */  addu  $t5, $t6, $a3
/* B70398 800F91F8 A1AC002C */  sb    $t4, 0x2c($t5)
/* B7039C 800F91FC 8CAF0000 */  lw    $t7, ($a1)
/* B703A0 800F9200 01E7C821 */  addu  $t9, $t7, $a3
/* B703A4 800F9204 1420FFD4 */  bnez  $at, .L800F9158
/* B703A8 800F9208 A328002D */   sb    $t0, 0x2d($t9)
/* B703AC 800F920C 3C058013 */  lui   $a1, %hi(D_801333F8) # $a1, 0x8013
/* B703B0 800F9210 24A533F8 */  addiu $a1, %lo(D_801333F8) # addiu $a1, $a1, 0x33f8
/* B703B4 800F9214 90A30000 */  lbu   $v1, ($a1)
/* B703B8 800F9218 3C088017 */  lui   $t0, %hi(D_8016E310) # $t0, 0x8017
/* B703BC 800F921C 2508E310 */  addiu $t0, %lo(D_8016E310) # addiu $t0, $t0, -0x1cf0
/* B703C0 800F9220 14600012 */  bnez  $v1, .L800F926C
/* B703C4 800F9224 00001025 */   move  $v0, $zero
/* B703C8 800F9228 3C078017 */  lui   $a3, %hi(D_8016E2F8) # $a3, 0x8017
/* B703CC 800F922C 3C068017 */  lui   $a2, %hi(D_8016E2E0) # $a2, 0x8017
/* B703D0 800F9230 24C6E2E0 */  addiu $a2, %lo(D_8016E2E0) # addiu $a2, $a2, -0x1d20
/* B703D4 800F9234 24E7E2F8 */  addiu $a3, %lo(D_8016E2F8) # addiu $a3, $a3, -0x1d08
.L800F9238:
/* B703D8 800F9238 00022040 */  sll   $a0, $v0, 1
/* B703DC 800F923C 01026021 */  addu  $t4, $t0, $v0
/* B703E0 800F9240 24420001 */  addiu $v0, $v0, 1
/* B703E4 800F9244 00C4C021 */  addu  $t8, $a2, $a0
/* B703E8 800F9248 304200FF */  andi  $v0, $v0, 0xff
/* B703EC 800F924C A7000000 */  sh    $zero, ($t8)
/* B703F0 800F9250 00E47021 */  addu  $t6, $a3, $a0
/* B703F4 800F9254 2841000A */  slti  $at, $v0, 0xa
/* B703F8 800F9258 A5C00000 */  sh    $zero, ($t6)
/* B703FC 800F925C 1420FFF6 */  bnez  $at, .L800F9238
/* B70400 800F9260 A1800000 */   sb    $zero, ($t4)
/* B70404 800F9264 246D0001 */  addiu $t5, $v1, 1
/* B70408 800F9268 A0AD0000 */  sb    $t5, ($a1)
.L800F926C:
/* B7040C 800F926C 03E00008 */  jr    $ra
/* B70410 800F9270 00000000 */   nop   
