.rdata
glabel D_8013E8D8
    .asciz "../z_player_lib.c"
    .balign 4

glabel D_8013E8EC
    .asciz "../z_player_lib.c"
    .balign 4

.text
glabel func_80091A24
/* B08BC4 80091A24 27BDFED0 */  addiu $sp, $sp, -0x130
/* B08BC8 80091A28 AFBF0034 */  sw    $ra, 0x34($sp)
/* B08BCC 80091A2C AFA40130 */  sw    $a0, 0x130($sp)
/* B08BD0 80091A30 AFA50134 */  sw    $a1, 0x134($sp)
/* B08BD4 80091A34 AFA60138 */  sw    $a2, 0x138($sp)
/* B08BD8 80091A38 AFA7013C */  sw    $a3, 0x13c($sp)
/* B08BDC 80091A3C 8C840000 */  lw    $a0, ($a0)
/* B08BE0 80091A40 0C031A73 */  jal   Graph_Alloc
/* B08BE4 80091A44 24050040 */   li    $a1, 64
/* B08BE8 80091A48 8FAF0130 */  lw    $t7, 0x130($sp)
/* B08BEC 80091A4C AFA2011C */  sw    $v0, 0x11c($sp)
/* B08BF0 80091A50 24050040 */  li    $a1, 64
/* B08BF4 80091A54 0C031A73 */  jal   Graph_Alloc
/* B08BF8 80091A58 8DE40000 */   lw    $a0, ($t7)
/* B08BFC 80091A5C 8FB80130 */  lw    $t8, 0x130($sp)
/* B08C00 80091A60 AFA20118 */  sw    $v0, 0x118($sp)
/* B08C04 80091A64 3C068014 */  lui   $a2, %hi(D_8013E8D8) # $a2, 0x8014
/* B08C08 80091A68 8F050000 */  lw    $a1, ($t8)
/* B08C0C 80091A6C 24C6E8D8 */  addiu $a2, %lo(D_8013E8D8) # addiu $a2, $a2, -0x1728
/* B08C10 80091A70 27A40104 */  addiu $a0, $sp, 0x104
/* B08C14 80091A74 24070C39 */  li    $a3, 3129
/* B08C18 80091A78 0C031AB1 */  jal   Graph_OpenDisps
/* B08C1C 80091A7C AFA50114 */   sw    $a1, 0x114($sp)
/* B08C20 80091A80 8FA30114 */  lw    $v1, 0x114($sp)
/* B08C24 80091A84 3C05DE00 */  lui   $a1, 0xde00
/* B08C28 80091A88 3C1FE700 */  lui   $ra, 0xe700
/* B08C2C 80091A8C 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08C30 80091A90 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B08C34 80091A94 44810000 */  mtc1  $at, $f0
/* B08C38 80091A98 AFA40128 */  sw    $a0, 0x128($sp)
/* B08C3C 80091A9C 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B08C40 80091AA0 24990008 */  addiu $t9, $a0, 8
/* B08C44 80091AA4 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08C48 80091AA8 AFA20124 */  sw    $v0, 0x124($sp)
/* B08C4C 80091AAC 8C6401BC */  lw    $a0, 0x1bc($v1)
/* B08C50 80091AB0 244E0008 */  addiu $t6, $v0, 8
/* B08C54 80091AB4 AC6E02D0 */  sw    $t6, 0x2d0($v1)
/* B08C58 80091AB8 248F0008 */  addiu $t7, $a0, 8
/* B08C5C 80091ABC AC6F01BC */  sw    $t7, 0x1bc($v1)
/* B08C60 80091AC0 AC850000 */  sw    $a1, ($a0)
/* B08C64 80091AC4 8C7802C0 */  lw    $t8, 0x2c0($v1)
/* B08C68 80091AC8 3C01FF10 */  lui   $at, 0xff10
/* B08C6C 80091ACC 3C08E300 */  lui   $t0, (0xE3000A01 >> 16) # lui $t0, 0xe300
/* B08C70 80091AD0 AC980004 */  sw    $t8, 4($a0)
/* B08C74 80091AD4 8C6401BC */  lw    $a0, 0x1bc($v1)
/* B08C78 80091AD8 3C18DB06 */  lui   $t8, 0xdb06
/* B08C7C 80091ADC 35080A01 */  ori   $t0, (0xE3000A01 & 0xFFFF) # ori $t0, $t0, 0xa01
/* B08C80 80091AE0 24990008 */  addiu $t9, $a0, 8
/* B08C84 80091AE4 AC7901BC */  sw    $t9, 0x1bc($v1)
/* B08C88 80091AE8 AC850000 */  sw    $a1, ($a0)
/* B08C8C 80091AEC 8C6E02D0 */  lw    $t6, 0x2d0($v1)
/* B08C90 80091AF0 3C05D900 */  lui   $a1, 0xd900
/* B08C94 80091AF4 3C090030 */  lui   $t1, 0x30
/* B08C98 80091AF8 AC8E0004 */  sw    $t6, 4($a0)
/* B08C9C 80091AFC 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08CA0 80091B00 3C0AE200 */  lui   $t2, (0xE200001C >> 16) # lui $t2, 0xe200
/* B08CA4 80091B04 354A001C */  ori   $t2, (0xE200001C & 0xFFFF) # ori $t2, $t2, 0x1c
/* B08CA8 80091B08 248F0008 */  addiu $t7, $a0, 8
/* B08CAC 80091B0C AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08CB0 80091B10 AC800004 */  sw    $zero, 4($a0)
/* B08CB4 80091B14 AC980000 */  sw    $t8, ($a0)
/* B08CB8 80091B18 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08CBC 80091B1C 3C18D700 */  lui   $t8, 0xd700
/* B08CC0 80091B20 3C0BF700 */  lui   $t3, 0xf700
/* B08CC4 80091B24 24990008 */  addiu $t9, $a0, 8
/* B08CC8 80091B28 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08CCC 80091B2C AC800004 */  sw    $zero, 4($a0)
/* B08CD0 80091B30 AC9F0000 */  sw    $ra, ($a0)
/* B08CD4 80091B34 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08CD8 80091B38 2419FFFF */  li    $t9, -1
/* B08CDC 80091B3C 248E0008 */  addiu $t6, $a0, 8
/* B08CE0 80091B40 AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* B08CE4 80091B44 AC800004 */  sw    $zero, 4($a0)
/* B08CE8 80091B48 AC850000 */  sw    $a1, ($a0)
/* B08CEC 80091B4C 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08CF0 80091B50 248F0008 */  addiu $t7, $a0, 8
/* B08CF4 80091B54 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08CF8 80091B58 AC990004 */  sw    $t9, 4($a0)
/* B08CFC 80091B5C AC980000 */  sw    $t8, ($a0)
/* B08D00 80091B60 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08D04 80091B64 3C18FFFE */  lui   $t8, (0xFFFE793C >> 16) # lui $t8, 0xfffe
/* B08D08 80091B68 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* B08D0C 80091B6C 248E0008 */  addiu $t6, $a0, 8
/* B08D10 80091B70 AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* B08D14 80091B74 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* B08D18 80091B78 3718793C */  ori   $t8, (0xFFFE793C & 0xFFFF) # ori $t8, $t8, 0x793c
/* B08D1C 80091B7C AC980004 */  sw    $t8, 4($a0)
/* B08D20 80091B80 AC8F0000 */  sw    $t7, ($a0)
/* B08D24 80091B84 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08D28 80091B88 3C0EEF38 */  lui   $t6, (0xEF382C30 >> 16) # lui $t6, 0xef38
/* B08D2C 80091B8C 35CE2C30 */  ori   $t6, (0xEF382C30 & 0xFFFF) # ori $t6, $t6, 0x2c30
/* B08D30 80091B90 24990008 */  addiu $t9, $a0, 8
/* B08D34 80091B94 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08D38 80091B98 AC800004 */  sw    $zero, 4($a0)
/* B08D3C 80091B9C AC8E0000 */  sw    $t6, ($a0)
/* B08D40 80091BA0 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08D44 80091BA4 3C180022 */  lui   $t8, (0x00220405 >> 16) # lui $t8, 0x22
/* B08D48 80091BA8 37180405 */  ori   $t8, (0x00220405 & 0xFFFF) # ori $t8, $t8, 0x405
/* B08D4C 80091BAC 248F0008 */  addiu $t7, $a0, 8
/* B08D50 80091BB0 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08D54 80091BB4 AC980004 */  sw    $t8, 4($a0)
/* B08D58 80091BB8 AC850000 */  sw    $a1, ($a0)
/* B08D5C 80091BBC 8FAC015C */  lw    $t4, 0x15c($sp)
/* B08D60 80091BC0 8FAD0160 */  lw    $t5, 0x160($sp)
/* B08D64 80091BC4 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08D68 80091BC8 448C2000 */  mtc1  $t4, $f4
/* B08D6C 80091BCC 448D3000 */  mtc1  $t5, $f6
/* B08D70 80091BD0 24990008 */  addiu $t9, $a0, 8
/* B08D74 80091BD4 468020A0 */  cvt.s.w $f2, $f4
/* B08D78 80091BD8 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08D7C 80091BDC 3C0EED00 */  lui   $t6, 0xed00
/* B08D80 80091BE0 AC8E0000 */  sw    $t6, ($a0)
/* B08D84 80091BE4 24050001 */  li    $a1, 1
/* B08D88 80091BE8 46803320 */  cvt.s.w $f12, $f6
/* B08D8C 80091BEC 46001202 */  mul.s $f8, $f2, $f0
/* B08D90 80091BF0 000C1040 */  sll   $v0, $t4, 1
/* B08D94 80091BF4 46006402 */  mul.s $f16, $f12, $f0
/* B08D98 80091BF8 4600428D */  trunc.w.s $f10, $f8
/* B08D9C 80091BFC 4600848D */  trunc.w.s $f18, $f16
/* B08DA0 80091C00 44185000 */  mfc1  $t8, $f10
/* B08DA4 80091C04 460C1103 */  div.s $f4, $f2, $f12
/* B08DA8 80091C08 33190FFF */  andi  $t9, $t8, 0xfff
/* B08DAC 80091C0C 44189000 */  mfc1  $t8, $f18
/* B08DB0 80091C10 00197300 */  sll   $t6, $t9, 0xc
/* B08DB4 80091C14 33190FFF */  andi  $t9, $t8, 0xfff
/* B08DB8 80091C18 01D97825 */  or    $t7, $t6, $t9
/* B08DBC 80091C1C AC8F0004 */  sw    $t7, 4($a0)
/* B08DC0 80091C20 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08DC4 80091C24 3C0EDB04 */  lui   $t6, (0xDB040004 >> 16) # lui $t6, 0xdb04
/* B08DC8 80091C28 35CE0004 */  ori   $t6, (0xDB040004 & 0xFFFF) # ori $t6, $t6, 4
/* B08DCC 80091C2C 24980008 */  addiu $t8, $a0, 8
/* B08DD0 80091C30 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B08DD4 80091C34 AC850004 */  sw    $a1, 4($a0)
/* B08DD8 80091C38 AC8E0000 */  sw    $t6, ($a0)
/* B08DDC 80091C3C 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08DE0 80091C40 3C0FDB04 */  lui   $t7, (0xDB04000C >> 16) # lui $t7, 0xdb04
/* B08DE4 80091C44 35EF000C */  ori   $t7, (0xDB04000C & 0xFFFF) # ori $t7, $t7, 0xc
/* B08DE8 80091C48 24990008 */  addiu $t9, $a0, 8
/* B08DEC 80091C4C AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08DF0 80091C50 AC850004 */  sw    $a1, 4($a0)
/* B08DF4 80091C54 AC8F0000 */  sw    $t7, ($a0)
/* B08DF8 80091C58 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08DFC 80091C5C 3C0EDB04 */  lui   $t6, (0xDB040014 >> 16) # lui $t6, 0xdb04
/* B08E00 80091C60 35CE0014 */  ori   $t6, (0xDB040014 & 0xFFFF) # ori $t6, $t6, 0x14
/* B08E04 80091C64 24980008 */  addiu $t8, $a0, 8
/* B08E08 80091C68 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B08E0C 80091C6C 3405FFFF */  li    $a1, 65535
/* B08E10 80091C70 AC850004 */  sw    $a1, 4($a0)
/* B08E14 80091C74 AC8E0000 */  sw    $t6, ($a0)
/* B08E18 80091C78 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08E1C 80091C7C 3C0FDB04 */  lui   $t7, (0xDB04001C >> 16) # lui $t7, 0xdb04
/* B08E20 80091C80 35EF001C */  ori   $t7, (0xDB04001C & 0xFFFF) # ori $t7, $t7, 0x1c
/* B08E24 80091C84 24990008 */  addiu $t9, $a0, 8
/* B08E28 80091C88 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08E2C 80091C8C AC850004 */  sw    $a1, 4($a0)
/* B08E30 80091C90 AC8F0000 */  sw    $t7, ($a0)
/* B08E34 80091C94 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08E38 80091C98 2585FFFF */  addiu $a1, $t4, -1
/* B08E3C 80091C9C 30A60FFF */  andi  $a2, $a1, 0xfff
/* B08E40 80091CA0 24980008 */  addiu $t8, $a0, 8
/* B08E44 80091CA4 00C13025 */  or    $a2, $a2, $at
/* B08E48 80091CA8 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B08E4C 80091CAC AC860000 */  sw    $a2, ($a0)
/* B08E50 80091CB0 8FAE0174 */  lw    $t6, 0x174($sp)
/* B08E54 80091CB4 3C01F600 */  lui   $at, 0xf600
/* B08E58 80091CB8 AC8E0004 */  sw    $t6, 4($a0)
/* B08E5C 80091CBC 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08E60 80091CC0 3C0EFFFC */  lui   $t6, (0xFFFCFFFC >> 16) # lui $t6, 0xfffc
/* B08E64 80091CC4 35CEFFFC */  ori   $t6, (0xFFFCFFFC & 0xFFFF) # ori $t6, $t6, 0xfffc
/* B08E68 80091CC8 24990008 */  addiu $t9, $a0, 8
/* B08E6C 80091CCC AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08E70 80091CD0 AC890004 */  sw    $t1, 4($a0)
/* B08E74 80091CD4 AC880000 */  sw    $t0, ($a0)
/* B08E78 80091CD8 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08E7C 80091CDC 248F0008 */  addiu $t7, $a0, 8
/* B08E80 80091CE0 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08E84 80091CE4 AC800004 */  sw    $zero, 4($a0)
/* B08E88 80091CE8 AC8A0000 */  sw    $t2, ($a0)
/* B08E8C 80091CEC 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08E90 80091CF0 30AF03FF */  andi  $t7, $a1, 0x3ff
/* B08E94 80091CF4 3C058012 */  lui   $a1, %hi(D_80126200) # $a1, 0x8012
/* B08E98 80091CF8 24980008 */  addiu $t8, $a0, 8
/* B08E9C 80091CFC AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B08EA0 80091D00 AC8E0004 */  sw    $t6, 4($a0)
/* B08EA4 80091D04 AC8B0000 */  sw    $t3, ($a0)
/* B08EA8 80091D08 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08EAC 80091D0C 000FC380 */  sll   $t8, $t7, 0xe
/* B08EB0 80091D10 03017025 */  or    $t6, $t8, $at
/* B08EB4 80091D14 24990008 */  addiu $t9, $a0, 8
/* B08EB8 80091D18 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08EBC 80091D1C 25B9FFFF */  addiu $t9, $t5, -1
/* B08EC0 80091D20 332F03FF */  andi  $t7, $t9, 0x3ff
/* B08EC4 80091D24 000FC080 */  sll   $t8, $t7, 2
/* B08EC8 80091D28 01D83825 */  or    $a3, $t6, $t8
/* B08ECC 80091D2C AC870000 */  sw    $a3, ($a0)
/* B08ED0 80091D30 AC800004 */  sw    $zero, 4($a0)
/* B08ED4 80091D34 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08ED8 80091D38 24A56200 */  addiu $a1, %lo(D_80126200) # addiu $a1, $a1, 0x6200
/* B08EDC 80091D3C 3C014120 */  li    $at, 0x41200000 # 0.000000
/* B08EE0 80091D40 24990008 */  addiu $t9, $a0, 8
/* B08EE4 80091D44 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08EE8 80091D48 AC800004 */  sw    $zero, 4($a0)
/* B08EEC 80091D4C AC9F0000 */  sw    $ra, ($a0)
/* B08EF0 80091D50 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08EF4 80091D54 44813000 */  mtc1  $at, $f6
/* B08EF8 80091D58 3C01457A */  li    $at, 0x457A0000 # 0.000000
/* B08EFC 80091D5C 248F0008 */  addiu $t7, $a0, 8
/* B08F00 80091D60 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08F04 80091D64 AC860000 */  sw    $a2, ($a0)
/* B08F08 80091D68 8FAE0170 */  lw    $t6, 0x170($sp)
/* B08F0C 80091D6C 44814000 */  mtc1  $at, $f8
/* B08F10 80091D70 3C013F80 */  lui   $at, 0x3f80
/* B08F14 80091D74 AC8E0004 */  sw    $t6, 4($a0)
/* B08F18 80091D78 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08F1C 80091D7C 3C0E0001 */  li    $t6, 0x00010000 # 0.000000
/* B08F20 80091D80 35CE0001 */  ori   $t6, (0x00010001 & 0xFFFF) # ori $t6, $t6, 1
/* B08F24 80091D84 24980008 */  addiu $t8, $a0, 8
/* B08F28 80091D88 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B08F2C 80091D8C AC890004 */  sw    $t1, 4($a0)
/* B08F30 80091D90 AC880000 */  sw    $t0, ($a0)
/* B08F34 80091D94 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08F38 80091D98 44815000 */  mtc1  $at, $f10
/* B08F3C 80091D9C 24990008 */  addiu $t9, $a0, 8
/* B08F40 80091DA0 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08F44 80091DA4 AC800004 */  sw    $zero, 4($a0)
/* B08F48 80091DA8 AC8A0000 */  sw    $t2, ($a0)
/* B08F4C 80091DAC 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08F50 80091DB0 248F0008 */  addiu $t7, $a0, 8
/* B08F54 80091DB4 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08F58 80091DB8 AC8E0004 */  sw    $t6, 4($a0)
/* B08F5C 80091DBC AC8B0000 */  sw    $t3, ($a0)
/* B08F60 80091DC0 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08F64 80091DC4 3C0EFE00 */  lui   $t6, 0xfe00
/* B08F68 80091DC8 24980008 */  addiu $t8, $a0, 8
/* B08F6C 80091DCC AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B08F70 80091DD0 AC800004 */  sw    $zero, 4($a0)
/* B08F74 80091DD4 AC870000 */  sw    $a3, ($a0)
/* B08F78 80091DD8 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08F7C 80091DDC 44072000 */  mfc1  $a3, $f4
/* B08F80 80091DE0 24990008 */  addiu $t9, $a0, 8
/* B08F84 80091DE4 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08F88 80091DE8 AC800004 */  sw    $zero, 4($a0)
/* B08F8C 80091DEC AC9F0000 */  sw    $ra, ($a0)
/* B08F90 80091DF0 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08F94 80091DF4 248F0008 */  addiu $t7, $a0, 8
/* B08F98 80091DF8 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B08F9C 80091DFC AC8E0000 */  sw    $t6, ($a0)
/* B08FA0 80091E00 8FB80174 */  lw    $t8, 0x174($sp)
/* B08FA4 80091E04 3C0FDC08 */  lui   $t7, (0xDC080008 >> 16) # lui $t7, 0xdc08
/* B08FA8 80091E08 35EF0008 */  ori   $t7, (0xDC080008 & 0xFFFF) # ori $t7, $t7, 8
/* B08FAC 80091E0C AC980004 */  sw    $t8, 4($a0)
/* B08FB0 80091E10 000D2040 */  sll   $a0, $t5, 1
/* B08FB4 80091E14 A4A20000 */  sh    $v0, ($a1)
/* B08FB8 80091E18 A4A20008 */  sh    $v0, 8($a1)
/* B08FBC 80091E1C A4A4000A */  sh    $a0, 0xa($a1)
/* B08FC0 80091E20 A4A40002 */  sh    $a0, 2($a1)
/* B08FC4 80091E24 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B08FC8 80091E28 24990008 */  addiu $t9, $a0, 8
/* B08FCC 80091E2C AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B08FD0 80091E30 AC850004 */  sw    $a1, 4($a0)
/* B08FD4 80091E34 AC8F0000 */  sw    $t7, ($a0)
/* B08FD8 80091E38 8FA6016C */  lw    $a2, 0x16c($sp)
/* B08FDC 80091E3C 8FA4011C */  lw    $a0, 0x11c($sp)
/* B08FE0 80091E40 27A50122 */  addiu $a1, $sp, 0x122
/* B08FE4 80091E44 AFA30114 */  sw    $v1, 0x114($sp)
/* B08FE8 80091E48 E7A60010 */  swc1  $f6, 0x10($sp)
/* B08FEC 80091E4C E7A80014 */  swc1  $f8, 0x14($sp)
/* B08FF0 80091E50 0C0404C0 */  jal   guPerspective
/* B08FF4 80091E54 E7AA0018 */   swc1  $f10, 0x18($sp)
/* B08FF8 80091E58 8FA30114 */  lw    $v1, 0x114($sp)
/* B08FFC 80091E5C 3C18DB0E */  li    $t8, 0xDB0E0000 # 0.000000
/* B09000 80091E60 44800000 */  mtc1  $zero, $f0
/* B09004 80091E64 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B09008 80091E68 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B0900C 80091E6C 44813000 */  mtc1  $at, $f6
/* B09010 80091E70 248E0008 */  addiu $t6, $a0, 8
/* B09014 80091E74 AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* B09018 80091E78 AC980000 */  sw    $t8, ($a0)
/* B0901C 80091E7C 97B90122 */  lhu   $t9, 0x122($sp)
/* B09020 80091E80 3C0EDA38 */  lui   $t6, (0xDA380007 >> 16) # lui $t6, 0xda38
/* B09024 80091E84 35CE0007 */  ori   $t6, (0xDA380007 & 0xFFFF) # ori $t6, $t6, 7
/* B09028 80091E88 AC990004 */  sw    $t9, 4($a0)
/* B0902C 80091E8C 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B09030 80091E90 248F0008 */  addiu $t7, $a0, 8
/* B09034 80091E94 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B09038 80091E98 AC8E0000 */  sw    $t6, ($a0)
/* B0903C 80091E9C 8FB8011C */  lw    $t8, 0x11c($sp)
/* B09040 80091EA0 AC980004 */  sw    $t8, 4($a0)
/* B09044 80091EA4 8FA80168 */  lw    $t0, 0x168($sp)
/* B09048 80091EA8 8FA20164 */  lw    $v0, 0x164($sp)
/* B0904C 80091EAC 8FA40118 */  lw    $a0, 0x118($sp)
/* B09050 80091EB0 C5100000 */  lwc1  $f16, ($t0)
/* B09054 80091EB4 8C450000 */  lw    $a1, ($v0)
/* B09058 80091EB8 8C460004 */  lw    $a2, 4($v0)
/* B0905C 80091EBC 8C470008 */  lw    $a3, 8($v0)
/* B09060 80091EC0 E7B00010 */  swc1  $f16, 0x10($sp)
/* B09064 80091EC4 C5120004 */  lwc1  $f18, 4($t0)
/* B09068 80091EC8 E7B20014 */  swc1  $f18, 0x14($sp)
/* B0906C 80091ECC C5040008 */  lwc1  $f4, 8($t0)
/* B09070 80091ED0 AFA30114 */  sw    $v1, 0x114($sp)
/* B09074 80091ED4 E7A00024 */  swc1  $f0, 0x24($sp)
/* B09078 80091ED8 E7A0001C */  swc1  $f0, 0x1c($sp)
/* B0907C 80091EDC E7A60020 */  swc1  $f6, 0x20($sp)
/* B09080 80091EE0 0C04078D */  jal   guLookAtReflect
/* B09084 80091EE4 E7A40018 */   swc1  $f4, 0x18($sp)
/* B09088 80091EE8 8FA30114 */  lw    $v1, 0x114($sp)
/* B0908C 80091EEC 3C0FDA38 */  lui   $t7, (0xDA380005 >> 16) # lui $t7, 0xda38
/* B09090 80091EF0 35EF0005 */  ori   $t7, (0xDA380005 & 0xFFFF) # ori $t7, $t7, 5
/* B09094 80091EF4 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B09098 80091EF8 24990008 */  addiu $t9, $a0, 8
/* B0909C 80091EFC AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B090A0 80091F00 AC8F0000 */  sw    $t7, ($a0)
/* B090A4 80091F04 8FAE0118 */  lw    $t6, 0x118($sp)
/* B090A8 80091F08 AC8E0004 */  sw    $t6, 4($a0)
/* B090AC 80091F0C 8FB8014C */  lw    $t8, 0x14c($sp)
/* B090B0 80091F10 8FB90154 */  lw    $t9, 0x154($sp)
/* B090B4 80091F14 8FA20140 */  lw    $v0, 0x140($sp)
/* B090B8 80091F18 A3B8012C */  sb    $t8, 0x12c($sp)
/* B090BC 80091F1C A3B9012D */  sb    $t9, 0x12d($sp)
/* B090C0 80091F20 8C460008 */  lw    $a2, 8($v0)
/* B090C4 80091F24 C44E0004 */  lwc1  $f14, 4($v0)
/* B090C8 80091F28 C44C0000 */  lwc1  $f12, ($v0)
/* B090CC 80091F2C 8FA70144 */  lw    $a3, 0x144($sp)
/* B090D0 80091F30 0C0345A5 */  jal   func_800D1694
/* B090D4 80091F34 AFA30114 */   sw    $v1, 0x114($sp)
/* B090D8 80091F38 C7AC0148 */  lwc1  $f12, 0x148($sp)
/* B090DC 80091F3C 24070001 */  li    $a3, 1
/* B090E0 80091F40 44066000 */  mfc1  $a2, $f12
/* B090E4 80091F44 0C0342A3 */  jal   Matrix_Scale
/* B090E8 80091F48 46006386 */   mov.s $f14, $f12
/* B090EC 80091F4C 8FA30114 */  lw    $v1, 0x114($sp)
/* B090F0 80091F50 3C0EDB06 */  lui   $t6, (0xDB060010 >> 16) # lui $t6, 0xdb06
/* B090F4 80091F54 35CE0010 */  ori   $t6, (0xDB060010 & 0xFFFF) # ori $t6, $t6, 0x10
/* B090F8 80091F58 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B090FC 80091F5C 248F0008 */  addiu $t7, $a0, 8
/* B09100 80091F60 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B09104 80091F64 AC8E0000 */  sw    $t6, ($a0)
/* B09108 80091F68 8FB80134 */  lw    $t8, 0x134($sp)
/* B0910C 80091F6C 3C0FDB06 */  lui   $t7, (0xDB060018 >> 16) # lui $t7, 0xdb06
/* B09110 80091F70 35EF0018 */  ori   $t7, (0xDB060018 & 0xFFFF) # ori $t7, $t7, 0x18
/* B09114 80091F74 AC980004 */  sw    $t8, 4($a0)
/* B09118 80091F78 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B0911C 80091F7C 24990008 */  addiu $t9, $a0, 8
/* B09120 80091F80 AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B09124 80091F84 AC8F0000 */  sw    $t7, ($a0)
/* B09128 80091F88 8FAE0138 */  lw    $t6, 0x138($sp)
/* B0912C 80091F8C 240F0018 */  li    $t7, 24
/* B09130 80091F90 3C19DB02 */  lui   $t9, 0xdb02
/* B09134 80091F94 AC8E0004 */  sw    $t6, 4($a0)
/* B09138 80091F98 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B0913C 80091F9C 24980008 */  addiu $t8, $a0, 8
/* B09140 80091FA0 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B09144 80091FA4 AC8F0004 */  sw    $t7, 4($a0)
/* B09148 80091FA8 AC990000 */  sw    $t9, ($a0)
/* B0914C 80091FAC 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B09150 80091FB0 3C198012 */  lui   $t9, %hi(D_80126218) # $t9, 0x8012
/* B09154 80091FB4 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* B09158 80091FB8 248E0008 */  addiu $t6, $a0, 8
/* B0915C 80091FBC AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* B09160 80091FC0 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* B09164 80091FC4 27396218 */  addiu $t9, %lo(D_80126218) # addiu $t9, $t9, 0x6218
/* B09168 80091FC8 AC990004 */  sw    $t9, 4($a0)
/* B0916C 80091FCC AC980000 */  sw    $t8, ($a0)
/* B09170 80091FD0 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B09174 80091FD4 3C188012 */  lui   $t8, %hi(D_80126210) # $t8, 0x8012
/* B09178 80091FD8 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* B0917C 80091FDC 248F0008 */  addiu $t7, $a0, 8
/* B09180 80091FE0 AC6F02C0 */  sw    $t7, 0x2c0($v1)
/* B09184 80091FE4 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* B09188 80091FE8 27186210 */  addiu $t8, %lo(D_80126210) # addiu $t8, $t8, 0x6210
/* B0918C 80091FEC AC980004 */  sw    $t8, 4($a0)
/* B09190 80091FF0 AC8E0000 */  sw    $t6, ($a0)
/* B09194 80091FF4 8FA40130 */  lw    $a0, 0x130($sp)
/* B09198 80091FF8 0C024F20 */  jal   func_80093C80
/* B0919C 80091FFC AFA30114 */   sw    $v1, 0x114($sp)
/* B091A0 80092000 8FA30114 */  lw    $v1, 0x114($sp)
/* B091A4 80092004 241903E5 */  li    $t9, 997
/* B091A8 80092008 240F03E8 */  li    $t7, 1000
/* B091AC 8009200C 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B091B0 80092010 AFAF0018 */  sw    $t7, 0x18($sp)
/* B091B4 80092014 AFB90014 */  sw    $t9, 0x14($sp)
/* B091B8 80092018 AFA00010 */  sw    $zero, 0x10($sp)
/* B091BC 8009201C 248E0008 */  addiu $t6, $a0, 8
/* B091C0 80092020 00002825 */  move  $a1, $zero
/* B091C4 80092024 00003025 */  move  $a2, $zero
/* B091C8 80092028 00003825 */  move  $a3, $zero
/* B091CC 8009202C 0C024DC2 */  jal   Gfx_SetFog2
/* B091D0 80092030 AC6E02C0 */   sw    $t6, 0x2c0($v1)
/* B091D4 80092034 8FA30114 */  lw    $v1, 0x114($sp)
/* B091D8 80092038 8FA80130 */  lw    $t0, 0x130($sp)
/* B091DC 8009203C 3C068012 */  lui   $a2, %hi(D_80126228) # $a2, 0x8012
/* B091E0 80092040 AC6202C0 */  sw    $v0, 0x2c0($v1)
/* B091E4 80092044 8FA40140 */  lw    $a0, 0x140($sp)
/* B091E8 80092048 24C66228 */  addiu $a2, %lo(D_80126228) # addiu $a2, $a2, 0x6228
/* B091EC 8009204C 8D070000 */  lw    $a3, ($t0)
/* B091F0 80092050 0C00BAAF */  jal   func_8002EABC
/* B091F4 80092054 250500E0 */   addiu $a1, $t0, 0xe0
/* B091F8 80092058 8FA30114 */  lw    $v1, 0x114($sp)
/* B091FC 8009205C 3C19DB06 */  lui   $t9, (0xDB060030 >> 16) # lui $t9, 0xdb06
/* B09200 80092060 3C0F8012 */  lui   $t7, %hi(D_80125F98) # $t7, 0x8012
/* B09204 80092064 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B09208 80092068 25EF5F98 */  addiu $t7, %lo(D_80125F98) # addiu $t7, $t7, 0x5f98
/* B0920C 8009206C 37390030 */  ori   $t9, (0xDB060030 & 0xFFFF) # ori $t9, $t9, 0x30
/* B09210 80092070 24980008 */  addiu $t8, $a0, 8
/* B09214 80092074 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B09218 80092078 AC8F0004 */  sw    $t7, 4($a0)
/* B0921C 8009207C AC990000 */  sw    $t9, ($a0)
/* B09220 80092080 8FA2013C */  lw    $v0, 0x13c($sp)
/* B09224 80092084 8FB80158 */  lw    $t8, 0x158($sp)
/* B09228 80092088 8FAE0150 */  lw    $t6, 0x150($sp)
/* B0922C 8009208C 8C450004 */  lw    $a1, 4($v0)
/* B09230 80092090 8C460020 */  lw    $a2, 0x20($v0)
/* B09234 80092094 90470002 */  lbu   $a3, 2($v0)
/* B09238 80092098 3C198009 */  lui   $t9, %hi(func_80091880) # $t9, 0x8009
/* B0923C 8009209C 27391880 */  addiu $t9, %lo(func_80091880) # addiu $t9, $t9, 0x1880
/* B09240 800920A0 27AF012C */  addiu $t7, $sp, 0x12c
/* B09244 800920A4 AFAF0028 */  sw    $t7, 0x28($sp)
/* B09248 800920A8 AFB90020 */  sw    $t9, 0x20($sp)
/* B0924C 800920AC AFA00024 */  sw    $zero, 0x24($sp)
/* B09250 800920B0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B09254 800920B4 AFA00010 */  sw    $zero, 0x10($sp)
/* B09258 800920B8 8FA40130 */  lw    $a0, 0x130($sp)
/* B0925C 800920BC AFA30114 */  sw    $v1, 0x114($sp)
/* B09260 800920C0 AFB80018 */  sw    $t8, 0x18($sp)
/* B09264 800920C4 0C023D1C */  jal   func_8008F470
/* B09268 800920C8 AFAE0014 */   sw    $t6, 0x14($sp)
/* B0926C 800920CC 8FA30114 */  lw    $v1, 0x114($sp)
/* B09270 800920D0 3C05DF00 */  lui   $a1, 0xdf00
/* B09274 800920D4 3C068014 */  lui   $a2, %hi(D_8013E8EC) # $a2, 0x8014
/* B09278 800920D8 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B0927C 800920DC 24C6E8EC */  addiu $a2, %lo(D_8013E8EC) # addiu $a2, $a2, -0x1714
/* B09280 800920E0 24070CD8 */  li    $a3, 3288
/* B09284 800920E4 248E0008 */  addiu $t6, $a0, 8
/* B09288 800920E8 AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* B0928C 800920EC AC800004 */  sw    $zero, 4($a0)
/* B09290 800920F0 AC850000 */  sw    $a1, ($a0)
/* B09294 800920F4 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B09298 800920F8 24580008 */  addiu $t8, $v0, 8
/* B0929C 800920FC AC7802D0 */  sw    $t8, 0x2d0($v1)
/* B092A0 80092100 AC400004 */  sw    $zero, 4($v0)
/* B092A4 80092104 AC450000 */  sw    $a1, ($v0)
/* B092A8 80092108 8FA40128 */  lw    $a0, 0x128($sp)
/* B092AC 8009210C 3C02DE01 */  lui   $v0, 0xde01
/* B092B0 80092110 AC820000 */  sw    $v0, ($a0)
/* B092B4 80092114 8C7902C0 */  lw    $t9, 0x2c0($v1)
/* B092B8 80092118 AC990004 */  sw    $t9, 4($a0)
/* B092BC 8009211C 8FA40124 */  lw    $a0, 0x124($sp)
/* B092C0 80092120 AC820000 */  sw    $v0, ($a0)
/* B092C4 80092124 8C6F02D0 */  lw    $t7, 0x2d0($v1)
/* B092C8 80092128 AC8F0004 */  sw    $t7, 4($a0)
/* B092CC 8009212C 8FAE0130 */  lw    $t6, 0x130($sp)
/* B092D0 80092130 27A40104 */  addiu $a0, $sp, 0x104
/* B092D4 80092134 0C031AD5 */  jal   Graph_CloseDisps
/* B092D8 80092138 8DC50000 */   lw    $a1, ($t6)
/* B092DC 8009213C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B092E0 80092140 27BD0130 */  addiu $sp, $sp, 0x130
/* B092E4 80092144 03E00008 */  jr    $ra
/* B092E8 80092148 00000000 */   nop   

