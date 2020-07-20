.rdata
glabel D_80144AB0
    .asciz "this"
    .balign 4

glabel D_80144AB8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144AC8
    .asciz "glistpp"
    .balign 4

glabel D_80144AD0
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144AE0
    .asciz "glistp"
    .balign 4

glabel D_80144AE8
    .asciz "../PreRender.c"
    .balign 4

.text
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

