.rdata
glabel D_8014624C
    .asciz "../speed_meter.c"
    .balign 4

glabel D_80146260
    .asciz "../speed_meter.c"
    .balign 4

.text
glabel func_800C99C4
/* B40B64 800C99C4 27BDFDE0 */  addiu $sp, $sp, -0x220
/* B40B68 800C99C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* B40B6C 800C99CC AFB20030 */  sw    $s2, 0x30($sp)
/* B40B70 800C99D0 AFB1002C */  sw    $s1, 0x2c($sp)
/* B40B74 800C99D4 AFB00028 */  sw    $s0, 0x28($sp)
/* B40B78 800C99D8 F7B60020 */  sdc1  $f22, 0x20($sp)
/* B40B7C 800C99DC F7B40018 */  sdc1  $f20, 0x18($sp)
/* B40B80 800C99E0 AFA50224 */  sw    $a1, 0x224($sp)
/* B40B84 800C99E4 8C82001C */  lw    $v0, 0x1c($a0)
/* B40B88 800C99E8 3C068014 */  lui   $a2, %hi(D_8014624C) # $a2, 0x8014
/* B40B8C 800C99EC 24C6624C */  addiu $a2, %lo(D_8014624C) # addiu $a2, $a2, 0x624c
/* B40B90 800C99F0 27A400B4 */  addiu $a0, $sp, 0xb4
/* B40B94 800C99F4 240700E1 */  li    $a3, 225
/* B40B98 800C99F8 AFA20208 */  sw    $v0, 0x208($sp)
/* B40B9C 800C99FC 0C031AB1 */  jal   Graph_OpenDisps
/* B40BA0 800C9A00 24520002 */   addiu $s2, $v0, 2
/* B40BA4 800C9A04 3C0E8013 */  lui   $t6, %hi(sIrqMgrRetraceTime) # $t6, 0x8013
/* B40BA8 800C9A08 25CEDBE0 */  addiu $t6, %lo(sIrqMgrRetraceTime) # addiu $t6, $t6, -0x2420
/* B40BAC 800C9A0C 8DD80000 */  lw    $t8, ($t6)
/* B40BB0 800C9A10 3C118017 */  lui   $s1, %hi(D_8016A588) # $s1, 0x8017
/* B40BB4 800C9A14 8DD90004 */  lw    $t9, 4($t6)
/* B40BB8 800C9A18 17000002 */  bnez  $t8, .L800C9A24
/* B40BBC 800C9A1C 2631A588 */   addiu $s1, %lo(D_8016A588) # addiu $s1, $s1, -0x5a78
/* B40BC0 800C9A20 132000F1 */  beqz  $t9, .L800C9DE8
.L800C9A24:
/* B40BC4 800C9A24 3C0F8013 */   lui   $t7, %hi(D_8012D2A0)
/* B40BC8 800C9A28 3C014050 */  li    $at, 0x40500000 # 0.000000
/* B40BCC 800C9A2C 25EFD2A0 */  addiu $t7, %lo(D_8012D2A0) # addiu $t7, $t7, -0x2d60
/* B40BD0 800C9A30 4481B800 */  mtc1  $at, $f23
/* B40BD4 800C9A34 4480B000 */  mtc1  $zero, $f22
/* B40BD8 800C9A38 AE2F0000 */  sw    $t7, ($s1)
/* B40BDC 800C9A3C 00008025 */  move  $s0, $zero
.L800C9A40:
/* B40BE0 800C9A40 8E290000 */  lw    $t1, ($s1)
/* B40BE4 800C9A44 8D2A0000 */  lw    $t2, ($t1)
/* B40BE8 800C9A48 8D440000 */  lw    $a0, ($t2)
/* B40BEC 800C9A4C 0C0419BD */  jal   __ull_to_d
/* B40BF0 800C9A50 8D450004 */   lw    $a1, 4($t2)
/* B40BF4 800C9A54 3C0B8013 */  lui   $t3, %hi(sIrqMgrRetraceTime) # $t3, 0x8013
/* B40BF8 800C9A58 256BDBE0 */  addiu $t3, %lo(sIrqMgrRetraceTime) # addiu $t3, $t3, -0x2420
/* B40BFC 800C9A5C 8D640000 */  lw    $a0, ($t3)
/* B40C00 800C9A60 8D650004 */  lw    $a1, 4($t3)
/* B40C04 800C9A64 0C0419BD */  jal   __ull_to_d
/* B40C08 800C9A68 46200506 */   mov.d $f20, $f0
/* B40C0C 800C9A6C 4620A103 */  div.d $f4, $f20, $f0
/* B40C10 800C9A70 8E380000 */  lw    $t8, ($s1)
/* B40C14 800C9A74 26100001 */  addiu $s0, $s0, 1
/* B40C18 800C9A78 2A010006 */  slti  $at, $s0, 6
/* B40C1C 800C9A7C 46362182 */  mul.d $f6, $f4, $f22
/* B40C20 800C9A80 4620320D */  trunc.w.d $f8, $f6
/* B40C24 800C9A84 440D4000 */  mfc1  $t5, $f8
/* B40C28 800C9A88 00000000 */  nop   
/* B40C2C 800C9A8C 25AE0020 */  addiu $t6, $t5, 0x20
/* B40C30 800C9A90 A30E0004 */  sb    $t6, 4($t8)
/* B40C34 800C9A94 8E390000 */  lw    $t9, ($s1)
/* B40C38 800C9A98 272F0008 */  addiu $t7, $t9, 8
/* B40C3C 800C9A9C 1420FFE8 */  bnez  $at, .L800C9A40
/* B40C40 800C9AA0 AE2F0000 */   sw    $t7, ($s1)
/* B40C44 800C9AA4 27B000D8 */  addiu $s0, $sp, 0xd8
/* B40C48 800C9AA8 02002025 */  move  $a0, $s0
/* B40C4C 800C9AAC 0C02A89E */  jal   View_Init
/* B40C50 800C9AB0 8FA50224 */   lw    $a1, 0x224($sp)
/* B40C54 800C9AB4 2409000A */  li    $t1, 10
/* B40C58 800C9AB8 240A00F0 */  li    $t2, 240
/* B40C5C 800C9ABC 240B0140 */  li    $t3, 320
/* B40C60 800C9AC0 AFA901F8 */  sw    $t1, 0x1f8($sp)
/* B40C64 800C9AC4 AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B40C68 800C9AC8 AFAA00A8 */  sw    $t2, 0xa8($sp)
/* B40C6C 800C9ACC AFA000A4 */  sw    $zero, 0xa4($sp)
/* B40C70 800C9AD0 AFA000AC */  sw    $zero, 0xac($sp)
/* B40C74 800C9AD4 02002025 */  move  $a0, $s0
/* B40C78 800C9AD8 0C02A93F */  jal   View_SetViewport
/* B40C7C 800C9ADC 27A500A4 */   addiu $a1, $sp, 0xa4
/* B40C80 800C9AE0 8FAC0224 */  lw    $t4, 0x224($sp)
/* B40C84 800C9AE4 02002025 */  move  $a0, $s0
/* B40C88 800C9AE8 2405000F */  li    $a1, 15
/* B40C8C 800C9AEC 8D8D02B0 */  lw    $t5, 0x2b0($t4)
/* B40C90 800C9AF0 27A600C8 */  addiu $a2, $sp, 0xc8
/* B40C94 800C9AF4 0C02AE7B */  jal   func_800AB9EC
/* B40C98 800C9AF8 AFAD00C8 */   sw    $t5, 0xc8($sp)
/* B40C9C 800C9AFC 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40CA0 800C9B00 3C06E700 */  lui   $a2, 0xe700
/* B40CA4 800C9B04 3C09EF30 */  lui   $t1, 0xef30
/* B40CA8 800C9B08 25D80008 */  addiu $t8, $t6, 8
/* B40CAC 800C9B0C AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40CB0 800C9B10 ADC00004 */  sw    $zero, 4($t6)
/* B40CB4 800C9B14 ADC60000 */  sw    $a2, ($t6)
/* B40CB8 800C9B18 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40CBC 800C9B1C 3C0E003F */  lui   $t6, (0x003F003F >> 16) # lui $t6, 0x3f
/* B40CC0 800C9B20 35CE003F */  ori   $t6, (0x003F003F & 0xFFFF) # ori $t6, $t6, 0x3f
/* B40CC4 800C9B24 272F0008 */  addiu $t7, $t9, 8
/* B40CC8 800C9B28 AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40CCC 800C9B2C AF200004 */  sw    $zero, 4($t9)
/* B40CD0 800C9B30 AF290000 */  sw    $t1, ($t9)
/* B40CD4 800C9B34 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40CD8 800C9B38 3C07F700 */  lui   $a3, 0xf700
/* B40CDC 800C9B3C 324303FF */  andi  $v1, $s2, 0x3ff
/* B40CE0 800C9B40 254B0008 */  addiu $t3, $t2, 8
/* B40CE4 800C9B44 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40CE8 800C9B48 AD400004 */  sw    $zero, 4($t2)
/* B40CEC 800C9B4C AD460000 */  sw    $a2, ($t2)
/* B40CF0 800C9B50 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40CF4 800C9B54 00031880 */  sll   $v1, $v1, 2
/* B40CF8 800C9B58 3C01F618 */  lui   $at, 0xf618
/* B40CFC 800C9B5C 258D0008 */  addiu $t5, $t4, 8
/* B40D00 800C9B60 AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40D04 800C9B64 AD8E0004 */  sw    $t6, 4($t4)
/* B40D08 800C9B68 AD870000 */  sw    $a3, ($t4)
/* B40D0C 800C9B6C 8FB800C8 */  lw    $t8, 0xc8($sp)
/* B40D10 800C9B70 00617825 */  or    $t7, $v1, $at
/* B40D14 800C9B74 3C080008 */  lui   $t0, 8
/* B40D18 800C9B78 27190008 */  addiu $t9, $t8, 8
/* B40D1C 800C9B7C AFB900C8 */  sw    $t9, 0xc8($sp)
/* B40D20 800C9B80 AF0F0000 */  sw    $t7, ($t8)
/* B40D24 800C9B84 8FA40208 */  lw    $a0, 0x208($sp)
/* B40D28 800C9B88 3C1907C1 */  lui   $t9, (0x07C107C1 >> 16) # lui $t9, 0x7c1
/* B40D2C 800C9B8C 373907C1 */  ori   $t9, (0x07C107C1 & 0xFFFF) # ori $t9, $t9, 0x7c1
/* B40D30 800C9B90 308403FF */  andi  $a0, $a0, 0x3ff
/* B40D34 800C9B94 00042080 */  sll   $a0, $a0, 2
/* B40D38 800C9B98 01044825 */  or    $t1, $t0, $a0
/* B40D3C 800C9B9C AF090004 */  sw    $t1, 4($t8)
/* B40D40 800C9BA0 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40D44 800C9BA4 3C01F628 */  lui   $at, 0xf628
/* B40D48 800C9BA8 00008025 */  move  $s0, $zero
/* B40D4C 800C9BAC 254B0008 */  addiu $t3, $t2, 8
/* B40D50 800C9BB0 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40D54 800C9BB4 AD400004 */  sw    $zero, 4($t2)
/* B40D58 800C9BB8 AD460000 */  sw    $a2, ($t2)
/* B40D5C 800C9BBC 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40D60 800C9BC0 00615025 */  or    $t2, $v1, $at
/* B40D64 800C9BC4 3C010018 */  lui   $at, 0x18
/* B40D68 800C9BC8 258D0008 */  addiu $t5, $t4, 8
/* B40D6C 800C9BCC AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40D70 800C9BD0 AD800004 */  sw    $zero, 4($t4)
/* B40D74 800C9BD4 AD860000 */  sw    $a2, ($t4)
/* B40D78 800C9BD8 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40D7C 800C9BDC 00815825 */  or    $t3, $a0, $at
/* B40D80 800C9BE0 3C01F638 */  lui   $at, 0xf638
/* B40D84 800C9BE4 25D80008 */  addiu $t8, $t6, 8
/* B40D88 800C9BE8 AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40D8C 800C9BEC ADD90004 */  sw    $t9, 4($t6)
/* B40D90 800C9BF0 ADC70000 */  sw    $a3, ($t6)
/* B40D94 800C9BF4 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* B40D98 800C9BF8 24050006 */  li    $a1, 6
/* B40D9C 800C9BFC 25E90008 */  addiu $t1, $t7, 8
/* B40DA0 800C9C00 AFA900C8 */  sw    $t1, 0xc8($sp)
/* B40DA4 800C9C04 ADEB0004 */  sw    $t3, 4($t7)
/* B40DA8 800C9C08 ADEA0000 */  sw    $t2, ($t7)
/* B40DAC 800C9C0C 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40DB0 800C9C10 3C09F801 */  lui   $t1, (0xF801F801 >> 16) # lui $t1, 0xf801
/* B40DB4 800C9C14 3529F801 */  ori   $t1, (0xF801F801 & 0xFFFF) # ori $t1, $t1, 0xf801
/* B40DB8 800C9C18 258D0008 */  addiu $t5, $t4, 8
/* B40DBC 800C9C1C AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40DC0 800C9C20 AD800004 */  sw    $zero, 4($t4)
/* B40DC4 800C9C24 AD860000 */  sw    $a2, ($t4)
/* B40DC8 800C9C28 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40DCC 800C9C2C 00616025 */  or    $t4, $v1, $at
/* B40DD0 800C9C30 3C010028 */  lui   $at, 0x28
/* B40DD4 800C9C34 25D80008 */  addiu $t8, $t6, 8
/* B40DD8 800C9C38 AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40DDC 800C9C3C ADC00004 */  sw    $zero, 4($t6)
/* B40DE0 800C9C40 ADC60000 */  sw    $a2, ($t6)
/* B40DE4 800C9C44 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40DE8 800C9C48 00816825 */  or    $t5, $a0, $at
/* B40DEC 800C9C4C 3C01F648 */  lui   $at, 0xf648
/* B40DF0 800C9C50 272F0008 */  addiu $t7, $t9, 8
/* B40DF4 800C9C54 AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40DF8 800C9C58 AF290004 */  sw    $t1, 4($t9)
/* B40DFC 800C9C5C AF270000 */  sw    $a3, ($t9)
/* B40E00 800C9C60 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40E04 800C9C64 254B0008 */  addiu $t3, $t2, 8
/* B40E08 800C9C68 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40E0C 800C9C6C AD4D0004 */  sw    $t5, 4($t2)
/* B40E10 800C9C70 AD4C0000 */  sw    $t4, ($t2)
/* B40E14 800C9C74 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40E18 800C9C78 3C0BF83F */  lui   $t3, (0xF83FF83F >> 16) # lui $t3, 0xf83f
/* B40E1C 800C9C7C 356BF83F */  ori   $t3, (0xF83FF83F & 0xFFFF) # ori $t3, $t3, 0xf83f
/* B40E20 800C9C80 25D80008 */  addiu $t8, $t6, 8
/* B40E24 800C9C84 AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40E28 800C9C88 ADC00004 */  sw    $zero, 4($t6)
/* B40E2C 800C9C8C ADC60000 */  sw    $a2, ($t6)
/* B40E30 800C9C90 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40E34 800C9C94 00617025 */  or    $t6, $v1, $at
/* B40E38 800C9C98 3C010038 */  lui   $at, 0x38
/* B40E3C 800C9C9C 272F0008 */  addiu $t7, $t9, 8
/* B40E40 800C9CA0 AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40E44 800C9CA4 AF200004 */  sw    $zero, 4($t9)
/* B40E48 800C9CA8 AF260000 */  sw    $a2, ($t9)
/* B40E4C 800C9CAC 8FA900C8 */  lw    $t1, 0xc8($sp)
/* B40E50 800C9CB0 0081C025 */  or    $t8, $a0, $at
/* B40E54 800C9CB4 3C04F600 */  lui   $a0, 0xf600
/* B40E58 800C9CB8 252A0008 */  addiu $t2, $t1, 8
/* B40E5C 800C9CBC AFAA00C8 */  sw    $t2, 0xc8($sp)
/* B40E60 800C9CC0 AD2B0004 */  sw    $t3, 4($t1)
/* B40E64 800C9CC4 AD270000 */  sw    $a3, ($t1)
/* B40E68 800C9CC8 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40E6C 800C9CCC 3C098013 */  lui   $t1, %hi(D_8012D2A0) # $t1, 0x8013
/* B40E70 800C9CD0 2529D2A0 */  addiu $t1, %lo(D_8012D2A0) # addiu $t1, $t1, -0x2d60
/* B40E74 800C9CD4 258D0008 */  addiu $t5, $t4, 8
/* B40E78 800C9CD8 AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40E7C 800C9CDC AD980004 */  sw    $t8, 4($t4)
/* B40E80 800C9CE0 AD8E0000 */  sw    $t6, ($t4)
/* B40E84 800C9CE4 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40E88 800C9CE8 272F0008 */  addiu $t7, $t9, 8
/* B40E8C 800C9CEC AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40E90 800C9CF0 AF200004 */  sw    $zero, 4($t9)
/* B40E94 800C9CF4 AF260000 */  sw    $a2, ($t9)
/* B40E98 800C9CF8 AE290000 */  sw    $t1, ($s1)
.L800C9CFC:
/* B40E9C 800C9CFC 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40EA0 800C9D00 26100001 */  addiu $s0, $s0, 1
/* B40EA4 800C9D04 254B0008 */  addiu $t3, $t2, 8
/* B40EA8 800C9D08 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40EAC 800C9D0C AD400004 */  sw    $zero, 4($t2)
/* B40EB0 800C9D10 AD460000 */  sw    $a2, ($t2)
/* B40EB4 800C9D14 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40EB8 800C9D18 258D0008 */  addiu $t5, $t4, 8
/* B40EBC 800C9D1C AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40EC0 800C9D20 AD870000 */  sw    $a3, ($t4)
/* B40EC4 800C9D24 8E2E0000 */  lw    $t6, ($s1)
/* B40EC8 800C9D28 95C30006 */  lhu   $v1, 6($t6)
/* B40ECC 800C9D2C 0003C400 */  sll   $t8, $v1, 0x10
/* B40ED0 800C9D30 0303C825 */  or    $t9, $t8, $v1
/* B40ED4 800C9D34 AD990004 */  sw    $t9, 4($t4)
/* B40ED8 800C9D38 8FA300C8 */  lw    $v1, 0xc8($sp)
/* B40EDC 800C9D3C 8E220000 */  lw    $v0, ($s1)
/* B40EE0 800C9D40 24690008 */  addiu $t1, $v1, 8
/* B40EE4 800C9D44 AFA900C8 */  sw    $t1, 0xc8($sp)
/* B40EE8 800C9D48 904E0005 */  lbu   $t6, 5($v0)
/* B40EEC 800C9D4C 904B0004 */  lbu   $t3, 4($v0)
/* B40EF0 800C9D50 024EC021 */  addu  $t8, $s2, $t6
/* B40EF4 800C9D54 27190001 */  addiu $t9, $t8, 1
/* B40EF8 800C9D58 332F03FF */  andi  $t7, $t9, 0x3ff
/* B40EFC 800C9D5C 000B6380 */  sll   $t4, $t3, 0xe
/* B40F00 800C9D60 01846825 */  or    $t5, $t4, $a0
/* B40F04 800C9D64 000F4880 */  sll   $t1, $t7, 2
/* B40F08 800C9D68 01A95025 */  or    $t2, $t5, $t1
/* B40F0C 800C9D6C AC6A0000 */  sw    $t2, ($v1)
/* B40F10 800C9D70 8E2B0000 */  lw    $t3, ($s1)
/* B40F14 800C9D74 916C0005 */  lbu   $t4, 5($t3)
/* B40F18 800C9D78 024C7021 */  addu  $t6, $s2, $t4
/* B40F1C 800C9D7C 31D803FF */  andi  $t8, $t6, 0x3ff
/* B40F20 800C9D80 0018C880 */  sll   $t9, $t8, 2
/* B40F24 800C9D84 01197825 */  or    $t7, $t0, $t9
/* B40F28 800C9D88 AC6F0004 */  sw    $t7, 4($v1)
/* B40F2C 800C9D8C 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* B40F30 800C9D90 25A90008 */  addiu $t1, $t5, 8
/* B40F34 800C9D94 AFA900C8 */  sw    $t1, 0xc8($sp)
/* B40F38 800C9D98 ADA00004 */  sw    $zero, 4($t5)
/* B40F3C 800C9D9C ADA60000 */  sw    $a2, ($t5)
/* B40F40 800C9DA0 8E2A0000 */  lw    $t2, ($s1)
/* B40F44 800C9DA4 254B0008 */  addiu $t3, $t2, 8
/* B40F48 800C9DA8 1605FFD4 */  bne   $s0, $a1, .L800C9CFC
/* B40F4C 800C9DAC AE2B0000 */   sw    $t3, ($s1)
/* B40F50 800C9DB0 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40F54 800C9DB4 27A400B4 */  addiu $a0, $sp, 0xb4
/* B40F58 800C9DB8 24070114 */  li    $a3, 276
/* B40F5C 800C9DBC 258E0008 */  addiu $t6, $t4, 8
/* B40F60 800C9DC0 AFAE00C8 */  sw    $t6, 0xc8($sp)
/* B40F64 800C9DC4 AD800004 */  sw    $zero, 4($t4)
/* B40F68 800C9DC8 AD860000 */  sw    $a2, ($t4)
/* B40F6C 800C9DCC 8FB90224 */  lw    $t9, 0x224($sp)
/* B40F70 800C9DD0 8FB800C8 */  lw    $t8, 0xc8($sp)
/* B40F74 800C9DD4 3C068014 */  lui   $a2, %hi(D_80146260) # $a2, 0x8014
/* B40F78 800C9DD8 24C66260 */  addiu $a2, %lo(D_80146260) # addiu $a2, $a2, 0x6260
/* B40F7C 800C9DDC AF3802B0 */  sw    $t8, 0x2b0($t9)
/* B40F80 800C9DE0 0C031AD5 */  jal   Graph_CloseDisps
/* B40F84 800C9DE4 8FA50224 */   lw    $a1, 0x224($sp)
.L800C9DE8:
/* B40F88 800C9DE8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B40F8C 800C9DEC D7B40018 */  ldc1  $f20, 0x18($sp)
/* B40F90 800C9DF0 D7B60020 */  ldc1  $f22, 0x20($sp)
/* B40F94 800C9DF4 8FB00028 */  lw    $s0, 0x28($sp)
/* B40F98 800C9DF8 8FB1002C */  lw    $s1, 0x2c($sp)
/* B40F9C 800C9DFC 8FB20030 */  lw    $s2, 0x30($sp)
/* B40FA0 800C9E00 03E00008 */  jr    $ra
/* B40FA4 800C9E04 27BD0220 */   addiu $sp, $sp, 0x220

