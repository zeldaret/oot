.rdata
glabel D_80142ED0
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142EE0
    .asciz "this->col * (1 + this->row * (1 + 7 + 1)) + 1 + 1 = %d\n"
    .balign 4

glabel D_80142F18
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F28
    .asciz "gp - this->gfxtbl = %d\n"
    .balign 4

.text
glabel TransitionUnk_InitGraphics
/* B28A50 800B18B0 27BDFF90 */  addiu $sp, $sp, -0x70
/* B28A54 800B18B4 AFB00028 */  sw    $s0, 0x28($sp)
/* B28A58 800B18B8 00808025 */  move  $s0, $a0
/* B28A5C 800B18BC AFBF004C */  sw    $ra, 0x4c($sp)
/* B28A60 800B18C0 AFBE0048 */  sw    $fp, 0x48($sp)
/* B28A64 800B18C4 AFB70044 */  sw    $s7, 0x44($sp)
/* B28A68 800B18C8 AFB60040 */  sw    $s6, 0x40($sp)
/* B28A6C 800B18CC AFB5003C */  sw    $s5, 0x3c($sp)
/* B28A70 800B18D0 AFB40038 */  sw    $s4, 0x38($sp)
/* B28A74 800B18D4 AFB30034 */  sw    $s3, 0x34($sp)
/* B28A78 800B18D8 AFB20030 */  sw    $s2, 0x30($sp)
/* B28A7C 800B18DC AFB1002C */  sw    $s1, 0x2c($sp)
/* B28A80 800B18E0 0C040ED8 */  jal   func_80103B60
/* B28A84 800B18E4 24840058 */   addiu $a0, $a0, 0x58
/* B28A88 800B18E8 0C040ED8 */  jal   func_80103B60
/* B28A8C 800B18EC 26040098 */   addiu $a0, $s0, 0x98
/* B28A90 800B18F0 3C01C47A */  li    $at, 0xC47A0000 # 0.000000
/* B28A94 800B18F4 44812000 */  mtc1  $at, $f4
/* B28A98 800B18F8 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* B28A9C 800B18FC 44800000 */  mtc1  $zero, $f0
/* B28AA0 800B1900 44813000 */  mtc1  $at, $f6
/* B28AA4 800B1904 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B28AA8 800B1908 44814000 */  mtc1  $at, $f8
/* B28AAC 800B190C 44050000 */  mfc1  $a1, $f0
/* B28AB0 800B1910 26040018 */  addiu $a0, $s0, 0x18
/* B28AB4 800B1914 3C0643A0 */  lui   $a2, 0x43a0
/* B28AB8 800B1918 3C074370 */  lui   $a3, 0x4370
/* B28ABC 800B191C E7A40014 */  swc1  $f4, 0x14($sp)
/* B28AC0 800B1920 E7A00010 */  swc1  $f0, 0x10($sp)
/* B28AC4 800B1924 E7A60018 */  swc1  $f6, 0x18($sp)
/* B28AC8 800B1928 0C041169 */  jal   func_801045A4
/* B28ACC 800B192C E7A8001C */   swc1  $f8, 0x1c($sp)
/* B28AD0 800B1930 0000F825 */  move  $ra, $zero
/* B28AD4 800B1934 00009825 */  move  $s3, $zero
/* B28AD8 800B1938 00006825 */  move  $t5, $zero
/* B28ADC 800B193C 240C00FF */  li    $t4, 255
/* B28AE0 800B1940 240B0078 */  li    $t3, 120
/* B28AE4 800B1944 240AFFFB */  li    $t2, -5
.L800B1948:
/* B28AE8 800B1948 17E00003 */  bnez  $ra, .L800B1958
/* B28AEC 800B194C AE1F0008 */   sw    $ra, 8($s0)
/* B28AF0 800B1950 10000002 */  b     .L800B195C
/* B28AF4 800B1954 8E050010 */   lw    $a1, 0x10($s0)
.L800B1958:
/* B28AF8 800B1958 8E050014 */  lw    $a1, 0x14($s0)
.L800B195C:
/* B28AFC 800B195C 8E030004 */  lw    $v1, 4($s0)
/* B28B00 800B1960 27FF0001 */  addiu $ra, $ra, 1
/* B28B04 800B1964 24620001 */  addiu $v0, $v1, 1
/* B28B08 800B1968 58400026 */  blezl $v0, .L800B1A04
/* B28B0C 800B196C 2BE10002 */   slti  $at, $ra, 2
/* B28B10 800B1970 8E040000 */  lw    $a0, ($s0)
/* B28B14 800B1974 24840001 */  addiu $a0, $a0, 1
.L800B1978:
/* B28B18 800B1978 00003025 */  move  $a2, $zero
/* B28B1C 800B197C 1880001A */  blez  $a0, .L800B19E8
/* B28B20 800B1980 00004825 */   move  $t1, $zero
/* B28B24 800B1984 00001825 */  move  $v1, $zero
/* B28B28 800B1988 000D3940 */  sll   $a3, $t5, 5
/* B28B2C 800B198C 00134180 */  sll   $t0, $s3, 6
.L800B1990:
/* B28B30 800B1990 00A01025 */  move  $v0, $a1
/* B28B34 800B1994 00067180 */  sll   $t6, $a2, 6
/* B28B38 800B1998 A44E0008 */  sh    $t6, 8($v0)
/* B28B3C 800B199C A4430000 */  sh    $v1, ($v0)
/* B28B40 800B19A0 A4470002 */  sh    $a3, 2($v0)
/* B28B44 800B19A4 A44A0004 */  sh    $t2, 4($v0)
/* B28B48 800B19A8 A4400006 */  sh    $zero, 6($v0)
/* B28B4C 800B19AC A448000A */  sh    $t0, 0xa($v0)
/* B28B50 800B19B0 A040000C */  sb    $zero, 0xc($v0)
/* B28B54 800B19B4 A040000D */  sb    $zero, 0xd($v0)
/* B28B58 800B19B8 A04B000E */  sb    $t3, 0xe($v0)
/* B28B5C 800B19BC A04C000F */  sb    $t4, 0xf($v0)
/* B28B60 800B19C0 8E040000 */  lw    $a0, ($s0)
/* B28B64 800B19C4 25290001 */  addiu $t1, $t1, 1
/* B28B68 800B19C8 24630020 */  addiu $v1, $v1, 0x20
/* B28B6C 800B19CC 24840001 */  addiu $a0, $a0, 1
/* B28B70 800B19D0 0124082A */  slt   $at, $t1, $a0
/* B28B74 800B19D4 24A50010 */  addiu $a1, $a1, 0x10
/* B28B78 800B19D8 1420FFED */  bnez  $at, .L800B1990
/* B28B7C 800B19DC 24C60020 */   addiu $a2, $a2, 0x20
/* B28B80 800B19E0 8E030004 */  lw    $v1, 4($s0)
/* B28B84 800B19E4 24620001 */  addiu $v0, $v1, 1
.L800B19E8:
/* B28B88 800B19E8 25AD0001 */  addiu $t5, $t5, 1
/* B28B8C 800B19EC 01A2082A */  slt   $at, $t5, $v0
/* B28B90 800B19F0 1420FFE1 */  bnez  $at, .L800B1978
/* B28B94 800B19F4 26730020 */   addiu $s3, $s3, 0x20
/* B28B98 800B19F8 00009825 */  move  $s3, $zero
/* B28B9C 800B19FC 00006825 */  move  $t5, $zero
/* B28BA0 800B1A00 2BE10002 */  slti  $at, $ra, 2
.L800B1A04:
/* B28BA4 800B1A04 1420FFD0 */  bnez  $at, .L800B1948
/* B28BA8 800B1A08 00000000 */   nop
/* B28BAC 800B1A0C 18600087 */  blez  $v1, .L800B1C2C
/* B28BB0 800B1A10 8E0700D8 */   lw    $a3, 0xd8($s0)
/* B28BB4 800B1A14 3C16FD10 */  lui   $s6, (0xFD10013F >> 16) # lui $s6, 0xfd10
/* B28BB8 800B1A18 36D6013F */  ori   $s6, (0xFD10013F & 0xFFFF) # ori $s6, $s6, 0x13f
/* B28BBC 800B1A1C 8E020000 */  lw    $v0, ($s0)
/* B28BC0 800B1A20 3C1EF510 */  lui   $fp, 0xf510
/* B28BC4 800B1A24 3C170B00 */  lui   $s7, 0xb00
/* B28BC8 800B1A28 3C14E700 */  lui   $s4, 0xe700
/* B28BCC 800B1A2C 3C1F0700 */  lui   $ra, 0x700
/* B28BD0 800B1A30 00022040 */  sll   $a0, $v0, 1
.L800B1A34:
/* B28BD4 800B1A34 24840002 */  addiu $a0, $a0, 2
/* B28BD8 800B1A38 308F00FF */  andi  $t7, $a0, 0xff
/* B28BDC 800B1A3C 000FC300 */  sll   $t8, $t7, 0xc
/* B28BE0 800B1A40 308E007F */  andi  $t6, $a0, 0x7f
/* B28BE4 800B1A44 3C010100 */  lui   $at, 0x100
/* B28BE8 800B1A48 0301C825 */  or    $t9, $t8, $at
/* B28BEC 800B1A4C 000E7840 */  sll   $t7, $t6, 1
/* B28BF0 800B1A50 032FC025 */  or    $t8, $t9, $t7
/* B28BF4 800B1A54 00E01825 */  move  $v1, $a3
/* B28BF8 800B1A58 AC780000 */  sw    $t8, ($v1)
/* B28BFC 800B1A5C 8E0E0000 */  lw    $t6, ($s0)
/* B28C00 800B1A60 3C010A00 */  lui   $at, 0xa00
/* B28C04 800B1A64 26720020 */  addiu $s2, $s3, 0x20
/* B28C08 800B1A68 25D90001 */  addiu $t9, $t6, 1
/* B28C0C 800B1A6C 01B90019 */  multu $t5, $t9
/* B28C10 800B1A70 00129080 */  sll   $s2, $s2, 2
/* B28C14 800B1A74 00138880 */  sll   $s1, $s3, 2
/* B28C18 800B1A78 24E70008 */  addiu $a3, $a3, 8
/* B28C1C 800B1A7C 00003025 */  move  $a2, $zero
/* B28C20 800B1A80 00004825 */  move  $t1, $zero
/* B28C24 800B1A84 00005025 */  move  $t2, $zero
/* B28C28 800B1A88 32310FFF */  andi  $s1, $s1, 0xfff
/* B28C2C 800B1A8C 32520FFF */  andi  $s2, $s2, 0xfff
/* B28C30 800B1A90 24150049 */  li    $s5, 73
/* B28C34 800B1A94 00007812 */  mflo  $t7
/* B28C38 800B1A98 000FC100 */  sll   $t8, $t7, 4
/* B28C3C 800B1A9C 03017021 */  addu  $t6, $t8, $at
/* B28C40 800B1AA0 AC6E0004 */  sw    $t6, 4($v1)
/* B28C44 800B1AA4 8E020000 */  lw    $v0, ($s0)
/* B28C48 800B1AA8 00005825 */  move  $t3, $zero
/* B28C4C 800B1AAC 240C0002 */  li    $t4, 2
/* B28C50 800B1AB0 58400059 */  blezl $v0, .L800B1C18
/* B28C54 800B1AB4 8E0E0004 */   lw    $t6, 4($s0)
.L800B1AB8:
/* B28C58 800B1AB8 00E01025 */  move  $v0, $a3
/* B28C5C 800B1ABC AC540000 */  sw    $s4, ($v0)
/* B28C60 800B1AC0 AC400004 */  sw    $zero, 4($v0)
/* B28C64 800B1AC4 24E70008 */  addiu $a3, $a3, 8
/* B28C68 800B1AC8 00E01025 */  move  $v0, $a3
/* B28C6C 800B1ACC AC560000 */  sw    $s6, ($v0)
/* B28C70 800B1AD0 AC570004 */  sw    $s7, 4($v0)
/* B28C74 800B1AD4 24E70008 */  addiu $a3, $a3, 8
/* B28C78 800B1AD8 0015C8C3 */  sra   $t9, $s5, 3
/* B28C7C 800B1ADC 332F01FF */  andi  $t7, $t9, 0x1ff
/* B28C80 800B1AE0 00E01025 */  move  $v0, $a3
/* B28C84 800B1AE4 000FC240 */  sll   $t8, $t7, 9
/* B28C88 800B1AE8 031E1825 */  or    $v1, $t8, $fp
/* B28C8C 800B1AEC AC430000 */  sw    $v1, ($v0)
/* B28C90 800B1AF0 AC5F0004 */  sw    $ra, 4($v0)
/* B28C94 800B1AF4 24E70008 */  addiu $a3, $a3, 8
/* B28C98 800B1AF8 00E01025 */  move  $v0, $a3
/* B28C9C 800B1AFC 24C80020 */  addiu $t0, $a2, 0x20
/* B28CA0 800B1B00 00082880 */  sll   $a1, $t0, 2
/* B28CA4 800B1B04 3C0EE600 */  lui   $t6, 0xe600
/* B28CA8 800B1B08 00062080 */  sll   $a0, $a2, 2
/* B28CAC 800B1B0C 30840FFF */  andi  $a0, $a0, 0xfff
/* B28CB0 800B1B10 AC4E0000 */  sw    $t6, ($v0)
/* B28CB4 800B1B14 30A50FFF */  andi  $a1, $a1, 0xfff
/* B28CB8 800B1B18 AC400004 */  sw    $zero, 4($v0)
/* B28CBC 800B1B1C 24E70008 */  addiu $a3, $a3, 8
/* B28CC0 800B1B20 00E01025 */  move  $v0, $a3
/* B28CC4 800B1B24 00052B00 */  sll   $a1, $a1, 0xc
/* B28CC8 800B1B28 00042300 */  sll   $a0, $a0, 0xc
/* B28CCC 800B1B2C 3C01F400 */  lui   $at, 0xf400
/* B28CD0 800B1B30 0081C825 */  or    $t9, $a0, $at
/* B28CD4 800B1B34 00BFC025 */  or    $t8, $a1, $ra
/* B28CD8 800B1B38 03127025 */  or    $t6, $t8, $s2
/* B28CDC 800B1B3C 03317825 */  or    $t7, $t9, $s1
/* B28CE0 800B1B40 AC4F0000 */  sw    $t7, ($v0)
/* B28CE4 800B1B44 AC4E0004 */  sw    $t6, 4($v0)
/* B28CE8 800B1B48 24E70008 */  addiu $a3, $a3, 8
/* B28CEC 800B1B4C 00E01025 */  move  $v0, $a3
/* B28CF0 800B1B50 AC540000 */  sw    $s4, ($v0)
/* B28CF4 800B1B54 AC400004 */  sw    $zero, 4($v0)
/* B28CF8 800B1B58 24E70008 */  addiu $a3, $a3, 8
/* B28CFC 800B1B5C 00E01025 */  move  $v0, $a3
/* B28D00 800B1B60 AC430000 */  sw    $v1, ($v0)
/* B28D04 800B1B64 AC400004 */  sw    $zero, 4($v0)
/* B28D08 800B1B68 24E70008 */  addiu $a3, $a3, 8
/* B28D0C 800B1B6C 3C01F200 */  lui   $at, 0xf200
/* B28D10 800B1B70 0081C825 */  or    $t9, $a0, $at
/* B28D14 800B1B74 00E01025 */  move  $v0, $a3
/* B28D18 800B1B78 03317825 */  or    $t7, $t9, $s1
/* B28D1C 800B1B7C 00B2C025 */  or    $t8, $a1, $s2
/* B28D20 800B1B80 AC580004 */  sw    $t8, 4($v0)
/* B28D24 800B1B84 AC4F0000 */  sw    $t7, ($v0)
/* B28D28 800B1B88 8E180000 */  lw    $t8, ($s0)
/* B28D2C 800B1B8C 318E00FF */  andi  $t6, $t4, 0xff
/* B28D30 800B1B90 000ECA00 */  sll   $t9, $t6, 8
/* B28D34 800B1B94 316300FF */  andi  $v1, $t3, 0xff
/* B28D38 800B1B98 00031C00 */  sll   $v1, $v1, 0x10
/* B28D3C 800B1B9C 00797825 */  or    $t7, $v1, $t9
/* B28D40 800B1BA0 01587021 */  addu  $t6, $t2, $t8
/* B28D44 800B1BA4 000EC840 */  sll   $t9, $t6, 1
/* B28D48 800B1BA8 27380004 */  addiu $t8, $t9, 4
/* B28D4C 800B1BAC 330E00FF */  andi  $t6, $t8, 0xff
/* B28D50 800B1BB0 24E70008 */  addiu $a3, $a3, 8
/* B28D54 800B1BB4 01EEC825 */  or    $t9, $t7, $t6
/* B28D58 800B1BB8 033FC025 */  or    $t8, $t9, $ra
/* B28D5C 800B1BBC 00E01025 */  move  $v0, $a3
/* B28D60 800B1BC0 AC580000 */  sw    $t8, ($v0)
/* B28D64 800B1BC4 8E0F0000 */  lw    $t7, ($s0)
/* B28D68 800B1BC8 25290001 */  addiu $t1, $t1, 1
/* B28D6C 800B1BCC 24E70008 */  addiu $a3, $a3, 8
/* B28D70 800B1BD0 014F2021 */  addu  $a0, $t2, $t7
/* B28D74 800B1BD4 00042040 */  sll   $a0, $a0, 1
/* B28D78 800B1BD8 248E0004 */  addiu $t6, $a0, 4
/* B28D7C 800B1BDC 31D900FF */  andi  $t9, $t6, 0xff
/* B28D80 800B1BE0 0019C200 */  sll   $t8, $t9, 8
/* B28D84 800B1BE4 248E0002 */  addiu $t6, $a0, 2
/* B28D88 800B1BE8 31D900FF */  andi  $t9, $t6, 0xff
/* B28D8C 800B1BEC 00787825 */  or    $t7, $v1, $t8
/* B28D90 800B1BF0 01F9C025 */  or    $t8, $t7, $t9
/* B28D94 800B1BF4 AC580004 */  sw    $t8, 4($v0)
/* B28D98 800B1BF8 8E020000 */  lw    $v0, ($s0)
/* B28D9C 800B1BFC 01003025 */  move  $a2, $t0
/* B28DA0 800B1C00 254A0001 */  addiu $t2, $t2, 1
/* B28DA4 800B1C04 0122082A */  slt   $at, $t1, $v0
/* B28DA8 800B1C08 256B0002 */  addiu $t3, $t3, 2
/* B28DAC 800B1C0C 1420FFAA */  bnez  $at, .L800B1AB8
/* B28DB0 800B1C10 258C0002 */   addiu $t4, $t4, 2
/* B28DB4 800B1C14 8E0E0004 */  lw    $t6, 4($s0)
.L800B1C18:
/* B28DB8 800B1C18 25AD0001 */  addiu $t5, $t5, 1
/* B28DBC 800B1C1C 26730020 */  addiu $s3, $s3, 0x20
/* B28DC0 800B1C20 01AE082A */  slt   $at, $t5, $t6
/* B28DC4 800B1C24 5420FF83 */  bnezl $at, .L800B1A34
/* B28DC8 800B1C28 00022040 */   sll   $a0, $v0, 1
.L800B1C2C:
/* B28DCC 800B1C2C 00E01025 */  move  $v0, $a3
/* B28DD0 800B1C30 3C14E700 */  lui   $s4, 0xe700
/* B28DD4 800B1C34 AC540000 */  sw    $s4, ($v0)
/* B28DD8 800B1C38 AC400004 */  sw    $zero, 4($v0)
/* B28DDC 800B1C3C 24E70008 */  addiu $a3, $a3, 8
/* B28DE0 800B1C40 00E01025 */  move  $v0, $a3
/* B28DE4 800B1C44 3C0FDF00 */  lui   $t7, 0xdf00
/* B28DE8 800B1C48 AC4F0000 */  sw    $t7, ($v0)
/* B28DEC 800B1C4C AC400004 */  sw    $zero, 4($v0)
/* B28DF0 800B1C50 24E70008 */  addiu $a3, $a3, 8
/* B28DF4 800B1C54 3C048014 */  lui   $a0, %hi(D_80142ED0) # $a0, 0x8014
/* B28DF8 800B1C58 24842ED0 */  addiu $a0, %lo(D_80142ED0) # addiu $a0, $a0, 0x2ed0
/* B28DFC 800B1C5C AFA70050 */  sw    $a3, 0x50($sp)
/* B28E00 800B1C60 0C000B84 */  jal   LogUtils_LogThreadId
/* B28E04 800B1C64 24050090 */   li    $a1, 144
/* B28E08 800B1C68 8E180000 */  lw    $t8, ($s0)
/* B28E0C 800B1C6C 8E190004 */  lw    $t9, 4($s0)
/* B28E10 800B1C70 3C048014 */  lui   $a0, %hi(D_80142EE0) # $a0, 0x8014
/* B28E14 800B1C74 001870C0 */  sll   $t6, $t8, 3
/* B28E18 800B1C78 01D87021 */  addu  $t6, $t6, $t8
/* B28E1C 800B1C7C 25CF0001 */  addiu $t7, $t6, 1
/* B28E20 800B1C80 032F0019 */  multu $t9, $t7
/* B28E24 800B1C84 24842EE0 */  addiu $a0, %lo(D_80142EE0) # addiu $a0, $a0, 0x2ee0
/* B28E28 800B1C88 00002812 */  mflo  $a1
/* B28E2C 800B1C8C 24A50002 */  addiu $a1, $a1, 2
/* B28E30 800B1C90 0C00084C */  jal   osSyncPrintf
/* B28E34 800B1C94 00000000 */   nop
/* B28E38 800B1C98 8FA70050 */  lw    $a3, 0x50($sp)
/* B28E3C 800B1C9C 3C048014 */  lui   $a0, %hi(D_80142F18) # $a0, 0x8014
/* B28E40 800B1CA0 24842F18 */  addiu $a0, %lo(D_80142F18) # addiu $a0, $a0, 0x2f18
/* B28E44 800B1CA4 24050091 */  li    $a1, 145
/* B28E48 800B1CA8 0C000B84 */  jal   LogUtils_LogThreadId
/* B28E4C 800B1CAC AFA70050 */   sw    $a3, 0x50($sp)
/* B28E50 800B1CB0 8FA70050 */  lw    $a3, 0x50($sp)
/* B28E54 800B1CB4 8E1800D8 */  lw    $t8, 0xd8($s0)
/* B28E58 800B1CB8 3C048014 */  lui   $a0, %hi(D_80142F28) # $a0, 0x8014
/* B28E5C 800B1CBC 24842F28 */  addiu $a0, %lo(D_80142F28) # addiu $a0, $a0, 0x2f28
/* B28E60 800B1CC0 00F82823 */  subu  $a1, $a3, $t8
/* B28E64 800B1CC4 0C00084C */  jal   osSyncPrintf
/* B28E68 800B1CC8 000528C3 */   sra   $a1, $a1, 3
/* B28E6C 800B1CCC 8FBF004C */  lw    $ra, 0x4c($sp)
/* B28E70 800B1CD0 8FB00028 */  lw    $s0, 0x28($sp)
/* B28E74 800B1CD4 8FB1002C */  lw    $s1, 0x2c($sp)
/* B28E78 800B1CD8 8FB20030 */  lw    $s2, 0x30($sp)
/* B28E7C 800B1CDC 8FB30034 */  lw    $s3, 0x34($sp)
/* B28E80 800B1CE0 8FB40038 */  lw    $s4, 0x38($sp)
/* B28E84 800B1CE4 8FB5003C */  lw    $s5, 0x3c($sp)
/* B28E88 800B1CE8 8FB60040 */  lw    $s6, 0x40($sp)
/* B28E8C 800B1CEC 8FB70044 */  lw    $s7, 0x44($sp)
/* B28E90 800B1CF0 8FBE0048 */  lw    $fp, 0x48($sp)
/* B28E94 800B1CF4 03E00008 */  jr    $ra
/* B28E98 800B1CF8 27BD0070 */   addiu $sp, $sp, 0x70

