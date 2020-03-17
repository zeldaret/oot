.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C0E70
/* B38010 800C0E70 AC850008 */  sw    $a1, 8($a0)
/* B38014 800C0E74 AC86000C */  sw    $a2, 0xc($a0)
/* B38018 800C0E78 AC870014 */  sw    $a3, 0x14($a0)
/* B3801C 800C0E7C 8FAE0014 */  lw    $t6, 0x14($sp)
/* B38020 800C0E80 24B8FFFF */  addiu $t8, $a1, -1
/* B38024 800C0E84 24D9FFFF */  addiu $t9, $a2, -1
/* B38028 800C0E88 AC8E0018 */  sw    $t6, 0x18($a0)
/* B3802C 800C0E8C 8FAF0010 */  lw    $t7, 0x10($sp)
/* B38030 800C0E90 AC800024 */  sw    $zero, 0x24($a0)
/* B38034 800C0E94 AC800028 */  sw    $zero, 0x28($a0)
/* B38038 800C0E98 AC98002C */  sw    $t8, 0x2c($a0)
/* B3803C 800C0E9C AC990030 */  sw    $t9, 0x30($a0)
/* B38040 800C0EA0 03E00008 */  jr    $ra
/* B38044 800C0EA4 AC8F0020 */   sw    $t7, 0x20($a0)

glabel func_800C0EA8
/* B38048 800C0EA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3804C 800C0EAC AFBF0014 */  sw    $ra, 0x14($sp)
/* B38050 800C0EB0 AFA40018 */  sw    $a0, 0x18($sp)
/* B38054 800C0EB4 0C001114 */  jal   bzero
/* B38058 800C0EB8 24050050 */   li    $a1, 80
/* B3805C 800C0EBC 8FA40018 */  lw    $a0, 0x18($sp)
/* B38060 800C0EC0 0C031B1C */  jal   ListAlloc_Init
/* B38064 800C0EC4 24840044 */   addiu $a0, $a0, 0x44
/* B38068 800C0EC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3806C 800C0ECC 27BD0018 */  addiu $sp, $sp, 0x18
/* B38070 800C0ED0 03E00008 */  jr    $ra
/* B38074 800C0ED4 00000000 */   nop   

glabel func_800C0ED8
/* B38078 800C0ED8 AC850000 */  sw    $a1, ($a0)
/* B3807C 800C0EDC AC860004 */  sw    $a2, 4($a0)
/* B38080 800C0EE0 AC870010 */  sw    $a3, 0x10($a0)
/* B38084 800C0EE4 8FAE0010 */  lw    $t6, 0x10($sp)
/* B38088 800C0EE8 24AFFFFF */  addiu $t7, $a1, -1
/* B3808C 800C0EEC 24D8FFFF */  addiu $t8, $a2, -1
/* B38090 800C0EF0 AC800034 */  sw    $zero, 0x34($a0)
/* B38094 800C0EF4 AC800038 */  sw    $zero, 0x38($a0)
/* B38098 800C0EF8 AC8F003C */  sw    $t7, 0x3c($a0)
/* B3809C 800C0EFC AC980040 */  sw    $t8, 0x40($a0)
/* B380A0 800C0F00 03E00008 */  jr    $ra
/* B380A4 800C0F04 AC8E001C */   sw    $t6, 0x1c($a0)

glabel func_800C0F08
/* B380A8 800C0F08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B380AC 800C0F0C AFBF0014 */  sw    $ra, 0x14($sp)
/* B380B0 800C0F10 0C031B61 */  jal   ListAlloc_FreeAll
/* B380B4 800C0F14 24840044 */   addiu $a0, $a0, 0x44
/* B380B8 800C0F18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B380BC 800C0F1C 27BD0018 */  addiu $sp, $sp, 0x18
/* B380C0 800C0F20 03E00008 */  jr    $ra
/* B380C4 800C0F24 00000000 */   nop   

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

glabel func_800C1258
/* B383F8 800C1258 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B383FC 800C125C AFB00018 */  sw    $s0, 0x18($sp)
/* B38400 800C1260 00808025 */  move  $s0, $a0
/* B38404 800C1264 AFBF001C */  sw    $ra, 0x1c($sp)
/* B38408 800C1268 AFA5002C */  sw    $a1, 0x2c($sp)
/* B3840C 800C126C 3C048014 */  lui   $a0, %hi(D_80144A68) # $a0, 0x8014
/* B38410 800C1270 3C068014 */  lui   $a2, %hi(D_80144A70) # $a2, 0x8014
/* B38414 800C1274 24C64A70 */  addiu $a2, %lo(D_80144A70) # addiu $a2, $a2, 0x4a70
/* B38418 800C1278 24844A68 */  addiu $a0, %lo(D_80144A68) # addiu $a0, $a0, 0x4a68
/* B3841C 800C127C 02002825 */  move  $a1, $s0
/* B38420 800C1280 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38424 800C1284 24070116 */   li    $a3, 278
/* B38428 800C1288 3C048014 */  lui   $a0, %hi(D_80144A80) # $a0, 0x8014
/* B3842C 800C128C 3C068014 */  lui   $a2, %hi(D_80144A88) # $a2, 0x8014
/* B38430 800C1290 24C64A88 */  addiu $a2, %lo(D_80144A88) # addiu $a2, $a2, 0x4a88
/* B38434 800C1294 24844A80 */  addiu $a0, %lo(D_80144A80) # addiu $a0, $a0, 0x4a80
/* B38438 800C1298 8FA5002C */  lw    $a1, 0x2c($sp)
/* B3843C 800C129C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38440 800C12A0 24070117 */   li    $a3, 279
/* B38444 800C12A4 8FAE002C */  lw    $t6, 0x2c($sp)
/* B38448 800C12A8 3C048014 */  lui   $a0, %hi(D_80144A98) # $a0, 0x8014
/* B3844C 800C12AC 3C068014 */  lui   $a2, %hi(D_80144AA0) # $a2, 0x8014
/* B38450 800C12B0 8DC50000 */  lw    $a1, ($t6)
/* B38454 800C12B4 24C64AA0 */  addiu $a2, %lo(D_80144AA0) # addiu $a2, $a2, 0x4aa0
/* B38458 800C12B8 24844A98 */  addiu $a0, %lo(D_80144A98) # addiu $a0, $a0, 0x4a98
/* B3845C 800C12BC 24070119 */  li    $a3, 281
/* B38460 800C12C0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38464 800C12C4 AFA50024 */   sw    $a1, 0x24($sp)
/* B38468 800C12C8 8FA50024 */  lw    $a1, 0x24($sp)
/* B3846C 800C12CC 3C0FE700 */  lui   $t7, 0xe700
/* B38470 800C12D0 3C18EF20 */  lui   $t8, 0xef20
/* B38474 800C12D4 00A01025 */  move  $v0, $a1
/* B38478 800C12D8 AC4F0000 */  sw    $t7, ($v0)
/* B3847C 800C12DC AC400004 */  sw    $zero, 4($v0)
/* B38480 800C12E0 24A50008 */  addiu $a1, $a1, 8
/* B38484 800C12E4 00A01025 */  move  $v0, $a1
/* B38488 800C12E8 AC580000 */  sw    $t8, ($v0)
/* B3848C 800C12EC AC400004 */  sw    $zero, 4($v0)
/* B38490 800C12F0 8E190000 */  lw    $t9, ($s0)
/* B38494 800C12F4 24A50008 */  addiu $a1, $a1, 8
/* B38498 800C12F8 3C01FF10 */  lui   $at, 0xff10
/* B3849C 800C12FC 272EFFFF */  addiu $t6, $t9, -1
/* B384A0 800C1300 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B384A4 800C1304 01E1C025 */  or    $t8, $t7, $at
/* B384A8 800C1308 00A01025 */  move  $v0, $a1
/* B384AC 800C130C AC580000 */  sw    $t8, ($v0)
/* B384B0 800C1310 8E190010 */  lw    $t9, 0x10($s0)
/* B384B4 800C1314 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B384B8 800C1318 44810000 */  mtc1  $at, $f0
/* B384BC 800C131C AC590004 */  sw    $t9, 4($v0)
/* B384C0 800C1320 8E0E0034 */  lw    $t6, 0x34($s0)
/* B384C4 800C1324 3C01ED00 */  li    $at, 0xED000000 # 0.000000
/* B384C8 800C1328 24A50008 */  addiu $a1, $a1, 8
/* B384CC 800C132C 448E2000 */  mtc1  $t6, $f4
/* B384D0 800C1330 00A01025 */  move  $v0, $a1
/* B384D4 800C1334 24A50008 */  addiu $a1, $a1, 8
/* B384D8 800C1338 468021A0 */  cvt.s.w $f6, $f4
/* B384DC 800C133C 00004825 */  move  $t1, $zero
/* B384E0 800C1340 3C1FE600 */  lui   $ra, 0xe600
/* B384E4 800C1344 3C0DFD10 */  lui   $t5, 0xfd10
/* B384E8 800C1348 3C0C0700 */  lui   $t4, 0x700
/* B384EC 800C134C 3C0BF510 */  lui   $t3, 0xf510
/* B384F0 800C1350 46003202 */  mul.s $f8, $f6, $f0
/* B384F4 800C1354 4600428D */  trunc.w.s $f10, $f8
/* B384F8 800C1358 44185000 */  mfc1  $t8, $f10
/* B384FC 800C135C 00000000 */  nop   
/* B38500 800C1360 33190FFF */  andi  $t9, $t8, 0xfff
/* B38504 800C1364 8E180038 */  lw    $t8, 0x38($s0)
/* B38508 800C1368 00197300 */  sll   $t6, $t9, 0xc
/* B3850C 800C136C 01C17825 */  or    $t7, $t6, $at
/* B38510 800C1370 44988000 */  mtc1  $t8, $f16
/* B38514 800C1374 00000000 */  nop   
/* B38518 800C1378 468084A0 */  cvt.s.w $f18, $f16
/* B3851C 800C137C 46009102 */  mul.s $f4, $f18, $f0
/* B38520 800C1380 4600218D */  trunc.w.s $f6, $f4
/* B38524 800C1384 440E3000 */  mfc1  $t6, $f6
/* B38528 800C1388 00000000 */  nop   
/* B3852C 800C138C 31D80FFF */  andi  $t8, $t6, 0xfff
/* B38530 800C1390 01F8C825 */  or    $t9, $t7, $t8
/* B38534 800C1394 AC590000 */  sw    $t9, ($v0)
/* B38538 800C1398 8E0E003C */  lw    $t6, 0x3c($s0)
/* B3853C 800C139C 8E180040 */  lw    $t8, 0x40($s0)
/* B38540 800C13A0 25CF0001 */  addiu $t7, $t6, 1
/* B38544 800C13A4 448F4000 */  mtc1  $t7, $f8
/* B38548 800C13A8 00000000 */  nop   
/* B3854C 800C13AC 468042A0 */  cvt.s.w $f10, $f8
/* B38550 800C13B0 46005402 */  mul.s $f16, $f10, $f0
/* B38554 800C13B4 4600848D */  trunc.w.s $f18, $f16
/* B38558 800C13B8 44199000 */  mfc1  $t9, $f18
/* B3855C 800C13BC 00000000 */  nop   
/* B38560 800C13C0 332E0FFF */  andi  $t6, $t9, 0xfff
/* B38564 800C13C4 27190001 */  addiu $t9, $t8, 1
/* B38568 800C13C8 44992000 */  mtc1  $t9, $f4
/* B3856C 800C13CC 000E7B00 */  sll   $t7, $t6, 0xc
/* B38570 800C13D0 468021A0 */  cvt.s.w $f6, $f4
/* B38574 800C13D4 46003202 */  mul.s $f8, $f6, $f0
/* B38578 800C13D8 4600428D */  trunc.w.s $f10, $f8
/* B3857C 800C13DC 44185000 */  mfc1  $t8, $f10
/* B38580 800C13E0 00000000 */  nop   
/* B38584 800C13E4 33190FFF */  andi  $t9, $t8, 0xfff
/* B38588 800C13E8 01F97025 */  or    $t6, $t7, $t9
/* B3858C 800C13EC AC4E0004 */  sw    $t6, 4($v0)
/* B38590 800C13F0 8E0F0024 */  lw    $t7, 0x24($s0)
/* B38594 800C13F4 8E18002C */  lw    $t8, 0x2c($s0)
/* B38598 800C13F8 030FC823 */  subu  $t9, $t8, $t7
/* B3859C 800C13FC 00197040 */  sll   $t6, $t9, 1
/* B385A0 800C1400 25D80002 */  addiu $t8, $t6, 2
/* B385A4 800C1404 240F1000 */  li    $t7, 4096
/* B385A8 800C1408 01F8001A */  div   $zero, $t7, $t8
/* B385AC 800C140C 8E0E0028 */  lw    $t6, 0x28($s0)
/* B385B0 800C1410 8E190030 */  lw    $t9, 0x30($s0)
/* B385B4 800C1414 00003012 */  mflo  $a2
/* B385B8 800C1418 032E4023 */  subu  $t0, $t9, $t6
/* B385BC 800C141C 17000002 */  bnez  $t8, .L800C1428
/* B385C0 800C1420 00000000 */   nop   
/* B385C4 800C1424 0007000D */  break 7
.L800C1428:
/* B385C8 800C1428 2401FFFF */  li    $at, -1
/* B385CC 800C142C 17010004 */  bne   $t8, $at, .L800C1440
/* B385D0 800C1430 3C018000 */   lui   $at, 0x8000
/* B385D4 800C1434 15E10002 */  bne   $t7, $at, .L800C1440
/* B385D8 800C1438 00000000 */   nop   
/* B385DC 800C143C 0006000D */  break 6
.L800C1440:
/* B385E0 800C1440 25080001 */  addiu $t0, $t0, 1
/* B385E4 800C1444 19000084 */  blez  $t0, .L800C1658
.L800C1448:
/* B385E8 800C1448 0106082A */   slt   $at, $t0, $a2
/* B385EC 800C144C 10200002 */  beqz  $at, .L800C1458
/* B385F0 800C1450 8E020028 */   lw    $v0, 0x28($s0)
/* B385F4 800C1454 01003025 */  move  $a2, $t0
.L800C1458:
/* B385F8 800C1458 8E180008 */  lw    $t8, 8($s0)
/* B385FC 800C145C 8E0F0038 */  lw    $t7, 0x38($s0)
/* B38600 800C1460 00493821 */  addu  $a3, $v0, $t1
/* B38604 800C1464 2719FFFF */  addiu $t9, $t8, -1
/* B38608 800C1468 332E0FFF */  andi  $t6, $t9, 0xfff
/* B3860C 800C146C 01E95021 */  addu  $t2, $t7, $t1
/* B38610 800C1470 01CD7825 */  or    $t7, $t6, $t5
/* B38614 800C1474 00A01025 */  move  $v0, $a1
/* B38618 800C1478 AC4F0000 */  sw    $t7, ($v0)
/* B3861C 800C147C 8E180014 */  lw    $t8, 0x14($s0)
/* B38620 800C1480 24A50008 */  addiu $a1, $a1, 8
/* B38624 800C1484 00071880 */  sll   $v1, $a3, 2
/* B38628 800C1488 AC580004 */  sw    $t8, 4($v0)
/* B3862C 800C148C 8E0E0024 */  lw    $t6, 0x24($s0)
/* B38630 800C1490 8E19002C */  lw    $t9, 0x2c($s0)
/* B38634 800C1494 00A01025 */  move  $v0, $a1
/* B38638 800C1498 AC4C0004 */  sw    $t4, 4($v0)
/* B3863C 800C149C 032E7823 */  subu  $t7, $t9, $t6
/* B38640 800C14A0 000FC040 */  sll   $t8, $t7, 1
/* B38644 800C14A4 27190009 */  addiu $t9, $t8, 9
/* B38648 800C14A8 001970C3 */  sra   $t6, $t9, 3
/* B3864C 800C14AC 31CF01FF */  andi  $t7, $t6, 0x1ff
/* B38650 800C14B0 000FC240 */  sll   $t8, $t7, 9
/* B38654 800C14B4 030BC825 */  or    $t9, $t8, $t3
/* B38658 800C14B8 AC590000 */  sw    $t9, ($v0)
/* B3865C 800C14BC 24A50008 */  addiu $a1, $a1, 8
/* B38660 800C14C0 00A01025 */  move  $v0, $a1
/* B38664 800C14C4 AC5F0000 */  sw    $ra, ($v0)
/* B38668 800C14C8 AC400004 */  sw    $zero, 4($v0)
/* B3866C 800C14CC 8E0E0024 */  lw    $t6, 0x24($s0)
/* B38670 800C14D0 3C01F400 */  lui   $at, 0xf400
/* B38674 800C14D4 24A50008 */  addiu $a1, $a1, 8
/* B38678 800C14D8 000E7880 */  sll   $t7, $t6, 2
/* B3867C 800C14DC 31F80FFF */  andi  $t8, $t7, 0xfff
/* B38680 800C14E0 0018CB00 */  sll   $t9, $t8, 0xc
/* B38684 800C14E4 03217025 */  or    $t6, $t9, $at
/* B38688 800C14E8 30630FFF */  andi  $v1, $v1, 0xfff
/* B3868C 800C14EC 01C37825 */  or    $t7, $t6, $v1
/* B38690 800C14F0 00A01025 */  move  $v0, $a1
/* B38694 800C14F4 AC4F0000 */  sw    $t7, ($v0)
/* B38698 800C14F8 8E18002C */  lw    $t8, 0x2c($s0)
/* B3869C 800C14FC 00E62021 */  addu  $a0, $a3, $a2
/* B386A0 800C1500 2484FFFF */  addiu $a0, $a0, -1
/* B386A4 800C1504 0018C880 */  sll   $t9, $t8, 2
/* B386A8 800C1508 332E0FFF */  andi  $t6, $t9, 0xfff
/* B386AC 800C150C 000E7B00 */  sll   $t7, $t6, 0xc
/* B386B0 800C1510 00042080 */  sll   $a0, $a0, 2
/* B386B4 800C1514 30840FFF */  andi  $a0, $a0, 0xfff
/* B386B8 800C1518 01ECC025 */  or    $t8, $t7, $t4
/* B386BC 800C151C 0304C825 */  or    $t9, $t8, $a0
/* B386C0 800C1520 AC590004 */  sw    $t9, 4($v0)
/* B386C4 800C1524 24A50008 */  addiu $a1, $a1, 8
/* B386C8 800C1528 00A01025 */  move  $v0, $a1
/* B386CC 800C152C 3C0EE700 */  lui   $t6, 0xe700
/* B386D0 800C1530 AC4E0000 */  sw    $t6, ($v0)
/* B386D4 800C1534 AC400004 */  sw    $zero, 4($v0)
/* B386D8 800C1538 8E180024 */  lw    $t8, 0x24($s0)
/* B386DC 800C153C 8E0F002C */  lw    $t7, 0x2c($s0)
/* B386E0 800C1540 24A50008 */  addiu $a1, $a1, 8
/* B386E4 800C1544 00A01025 */  move  $v0, $a1
/* B386E8 800C1548 01F8C823 */  subu  $t9, $t7, $t8
/* B386EC 800C154C 00197040 */  sll   $t6, $t9, 1
/* B386F0 800C1550 25CF0009 */  addiu $t7, $t6, 9
/* B386F4 800C1554 000FC0C3 */  sra   $t8, $t7, 3
/* B386F8 800C1558 331901FF */  andi  $t9, $t8, 0x1ff
/* B386FC 800C155C 00197240 */  sll   $t6, $t9, 9
/* B38700 800C1560 01CB7825 */  or    $t7, $t6, $t3
/* B38704 800C1564 AC4F0000 */  sw    $t7, ($v0)
/* B38708 800C1568 AC400004 */  sw    $zero, 4($v0)
/* B3870C 800C156C 8E180024 */  lw    $t8, 0x24($s0)
/* B38710 800C1570 3C01F200 */  lui   $at, 0xf200
/* B38714 800C1574 24A50008 */  addiu $a1, $a1, 8
/* B38718 800C1578 0018C880 */  sll   $t9, $t8, 2
/* B3871C 800C157C 332E0FFF */  andi  $t6, $t9, 0xfff
/* B38720 800C1580 000E7B00 */  sll   $t7, $t6, 0xc
/* B38724 800C1584 01E1C025 */  or    $t8, $t7, $at
/* B38728 800C1588 0303C825 */  or    $t9, $t8, $v1
/* B3872C 800C158C 00A01025 */  move  $v0, $a1
/* B38730 800C1590 AC590000 */  sw    $t9, ($v0)
/* B38734 800C1594 8E0E002C */  lw    $t6, 0x2c($s0)
/* B38738 800C1598 3C01E400 */  lui   $at, 0xe400
/* B3873C 800C159C 24A50008 */  addiu $a1, $a1, 8
/* B38740 800C15A0 000E7880 */  sll   $t7, $t6, 2
/* B38744 800C15A4 31F80FFF */  andi  $t8, $t7, 0xfff
/* B38748 800C15A8 0018CB00 */  sll   $t9, $t8, 0xc
/* B3874C 800C15AC 03247025 */  or    $t6, $t9, $a0
/* B38750 800C15B0 AC4E0004 */  sw    $t6, 4($v0)
/* B38754 800C15B4 8E0F003C */  lw    $t7, 0x3c($s0)
/* B38758 800C15B8 00A01025 */  move  $v0, $a1
/* B3875C 800C15BC 24A50008 */  addiu $a1, $a1, 8
/* B38760 800C15C0 000FC080 */  sll   $t8, $t7, 2
/* B38764 800C15C4 33190FFF */  andi  $t9, $t8, 0xfff
/* B38768 800C15C8 00197300 */  sll   $t6, $t9, 0xc
/* B3876C 800C15CC 0146C021 */  addu  $t8, $t2, $a2
/* B38770 800C15D0 2719FFFF */  addiu $t9, $t8, -1
/* B38774 800C15D4 01C17825 */  or    $t7, $t6, $at
/* B38778 800C15D8 00197080 */  sll   $t6, $t9, 2
/* B3877C 800C15DC 31D80FFF */  andi  $t8, $t6, 0xfff
/* B38780 800C15E0 01F8C825 */  or    $t9, $t7, $t8
/* B38784 800C15E4 AC590000 */  sw    $t9, ($v0)
/* B38788 800C15E8 8E0E0034 */  lw    $t6, 0x34($s0)
/* B3878C 800C15EC 01064023 */  subu  $t0, $t0, $a2
/* B38790 800C15F0 01264821 */  addu  $t1, $t1, $a2
/* B38794 800C15F4 000E7880 */  sll   $t7, $t6, 2
/* B38798 800C15F8 31F80FFF */  andi  $t8, $t7, 0xfff
/* B3879C 800C15FC 000A7080 */  sll   $t6, $t2, 2
/* B387A0 800C1600 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B387A4 800C1604 0018CB00 */  sll   $t9, $t8, 0xc
/* B387A8 800C1608 032FC025 */  or    $t8, $t9, $t7
/* B387AC 800C160C AC580004 */  sw    $t8, 4($v0)
/* B387B0 800C1610 00A01025 */  move  $v0, $a1
/* B387B4 800C1614 3C0EE100 */  lui   $t6, 0xe100
/* B387B8 800C1618 AC4E0000 */  sw    $t6, ($v0)
/* B387BC 800C161C 8E180024 */  lw    $t8, 0x24($s0)
/* B387C0 800C1620 0007C940 */  sll   $t9, $a3, 5
/* B387C4 800C1624 332FFFFF */  andi  $t7, $t9, 0xffff
/* B387C8 800C1628 00187540 */  sll   $t6, $t8, 0x15
/* B387CC 800C162C 01CFC025 */  or    $t8, $t6, $t7
/* B387D0 800C1630 AC580004 */  sw    $t8, 4($v0)
/* B387D4 800C1634 24A50008 */  addiu $a1, $a1, 8
/* B387D8 800C1638 00A01025 */  move  $v0, $a1
/* B387DC 800C163C 3C0E1000 */  lui   $t6, (0x10000400 >> 16) # lui $t6, 0x1000
/* B387E0 800C1640 35CE0400 */  ori   $t6, (0x10000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B387E4 800C1644 3C19F100 */  lui   $t9, 0xf100
/* B387E8 800C1648 AC590000 */  sw    $t9, ($v0)
/* B387EC 800C164C AC4E0004 */  sw    $t6, 4($v0)
/* B387F0 800C1650 1D00FF7D */  bgtz  $t0, .L800C1448
/* B387F4 800C1654 24A50008 */   addiu $a1, $a1, 8
.L800C1658:
/* B387F8 800C1658 00A01025 */  move  $v0, $a1
/* B387FC 800C165C 3C0FE700 */  lui   $t7, 0xe700
/* B38800 800C1660 AC4F0000 */  sw    $t7, ($v0)
/* B38804 800C1664 AC400004 */  sw    $zero, 4($v0)
/* B38808 800C1668 8E180000 */  lw    $t8, ($s0)
/* B3880C 800C166C 24A50008 */  addiu $a1, $a1, 8
/* B38810 800C1670 3C01FF10 */  lui   $at, 0xff10
/* B38814 800C1674 2719FFFF */  addiu $t9, $t8, -1
/* B38818 800C1678 332E0FFF */  andi  $t6, $t9, 0xfff
/* B3881C 800C167C 01C17825 */  or    $t7, $t6, $at
/* B38820 800C1680 00A01025 */  move  $v0, $a1
/* B38824 800C1684 AC4F0000 */  sw    $t7, ($v0)
/* B38828 800C1688 8E180010 */  lw    $t8, 0x10($s0)
/* B3882C 800C168C 24A50008 */  addiu $a1, $a1, 8
/* B38830 800C1690 3C19ED00 */  lui   $t9, 0xed00
/* B38834 800C1694 AC580004 */  sw    $t8, 4($v0)
/* B38838 800C1698 00A01025 */  move  $v0, $a1
/* B3883C 800C169C AC590000 */  sw    $t9, ($v0)
/* B38840 800C16A0 8E0E0000 */  lw    $t6, ($s0)
/* B38844 800C16A4 8E0F0004 */  lw    $t7, 4($s0)
/* B38848 800C16A8 24A50008 */  addiu $a1, $a1, 8
/* B3884C 800C16AC 448E8000 */  mtc1  $t6, $f16
/* B38850 800C16B0 448F4000 */  mtc1  $t7, $f8
/* B38854 800C16B4 468084A0 */  cvt.s.w $f18, $f16
/* B38858 800C16B8 468042A0 */  cvt.s.w $f10, $f8
/* B3885C 800C16BC 46009102 */  mul.s $f4, $f18, $f0
/* B38860 800C16C0 4600218D */  trunc.w.s $f6, $f4
/* B38864 800C16C4 46005402 */  mul.s $f16, $f10, $f0
/* B38868 800C16C8 44183000 */  mfc1  $t8, $f6
/* B3886C 800C16CC 00000000 */  nop   
/* B38870 800C16D0 33190FFF */  andi  $t9, $t8, 0xfff
/* B38874 800C16D4 4600848D */  trunc.w.s $f18, $f16
/* B38878 800C16D8 00197300 */  sll   $t6, $t9, 0xc
/* B3887C 800C16DC 44199000 */  mfc1  $t9, $f18
/* B38880 800C16E0 00000000 */  nop   
/* B38884 800C16E4 332F0FFF */  andi  $t7, $t9, 0xfff
/* B38888 800C16E8 01CFC025 */  or    $t8, $t6, $t7
/* B3888C 800C16EC AC580004 */  sw    $t8, 4($v0)
/* B38890 800C16F0 8FB9002C */  lw    $t9, 0x2c($sp)
/* B38894 800C16F4 AF250000 */  sw    $a1, ($t9)
/* B38898 800C16F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3889C 800C16FC 8FB00018 */  lw    $s0, 0x18($sp)
/* B388A0 800C1700 27BD0028 */  addiu $sp, $sp, 0x28
/* B388A4 800C1704 03E00008 */  jr    $ra
/* B388A8 800C1708 00000000 */   nop   

glabel func_800C170C
/* B388AC 800C170C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B388B0 800C1710 AFB00018 */  sw    $s0, 0x18($sp)
/* B388B4 800C1714 00808025 */  move  $s0, $a0
/* B388B8 800C1718 AFA60030 */  sw    $a2, 0x30($sp)
/* B388BC 800C171C AFBF001C */  sw    $ra, 0x1c($sp)
/* B388C0 800C1720 AFA5002C */  sw    $a1, 0x2c($sp)
/* B388C4 800C1724 AFA70034 */  sw    $a3, 0x34($sp)
/* B388C8 800C1728 3C068014 */  lui   $a2, %hi(D_80144AB8) # $a2, 0x8014
/* B388CC 800C172C 3C048014 */  lui   $a0, %hi(D_80144AB0) # $a0, 0x8014
/* B388D0 800C1730 24844AB0 */  addiu $a0, %lo(D_80144AB0) # addiu $a0, $a0, 0x4ab0
/* B388D4 800C1734 24C64AB8 */  addiu $a2, %lo(D_80144AB8) # addiu $a2, $a2, 0x4ab8
/* B388D8 800C1738 24070157 */  li    $a3, 343
/* B388DC 800C173C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B388E0 800C1740 02002825 */   move  $a1, $s0
/* B388E4 800C1744 3C048014 */  lui   $a0, %hi(D_80144AC8) # $a0, 0x8014
/* B388E8 800C1748 3C068014 */  lui   $a2, %hi(D_80144AD0) # $a2, 0x8014
/* B388EC 800C174C 24C64AD0 */  addiu $a2, %lo(D_80144AD0) # addiu $a2, $a2, 0x4ad0
/* B388F0 800C1750 24844AC8 */  addiu $a0, %lo(D_80144AC8) # addiu $a0, $a0, 0x4ac8
/* B388F4 800C1754 8FA5002C */  lw    $a1, 0x2c($sp)
/* B388F8 800C1758 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B388FC 800C175C 24070158 */   li    $a3, 344
/* B38900 800C1760 8FAE002C */  lw    $t6, 0x2c($sp)
/* B38904 800C1764 3C048014 */  lui   $a0, %hi(D_80144AE0) # $a0, 0x8014
/* B38908 800C1768 3C068014 */  lui   $a2, %hi(D_80144AE8) # $a2, 0x8014
/* B3890C 800C176C 8DC50000 */  lw    $a1, ($t6)
/* B38910 800C1770 24C64AE8 */  addiu $a2, %lo(D_80144AE8) # addiu $a2, $a2, 0x4ae8
/* B38914 800C1774 24844AE0 */  addiu $a0, %lo(D_80144AE0) # addiu $a0, $a0, 0x4ae0
/* B38918 800C1778 2407015A */  li    $a3, 346
/* B3891C 800C177C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38920 800C1780 AFA50024 */   sw    $a1, 0x24($sp)
/* B38924 800C1784 8FA50024 */  lw    $a1, 0x24($sp)
/* B38928 800C1788 3C0FE700 */  lui   $t7, 0xe700
/* B3892C 800C178C 3C18EF00 */  lui   $t8, (0xEF000CF0 >> 16) # lui $t8, 0xef00
/* B38930 800C1790 00A01025 */  move  $v0, $a1
/* B38934 800C1794 AC4F0000 */  sw    $t7, ($v0)
/* B38938 800C1798 AC400004 */  sw    $zero, 4($v0)
/* B3893C 800C179C 24A50008 */  addiu $a1, $a1, 8
/* B38940 800C17A0 00A01025 */  move  $v0, $a1
/* B38944 800C17A4 3C190F0A */  lui   $t9, (0x0F0A4004 >> 16) # lui $t9, 0xf0a
/* B38948 800C17A8 37394004 */  ori   $t9, (0x0F0A4004 & 0xFFFF) # ori $t9, $t9, 0x4004
/* B3894C 800C17AC 37180CF0 */  ori   $t8, (0xEF000CF0 & 0xFFFF) # ori $t8, $t8, 0xcf0
/* B38950 800C17B0 AC580000 */  sw    $t8, ($v0)
/* B38954 800C17B4 AC590004 */  sw    $t9, 4($v0)
/* B38958 800C17B8 24A50008 */  addiu $a1, $a1, 8
/* B3895C 800C17BC 00A01025 */  move  $v0, $a1
/* B38960 800C17C0 3C0EFB00 */  lui   $t6, 0xfb00
/* B38964 800C17C4 AC4E0000 */  sw    $t6, ($v0)
/* B38968 800C17C8 8FAE003C */  lw    $t6, 0x3c($sp)
/* B3896C 800C17CC 8FB80038 */  lw    $t8, 0x38($sp)
/* B38970 800C17D0 24A50008 */  addiu $a1, $a1, 8
/* B38974 800C17D4 31CF00FF */  andi  $t7, $t6, 0xff
/* B38978 800C17D8 0018CE00 */  sll   $t9, $t8, 0x18
/* B3897C 800C17DC 000FC400 */  sll   $t8, $t7, 0x10
/* B38980 800C17E0 8FAF0040 */  lw    $t7, 0x40($sp)
/* B38984 800C17E4 03387025 */  or    $t6, $t9, $t8
/* B38988 800C17E8 3C01FF10 */  lui   $at, 0xff10
/* B3898C 800C17EC 31F900FF */  andi  $t9, $t7, 0xff
/* B38990 800C17F0 0019C200 */  sll   $t8, $t9, 8
/* B38994 800C17F4 8FB90044 */  lw    $t9, 0x44($sp)
/* B38998 800C17F8 01D87825 */  or    $t7, $t6, $t8
/* B3899C 800C17FC 00004025 */  move  $t0, $zero
/* B389A0 800C1800 332E00FF */  andi  $t6, $t9, 0xff
/* B389A4 800C1804 01EEC025 */  or    $t8, $t7, $t6
/* B389A8 800C1808 AC580004 */  sw    $t8, 4($v0)
/* B389AC 800C180C 00A01025 */  move  $v0, $a1
/* B389B0 800C1810 3C0FFFFC */  lui   $t7, (0xFFFCFC7E >> 16) # lui $t7, 0xfffc
/* B389B4 800C1814 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* B389B8 800C1818 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* B389BC 800C181C 35EFFC7E */  ori   $t7, (0xFFFCFC7E & 0xFFFF) # ori $t7, $t7, 0xfc7e
/* B389C0 800C1820 AC4F0004 */  sw    $t7, 4($v0)
/* B389C4 800C1824 AC590000 */  sw    $t9, ($v0)
/* B389C8 800C1828 24A50008 */  addiu $a1, $a1, 8
/* B389CC 800C182C 00A01025 */  move  $v0, $a1
/* B389D0 800C1830 3C0EFC12 */  lui   $t6, (0xFC12FE25 >> 16) # lui $t6, 0xfc12
/* B389D4 800C1834 35CEFE25 */  ori   $t6, (0xFC12FE25 & 0xFFFF) # ori $t6, $t6, 0xfe25
/* B389D8 800C1838 2418FDFE */  li    $t8, -514
/* B389DC 800C183C AC580004 */  sw    $t8, 4($v0)
/* B389E0 800C1840 AC4E0000 */  sw    $t6, ($v0)
/* B389E4 800C1844 8E190000 */  lw    $t9, ($s0)
/* B389E8 800C1848 24A50008 */  addiu $a1, $a1, 8
/* B389EC 800C184C 00A01025 */  move  $v0, $a1
/* B389F0 800C1850 272FFFFF */  addiu $t7, $t9, -1
/* B389F4 800C1854 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B389F8 800C1858 01C1C025 */  or    $t8, $t6, $at
/* B389FC 800C185C AC580000 */  sw    $t8, ($v0)
/* B38A00 800C1860 8FB90034 */  lw    $t9, 0x34($sp)
/* B38A04 800C1864 24A50008 */  addiu $a1, $a1, 8
/* B38A08 800C1868 3C0FED00 */  li    $t7, 0xED000000 # 0.000000
/* B38A0C 800C186C AC590004 */  sw    $t9, 4($v0)
/* B38A10 800C1870 00A01025 */  move  $v0, $a1
/* B38A14 800C1874 AC4F0000 */  sw    $t7, ($v0)
/* B38A18 800C1878 8E0E0000 */  lw    $t6, ($s0)
/* B38A1C 800C187C 8E180004 */  lw    $t8, 4($s0)
/* B38A20 800C1880 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B38A24 800C1884 448E2000 */  mtc1  $t6, $f4
/* B38A28 800C1888 44988000 */  mtc1  $t8, $f16
/* B38A2C 800C188C 44810000 */  mtc1  $at, $f0
/* B38A30 800C1890 468021A0 */  cvt.s.w $f6, $f4
/* B38A34 800C1894 24A50008 */  addiu $a1, $a1, 8
/* B38A38 800C1898 3C1F0700 */  lui   $ra, 0x700
/* B38A3C 800C189C 468084A0 */  cvt.s.w $f18, $f16
/* B38A40 800C18A0 46003202 */  mul.s $f8, $f6, $f0
/* B38A44 800C18A4 4600428D */  trunc.w.s $f10, $f8
/* B38A48 800C18A8 46009102 */  mul.s $f4, $f18, $f0
/* B38A4C 800C18AC 44195000 */  mfc1  $t9, $f10
/* B38A50 800C18B0 00000000 */  nop   
/* B38A54 800C18B4 332F0FFF */  andi  $t7, $t9, 0xfff
/* B38A58 800C18B8 4600218D */  trunc.w.s $f6, $f4
/* B38A5C 800C18BC 000F7300 */  sll   $t6, $t7, 0xc
/* B38A60 800C18C0 440F3000 */  mfc1  $t7, $f6
/* B38A64 800C18C4 00000000 */  nop   
/* B38A68 800C18C8 31F80FFF */  andi  $t8, $t7, 0xfff
/* B38A6C 800C18CC 01D8C825 */  or    $t9, $t6, $t8
/* B38A70 800C18D0 AC590004 */  sw    $t9, 4($v0)
/* B38A74 800C18D4 8E0F0000 */  lw    $t7, ($s0)
/* B38A78 800C18D8 24181000 */  li    $t8, 4096
/* B38A7C 800C18DC 8E0B0004 */  lw    $t3, 4($s0)
/* B38A80 800C18E0 000F7040 */  sll   $t6, $t7, 1
/* B38A84 800C18E4 030E001A */  div   $zero, $t8, $t6
/* B38A88 800C18E8 00006812 */  mflo  $t5
/* B38A8C 800C18EC 15C00002 */  bnez  $t6, .L800C18F8
/* B38A90 800C18F0 00000000 */   nop   
/* B38A94 800C18F4 0007000D */  break 7
.L800C18F8:
/* B38A98 800C18F8 2401FFFF */  li    $at, -1
/* B38A9C 800C18FC 15C10004 */  bne   $t6, $at, .L800C1910
/* B38AA0 800C1900 3C018000 */   lui   $at, 0x8000
/* B38AA4 800C1904 17010002 */  bne   $t8, $at, .L800C1910
/* B38AA8 800C1908 00000000 */   nop   
/* B38AAC 800C190C 0006000D */  break 6
.L800C1910:
/* B38AB0 800C1910 59600060 */  blezl $t3, .L800C1A94
/* B38AB4 800C1914 00A01025 */   move  $v0, $a1
.L800C1918:
/* B38AB8 800C1918 8E030000 */  lw    $v1, ($s0)
/* B38ABC 800C191C 016D082A */  slt   $at, $t3, $t5
/* B38AC0 800C1920 00A01025 */  move  $v0, $a1
/* B38AC4 800C1924 2463FFFF */  addiu $v1, $v1, -1
/* B38AC8 800C1928 10200002 */  beqz  $at, .L800C1934
/* B38ACC 800C192C 00605025 */   move  $t2, $v1
/* B38AD0 800C1930 01606825 */  move  $t5, $t3
.L800C1934:
/* B38AD4 800C1934 30790FFF */  andi  $t9, $v1, 0xfff
/* B38AD8 800C1938 3C01FD10 */  lui   $at, 0xfd10
/* B38ADC 800C193C 03217825 */  or    $t7, $t9, $at
/* B38AE0 800C1940 AC4F0000 */  sw    $t7, ($v0)
/* B38AE4 800C1944 8FB80030 */  lw    $t8, 0x30($sp)
/* B38AE8 800C1948 000A3840 */  sll   $a3, $t2, 1
/* B38AEC 800C194C 24E70009 */  addiu $a3, $a3, 9
/* B38AF0 800C1950 000738C3 */  sra   $a3, $a3, 3
/* B38AF4 800C1954 24A50008 */  addiu $a1, $a1, 8
/* B38AF8 800C1958 AC580004 */  sw    $t8, 4($v0)
/* B38AFC 800C195C 00A01025 */  move  $v0, $a1
/* B38B00 800C1960 30E701FF */  andi  $a3, $a3, 0x1ff
/* B38B04 800C1964 00073A40 */  sll   $a3, $a3, 9
/* B38B08 800C1968 3C01F510 */  lui   $at, 0xf510
/* B38B0C 800C196C 00E13825 */  or    $a3, $a3, $at
/* B38B10 800C1970 AC470000 */  sw    $a3, ($v0)
/* B38B14 800C1974 AC5F0004 */  sw    $ra, 4($v0)
/* B38B18 800C1978 24A50008 */  addiu $a1, $a1, 8
/* B38B1C 800C197C 00A01025 */  move  $v0, $a1
/* B38B20 800C1980 000A1880 */  sll   $v1, $t2, 2
/* B38B24 800C1984 3C0EE600 */  lui   $t6, 0xe600
/* B38B28 800C1988 010D6021 */  addu  $t4, $t0, $t5
/* B38B2C 800C198C 2589FFFF */  addiu $t1, $t4, -1
/* B38B30 800C1990 AC4E0000 */  sw    $t6, ($v0)
/* B38B34 800C1994 30630FFF */  andi  $v1, $v1, 0xfff
/* B38B38 800C1998 AC400004 */  sw    $zero, 4($v0)
/* B38B3C 800C199C 24A50008 */  addiu $a1, $a1, 8
/* B38B40 800C19A0 00A01025 */  move  $v0, $a1
/* B38B44 800C19A4 00031B00 */  sll   $v1, $v1, 0xc
/* B38B48 800C19A8 00093080 */  sll   $a2, $t1, 2
/* B38B4C 800C19AC 00082080 */  sll   $a0, $t0, 2
/* B38B50 800C19B0 30840FFF */  andi  $a0, $a0, 0xfff
/* B38B54 800C19B4 30C60FFF */  andi  $a2, $a2, 0xfff
/* B38B58 800C19B8 007F7825 */  or    $t7, $v1, $ra
/* B38B5C 800C19BC 3C01F400 */  lui   $at, 0xf400
/* B38B60 800C19C0 0081C825 */  or    $t9, $a0, $at
/* B38B64 800C19C4 01E6C025 */  or    $t8, $t7, $a2
/* B38B68 800C19C8 AC580004 */  sw    $t8, 4($v0)
/* B38B6C 800C19CC AC590000 */  sw    $t9, ($v0)
/* B38B70 800C19D0 24A50008 */  addiu $a1, $a1, 8
/* B38B74 800C19D4 00A01025 */  move  $v0, $a1
/* B38B78 800C19D8 3C0EE700 */  lui   $t6, 0xe700
/* B38B7C 800C19DC AC4E0000 */  sw    $t6, ($v0)
/* B38B80 800C19E0 AC400004 */  sw    $zero, 4($v0)
/* B38B84 800C19E4 24A50008 */  addiu $a1, $a1, 8
/* B38B88 800C19E8 00A01025 */  move  $v0, $a1
/* B38B8C 800C19EC AC470000 */  sw    $a3, ($v0)
/* B38B90 800C19F0 AC400004 */  sw    $zero, 4($v0)
/* B38B94 800C19F4 24A50008 */  addiu $a1, $a1, 8
/* B38B98 800C19F8 3C01F200 */  lui   $at, 0xf200
/* B38B9C 800C19FC 0081C825 */  or    $t9, $a0, $at
/* B38BA0 800C1A00 00A01025 */  move  $v0, $a1
/* B38BA4 800C1A04 25580001 */  addiu $t8, $t2, 1
/* B38BA8 800C1A08 AC590000 */  sw    $t9, ($v0)
/* B38BAC 800C1A0C 00667825 */  or    $t7, $v1, $a2
/* B38BB0 800C1A10 00187080 */  sll   $t6, $t8, 2
/* B38BB4 800C1A14 AC4F0004 */  sw    $t7, 4($v0)
/* B38BB8 800C1A18 31D90FFF */  andi  $t9, $t6, 0xfff
/* B38BBC 800C1A1C 00197B00 */  sll   $t7, $t9, 0xc
/* B38BC0 800C1A20 24A50008 */  addiu $a1, $a1, 8
/* B38BC4 800C1A24 252E0001 */  addiu $t6, $t1, 1
/* B38BC8 800C1A28 3C01E400 */  lui   $at, 0xe400
/* B38BCC 800C1A2C 01E1C025 */  or    $t8, $t7, $at
/* B38BD0 800C1A30 000EC880 */  sll   $t9, $t6, 2
/* B38BD4 800C1A34 00A01025 */  move  $v0, $a1
/* B38BD8 800C1A38 332F0FFF */  andi  $t7, $t9, 0xfff
/* B38BDC 800C1A3C 030F7025 */  or    $t6, $t8, $t7
/* B38BE0 800C1A40 AC4E0000 */  sw    $t6, ($v0)
/* B38BE4 800C1A44 AC440004 */  sw    $a0, 4($v0)
/* B38BE8 800C1A48 24A50008 */  addiu $a1, $a1, 8
/* B38BEC 800C1A4C 00A01025 */  move  $v0, $a1
/* B38BF0 800C1A50 0008C140 */  sll   $t8, $t0, 5
/* B38BF4 800C1A54 3C19E100 */  lui   $t9, 0xe100
/* B38BF8 800C1A58 AC590000 */  sw    $t9, ($v0)
/* B38BFC 800C1A5C 330FFFFF */  andi  $t7, $t8, 0xffff
/* B38C00 800C1A60 AC4F0004 */  sw    $t7, 4($v0)
/* B38C04 800C1A64 24A50008 */  addiu $a1, $a1, 8
/* B38C08 800C1A68 00A01025 */  move  $v0, $a1
/* B38C0C 800C1A6C 3C190400 */  lui   $t9, (0x04000400 >> 16) # lui $t9, 0x400
/* B38C10 800C1A70 37390400 */  ori   $t9, (0x04000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B38C14 800C1A74 3C0EF100 */  lui   $t6, 0xf100
/* B38C18 800C1A78 016D5823 */  subu  $t3, $t3, $t5
/* B38C1C 800C1A7C AC4E0000 */  sw    $t6, ($v0)
/* B38C20 800C1A80 AC590004 */  sw    $t9, 4($v0)
/* B38C24 800C1A84 24A50008 */  addiu $a1, $a1, 8
/* B38C28 800C1A88 1D60FFA3 */  bgtz  $t3, .L800C1918
/* B38C2C 800C1A8C 01804025 */   move  $t0, $t4
/* B38C30 800C1A90 00A01025 */  move  $v0, $a1
.L800C1A94:
/* B38C34 800C1A94 3C18E700 */  lui   $t8, 0xe700
/* B38C38 800C1A98 AC580000 */  sw    $t8, ($v0)
/* B38C3C 800C1A9C AC400004 */  sw    $zero, 4($v0)
/* B38C40 800C1AA0 8E0F0000 */  lw    $t7, ($s0)
/* B38C44 800C1AA4 24A50008 */  addiu $a1, $a1, 8
/* B38C48 800C1AA8 3C01FF10 */  lui   $at, 0xff10
/* B38C4C 800C1AAC 25EEFFFF */  addiu $t6, $t7, -1
/* B38C50 800C1AB0 31D90FFF */  andi  $t9, $t6, 0xfff
/* B38C54 800C1AB4 0321C025 */  or    $t8, $t9, $at
/* B38C58 800C1AB8 00A01025 */  move  $v0, $a1
/* B38C5C 800C1ABC AC580000 */  sw    $t8, ($v0)
/* B38C60 800C1AC0 8E0F0010 */  lw    $t7, 0x10($s0)
/* B38C64 800C1AC4 24A50008 */  addiu $a1, $a1, 8
/* B38C68 800C1AC8 AC4F0004 */  sw    $t7, 4($v0)
/* B38C6C 800C1ACC 8FAE002C */  lw    $t6, 0x2c($sp)
/* B38C70 800C1AD0 ADC50000 */  sw    $a1, ($t6)
/* B38C74 800C1AD4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B38C78 800C1AD8 8FB00018 */  lw    $s0, 0x18($sp)
/* B38C7C 800C1ADC 27BD0028 */  addiu $sp, $sp, 0x28
/* B38C80 800C1AE0 03E00008 */  jr    $ra
/* B38C84 800C1AE4 00000000 */   nop   

glabel func_800C1AE8
/* B38C88 800C1AE8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B38C8C 800C1AEC AFBF0024 */  sw    $ra, 0x24($sp)
/* B38C90 800C1AF0 240E00FF */  li    $t6, 255
/* B38C94 800C1AF4 240F00FF */  li    $t7, 255
/* B38C98 800C1AF8 241800FF */  li    $t8, 255
/* B38C9C 800C1AFC 241900FF */  li    $t9, 255
/* B38CA0 800C1B00 AFB9001C */  sw    $t9, 0x1c($sp)
/* B38CA4 800C1B04 AFB80018 */  sw    $t8, 0x18($sp)
/* B38CA8 800C1B08 AFAF0014 */  sw    $t7, 0x14($sp)
/* B38CAC 800C1B0C 0C0305C3 */  jal   func_800C170C
/* B38CB0 800C1B10 AFAE0010 */   sw    $t6, 0x10($sp)
/* B38CB4 800C1B14 8FBF0024 */  lw    $ra, 0x24($sp)
/* B38CB8 800C1B18 27BD0028 */  addiu $sp, $sp, 0x28
/* B38CBC 800C1B1C 03E00008 */  jr    $ra
/* B38CC0 800C1B20 00000000 */   nop   

glabel func_800C1B24
/* B38CC4 800C1B24 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B38CC8 800C1B28 AFB00018 */  sw    $s0, 0x18($sp)
/* B38CCC 800C1B2C 00808025 */  move  $s0, $a0
/* B38CD0 800C1B30 AFA60030 */  sw    $a2, 0x30($sp)
/* B38CD4 800C1B34 AFBF001C */  sw    $ra, 0x1c($sp)
/* B38CD8 800C1B38 AFA5002C */  sw    $a1, 0x2c($sp)
/* B38CDC 800C1B3C AFA70034 */  sw    $a3, 0x34($sp)
/* B38CE0 800C1B40 3C068014 */  lui   $a2, %hi(D_80144B00) # $a2, 0x8014
/* B38CE4 800C1B44 3C048014 */  lui   $a0, %hi(D_80144AF8) # $a0, 0x8014
/* B38CE8 800C1B48 24844AF8 */  addiu $a0, %lo(D_80144AF8) # addiu $a0, $a0, 0x4af8
/* B38CEC 800C1B4C 24C64B00 */  addiu $a2, %lo(D_80144B00) # addiu $a2, $a2, 0x4b00
/* B38CF0 800C1B50 240701A6 */  li    $a3, 422
/* B38CF4 800C1B54 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38CF8 800C1B58 02002825 */   move  $a1, $s0
/* B38CFC 800C1B5C 3C048014 */  lui   $a0, %hi(D_80144B10) # $a0, 0x8014
/* B38D00 800C1B60 3C068014 */  lui   $a2, %hi(D_80144B18) # $a2, 0x8014
/* B38D04 800C1B64 24C64B18 */  addiu $a2, %lo(D_80144B18) # addiu $a2, $a2, 0x4b18
/* B38D08 800C1B68 24844B10 */  addiu $a0, %lo(D_80144B10) # addiu $a0, $a0, 0x4b10
/* B38D0C 800C1B6C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B38D10 800C1B70 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38D14 800C1B74 240701A7 */   li    $a3, 423
/* B38D18 800C1B78 8FAE002C */  lw    $t6, 0x2c($sp)
/* B38D1C 800C1B7C 3C048014 */  lui   $a0, %hi(D_80144B28) # $a0, 0x8014
/* B38D20 800C1B80 3C068014 */  lui   $a2, %hi(D_80144B30) # $a2, 0x8014
/* B38D24 800C1B84 8DC50000 */  lw    $a1, ($t6)
/* B38D28 800C1B88 24C64B30 */  addiu $a2, %lo(D_80144B30) # addiu $a2, $a2, 0x4b30
/* B38D2C 800C1B8C 24844B28 */  addiu $a0, %lo(D_80144B28) # addiu $a0, $a0, 0x4b28
/* B38D30 800C1B90 240701A9 */  li    $a3, 425
/* B38D34 800C1B94 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38D38 800C1B98 AFA50024 */   sw    $a1, 0x24($sp)
/* B38D3C 800C1B9C 8FA50024 */  lw    $a1, 0x24($sp)
/* B38D40 800C1BA0 3C0FE700 */  lui   $t7, 0xe700
/* B38D44 800C1BA4 3C18EF00 */  lui   $t8, (0xEF000CF0 >> 16) # lui $t8, 0xef00
/* B38D48 800C1BA8 00A01025 */  move  $v0, $a1
/* B38D4C 800C1BAC AC4F0000 */  sw    $t7, ($v0)
/* B38D50 800C1BB0 AC400004 */  sw    $zero, 4($v0)
/* B38D54 800C1BB4 24A50008 */  addiu $a1, $a1, 8
/* B38D58 800C1BB8 00A01025 */  move  $v0, $a1
/* B38D5C 800C1BBC 3C190F0A */  lui   $t9, (0x0F0A0004 >> 16) # lui $t9, 0xf0a
/* B38D60 800C1BC0 37390004 */  ori   $t9, (0x0F0A0004 & 0xFFFF) # ori $t9, $t9, 4
/* B38D64 800C1BC4 37180CF0 */  ori   $t8, (0xEF000CF0 & 0xFFFF) # ori $t8, $t8, 0xcf0
/* B38D68 800C1BC8 AC580000 */  sw    $t8, ($v0)
/* B38D6C 800C1BCC AC590004 */  sw    $t9, 4($v0)
/* B38D70 800C1BD0 24A50008 */  addiu $a1, $a1, 8
/* B38D74 800C1BD4 00A01025 */  move  $v0, $a1
/* B38D78 800C1BD8 3C0FFFFC */  lui   $t7, (0xFFFCFE7F >> 16) # lui $t7, 0xfffc
/* B38D7C 800C1BDC 3C0EFCFF */  lui   $t6, (0xFCFFFFFF >> 16) # lui $t6, 0xfcff
/* B38D80 800C1BE0 35CEFFFF */  ori   $t6, (0xFCFFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* B38D84 800C1BE4 35EFFE7F */  ori   $t7, (0xFFFCFE7F & 0xFFFF) # ori $t7, $t7, 0xfe7f
/* B38D88 800C1BE8 AC4F0004 */  sw    $t7, 4($v0)
/* B38D8C 800C1BEC AC4E0000 */  sw    $t6, ($v0)
/* B38D90 800C1BF0 8E180000 */  lw    $t8, ($s0)
/* B38D94 800C1BF4 24A50008 */  addiu $a1, $a1, 8
/* B38D98 800C1BF8 3C01FF88 */  lui   $at, 0xff88
/* B38D9C 800C1BFC 2719FFFF */  addiu $t9, $t8, -1
/* B38DA0 800C1C00 332E0FFF */  andi  $t6, $t9, 0xfff
/* B38DA4 800C1C04 01C17825 */  or    $t7, $t6, $at
/* B38DA8 800C1C08 00A01025 */  move  $v0, $a1
/* B38DAC 800C1C0C AC4F0000 */  sw    $t7, ($v0)
/* B38DB0 800C1C10 8FB80034 */  lw    $t8, 0x34($sp)
/* B38DB4 800C1C14 24A50008 */  addiu $a1, $a1, 8
/* B38DB8 800C1C18 3C19ED00 */  li    $t9, 0xED000000 # 0.000000
/* B38DBC 800C1C1C AC580004 */  sw    $t8, 4($v0)
/* B38DC0 800C1C20 00A01025 */  move  $v0, $a1
/* B38DC4 800C1C24 AC590000 */  sw    $t9, ($v0)
/* B38DC8 800C1C28 8E0E0000 */  lw    $t6, ($s0)
/* B38DCC 800C1C2C 8E0F0004 */  lw    $t7, 4($s0)
/* B38DD0 800C1C30 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B38DD4 800C1C34 448E2000 */  mtc1  $t6, $f4
/* B38DD8 800C1C38 448F8000 */  mtc1  $t7, $f16
/* B38DDC 800C1C3C 44810000 */  mtc1  $at, $f0
/* B38DE0 800C1C40 468021A0 */  cvt.s.w $f6, $f4
/* B38DE4 800C1C44 24A50008 */  addiu $a1, $a1, 8
/* B38DE8 800C1C48 00004025 */  move  $t0, $zero
/* B38DEC 800C1C4C 3C1F0700 */  lui   $ra, 0x700
/* B38DF0 800C1C50 468084A0 */  cvt.s.w $f18, $f16
/* B38DF4 800C1C54 46003202 */  mul.s $f8, $f6, $f0
/* B38DF8 800C1C58 4600428D */  trunc.w.s $f10, $f8
/* B38DFC 800C1C5C 46009102 */  mul.s $f4, $f18, $f0
/* B38E00 800C1C60 44185000 */  mfc1  $t8, $f10
/* B38E04 800C1C64 00000000 */  nop   
/* B38E08 800C1C68 33190FFF */  andi  $t9, $t8, 0xfff
/* B38E0C 800C1C6C 4600218D */  trunc.w.s $f6, $f4
/* B38E10 800C1C70 00197300 */  sll   $t6, $t9, 0xc
/* B38E14 800C1C74 44193000 */  mfc1  $t9, $f6
/* B38E18 800C1C78 00000000 */  nop   
/* B38E1C 800C1C7C 332F0FFF */  andi  $t7, $t9, 0xfff
/* B38E20 800C1C80 01CFC025 */  or    $t8, $t6, $t7
/* B38E24 800C1C84 AC580004 */  sw    $t8, 4($v0)
/* B38E28 800C1C88 8E190000 */  lw    $t9, ($s0)
/* B38E2C 800C1C8C 240F1000 */  li    $t7, 4096
/* B38E30 800C1C90 8E0B0004 */  lw    $t3, 4($s0)
/* B38E34 800C1C94 00197040 */  sll   $t6, $t9, 1
/* B38E38 800C1C98 01EE001A */  div   $zero, $t7, $t6
/* B38E3C 800C1C9C 00006812 */  mflo  $t5
/* B38E40 800C1CA0 15C00002 */  bnez  $t6, .L800C1CAC
/* B38E44 800C1CA4 00000000 */   nop   
/* B38E48 800C1CA8 0007000D */  break 7
.L800C1CAC:
/* B38E4C 800C1CAC 2401FFFF */  li    $at, -1
/* B38E50 800C1CB0 15C10004 */  bne   $t6, $at, .L800C1CC4
/* B38E54 800C1CB4 3C018000 */   lui   $at, 0x8000
/* B38E58 800C1CB8 15E10002 */  bne   $t7, $at, .L800C1CC4
/* B38E5C 800C1CBC 00000000 */   nop   
/* B38E60 800C1CC0 0006000D */  break 6
.L800C1CC4:
/* B38E64 800C1CC4 59600060 */  blezl $t3, .L800C1E48
/* B38E68 800C1CC8 00A01025 */   move  $v0, $a1
.L800C1CCC:
/* B38E6C 800C1CCC 8E030000 */  lw    $v1, ($s0)
/* B38E70 800C1CD0 016D082A */  slt   $at, $t3, $t5
/* B38E74 800C1CD4 00A01025 */  move  $v0, $a1
/* B38E78 800C1CD8 2463FFFF */  addiu $v1, $v1, -1
/* B38E7C 800C1CDC 10200002 */  beqz  $at, .L800C1CE8
/* B38E80 800C1CE0 00605025 */   move  $t2, $v1
/* B38E84 800C1CE4 01606825 */  move  $t5, $t3
.L800C1CE8:
/* B38E88 800C1CE8 30780FFF */  andi  $t8, $v1, 0xfff
/* B38E8C 800C1CEC 3C01FD70 */  lui   $at, 0xfd70
/* B38E90 800C1CF0 0301C825 */  or    $t9, $t8, $at
/* B38E94 800C1CF4 AC590000 */  sw    $t9, ($v0)
/* B38E98 800C1CF8 8FAF0030 */  lw    $t7, 0x30($sp)
/* B38E9C 800C1CFC 000A3840 */  sll   $a3, $t2, 1
/* B38EA0 800C1D00 24E70009 */  addiu $a3, $a3, 9
/* B38EA4 800C1D04 000738C3 */  sra   $a3, $a3, 3
/* B38EA8 800C1D08 24A50008 */  addiu $a1, $a1, 8
/* B38EAC 800C1D0C AC4F0004 */  sw    $t7, 4($v0)
/* B38EB0 800C1D10 00A01025 */  move  $v0, $a1
/* B38EB4 800C1D14 30E701FF */  andi  $a3, $a3, 0x1ff
/* B38EB8 800C1D18 00073A40 */  sll   $a3, $a3, 9
/* B38EBC 800C1D1C 3C01F570 */  lui   $at, 0xf570
/* B38EC0 800C1D20 00E13825 */  or    $a3, $a3, $at
/* B38EC4 800C1D24 AC470000 */  sw    $a3, ($v0)
/* B38EC8 800C1D28 AC5F0004 */  sw    $ra, 4($v0)
/* B38ECC 800C1D2C 24A50008 */  addiu $a1, $a1, 8
/* B38ED0 800C1D30 00A01025 */  move  $v0, $a1
/* B38ED4 800C1D34 000A1880 */  sll   $v1, $t2, 2
/* B38ED8 800C1D38 3C0EE600 */  lui   $t6, 0xe600
/* B38EDC 800C1D3C 010D6021 */  addu  $t4, $t0, $t5
/* B38EE0 800C1D40 2589FFFF */  addiu $t1, $t4, -1
/* B38EE4 800C1D44 AC4E0000 */  sw    $t6, ($v0)
/* B38EE8 800C1D48 30630FFF */  andi  $v1, $v1, 0xfff
/* B38EEC 800C1D4C AC400004 */  sw    $zero, 4($v0)
/* B38EF0 800C1D50 24A50008 */  addiu $a1, $a1, 8
/* B38EF4 800C1D54 00A01025 */  move  $v0, $a1
/* B38EF8 800C1D58 00031B00 */  sll   $v1, $v1, 0xc
/* B38EFC 800C1D5C 00093080 */  sll   $a2, $t1, 2
/* B38F00 800C1D60 00082080 */  sll   $a0, $t0, 2
/* B38F04 800C1D64 30840FFF */  andi  $a0, $a0, 0xfff
/* B38F08 800C1D68 30C60FFF */  andi  $a2, $a2, 0xfff
/* B38F0C 800C1D6C 007FC825 */  or    $t9, $v1, $ra
/* B38F10 800C1D70 3C01F400 */  lui   $at, 0xf400
/* B38F14 800C1D74 0081C025 */  or    $t8, $a0, $at
/* B38F18 800C1D78 03267825 */  or    $t7, $t9, $a2
/* B38F1C 800C1D7C AC4F0004 */  sw    $t7, 4($v0)
/* B38F20 800C1D80 AC580000 */  sw    $t8, ($v0)
/* B38F24 800C1D84 24A50008 */  addiu $a1, $a1, 8
/* B38F28 800C1D88 00A01025 */  move  $v0, $a1
/* B38F2C 800C1D8C 3C0EE700 */  lui   $t6, 0xe700
/* B38F30 800C1D90 AC4E0000 */  sw    $t6, ($v0)
/* B38F34 800C1D94 AC400004 */  sw    $zero, 4($v0)
/* B38F38 800C1D98 24A50008 */  addiu $a1, $a1, 8
/* B38F3C 800C1D9C 00A01025 */  move  $v0, $a1
/* B38F40 800C1DA0 AC470000 */  sw    $a3, ($v0)
/* B38F44 800C1DA4 AC400004 */  sw    $zero, 4($v0)
/* B38F48 800C1DA8 24A50008 */  addiu $a1, $a1, 8
/* B38F4C 800C1DAC 3C01F200 */  lui   $at, 0xf200
/* B38F50 800C1DB0 0081C025 */  or    $t8, $a0, $at
/* B38F54 800C1DB4 00A01025 */  move  $v0, $a1
/* B38F58 800C1DB8 254F0001 */  addiu $t7, $t2, 1
/* B38F5C 800C1DBC AC580000 */  sw    $t8, ($v0)
/* B38F60 800C1DC0 0066C825 */  or    $t9, $v1, $a2
/* B38F64 800C1DC4 000F7080 */  sll   $t6, $t7, 2
/* B38F68 800C1DC8 AC590004 */  sw    $t9, 4($v0)
/* B38F6C 800C1DCC 31D80FFF */  andi  $t8, $t6, 0xfff
/* B38F70 800C1DD0 0018CB00 */  sll   $t9, $t8, 0xc
/* B38F74 800C1DD4 24A50008 */  addiu $a1, $a1, 8
/* B38F78 800C1DD8 252E0001 */  addiu $t6, $t1, 1
/* B38F7C 800C1DDC 3C01E400 */  lui   $at, 0xe400
/* B38F80 800C1DE0 03217825 */  or    $t7, $t9, $at
/* B38F84 800C1DE4 000EC080 */  sll   $t8, $t6, 2
/* B38F88 800C1DE8 00A01025 */  move  $v0, $a1
/* B38F8C 800C1DEC 33190FFF */  andi  $t9, $t8, 0xfff
/* B38F90 800C1DF0 01F97025 */  or    $t6, $t7, $t9
/* B38F94 800C1DF4 AC4E0000 */  sw    $t6, ($v0)
/* B38F98 800C1DF8 AC440004 */  sw    $a0, 4($v0)
/* B38F9C 800C1DFC 24A50008 */  addiu $a1, $a1, 8
/* B38FA0 800C1E00 00A01025 */  move  $v0, $a1
/* B38FA4 800C1E04 00087940 */  sll   $t7, $t0, 5
/* B38FA8 800C1E08 3C18E100 */  lui   $t8, 0xe100
/* B38FAC 800C1E0C AC580000 */  sw    $t8, ($v0)
/* B38FB0 800C1E10 31F9FFFF */  andi  $t9, $t7, 0xffff
/* B38FB4 800C1E14 AC590004 */  sw    $t9, 4($v0)
/* B38FB8 800C1E18 24A50008 */  addiu $a1, $a1, 8
/* B38FBC 800C1E1C 00A01025 */  move  $v0, $a1
/* B38FC0 800C1E20 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* B38FC4 800C1E24 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B38FC8 800C1E28 3C0EF100 */  lui   $t6, 0xf100
/* B38FCC 800C1E2C 016D5823 */  subu  $t3, $t3, $t5
/* B38FD0 800C1E30 AC4E0000 */  sw    $t6, ($v0)
/* B38FD4 800C1E34 AC580004 */  sw    $t8, 4($v0)
/* B38FD8 800C1E38 24A50008 */  addiu $a1, $a1, 8
/* B38FDC 800C1E3C 1D60FFA3 */  bgtz  $t3, .L800C1CCC
/* B38FE0 800C1E40 01804025 */   move  $t0, $t4
/* B38FE4 800C1E44 00A01025 */  move  $v0, $a1
.L800C1E48:
/* B38FE8 800C1E48 3C0FE700 */  lui   $t7, 0xe700
/* B38FEC 800C1E4C AC4F0000 */  sw    $t7, ($v0)
/* B38FF0 800C1E50 AC400004 */  sw    $zero, 4($v0)
/* B38FF4 800C1E54 8E190000 */  lw    $t9, ($s0)
/* B38FF8 800C1E58 24A50008 */  addiu $a1, $a1, 8
/* B38FFC 800C1E5C 3C01FF10 */  lui   $at, 0xff10
/* B39000 800C1E60 272EFFFF */  addiu $t6, $t9, -1
/* B39004 800C1E64 31D80FFF */  andi  $t8, $t6, 0xfff
/* B39008 800C1E68 03017825 */  or    $t7, $t8, $at
/* B3900C 800C1E6C 00A01025 */  move  $v0, $a1
/* B39010 800C1E70 AC4F0000 */  sw    $t7, ($v0)
/* B39014 800C1E74 8E190010 */  lw    $t9, 0x10($s0)
/* B39018 800C1E78 24A50008 */  addiu $a1, $a1, 8
/* B3901C 800C1E7C AC590004 */  sw    $t9, 4($v0)
/* B39020 800C1E80 8FAE002C */  lw    $t6, 0x2c($sp)
/* B39024 800C1E84 ADC50000 */  sw    $a1, ($t6)
/* B39028 800C1E88 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3902C 800C1E8C 8FB00018 */  lw    $s0, 0x18($sp)
/* B39030 800C1E90 27BD0028 */  addiu $sp, $sp, 0x28
/* B39034 800C1E94 03E00008 */  jr    $ra
/* B39038 800C1E98 00000000 */   nop   

glabel func_800C1E9C
/* B3903C 800C1E9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B39040 800C1EA0 AFB00018 */  sw    $s0, 0x18($sp)
/* B39044 800C1EA4 00808025 */  move  $s0, $a0
/* B39048 800C1EA8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3904C 800C1EAC AFA50024 */  sw    $a1, 0x24($sp)
/* B39050 800C1EB0 3C048014 */  lui   $a0, %hi(D_80144B40) # $a0, 0x8014
/* B39054 800C1EB4 3C068014 */  lui   $a2, %hi(D_80144B50) # $a2, 0x8014
/* B39058 800C1EB8 24C64B50 */  addiu $a2, %lo(D_80144B50) # addiu $a2, $a2, 0x4b50
/* B3905C 800C1EBC 24844B40 */  addiu $a0, %lo(D_80144B40) # addiu $a0, $a0, 0x4b40
/* B39060 800C1EC0 8E050020 */  lw    $a1, 0x20($s0)
/* B39064 800C1EC4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39068 800C1EC8 240701E1 */   li    $a3, 481
/* B3906C 800C1ECC 3C048014 */  lui   $a0, %hi(D_80144B60) # $a0, 0x8014
/* B39070 800C1ED0 3C068014 */  lui   $a2, %hi(D_80144B6C) # $a2, 0x8014
/* B39074 800C1ED4 24C64B6C */  addiu $a2, %lo(D_80144B6C) # addiu $a2, $a2, 0x4b6c
/* B39078 800C1ED8 24844B60 */  addiu $a0, %lo(D_80144B60) # addiu $a0, $a0, 0x4b60
/* B3907C 800C1EDC 8E05001C */  lw    $a1, 0x1c($s0)
/* B39080 800C1EE0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39084 800C1EE4 240701E2 */   li    $a3, 482
/* B39088 800C1EE8 8E070020 */  lw    $a3, 0x20($s0)
/* B3908C 800C1EEC 50E00008 */  beql  $a3, $zero, .L800C1F10
/* B39090 800C1EF0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B39094 800C1EF4 8E06001C */  lw    $a2, 0x1c($s0)
/* B39098 800C1EF8 02002025 */  move  $a0, $s0
/* B3909C 800C1EFC 50C00004 */  beql  $a2, $zero, .L800C1F10
/* B390A0 800C1F00 8FBF001C */   lw    $ra, 0x1c($sp)
/* B390A4 800C1F04 0C0303CA */  jal   func_800C0F28
/* B390A8 800C1F08 8FA50024 */   lw    $a1, 0x24($sp)
/* B390AC 800C1F0C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C1F10:
/* B390B0 800C1F10 8FB00018 */  lw    $s0, 0x18($sp)
/* B390B4 800C1F14 27BD0020 */  addiu $sp, $sp, 0x20
/* B390B8 800C1F18 03E00008 */  jr    $ra
/* B390BC 800C1F1C 00000000 */   nop   

glabel func_800C1F20
/* B390C0 800C1F20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B390C4 800C1F24 AFB00018 */  sw    $s0, 0x18($sp)
/* B390C8 800C1F28 00808025 */  move  $s0, $a0
/* B390CC 800C1F2C AFBF001C */  sw    $ra, 0x1c($sp)
/* B390D0 800C1F30 AFA50024 */  sw    $a1, 0x24($sp)
/* B390D4 800C1F34 3C048014 */  lui   $a0, %hi(D_80144B7C) # $a0, 0x8014
/* B390D8 800C1F38 3C068014 */  lui   $a2, %hi(D_80144B8C) # $a2, 0x8014
/* B390DC 800C1F3C 24C64B8C */  addiu $a2, %lo(D_80144B8C) # addiu $a2, $a2, 0x4b8c
/* B390E0 800C1F40 24844B7C */  addiu $a0, %lo(D_80144B7C) # addiu $a0, $a0, 0x4b7c
/* B390E4 800C1F44 8E050014 */  lw    $a1, 0x14($s0)
/* B390E8 800C1F48 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B390EC 800C1F4C 240701EF */   li    $a3, 495
/* B390F0 800C1F50 3C048014 */  lui   $a0, %hi(D_80144B9C) # $a0, 0x8014
/* B390F4 800C1F54 3C068014 */  lui   $a2, %hi(D_80144BA8) # $a2, 0x8014
/* B390F8 800C1F58 24C64BA8 */  addiu $a2, %lo(D_80144BA8) # addiu $a2, $a2, 0x4ba8
/* B390FC 800C1F5C 24844B9C */  addiu $a0, %lo(D_80144B9C) # addiu $a0, $a0, 0x4b9c
/* B39100 800C1F60 8E050010 */  lw    $a1, 0x10($s0)
/* B39104 800C1F64 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39108 800C1F68 240701F0 */   li    $a3, 496
/* B3910C 800C1F6C 8E070014 */  lw    $a3, 0x14($s0)
/* B39110 800C1F70 50E00008 */  beql  $a3, $zero, .L800C1F94
/* B39114 800C1F74 8FBF001C */   lw    $ra, 0x1c($sp)
/* B39118 800C1F78 8E060010 */  lw    $a2, 0x10($s0)
/* B3911C 800C1F7C 02002025 */  move  $a0, $s0
/* B39120 800C1F80 50C00004 */  beql  $a2, $zero, .L800C1F94
/* B39124 800C1F84 8FBF001C */   lw    $ra, 0x1c($sp)
/* B39128 800C1F88 0C0306BA */  jal   func_800C1AE8
/* B3912C 800C1F8C 8FA50024 */   lw    $a1, 0x24($sp)
/* B39130 800C1F90 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C1F94:
/* B39134 800C1F94 8FB00018 */  lw    $s0, 0x18($sp)
/* B39138 800C1F98 27BD0020 */  addiu $sp, $sp, 0x20
/* B3913C 800C1F9C 03E00008 */  jr    $ra
/* B39140 800C1FA0 00000000 */   nop   

glabel func_800C1FA4
/* B39144 800C1FA4 8CA30000 */  lw    $v1, ($a1)
/* B39148 800C1FA8 3C06E700 */  lui   $a2, 0xe700
/* B3914C 800C1FAC 3C0EF900 */  lui   $t6, 0xf900
/* B39150 800C1FB0 AC660000 */  sw    $a2, ($v1)
/* B39154 800C1FB4 24620008 */  addiu $v0, $v1, 8
/* B39158 800C1FB8 AC600004 */  sw    $zero, 4($v1)
/* B3915C 800C1FBC 00401825 */  move  $v1, $v0
/* B39160 800C1FC0 240FFF08 */  li    $t7, -248
/* B39164 800C1FC4 AC6F0004 */  sw    $t7, 4($v1)
/* B39168 800C1FC8 AC6E0000 */  sw    $t6, ($v1)
/* B3916C 800C1FCC 24420008 */  addiu $v0, $v0, 8
/* B39170 800C1FD0 00401825 */  move  $v1, $v0
/* B39174 800C1FD4 3C18EE00 */  lui   $t8, 0xee00
/* B39178 800C1FD8 2419FFFF */  li    $t9, -1
/* B3917C 800C1FDC AC790004 */  sw    $t9, 4($v1)
/* B39180 800C1FE0 AC780000 */  sw    $t8, ($v1)
/* B39184 800C1FE4 24420008 */  addiu $v0, $v0, 8
/* B39188 800C1FE8 00401825 */  move  $v1, $v0
/* B3918C 800C1FEC 3C08EF00 */  lui   $t0, (0xEF000CF0 >> 16) # lui $t0, 0xef00
/* B39190 800C1FF0 3C090FA5 */  lui   $t1, (0x0FA54044 >> 16) # lui $t1, 0xfa5
/* B39194 800C1FF4 35294044 */  ori   $t1, (0x0FA54044 & 0xFFFF) # ori $t1, $t1, 0x4044
/* B39198 800C1FF8 35080CF0 */  ori   $t0, (0xEF000CF0 & 0xFFFF) # ori $t0, $t0, 0xcf0
/* B3919C 800C1FFC AC680000 */  sw    $t0, ($v1)
/* B391A0 800C2000 AC690004 */  sw    $t1, 4($v1)
/* B391A4 800C2004 24420008 */  addiu $v0, $v0, 8
/* B391A8 800C2008 00401825 */  move  $v1, $v0
/* B391AC 800C200C 3C0AED00 */  li    $t2, 0xED000000 # 0.000000
/* B391B0 800C2010 AC6A0000 */  sw    $t2, ($v1)
/* B391B4 800C2014 8C8B0000 */  lw    $t3, ($a0)
/* B391B8 800C2018 8C980004 */  lw    $t8, 4($a0)
/* B391BC 800C201C 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B391C0 800C2020 448B2000 */  mtc1  $t3, $f4
/* B391C4 800C2024 44988000 */  mtc1  $t8, $f16
/* B391C8 800C2028 44810000 */  mtc1  $at, $f0
/* B391CC 800C202C 468021A0 */  cvt.s.w $f6, $f4
/* B391D0 800C2030 24420008 */  addiu $v0, $v0, 8
/* B391D4 800C2034 3C01F600 */  lui   $at, 0xf600
/* B391D8 800C2038 468084A0 */  cvt.s.w $f18, $f16
/* B391DC 800C203C 46003202 */  mul.s $f8, $f6, $f0
/* B391E0 800C2040 00000000 */  nop   
/* B391E4 800C2044 46009102 */  mul.s $f4, $f18, $f0
/* B391E8 800C2048 4600428D */  trunc.w.s $f10, $f8
/* B391EC 800C204C 4600218D */  trunc.w.s $f6, $f4
/* B391F0 800C2050 440D5000 */  mfc1  $t5, $f10
/* B391F4 800C2054 44083000 */  mfc1  $t0, $f6
/* B391F8 800C2058 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B391FC 800C205C 000E7B00 */  sll   $t7, $t6, 0xc
/* B39200 800C2060 31090FFF */  andi  $t1, $t0, 0xfff
/* B39204 800C2064 01E95025 */  or    $t2, $t7, $t1
/* B39208 800C2068 AC6A0004 */  sw    $t2, 4($v1)
/* B3920C 800C206C 8C8B0000 */  lw    $t3, ($a0)
/* B39210 800C2070 8C980004 */  lw    $t8, 4($a0)
/* B39214 800C2074 00401825 */  move  $v1, $v0
/* B39218 800C2078 316C03FF */  andi  $t4, $t3, 0x3ff
/* B3921C 800C207C 000C6B80 */  sll   $t5, $t4, 0xe
/* B39220 800C2080 331903FF */  andi  $t9, $t8, 0x3ff
/* B39224 800C2084 00194080 */  sll   $t0, $t9, 2
/* B39228 800C2088 01A17025 */  or    $t6, $t5, $at
/* B3922C 800C208C 01C87825 */  or    $t7, $t6, $t0
/* B39230 800C2090 AC6F0000 */  sw    $t7, ($v1)
/* B39234 800C2094 AC600004 */  sw    $zero, 4($v1)
/* B39238 800C2098 24420008 */  addiu $v0, $v0, 8
/* B3923C 800C209C 00401825 */  move  $v1, $v0
/* B39240 800C20A0 AC660000 */  sw    $a2, ($v1)
/* B39244 800C20A4 AC600004 */  sw    $zero, 4($v1)
/* B39248 800C20A8 24420008 */  addiu $v0, $v0, 8
/* B3924C 800C20AC 03E00008 */  jr    $ra
/* B39250 800C20B0 ACA20000 */   sw    $v0, ($a1)

glabel func_800C20B4
/* B39254 800C20B4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B39258 800C20B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3925C 800C20BC AFB00018 */  sw    $s0, 0x18($sp)
/* B39260 800C20C0 00808025 */  move  $s0, $a0
/* B39264 800C20C4 0C0307E9 */  jal   func_800C1FA4
/* B39268 800C20C8 AFA50024 */   sw    $a1, 0x24($sp)
/* B3926C 800C20CC 3C048014 */  lui   $a0, %hi(D_80144BB8) # $a0, 0x8014
/* B39270 800C20D0 3C068014 */  lui   $a2, %hi(D_80144BC8) # $a2, 0x8014
/* B39274 800C20D4 24C64BC8 */  addiu $a2, %lo(D_80144BC8) # addiu $a2, $a2, 0x4bc8
/* B39278 800C20D8 24844BB8 */  addiu $a0, %lo(D_80144BB8) # addiu $a0, $a0, 0x4bb8
/* B3927C 800C20DC 8E050018 */  lw    $a1, 0x18($s0)
/* B39280 800C20E0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39284 800C20E4 24070214 */   li    $a3, 532
/* B39288 800C20E8 8E070018 */  lw    $a3, 0x18($s0)
/* B3928C 800C20EC 02002025 */  move  $a0, $s0
/* B39290 800C20F0 8FA50024 */  lw    $a1, 0x24($sp)
/* B39294 800C20F4 50E00004 */  beql  $a3, $zero, .L800C2108
/* B39298 800C20F8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B3929C 800C20FC 0C0306C9 */  jal   func_800C1B24
/* B392A0 800C2100 8E060010 */   lw    $a2, 0x10($s0)
/* B392A4 800C2104 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C2108:
/* B392A8 800C2108 8FB00018 */  lw    $s0, 0x18($sp)
/* B392AC 800C210C 27BD0020 */  addiu $sp, $sp, 0x20
/* B392B0 800C2110 03E00008 */  jr    $ra
/* B392B4 800C2114 00000000 */   nop   

glabel func_800C2118
/* B392B8 800C2118 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B392BC 800C211C AFBF0014 */  sw    $ra, 0x14($sp)
/* B392C0 800C2120 8C87001C */  lw    $a3, 0x1c($a0)
/* B392C4 800C2124 0C0303CA */  jal   func_800C0F28
/* B392C8 800C2128 8C860020 */   lw    $a2, 0x20($a0)
/* B392CC 800C212C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B392D0 800C2130 27BD0018 */  addiu $sp, $sp, 0x18
/* B392D4 800C2134 03E00008 */  jr    $ra
/* B392D8 800C2138 00000000 */   nop   

glabel func_800C213C
/* B392DC 800C213C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B392E0 800C2140 AFBF0034 */  sw    $ra, 0x34($sp)
/* B392E4 800C2144 AFB70030 */  sw    $s7, 0x30($sp)
/* B392E8 800C2148 AFB6002C */  sw    $s6, 0x2c($sp)
/* B392EC 800C214C AFB50028 */  sw    $s5, 0x28($sp)
/* B392F0 800C2150 AFB40024 */  sw    $s4, 0x24($sp)
/* B392F4 800C2154 AFB30020 */  sw    $s3, 0x20($sp)
/* B392F8 800C2158 AFB2001C */  sw    $s2, 0x1c($sp)
/* B392FC 800C215C AFB10018 */  sw    $s1, 0x18($sp)
/* B39300 800C2160 AFB00014 */  sw    $s0, 0x14($sp)
/* B39304 800C2164 AFA50044 */  sw    $a1, 0x44($sp)
/* B39308 800C2168 8C8E0018 */  lw    $t6, 0x18($a0)
/* B3930C 800C216C 00809825 */  move  $s3, $a0
/* B39310 800C2170 3C048014 */  lui   $a0, %hi(D_80144BD8) # $a0, 0x8014
/* B39314 800C2174 11C000C6 */  beqz  $t6, .L800C2490
/* B39318 800C2178 24844BD8 */   addiu $a0, %lo(D_80144BD8) # addiu $a0, $a0, 0x4bd8
/* B3931C 800C217C 3C068014 */  lui   $a2, %hi(D_80144BE0) # $a2, 0x8014
/* B39320 800C2180 24C64BE0 */  addiu $a2, %lo(D_80144BE0) # addiu $a2, $a2, 0x4be0
/* B39324 800C2184 02602825 */  move  $a1, $s3
/* B39328 800C2188 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3932C 800C218C 24070233 */   li    $a3, 563
/* B39330 800C2190 3C048014 */  lui   $a0, %hi(D_80144BF0) # $a0, 0x8014
/* B39334 800C2194 3C068014 */  lui   $a2, %hi(D_80144BF8) # $a2, 0x8014
/* B39338 800C2198 24C64BF8 */  addiu $a2, %lo(D_80144BF8) # addiu $a2, $a2, 0x4bf8
/* B3933C 800C219C 24844BF0 */  addiu $a0, %lo(D_80144BF0) # addiu $a0, $a0, 0x4bf0
/* B39340 800C21A0 8FA50044 */  lw    $a1, 0x44($sp)
/* B39344 800C21A4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39348 800C21A8 24070234 */   li    $a3, 564
/* B3934C 800C21AC 8FAF0044 */  lw    $t7, 0x44($sp)
/* B39350 800C21B0 3C048014 */  lui   $a0, %hi(D_80144C08) # $a0, 0x8014
/* B39354 800C21B4 3C068014 */  lui   $a2, %hi(D_80144C10) # $a2, 0x8014
/* B39358 800C21B8 8DE50000 */  lw    $a1, ($t7)
/* B3935C 800C21BC 24C64C10 */  addiu $a2, %lo(D_80144C10) # addiu $a2, $a2, 0x4c10
/* B39360 800C21C0 24844C08 */  addiu $a0, %lo(D_80144C08) # addiu $a0, $a0, 0x4c08
/* B39364 800C21C4 24070236 */  li    $a3, 566
/* B39368 800C21C8 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3936C 800C21CC AFA5003C */   sw    $a1, 0x3c($sp)
/* B39370 800C21D0 8FA5003C */  lw    $a1, 0x3c($sp)
/* B39374 800C21D4 3C17E700 */  lui   $s7, 0xe700
/* B39378 800C21D8 3C18FB00 */  lui   $t8, 0xfb00
/* B3937C 800C21DC 00A01025 */  move  $v0, $a1
/* B39380 800C21E0 AC570000 */  sw    $s7, ($v0)
/* B39384 800C21E4 AC400004 */  sw    $zero, 4($v0)
/* B39388 800C21E8 24A50008 */  addiu $a1, $a1, 8
/* B3938C 800C21EC 00A01025 */  move  $v0, $a1
/* B39390 800C21F0 2419FF20 */  li    $t9, -224
/* B39394 800C21F4 AC590004 */  sw    $t9, 4($v0)
/* B39398 800C21F8 AC580000 */  sw    $t8, ($v0)
/* B3939C 800C21FC 24A50008 */  addiu $a1, $a1, 8
/* B393A0 800C2200 00A01025 */  move  $v0, $a1
/* B393A4 800C2204 3C0EEF10 */  lui   $t6, (0xEF100CF0 >> 16) # lui $t6, 0xef10
/* B393A8 800C2208 3C0F0F0A */  lui   $t7, (0x0F0A100C >> 16) # lui $t7, 0xf0a
/* B393AC 800C220C 35EF100C */  ori   $t7, (0x0F0A100C & 0xFFFF) # ori $t7, $t7, 0x100c
/* B393B0 800C2210 35CE0CF0 */  ori   $t6, (0xEF100CF0 & 0xFFFF) # ori $t6, $t6, 0xcf0
/* B393B4 800C2214 AC4E0000 */  sw    $t6, ($v0)
/* B393B8 800C2218 AC4F0004 */  sw    $t7, 4($v0)
/* B393BC 800C221C 24A50008 */  addiu $a1, $a1, 8
/* B393C0 800C2220 00A01025 */  move  $v0, $a1
/* B393C4 800C2224 3C18FCFF */  lui   $t8, (0xFCFFE5FF >> 16) # lui $t8, 0xfcff
/* B393C8 800C2228 3C19FFFC */  lui   $t9, (0xFFFCFA38 >> 16) # lui $t9, 0xfffc
/* B393CC 800C222C 3739FA38 */  ori   $t9, (0xFFFCFA38 & 0xFFFF) # ori $t9, $t9, 0xfa38
/* B393D0 800C2230 3718E5FF */  ori   $t8, (0xFCFFE5FF & 0xFFFF) # ori $t8, $t8, 0xe5ff
/* B393D4 800C2234 AC580000 */  sw    $t8, ($v0)
/* B393D8 800C2238 AC590004 */  sw    $t9, 4($v0)
/* B393DC 800C223C 8E6D0004 */  lw    $t5, 4($s3)
/* B393E0 800C2240 24A50008 */  addiu $a1, $a1, 8
/* B393E4 800C2244 24110004 */  li    $s1, 4
/* B393E8 800C2248 19A0008B */  blez  $t5, .L800C2478
/* B393EC 800C224C 00002025 */   move  $a0, $zero
/* B393F0 800C2250 3C160100 */  lui   $s6, 0x100
/* B393F4 800C2254 3C15E600 */  lui   $s5, 0xe600
/* B393F8 800C2258 3C140700 */  lui   $s4, 0x700
.L800C225C:
/* B393FC 800C225C 8E630000 */  lw    $v1, ($s3)
/* B39400 800C2260 01B1082A */  slt   $at, $t5, $s1
/* B39404 800C2264 00A01025 */  move  $v0, $a1
/* B39408 800C2268 2463FFFF */  addiu $v1, $v1, -1
/* B3940C 800C226C 10200002 */  beqz  $at, .L800C2278
/* B39410 800C2270 0060F825 */   move  $ra, $v1
/* B39414 800C2274 01A08825 */  move  $s1, $t5
.L800C2278:
/* B39418 800C2278 306E0FFF */  andi  $t6, $v1, 0xfff
/* B3941C 800C227C 3C01FD10 */  lui   $at, 0xfd10
/* B39420 800C2280 01C17825 */  or    $t7, $t6, $at
/* B39424 800C2284 AC4F0000 */  sw    $t7, ($v0)
/* B39428 800C2288 8E780014 */  lw    $t8, 0x14($s3)
/* B3942C 800C228C 001F1840 */  sll   $v1, $ra, 1
/* B39430 800C2290 24630009 */  addiu $v1, $v1, 9
/* B39434 800C2294 000318C3 */  sra   $v1, $v1, 3
/* B39438 800C2298 24A50008 */  addiu $a1, $a1, 8
/* B3943C 800C229C AC580004 */  sw    $t8, 4($v0)
/* B39440 800C22A0 00A01025 */  move  $v0, $a1
/* B39444 800C22A4 306301FF */  andi  $v1, $v1, 0x1ff
/* B39448 800C22A8 00031A40 */  sll   $v1, $v1, 9
/* B3944C 800C22AC 3C01F510 */  lui   $at, 0xf510
/* B39450 800C22B0 00611825 */  or    $v1, $v1, $at
/* B39454 800C22B4 AC430000 */  sw    $v1, ($v0)
/* B39458 800C22B8 AC540004 */  sw    $s4, 4($v0)
/* B3945C 800C22BC 24A50008 */  addiu $a1, $a1, 8
/* B39460 800C22C0 00A01025 */  move  $v0, $a1
/* B39464 800C22C4 001F5080 */  sll   $t2, $ra, 2
/* B39468 800C22C8 00919021 */  addu  $s2, $a0, $s1
/* B3946C 800C22CC 2650FFFF */  addiu $s0, $s2, -1
/* B39470 800C22D0 314A0FFF */  andi  $t2, $t2, 0xfff
/* B39474 800C22D4 AC550000 */  sw    $s5, ($v0)
/* B39478 800C22D8 AC400004 */  sw    $zero, 4($v0)
/* B3947C 800C22DC 24A50008 */  addiu $a1, $a1, 8
/* B39480 800C22E0 00A01025 */  move  $v0, $a1
/* B39484 800C22E4 000A5300 */  sll   $t2, $t2, 0xc
/* B39488 800C22E8 00105880 */  sll   $t3, $s0, 2
/* B3948C 800C22EC 00046080 */  sll   $t4, $a0, 2
/* B39490 800C22F0 318C0FFF */  andi  $t4, $t4, 0xfff
/* B39494 800C22F4 316B0FFF */  andi  $t3, $t3, 0xfff
/* B39498 800C22F8 0154C825 */  or    $t9, $t2, $s4
/* B3949C 800C22FC 3C01F400 */  lui   $at, 0xf400
/* B394A0 800C2300 01814025 */  or    $t0, $t4, $at
/* B394A4 800C2304 032B4825 */  or    $t1, $t9, $t3
/* B394A8 800C2308 AC490004 */  sw    $t1, 4($v0)
/* B394AC 800C230C AC480000 */  sw    $t0, ($v0)
/* B394B0 800C2310 24A50008 */  addiu $a1, $a1, 8
/* B394B4 800C2314 00A01025 */  move  $v0, $a1
/* B394B8 800C2318 AC570000 */  sw    $s7, ($v0)
/* B394BC 800C231C AC400004 */  sw    $zero, 4($v0)
/* B394C0 800C2320 24A50008 */  addiu $a1, $a1, 8
/* B394C4 800C2324 00A01025 */  move  $v0, $a1
/* B394C8 800C2328 AC430000 */  sw    $v1, ($v0)
/* B394CC 800C232C AC400004 */  sw    $zero, 4($v0)
/* B394D0 800C2330 24A50008 */  addiu $a1, $a1, 8
/* B394D4 800C2334 00A01025 */  move  $v0, $a1
/* B394D8 800C2338 3C01F200 */  lui   $at, 0xf200
/* B394DC 800C233C 01813025 */  or    $a2, $t4, $at
/* B394E0 800C2340 014B7025 */  or    $t6, $t2, $t3
/* B394E4 800C2344 AC4E0004 */  sw    $t6, 4($v0)
/* B394E8 800C2348 AC460000 */  sw    $a2, ($v0)
/* B394EC 800C234C 8E6F0000 */  lw    $t7, ($s3)
/* B394F0 800C2350 24A50008 */  addiu $a1, $a1, 8
/* B394F4 800C2354 3C01FD88 */  lui   $at, 0xfd88
/* B394F8 800C2358 25F8FFFF */  addiu $t8, $t7, -1
/* B394FC 800C235C 33190FFF */  andi  $t9, $t8, 0xfff
/* B39500 800C2360 03217025 */  or    $t6, $t9, $at
/* B39504 800C2364 00A01025 */  move  $v0, $a1
/* B39508 800C2368 AC4E0000 */  sw    $t6, ($v0)
/* B3950C 800C236C 8E6F0018 */  lw    $t7, 0x18($s3)
/* B39510 800C2370 27E30008 */  addiu $v1, $ra, 8
/* B39514 800C2374 000318C3 */  sra   $v1, $v1, 3
/* B39518 800C2378 306301FF */  andi  $v1, $v1, 0x1ff
/* B3951C 800C237C 24A50008 */  addiu $a1, $a1, 8
/* B39520 800C2380 AC4F0004 */  sw    $t7, 4($v0)
/* B39524 800C2384 00A01025 */  move  $v0, $a1
/* B39528 800C2388 00031A40 */  sll   $v1, $v1, 9
/* B3952C 800C238C 3C01F588 */  lui   $at, 0xf588
/* B39530 800C2390 00611825 */  or    $v1, $v1, $at
/* B39534 800C2394 34630160 */  ori   $v1, $v1, 0x160
/* B39538 800C2398 AC430000 */  sw    $v1, ($v0)
/* B3953C 800C239C AC540004 */  sw    $s4, 4($v0)
/* B39540 800C23A0 24A50008 */  addiu $a1, $a1, 8
/* B39544 800C23A4 00A01025 */  move  $v0, $a1
/* B39548 800C23A8 AC550000 */  sw    $s5, ($v0)
/* B3954C 800C23AC AC400004 */  sw    $zero, 4($v0)
/* B39550 800C23B0 24A50008 */  addiu $a1, $a1, 8
/* B39554 800C23B4 00A01025 */  move  $v0, $a1
/* B39558 800C23B8 AC480000 */  sw    $t0, ($v0)
/* B3955C 800C23BC AC490004 */  sw    $t1, 4($v0)
/* B39560 800C23C0 24A50008 */  addiu $a1, $a1, 8
/* B39564 800C23C4 00A01025 */  move  $v0, $a1
/* B39568 800C23C8 AC570000 */  sw    $s7, ($v0)
/* B3956C 800C23CC AC400004 */  sw    $zero, 4($v0)
/* B39570 800C23D0 24A50008 */  addiu $a1, $a1, 8
/* B39574 800C23D4 00A01025 */  move  $v0, $a1
/* B39578 800C23D8 02CAC025 */  or    $t8, $s6, $t2
/* B3957C 800C23DC 030BC825 */  or    $t9, $t8, $t3
/* B39580 800C23E0 AC430000 */  sw    $v1, ($v0)
/* B39584 800C23E4 AC560004 */  sw    $s6, 4($v0)
/* B39588 800C23E8 24A50008 */  addiu $a1, $a1, 8
/* B3958C 800C23EC 27EE0001 */  addiu $t6, $ra, 1
/* B39590 800C23F0 00A01025 */  move  $v0, $a1
/* B39594 800C23F4 000E7880 */  sll   $t7, $t6, 2
/* B39598 800C23F8 AC590004 */  sw    $t9, 4($v0)
/* B3959C 800C23FC 31F80FFF */  andi  $t8, $t7, 0xfff
/* B395A0 800C2400 0018CB00 */  sll   $t9, $t8, 0xc
/* B395A4 800C2404 AC460000 */  sw    $a2, ($v0)
/* B395A8 800C2408 24A50008 */  addiu $a1, $a1, 8
/* B395AC 800C240C 260F0001 */  addiu $t7, $s0, 1
/* B395B0 800C2410 3C01E400 */  lui   $at, 0xe400
/* B395B4 800C2414 03217025 */  or    $t6, $t9, $at
/* B395B8 800C2418 000FC080 */  sll   $t8, $t7, 2
/* B395BC 800C241C 00A01025 */  move  $v0, $a1
/* B395C0 800C2420 33190FFF */  andi  $t9, $t8, 0xfff
/* B395C4 800C2424 01D97825 */  or    $t7, $t6, $t9
/* B395C8 800C2428 AC4F0000 */  sw    $t7, ($v0)
/* B395CC 800C242C AC4C0004 */  sw    $t4, 4($v0)
/* B395D0 800C2430 24A50008 */  addiu $a1, $a1, 8
/* B395D4 800C2434 00A01025 */  move  $v0, $a1
/* B395D8 800C2438 00047140 */  sll   $t6, $a0, 5
/* B395DC 800C243C 3C18E100 */  lui   $t8, 0xe100
/* B395E0 800C2440 AC580000 */  sw    $t8, ($v0)
/* B395E4 800C2444 31D9FFFF */  andi  $t9, $t6, 0xffff
/* B395E8 800C2448 AC590004 */  sw    $t9, 4($v0)
/* B395EC 800C244C 24A50008 */  addiu $a1, $a1, 8
/* B395F0 800C2450 00A01025 */  move  $v0, $a1
/* B395F4 800C2454 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* B395F8 800C2458 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B395FC 800C245C 3C0FF100 */  lui   $t7, 0xf100
/* B39600 800C2460 01B16823 */  subu  $t5, $t5, $s1
/* B39604 800C2464 AC4F0000 */  sw    $t7, ($v0)
/* B39608 800C2468 AC580004 */  sw    $t8, 4($v0)
/* B3960C 800C246C 24A50008 */  addiu $a1, $a1, 8
/* B39610 800C2470 1DA0FF7A */  bgtz  $t5, .L800C225C
/* B39614 800C2474 02402025 */   move  $a0, $s2
.L800C2478:
/* B39618 800C2478 00A01025 */  move  $v0, $a1
/* B3961C 800C247C AC570000 */  sw    $s7, ($v0)
/* B39620 800C2480 AC400004 */  sw    $zero, 4($v0)
/* B39624 800C2484 8FAE0044 */  lw    $t6, 0x44($sp)
/* B39628 800C2488 24A50008 */  addiu $a1, $a1, 8
/* B3962C 800C248C ADC50000 */  sw    $a1, ($t6)
.L800C2490:
/* B39630 800C2490 8FBF0034 */  lw    $ra, 0x34($sp)
/* B39634 800C2494 8FB00014 */  lw    $s0, 0x14($sp)
/* B39638 800C2498 8FB10018 */  lw    $s1, 0x18($sp)
/* B3963C 800C249C 8FB2001C */  lw    $s2, 0x1c($sp)
/* B39640 800C24A0 8FB30020 */  lw    $s3, 0x20($sp)
/* B39644 800C24A4 8FB40024 */  lw    $s4, 0x24($sp)
/* B39648 800C24A8 8FB50028 */  lw    $s5, 0x28($sp)
/* B3964C 800C24AC 8FB6002C */  lw    $s6, 0x2c($sp)
/* B39650 800C24B0 8FB70030 */  lw    $s7, 0x30($sp)
/* B39654 800C24B4 03E00008 */  jr    $ra
/* B39658 800C24B8 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800C24BC
/* B3965C 800C24BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B39660 800C24C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B39664 800C24C4 8C870010 */  lw    $a3, 0x10($a0)
/* B39668 800C24C8 0C0303CA */  jal   func_800C0F28
/* B3966C 800C24CC 8C860014 */   lw    $a2, 0x14($a0)
/* B39670 800C24D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B39674 800C24D4 27BD0018 */  addiu $sp, $sp, 0x18
/* B39678 800C24D8 03E00008 */  jr    $ra
/* B3967C 800C24DC 00000000 */   nop   

glabel func_800C24E0
/* B39680 800C24E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B39684 800C24E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B39688 800C24E8 0C030496 */  jal   func_800C1258
/* B3968C 800C24EC 00000000 */   nop   
/* B39690 800C24F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B39694 800C24F4 27BD0018 */  addiu $sp, $sp, 0x18
/* B39698 800C24F8 03E00008 */  jr    $ra
/* B3969C 800C24FC 00000000 */   nop   

glabel func_800C2500
/* B396A0 800C2500 27BDFE78 */  addiu $sp, $sp, -0x188
/* B396A4 800C2504 AFB60030 */  sw    $s6, 0x30($sp)
/* B396A8 800C2508 AFB5002C */  sw    $s5, 0x2c($sp)
/* B396AC 800C250C AFB40028 */  sw    $s4, 0x28($sp)
/* B396B0 800C2510 AFB1001C */  sw    $s1, 0x1c($sp)
/* B396B4 800C2514 AFB00018 */  sw    $s0, 0x18($sp)
/* B396B8 800C2518 00A08025 */  move  $s0, $a1
/* B396BC 800C251C 00C08825 */  move  $s1, $a2
/* B396C0 800C2520 0080B025 */  move  $s6, $a0
/* B396C4 800C2524 AFBF0034 */  sw    $ra, 0x34($sp)
/* B396C8 800C2528 AFB30024 */  sw    $s3, 0x24($sp)
/* B396CC 800C252C AFB20020 */  sw    $s2, 0x20($sp)
/* B396D0 800C2530 24140005 */  li    $s4, 5
/* B396D4 800C2534 27B50144 */  addiu $s5, $sp, 0x144
/* B396D8 800C2538 27A90108 */  addiu $t1, $sp, 0x108
/* B396DC 800C253C 27AA00CC */  addiu $t2, $sp, 0xcc
/* B396E0 800C2540 27AB0090 */  addiu $t3, $sp, 0x90
/* B396E4 800C2544 00003825 */  move  $a3, $zero
.L800C2548:
/* B396E8 800C2548 00F4001A */  div   $zero, $a3, $s4
/* B396EC 800C254C 00007010 */  mfhi  $t6
/* B396F0 800C2550 00007812 */  mflo  $t7
/* B396F4 800C2554 01D01021 */  addu  $v0, $t6, $s0
/* B396F8 800C2558 01F13021 */  addu  $a2, $t7, $s1
/* B396FC 800C255C 2442FFFE */  addiu $v0, $v0, -2
/* B39700 800C2560 16800002 */  bnez  $s4, .L800C256C
/* B39704 800C2564 00000000 */   nop   
/* B39708 800C2568 0007000D */  break 7
.L800C256C:
/* B3970C 800C256C 2401FFFF */  li    $at, -1
/* B39710 800C2570 16810004 */  bne   $s4, $at, .L800C2584
/* B39714 800C2574 3C018000 */   lui   $at, 0x8000
/* B39718 800C2578 14E10002 */  bne   $a3, $at, .L800C2584
/* B3971C 800C257C 00000000 */   nop   
/* B39720 800C2580 0006000D */  break 6
.L800C2584:
/* B39724 800C2584 24C6FFFF */  addiu $a2, $a2, -1
/* B39728 800C2588 00401825 */  move  $v1, $v0
/* B3972C 800C258C 04410004 */  bgez  $v0, .L800C25A0
/* B39730 800C2590 00C02025 */   move  $a0, $a2
/* B39734 800C2594 00001825 */  move  $v1, $zero
/* B39738 800C2598 10000007 */  b     .L800C25B8
/* B3973C 800C259C 8EC80000 */   lw    $t0, ($s6)
.L800C25A0:
/* B39740 800C25A0 8EC80000 */  lw    $t0, ($s6)
/* B39744 800C25A4 2505FFFF */  addiu $a1, $t0, -1
/* B39748 800C25A8 00A2082A */  slt   $at, $a1, $v0
/* B3974C 800C25AC 10200002 */  beqz  $at, .L800C25B8
/* B39750 800C25B0 00000000 */   nop   
/* B39754 800C25B4 00A01825 */  move  $v1, $a1
.L800C25B8:
/* B39758 800C25B8 04C30004 */  bgezl $a2, .L800C25CC
/* B3975C 800C25BC 8EC20004 */   lw    $v0, 4($s6)
/* B39760 800C25C0 10000007 */  b     .L800C25E0
/* B39764 800C25C4 00002025 */   move  $a0, $zero
/* B39768 800C25C8 8EC20004 */  lw    $v0, 4($s6)
.L800C25CC:
/* B3976C 800C25CC 2442FFFF */  addiu $v0, $v0, -1
/* B39770 800C25D0 0046082A */  slt   $at, $v0, $a2
/* B39774 800C25D4 10200002 */  beqz  $at, .L800C25E0
/* B39778 800C25D8 00000000 */   nop   
/* B3977C 800C25DC 00402025 */  move  $a0, $v0
.L800C25E0:
/* B39780 800C25E0 00880019 */  multu $a0, $t0
/* B39784 800C25E4 8ED80014 */  lw    $t8, 0x14($s6)
/* B39788 800C25E8 0003C840 */  sll   $t9, $v1, 1
/* B3978C 800C25EC 24E70001 */  addiu $a3, $a3, 1
/* B39790 800C25F0 03197021 */  addu  $t6, $t8, $t9
/* B39794 800C25F4 28E1000F */  slti  $at, $a3, 0xf
/* B39798 800C25F8 25290004 */  addiu $t1, $t1, 4
/* B3979C 800C25FC 254A0004 */  addiu $t2, $t2, 4
/* B397A0 800C2600 256B0004 */  addiu $t3, $t3, 4
/* B397A4 800C2604 26B50004 */  addiu $s5, $s5, 4
/* B397A8 800C2608 00007812 */  mflo  $t7
/* B397AC 800C260C 000FC040 */  sll   $t8, $t7, 1
/* B397B0 800C2610 01D8C821 */  addu  $t9, $t6, $t8
/* B397B4 800C2614 972F0000 */  lhu   $t7, ($t9)
/* B397B8 800C2618 A7AF0068 */  sh    $t7, 0x68($sp)
/* B397BC 800C261C 8FAE0068 */  lw    $t6, 0x68($sp)
/* B397C0 800C2620 000EC6C2 */  srl   $t8, $t6, 0x1b
/* B397C4 800C2624 0018C8C0 */  sll   $t9, $t8, 3
/* B397C8 800C2628 00187883 */  sra   $t7, $t8, 2
/* B397CC 800C262C 032F7025 */  or    $t6, $t9, $t7
/* B397D0 800C2630 AD2EFFFC */  sw    $t6, -4($t1)
/* B397D4 800C2634 8FB80068 */  lw    $t8, 0x68($sp)
/* B397D8 800C2638 0018C940 */  sll   $t9, $t8, 5
/* B397DC 800C263C 00197EC2 */  srl   $t7, $t9, 0x1b
/* B397E0 800C2640 000F70C0 */  sll   $t6, $t7, 3
/* B397E4 800C2644 000FC083 */  sra   $t8, $t7, 2
/* B397E8 800C2648 01D8C825 */  or    $t9, $t6, $t8
/* B397EC 800C264C AD59FFFC */  sw    $t9, -4($t2)
/* B397F0 800C2650 8FAF0068 */  lw    $t7, 0x68($sp)
/* B397F4 800C2654 000F7280 */  sll   $t6, $t7, 0xa
/* B397F8 800C2658 000EC6C2 */  srl   $t8, $t6, 0x1b
/* B397FC 800C265C 0018C8C0 */  sll   $t9, $t8, 3
/* B39800 800C2660 00187883 */  sra   $t7, $t8, 2
/* B39804 800C2664 032F7025 */  or    $t6, $t9, $t7
/* B39808 800C2668 AD6EFFFC */  sw    $t6, -4($t3)
/* B3980C 800C266C 8ECF0000 */  lw    $t7, ($s6)
/* B39810 800C2670 8ED80018 */  lw    $t8, 0x18($s6)
/* B39814 800C2674 008F0019 */  multu $a0, $t7
/* B39818 800C2678 0303C821 */  addu  $t9, $t8, $v1
/* B3981C 800C267C 00007012 */  mflo  $t6
/* B39820 800C2680 032EC021 */  addu  $t8, $t9, $t6
/* B39824 800C2684 930F0000 */  lbu   $t7, ($t8)
/* B39828 800C2688 000FC943 */  sra   $t9, $t7, 5
/* B3982C 800C268C 1420FFAE */  bnez  $at, .L800C2548
/* B39830 800C2690 AEB9FFFC */   sw    $t9, -4($s5)
/* B39834 800C2694 8FAE0160 */  lw    $t6, 0x160($sp)
/* B39838 800C2698 24080007 */  li    $t0, 7
/* B3983C 800C269C AFB0018C */  sw    $s0, 0x18c($sp)
/* B39840 800C26A0 150E0006 */  bne   $t0, $t6, .L800C26BC
/* B39844 800C26A4 AFB10190 */   sw    $s1, 0x190($sp)
/* B39848 800C26A8 3C048014 */  lui   $a0, %hi(D_80144C20) # $a0, 0x8014
/* B3984C 800C26AC 0C00084C */  jal   osSyncPrintf
/* B39850 800C26B0 24844C20 */   addiu $a0, %lo(D_80144C20) # addiu $a0, $a0, 0x4c20
/* B39854 800C26B4 10000242 */  b     .L800C2FC0
/* B39858 800C26B8 8FBF0034 */   lw    $ra, 0x34($sp)
.L800C26BC:
/* B3985C 800C26BC 8FAD0124 */  lw    $t5, 0x124($sp)
/* B39860 800C26C0 8FBF00E8 */  lw    $ra, 0xe8($sp)
/* B39864 800C26C4 8FB000AC */  lw    $s0, 0xac($sp)
/* B39868 800C26C8 24180004 */  li    $t8, 4
/* B3986C 800C26CC AFB80054 */  sw    $t8, 0x54($sp)
/* B39870 800C26D0 24070001 */  li    $a3, 1
/* B39874 800C26D4 27B50148 */  addiu $s5, $sp, 0x148
/* B39878 800C26D8 27AC0090 */  addiu $t4, $sp, 0x90
/* B3987C 800C26DC 27AB00CC */  addiu $t3, $sp, 0xcc
/* B39880 800C26E0 27AA0108 */  addiu $t2, $sp, 0x108
/* B39884 800C26E4 27A90144 */  addiu $t1, $sp, 0x144
/* B39888 800C26E8 01A08825 */  move  $s1, $t5
/* B3988C 800C26EC 03E09025 */  move  $s2, $ra
/* B39890 800C26F0 02009825 */  move  $s3, $s0
.L800C26F4:
/* B39894 800C26F4 8EAF0000 */  lw    $t7, ($s5)
/* B39898 800C26F8 8FA20054 */  lw    $v0, 0x54($sp)
/* B3989C 800C26FC 26B50008 */  addiu $s5, $s5, 8
/* B398A0 800C2700 150F01E8 */  bne   $t0, $t7, .L800C2EA4
/* B398A4 800C2704 0142C821 */   addu  $t9, $t2, $v0
/* B398A8 800C2708 8F240000 */  lw    $a0, ($t9)
/* B398AC 800C270C 01827021 */  addu  $t6, $t4, $v0
/* B398B0 800C2710 AFAE003C */  sw    $t6, 0x3c($sp)
/* B398B4 800C2714 0224082A */  slt   $at, $s1, $a0
/* B398B8 800C2718 1020004F */  beqz  $at, .L800C2858
/* B398BC 800C271C 01623021 */   addu  $a2, $t3, $v0
/* B398C0 800C2720 24010001 */  li    $at, 1
/* B398C4 800C2724 10E10007 */  beq   $a3, $at, .L800C2744
/* B398C8 800C2728 8FB8010C */   lw    $t8, 0x10c($sp)
/* B398CC 800C272C 0304082A */  slt   $at, $t8, $a0
/* B398D0 800C2730 14200004 */  bnez  $at, .L800C2744
/* B398D4 800C2734 8FAF0148 */   lw    $t7, 0x148($sp)
/* B398D8 800C2738 550F0003 */  bnel  $t0, $t7, .L800C2748
/* B398DC 800C273C 24010003 */   li    $at, 3
/* B398E0 800C2740 00808825 */  move  $s1, $a0
.L800C2744:
/* B398E4 800C2744 24010003 */  li    $at, 3
.L800C2748:
/* B398E8 800C2748 10E10007 */  beq   $a3, $at, .L800C2768
/* B398EC 800C274C 8FB90114 */   lw    $t9, 0x114($sp)
/* B398F0 800C2750 0324082A */  slt   $at, $t9, $a0
/* B398F4 800C2754 14200004 */  bnez  $at, .L800C2768
/* B398F8 800C2758 8FAE0150 */   lw    $t6, 0x150($sp)
/* B398FC 800C275C 150E0002 */  bne   $t0, $t6, .L800C2768
/* B39900 800C2760 00000000 */   nop   
/* B39904 800C2764 00808825 */  move  $s1, $a0
.L800C2768:
/* B39908 800C2768 10F40007 */  beq   $a3, $s4, .L800C2788
/* B3990C 800C276C 8FB8011C */   lw    $t8, 0x11c($sp)
/* B39910 800C2770 0304082A */  slt   $at, $t8, $a0
/* B39914 800C2774 14200004 */  bnez  $at, .L800C2788
/* B39918 800C2778 8FAF0158 */   lw    $t7, 0x158($sp)
/* B3991C 800C277C 150F0002 */  bne   $t0, $t7, .L800C2788
/* B39920 800C2780 00000000 */   nop   
/* B39924 800C2784 00808825 */  move  $s1, $a0
.L800C2788:
/* B39928 800C2788 10E8000C */  beq   $a3, $t0, .L800C27BC
/* B3992C 800C278C 01001825 */   move  $v1, $t0
/* B39930 800C2790 00031080 */  sll   $v0, $v1, 2
/* B39934 800C2794 0142C821 */  addu  $t9, $t2, $v0
/* B39938 800C2798 8F2E0000 */  lw    $t6, ($t9)
/* B3993C 800C279C 0122C021 */  addu  $t8, $t1, $v0
/* B39940 800C27A0 01C4082A */  slt   $at, $t6, $a0
/* B39944 800C27A4 54200006 */  bnezl $at, .L800C27C0
/* B39948 800C27A8 24790002 */   addiu $t9, $v1, 2
/* B3994C 800C27AC 8F0F0000 */  lw    $t7, ($t8)
/* B39950 800C27B0 550F0003 */  bnel  $t0, $t7, .L800C27C0
/* B39954 800C27B4 24790002 */   addiu $t9, $v1, 2
/* B39958 800C27B8 00808825 */  move  $s1, $a0
.L800C27BC:
/* B3995C 800C27BC 24790002 */  addiu $t9, $v1, 2
.L800C27C0:
/* B39960 800C27C0 10F9000B */  beq   $a3, $t9, .L800C27F0
/* B39964 800C27C4 00031080 */   sll   $v0, $v1, 2
/* B39968 800C27C8 01427021 */  addu  $t6, $t2, $v0
/* B3996C 800C27CC 8DD80008 */  lw    $t8, 8($t6)
/* B39970 800C27D0 01227821 */  addu  $t7, $t1, $v0
/* B39974 800C27D4 0304082A */  slt   $at, $t8, $a0
/* B39978 800C27D8 54200006 */  bnezl $at, .L800C27F4
/* B3997C 800C27DC 246E0004 */   addiu $t6, $v1, 4
/* B39980 800C27E0 8DF90008 */  lw    $t9, 8($t7)
/* B39984 800C27E4 55190003 */  bnel  $t0, $t9, .L800C27F4
/* B39988 800C27E8 246E0004 */   addiu $t6, $v1, 4
/* B3998C 800C27EC 00808825 */  move  $s1, $a0
.L800C27F0:
/* B39990 800C27F0 246E0004 */  addiu $t6, $v1, 4
.L800C27F4:
/* B39994 800C27F4 10EE000B */  beq   $a3, $t6, .L800C2824
/* B39998 800C27F8 00031080 */   sll   $v0, $v1, 2
/* B3999C 800C27FC 0142C021 */  addu  $t8, $t2, $v0
/* B399A0 800C2800 8F0F0010 */  lw    $t7, 0x10($t8)
/* B399A4 800C2804 0122C821 */  addu  $t9, $t1, $v0
/* B399A8 800C2808 01E4082A */  slt   $at, $t7, $a0
/* B399AC 800C280C 54200006 */  bnezl $at, .L800C2828
/* B399B0 800C2810 24780006 */   addiu $t8, $v1, 6
/* B399B4 800C2814 8F2E0010 */  lw    $t6, 0x10($t9)
/* B399B8 800C2818 550E0003 */  bnel  $t0, $t6, .L800C2828
/* B399BC 800C281C 24780006 */   addiu $t8, $v1, 6
/* B399C0 800C2820 00808825 */  move  $s1, $a0
.L800C2824:
/* B399C4 800C2824 24780006 */  addiu $t8, $v1, 6
.L800C2828:
/* B399C8 800C2828 10F8000B */  beq   $a3, $t8, .L800C2858
/* B399CC 800C282C 00031080 */   sll   $v0, $v1, 2
/* B399D0 800C2830 01427821 */  addu  $t7, $t2, $v0
/* B399D4 800C2834 8DF90018 */  lw    $t9, 0x18($t7)
/* B399D8 800C2838 01227021 */  addu  $t6, $t1, $v0
/* B399DC 800C283C 0324082A */  slt   $at, $t9, $a0
/* B399E0 800C2840 54200006 */  bnezl $at, .L800C285C
/* B399E4 800C2844 8CC50000 */   lw    $a1, ($a2)
/* B399E8 800C2848 8DD80018 */  lw    $t8, 0x18($t6)
/* B399EC 800C284C 55180003 */  bnel  $t0, $t8, .L800C285C
/* B399F0 800C2850 8CC50000 */   lw    $a1, ($a2)
/* B399F4 800C2854 00808825 */  move  $s1, $a0
.L800C2858:
/* B399F8 800C2858 8CC50000 */  lw    $a1, ($a2)
.L800C285C:
/* B399FC 800C285C 0245082A */  slt   $at, $s2, $a1
/* B39A00 800C2860 1020004E */  beqz  $at, .L800C299C
/* B39A04 800C2864 24010001 */   li    $at, 1
/* B39A08 800C2868 10E10007 */  beq   $a3, $at, .L800C2888
/* B39A0C 800C286C 8FAF00D0 */   lw    $t7, 0xd0($sp)
/* B39A10 800C2870 01E5082A */  slt   $at, $t7, $a1
/* B39A14 800C2874 14200004 */  bnez  $at, .L800C2888
/* B39A18 800C2878 8FB90148 */   lw    $t9, 0x148($sp)
/* B39A1C 800C287C 55190003 */  bnel  $t0, $t9, .L800C288C
/* B39A20 800C2880 24010003 */   li    $at, 3
/* B39A24 800C2884 00A09025 */  move  $s2, $a1
.L800C2888:
/* B39A28 800C2888 24010003 */  li    $at, 3
.L800C288C:
/* B39A2C 800C288C 10E10007 */  beq   $a3, $at, .L800C28AC
/* B39A30 800C2890 8FAE00D8 */   lw    $t6, 0xd8($sp)
/* B39A34 800C2894 01C5082A */  slt   $at, $t6, $a1
/* B39A38 800C2898 14200004 */  bnez  $at, .L800C28AC
/* B39A3C 800C289C 8FB80150 */   lw    $t8, 0x150($sp)
/* B39A40 800C28A0 15180002 */  bne   $t0, $t8, .L800C28AC
/* B39A44 800C28A4 00000000 */   nop   
/* B39A48 800C28A8 00A09025 */  move  $s2, $a1
.L800C28AC:
/* B39A4C 800C28AC 10F40007 */  beq   $a3, $s4, .L800C28CC
/* B39A50 800C28B0 8FAF00E0 */   lw    $t7, 0xe0($sp)
/* B39A54 800C28B4 01E5082A */  slt   $at, $t7, $a1
/* B39A58 800C28B8 14200004 */  bnez  $at, .L800C28CC
/* B39A5C 800C28BC 8FB90158 */   lw    $t9, 0x158($sp)
/* B39A60 800C28C0 15190002 */  bne   $t0, $t9, .L800C28CC
/* B39A64 800C28C4 00000000 */   nop   
/* B39A68 800C28C8 00A09025 */  move  $s2, $a1
.L800C28CC:
/* B39A6C 800C28CC 10E8000C */  beq   $a3, $t0, .L800C2900
/* B39A70 800C28D0 01001825 */   move  $v1, $t0
/* B39A74 800C28D4 00031080 */  sll   $v0, $v1, 2
/* B39A78 800C28D8 01627021 */  addu  $t6, $t3, $v0
/* B39A7C 800C28DC 8DD80000 */  lw    $t8, ($t6)
/* B39A80 800C28E0 01227821 */  addu  $t7, $t1, $v0
/* B39A84 800C28E4 0305082A */  slt   $at, $t8, $a1
/* B39A88 800C28E8 54200006 */  bnezl $at, .L800C2904
/* B39A8C 800C28EC 246E0002 */   addiu $t6, $v1, 2
/* B39A90 800C28F0 8DF90000 */  lw    $t9, ($t7)
/* B39A94 800C28F4 55190003 */  bnel  $t0, $t9, .L800C2904
/* B39A98 800C28F8 246E0002 */   addiu $t6, $v1, 2
/* B39A9C 800C28FC 00A09025 */  move  $s2, $a1
.L800C2900:
/* B39AA0 800C2900 246E0002 */  addiu $t6, $v1, 2
.L800C2904:
/* B39AA4 800C2904 10EE000B */  beq   $a3, $t6, .L800C2934
/* B39AA8 800C2908 00031080 */   sll   $v0, $v1, 2
/* B39AAC 800C290C 0162C021 */  addu  $t8, $t3, $v0
/* B39AB0 800C2910 8F0F0008 */  lw    $t7, 8($t8)
/* B39AB4 800C2914 0122C821 */  addu  $t9, $t1, $v0
/* B39AB8 800C2918 01E5082A */  slt   $at, $t7, $a1
/* B39ABC 800C291C 54200006 */  bnezl $at, .L800C2938
/* B39AC0 800C2920 24780004 */   addiu $t8, $v1, 4
/* B39AC4 800C2924 8F2E0008 */  lw    $t6, 8($t9)
/* B39AC8 800C2928 550E0003 */  bnel  $t0, $t6, .L800C2938
/* B39ACC 800C292C 24780004 */   addiu $t8, $v1, 4
/* B39AD0 800C2930 00A09025 */  move  $s2, $a1
.L800C2934:
/* B39AD4 800C2934 24780004 */  addiu $t8, $v1, 4
.L800C2938:
/* B39AD8 800C2938 10F8000B */  beq   $a3, $t8, .L800C2968
/* B39ADC 800C293C 00031080 */   sll   $v0, $v1, 2
/* B39AE0 800C2940 01627821 */  addu  $t7, $t3, $v0
/* B39AE4 800C2944 8DF90010 */  lw    $t9, 0x10($t7)
/* B39AE8 800C2948 01227021 */  addu  $t6, $t1, $v0
/* B39AEC 800C294C 0325082A */  slt   $at, $t9, $a1
/* B39AF0 800C2950 54200006 */  bnezl $at, .L800C296C
/* B39AF4 800C2954 246F0006 */   addiu $t7, $v1, 6
/* B39AF8 800C2958 8DD80010 */  lw    $t8, 0x10($t6)
/* B39AFC 800C295C 55180003 */  bnel  $t0, $t8, .L800C296C
/* B39B00 800C2960 246F0006 */   addiu $t7, $v1, 6
/* B39B04 800C2964 00A09025 */  move  $s2, $a1
.L800C2968:
/* B39B08 800C2968 246F0006 */  addiu $t7, $v1, 6
.L800C296C:
/* B39B0C 800C296C 10EF000B */  beq   $a3, $t7, .L800C299C
/* B39B10 800C2970 00031080 */   sll   $v0, $v1, 2
/* B39B14 800C2974 0162C821 */  addu  $t9, $t3, $v0
/* B39B18 800C2978 8F2E0018 */  lw    $t6, 0x18($t9)
/* B39B1C 800C297C 0122C021 */  addu  $t8, $t1, $v0
/* B39B20 800C2980 01C5082A */  slt   $at, $t6, $a1
/* B39B24 800C2984 54200006 */  bnezl $at, .L800C29A0
/* B39B28 800C2988 8FB9003C */   lw    $t9, 0x3c($sp)
/* B39B2C 800C298C 8F0F0018 */  lw    $t7, 0x18($t8)
/* B39B30 800C2990 550F0003 */  bnel  $t0, $t7, .L800C29A0
/* B39B34 800C2994 8FB9003C */   lw    $t9, 0x3c($sp)
/* B39B38 800C2998 00A09025 */  move  $s2, $a1
.L800C299C:
/* B39B3C 800C299C 8FB9003C */  lw    $t9, 0x3c($sp)
.L800C29A0:
/* B39B40 800C29A0 8F260000 */  lw    $a2, ($t9)
/* B39B44 800C29A4 0266082A */  slt   $at, $s3, $a2
/* B39B48 800C29A8 1020004E */  beqz  $at, .L800C2AE4
/* B39B4C 800C29AC 24010001 */   li    $at, 1
/* B39B50 800C29B0 10E10007 */  beq   $a3, $at, .L800C29D0
/* B39B54 800C29B4 8FAE0094 */   lw    $t6, 0x94($sp)
/* B39B58 800C29B8 01C6082A */  slt   $at, $t6, $a2
/* B39B5C 800C29BC 14200004 */  bnez  $at, .L800C29D0
/* B39B60 800C29C0 8FB80148 */   lw    $t8, 0x148($sp)
/* B39B64 800C29C4 55180003 */  bnel  $t0, $t8, .L800C29D4
/* B39B68 800C29C8 24010003 */   li    $at, 3
/* B39B6C 800C29CC 00C09825 */  move  $s3, $a2
.L800C29D0:
/* B39B70 800C29D0 24010003 */  li    $at, 3
.L800C29D4:
/* B39B74 800C29D4 10E10007 */  beq   $a3, $at, .L800C29F4
/* B39B78 800C29D8 8FAF009C */   lw    $t7, 0x9c($sp)
/* B39B7C 800C29DC 01E6082A */  slt   $at, $t7, $a2
/* B39B80 800C29E0 14200004 */  bnez  $at, .L800C29F4
/* B39B84 800C29E4 8FB90150 */   lw    $t9, 0x150($sp)
/* B39B88 800C29E8 15190002 */  bne   $t0, $t9, .L800C29F4
/* B39B8C 800C29EC 00000000 */   nop   
/* B39B90 800C29F0 00C09825 */  move  $s3, $a2
.L800C29F4:
/* B39B94 800C29F4 10F40007 */  beq   $a3, $s4, .L800C2A14
/* B39B98 800C29F8 8FAE00A4 */   lw    $t6, 0xa4($sp)
/* B39B9C 800C29FC 01C6082A */  slt   $at, $t6, $a2
/* B39BA0 800C2A00 14200004 */  bnez  $at, .L800C2A14
/* B39BA4 800C2A04 8FB80158 */   lw    $t8, 0x158($sp)
/* B39BA8 800C2A08 15180002 */  bne   $t0, $t8, .L800C2A14
/* B39BAC 800C2A0C 00000000 */   nop   
/* B39BB0 800C2A10 00C09825 */  move  $s3, $a2
.L800C2A14:
/* B39BB4 800C2A14 10E8000C */  beq   $a3, $t0, .L800C2A48
/* B39BB8 800C2A18 01001825 */   move  $v1, $t0
/* B39BBC 800C2A1C 00031080 */  sll   $v0, $v1, 2
/* B39BC0 800C2A20 01827821 */  addu  $t7, $t4, $v0
/* B39BC4 800C2A24 8DF90000 */  lw    $t9, ($t7)
/* B39BC8 800C2A28 01227021 */  addu  $t6, $t1, $v0
/* B39BCC 800C2A2C 0326082A */  slt   $at, $t9, $a2
/* B39BD0 800C2A30 54200006 */  bnezl $at, .L800C2A4C
/* B39BD4 800C2A34 246F0002 */   addiu $t7, $v1, 2
/* B39BD8 800C2A38 8DD80000 */  lw    $t8, ($t6)
/* B39BDC 800C2A3C 55180003 */  bnel  $t0, $t8, .L800C2A4C
/* B39BE0 800C2A40 246F0002 */   addiu $t7, $v1, 2
/* B39BE4 800C2A44 00C09825 */  move  $s3, $a2
.L800C2A48:
/* B39BE8 800C2A48 246F0002 */  addiu $t7, $v1, 2
.L800C2A4C:
/* B39BEC 800C2A4C 10EF000B */  beq   $a3, $t7, .L800C2A7C
/* B39BF0 800C2A50 00031080 */   sll   $v0, $v1, 2
/* B39BF4 800C2A54 0182C821 */  addu  $t9, $t4, $v0
/* B39BF8 800C2A58 8F2E0008 */  lw    $t6, 8($t9)
/* B39BFC 800C2A5C 0122C021 */  addu  $t8, $t1, $v0
/* B39C00 800C2A60 01C6082A */  slt   $at, $t6, $a2
/* B39C04 800C2A64 54200006 */  bnezl $at, .L800C2A80
/* B39C08 800C2A68 24790004 */   addiu $t9, $v1, 4
/* B39C0C 800C2A6C 8F0F0008 */  lw    $t7, 8($t8)
/* B39C10 800C2A70 550F0003 */  bnel  $t0, $t7, .L800C2A80
/* B39C14 800C2A74 24790004 */   addiu $t9, $v1, 4
/* B39C18 800C2A78 00C09825 */  move  $s3, $a2
.L800C2A7C:
/* B39C1C 800C2A7C 24790004 */  addiu $t9, $v1, 4
.L800C2A80:
/* B39C20 800C2A80 10F9000B */  beq   $a3, $t9, .L800C2AB0
/* B39C24 800C2A84 00031080 */   sll   $v0, $v1, 2
/* B39C28 800C2A88 01827021 */  addu  $t6, $t4, $v0
/* B39C2C 800C2A8C 8DD80010 */  lw    $t8, 0x10($t6)
/* B39C30 800C2A90 01227821 */  addu  $t7, $t1, $v0
/* B39C34 800C2A94 0306082A */  slt   $at, $t8, $a2
/* B39C38 800C2A98 54200006 */  bnezl $at, .L800C2AB4
/* B39C3C 800C2A9C 246E0006 */   addiu $t6, $v1, 6
/* B39C40 800C2AA0 8DF90010 */  lw    $t9, 0x10($t7)
/* B39C44 800C2AA4 55190003 */  bnel  $t0, $t9, .L800C2AB4
/* B39C48 800C2AA8 246E0006 */   addiu $t6, $v1, 6
/* B39C4C 800C2AAC 00C09825 */  move  $s3, $a2
.L800C2AB0:
/* B39C50 800C2AB0 246E0006 */  addiu $t6, $v1, 6
.L800C2AB4:
/* B39C54 800C2AB4 10EE000B */  beq   $a3, $t6, .L800C2AE4
/* B39C58 800C2AB8 00031080 */   sll   $v0, $v1, 2
/* B39C5C 800C2ABC 0182C021 */  addu  $t8, $t4, $v0
/* B39C60 800C2AC0 8F0F0018 */  lw    $t7, 0x18($t8)
/* B39C64 800C2AC4 0122C821 */  addu  $t9, $t1, $v0
/* B39C68 800C2AC8 01E6082A */  slt   $at, $t7, $a2
/* B39C6C 800C2ACC 54200006 */  bnezl $at, .L800C2AE8
/* B39C70 800C2AD0 008D082A */   slt   $at, $a0, $t5
/* B39C74 800C2AD4 8F2E0018 */  lw    $t6, 0x18($t9)
/* B39C78 800C2AD8 550E0003 */  bnel  $t0, $t6, .L800C2AE8
/* B39C7C 800C2ADC 008D082A */   slt   $at, $a0, $t5
/* B39C80 800C2AE0 00C09825 */  move  $s3, $a2
.L800C2AE4:
/* B39C84 800C2AE4 008D082A */  slt   $at, $a0, $t5
.L800C2AE8:
/* B39C88 800C2AE8 1020004E */  beqz  $at, .L800C2C24
/* B39C8C 800C2AEC 24010001 */   li    $at, 1
/* B39C90 800C2AF0 10E10007 */  beq   $a3, $at, .L800C2B10
/* B39C94 800C2AF4 8FB8010C */   lw    $t8, 0x10c($sp)
/* B39C98 800C2AF8 0098082A */  slt   $at, $a0, $t8
/* B39C9C 800C2AFC 14200004 */  bnez  $at, .L800C2B10
/* B39CA0 800C2B00 8FAF0148 */   lw    $t7, 0x148($sp)
/* B39CA4 800C2B04 550F0003 */  bnel  $t0, $t7, .L800C2B14
/* B39CA8 800C2B08 24010003 */   li    $at, 3
/* B39CAC 800C2B0C 00806825 */  move  $t5, $a0
.L800C2B10:
/* B39CB0 800C2B10 24010003 */  li    $at, 3
.L800C2B14:
/* B39CB4 800C2B14 10E10007 */  beq   $a3, $at, .L800C2B34
/* B39CB8 800C2B18 8FB90114 */   lw    $t9, 0x114($sp)
/* B39CBC 800C2B1C 0099082A */  slt   $at, $a0, $t9
/* B39CC0 800C2B20 14200004 */  bnez  $at, .L800C2B34
/* B39CC4 800C2B24 8FAE0150 */   lw    $t6, 0x150($sp)
/* B39CC8 800C2B28 150E0002 */  bne   $t0, $t6, .L800C2B34
/* B39CCC 800C2B2C 00000000 */   nop   
/* B39CD0 800C2B30 00806825 */  move  $t5, $a0
.L800C2B34:
/* B39CD4 800C2B34 10F40007 */  beq   $a3, $s4, .L800C2B54
/* B39CD8 800C2B38 8FB8011C */   lw    $t8, 0x11c($sp)
/* B39CDC 800C2B3C 0098082A */  slt   $at, $a0, $t8
/* B39CE0 800C2B40 14200004 */  bnez  $at, .L800C2B54
/* B39CE4 800C2B44 8FAF0158 */   lw    $t7, 0x158($sp)
/* B39CE8 800C2B48 150F0002 */  bne   $t0, $t7, .L800C2B54
/* B39CEC 800C2B4C 00000000 */   nop   
/* B39CF0 800C2B50 00806825 */  move  $t5, $a0
.L800C2B54:
/* B39CF4 800C2B54 10E8000C */  beq   $a3, $t0, .L800C2B88
/* B39CF8 800C2B58 01001825 */   move  $v1, $t0
/* B39CFC 800C2B5C 00031080 */  sll   $v0, $v1, 2
/* B39D00 800C2B60 0142C821 */  addu  $t9, $t2, $v0
/* B39D04 800C2B64 8F2E0000 */  lw    $t6, ($t9)
/* B39D08 800C2B68 0122C021 */  addu  $t8, $t1, $v0
/* B39D0C 800C2B6C 008E082A */  slt   $at, $a0, $t6
/* B39D10 800C2B70 54200006 */  bnezl $at, .L800C2B8C
/* B39D14 800C2B74 24790002 */   addiu $t9, $v1, 2
/* B39D18 800C2B78 8F0F0000 */  lw    $t7, ($t8)
/* B39D1C 800C2B7C 550F0003 */  bnel  $t0, $t7, .L800C2B8C
/* B39D20 800C2B80 24790002 */   addiu $t9, $v1, 2
/* B39D24 800C2B84 00806825 */  move  $t5, $a0
.L800C2B88:
/* B39D28 800C2B88 24790002 */  addiu $t9, $v1, 2
.L800C2B8C:
/* B39D2C 800C2B8C 10F9000B */  beq   $a3, $t9, .L800C2BBC
/* B39D30 800C2B90 00031080 */   sll   $v0, $v1, 2
/* B39D34 800C2B94 01427021 */  addu  $t6, $t2, $v0
/* B39D38 800C2B98 8DD80008 */  lw    $t8, 8($t6)
/* B39D3C 800C2B9C 01227821 */  addu  $t7, $t1, $v0
/* B39D40 800C2BA0 0098082A */  slt   $at, $a0, $t8
/* B39D44 800C2BA4 54200006 */  bnezl $at, .L800C2BC0
/* B39D48 800C2BA8 246E0004 */   addiu $t6, $v1, 4
/* B39D4C 800C2BAC 8DF90008 */  lw    $t9, 8($t7)
/* B39D50 800C2BB0 55190003 */  bnel  $t0, $t9, .L800C2BC0
/* B39D54 800C2BB4 246E0004 */   addiu $t6, $v1, 4
/* B39D58 800C2BB8 00806825 */  move  $t5, $a0
.L800C2BBC:
/* B39D5C 800C2BBC 246E0004 */  addiu $t6, $v1, 4
.L800C2BC0:
/* B39D60 800C2BC0 10EE000B */  beq   $a3, $t6, .L800C2BF0
/* B39D64 800C2BC4 00031080 */   sll   $v0, $v1, 2
/* B39D68 800C2BC8 0142C021 */  addu  $t8, $t2, $v0
/* B39D6C 800C2BCC 8F0F0010 */  lw    $t7, 0x10($t8)
/* B39D70 800C2BD0 0122C821 */  addu  $t9, $t1, $v0
/* B39D74 800C2BD4 008F082A */  slt   $at, $a0, $t7
/* B39D78 800C2BD8 54200006 */  bnezl $at, .L800C2BF4
/* B39D7C 800C2BDC 24780006 */   addiu $t8, $v1, 6
/* B39D80 800C2BE0 8F2E0010 */  lw    $t6, 0x10($t9)
/* B39D84 800C2BE4 550E0003 */  bnel  $t0, $t6, .L800C2BF4
/* B39D88 800C2BE8 24780006 */   addiu $t8, $v1, 6
/* B39D8C 800C2BEC 00806825 */  move  $t5, $a0
.L800C2BF0:
/* B39D90 800C2BF0 24780006 */  addiu $t8, $v1, 6
.L800C2BF4:
/* B39D94 800C2BF4 10F8000B */  beq   $a3, $t8, .L800C2C24
/* B39D98 800C2BF8 00031080 */   sll   $v0, $v1, 2
/* B39D9C 800C2BFC 01427821 */  addu  $t7, $t2, $v0
/* B39DA0 800C2C00 8DF90018 */  lw    $t9, 0x18($t7)
/* B39DA4 800C2C04 01227021 */  addu  $t6, $t1, $v0
/* B39DA8 800C2C08 0099082A */  slt   $at, $a0, $t9
/* B39DAC 800C2C0C 54200006 */  bnezl $at, .L800C2C28
/* B39DB0 800C2C10 00BF082A */   slt   $at, $a1, $ra
/* B39DB4 800C2C14 8DD80018 */  lw    $t8, 0x18($t6)
/* B39DB8 800C2C18 55180003 */  bnel  $t0, $t8, .L800C2C28
/* B39DBC 800C2C1C 00BF082A */   slt   $at, $a1, $ra
/* B39DC0 800C2C20 00806825 */  move  $t5, $a0
.L800C2C24:
/* B39DC4 800C2C24 00BF082A */  slt   $at, $a1, $ra
.L800C2C28:
/* B39DC8 800C2C28 1020004E */  beqz  $at, .L800C2D64
/* B39DCC 800C2C2C 24010001 */   li    $at, 1
/* B39DD0 800C2C30 10E10007 */  beq   $a3, $at, .L800C2C50
/* B39DD4 800C2C34 8FAF00D0 */   lw    $t7, 0xd0($sp)
/* B39DD8 800C2C38 00AF082A */  slt   $at, $a1, $t7
/* B39DDC 800C2C3C 14200004 */  bnez  $at, .L800C2C50
/* B39DE0 800C2C40 8FB90148 */   lw    $t9, 0x148($sp)
/* B39DE4 800C2C44 55190003 */  bnel  $t0, $t9, .L800C2C54
/* B39DE8 800C2C48 24010003 */   li    $at, 3
/* B39DEC 800C2C4C 00A0F825 */  move  $ra, $a1
.L800C2C50:
/* B39DF0 800C2C50 24010003 */  li    $at, 3
.L800C2C54:
/* B39DF4 800C2C54 10E10007 */  beq   $a3, $at, .L800C2C74
/* B39DF8 800C2C58 8FAE00D8 */   lw    $t6, 0xd8($sp)
/* B39DFC 800C2C5C 00AE082A */  slt   $at, $a1, $t6
/* B39E00 800C2C60 14200004 */  bnez  $at, .L800C2C74
/* B39E04 800C2C64 8FB80150 */   lw    $t8, 0x150($sp)
/* B39E08 800C2C68 15180002 */  bne   $t0, $t8, .L800C2C74
/* B39E0C 800C2C6C 00000000 */   nop   
/* B39E10 800C2C70 00A0F825 */  move  $ra, $a1
.L800C2C74:
/* B39E14 800C2C74 10F40007 */  beq   $a3, $s4, .L800C2C94
/* B39E18 800C2C78 8FAF00E0 */   lw    $t7, 0xe0($sp)
/* B39E1C 800C2C7C 00AF082A */  slt   $at, $a1, $t7
/* B39E20 800C2C80 14200004 */  bnez  $at, .L800C2C94
/* B39E24 800C2C84 8FB90158 */   lw    $t9, 0x158($sp)
/* B39E28 800C2C88 15190002 */  bne   $t0, $t9, .L800C2C94
/* B39E2C 800C2C8C 00000000 */   nop   
/* B39E30 800C2C90 00A0F825 */  move  $ra, $a1
.L800C2C94:
/* B39E34 800C2C94 10E8000C */  beq   $a3, $t0, .L800C2CC8
/* B39E38 800C2C98 01001825 */   move  $v1, $t0
/* B39E3C 800C2C9C 00031080 */  sll   $v0, $v1, 2
/* B39E40 800C2CA0 01627021 */  addu  $t6, $t3, $v0
/* B39E44 800C2CA4 8DD80000 */  lw    $t8, ($t6)
/* B39E48 800C2CA8 01227821 */  addu  $t7, $t1, $v0
/* B39E4C 800C2CAC 00B8082A */  slt   $at, $a1, $t8
/* B39E50 800C2CB0 54200006 */  bnezl $at, .L800C2CCC
/* B39E54 800C2CB4 246E0002 */   addiu $t6, $v1, 2
/* B39E58 800C2CB8 8DF90000 */  lw    $t9, ($t7)
/* B39E5C 800C2CBC 55190003 */  bnel  $t0, $t9, .L800C2CCC
/* B39E60 800C2CC0 246E0002 */   addiu $t6, $v1, 2
/* B39E64 800C2CC4 00A0F825 */  move  $ra, $a1
.L800C2CC8:
/* B39E68 800C2CC8 246E0002 */  addiu $t6, $v1, 2
.L800C2CCC:
/* B39E6C 800C2CCC 10EE000B */  beq   $a3, $t6, .L800C2CFC
/* B39E70 800C2CD0 00031080 */   sll   $v0, $v1, 2
/* B39E74 800C2CD4 0162C021 */  addu  $t8, $t3, $v0
/* B39E78 800C2CD8 8F0F0008 */  lw    $t7, 8($t8)
/* B39E7C 800C2CDC 0122C821 */  addu  $t9, $t1, $v0
/* B39E80 800C2CE0 00AF082A */  slt   $at, $a1, $t7
/* B39E84 800C2CE4 54200006 */  bnezl $at, .L800C2D00
/* B39E88 800C2CE8 24780004 */   addiu $t8, $v1, 4
/* B39E8C 800C2CEC 8F2E0008 */  lw    $t6, 8($t9)
/* B39E90 800C2CF0 550E0003 */  bnel  $t0, $t6, .L800C2D00
/* B39E94 800C2CF4 24780004 */   addiu $t8, $v1, 4
/* B39E98 800C2CF8 00A0F825 */  move  $ra, $a1
.L800C2CFC:
/* B39E9C 800C2CFC 24780004 */  addiu $t8, $v1, 4
.L800C2D00:
/* B39EA0 800C2D00 10F8000B */  beq   $a3, $t8, .L800C2D30
/* B39EA4 800C2D04 00031080 */   sll   $v0, $v1, 2
/* B39EA8 800C2D08 01627821 */  addu  $t7, $t3, $v0
/* B39EAC 800C2D0C 8DF90010 */  lw    $t9, 0x10($t7)
/* B39EB0 800C2D10 01227021 */  addu  $t6, $t1, $v0
/* B39EB4 800C2D14 00B9082A */  slt   $at, $a1, $t9
/* B39EB8 800C2D18 54200006 */  bnezl $at, .L800C2D34
/* B39EBC 800C2D1C 246F0006 */   addiu $t7, $v1, 6
/* B39EC0 800C2D20 8DD80010 */  lw    $t8, 0x10($t6)
/* B39EC4 800C2D24 55180003 */  bnel  $t0, $t8, .L800C2D34
/* B39EC8 800C2D28 246F0006 */   addiu $t7, $v1, 6
/* B39ECC 800C2D2C 00A0F825 */  move  $ra, $a1
.L800C2D30:
/* B39ED0 800C2D30 246F0006 */  addiu $t7, $v1, 6
.L800C2D34:
/* B39ED4 800C2D34 10EF000B */  beq   $a3, $t7, .L800C2D64
/* B39ED8 800C2D38 00031080 */   sll   $v0, $v1, 2
/* B39EDC 800C2D3C 0162C821 */  addu  $t9, $t3, $v0
/* B39EE0 800C2D40 8F2E0018 */  lw    $t6, 0x18($t9)
/* B39EE4 800C2D44 0122C021 */  addu  $t8, $t1, $v0
/* B39EE8 800C2D48 00AE082A */  slt   $at, $a1, $t6
/* B39EEC 800C2D4C 54200006 */  bnezl $at, .L800C2D68
/* B39EF0 800C2D50 00D0082A */   slt   $at, $a2, $s0
/* B39EF4 800C2D54 8F0F0018 */  lw    $t7, 0x18($t8)
/* B39EF8 800C2D58 550F0003 */  bnel  $t0, $t7, .L800C2D68
/* B39EFC 800C2D5C 00D0082A */   slt   $at, $a2, $s0
/* B39F00 800C2D60 00A0F825 */  move  $ra, $a1
.L800C2D64:
/* B39F04 800C2D64 00D0082A */  slt   $at, $a2, $s0
.L800C2D68:
/* B39F08 800C2D68 1020004E */  beqz  $at, .L800C2EA4
/* B39F0C 800C2D6C 24010001 */   li    $at, 1
/* B39F10 800C2D70 10E10007 */  beq   $a3, $at, .L800C2D90
/* B39F14 800C2D74 8FB90094 */   lw    $t9, 0x94($sp)
/* B39F18 800C2D78 00D9082A */  slt   $at, $a2, $t9
/* B39F1C 800C2D7C 14200004 */  bnez  $at, .L800C2D90
/* B39F20 800C2D80 8FAE0148 */   lw    $t6, 0x148($sp)
/* B39F24 800C2D84 550E0003 */  bnel  $t0, $t6, .L800C2D94
/* B39F28 800C2D88 24010003 */   li    $at, 3
/* B39F2C 800C2D8C 00C08025 */  move  $s0, $a2
.L800C2D90:
/* B39F30 800C2D90 24010003 */  li    $at, 3
.L800C2D94:
/* B39F34 800C2D94 10E10007 */  beq   $a3, $at, .L800C2DB4
/* B39F38 800C2D98 8FB8009C */   lw    $t8, 0x9c($sp)
/* B39F3C 800C2D9C 00D8082A */  slt   $at, $a2, $t8
/* B39F40 800C2DA0 14200004 */  bnez  $at, .L800C2DB4
/* B39F44 800C2DA4 8FAF0150 */   lw    $t7, 0x150($sp)
/* B39F48 800C2DA8 150F0002 */  bne   $t0, $t7, .L800C2DB4
/* B39F4C 800C2DAC 00000000 */   nop   
/* B39F50 800C2DB0 00C08025 */  move  $s0, $a2
.L800C2DB4:
/* B39F54 800C2DB4 10F40007 */  beq   $a3, $s4, .L800C2DD4
/* B39F58 800C2DB8 8FB900A4 */   lw    $t9, 0xa4($sp)
/* B39F5C 800C2DBC 00D9082A */  slt   $at, $a2, $t9
/* B39F60 800C2DC0 14200004 */  bnez  $at, .L800C2DD4
/* B39F64 800C2DC4 8FAE0158 */   lw    $t6, 0x158($sp)
/* B39F68 800C2DC8 150E0002 */  bne   $t0, $t6, .L800C2DD4
/* B39F6C 800C2DCC 00000000 */   nop   
/* B39F70 800C2DD0 00C08025 */  move  $s0, $a2
.L800C2DD4:
/* B39F74 800C2DD4 10E8000C */  beq   $a3, $t0, .L800C2E08
/* B39F78 800C2DD8 01001825 */   move  $v1, $t0
/* B39F7C 800C2DDC 00031080 */  sll   $v0, $v1, 2
/* B39F80 800C2DE0 0182C021 */  addu  $t8, $t4, $v0
/* B39F84 800C2DE4 8F0F0000 */  lw    $t7, ($t8)
/* B39F88 800C2DE8 0122C821 */  addu  $t9, $t1, $v0
/* B39F8C 800C2DEC 00CF082A */  slt   $at, $a2, $t7
/* B39F90 800C2DF0 54200006 */  bnezl $at, .L800C2E0C
/* B39F94 800C2DF4 24780002 */   addiu $t8, $v1, 2
/* B39F98 800C2DF8 8F2E0000 */  lw    $t6, ($t9)
/* B39F9C 800C2DFC 550E0003 */  bnel  $t0, $t6, .L800C2E0C
/* B39FA0 800C2E00 24780002 */   addiu $t8, $v1, 2
/* B39FA4 800C2E04 00C08025 */  move  $s0, $a2
.L800C2E08:
/* B39FA8 800C2E08 24780002 */  addiu $t8, $v1, 2
.L800C2E0C:
/* B39FAC 800C2E0C 10F8000B */  beq   $a3, $t8, .L800C2E3C
/* B39FB0 800C2E10 00031080 */   sll   $v0, $v1, 2
/* B39FB4 800C2E14 01827821 */  addu  $t7, $t4, $v0
/* B39FB8 800C2E18 8DF90008 */  lw    $t9, 8($t7)
/* B39FBC 800C2E1C 01227021 */  addu  $t6, $t1, $v0
/* B39FC0 800C2E20 00D9082A */  slt   $at, $a2, $t9
/* B39FC4 800C2E24 54200006 */  bnezl $at, .L800C2E40
/* B39FC8 800C2E28 246F0004 */   addiu $t7, $v1, 4
/* B39FCC 800C2E2C 8DD80008 */  lw    $t8, 8($t6)
/* B39FD0 800C2E30 55180003 */  bnel  $t0, $t8, .L800C2E40
/* B39FD4 800C2E34 246F0004 */   addiu $t7, $v1, 4
/* B39FD8 800C2E38 00C08025 */  move  $s0, $a2
.L800C2E3C:
/* B39FDC 800C2E3C 246F0004 */  addiu $t7, $v1, 4
.L800C2E40:
/* B39FE0 800C2E40 10EF000B */  beq   $a3, $t7, .L800C2E70
/* B39FE4 800C2E44 00031080 */   sll   $v0, $v1, 2
/* B39FE8 800C2E48 0182C821 */  addu  $t9, $t4, $v0
/* B39FEC 800C2E4C 8F2E0010 */  lw    $t6, 0x10($t9)
/* B39FF0 800C2E50 0122C021 */  addu  $t8, $t1, $v0
/* B39FF4 800C2E54 00CE082A */  slt   $at, $a2, $t6
/* B39FF8 800C2E58 54200006 */  bnezl $at, .L800C2E74
/* B39FFC 800C2E5C 24790006 */   addiu $t9, $v1, 6
/* B3A000 800C2E60 8F0F0010 */  lw    $t7, 0x10($t8)
/* B3A004 800C2E64 550F0003 */  bnel  $t0, $t7, .L800C2E74
/* B3A008 800C2E68 24790006 */   addiu $t9, $v1, 6
/* B3A00C 800C2E6C 00C08025 */  move  $s0, $a2
.L800C2E70:
/* B3A010 800C2E70 24790006 */  addiu $t9, $v1, 6
.L800C2E74:
/* B3A014 800C2E74 10F9000B */  beq   $a3, $t9, .L800C2EA4
/* B3A018 800C2E78 00031080 */   sll   $v0, $v1, 2
/* B3A01C 800C2E7C 01827021 */  addu  $t6, $t4, $v0
/* B3A020 800C2E80 8DD80018 */  lw    $t8, 0x18($t6)
/* B3A024 800C2E84 01227821 */  addu  $t7, $t1, $v0
/* B3A028 800C2E88 00D8082A */  slt   $at, $a2, $t8
/* B3A02C 800C2E8C 54200006 */  bnezl $at, .L800C2EA8
/* B3A030 800C2E90 8FAE0054 */   lw    $t6, 0x54($sp)
/* B3A034 800C2E94 8DF90018 */  lw    $t9, 0x18($t7)
/* B3A038 800C2E98 55190003 */  bnel  $t0, $t9, .L800C2EA8
/* B3A03C 800C2E9C 8FAE0054 */   lw    $t6, 0x54($sp)
/* B3A040 800C2EA0 00C08025 */  move  $s0, $a2
.L800C2EA4:
/* B3A044 800C2EA4 8FAE0054 */  lw    $t6, 0x54($sp)
.L800C2EA8:
/* B3A048 800C2EA8 24E70002 */  addiu $a3, $a3, 2
/* B3A04C 800C2EAC 2401000F */  li    $at, 15
/* B3A050 800C2EB0 25D80008 */  addiu $t8, $t6, 8
/* B3A054 800C2EB4 14E1FE0F */  bne   $a3, $at, .L800C26F4
/* B3A058 800C2EB8 AFB80054 */   sw    $t8, 0x54($sp)
/* B3A05C 800C2EBC 8FAF0160 */  lw    $t7, 0x160($sp)
/* B3A060 800C2EC0 8FAE0124 */  lw    $t6, 0x124($sp)
/* B3A064 800C2EC4 022DC821 */  addu  $t9, $s1, $t5
/* B3A068 800C2EC8 010F1023 */  subu  $v0, $t0, $t7
/* B3A06C 800C2ECC 000EC040 */  sll   $t8, $t6, 1
/* B3A070 800C2ED0 03387823 */  subu  $t7, $t9, $t8
/* B3A074 800C2ED4 01E20019 */  multu $t7, $v0
/* B3A078 800C2ED8 0000C812 */  mflo  $t9
/* B3A07C 800C2EDC 27380004 */  addiu $t8, $t9, 4
/* B3A080 800C2EE0 001878C3 */  sra   $t7, $t8, 3
/* B3A084 800C2EE4 8FB800E8 */  lw    $t8, 0xe8($sp)
/* B3A088 800C2EE8 01EE1821 */  addu  $v1, $t7, $t6
/* B3A08C 800C2EEC 025FC821 */  addu  $t9, $s2, $ra
/* B3A090 800C2EF0 00187840 */  sll   $t7, $t8, 1
/* B3A094 800C2EF4 032F7023 */  subu  $t6, $t9, $t7
/* B3A098 800C2EF8 01C20019 */  multu $t6, $v0
/* B3A09C 800C2EFC 0000C812 */  mflo  $t9
/* B3A0A0 800C2F00 272F0004 */  addiu $t7, $t9, 4
/* B3A0A4 800C2F04 000F70C3 */  sra   $t6, $t7, 3
/* B3A0A8 800C2F08 8FAF00AC */  lw    $t7, 0xac($sp)
/* B3A0AC 800C2F0C 01D82021 */  addu  $a0, $t6, $t8
/* B3A0B0 800C2F10 0270C821 */  addu  $t9, $s3, $s0
/* B3A0B4 800C2F14 000F7040 */  sll   $t6, $t7, 1
/* B3A0B8 800C2F18 032EC023 */  subu  $t8, $t9, $t6
/* B3A0BC 800C2F1C 03020019 */  multu $t8, $v0
/* B3A0C0 800C2F20 0000C812 */  mflo  $t9
/* B3A0C4 800C2F24 272E0004 */  addiu $t6, $t9, 4
/* B3A0C8 800C2F28 000EC0C3 */  sra   $t8, $t6, 3
/* B3A0CC 800C2F2C 93B90064 */  lbu   $t9, 0x64($sp)
/* B3A0D0 800C2F30 000370C2 */  srl   $t6, $v1, 3
/* B3A0D4 800C2F34 030F2821 */  addu  $a1, $t8, $t7
/* B3A0D8 800C2F38 000E78C0 */  sll   $t7, $t6, 3
/* B3A0DC 800C2F3C 332EFF07 */  andi  $t6, $t9, 0xff07
/* B3A0E0 800C2F40 01EEC025 */  or    $t8, $t7, $t6
/* B3A0E4 800C2F44 A3B80064 */  sb    $t8, 0x64($sp)
/* B3A0E8 800C2F48 97B90064 */  lhu   $t9, 0x64($sp)
/* B3A0EC 800C2F4C 000478C2 */  srl   $t7, $a0, 3
/* B3A0F0 800C2F50 000F7180 */  sll   $t6, $t7, 6
/* B3A0F4 800C2F54 31D807C0 */  andi  $t8, $t6, 0x7c0
/* B3A0F8 800C2F58 332FF83F */  andi  $t7, $t9, 0xf83f
/* B3A0FC 800C2F5C 030F7025 */  or    $t6, $t8, $t7
/* B3A100 800C2F60 A7AE0064 */  sh    $t6, 0x64($sp)
/* B3A104 800C2F64 93B90065 */  lbu   $t9, 0x65($sp)
/* B3A108 800C2F68 0005C0C2 */  srl   $t8, $a1, 3
/* B3A10C 800C2F6C 00187840 */  sll   $t7, $t8, 1
/* B3A110 800C2F70 31EE003E */  andi  $t6, $t7, 0x3e
/* B3A114 800C2F74 3338FFC1 */  andi  $t8, $t9, 0xffc1
/* B3A118 800C2F78 01D87825 */  or    $t7, $t6, $t8
/* B3A11C 800C2F7C 01E07025 */  move  $t6, $t7
/* B3A120 800C2F80 35D80001 */  ori   $t8, $t6, 1
/* B3A124 800C2F84 A3AF0065 */  sb    $t7, 0x65($sp)
/* B3A128 800C2F88 8FAE018C */  lw    $t6, 0x18c($sp)
/* B3A12C 800C2F8C A3B80065 */  sb    $t8, 0x65($sp)
/* B3A130 800C2F90 8ED90014 */  lw    $t9, 0x14($s6)
/* B3A134 800C2F94 000EC040 */  sll   $t8, $t6, 1
/* B3A138 800C2F98 97AF0064 */  lhu   $t7, 0x64($sp)
/* B3A13C 800C2F9C 03387021 */  addu  $t6, $t9, $t8
/* B3A140 800C2FA0 8ED80000 */  lw    $t8, ($s6)
/* B3A144 800C2FA4 8FB90190 */  lw    $t9, 0x190($sp)
/* B3A148 800C2FA8 03380019 */  multu $t9, $t8
/* B3A14C 800C2FAC 0000C812 */  mflo  $t9
/* B3A150 800C2FB0 0019C040 */  sll   $t8, $t9, 1
/* B3A154 800C2FB4 01D8C821 */  addu  $t9, $t6, $t8
/* B3A158 800C2FB8 A72F0000 */  sh    $t7, ($t9)
/* B3A15C 800C2FBC 8FBF0034 */  lw    $ra, 0x34($sp)
.L800C2FC0:
/* B3A160 800C2FC0 8FB00018 */  lw    $s0, 0x18($sp)
/* B3A164 800C2FC4 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3A168 800C2FC8 8FB20020 */  lw    $s2, 0x20($sp)
/* B3A16C 800C2FCC 8FB30024 */  lw    $s3, 0x24($sp)
/* B3A170 800C2FD0 8FB40028 */  lw    $s4, 0x28($sp)
/* B3A174 800C2FD4 8FB5002C */  lw    $s5, 0x2c($sp)
/* B3A178 800C2FD8 8FB60030 */  lw    $s6, 0x30($sp)
/* B3A17C 800C2FDC 03E00008 */  jr    $ra
/* B3A180 800C2FE0 27BD0188 */   addiu $sp, $sp, 0x188

glabel func_800C2FE4
/* B3A184 800C2FE4 27BDFF50 */  addiu $sp, $sp, -0xb0
/* B3A188 800C2FE8 AFBF0074 */  sw    $ra, 0x74($sp)
/* B3A18C 800C2FEC AFBE0070 */  sw    $fp, 0x70($sp)
/* B3A190 800C2FF0 AFB7006C */  sw    $s7, 0x6c($sp)
/* B3A194 800C2FF4 AFB60068 */  sw    $s6, 0x68($sp)
/* B3A198 800C2FF8 AFB50064 */  sw    $s5, 0x64($sp)
/* B3A19C 800C2FFC AFB40060 */  sw    $s4, 0x60($sp)
/* B3A1A0 800C3000 AFB3005C */  sw    $s3, 0x5c($sp)
/* B3A1A4 800C3004 AFB20058 */  sw    $s2, 0x58($sp)
/* B3A1A8 800C3008 AFB10054 */  sw    $s1, 0x54($sp)
/* B3A1AC 800C300C AFB00050 */  sw    $s0, 0x50($sp)
/* B3A1B0 800C3010 8C850000 */  lw    $a1, ($a0)
/* B3A1B4 800C3014 2401FFF8 */  li    $at, -8
/* B3A1B8 800C3018 03A0F025 */  move  $fp, $sp
/* B3A1BC 800C301C 24A20007 */  addiu $v0, $a1, 7
/* B3A1C0 800C3020 00411024 */  and   $v0, $v0, $at
/* B3A1C4 800C3024 03A2E823 */  subu  $sp, $sp, $v0
/* B3A1C8 800C3028 27AE0038 */  addiu $t6, $sp, 0x38
/* B3A1CC 800C302C 03A2E823 */  subu  $sp, $sp, $v0
/* B3A1D0 800C3030 27AF0038 */  addiu $t7, $sp, 0x38
/* B3A1D4 800C3034 03A2E823 */  subu  $sp, $sp, $v0
/* B3A1D8 800C3038 27B80038 */  addiu $t8, $sp, 0x38
/* B3A1DC 800C303C AFCE00A0 */  sw    $t6, 0xa0($fp)
/* B3A1E0 800C3040 AFCF009C */  sw    $t7, 0x9c($fp)
/* B3A1E4 800C3044 AFD80098 */  sw    $t8, 0x98($fp)
/* B3A1E8 800C3048 8C990004 */  lw    $t9, 4($a0)
/* B3A1EC 800C304C 0080A825 */  move  $s5, $a0
/* B3A1F0 800C3050 2416000F */  li    $s6, 15
/* B3A1F4 800C3054 1B2001B9 */  blez  $t9, .L800C373C
/* B3A1F8 800C3058 0000B825 */   move  $s7, $zero
.L800C305C:
/* B3A1FC 800C305C 18A00020 */  blez  $a1, .L800C30E0
/* B3A200 800C3060 0000A025 */   move  $s4, $zero
/* B3A204 800C3064 8FC200A0 */  lw    $v0, 0xa0($fp)
/* B3A208 800C3068 8FC3009C */  lw    $v1, 0x9c($fp)
/* B3A20C 800C306C 8FC40098 */  lw    $a0, 0x98($fp)
.L800C3070:
/* B3A210 800C3070 02E50019 */  multu $s7, $a1
/* B3A214 800C3074 8EAE0014 */  lw    $t6, 0x14($s5)
/* B3A218 800C3078 00147840 */  sll   $t7, $s4, 1
/* B3A21C 800C307C 26940001 */  addiu $s4, $s4, 1
/* B3A220 800C3080 01CFC021 */  addu  $t8, $t6, $t7
/* B3A224 800C3084 24420001 */  addiu $v0, $v0, 1
/* B3A228 800C3088 24630001 */  addiu $v1, $v1, 1
/* B3A22C 800C308C 24840001 */  addiu $a0, $a0, 1
/* B3A230 800C3090 0000C812 */  mflo  $t9
/* B3A234 800C3094 00197040 */  sll   $t6, $t9, 1
/* B3A238 800C3098 030E7821 */  addu  $t7, $t8, $t6
/* B3A23C 800C309C 95F90000 */  lhu   $t9, ($t7)
/* B3A240 800C30A0 A7D9007C */  sh    $t9, 0x7c($fp)
/* B3A244 800C30A4 8FD8007C */  lw    $t8, 0x7c($fp)
/* B3A248 800C30A8 001876C2 */  srl   $t6, $t8, 0x1b
/* B3A24C 800C30AC A04EFFFF */  sb    $t6, -1($v0)
/* B3A250 800C30B0 8FCF007C */  lw    $t7, 0x7c($fp)
/* B3A254 800C30B4 000FC940 */  sll   $t9, $t7, 5
/* B3A258 800C30B8 0019C6C2 */  srl   $t8, $t9, 0x1b
/* B3A25C 800C30BC A078FFFF */  sb    $t8, -1($v1)
/* B3A260 800C30C0 8FCE007C */  lw    $t6, 0x7c($fp)
/* B3A264 800C30C4 000E7A80 */  sll   $t7, $t6, 0xa
/* B3A268 800C30C8 000FCEC2 */  srl   $t9, $t7, 0x1b
/* B3A26C 800C30CC A099FFFF */  sb    $t9, -1($a0)
/* B3A270 800C30D0 8EA50000 */  lw    $a1, ($s5)
/* B3A274 800C30D4 0285082A */  slt   $at, $s4, $a1
/* B3A278 800C30D8 1420FFE5 */  bnez  $at, .L800C3070
/* B3A27C 800C30DC 00000000 */   nop   
.L800C30E0:
/* B3A280 800C30E0 24A3FFFF */  addiu $v1, $a1, -1
/* B3A284 800C30E4 28610002 */  slti  $at, $v1, 2
/* B3A288 800C30E8 1420018F */  bnez  $at, .L800C3728
/* B3A28C 800C30EC 24140001 */   li    $s4, 1
.L800C30F0:
/* B3A290 800C30F0 02E50019 */  multu $s7, $a1
/* B3A294 800C30F4 8EB80018 */  lw    $t8, 0x18($s5)
/* B3A298 800C30F8 24010007 */  li    $at, 7
/* B3A29C 800C30FC 03147021 */  addu  $t6, $t8, $s4
/* B3A2A0 800C3100 00002012 */  mflo  $a0
/* B3A2A4 800C3104 01C47821 */  addu  $t7, $t6, $a0
/* B3A2A8 800C3108 91E20000 */  lbu   $v0, ($t7)
/* B3A2AC 800C310C 00021143 */  sra   $v0, $v0, 5
/* B3A2B0 800C3110 50410182 */  beql  $v0, $at, .L800C371C
/* B3A2B4 800C3114 26940001 */   addiu $s4, $s4, 1
/* B3A2B8 800C3118 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B3A2BC 800C311C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* B3A2C0 800C3120 00001025 */  move  $v0, $zero
/* B3A2C4 800C3124 24010005 */  li    $at, 5
/* B3A2C8 800C3128 84651074 */  lh    $a1, 0x1074($v1)
/* B3A2CC 800C312C 16C50003 */  bne   $s6, $a1, .L800C313C
/* B3A2D0 800C3130 00000000 */   nop   
/* B3A2D4 800C3134 10000001 */  b     .L800C313C
/* B3A2D8 800C3138 84621076 */   lh    $v0, 0x1076($v1)
.L800C313C:
/* B3A2DC 800C313C 5040016E */  beql  $v0, $zero, .L800C36F8
/* B3A2E0 800C3140 8EAE0014 */   lw    $t6, 0x14($s5)
/* B3A2E4 800C3144 16C50003 */  bne   $s6, $a1, .L800C3154
/* B3A2E8 800C3148 00001025 */   move  $v0, $zero
/* B3A2EC 800C314C 10000001 */  b     .L800C3154
/* B3A2F0 800C3150 00000000 */   nop   
.L800C3154:
/* B3A2F4 800C3154 16C50003 */  bne   $s6, $a1, .L800C3164
/* B3A2F8 800C3158 2406001F */   li    $a2, 31
/* B3A2FC 800C315C 10000001 */  b     .L800C3164
/* B3A300 800C3160 84621076 */   lh    $v0, 0x1076($v1)
.L800C3164:
/* B3A304 800C3164 54410005 */  bnel  $v0, $at, .L800C317C
/* B3A308 800C3168 8FD900A0 */   lw    $t9, 0xa0($fp)
/* B3A30C 800C316C 00002825 */  move  $a1, $zero
/* B3A310 800C3170 10000147 */  b     .L800C3690
/* B3A314 800C3174 00001825 */   move  $v1, $zero
/* B3A318 800C3178 8FD900A0 */  lw    $t9, 0xa0($fp)
.L800C317C:
/* B3A31C 800C317C 8FD8009C */  lw    $t8, 0x9c($fp)
/* B3A320 800C3180 8FCE0098 */  lw    $t6, 0x98($fp)
/* B3A324 800C3184 03348021 */  addu  $s0, $t9, $s4
/* B3A328 800C3188 03148821 */  addu  $s1, $t8, $s4
/* B3A32C 800C318C 01D49021 */  addu  $s2, $t6, $s4
/* B3A330 800C3190 2652FFFF */  addiu $s2, $s2, -1
/* B3A334 800C3194 2631FFFF */  addiu $s1, $s1, -1
/* B3A338 800C3198 16C50003 */  bne   $s6, $a1, .L800C31A8
/* B3A33C 800C319C 2610FFFF */   addiu $s0, $s0, -1
/* B3A340 800C31A0 10000002 */  b     .L800C31AC
/* B3A344 800C31A4 84621076 */   lh    $v0, 0x1076($v1)
.L800C31A8:
/* B3A348 800C31A8 00001025 */  move  $v0, $zero
.L800C31AC:
/* B3A34C 800C31AC 24010003 */  li    $at, 3
/* B3A350 800C31B0 1441006F */  bne   $v0, $at, .L800C3370
/* B3A354 800C31B4 3C048014 */   lui   $a0, %hi(D_80144C40) # $a0, 0x8014
/* B3A358 800C31B8 92060001 */  lbu   $a2, 1($s0)
/* B3A35C 800C31BC 92050000 */  lbu   $a1, ($s0)
/* B3A360 800C31C0 24844C40 */  addiu $a0, %lo(D_80144C40) # addiu $a0, $a0, 0x4c40
/* B3A364 800C31C4 00C5082A */  slt   $at, $a2, $a1
/* B3A368 800C31C8 54200010 */  bnezl $at, .L800C320C
/* B3A36C 800C31CC 92070002 */   lbu   $a3, 2($s0)
/* B3A370 800C31D0 92070002 */  lbu   $a3, 2($s0)
/* B3A374 800C31D4 00E6082A */  slt   $at, $a3, $a2
/* B3A378 800C31D8 54200004 */  bnezl $at, .L800C31EC
/* B3A37C 800C31DC 00A7082A */   slt   $at, $a1, $a3
/* B3A380 800C31E0 10000016 */  b     .L800C323C
/* B3A384 800C31E4 00C09825 */   move  $s3, $a2
/* B3A388 800C31E8 00A7082A */  slt   $at, $a1, $a3
.L800C31EC:
/* B3A38C 800C31EC 14200003 */  bnez  $at, .L800C31FC
/* B3A390 800C31F0 00E01825 */   move  $v1, $a3
/* B3A394 800C31F4 10000001 */  b     .L800C31FC
/* B3A398 800C31F8 00A01825 */   move  $v1, $a1
.L800C31FC:
/* B3A39C 800C31FC 00601025 */  move  $v0, $v1
/* B3A3A0 800C3200 1000000E */  b     .L800C323C
/* B3A3A4 800C3204 00409825 */   move  $s3, $v0
/* B3A3A8 800C3208 92070002 */  lbu   $a3, 2($s0)
.L800C320C:
/* B3A3AC 800C320C 00C7082A */  slt   $at, $a2, $a3
/* B3A3B0 800C3210 54200004 */  bnezl $at, .L800C3224
/* B3A3B4 800C3214 00E5082A */   slt   $at, $a3, $a1
/* B3A3B8 800C3218 10000007 */  b     .L800C3238
/* B3A3BC 800C321C 00C01025 */   move  $v0, $a2
/* B3A3C0 800C3220 00E5082A */  slt   $at, $a3, $a1
.L800C3224:
/* B3A3C4 800C3224 14200003 */  bnez  $at, .L800C3234
/* B3A3C8 800C3228 00E01825 */   move  $v1, $a3
/* B3A3CC 800C322C 10000001 */  b     .L800C3234
/* B3A3D0 800C3230 00A01825 */   move  $v1, $a1
.L800C3234:
/* B3A3D4 800C3234 00601025 */  move  $v0, $v1
.L800C3238:
/* B3A3D8 800C3238 00409825 */  move  $s3, $v0
.L800C323C:
/* B3A3DC 800C323C 922C0001 */  lbu   $t4, 1($s1)
/* B3A3E0 800C3240 922D0000 */  lbu   $t5, ($s1)
/* B3A3E4 800C3244 018D082A */  slt   $at, $t4, $t5
/* B3A3E8 800C3248 54200010 */  bnezl $at, .L800C328C
/* B3A3EC 800C324C 922B0002 */   lbu   $t3, 2($s1)
/* B3A3F0 800C3250 922B0002 */  lbu   $t3, 2($s1)
/* B3A3F4 800C3254 016C082A */  slt   $at, $t3, $t4
/* B3A3F8 800C3258 54200004 */  bnezl $at, .L800C326C
/* B3A3FC 800C325C 01AB082A */   slt   $at, $t5, $t3
/* B3A400 800C3260 10000016 */  b     .L800C32BC
/* B3A404 800C3264 0180F825 */   move  $ra, $t4
/* B3A408 800C3268 01AB082A */  slt   $at, $t5, $t3
.L800C326C:
/* B3A40C 800C326C 14200003 */  bnez  $at, .L800C327C
/* B3A410 800C3270 01601825 */   move  $v1, $t3
/* B3A414 800C3274 10000001 */  b     .L800C327C
/* B3A418 800C3278 01A01825 */   move  $v1, $t5
.L800C327C:
/* B3A41C 800C327C 00601025 */  move  $v0, $v1
/* B3A420 800C3280 1000000E */  b     .L800C32BC
/* B3A424 800C3284 0040F825 */   move  $ra, $v0
/* B3A428 800C3288 922B0002 */  lbu   $t3, 2($s1)
.L800C328C:
/* B3A42C 800C328C 018B082A */  slt   $at, $t4, $t3
/* B3A430 800C3290 54200004 */  bnezl $at, .L800C32A4
/* B3A434 800C3294 016D082A */   slt   $at, $t3, $t5
/* B3A438 800C3298 10000007 */  b     .L800C32B8
/* B3A43C 800C329C 01801025 */   move  $v0, $t4
/* B3A440 800C32A0 016D082A */  slt   $at, $t3, $t5
.L800C32A4:
/* B3A444 800C32A4 14200003 */  bnez  $at, .L800C32B4
/* B3A448 800C32A8 01601825 */   move  $v1, $t3
/* B3A44C 800C32AC 10000001 */  b     .L800C32B4
/* B3A450 800C32B0 01A01825 */   move  $v1, $t5
.L800C32B4:
/* B3A454 800C32B4 00601025 */  move  $v0, $v1
.L800C32B8:
/* B3A458 800C32B8 0040F825 */  move  $ra, $v0
.L800C32BC:
/* B3A45C 800C32BC 92490001 */  lbu   $t1, 1($s2)
/* B3A460 800C32C0 924A0000 */  lbu   $t2, ($s2)
/* B3A464 800C32C4 012A082A */  slt   $at, $t1, $t2
/* B3A468 800C32C8 54200010 */  bnezl $at, .L800C330C
/* B3A46C 800C32CC 92480002 */   lbu   $t0, 2($s2)
/* B3A470 800C32D0 92480002 */  lbu   $t0, 2($s2)
/* B3A474 800C32D4 0109082A */  slt   $at, $t0, $t1
/* B3A478 800C32D8 54200004 */  bnezl $at, .L800C32EC
/* B3A47C 800C32DC 0148082A */   slt   $at, $t2, $t0
/* B3A480 800C32E0 10000016 */  b     .L800C333C
/* B3A484 800C32E4 01201025 */   move  $v0, $t1
/* B3A488 800C32E8 0148082A */  slt   $at, $t2, $t0
.L800C32EC:
/* B3A48C 800C32EC 14200003 */  bnez  $at, .L800C32FC
/* B3A490 800C32F0 01001025 */   move  $v0, $t0
/* B3A494 800C32F4 10000001 */  b     .L800C32FC
/* B3A498 800C32F8 01401025 */   move  $v0, $t2
.L800C32FC:
/* B3A49C 800C32FC 00401825 */  move  $v1, $v0
/* B3A4A0 800C3300 1000000E */  b     .L800C333C
/* B3A4A4 800C3304 00601025 */   move  $v0, $v1
/* B3A4A8 800C3308 92480002 */  lbu   $t0, 2($s2)
.L800C330C:
/* B3A4AC 800C330C 0128082A */  slt   $at, $t1, $t0
/* B3A4B0 800C3310 54200004 */  bnezl $at, .L800C3324
/* B3A4B4 800C3314 010A082A */   slt   $at, $t0, $t2
/* B3A4B8 800C3318 10000007 */  b     .L800C3338
/* B3A4BC 800C331C 01201825 */   move  $v1, $t1
/* B3A4C0 800C3320 010A082A */  slt   $at, $t0, $t2
.L800C3324:
/* B3A4C4 800C3324 14200003 */  bnez  $at, .L800C3334
/* B3A4C8 800C3328 01001025 */   move  $v0, $t0
/* B3A4CC 800C332C 10000001 */  b     .L800C3334
/* B3A4D0 800C3330 01401025 */   move  $v0, $t2
.L800C3334:
/* B3A4D4 800C3334 00401825 */  move  $v1, $v0
.L800C3338:
/* B3A4D8 800C3338 00601025 */  move  $v0, $v1
.L800C333C:
/* B3A4DC 800C333C AFBF0020 */  sw    $ra, 0x20($sp)
/* B3A4E0 800C3340 AFB30010 */  sw    $s3, 0x10($sp)
/* B3A4E4 800C3344 AFAD0014 */  sw    $t5, 0x14($sp)
/* B3A4E8 800C3348 AFAC0018 */  sw    $t4, 0x18($sp)
/* B3A4EC 800C334C AFAB001C */  sw    $t3, 0x1c($sp)
/* B3A4F0 800C3350 AFAA0024 */  sw    $t2, 0x24($sp)
/* B3A4F4 800C3354 AFA90028 */  sw    $t1, 0x28($sp)
/* B3A4F8 800C3358 AFA8002C */  sw    $t0, 0x2c($sp)
/* B3A4FC 800C335C 0C00084C */  jal   osSyncPrintf
/* B3A500 800C3360 AFA20030 */   sw    $v0, 0x30($sp)
/* B3A504 800C3364 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B3A508 800C3368 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* B3A50C 800C336C 84651074 */  lh    $a1, 0x1074($v1)
.L800C3370:
/* B3A510 800C3370 16C50003 */  bne   $s6, $a1, .L800C3380
/* B3A514 800C3374 24010001 */   li    $at, 1
/* B3A518 800C3378 10000002 */  b     .L800C3384
/* B3A51C 800C337C 84621076 */   lh    $v0, 0x1076($v1)
.L800C3380:
/* B3A520 800C3380 00001025 */  move  $v0, $zero
.L800C3384:
/* B3A524 800C3384 54410063 */  bnel  $v0, $at, .L800C3514
/* B3A528 800C3388 92060001 */   lbu   $a2, 1($s0)
/* B3A52C 800C338C 92060001 */  lbu   $a2, 1($s0)
/* B3A530 800C3390 92050000 */  lbu   $a1, ($s0)
/* B3A534 800C3394 00C5082A */  slt   $at, $a2, $a1
/* B3A538 800C3398 54200010 */  bnezl $at, .L800C33DC
/* B3A53C 800C339C 92070002 */   lbu   $a3, 2($s0)
/* B3A540 800C33A0 92070002 */  lbu   $a3, 2($s0)
/* B3A544 800C33A4 00E6082A */  slt   $at, $a3, $a2
/* B3A548 800C33A8 54200004 */  bnezl $at, .L800C33BC
/* B3A54C 800C33AC 00A7082A */   slt   $at, $a1, $a3
/* B3A550 800C33B0 10000017 */  b     .L800C3410
/* B3A554 800C33B4 922C0001 */   lbu   $t4, 1($s1)
/* B3A558 800C33B8 00A7082A */  slt   $at, $a1, $a3
.L800C33BC:
/* B3A55C 800C33BC 14200003 */  bnez  $at, .L800C33CC
/* B3A560 800C33C0 00E01825 */   move  $v1, $a3
/* B3A564 800C33C4 10000001 */  b     .L800C33CC
/* B3A568 800C33C8 00A01825 */   move  $v1, $a1
.L800C33CC:
/* B3A56C 800C33CC 00601025 */  move  $v0, $v1
/* B3A570 800C33D0 1000000E */  b     .L800C340C
/* B3A574 800C33D4 00403025 */   move  $a2, $v0
/* B3A578 800C33D8 92070002 */  lbu   $a3, 2($s0)
.L800C33DC:
/* B3A57C 800C33DC 00C7082A */  slt   $at, $a2, $a3
/* B3A580 800C33E0 54200004 */  bnezl $at, .L800C33F4
/* B3A584 800C33E4 00E5082A */   slt   $at, $a3, $a1
/* B3A588 800C33E8 10000007 */  b     .L800C3408
/* B3A58C 800C33EC 00C01025 */   move  $v0, $a2
/* B3A590 800C33F0 00E5082A */  slt   $at, $a3, $a1
.L800C33F4:
/* B3A594 800C33F4 14200003 */  bnez  $at, .L800C3404
/* B3A598 800C33F8 00E01825 */   move  $v1, $a3
/* B3A59C 800C33FC 10000001 */  b     .L800C3404
/* B3A5A0 800C3400 00A01825 */   move  $v1, $a1
.L800C3404:
/* B3A5A4 800C3404 00601025 */  move  $v0, $v1
.L800C3408:
/* B3A5A8 800C3408 00403025 */  move  $a2, $v0
.L800C340C:
/* B3A5AC 800C340C 922C0001 */  lbu   $t4, 1($s1)
.L800C3410:
/* B3A5B0 800C3410 922D0000 */  lbu   $t5, ($s1)
/* B3A5B4 800C3414 018D082A */  slt   $at, $t4, $t5
/* B3A5B8 800C3418 54200010 */  bnezl $at, .L800C345C
/* B3A5BC 800C341C 922B0002 */   lbu   $t3, 2($s1)
/* B3A5C0 800C3420 922B0002 */  lbu   $t3, 2($s1)
/* B3A5C4 800C3424 016C082A */  slt   $at, $t3, $t4
/* B3A5C8 800C3428 54200004 */  bnezl $at, .L800C343C
/* B3A5CC 800C342C 01AB082A */   slt   $at, $t5, $t3
/* B3A5D0 800C3430 10000016 */  b     .L800C348C
/* B3A5D4 800C3434 01802825 */   move  $a1, $t4
/* B3A5D8 800C3438 01AB082A */  slt   $at, $t5, $t3
.L800C343C:
/* B3A5DC 800C343C 14200003 */  bnez  $at, .L800C344C
/* B3A5E0 800C3440 01601825 */   move  $v1, $t3
/* B3A5E4 800C3444 10000001 */  b     .L800C344C
/* B3A5E8 800C3448 01A01825 */   move  $v1, $t5
.L800C344C:
/* B3A5EC 800C344C 00601025 */  move  $v0, $v1
/* B3A5F0 800C3450 1000000E */  b     .L800C348C
/* B3A5F4 800C3454 00402825 */   move  $a1, $v0
/* B3A5F8 800C3458 922B0002 */  lbu   $t3, 2($s1)
.L800C345C:
/* B3A5FC 800C345C 018B082A */  slt   $at, $t4, $t3
/* B3A600 800C3460 54200004 */  bnezl $at, .L800C3474
/* B3A604 800C3464 016D082A */   slt   $at, $t3, $t5
/* B3A608 800C3468 10000007 */  b     .L800C3488
/* B3A60C 800C346C 01801025 */   move  $v0, $t4
/* B3A610 800C3470 016D082A */  slt   $at, $t3, $t5
.L800C3474:
/* B3A614 800C3474 14200003 */  bnez  $at, .L800C3484
/* B3A618 800C3478 01601825 */   move  $v1, $t3
/* B3A61C 800C347C 10000001 */  b     .L800C3484
/* B3A620 800C3480 01A01825 */   move  $v1, $t5
.L800C3484:
/* B3A624 800C3484 00601025 */  move  $v0, $v1
.L800C3488:
/* B3A628 800C3488 00402825 */  move  $a1, $v0
.L800C348C:
/* B3A62C 800C348C 92490001 */  lbu   $t1, 1($s2)
/* B3A630 800C3490 924A0000 */  lbu   $t2, ($s2)
/* B3A634 800C3494 012A082A */  slt   $at, $t1, $t2
/* B3A638 800C3498 54200010 */  bnezl $at, .L800C34DC
/* B3A63C 800C349C 92480002 */   lbu   $t0, 2($s2)
/* B3A640 800C34A0 92480002 */  lbu   $t0, 2($s2)
/* B3A644 800C34A4 0109082A */  slt   $at, $t0, $t1
/* B3A648 800C34A8 54200004 */  bnezl $at, .L800C34BC
/* B3A64C 800C34AC 0148082A */   slt   $at, $t2, $t0
/* B3A650 800C34B0 10000077 */  b     .L800C3690
/* B3A654 800C34B4 01201825 */   move  $v1, $t1
/* B3A658 800C34B8 0148082A */  slt   $at, $t2, $t0
.L800C34BC:
/* B3A65C 800C34BC 14200003 */  bnez  $at, .L800C34CC
/* B3A660 800C34C0 01001825 */   move  $v1, $t0
/* B3A664 800C34C4 10000001 */  b     .L800C34CC
/* B3A668 800C34C8 01401825 */   move  $v1, $t2
.L800C34CC:
/* B3A66C 800C34CC 00601025 */  move  $v0, $v1
/* B3A670 800C34D0 1000006F */  b     .L800C3690
/* B3A674 800C34D4 00401825 */   move  $v1, $v0
/* B3A678 800C34D8 92480002 */  lbu   $t0, 2($s2)
.L800C34DC:
/* B3A67C 800C34DC 0128082A */  slt   $at, $t1, $t0
/* B3A680 800C34E0 54200004 */  bnezl $at, .L800C34F4
/* B3A684 800C34E4 010A082A */   slt   $at, $t0, $t2
/* B3A688 800C34E8 10000069 */  b     .L800C3690
/* B3A68C 800C34EC 01201825 */   move  $v1, $t1
/* B3A690 800C34F0 010A082A */  slt   $at, $t0, $t2
.L800C34F4:
/* B3A694 800C34F4 14200003 */  bnez  $at, .L800C3504
/* B3A698 800C34F8 01001825 */   move  $v1, $t0
/* B3A69C 800C34FC 10000001 */  b     .L800C3504
/* B3A6A0 800C3500 01401825 */   move  $v1, $t2
.L800C3504:
/* B3A6A4 800C3504 00601025 */  move  $v0, $v1
/* B3A6A8 800C3508 10000061 */  b     .L800C3690
/* B3A6AC 800C350C 00401825 */   move  $v1, $v0
/* B3A6B0 800C3510 92060001 */  lbu   $a2, 1($s0)
.L800C3514:
/* B3A6B4 800C3514 92050000 */  lbu   $a1, ($s0)
/* B3A6B8 800C3518 00C5082A */  slt   $at, $a2, $a1
/* B3A6BC 800C351C 54200010 */  bnezl $at, .L800C3560
/* B3A6C0 800C3520 92070002 */   lbu   $a3, 2($s0)
/* B3A6C4 800C3524 92070002 */  lbu   $a3, 2($s0)
/* B3A6C8 800C3528 00E6082A */  slt   $at, $a3, $a2
/* B3A6CC 800C352C 54200004 */  bnezl $at, .L800C3540
/* B3A6D0 800C3530 00A7082A */   slt   $at, $a1, $a3
/* B3A6D4 800C3534 10000017 */  b     .L800C3594
/* B3A6D8 800C3538 922C0001 */   lbu   $t4, 1($s1)
/* B3A6DC 800C353C 00A7082A */  slt   $at, $a1, $a3
.L800C3540:
/* B3A6E0 800C3540 14200003 */  bnez  $at, .L800C3550
/* B3A6E4 800C3544 00E01825 */   move  $v1, $a3
/* B3A6E8 800C3548 10000001 */  b     .L800C3550
/* B3A6EC 800C354C 00A01825 */   move  $v1, $a1
.L800C3550:
/* B3A6F0 800C3550 00601025 */  move  $v0, $v1
/* B3A6F4 800C3554 1000000E */  b     .L800C3590
/* B3A6F8 800C3558 00403025 */   move  $a2, $v0
/* B3A6FC 800C355C 92070002 */  lbu   $a3, 2($s0)
.L800C3560:
/* B3A700 800C3560 00C7082A */  slt   $at, $a2, $a3
/* B3A704 800C3564 54200004 */  bnezl $at, .L800C3578
/* B3A708 800C3568 00E5082A */   slt   $at, $a3, $a1
/* B3A70C 800C356C 10000007 */  b     .L800C358C
/* B3A710 800C3570 00C01025 */   move  $v0, $a2
/* B3A714 800C3574 00E5082A */  slt   $at, $a3, $a1
.L800C3578:
/* B3A718 800C3578 14200003 */  bnez  $at, .L800C3588
/* B3A71C 800C357C 00E01825 */   move  $v1, $a3
/* B3A720 800C3580 10000001 */  b     .L800C3588
/* B3A724 800C3584 00A01825 */   move  $v1, $a1
.L800C3588:
/* B3A728 800C3588 00601025 */  move  $v0, $v1
.L800C358C:
/* B3A72C 800C358C 00403025 */  move  $a2, $v0
.L800C3590:
/* B3A730 800C3590 922C0001 */  lbu   $t4, 1($s1)
.L800C3594:
/* B3A734 800C3594 922D0000 */  lbu   $t5, ($s1)
/* B3A738 800C3598 018D082A */  slt   $at, $t4, $t5
/* B3A73C 800C359C 54200010 */  bnezl $at, .L800C35E0
/* B3A740 800C35A0 922B0002 */   lbu   $t3, 2($s1)
/* B3A744 800C35A4 922B0002 */  lbu   $t3, 2($s1)
/* B3A748 800C35A8 016C082A */  slt   $at, $t3, $t4
/* B3A74C 800C35AC 54200004 */  bnezl $at, .L800C35C0
/* B3A750 800C35B0 01AB082A */   slt   $at, $t5, $t3
/* B3A754 800C35B4 10000016 */  b     .L800C3610
/* B3A758 800C35B8 01802825 */   move  $a1, $t4
/* B3A75C 800C35BC 01AB082A */  slt   $at, $t5, $t3
.L800C35C0:
/* B3A760 800C35C0 14200003 */  bnez  $at, .L800C35D0
/* B3A764 800C35C4 01601825 */   move  $v1, $t3
/* B3A768 800C35C8 10000001 */  b     .L800C35D0
/* B3A76C 800C35CC 01A01825 */   move  $v1, $t5
.L800C35D0:
/* B3A770 800C35D0 00601025 */  move  $v0, $v1
/* B3A774 800C35D4 1000000E */  b     .L800C3610
/* B3A778 800C35D8 00402825 */   move  $a1, $v0
/* B3A77C 800C35DC 922B0002 */  lbu   $t3, 2($s1)
.L800C35E0:
/* B3A780 800C35E0 018B082A */  slt   $at, $t4, $t3
/* B3A784 800C35E4 54200004 */  bnezl $at, .L800C35F8
/* B3A788 800C35E8 016D082A */   slt   $at, $t3, $t5
/* B3A78C 800C35EC 10000007 */  b     .L800C360C
/* B3A790 800C35F0 01801025 */   move  $v0, $t4
/* B3A794 800C35F4 016D082A */  slt   $at, $t3, $t5
.L800C35F8:
/* B3A798 800C35F8 14200003 */  bnez  $at, .L800C3608
/* B3A79C 800C35FC 01601825 */   move  $v1, $t3
/* B3A7A0 800C3600 10000001 */  b     .L800C3608
/* B3A7A4 800C3604 01A01825 */   move  $v1, $t5
.L800C3608:
/* B3A7A8 800C3608 00601025 */  move  $v0, $v1
.L800C360C:
/* B3A7AC 800C360C 00402825 */  move  $a1, $v0
.L800C3610:
/* B3A7B0 800C3610 92490001 */  lbu   $t1, 1($s2)
/* B3A7B4 800C3614 924A0000 */  lbu   $t2, ($s2)
/* B3A7B8 800C3618 012A082A */  slt   $at, $t1, $t2
/* B3A7BC 800C361C 54200010 */  bnezl $at, .L800C3660
/* B3A7C0 800C3620 92480002 */   lbu   $t0, 2($s2)
/* B3A7C4 800C3624 92480002 */  lbu   $t0, 2($s2)
/* B3A7C8 800C3628 0109082A */  slt   $at, $t0, $t1
/* B3A7CC 800C362C 54200004 */  bnezl $at, .L800C3640
/* B3A7D0 800C3630 0148082A */   slt   $at, $t2, $t0
/* B3A7D4 800C3634 10000016 */  b     .L800C3690
/* B3A7D8 800C3638 01201825 */   move  $v1, $t1
/* B3A7DC 800C363C 0148082A */  slt   $at, $t2, $t0
.L800C3640:
/* B3A7E0 800C3640 14200003 */  bnez  $at, .L800C3650
/* B3A7E4 800C3644 01001825 */   move  $v1, $t0
/* B3A7E8 800C3648 10000001 */  b     .L800C3650
/* B3A7EC 800C364C 01401825 */   move  $v1, $t2
.L800C3650:
/* B3A7F0 800C3650 00601025 */  move  $v0, $v1
/* B3A7F4 800C3654 1000000E */  b     .L800C3690
/* B3A7F8 800C3658 00401825 */   move  $v1, $v0
/* B3A7FC 800C365C 92480002 */  lbu   $t0, 2($s2)
.L800C3660:
/* B3A800 800C3660 0128082A */  slt   $at, $t1, $t0
/* B3A804 800C3664 54200004 */  bnezl $at, .L800C3678
/* B3A808 800C3668 010A082A */   slt   $at, $t0, $t2
/* B3A80C 800C366C 10000007 */  b     .L800C368C
/* B3A810 800C3670 01201025 */   move  $v0, $t1
/* B3A814 800C3674 010A082A */  slt   $at, $t0, $t2
.L800C3678:
/* B3A818 800C3678 14200003 */  bnez  $at, .L800C3688
/* B3A81C 800C367C 01001825 */   move  $v1, $t0
/* B3A820 800C3680 10000001 */  b     .L800C3688
/* B3A824 800C3684 01401825 */   move  $v1, $t2
.L800C3688:
/* B3A828 800C3688 00601025 */  move  $v0, $v1
.L800C368C:
/* B3A82C 800C368C 00401825 */  move  $v1, $v0
.L800C3690:
/* B3A830 800C3690 93CE0078 */  lbu   $t6, 0x78($fp)
/* B3A834 800C3694 0006C0C0 */  sll   $t8, $a2, 3
/* B3A838 800C3698 31CFFF07 */  andi  $t7, $t6, 0xff07
/* B3A83C 800C369C 030FC825 */  or    $t9, $t8, $t7
/* B3A840 800C36A0 A3D90078 */  sb    $t9, 0x78($fp)
/* B3A844 800C36A4 97D90078 */  lhu   $t9, 0x78($fp)
/* B3A848 800C36A8 0005C180 */  sll   $t8, $a1, 6
/* B3A84C 800C36AC 330F07C0 */  andi  $t7, $t8, 0x7c0
/* B3A850 800C36B0 332EF83F */  andi  $t6, $t9, 0xf83f
/* B3A854 800C36B4 01EEC025 */  or    $t8, $t7, $t6
/* B3A858 800C36B8 A7D80078 */  sh    $t8, 0x78($fp)
/* B3A85C 800C36BC 93D80079 */  lbu   $t8, 0x79($fp)
/* B3A860 800C36C0 00037840 */  sll   $t7, $v1, 1
/* B3A864 800C36C4 31EE003E */  andi  $t6, $t7, 0x3e
/* B3A868 800C36C8 3319FFC1 */  andi  $t9, $t8, 0xffc1
/* B3A86C 800C36CC 01D97825 */  or    $t7, $t6, $t9
/* B3A870 800C36D0 01E07025 */  move  $t6, $t7
/* B3A874 800C36D4 A3CF0079 */  sb    $t7, 0x79($fp)
/* B3A878 800C36D8 35D90001 */  ori   $t9, $t6, 1
/* B3A87C 800C36DC A3D90079 */  sb    $t9, 0x79($fp)
/* B3A880 800C36E0 8EAF0000 */  lw    $t7, ($s5)
/* B3A884 800C36E4 02EF0019 */  multu $s7, $t7
/* B3A888 800C36E8 00002012 */  mflo  $a0
/* B3A88C 800C36EC 00000000 */  nop   
/* B3A890 800C36F0 00000000 */  nop   
/* B3A894 800C36F4 8EAE0014 */  lw    $t6, 0x14($s5)
.L800C36F8:
/* B3A898 800C36F8 0014C840 */  sll   $t9, $s4, 1
/* B3A89C 800C36FC 97D80078 */  lhu   $t8, 0x78($fp)
/* B3A8A0 800C3700 01D97821 */  addu  $t7, $t6, $t9
/* B3A8A4 800C3704 00047040 */  sll   $t6, $a0, 1
/* B3A8A8 800C3708 01EEC821 */  addu  $t9, $t7, $t6
/* B3A8AC 800C370C A7380000 */  sh    $t8, ($t9)
/* B3A8B0 800C3710 8EA50000 */  lw    $a1, ($s5)
/* B3A8B4 800C3714 24A3FFFF */  addiu $v1, $a1, -1
/* B3A8B8 800C3718 26940001 */  addiu $s4, $s4, 1
.L800C371C:
/* B3A8BC 800C371C 0283082A */  slt   $at, $s4, $v1
/* B3A8C0 800C3720 1420FE73 */  bnez  $at, .L800C30F0
/* B3A8C4 800C3724 00000000 */   nop   
.L800C3728:
/* B3A8C8 800C3728 8EAF0004 */  lw    $t7, 4($s5)
/* B3A8CC 800C372C 26F70001 */  addiu $s7, $s7, 1
/* B3A8D0 800C3730 02EF082A */  slt   $at, $s7, $t7
/* B3A8D4 800C3734 1420FE49 */  bnez  $at, .L800C305C
/* B3A8D8 800C3738 00000000 */   nop   
.L800C373C:
/* B3A8DC 800C373C 8FDF0074 */  lw    $ra, 0x74($fp)
/* B3A8E0 800C3740 03C0E825 */  move  $sp, $fp
/* B3A8E4 800C3744 8FD00050 */  lw    $s0, 0x50($fp)
/* B3A8E8 800C3748 8FD10054 */  lw    $s1, 0x54($fp)
/* B3A8EC 800C374C 8FD20058 */  lw    $s2, 0x58($fp)
/* B3A8F0 800C3750 8FD3005C */  lw    $s3, 0x5c($fp)
/* B3A8F4 800C3754 8FD40060 */  lw    $s4, 0x60($fp)
/* B3A8F8 800C3758 8FD50064 */  lw    $s5, 0x64($fp)
/* B3A8FC 800C375C 8FD60068 */  lw    $s6, 0x68($fp)
/* B3A900 800C3760 8FD7006C */  lw    $s7, 0x6c($fp)
/* B3A904 800C3764 8FDE0070 */  lw    $fp, 0x70($fp)
/* B3A908 800C3768 03E00008 */  jr    $ra
/* B3A90C 800C376C 27BD00B0 */   addiu $sp, $sp, 0xb0

glabel func_800C3770
/* B3A910 800C3770 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3A914 800C3774 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3A918 800C3778 AFB30020 */  sw    $s3, 0x20($sp)
/* B3A91C 800C377C AFB2001C */  sw    $s2, 0x1c($sp)
/* B3A920 800C3780 AFB10018 */  sw    $s1, 0x18($sp)
/* B3A924 800C3784 AFB00014 */  sw    $s0, 0x14($sp)
/* B3A928 800C3788 8C8E0018 */  lw    $t6, 0x18($a0)
/* B3A92C 800C378C 00809025 */  move  $s2, $a0
/* B3A930 800C3790 51C00032 */  beql  $t6, $zero, .L800C385C
/* B3A934 800C3794 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3A938 800C3798 8C8F0014 */  lw    $t7, 0x14($a0)
/* B3A93C 800C379C 51E0002F */  beql  $t7, $zero, .L800C385C
/* B3A940 800C37A0 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3A944 800C37A4 8C820004 */  lw    $v0, 4($a0)
/* B3A948 800C37A8 00008825 */  move  $s1, $zero
/* B3A94C 800C37AC 24130008 */  li    $s3, 8
/* B3A950 800C37B0 1840001C */  blez  $v0, .L800C3824
/* B3A954 800C37B4 00000000 */   nop   
/* B3A958 800C37B8 8C830000 */  lw    $v1, ($a0)
.L800C37BC:
/* B3A95C 800C37BC 18600015 */  blez  $v1, .L800C3814
/* B3A960 800C37C0 00008025 */   move  $s0, $zero
.L800C37C4:
/* B3A964 800C37C4 02230019 */  multu $s1, $v1
/* B3A968 800C37C8 8E580018 */  lw    $t8, 0x18($s2)
/* B3A96C 800C37CC 02402025 */  move  $a0, $s2
/* B3A970 800C37D0 02002825 */  move  $a1, $s0
/* B3A974 800C37D4 0310C821 */  addu  $t9, $t8, $s0
/* B3A978 800C37D8 00004012 */  mflo  $t0
/* B3A97C 800C37DC 03284821 */  addu  $t1, $t9, $t0
/* B3A980 800C37E0 91220000 */  lbu   $v0, ($t1)
/* B3A984 800C37E4 00021143 */  sra   $v0, $v0, 5
/* B3A988 800C37E8 24420001 */  addiu $v0, $v0, 1
/* B3A98C 800C37EC 50530005 */  beql  $v0, $s3, .L800C3804
/* B3A990 800C37F0 26100001 */   addiu $s0, $s0, 1
/* B3A994 800C37F4 0C030940 */  jal   func_800C2500
/* B3A998 800C37F8 02203025 */   move  $a2, $s1
/* B3A99C 800C37FC 8E430000 */  lw    $v1, ($s2)
/* B3A9A0 800C3800 26100001 */  addiu $s0, $s0, 1
.L800C3804:
/* B3A9A4 800C3804 0203082A */  slt   $at, $s0, $v1
/* B3A9A8 800C3808 1420FFEE */  bnez  $at, .L800C37C4
/* B3A9AC 800C380C 00000000 */   nop   
/* B3A9B0 800C3810 8E420004 */  lw    $v0, 4($s2)
.L800C3814:
/* B3A9B4 800C3814 26310001 */  addiu $s1, $s1, 1
/* B3A9B8 800C3818 0222082A */  slt   $at, $s1, $v0
/* B3A9BC 800C381C 1420FFE7 */  bnez  $at, .L800C37BC
/* B3A9C0 800C3820 00000000 */   nop   
.L800C3824:
/* B3A9C4 800C3824 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3A9C8 800C3828 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3A9CC 800C382C 2401000F */  li    $at, 15
/* B3A9D0 800C3830 00001825 */  move  $v1, $zero
/* B3A9D4 800C3834 844A1074 */  lh    $t2, 0x1074($v0)
/* B3A9D8 800C3838 15410003 */  bne   $t2, $at, .L800C3848
/* B3A9DC 800C383C 00000000 */   nop   
/* B3A9E0 800C3840 10000001 */  b     .L800C3848
/* B3A9E4 800C3844 84431076 */   lh    $v1, 0x1076($v0)
.L800C3848:
/* B3A9E8 800C3848 50600004 */  beql  $v1, $zero, .L800C385C
/* B3A9EC 800C384C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3A9F0 800C3850 0C030BF9 */  jal   func_800C2FE4
/* B3A9F4 800C3854 02402025 */   move  $a0, $s2
/* B3A9F8 800C3858 8FBF0024 */  lw    $ra, 0x24($sp)
.L800C385C:
/* B3A9FC 800C385C 8FB00014 */  lw    $s0, 0x14($sp)
/* B3AA00 800C3860 8FB10018 */  lw    $s1, 0x18($sp)
/* B3AA04 800C3864 8FB2001C */  lw    $s2, 0x1c($sp)
/* B3AA08 800C3868 8FB30020 */  lw    $s3, 0x20($sp)
/* B3AA0C 800C386C 03E00008 */  jr    $ra
/* B3AA10 800C3870 27BD0028 */   addiu $sp, $sp, 0x28
