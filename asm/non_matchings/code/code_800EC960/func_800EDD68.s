glabel func_800EDD68
/* B64F08 800EDD68 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B64F0C 800EDD6C AFBF0014 */  sw    $ra, 0x14($sp)
/* B64F10 800EDD70 3C1F8013 */  lui   $ra, %hi(D_80131858) # $ra, 0x8013
/* B64F14 800EDD74 27FF1858 */  addiu $ra, %lo(D_80131858) # addiu $ra, $ra, 0x1858
/* B64F18 800EDD78 93EE0000 */  lbu   $t6, ($ra)
/* B64F1C 800EDD7C 24010001 */  li    $at, 1
/* B64F20 800EDD80 AFA40020 */  sw    $a0, 0x20($sp)
/* B64F24 800EDD84 15C10004 */  bne   $t6, $at, .L800EDD98
/* B64F28 800EDD88 3C028013 */   lui   $v0, %hi(D_80131864) # $v0, 0x8013
/* B64F2C 800EDD8C 3C048013 */  lui   $a0, %hi(gScarecrowCustomSongPtr) # $a0, 0x8013
/* B64F30 800EDD90 10000003 */  b     .L800EDDA0
/* B64F34 800EDD94 8C841BE4 */   lw    $a0, %lo(gScarecrowCustomSongPtr)($a0)
.L800EDD98:
/* B64F38 800EDD98 3C048013 */  lui   $a0, %hi(D_80131BEC) # $a0, 0x8013
/* B64F3C 800EDD9C 8C841BEC */  lw    $a0, %lo(D_80131BEC)($a0)
.L800EDDA0:
/* B64F40 800EDDA0 3C0D8013 */  lui   $t5, %hi(sRecordSongPos) # $t5, 0x8013
/* B64F44 800EDDA4 25AD185C */  addiu $t5, %lo(sRecordSongPos) # addiu $t5, $t5, 0x185c
/* B64F48 800EDDA8 91B80000 */  lbu   $t8, ($t5)
/* B64F4C 800EDDAC 24421864 */  addiu $v0, %lo(D_80131864) # addiu $v0, $v0, 0x1864
/* B64F50 800EDDB0 904F0000 */  lbu   $t7, ($v0)
/* B64F54 800EDDB4 0018C8C0 */  sll   $t9, $t8, 3
/* B64F58 800EDDB8 00997021 */  addu  $t6, $a0, $t9
/* B64F5C 800EDDBC A1CF0000 */  sb    $t7, ($t6)
/* B64F60 800EDDC0 3C198013 */  lui   $t9, %hi(D_80131860) # $t9, 0x8013
/* B64F64 800EDDC4 3C188017 */  lui   $t8, %hi(D_8016BA04) # $t8, 0x8017
/* B64F68 800EDDC8 8F18BA04 */  lw    $t8, %lo(D_8016BA04)($t8)
/* B64F6C 800EDDCC 8F391860 */  lw    $t9, %lo(D_80131860)($t9)
/* B64F70 800EDDD0 91AE0000 */  lbu   $t6, ($t5)
/* B64F74 800EDDD4 3C038013 */  lui   $v1, %hi(D_80131868) # $v1, 0x8013
/* B64F78 800EDDD8 03197823 */  subu  $t7, $t8, $t9
/* B64F7C 800EDDDC 000EC0C0 */  sll   $t8, $t6, 3
/* B64F80 800EDDE0 0098C821 */  addu  $t9, $a0, $t8
/* B64F84 800EDDE4 A72F0002 */  sh    $t7, 2($t9)
/* B64F88 800EDDE8 91B80000 */  lbu   $t8, ($t5)
/* B64F8C 800EDDEC 24631868 */  addiu $v1, %lo(D_80131868) # addiu $v1, $v1, 0x1868
/* B64F90 800EDDF0 906E0000 */  lbu   $t6, ($v1)
/* B64F94 800EDDF4 001878C0 */  sll   $t7, $t8, 3
/* B64F98 800EDDF8 008FC821 */  addu  $t9, $a0, $t7
/* B64F9C 800EDDFC A32E0004 */  sb    $t6, 4($t9)
/* B64FA0 800EDE00 91AF0000 */  lbu   $t7, ($t5)
/* B64FA4 800EDE04 3C058013 */  lui   $a1, %hi(D_8013186C) # $a1, 0x8013
/* B64FA8 800EDE08 24A5186C */  addiu $a1, %lo(D_8013186C) # addiu $a1, $a1, 0x186c
/* B64FAC 800EDE0C 90B80000 */  lbu   $t8, ($a1)
/* B64FB0 800EDE10 000F70C0 */  sll   $t6, $t7, 3
/* B64FB4 800EDE14 008EC821 */  addu  $t9, $a0, $t6
/* B64FB8 800EDE18 A3380005 */  sb    $t8, 5($t9)
/* B64FBC 800EDE1C 91AE0000 */  lbu   $t6, ($t5)
/* B64FC0 800EDE20 3C088013 */  lui   $t0, %hi(D_80131870) # $t0, 0x8013
/* B64FC4 800EDE24 25081870 */  addiu $t0, %lo(D_80131870) # addiu $t0, $t0, 0x1870
/* B64FC8 800EDE28 810F0000 */  lb    $t7, ($t0)
/* B64FCC 800EDE2C 000EC0C0 */  sll   $t8, $t6, 3
/* B64FD0 800EDE30 0098C821 */  addu  $t9, $a0, $t8
/* B64FD4 800EDE34 3C098013 */  lui   $t1, %hi(D_80131874) # $t1, 0x8013
/* B64FD8 800EDE38 A32F0006 */  sb    $t7, 6($t9)
/* B64FDC 800EDE3C 25291874 */  addiu $t1, %lo(D_80131874) # addiu $t1, $t1, 0x1874
/* B64FE0 800EDE40 912E0000 */  lbu   $t6, ($t1)
/* B64FE4 800EDE44 91AF0000 */  lbu   $t7, ($t5)
/* B64FE8 800EDE48 2401006B */  li    $at, 107
/* B64FEC 800EDE4C 31D800C0 */  andi  $t8, $t6, 0xc0
/* B64FF0 800EDE50 000FC8C0 */  sll   $t9, $t7, 3
/* B64FF4 800EDE54 00997021 */  addu  $t6, $a0, $t9
/* B64FF8 800EDE58 A1D80007 */  sb    $t8, 7($t6)
/* B64FFC 800EDE5C 3C0F8013 */  lui   $t7, %hi(sCurOcarinaBtnVal) # $t7, 0x8013
/* B65000 800EDE60 91EF0F14 */  lbu   $t7, %lo(sCurOcarinaBtnVal)($t7)
/* B65004 800EDE64 3C198013 */  lui   $t9, %hi(D_80130F30) # $t9, 0x8013
/* B65008 800EDE68 3C188013 */  lui   $t8, %hi(D_80130F34) # $t8, 0x8013
/* B6500C 800EDE6C A04F0000 */  sb    $t7, ($v0)
/* B65010 800EDE70 83390F30 */  lb    $t9, %lo(D_80130F30)($t9)
/* B65014 800EDE74 3C0E8013 */  lui   $t6, %hi(D_80130F2C) # $t6, 0x8013
/* B65018 800EDE78 3C0F8013 */  lui   $t7, %hi(sCurOcarinaBtnIdx) # $t7, 0x8013
/* B6501C 800EDE7C A0790000 */  sb    $t9, ($v1)
/* B65020 800EDE80 83180F34 */  lb    $t8, %lo(D_80130F34)($t8)
/* B65024 800EDE84 91B90000 */  lbu   $t9, ($t5)
/* B65028 800EDE88 A0B80000 */  sb    $t8, ($a1)
/* B6502C 800EDE8C 81CE0F2C */  lb    $t6, %lo(D_80130F2C)($t6)
/* B65030 800EDE90 27380001 */  addiu $t8, $t9, 1
/* B65034 800EDE94 330700FF */  andi  $a3, $t8, 0xff
/* B65038 800EDE98 A10E0000 */  sb    $t6, ($t0)
/* B6503C 800EDE9C 91EF0F1C */  lbu   $t7, %lo(sCurOcarinaBtnIdx)($t7)
/* B65040 800EDEA0 A1B80000 */  sb    $t8, ($t5)
/* B65044 800EDEA4 00E03025 */  move  $a2, $a3
/* B65048 800EDEA8 10E10003 */  beq   $a3, $at, .L800EDEB8
/* B6504C 800EDEAC A12F0000 */   sb    $t7, ($t1)
/* B65050 800EDEB0 93AE0023 */  lbu   $t6, 0x23($sp)
/* B65054 800EDEB4 11C000AA */  beqz  $t6, .L800EE160
.L800EDEB8:
/* B65058 800EDEB8 30E9FFFF */   andi  $t1, $a3, 0xffff
/* B6505C 800EDEBC 1120000B */  beqz  $t1, .L800EDEEC
/* B65060 800EDEC0 01201025 */   move  $v0, $t1
/* B65064 800EDEC4 240500FF */  li    $a1, 255
/* B65068 800EDEC8 2529FFFF */  addiu $t1, $t1, -1
.L800EDECC:
/* B6506C 800EDECC 3129FFFF */  andi  $t1, $t1, 0xffff
/* B65070 800EDED0 000978C0 */  sll   $t7, $t1, 3
/* B65074 800EDED4 008FC821 */  addu  $t9, $a0, $t7
/* B65078 800EDED8 01201025 */  move  $v0, $t1
/* B6507C 800EDEDC 11200003 */  beqz  $t1, .L800EDEEC
/* B65080 800EDEE0 93230000 */   lbu   $v1, ($t9)
/* B65084 800EDEE4 50A3FFF9 */  beql  $a1, $v1, .L800EDECC
/* B65088 800EDEE8 2529FFFF */   addiu $t1, $t1, -1
.L800EDEEC:
/* B6508C 800EDEEC 24580001 */  addiu $t8, $v0, 1
/* B65090 800EDEF0 13060007 */  beq   $t8, $a2, .L800EDF10
/* B65094 800EDEF4 244E0002 */   addiu $t6, $v0, 2
/* B65098 800EDEF8 31CF00FF */  andi  $t7, $t6, 0xff
/* B6509C 800EDEFC 000FC8C0 */  sll   $t9, $t7, 3
/* B650A0 800EDF00 A1AE0000 */  sb    $t6, ($t5)
/* B650A4 800EDF04 0099C021 */  addu  $t8, $a0, $t9
/* B650A8 800EDF08 A700FFFA */  sh    $zero, -6($t8)
/* B650AC 800EDF0C 91A70000 */  lbu   $a3, ($t5)
.L800EDF10:
/* B650B0 800EDF10 000770C0 */  sll   $t6, $a3, 3
/* B650B4 800EDF14 008E7821 */  addu  $t7, $a0, $t6
/* B650B8 800EDF18 A5E00002 */  sh    $zero, 2($t7)
/* B650BC 800EDF1C 93F90000 */  lbu   $t9, ($ra)
/* B650C0 800EDF20 24010002 */  li    $at, 2
/* B650C4 800EDF24 3C188017 */  lui   $t8, %hi(D_8016BA2E) # $t8, 0x8017
/* B650C8 800EDF28 5721008D */  bnel  $t9, $at, .L800EE160
/* B650CC 800EDF2C A3E00000 */   sb    $zero, ($ra)
/* B650D0 800EDF30 9318BA2E */  lbu   $t8, %lo(D_8016BA2E)($t8)
/* B650D4 800EDF34 3C038013 */  lui   $v1, %hi(sOcarinaSongs) # $v1, 0x8013
/* B650D8 800EDF38 24630F80 */  addiu $v1, %lo(sOcarinaSongs) # addiu $v1, $v1, 0xf80
/* B650DC 800EDF3C 2B010008 */  slti  $at, $t8, 8
/* B650E0 800EDF40 14200085 */  bnez  $at, .L800EE158
/* B650E4 800EDF44 240200FF */   li    $v0, 255
/* B650E8 800EDF48 91AE0000 */  lbu   $t6, ($t5)
/* B650EC 800EDF4C 00004825 */  move  $t1, $zero
/* B650F0 800EDF50 00001025 */  move  $v0, $zero
/* B650F4 800EDF54 19C00014 */  blez  $t6, .L800EDFA8
/* B650F8 800EDF58 0002C0C0 */   sll   $t8, $v0, 3
.L800EDF5C:
/* B650FC 800EDF5C 00987021 */  addu  $t6, $a0, $t8
/* B65100 800EDF60 89D80008 */  lwl   $t8, 8($t6)
/* B65104 800EDF64 99D8000B */  lwr   $t8, 0xb($t6)
/* B65108 800EDF68 000978C0 */  sll   $t7, $t1, 3
/* B6510C 800EDF6C 008FC821 */  addu  $t9, $a0, $t7
/* B65110 800EDF70 AB380000 */  swl   $t8, ($t9)
/* B65114 800EDF74 BB380003 */  swr   $t8, 3($t9)
/* B65118 800EDF78 89CF000C */  lwl   $t7, 0xc($t6)
/* B6511C 800EDF7C 99CF000F */  lwr   $t7, 0xf($t6)
/* B65120 800EDF80 25290001 */  addiu $t1, $t1, 1
/* B65124 800EDF84 3129FFFF */  andi  $t1, $t1, 0xffff
/* B65128 800EDF88 AB2F0004 */  swl   $t7, 4($t9)
/* B6512C 800EDF8C BB2F0007 */  swr   $t7, 7($t9)
/* B65130 800EDF90 91B90000 */  lbu   $t9, ($t5)
/* B65134 800EDF94 01201025 */  move  $v0, $t1
/* B65138 800EDF98 0139082A */  slt   $at, $t1, $t9
/* B6513C 800EDF9C 5420FFEF */  bnezl $at, .L800EDF5C
/* B65140 800EDFA0 0002C0C0 */   sll   $t8, $v0, 3
/* B65144 800EDFA4 00004825 */  move  $t1, $zero
.L800EDFA8:
/* B65148 800EDFA8 2404000D */  li    $a0, 13
/* B6514C 800EDFAC 0C03B2DF */  jal   func_800ECB7C
/* B65150 800EDFB0 A7A9001E */   sh    $t1, 0x1e($sp)
/* B65154 800EDFB4 3C0D8013 */  lui   $t5, %hi(sRecordSongPos) # $t5, 0x8013
/* B65158 800EDFB8 3C1F8013 */  lui   $ra, %hi(D_80131858) # $ra, 0x8013
/* B6515C 800EDFBC 3C078013 */  lui   $a3, %hi(sOcarinaSongNotes) # $a3, 0x8013
/* B65160 800EDFC0 27FF1858 */  addiu $ra, %lo(D_80131858) # addiu $ra, $ra, 0x1858
/* B65164 800EDFC4 25AD185C */  addiu $t5, %lo(sRecordSongPos) # addiu $t5, $t5, 0x185c
/* B65168 800EDFC8 97A9001E */  lhu   $t1, 0x1e($sp)
/* B6516C 800EDFCC 24E71C00 */  addiu $a3, %lo(sOcarinaSongNotes) # addiu $a3, $a3, 0x1c00
/* B65170 800EDFD0 240C0009 */  li    $t4, 9
/* B65174 800EDFD4 240B0009 */  li    $t3, 9
.L800EDFD8:
/* B65178 800EDFD8 012C0019 */  multu $t1, $t4
/* B6517C 800EDFDC 00004025 */  move  $t0, $zero
/* B65180 800EDFE0 00007012 */  mflo  $t6
/* B65184 800EDFE4 00EE7821 */  addu  $t7, $a3, $t6
/* B65188 800EDFE8 91E60000 */  lbu   $a2, ($t7)
/* B6518C 800EDFEC 01665023 */  subu  $t2, $t3, $a2
/* B65190 800EDFF0 5940002A */  blezl $t2, .L800EE09C
/* B65194 800EDFF4 25290001 */   addiu $t1, $t1, 1
.L800EDFF8:
/* B65198 800EDFF8 18C0001B */  blez  $a2, .L800EE068
/* B6519C 800EDFFC 00001825 */   move  $v1, $zero
/* B651A0 800EE000 29010008 */  slti  $at, $t0, 8
/* B651A4 800EE004 10200018 */  beqz  $at, .L800EE068
/* B651A8 800EE008 01002025 */   move  $a0, $t0
/* B651AC 800EE00C 0009C0C0 */  sll   $t8, $t1, 3
/* B651B0 800EE010 0309C021 */  addu  $t8, $t8, $t1
/* B651B4 800EE014 00F82821 */  addu  $a1, $a3, $t8
/* B651B8 800EE018 00E47021 */  addu  $t6, $a3, $a0
/* B651BC 800EE01C 91CF006D */  lbu   $t7, 0x6d($t6)
/* B651C0 800EE020 90B90001 */  lbu   $t9, 1($a1)
/* B651C4 800EE024 172F0010 */  bne   $t9, $t7, .L800EE068
/* B651C8 800EE028 00000000 */   nop   
/* B651CC 800EE02C 24630001 */  addiu $v1, $v1, 1
.L800EE030:
/* B651D0 800EE030 306300FF */  andi  $v1, $v1, 0xff
/* B651D4 800EE034 0066082A */  slt   $at, $v1, $a2
/* B651D8 800EE038 1020000B */  beqz  $at, .L800EE068
/* B651DC 800EE03C 00601025 */   move  $v0, $v1
/* B651E0 800EE040 0044C021 */  addu  $t8, $v0, $a0
/* B651E4 800EE044 2B010008 */  slti  $at, $t8, 8
/* B651E8 800EE048 10200007 */  beqz  $at, .L800EE068
/* B651EC 800EE04C 00A37021 */   addu  $t6, $a1, $v1
/* B651F0 800EE050 00E27821 */  addu  $t7, $a3, $v0
/* B651F4 800EE054 91D90001 */  lbu   $t9, 1($t6)
/* B651F8 800EE058 01E4C021 */  addu  $t8, $t7, $a0
/* B651FC 800EE05C 930E006D */  lbu   $t6, 0x6d($t8)
/* B65200 800EE060 532EFFF3 */  beql  $t9, $t6, .L800EE030
/* B65204 800EE064 24630001 */   addiu $v1, $v1, 1
.L800EE068:
/* B65208 800EE068 14660006 */  bne   $v1, $a2, .L800EE084
/* B6520C 800EE06C 240200FF */   li    $v0, 255
/* B65210 800EE070 3C038013 */  lui   $v1, %hi(sOcarinaSongs) # $v1, 0x8013
/* B65214 800EE074 24630F80 */  addiu $v1, %lo(sOcarinaSongs) # addiu $v1, $v1, 0xf80
/* B65218 800EE078 A3E20000 */  sb    $v0, ($ra)
/* B6521C 800EE07C 10000038 */  b     .L800EE160
/* B65220 800EE080 A062078C */   sb    $v0, 0x78c($v1)
.L800EE084:
/* B65224 800EE084 25080001 */  addiu $t0, $t0, 1
/* B65228 800EE088 310800FF */  andi  $t0, $t0, 0xff
/* B6522C 800EE08C 010A082A */  slt   $at, $t0, $t2
/* B65230 800EE090 1420FFD9 */  bnez  $at, .L800EDFF8
/* B65234 800EE094 00000000 */   nop   
/* B65238 800EE098 25290001 */  addiu $t1, $t1, 1
.L800EE09C:
/* B6523C 800EE09C 3129FFFF */  andi  $t1, $t1, 0xffff
/* B65240 800EE0A0 2921000C */  slti  $at, $t1, 0xc
/* B65244 800EE0A4 1420FFCC */  bnez  $at, .L800EDFD8
/* B65248 800EE0A8 00000000 */   nop   
/* B6524C 800EE0AC 24090001 */  li    $t1, 1
/* B65250 800EE0B0 90E3006D */  lbu   $v1, 0x6d($a3)
.L800EE0B4:
/* B65254 800EE0B4 00E97821 */  addu  $t7, $a3, $t1
/* B65258 800EE0B8 91F8006D */  lbu   $t8, 0x6d($t7)
/* B6525C 800EE0BC 25290001 */  addiu $t1, $t1, 1
/* B65260 800EE0C0 3129FFFF */  andi  $t1, $t1, 0xffff
/* B65264 800EE0C4 10780003 */  beq   $v1, $t8, .L800EE0D4
/* B65268 800EE0C8 00000000 */   nop   
/* B6526C 800EE0CC 10000001 */  b     .L800EE0D4
/* B65270 800EE0D0 24090009 */   li    $t1, 9
.L800EE0D4:
/* B65274 800EE0D4 29210008 */  slti  $at, $t1, 8
/* B65278 800EE0D8 1420FFF6 */  bnez  $at, .L800EE0B4
/* B6527C 800EE0DC 01201025 */   move  $v0, $t1
/* B65280 800EE0E0 24010008 */  li    $at, 8
/* B65284 800EE0E4 14410006 */  bne   $v0, $at, .L800EE100
/* B65288 800EE0E8 3C038013 */   lui   $v1, %hi(sOcarinaSongs) # $v1, 0x8013
/* B6528C 800EE0EC 240200FF */  li    $v0, 255
/* B65290 800EE0F0 24630F80 */  addiu $v1, %lo(sOcarinaSongs) # addiu $v1, $v1, 0xf80
/* B65294 800EE0F4 A3E20000 */  sb    $v0, ($ra)
/* B65298 800EE0F8 10000019 */  b     .L800EE160
/* B6529C 800EE0FC A062078C */   sb    $v0, 0x78c($v1)
.L800EE100:
/* B652A0 800EE100 91A60000 */  lbu   $a2, ($t5)
/* B652A4 800EE104 00004825 */  move  $t1, $zero
/* B652A8 800EE108 18C00010 */  blez  $a2, .L800EE14C
/* B652AC 800EE10C 3C038013 */   lui   $v1, %hi(sOcarinaSongs) # $v1, 0x8013
/* B652B0 800EE110 24630F80 */  addiu $v1, %lo(sOcarinaSongs) # addiu $v1, $v1, 0xf80
.L800EE114:
/* B652B4 800EE114 0009C8C0 */  sll   $t9, $t1, 3
/* B652B8 800EE118 00791021 */  addu  $v0, $v1, $t9
/* B652BC 800EE11C 884F0820 */  lwl   $t7, 0x820($v0)
/* B652C0 800EE120 884E0824 */  lwl   $t6, 0x824($v0)
/* B652C4 800EE124 984F0823 */  lwr   $t7, 0x823($v0)
/* B652C8 800EE128 984E0827 */  lwr   $t6, 0x827($v0)
/* B652CC 800EE12C 25290001 */  addiu $t1, $t1, 1
/* B652D0 800EE130 3129FFFF */  andi  $t1, $t1, 0xffff
/* B652D4 800EE134 0126082A */  slt   $at, $t1, $a2
/* B652D8 800EE138 A84F0780 */  swl   $t7, 0x780($v0)
/* B652DC 800EE13C A84E0784 */  swl   $t6, 0x784($v0)
/* B652E0 800EE140 B84F0783 */  swr   $t7, 0x783($v0)
/* B652E4 800EE144 1420FFF3 */  bnez  $at, .L800EE114
/* B652E8 800EE148 B84E0787 */   swr   $t6, 0x787($v0)
.L800EE14C:
/* B652EC 800EE14C 3C018013 */  lui   $at, %hi(sOcarinaInpEnabled) # $at, 0x8013
/* B652F0 800EE150 10000002 */  b     .L800EE15C
/* B652F4 800EE154 A0200F0C */   sb    $zero, %lo(sOcarinaInpEnabled)($at)
.L800EE158:
/* B652F8 800EE158 A062078C */  sb    $v0, 0x78c($v1)
.L800EE15C:
/* B652FC 800EE15C A3E00000 */  sb    $zero, ($ra)
.L800EE160:
/* B65300 800EE160 8FBF0014 */  lw    $ra, 0x14($sp)
/* B65304 800EE164 27BD0020 */  addiu $sp, $sp, 0x20
/* B65308 800EE168 03E00008 */  jr    $ra
/* B6530C 800EE16C 00000000 */   nop   

