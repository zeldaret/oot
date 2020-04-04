.rdata
glabel D_8013C8A0
    .asciz "../z_lights.c"
    .balign 4

glabel D_8013C8B0
    .asciz "../z_lights.c"
    .balign 4

.text
glabel func_80079EFC
/* AF109C 80079EFC 27BDFF98 */  addiu $sp, $sp, -0x68
/* AF10A0 80079F00 AFB10018 */  sw    $s1, 0x18($sp)
/* AF10A4 80079F04 00808825 */  move  $s1, $a0
/* AF10A8 80079F08 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF10AC 80079F0C AFB00014 */  sw    $s0, 0x14($sp)
/* AF10B0 80079F10 3C068014 */  lui   $a2, %hi(D_8013C8A0) # $a2, 0x8014
/* AF10B4 80079F14 00A08025 */  move  $s0, $a1
/* AF10B8 80079F18 24C6C8A0 */  addiu $a2, %lo(D_8013C8A0) # addiu $a2, $a2, -0x3760
/* AF10BC 80079F1C 27A4004C */  addiu $a0, $sp, 0x4c
/* AF10C0 80079F20 0C031AB1 */  jal   Graph_OpenDisp
/* AF10C4 80079F24 24070153 */   li    $a3, 339
/* AF10C8 80079F28 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* AF10CC 80079F2C 3C04DB02 */  lui   $a0, 0xdb02
/* AF10D0 80079F30 24050018 */  li    $a1, 24
/* AF10D4 80079F34 246E0008 */  addiu $t6, $v1, 8
/* AF10D8 80079F38 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AF10DC 80079F3C AC640000 */  sw    $a0, ($v1)
/* AF10E0 80079F40 922F0000 */  lbu   $t7, ($s1)
/* AF10E4 80079F44 00003825 */  move  $a3, $zero
/* AF10E8 80079F48 3C08DC08 */  lui   $t0, 0xdc08
/* AF10EC 80079F4C 01E50019 */  multu $t7, $a1
/* AF10F0 80079F50 0000C012 */  mflo  $t8
/* AF10F4 80079F54 AC780004 */  sw    $t8, 4($v1)
/* AF10F8 80079F58 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* AF10FC 80079F5C 24790008 */  addiu $t9, $v1, 8
/* AF1100 80079F60 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* AF1104 80079F64 AC640000 */  sw    $a0, ($v1)
/* AF1108 80079F68 92290000 */  lbu   $t1, ($s1)
/* AF110C 80079F6C 26240010 */  addiu $a0, $s1, 0x10
/* AF1110 80079F70 01250019 */  multu $t1, $a1
/* AF1114 80079F74 24050018 */  li    $a1, 24
/* AF1118 80079F78 00005012 */  mflo  $t2
/* AF111C 80079F7C AC6A0004 */  sw    $t2, 4($v1)
/* AF1120 80079F80 922B0000 */  lbu   $t3, ($s1)
/* AF1124 80079F84 5960001C */  blezl $t3, .L80079FF8
/* AF1128 80079F88 00072880 */   sll   $a1, $a3, 2
/* AF112C 80079F8C 8E0302C0 */  lw    $v1, 0x2c0($s0)
.L80079F90:
/* AF1130 80079F90 24A50018 */  addiu $a1, $a1, 0x18
/* AF1134 80079F94 24E70001 */  addiu $a3, $a3, 1
/* AF1138 80079F98 246C0008 */  addiu $t4, $v1, 8
/* AF113C 80079F9C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AF1140 80079FA0 00601025 */  move  $v0, $v1
/* AF1144 80079FA4 04A10003 */  bgez  $a1, .L80079FB4
/* AF1148 80079FA8 000568C3 */   sra   $t5, $a1, 3
/* AF114C 80079FAC 24A10007 */  addiu $at, $a1, 7
/* AF1150 80079FB0 000168C3 */  sra   $t5, $at, 3
.L80079FB4:
/* AF1154 80079FB4 31AE00FF */  andi  $t6, $t5, 0xff
/* AF1158 80079FB8 000E7A00 */  sll   $t7, $t6, 8
/* AF115C 80079FBC 01E83025 */  or    $a2, $t7, $t0
/* AF1160 80079FC0 34C6000A */  ori   $a2, $a2, 0xa
/* AF1164 80079FC4 AC460000 */  sw    $a2, ($v0)
/* AF1168 80079FC8 AC440004 */  sw    $a0, 4($v0)
/* AF116C 80079FCC 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* AF1170 80079FD0 24780008 */  addiu $t8, $v1, 8
/* AF1174 80079FD4 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AF1178 80079FD8 AC640004 */  sw    $a0, 4($v1)
/* AF117C 80079FDC AC660000 */  sw    $a2, ($v1)
/* AF1180 80079FE0 92390000 */  lbu   $t9, ($s1)
/* AF1184 80079FE4 24840010 */  addiu $a0, $a0, 0x10
/* AF1188 80079FE8 00F9082A */  slt   $at, $a3, $t9
/* AF118C 80079FEC 5420FFE8 */  bnezl $at, .L80079F90
/* AF1190 80079FF0 8E0302C0 */   lw    $v1, 0x2c0($s0)
/* AF1194 80079FF4 00072880 */  sll   $a1, $a3, 2
.L80079FF8:
/* AF1198 80079FF8 00A72823 */  subu  $a1, $a1, $a3
/* AF119C 80079FFC 000528C0 */  sll   $a1, $a1, 3
/* AF11A0 8007A000 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* AF11A4 8007A004 24A50030 */  addiu $a1, $a1, 0x30
/* AF11A8 8007A008 3C08DC08 */  lui   $t0, 0xdc08
/* AF11AC 8007A00C 24690008 */  addiu $t1, $v1, 8
/* AF11B0 8007A010 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AF11B4 8007A014 00601025 */  move  $v0, $v1
/* AF11B8 8007A018 04A10003 */  bgez  $a1, .L8007A028
/* AF11BC 8007A01C 000550C3 */   sra   $t2, $a1, 3
/* AF11C0 8007A020 24A10007 */  addiu $at, $a1, 7
/* AF11C4 8007A024 000150C3 */  sra   $t2, $at, 3
.L8007A028:
/* AF11C8 8007A028 314B00FF */  andi  $t3, $t2, 0xff
/* AF11CC 8007A02C 000B6200 */  sll   $t4, $t3, 8
/* AF11D0 8007A030 01883025 */  or    $a2, $t4, $t0
/* AF11D4 8007A034 34C6000A */  ori   $a2, $a2, 0xa
/* AF11D8 8007A038 26240008 */  addiu $a0, $s1, 8
/* AF11DC 8007A03C AC440004 */  sw    $a0, 4($v0)
/* AF11E0 8007A040 AC460000 */  sw    $a2, ($v0)
/* AF11E4 8007A044 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* AF11E8 8007A048 02002825 */  move  $a1, $s0
/* AF11EC 8007A04C 24070160 */  li    $a3, 352
/* AF11F0 8007A050 246D0008 */  addiu $t5, $v1, 8
/* AF11F4 8007A054 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AF11F8 8007A058 AC660000 */  sw    $a2, ($v1)
/* AF11FC 8007A05C 3C068014 */  lui   $a2, %hi(D_8013C8B0) # $a2, 0x8014
/* AF1200 8007A060 AC640004 */  sw    $a0, 4($v1)
/* AF1204 8007A064 27A4004C */  addiu $a0, $sp, 0x4c
/* AF1208 8007A068 0C031AD5 */  jal   Graph_CloseDisp
/* AF120C 8007A06C 24C6C8B0 */   addiu $a2, %lo(D_8013C8B0) # addiu $a2, $a2, -0x3750
/* AF1210 8007A070 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF1214 8007A074 8FB00014 */  lw    $s0, 0x14($sp)
/* AF1218 8007A078 8FB10018 */  lw    $s1, 0x18($sp)
/* AF121C 8007A07C 03E00008 */  jr    $ra
/* AF1220 8007A080 27BD0068 */   addiu $sp, $sp, 0x68

