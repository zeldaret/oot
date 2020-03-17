.rdata
glabel D_8014016C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140180
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140194
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801401A8
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A180C
/* B189AC 800A180C 27BDFF98 */  addiu $sp, $sp, -0x68
/* B189B0 800A1810 AFBF0024 */  sw    $ra, 0x24($sp)
/* B189B4 800A1814 AFA40068 */  sw    $a0, 0x68($sp)
/* B189B8 800A1818 AFA5006C */  sw    $a1, 0x6c($sp)
/* B189BC 800A181C AFA60070 */  sw    $a2, 0x70($sp)
/* B189C0 800A1820 AFA70074 */  sw    $a3, 0x74($sp)
/* B189C4 800A1824 8C850000 */  lw    $a1, ($a0)
/* B189C8 800A1828 3C068014 */  lui   $a2, %hi(D_8014016C) # $a2, 0x8014
/* B189CC 800A182C 24C6016C */  addiu $a2, %lo(D_8014016C) # addiu $a2, $a2, 0x16c
/* B189D0 800A1830 27A40034 */  addiu $a0, $sp, 0x34
/* B189D4 800A1834 240704BE */  li    $a3, 1214
/* B189D8 800A1838 0C031AB1 */  jal   func_800C6AC4
/* B189DC 800A183C AFA50044 */   sw    $a1, 0x44($sp)
/* B189E0 800A1840 0C034213 */  jal   Matrix_Push
/* B189E4 800A1844 00000000 */   nop   
/* B189E8 800A1848 8FB8006C */  lw    $t8, 0x6c($sp)
/* B189EC 800A184C 8FAF0070 */  lw    $t7, 0x70($sp)
/* B189F0 800A1850 3C0D8016 */  lui   $t5, %hi(gSegments)
/* B189F4 800A1854 0018C880 */  sll   $t9, $t8, 2
/* B189F8 800A1858 01F94021 */  addu  $t0, $t7, $t9
/* B189FC 800A185C 8D020000 */  lw    $v0, ($t0)
/* B18A00 800A1860 270E0001 */  addiu $t6, $t8, 1
/* B18A04 800A1864 8FB90074 */  lw    $t9, 0x74($sp)
/* B18A08 800A1868 000E4080 */  sll   $t0, $t6, 2
/* B18A0C 800A186C 00025100 */  sll   $t2, $v0, 4
/* B18A10 800A1870 000A5F02 */  srl   $t3, $t2, 0x1c
/* B18A14 800A1874 010E4023 */  subu  $t0, $t0, $t6
/* B18A18 800A1878 000B6080 */  sll   $t4, $t3, 2
/* B18A1C 800A187C 00084040 */  sll   $t0, $t0, 1
/* B18A20 800A1880 01AC6821 */  addu  $t5, $t5, $t4
/* B18A24 800A1884 AFAE006C */  sw    $t6, 0x6c($sp)
/* B18A28 800A1888 03285021 */  addu  $t2, $t9, $t0
/* B18A2C 800A188C 894C0000 */  lwl   $t4, ($t2)
/* B18A30 800A1890 994C0003 */  lwr   $t4, 3($t2)
/* B18A34 800A1894 8DAD6FA8 */  lw    $t5, %lo(gSegments)($t5)
/* B18A38 800A1898 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18A3C 800A189C 27AF0048 */  addiu $t7, $sp, 0x48
/* B18A40 800A18A0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18A44 800A18A4 ADEC0000 */  sw    $t4, ($t7)
/* B18A48 800A18A8 954C0004 */  lhu   $t4, 4($t2)
/* B18A4C 800A18AC 00414824 */  and   $t1, $v0, $at
/* B18A50 800A18B0 3C018000 */  lui   $at, 0x8000
/* B18A54 800A18B4 012D1821 */  addu  $v1, $t1, $t5
/* B18A58 800A18B8 00611821 */  addu  $v1, $v1, $at
/* B18A5C 800A18BC A5EC0004 */  sh    $t4, 4($t7)
/* B18A60 800A18C0 84690000 */  lh    $t1, ($v1)
/* B18A64 800A18C4 8FA80078 */  lw    $t0, 0x78($sp)
/* B18A68 800A18C8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B18A6C 800A18CC 44892000 */  mtc1  $t1, $f4
/* B18A70 800A18D0 8FA40068 */  lw    $a0, 0x68($sp)
/* B18A74 800A18D4 27AF0048 */  addiu $t7, $sp, 0x48
/* B18A78 800A18D8 468021A0 */  cvt.s.w $f6, $f4
/* B18A7C 800A18DC 27A60060 */  addiu $a2, $sp, 0x60
/* B18A80 800A18E0 27A70050 */  addiu $a3, $sp, 0x50
/* B18A84 800A18E4 E7A60050 */  swc1  $f6, 0x50($sp)
/* B18A88 800A18E8 846D0002 */  lh    $t5, 2($v1)
/* B18A8C 800A18EC 448D4000 */  mtc1  $t5, $f8
/* B18A90 800A18F0 00000000 */  nop   
/* B18A94 800A18F4 468042A0 */  cvt.s.w $f10, $f8
/* B18A98 800A18F8 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B18A9C 800A18FC 84780004 */  lh    $t8, 4($v1)
/* B18AA0 800A1900 44988000 */  mtc1  $t8, $f16
/* B18AA4 800A1904 00000000 */  nop   
/* B18AA8 800A1908 468084A0 */  cvt.s.w $f18, $f16
/* B18AAC 800A190C E7B20058 */  swc1  $f18, 0x58($sp)
/* B18AB0 800A1910 8C6E0008 */  lw    $t6, 8($v1)
/* B18AB4 800A1914 AFA30064 */  sw    $v1, 0x64($sp)
/* B18AB8 800A1918 AFAE005C */  sw    $t6, 0x5c($sp)
/* B18ABC 800A191C 11000007 */  beqz  $t0, .L800A193C
/* B18AC0 800A1920 AFAE0060 */   sw    $t6, 0x60($sp)
/* B18AC4 800A1924 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18AC8 800A1928 AFAF0010 */  sw    $t7, 0x10($sp)
/* B18ACC 800A192C AFA30064 */  sw    $v1, 0x64($sp)
/* B18AD0 800A1930 0100F809 */  jalr  $t0
/* B18AD4 800A1934 AFAA0014 */  sw    $t2, 0x14($sp)
/* B18AD8 800A1938 1440002D */  bnez  $v0, .L800A19F0
.L800A193C:
/* B18ADC 800A193C 27A40050 */   addiu $a0, $sp, 0x50
/* B18AE0 800A1940 0C0344D0 */  jal   func_800D1340
/* B18AE4 800A1944 27A50048 */   addiu $a1, $sp, 0x48
/* B18AE8 800A1948 8FAB0060 */  lw    $t3, 0x60($sp)
/* B18AEC 800A194C 8FAC0084 */  lw    $t4, 0x84($sp)
/* B18AF0 800A1950 3C058014 */  lui   $a1, %hi(D_80140180) # $a1, 0x8014
/* B18AF4 800A1954 1160001B */  beqz  $t3, .L800A19C4
/* B18AF8 800A1958 8FA9005C */   lw    $t1, 0x5c($sp)
/* B18AFC 800A195C 8D840000 */  lw    $a0, ($t4)
/* B18B00 800A1960 24A50180 */  addiu $a1, %lo(D_80140180) # addiu $a1, $a1, 0x180
/* B18B04 800A1964 0C034695 */  jal   Matrix_ToMtx
/* B18B08 800A1968 240604DA */   li    $a2, 1242
/* B18B0C 800A196C 8FA40044 */  lw    $a0, 0x44($sp)
/* B18B10 800A1970 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B18B14 800A1974 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B18B18 800A1978 8C8302C0 */  lw    $v1, 0x2c0($a0)
/* B18B1C 800A197C 3C0FDE00 */  lui   $t7, 0xde00
/* B18B20 800A1980 24690008 */  addiu $t1, $v1, 8
/* B18B24 800A1984 AC8902C0 */  sw    $t1, 0x2c0($a0)
/* B18B28 800A1988 AC6D0000 */  sw    $t5, ($v1)
/* B18B2C 800A198C 8FB80084 */  lw    $t8, 0x84($sp)
/* B18B30 800A1990 8F0E0000 */  lw    $t6, ($t8)
/* B18B34 800A1994 AC6E0004 */  sw    $t6, 4($v1)
/* B18B38 800A1998 8C8302C0 */  lw    $v1, 0x2c0($a0)
/* B18B3C 800A199C 24790008 */  addiu $t9, $v1, 8
/* B18B40 800A19A0 AC9902C0 */  sw    $t9, 0x2c0($a0)
/* B18B44 800A19A4 AC6F0000 */  sw    $t7, ($v1)
/* B18B48 800A19A8 8FAA0060 */  lw    $t2, 0x60($sp)
/* B18B4C 800A19AC AC6A0004 */  sw    $t2, 4($v1)
/* B18B50 800A19B0 8FA80084 */  lw    $t0, 0x84($sp)
/* B18B54 800A19B4 8D0B0000 */  lw    $t3, ($t0)
/* B18B58 800A19B8 256C0040 */  addiu $t4, $t3, 0x40
/* B18B5C 800A19BC 1000000C */  b     .L800A19F0
/* B18B60 800A19C0 AD0C0000 */   sw    $t4, ($t0)
.L800A19C4:
/* B18B64 800A19C4 1120000A */  beqz  $t1, .L800A19F0
/* B18B68 800A19C8 8FAD0084 */   lw    $t5, 0x84($sp)
/* B18B6C 800A19CC 3C058014 */  lui   $a1, %hi(D_80140194) # $a1, 0x8014
/* B18B70 800A19D0 24A50194 */  addiu $a1, %lo(D_80140194) # addiu $a1, $a1, 0x194
/* B18B74 800A19D4 8DA40000 */  lw    $a0, ($t5)
/* B18B78 800A19D8 0C034695 */  jal   Matrix_ToMtx
/* B18B7C 800A19DC 240604E1 */   li    $a2, 1249
/* B18B80 800A19E0 8FB80084 */  lw    $t8, 0x84($sp)
/* B18B84 800A19E4 8F0E0000 */  lw    $t6, ($t8)
/* B18B88 800A19E8 25D90040 */  addiu $t9, $t6, 0x40
/* B18B8C 800A19EC AF190000 */  sw    $t9, ($t8)
.L800A19F0:
/* B18B90 800A19F0 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18B94 800A19F4 8FA40068 */  lw    $a0, 0x68($sp)
/* B18B98 800A19F8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B18B9C 800A19FC 11E00005 */  beqz  $t7, .L800A1A14
/* B18BA0 800A1A00 27A6005C */   addiu $a2, $sp, 0x5c
/* B18BA4 800A1A04 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18BA8 800A1A08 27A70048 */  addiu $a3, $sp, 0x48
/* B18BAC 800A1A0C 01E0F809 */  jalr  $t7
/* B18BB0 800A1A10 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A1A14:
/* B18BB4 800A1A14 8FAB0064 */  lw    $t3, 0x64($sp)
/* B18BB8 800A1A18 240100FF */  li    $at, 255
/* B18BBC 800A1A1C 8FA40068 */  lw    $a0, 0x68($sp)
/* B18BC0 800A1A20 91650006 */  lbu   $a1, 6($t3)
/* B18BC4 800A1A24 8FA60070 */  lw    $a2, 0x70($sp)
/* B18BC8 800A1A28 8FA70074 */  lw    $a3, 0x74($sp)
/* B18BCC 800A1A2C 10A10009 */  beq   $a1, $at, .L800A1A54
/* B18BD0 800A1A30 8FAC0078 */   lw    $t4, 0x78($sp)
/* B18BD4 800A1A34 8FA8007C */  lw    $t0, 0x7c($sp)
/* B18BD8 800A1A38 8FA90080 */  lw    $t1, 0x80($sp)
/* B18BDC 800A1A3C 8FAD0084 */  lw    $t5, 0x84($sp)
/* B18BE0 800A1A40 AFAC0010 */  sw    $t4, 0x10($sp)
/* B18BE4 800A1A44 AFA80014 */  sw    $t0, 0x14($sp)
/* B18BE8 800A1A48 AFA90018 */  sw    $t1, 0x18($sp)
/* B18BEC 800A1A4C 0C028603 */  jal   func_800A180C
/* B18BF0 800A1A50 AFAD001C */   sw    $t5, 0x1c($sp)
.L800A1A54:
/* B18BF4 800A1A54 0C034221 */  jal   Matrix_Pull
/* B18BF8 800A1A58 00000000 */   nop   
/* B18BFC 800A1A5C 8FAE0064 */  lw    $t6, 0x64($sp)
/* B18C00 800A1A60 240100FF */  li    $at, 255
/* B18C04 800A1A64 8FA40068 */  lw    $a0, 0x68($sp)
/* B18C08 800A1A68 91C50007 */  lbu   $a1, 7($t6)
/* B18C0C 800A1A6C 8FA60070 */  lw    $a2, 0x70($sp)
/* B18C10 800A1A70 8FA70074 */  lw    $a3, 0x74($sp)
/* B18C14 800A1A74 10A10009 */  beq   $a1, $at, .L800A1A9C
/* B18C18 800A1A78 8FB90078 */   lw    $t9, 0x78($sp)
/* B18C1C 800A1A7C 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18C20 800A1A80 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18C24 800A1A84 8FAF0084 */  lw    $t7, 0x84($sp)
/* B18C28 800A1A88 AFB90010 */  sw    $t9, 0x10($sp)
/* B18C2C 800A1A8C AFB80014 */  sw    $t8, 0x14($sp)
/* B18C30 800A1A90 AFAA0018 */  sw    $t2, 0x18($sp)
/* B18C34 800A1A94 0C028603 */  jal   func_800A180C
/* B18C38 800A1A98 AFAF001C */   sw    $t7, 0x1c($sp)
.L800A1A9C:
/* B18C3C 800A1A9C 8FAB0068 */  lw    $t3, 0x68($sp)
/* B18C40 800A1AA0 3C068014 */  lui   $a2, %hi(D_801401A8) # $a2, 0x8014
/* B18C44 800A1AA4 24C601A8 */  addiu $a2, %lo(D_801401A8) # addiu $a2, $a2, 0x1a8
/* B18C48 800A1AA8 27A40034 */  addiu $a0, $sp, 0x34
/* B18C4C 800A1AAC 240704F1 */  li    $a3, 1265
/* B18C50 800A1AB0 0C031AD5 */  jal   func_800C6B54
/* B18C54 800A1AB4 8D650000 */   lw    $a1, ($t3)
/* B18C58 800A1AB8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B18C5C 800A1ABC 27BD0068 */  addiu $sp, $sp, 0x68
/* B18C60 800A1AC0 03E00008 */  jr    $ra
/* B18C64 800A1AC4 00000000 */   nop   

