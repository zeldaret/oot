.rdata
glabel D_80144A20
    .asciz "this"
    .balign 4

glabel D_80144A28
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A38
    .asciz "glistpp"
    .balign 4

glabel D_80144A40
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A50
    .asciz "glistp"
    .balign 4

glabel D_80144A58
    .asciz "../PreRender.c"
    .balign 4

.text
glabel func_800C0F28
/* B380C8 800C0F28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B380CC 800C0F2C AFB00018 */  sw    $s0, 0x18($sp)
/* B380D0 800C0F30 00808025 */  move  $s0, $a0
/* B380D4 800C0F34 AFA60030 */  sw    $a2, 0x30($sp)
/* B380D8 800C0F38 AFBF001C */  sw    $ra, 0x1c($sp)
/* B380DC 800C0F3C AFA5002C */  sw    $a1, 0x2c($sp)
/* B380E0 800C0F40 AFA70034 */  sw    $a3, 0x34($sp)
/* B380E4 800C0F44 3C068014 */  lui   $a2, %hi(D_80144A28) # $a2, 0x8014
/* B380E8 800C0F48 3C048014 */  lui   $a0, %hi(D_80144A20) # $a0, 0x8014
/* B380EC 800C0F4C 24844A20 */  addiu $a0, %lo(D_80144A20) # addiu $a0, $a0, 0x4a20
/* B380F0 800C0F50 24C64A28 */  addiu $a2, %lo(D_80144A28) # addiu $a2, $a2, 0x4a28
/* B380F4 800C0F54 240700D7 */  li    $a3, 215
/* B380F8 800C0F58 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B380FC 800C0F5C 02002825 */   move  $a1, $s0
/* B38100 800C0F60 3C048014 */  lui   $a0, %hi(D_80144A38) # $a0, 0x8014
/* B38104 800C0F64 3C068014 */  lui   $a2, %hi(D_80144A40) # $a2, 0x8014
/* B38108 800C0F68 24C64A40 */  addiu $a2, %lo(D_80144A40) # addiu $a2, $a2, 0x4a40
/* B3810C 800C0F6C 24844A38 */  addiu $a0, %lo(D_80144A38) # addiu $a0, $a0, 0x4a38
/* B38110 800C0F70 8FA5002C */  lw    $a1, 0x2c($sp)
/* B38114 800C0F74 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38118 800C0F78 240700D8 */   li    $a3, 216
/* B3811C 800C0F7C 8FAE002C */  lw    $t6, 0x2c($sp)
/* B38120 800C0F80 3C048014 */  lui   $a0, %hi(D_80144A50) # $a0, 0x8014
/* B38124 800C0F84 3C068014 */  lui   $a2, %hi(D_80144A58) # $a2, 0x8014
/* B38128 800C0F88 8DC50000 */  lw    $a1, ($t6)
/* B3812C 800C0F8C 24C64A58 */  addiu $a2, %lo(D_80144A58) # addiu $a2, $a2, 0x4a58
/* B38130 800C0F90 24844A50 */  addiu $a0, %lo(D_80144A50) # addiu $a0, $a0, 0x4a50
/* B38134 800C0F94 240700DA */  li    $a3, 218
/* B38138 800C0F98 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3813C 800C0F9C AFA50024 */   sw    $a1, 0x24($sp)
/* B38140 800C0FA0 8FA50024 */  lw    $a1, 0x24($sp)
/* B38144 800C0FA4 3C0FE700 */  lui   $t7, 0xe700
/* B38148 800C0FA8 3C18EF20 */  lui   $t8, 0xef20
/* B3814C 800C0FAC 00A01025 */  move  $v0, $a1
/* B38150 800C0FB0 AC4F0000 */  sw    $t7, ($v0)
/* B38154 800C0FB4 AC400004 */  sw    $zero, 4($v0)
/* B38158 800C0FB8 24A50008 */  addiu $a1, $a1, 8
/* B3815C 800C0FBC 00A01025 */  move  $v0, $a1
/* B38160 800C0FC0 AC580000 */  sw    $t8, ($v0)
/* B38164 800C0FC4 AC400004 */  sw    $zero, 4($v0)
/* B38168 800C0FC8 8E190000 */  lw    $t9, ($s0)
/* B3816C 800C0FCC 24A50008 */  addiu $a1, $a1, 8
/* B38170 800C0FD0 3C01FF10 */  lui   $at, 0xff10
/* B38174 800C0FD4 272EFFFF */  addiu $t6, $t9, -1
/* B38178 800C0FD8 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B3817C 800C0FDC 01E1C025 */  or    $t8, $t7, $at
/* B38180 800C0FE0 00A01025 */  move  $v0, $a1
/* B38184 800C0FE4 AC580000 */  sw    $t8, ($v0)
/* B38188 800C0FE8 8FB90034 */  lw    $t9, 0x34($sp)
/* B3818C 800C0FEC 24A50008 */  addiu $a1, $a1, 8
/* B38190 800C0FF0 3C0EED00 */  li    $t6, 0xED000000 # 0.000000
/* B38194 800C0FF4 AC590004 */  sw    $t9, 4($v0)
/* B38198 800C0FF8 00A01025 */  move  $v0, $a1
/* B3819C 800C0FFC AC4E0000 */  sw    $t6, ($v0)
/* B381A0 800C1000 8E0F0000 */  lw    $t7, ($s0)
/* B381A4 800C1004 8E180004 */  lw    $t8, 4($s0)
/* B381A8 800C1008 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B381AC 800C100C 448F2000 */  mtc1  $t7, $f4
/* B381B0 800C1010 44988000 */  mtc1  $t8, $f16
/* B381B4 800C1014 44810000 */  mtc1  $at, $f0
/* B381B8 800C1018 468021A0 */  cvt.s.w $f6, $f4
/* B381BC 800C101C 24A50008 */  addiu $a1, $a1, 8
/* B381C0 800C1020 00004025 */  move  $t0, $zero
/* B381C4 800C1024 3C1FFD10 */  lui   $ra, 0xfd10
/* B381C8 800C1028 3C0D0700 */  lui   $t5, 0x700
/* B381CC 800C102C 468084A0 */  cvt.s.w $f18, $f16
/* B381D0 800C1030 46003202 */  mul.s $f8, $f6, $f0
/* B381D4 800C1034 4600428D */  trunc.w.s $f10, $f8
/* B381D8 800C1038 46009102 */  mul.s $f4, $f18, $f0
/* B381DC 800C103C 44195000 */  mfc1  $t9, $f10
/* B381E0 800C1040 00000000 */  nop   
/* B381E4 800C1044 332E0FFF */  andi  $t6, $t9, 0xfff
/* B381E8 800C1048 4600218D */  trunc.w.s $f6, $f4
/* B381EC 800C104C 000E7B00 */  sll   $t7, $t6, 0xc
/* B381F0 800C1050 440E3000 */  mfc1  $t6, $f6
/* B381F4 800C1054 00000000 */  nop   
/* B381F8 800C1058 31D80FFF */  andi  $t8, $t6, 0xfff
/* B381FC 800C105C 01F8C825 */  or    $t9, $t7, $t8
/* B38200 800C1060 AC590004 */  sw    $t9, 4($v0)
/* B38204 800C1064 8E0E0000 */  lw    $t6, ($s0)
/* B38208 800C1068 24181000 */  li    $t8, 4096
/* B3820C 800C106C 8E0A0004 */  lw    $t2, 4($s0)
/* B38210 800C1070 000E7840 */  sll   $t7, $t6, 1
/* B38214 800C1074 030F001A */  div   $zero, $t8, $t7
/* B38218 800C1078 00006012 */  mflo  $t4
/* B3821C 800C107C 15E00002 */  bnez  $t7, .L800C1088
/* B38220 800C1080 00000000 */   nop   
/* B38224 800C1084 0007000D */  break 7
.L800C1088:
/* B38228 800C1088 2401FFFF */  li    $at, -1
/* B3822C 800C108C 15E10004 */  bne   $t7, $at, .L800C10A0
/* B38230 800C1090 3C018000 */   lui   $at, 0x8000
/* B38234 800C1094 17010002 */  bne   $t8, $at, .L800C10A0
/* B38238 800C1098 00000000 */   nop   
/* B3823C 800C109C 0006000D */  break 6
.L800C10A0:
/* B38240 800C10A0 59400058 */  blezl $t2, .L800C1204
/* B38244 800C10A4 00A01025 */   move  $v0, $a1
.L800C10A8:
/* B38248 800C10A8 8E030000 */  lw    $v1, ($s0)
/* B3824C 800C10AC 014C082A */  slt   $at, $t2, $t4
/* B38250 800C10B0 00A01025 */  move  $v0, $a1
/* B38254 800C10B4 2463FFFF */  addiu $v1, $v1, -1
/* B38258 800C10B8 10200002 */  beqz  $at, .L800C10C4
/* B3825C 800C10BC 00604825 */   move  $t1, $v1
/* B38260 800C10C0 01406025 */  move  $t4, $t2
.L800C10C4:
/* B38264 800C10C4 30790FFF */  andi  $t9, $v1, 0xfff
/* B38268 800C10C8 033F7025 */  or    $t6, $t9, $ra
/* B3826C 800C10CC AC4E0000 */  sw    $t6, ($v0)
/* B38270 800C10D0 8FB80030 */  lw    $t8, 0x30($sp)
/* B38274 800C10D4 00093840 */  sll   $a3, $t1, 1
/* B38278 800C10D8 24E70009 */  addiu $a3, $a3, 9
/* B3827C 800C10DC 000738C3 */  sra   $a3, $a3, 3
/* B38280 800C10E0 24A50008 */  addiu $a1, $a1, 8
/* B38284 800C10E4 AC580004 */  sw    $t8, 4($v0)
/* B38288 800C10E8 00A01025 */  move  $v0, $a1
/* B3828C 800C10EC 30E701FF */  andi  $a3, $a3, 0x1ff
/* B38290 800C10F0 00073A40 */  sll   $a3, $a3, 9
/* B38294 800C10F4 3C01F510 */  lui   $at, 0xf510
/* B38298 800C10F8 00E13825 */  or    $a3, $a3, $at
/* B3829C 800C10FC AC470000 */  sw    $a3, ($v0)
/* B382A0 800C1100 AC4D0004 */  sw    $t5, 4($v0)
/* B382A4 800C1104 24A50008 */  addiu $a1, $a1, 8
/* B382A8 800C1108 00A01025 */  move  $v0, $a1
/* B382AC 800C110C 00091880 */  sll   $v1, $t1, 2
/* B382B0 800C1110 3C0FE600 */  lui   $t7, 0xe600
/* B382B4 800C1114 010C5821 */  addu  $t3, $t0, $t4
/* B382B8 800C1118 2564FFFF */  addiu $a0, $t3, -1
/* B382BC 800C111C AC4F0000 */  sw    $t7, ($v0)
/* B382C0 800C1120 30630FFF */  andi  $v1, $v1, 0xfff
/* B382C4 800C1124 AC400004 */  sw    $zero, 4($v0)
/* B382C8 800C1128 24A50008 */  addiu $a1, $a1, 8
/* B382CC 800C112C 00A01025 */  move  $v0, $a1
/* B382D0 800C1130 00031B00 */  sll   $v1, $v1, 0xc
/* B382D4 800C1134 00042080 */  sll   $a0, $a0, 2
/* B382D8 800C1138 00083080 */  sll   $a2, $t0, 2
/* B382DC 800C113C 30C60FFF */  andi  $a2, $a2, 0xfff
/* B382E0 800C1140 30840FFF */  andi  $a0, $a0, 0xfff
/* B382E4 800C1144 006D7025 */  or    $t6, $v1, $t5
/* B382E8 800C1148 3C01F400 */  lui   $at, 0xf400
/* B382EC 800C114C 00C1C825 */  or    $t9, $a2, $at
/* B382F0 800C1150 01C4C025 */  or    $t8, $t6, $a0
/* B382F4 800C1154 AC580004 */  sw    $t8, 4($v0)
/* B382F8 800C1158 AC590000 */  sw    $t9, ($v0)
/* B382FC 800C115C 24A50008 */  addiu $a1, $a1, 8
/* B38300 800C1160 00A01025 */  move  $v0, $a1
/* B38304 800C1164 3C0FE700 */  lui   $t7, 0xe700
/* B38308 800C1168 AC4F0000 */  sw    $t7, ($v0)
/* B3830C 800C116C AC400004 */  sw    $zero, 4($v0)
/* B38310 800C1170 24A50008 */  addiu $a1, $a1, 8
/* B38314 800C1174 00A01025 */  move  $v0, $a1
/* B38318 800C1178 AC470000 */  sw    $a3, ($v0)
/* B3831C 800C117C AC400004 */  sw    $zero, 4($v0)
/* B38320 800C1180 24A50008 */  addiu $a1, $a1, 8
/* B38324 800C1184 00A01025 */  move  $v0, $a1
/* B38328 800C1188 3C01F200 */  lui   $at, 0xf200
/* B3832C 800C118C 00C1C825 */  or    $t9, $a2, $at
/* B38330 800C1190 00647025 */  or    $t6, $v1, $a0
/* B38334 800C1194 AC4E0004 */  sw    $t6, 4($v0)
/* B38338 800C1198 AC590000 */  sw    $t9, ($v0)
/* B3833C 800C119C 24A50008 */  addiu $a1, $a1, 8
/* B38340 800C11A0 00A01025 */  move  $v0, $a1
/* B38344 800C11A4 3C01E400 */  lui   $at, 0xe400
/* B38348 800C11A8 0061C025 */  or    $t8, $v1, $at
/* B3834C 800C11AC 03047825 */  or    $t7, $t8, $a0
/* B38350 800C11B0 AC4F0000 */  sw    $t7, ($v0)
/* B38354 800C11B4 AC460004 */  sw    $a2, 4($v0)
/* B38358 800C11B8 24A50008 */  addiu $a1, $a1, 8
/* B3835C 800C11BC 00A01025 */  move  $v0, $a1
/* B38360 800C11C0 3C19E100 */  lui   $t9, 0xe100
/* B38364 800C11C4 00087140 */  sll   $t6, $t0, 5
/* B38368 800C11C8 31D8FFFF */  andi  $t8, $t6, 0xffff
/* B3836C 800C11CC AC590000 */  sw    $t9, ($v0)
/* B38370 800C11D0 AC580004 */  sw    $t8, 4($v0)
/* B38374 800C11D4 24A50008 */  addiu $a1, $a1, 8
/* B38378 800C11D8 00A01025 */  move  $v0, $a1
/* B3837C 800C11DC 3C191000 */  lui   $t9, (0x10000400 >> 16) # lui $t9, 0x1000
/* B38380 800C11E0 37390400 */  ori   $t9, (0x10000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B38384 800C11E4 3C0FF100 */  lui   $t7, 0xf100
/* B38388 800C11E8 014C5023 */  subu  $t2, $t2, $t4
/* B3838C 800C11EC AC4F0000 */  sw    $t7, ($v0)
/* B38390 800C11F0 AC590004 */  sw    $t9, 4($v0)
/* B38394 800C11F4 24A50008 */  addiu $a1, $a1, 8
/* B38398 800C11F8 1D40FFAB */  bgtz  $t2, .L800C10A8
/* B3839C 800C11FC 01604025 */   move  $t0, $t3
/* B383A0 800C1200 00A01025 */  move  $v0, $a1
.L800C1204:
/* B383A4 800C1204 3C0EE700 */  lui   $t6, 0xe700
/* B383A8 800C1208 AC4E0000 */  sw    $t6, ($v0)
/* B383AC 800C120C AC400004 */  sw    $zero, 4($v0)
/* B383B0 800C1210 8E180000 */  lw    $t8, ($s0)
/* B383B4 800C1214 24A50008 */  addiu $a1, $a1, 8
/* B383B8 800C1218 3C01FF10 */  lui   $at, 0xff10
/* B383BC 800C121C 270FFFFF */  addiu $t7, $t8, -1
/* B383C0 800C1220 31F90FFF */  andi  $t9, $t7, 0xfff
/* B383C4 800C1224 03217025 */  or    $t6, $t9, $at
/* B383C8 800C1228 00A01025 */  move  $v0, $a1
/* B383CC 800C122C AC4E0000 */  sw    $t6, ($v0)
/* B383D0 800C1230 8E180010 */  lw    $t8, 0x10($s0)
/* B383D4 800C1234 24A50008 */  addiu $a1, $a1, 8
/* B383D8 800C1238 AC580004 */  sw    $t8, 4($v0)
/* B383DC 800C123C 8FAF002C */  lw    $t7, 0x2c($sp)
/* B383E0 800C1240 ADE50000 */  sw    $a1, ($t7)
/* B383E4 800C1244 8FBF001C */  lw    $ra, 0x1c($sp)
/* B383E8 800C1248 8FB00018 */  lw    $s0, 0x18($sp)
/* B383EC 800C124C 27BD0028 */  addiu $sp, $sp, 0x28
/* B383F0 800C1250 03E00008 */  jr    $ra
/* B383F4 800C1254 00000000 */   nop   

