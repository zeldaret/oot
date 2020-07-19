.rdata
glabel D_80144AF8
    .asciz "this"
    .balign 4

glabel D_80144B00
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B10
    .asciz "glistpp"
    .balign 4

glabel D_80144B18
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B28
    .asciz "glistp"
    .balign 4

glabel D_80144B30
    .asciz "../PreRender.c"
    .balign 4

.text
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

