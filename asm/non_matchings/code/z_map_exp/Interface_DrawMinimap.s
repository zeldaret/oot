.rdata
glabel D_8013D958
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D968
    .asciz "Game_play_demo_mode_check=%d\n"
    .balign 4

glabel D_8013D988
    .asciz "../z_map_exp.c"
    .balign 4

.late_rodata
glabel jtbl_8013DC14
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0
    .word L80081AA0

glabel jtbl_8013DC64
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784
    .word L80081784

.text
glabel Interface_DrawMinimap
/* AF8880 800816E0 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x1402) # $t6, 0x8016
/* AF8884 800816E4 95CEFA62 */  lhu   $t6, %lo(gSaveContext+0x1402)($t6)
/* AF8888 800816E8 27BDFEF0 */  addiu $sp, $sp, -0x110
/* AF888C 800816EC AFBF001C */  sw    $ra, 0x1c($sp)
/* AF8890 800816F0 AFA40110 */  sw    $a0, 0x110($sp)
/* AF8894 800816F4 AFAE0100 */  sw    $t6, 0x100($sp)
/* AF8898 800816F8 8C850000 */  lw    $a1, ($a0)
/* AF889C 800816FC 3C068014 */  lui   $a2, %hi(D_8013D958) # $a2, 0x8014
/* AF88A0 80081700 24C6D958 */  addiu $a2, %lo(D_8013D958) # addiu $a2, $a2, -0x26a8
/* AF88A4 80081704 27A400EC */  addiu $a0, $sp, 0xec
/* AF88A8 80081708 24070272 */  li    $a3, 626
/* AF88AC 8008170C 0C031AB1 */  jal   func_800C6AC4
/* AF88B0 80081710 AFA500FC */   sw    $a1, 0xfc($sp)
/* AF88B4 80081714 8FB80110 */  lw    $t8, 0x110($sp)
/* AF88B8 80081718 3C190001 */  lui   $t9, 1
/* AF88BC 8008171C 8FA800FC */  lw    $t0, 0xfc($sp)
/* AF88C0 80081720 0338C821 */  addu  $t9, $t9, $t8
/* AF88C4 80081724 97390934 */  lhu   $t9, 0x934($t9)
/* AF88C8 80081728 2B210004 */  slti  $at, $t9, 4
/* AF88CC 8008172C 502002BC */  beql  $at, $zero, .L80082220
/* AF88D0 80081730 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF88D4 80081734 870200A4 */  lh    $v0, 0xa4($t8)
/* AF88D8 80081738 2841000A */  slti  $at, $v0, 0xa
/* AF88DC 8008173C 14200009 */  bnez  $at, .L80081764
/* AF88E0 80081740 244EFFAF */   addiu $t6, $v0, -0x51
/* AF88E4 80081744 2DC10014 */  sltiu $at, $t6, 0x14
/* AF88E8 80081748 102002B4 */  beqz  $at, .L8008221C
/* AF88EC 8008174C 000E7080 */   sll   $t6, $t6, 2
/* AF88F0 80081750 3C018014 */  lui   $at, %hi(jtbl_8013DC14)
/* AF88F4 80081754 002E0821 */  addu  $at, $at, $t6
/* AF88F8 80081758 8C2EDC14 */  lw    $t6, %lo(jtbl_8013DC14)($at)
/* AF88FC 8008175C 01C00008 */  jr    $t6
/* AF8900 80081760 00000000 */   nop   
.L80081764:
/* AF8904 80081764 2C41000A */  sltiu $at, $v0, 0xa
/* AF8908 80081768 102002AC */  beqz  $at, .L8008221C
/* AF890C 8008176C 00027880 */   sll   $t7, $v0, 2
/* AF8910 80081770 3C018014 */  lui   $at, %hi(jtbl_8013DC64)
/* AF8914 80081774 002F0821 */  addu  $at, $at, $t7
/* AF8918 80081778 8C2FDC64 */  lw    $t7, %lo(jtbl_8013DC64)($at)
/* AF891C 8008177C 01E00008 */  jr    $t7
/* AF8920 80081780 00000000 */   nop   
glabel L80081784
/* AF8924 80081784 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AF8928 80081788 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AF892C 8008178C 8FAE0110 */  lw    $t6, 0x110($sp)
/* AF8930 80081790 87380DD2 */  lh    $t8, 0xdd2($t9)
/* AF8934 80081794 57000091 */  bnezl $t8, .L800819DC
/* AF8938 80081798 8FAE0110 */   lw    $t6, 0x110($sp)
/* AF893C 8008179C 8DC40000 */  lw    $a0, ($t6)
/* AF8940 800817A0 0C025148 */  jal   func_80094520
/* AF8944 800817A4 AFA800FC */   sw    $t0, 0xfc($sp)
/* AF8948 800817A8 8FA800FC */  lw    $t0, 0xfc($sp)
/* AF894C 800817AC 3C19FC61 */  lui   $t9, (0xFC6196C3 >> 16) # lui $t9, 0xfc61
/* AF8950 800817B0 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* AF8954 800817B4 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8958 800817B8 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* AF895C 800817BC 373996C3 */  ori   $t9, (0xFC6196C3 & 0xFFFF) # ori $t9, $t9, 0x96c3
/* AF8960 800817C0 246F0008 */  addiu $t7, $v1, 8
/* AF8964 800817C4 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8968 800817C8 AC780004 */  sw    $t8, 4($v1)
/* AF896C 800817CC AC790000 */  sw    $t9, ($v1)
/* AF8970 800817D0 8FAE0100 */  lw    $t6, 0x100($sp)
/* AF8974 800817D4 3C0F8016 */  lui   $t7, %hi(gSaveContext) # $t7, 0x8016
/* AF8978 800817D8 25EFE660 */  addiu $t7, %lo(gSaveContext) # addiu $t7, $t7, -0x19a0
/* AF897C 800817DC 3C198012 */  lui   $t9, %hi(gBitFlags+8) # $t9, 0x8012
/* AF8980 800817E0 01CF3021 */  addu  $a2, $t6, $t7
/* AF8984 800817E4 90C200A8 */  lbu   $v0, 0xa8($a2)
/* AF8988 800817E8 8F397128 */  lw    $t9, %lo(gBitFlags+8)($t9)
/* AF898C 800817EC 0322C024 */  and   $t8, $t9, $v0
/* AF8990 800817F0 1300006D */  beqz  $t8, .L800819A8
/* AF8994 800817F4 00000000 */   nop   
/* AF8998 800817F8 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF899C 800817FC 3C0FFA00 */  lui   $t7, 0xfa00
/* AF89A0 80081800 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF89A4 80081804 246E0008 */  addiu $t6, $v1, 8
/* AF89A8 80081808 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF89AC 8008180C AC6F0000 */  sw    $t7, ($v1)
/* AF89B0 80081810 8FA50110 */  lw    $a1, 0x110($sp)
/* AF89B4 80081814 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF89B8 80081818 3C0A0700 */  lui   $t2, 0x700
/* AF89BC 8008181C 00A12821 */  addu  $a1, $a1, $at
/* AF89C0 80081820 94B90254 */  lhu   $t9, 0x254($a1)
/* AF89C4 80081824 3C0164FF */  lui   $at, (0x64FFFF00 >> 16) # lui $at, 0x64ff
/* AF89C8 80081828 3421FF00 */  ori   $at, (0x64FFFF00 & 0xFFFF) # ori $at, $at, 0xff00
/* AF89CC 8008182C 333800FF */  andi  $t8, $t9, 0xff
/* AF89D0 80081830 03017025 */  or    $t6, $t8, $at
/* AF89D4 80081834 AC6E0004 */  sw    $t6, 4($v1)
/* AF89D8 80081838 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF89DC 8008183C 3C19FD90 */  lui   $t9, 0xfd90
/* AF89E0 80081840 3C0BE700 */  lui   $t3, 0xe700
/* AF89E4 80081844 246F0008 */  addiu $t7, $v1, 8
/* AF89E8 80081848 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF89EC 8008184C AC790000 */  sw    $t9, ($v1)
/* AF89F0 80081850 8CB8013C */  lw    $t8, 0x13c($a1)
/* AF89F4 80081854 3C0FF590 */  lui   $t7, 0xf590
/* AF89F8 80081858 3C0CF200 */  lui   $t4, 0xf200
/* AF89FC 8008185C AC780004 */  sw    $t8, 4($v1)
/* AF8A00 80081860 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A04 80081864 3C18E600 */  lui   $t8, 0xe600
/* AF8A08 80081868 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8A0C 8008186C 246E0008 */  addiu $t6, $v1, 8
/* AF8A10 80081870 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8A14 80081874 AC6A0004 */  sw    $t2, 4($v1)
/* AF8A18 80081878 AC6F0000 */  sw    $t7, ($v1)
/* AF8A1C 8008187C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A20 80081880 3C0FF300 */  lui   $t7, 0xf300
/* AF8A24 80081884 3C01E400 */  lui   $at, 0xe400
/* AF8A28 80081888 24790008 */  addiu $t9, $v1, 8
/* AF8A2C 8008188C AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8A30 80081890 AC600004 */  sw    $zero, 4($v1)
/* AF8A34 80081894 AC780000 */  sw    $t8, ($v1)
/* AF8A38 80081898 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A3C 8008189C 3C19077F */  lui   $t9, (0x077F7156 >> 16) # lui $t9, 0x77f
/* AF8A40 800818A0 37397156 */  ori   $t9, (0x077F7156 & 0xFFFF) # ori $t9, $t9, 0x7156
/* AF8A44 800818A4 246E0008 */  addiu $t6, $v1, 8
/* AF8A48 800818A8 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8A4C 800818AC AC790004 */  sw    $t9, 4($v1)
/* AF8A50 800818B0 AC6F0000 */  sw    $t7, ($v1)
/* AF8A54 800818B4 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A58 800818B8 3C0FF580 */  lui   $t7, (0xF5800C00 >> 16) # lui $t7, 0xf580
/* AF8A5C 800818BC 35EF0C00 */  ori   $t7, (0xF5800C00 & 0xFFFF) # ori $t7, $t7, 0xc00
/* AF8A60 800818C0 24780008 */  addiu $t8, $v1, 8
/* AF8A64 800818C4 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8A68 800818C8 AC600004 */  sw    $zero, 4($v1)
/* AF8A6C 800818CC AC6B0000 */  sw    $t3, ($v1)
/* AF8A70 800818D0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A74 800818D4 3C180017 */  lui   $t8, (0x0017C150 >> 16) # lui $t8, 0x17
/* AF8A78 800818D8 3718C150 */  ori   $t8, (0x0017C150 & 0xFFFF) # ori $t8, $t8, 0xc150
/* AF8A7C 800818DC 246E0008 */  addiu $t6, $v1, 8
/* AF8A80 800818E0 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8A84 800818E4 AC600004 */  sw    $zero, 4($v1)
/* AF8A88 800818E8 AC6F0000 */  sw    $t7, ($v1)
/* AF8A8C 800818EC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8A90 800818F0 3C0DE100 */  lui   $t5, 0xe100
/* AF8A94 800818F4 3C1FF100 */  lui   $ra, 0xf100
/* AF8A98 800818F8 24790008 */  addiu $t9, $v1, 8
/* AF8A9C 800818FC AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8AA0 80081900 AC780004 */  sw    $t8, 4($v1)
/* AF8AA4 80081904 AC6C0000 */  sw    $t4, ($v1)
/* AF8AA8 80081908 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8AAC 8008190C 246E0008 */  addiu $t6, $v1, 8
/* AF8AB0 80081910 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8AB4 80081914 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8AB8 80081918 844F0E1E */  lh    $t7, 0xe1e($v0)
/* AF8ABC 8008191C 25F90055 */  addiu $t9, $t7, 0x55
/* AF8AC0 80081920 0019C080 */  sll   $t8, $t9, 2
/* AF8AC4 80081924 84590E1C */  lh    $t9, 0xe1c($v0)
/* AF8AC8 80081928 330E0FFF */  andi  $t6, $t8, 0xfff
/* AF8ACC 8008192C 01C17825 */  or    $t7, $t6, $at
/* AF8AD0 80081930 27380060 */  addiu $t8, $t9, 0x60
/* AF8AD4 80081934 00187080 */  sll   $t6, $t8, 2
/* AF8AD8 80081938 31D90FFF */  andi  $t9, $t6, 0xfff
/* AF8ADC 8008193C 0019C300 */  sll   $t8, $t9, 0xc
/* AF8AE0 80081940 01F87025 */  or    $t6, $t7, $t8
/* AF8AE4 80081944 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8AE8 80081948 AC6E0000 */  sw    $t6, ($v1)
/* AF8AEC 8008194C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8AF0 80081950 84590E1E */  lh    $t9, 0xe1e($v0)
/* AF8AF4 80081954 844E0E1C */  lh    $t6, 0xe1c($v0)
/* AF8AF8 80081958 00197880 */  sll   $t7, $t9, 2
/* AF8AFC 8008195C 31F80FFF */  andi  $t8, $t7, 0xfff
/* AF8B00 80081960 000EC880 */  sll   $t9, $t6, 2
/* AF8B04 80081964 332F0FFF */  andi  $t7, $t9, 0xfff
/* AF8B08 80081968 000F7300 */  sll   $t6, $t7, 0xc
/* AF8B0C 8008196C 030EC825 */  or    $t9, $t8, $t6
/* AF8B10 80081970 AC790004 */  sw    $t9, 4($v1)
/* AF8B14 80081974 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8B18 80081978 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AF8B1C 8008197C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AF8B20 80081980 246F0008 */  addiu $t7, $v1, 8
/* AF8B24 80081984 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8B28 80081988 AC600004 */  sw    $zero, 4($v1)
/* AF8B2C 8008198C AC6D0000 */  sw    $t5, ($v1)
/* AF8B30 80081990 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8B34 80081994 24780008 */  addiu $t8, $v1, 8
/* AF8B38 80081998 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8B3C 8008199C AC6E0004 */  sw    $t6, 4($v1)
/* AF8B40 800819A0 AC7F0000 */  sw    $ra, ($v1)
/* AF8B44 800819A4 90C200A8 */  lbu   $v0, 0xa8($a2)
.L800819A8:
/* AF8B48 800819A8 3C198012 */  lui   $t9, %hi(gBitFlags+4) # $t9, 0x8012
/* AF8B4C 800819AC 8F397124 */  lw    $t9, %lo(gBitFlags+4)($t9)
/* AF8B50 800819B0 03227824 */  and   $t7, $t9, $v0
/* AF8B54 800819B4 51E00009 */  beql  $t7, $zero, .L800819DC
/* AF8B58 800819B8 8FAE0110 */   lw    $t6, 0x110($sp)
/* AF8B5C 800819BC 0C020490 */  jal   func_80081240
/* AF8B60 800819C0 8FA40110 */   lw    $a0, 0x110($sp)
/* AF8B64 800819C4 8FB80110 */  lw    $t8, 0x110($sp)
/* AF8B68 800819C8 0C025148 */  jal   func_80094520
/* AF8B6C 800819CC 8F040000 */   lw    $a0, ($t8)
/* AF8B70 800819D0 0C01EE33 */  jal   MapMark_DrawConditionally
/* AF8B74 800819D4 8FA40110 */   lw    $a0, 0x110($sp)
/* AF8B78 800819D8 8FAE0110 */  lw    $t6, 0x110($sp)
.L800819DC:
/* AF8B7C 800819DC 2401FFDF */  li    $at, -33
/* AF8B80 800819E0 95D90020 */  lhu   $t9, 0x20($t6)
/* AF8B84 800819E4 03217827 */  nor   $t7, $t9, $at
/* AF8B88 800819E8 55E0020D */  bnezl $t7, .L80082220
/* AF8B8C 800819EC 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF8B90 800819F0 0C02FF21 */  jal   func_800BFC84
/* AF8B94 800819F4 01C02025 */   move  $a0, $t6
/* AF8B98 800819F8 54400209 */  bnezl $v0, .L80082220
/* AF8B9C 800819FC 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF8BA0 80081A00 0C02FF21 */  jal   func_800BFC84
/* AF8BA4 80081A04 8FA40110 */   lw    $a0, 0x110($sp)
/* AF8BA8 80081A08 3C048014 */  lui   $a0, %hi(D_8013D968) # $a0, 0x8014
/* AF8BAC 80081A0C 2484D968 */  addiu $a0, %lo(D_8013D968) # addiu $a0, $a0, -0x2698
/* AF8BB0 80081A10 0C00084C */  jal   osSyncPrintf
/* AF8BB4 80081A14 00402825 */   move  $a1, $v0
/* AF8BB8 80081A18 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AF8BBC 80081A1C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AF8BC0 80081A20 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF8BC4 80081A24 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF8BC8 80081A28 87190DD2 */  lh    $t9, 0xdd2($t8)
/* AF8BCC 80081A2C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF8BD0 80081A30 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF8BD4 80081A34 1720000E */  bnez  $t9, .L80081A70
/* AF8BD8 80081A38 24044814 */   li    $a0, 18452
/* AF8BDC 80081A3C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF8BE0 80081A40 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AF8BE4 80081A44 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AF8BE8 80081A48 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF8BEC 80081A4C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF8BF0 80081A50 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF8BF4 80081A54 AFA70010 */  sw    $a3, 0x10($sp)
/* AF8BF8 80081A58 AFAF0014 */  sw    $t7, 0x14($sp)
/* AF8BFC 80081A5C 24044813 */  li    $a0, 18451
/* AF8C00 80081A60 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF8C04 80081A64 24060004 */   li    $a2, 4
/* AF8C08 80081A68 10000007 */  b     .L80081A88
/* AF8C0C 80081A6C 00000000 */   nop   
.L80081A70:
/* AF8C10 80081A70 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AF8C14 80081A74 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AF8C18 80081A78 AFAE0014 */  sw    $t6, 0x14($sp)
/* AF8C1C 80081A7C 24060004 */  li    $a2, 4
/* AF8C20 80081A80 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF8C24 80081A84 AFA70010 */   sw    $a3, 0x10($sp)
.L80081A88:
/* AF8C28 80081A88 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8C2C 80081A8C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8C30 80081A90 84580DD2 */  lh    $t8, 0xdd2($v0)
/* AF8C34 80081A94 3B190001 */  xori  $t9, $t8, 1
/* AF8C38 80081A98 100001E0 */  b     .L8008221C
/* AF8C3C 80081A9C A4590DD2 */   sh    $t9, 0xdd2($v0)
glabel L80081AA0
/* AF8C40 80081AA0 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AF8C44 80081AA4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AF8C48 80081AA8 8FB80110 */  lw    $t8, 0x110($sp)
/* AF8C4C 80081AAC 85EE0DD2 */  lh    $t6, 0xdd2($t7)
/* AF8C50 80081AB0 55C001B1 */  bnezl $t6, .L80082178
/* AF8C54 80081AB4 8FB90110 */   lw    $t9, 0x110($sp)
/* AF8C58 80081AB8 8F040000 */  lw    $a0, ($t8)
/* AF8C5C 80081ABC 0C025148 */  jal   func_80094520
/* AF8C60 80081AC0 AFA800FC */   sw    $t0, 0xfc($sp)
/* AF8C64 80081AC4 8FA800FC */  lw    $t0, 0xfc($sp)
/* AF8C68 80081AC8 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* AF8C6C 80081ACC 3C0EFF2F */  lui   $t6, (0xFF2FFFFF >> 16) # lui $t6, 0xff2f
/* AF8C70 80081AD0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8C74 80081AD4 35CEFFFF */  ori   $t6, (0xFF2FFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* AF8C78 80081AD8 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* AF8C7C 80081ADC 24790008 */  addiu $t9, $v1, 8
/* AF8C80 80081AE0 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8C84 80081AE4 AC6E0004 */  sw    $t6, 4($v1)
/* AF8C88 80081AE8 AC6F0000 */  sw    $t7, ($v1)
/* AF8C8C 80081AEC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8C90 80081AF0 3C19FA00 */  lui   $t9, 0xfa00
/* AF8C94 80081AF4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8C98 80081AF8 24780008 */  addiu $t8, $v1, 8
/* AF8C9C 80081AFC AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8CA0 80081B00 AC790000 */  sw    $t9, ($v1)
/* AF8CA4 80081B04 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8CA8 80081B08 8FA50110 */  lw    $a1, 0x110($sp)
/* AF8CAC 80081B0C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF8CB0 80081B10 844F0F3C */  lh    $t7, 0xf3c($v0)
/* AF8CB4 80081B14 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF8CB8 80081B18 00A12821 */  addu  $a1, $a1, $at
/* AF8CBC 80081B1C 31EE00FF */  andi  $t6, $t7, 0xff
/* AF8CC0 80081B20 844F0F38 */  lh    $t7, 0xf38($v0)
/* AF8CC4 80081B24 000EC200 */  sll   $t8, $t6, 8
/* AF8CC8 80081B28 3C0A0700 */  lui   $t2, 0x700
/* AF8CCC 80081B2C 000F7600 */  sll   $t6, $t7, 0x18
/* AF8CD0 80081B30 844F0F3A */  lh    $t7, 0xf3a($v0)
/* AF8CD4 80081B34 030EC825 */  or    $t9, $t8, $t6
/* AF8CD8 80081B38 3C098016 */  lui   $t1, %hi(D_8015FFD0) # $t1, 0x8016
/* AF8CDC 80081B3C 31F800FF */  andi  $t8, $t7, 0xff
/* AF8CE0 80081B40 00187400 */  sll   $t6, $t8, 0x10
/* AF8CE4 80081B44 94B80254 */  lhu   $t8, 0x254($a1)
/* AF8CE8 80081B48 032E7825 */  or    $t7, $t9, $t6
/* AF8CEC 80081B4C 2529FFD0 */  addiu $t1, %lo(D_8015FFD0) # addiu $t1, $t1, -0x30
/* AF8CF0 80081B50 331900FF */  andi  $t9, $t8, 0xff
/* AF8CF4 80081B54 01F97025 */  or    $t6, $t7, $t9
/* AF8CF8 80081B58 AC6E0004 */  sw    $t6, 4($v1)
/* AF8CFC 80081B5C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8D00 80081B60 3C0FFD70 */  lui   $t7, 0xfd70
/* AF8D04 80081B64 24780008 */  addiu $t8, $v1, 8
/* AF8D08 80081B68 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF8D0C 80081B6C AC6F0000 */  sw    $t7, ($v1)
/* AF8D10 80081B70 8CB9013C */  lw    $t9, 0x13c($a1)
/* AF8D14 80081B74 3C18F570 */  lui   $t8, 0xf570
/* AF8D18 80081B78 AC790004 */  sw    $t9, 4($v1)
/* AF8D1C 80081B7C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8D20 80081B80 3C19E600 */  lui   $t9, 0xe600
/* AF8D24 80081B84 246E0008 */  addiu $t6, $v1, 8
/* AF8D28 80081B88 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8D2C 80081B8C AC6A0004 */  sw    $t2, 4($v1)
/* AF8D30 80081B90 AC780000 */  sw    $t8, ($v1)
/* AF8D34 80081B94 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8D38 80081B98 3C18F300 */  lui   $t8, 0xf300
/* AF8D3C 80081B9C 246F0008 */  addiu $t7, $v1, 8
/* AF8D40 80081BA0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8D44 80081BA4 AC600004 */  sw    $zero, 4($v1)
/* AF8D48 80081BA8 AC790000 */  sw    $t9, ($v1)
/* AF8D4C 80081BAC 8D0702B0 */  lw    $a3, 0x2b0($t0)
/* AF8D50 80081BB0 24EE0008 */  addiu $t6, $a3, 8
/* AF8D54 80081BB4 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF8D58 80081BB8 ACF80000 */  sw    $t8, ($a3)
/* AF8D5C 80081BBC 8D240000 */  lw    $a0, ($t1)
/* AF8D60 80081BC0 8FA60100 */  lw    $a2, 0x100($sp)
/* AF8D64 80081BC4 8C8F0040 */  lw    $t7, 0x40($a0)
/* AF8D68 80081BC8 8C8E0044 */  lw    $t6, 0x44($a0)
/* AF8D6C 80081BCC 00063040 */  sll   $a2, $a2, 1
/* AF8D70 80081BD0 01E6C821 */  addu  $t9, $t7, $a2
/* AF8D74 80081BD4 01C6C021 */  addu  $t8, $t6, $a2
/* AF8D78 80081BD8 870F0000 */  lh    $t7, ($t8)
/* AF8D7C 80081BDC 87220000 */  lh    $v0, ($t9)
/* AF8D80 80081BE0 240407FF */  li    $a0, 2047
/* AF8D84 80081BE4 01E20019 */  multu $t7, $v0
/* AF8D88 80081BE8 00002812 */  mflo  $a1
/* AF8D8C 80081BEC 24A50003 */  addiu $a1, $a1, 3
/* AF8D90 80081BF0 00052883 */  sra   $a1, $a1, 2
/* AF8D94 80081BF4 24A5FFFF */  addiu $a1, $a1, -1
/* AF8D98 80081BF8 28A107FF */  slti  $at, $a1, 0x7ff
/* AF8D9C 80081BFC 10200003 */  beqz  $at, .L80081C0C
/* AF8DA0 80081C00 00000000 */   nop   
/* AF8DA4 80081C04 10000001 */  b     .L80081C0C
/* AF8DA8 80081C08 00A02025 */   move  $a0, $a1
.L80081C0C:
/* AF8DAC 80081C0C 04410003 */  bgez  $v0, .L80081C1C
/* AF8DB0 80081C10 00021903 */   sra   $v1, $v0, 4
/* AF8DB4 80081C14 2441000F */  addiu $at, $v0, 0xf
/* AF8DB8 80081C18 00011903 */  sra   $v1, $at, 4
.L80081C1C:
/* AF8DBC 80081C1C 1C600003 */  bgtz  $v1, .L80081C2C
/* AF8DC0 80081C20 00602825 */   move  $a1, $v1
/* AF8DC4 80081C24 10000001 */  b     .L80081C2C
/* AF8DC8 80081C28 24050001 */   li    $a1, 1
.L80081C2C:
/* AF8DCC 80081C2C 1C600003 */  bgtz  $v1, .L80081C3C
/* AF8DD0 80081C30 24B907FF */   addiu $t9, $a1, 0x7ff
/* AF8DD4 80081C34 10000002 */  b     .L80081C40
/* AF8DD8 80081C38 24020001 */   li    $v0, 1
.L80081C3C:
/* AF8DDC 80081C3C 00601025 */  move  $v0, $v1
.L80081C40:
/* AF8DE0 80081C40 0322001A */  div   $zero, $t9, $v0
/* AF8DE4 80081C44 00007012 */  mflo  $t6
/* AF8DE8 80081C48 31D80FFF */  andi  $t8, $t6, 0xfff
/* AF8DEC 80081C4C 14400002 */  bnez  $v0, .L80081C58
/* AF8DF0 80081C50 00000000 */   nop   
/* AF8DF4 80081C54 0007000D */  break 7
.L80081C58:
/* AF8DF8 80081C58 2401FFFF */  li    $at, -1
/* AF8DFC 80081C5C 14410004 */  bne   $v0, $at, .L80081C70
/* AF8E00 80081C60 3C018000 */   lui   $at, 0x8000
/* AF8E04 80081C64 17210002 */  bne   $t9, $at, .L80081C70
/* AF8E08 80081C68 00000000 */   nop   
/* AF8E0C 80081C6C 0006000D */  break 6
.L80081C70:
/* AF8E10 80081C70 30990FFF */  andi  $t9, $a0, 0xfff
/* AF8E14 80081C74 00197300 */  sll   $t6, $t9, 0xc
/* AF8E18 80081C78 030A7825 */  or    $t7, $t8, $t2
/* AF8E1C 80081C7C 01EEC025 */  or    $t8, $t7, $t6
/* AF8E20 80081C80 ACF80004 */  sw    $t8, 4($a3)
/* AF8E24 80081C84 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8E28 80081C88 3C0BE700 */  lui   $t3, 0xe700
/* AF8E2C 80081C8C 3C01F560 */  lui   $at, 0xf560
/* AF8E30 80081C90 24790008 */  addiu $t9, $v1, 8
/* AF8E34 80081C94 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8E38 80081C98 AC600004 */  sw    $zero, 4($v1)
/* AF8E3C 80081C9C AC6B0000 */  sw    $t3, ($v1)
/* AF8E40 80081CA0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8E44 80081CA4 3C0CF200 */  lui   $t4, 0xf200
/* AF8E48 80081CA8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8E4C 80081CAC 246F0008 */  addiu $t7, $v1, 8
/* AF8E50 80081CB0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8E54 80081CB4 8D2E0000 */  lw    $t6, ($t1)
/* AF8E58 80081CB8 3C0DE100 */  lui   $t5, 0xe100
/* AF8E5C 80081CBC 3C1FF100 */  lui   $ra, 0xf100
/* AF8E60 80081CC0 8DD80040 */  lw    $t8, 0x40($t6)
/* AF8E64 80081CC4 0306C821 */  addu  $t9, $t8, $a2
/* AF8E68 80081CC8 872F0000 */  lh    $t7, ($t9)
/* AF8E6C 80081CCC AC600004 */  sw    $zero, 4($v1)
/* AF8E70 80081CD0 000F7043 */  sra   $t6, $t7, 1
/* AF8E74 80081CD4 25D80007 */  addiu $t8, $t6, 7
/* AF8E78 80081CD8 0018C8C3 */  sra   $t9, $t8, 3
/* AF8E7C 80081CDC 332F01FF */  andi  $t7, $t9, 0x1ff
/* AF8E80 80081CE0 000F7240 */  sll   $t6, $t7, 9
/* AF8E84 80081CE4 01C1C025 */  or    $t8, $t6, $at
/* AF8E88 80081CE8 AC780000 */  sw    $t8, ($v1)
/* AF8E8C 80081CEC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8E90 80081CF0 3C01E400 */  lui   $at, 0xe400
/* AF8E94 80081CF4 24790008 */  addiu $t9, $v1, 8
/* AF8E98 80081CF8 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8E9C 80081CFC AC6C0000 */  sw    $t4, ($v1)
/* AF8EA0 80081D00 8D240000 */  lw    $a0, ($t1)
/* AF8EA4 80081D04 8C8F0044 */  lw    $t7, 0x44($a0)
/* AF8EA8 80081D08 01E67021 */  addu  $t6, $t7, $a2
/* AF8EAC 80081D0C 85D80000 */  lh    $t8, ($t6)
/* AF8EB0 80081D10 2719FFFF */  addiu $t9, $t8, -1
/* AF8EB4 80081D14 8C980040 */  lw    $t8, 0x40($a0)
/* AF8EB8 80081D18 00197880 */  sll   $t7, $t9, 2
/* AF8EBC 80081D1C 31EE0FFF */  andi  $t6, $t7, 0xfff
/* AF8EC0 80081D20 0306C821 */  addu  $t9, $t8, $a2
/* AF8EC4 80081D24 872F0000 */  lh    $t7, ($t9)
/* AF8EC8 80081D28 25F8FFFF */  addiu $t8, $t7, -1
/* AF8ECC 80081D2C 0018C880 */  sll   $t9, $t8, 2
/* AF8ED0 80081D30 332F0FFF */  andi  $t7, $t9, 0xfff
/* AF8ED4 80081D34 000FC300 */  sll   $t8, $t7, 0xc
/* AF8ED8 80081D38 01D8C825 */  or    $t9, $t6, $t8
/* AF8EDC 80081D3C AC790004 */  sw    $t9, 4($v1)
/* AF8EE0 80081D40 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8EE4 80081D44 246F0008 */  addiu $t7, $v1, 8
/* AF8EE8 80081D48 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8EEC 80081D4C 8D240000 */  lw    $a0, ($t1)
/* AF8EF0 80081D50 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8EF4 80081D54 00602825 */  move  $a1, $v1
/* AF8EF8 80081D58 8C8E0044 */  lw    $t6, 0x44($a0)
/* AF8EFC 80081D5C 844F0DD0 */  lh    $t7, 0xdd0($v0)
/* AF8F00 80081D60 01C6C021 */  addu  $t8, $t6, $a2
/* AF8F04 80081D64 87190000 */  lh    $t9, ($t8)
/* AF8F08 80081D68 032F7021 */  addu  $t6, $t9, $t7
/* AF8F0C 80081D6C 000EC080 */  sll   $t8, $t6, 2
/* AF8F10 80081D70 33190FFF */  andi  $t9, $t8, 0xfff
/* AF8F14 80081D74 8C980040 */  lw    $t8, 0x40($a0)
/* AF8F18 80081D78 03217825 */  or    $t7, $t9, $at
/* AF8F1C 80081D7C 844E0DCE */  lh    $t6, 0xdce($v0)
/* AF8F20 80081D80 0306C821 */  addu  $t9, $t8, $a2
/* AF8F24 80081D84 87380000 */  lh    $t8, ($t9)
/* AF8F28 80081D88 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF8F2C 80081D8C 24010052 */  li    $at, 82
/* AF8F30 80081D90 01D8C821 */  addu  $t9, $t6, $t8
/* AF8F34 80081D94 00197080 */  sll   $t6, $t9, 2
/* AF8F38 80081D98 31D80FFF */  andi  $t8, $t6, 0xfff
/* AF8F3C 80081D9C 0018CB00 */  sll   $t9, $t8, 0xc
/* AF8F40 80081DA0 01F97025 */  or    $t6, $t7, $t9
/* AF8F44 80081DA4 AC6E0000 */  sw    $t6, ($v1)
/* AF8F48 80081DA8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF8F4C 80081DAC 84580DD0 */  lh    $t8, 0xdd0($v0)
/* AF8F50 80081DB0 844E0DCE */  lh    $t6, 0xdce($v0)
/* AF8F54 80081DB4 00187880 */  sll   $t7, $t8, 2
/* AF8F58 80081DB8 31F90FFF */  andi  $t9, $t7, 0xfff
/* AF8F5C 80081DBC 000EC080 */  sll   $t8, $t6, 2
/* AF8F60 80081DC0 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF8F64 80081DC4 000F7300 */  sll   $t6, $t7, 0xc
/* AF8F68 80081DC8 032EC025 */  or    $t8, $t9, $t6
/* AF8F6C 80081DCC AC780004 */  sw    $t8, 4($v1)
/* AF8F70 80081DD0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8F74 80081DD4 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AF8F78 80081DD8 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AF8F7C 80081DDC 246F0008 */  addiu $t7, $v1, 8
/* AF8F80 80081DE0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF8F84 80081DE4 AC600004 */  sw    $zero, 4($v1)
/* AF8F88 80081DE8 AC6D0000 */  sw    $t5, ($v1)
/* AF8F8C 80081DEC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF8F90 80081DF0 3C0F8016 */  lui   $t7, %hi(gSaveContext+4) # $t7, 0x8016
/* AF8F94 80081DF4 24790008 */  addiu $t9, $v1, 8
/* AF8F98 80081DF8 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF8F9C 80081DFC AC6E0004 */  sw    $t6, 4($v1)
/* AF8FA0 80081E00 AC7F0000 */  sw    $ra, ($v1)
/* AF8FA4 80081E04 8FB80110 */  lw    $t8, 0x110($sp)
/* AF8FA8 80081E08 00601025 */  move  $v0, $v1
/* AF8FAC 80081E0C 870400A4 */  lh    $a0, 0xa4($t8)
/* AF8FB0 80081E10 10810005 */  beq   $a0, $at, .L80081E28
/* AF8FB4 80081E14 24010055 */   li    $at, 85
/* AF8FB8 80081E18 10810003 */  beq   $a0, $at, .L80081E28
/* AF8FBC 80081E1C 24010059 */   li    $at, 89
/* AF8FC0 80081E20 5481000B */  bnel  $a0, $at, .L80081E50
/* AF8FC4 80081E24 8D390000 */   lw    $t9, ($t1)
.L80081E28:
/* AF8FC8 80081E28 8DEFE664 */  lw    $t7, %lo(gSaveContext+4)($t7)
/* AF8FCC 80081E2C 24010011 */  li    $at, 17
/* AF8FD0 80081E30 24020011 */  li    $v0, 17
/* AF8FD4 80081E34 11E00003 */  beqz  $t7, .L80081E44
/* AF8FD8 80081E38 00000000 */   nop   
/* AF8FDC 80081E3C 10000001 */  b     .L80081E44
/* AF8FE0 80081E40 24020005 */   li    $v0, 5
.L80081E44:
/* AF8FE4 80081E44 5041007D */  beql  $v0, $at, .L8008203C
/* AF8FE8 80081E48 24010059 */   li    $at, 89
/* AF8FEC 80081E4C 8D390000 */  lw    $t9, ($t1)
.L80081E50:
/* AF8FF0 80081E50 3C078012 */  lui   $a3, %hi(D_80123A5C) # $a3, 0x8012
/* AF8FF4 80081E54 24E73A5C */  addiu $a3, %lo(D_80123A5C) # addiu $a3, $a3, 0x3a5c
/* AF8FF8 80081E58 84EE0000 */  lh    $t6, ($a3)
/* AF8FFC 80081E5C 8F220050 */  lw    $v0, 0x50($t9)
/* AF9000 80081E60 3405FFFF */  li    $a1, 65535
/* AF9004 80081E64 000EC040 */  sll   $t8, $t6, 1
/* AF9008 80081E68 00587821 */  addu  $t7, $v0, $t8
/* AF900C 80081E6C 95E30000 */  lhu   $v1, ($t7)
/* AF9010 80081E70 50A3000E */  beql  $a1, $v1, .L80081EAC
/* AF9014 80081E74 8D0302B0 */   lw    $v1, 0x2b0($t0)
/* AF9018 80081E78 10A3006F */  beq   $a1, $v1, .L80082038
/* AF901C 80081E7C 0046C821 */   addu  $t9, $v0, $a2
/* AF9020 80081E80 972E0000 */  lhu   $t6, ($t9)
/* AF9024 80081E84 3C0F8012 */  lui   $t7, %hi(gBitFlags)
/* AF9028 80081E88 3C198016 */  lui   $t9, %hi(gSaveContext+0xf2c) # $t9, 0x8016
/* AF902C 80081E8C 000EC080 */  sll   $t8, $t6, 2
/* AF9030 80081E90 01F87821 */  addu  $t7, $t7, $t8
/* AF9034 80081E94 8DEF7120 */  lw    $t7, %lo(gBitFlags)($t7)
/* AF9038 80081E98 9739F58C */  lhu   $t9, %lo(gSaveContext+0xf2c)($t9)
/* AF903C 80081E9C 01F97024 */  and   $t6, $t7, $t9
/* AF9040 80081EA0 51C00066 */  beql  $t6, $zero, .L8008203C
/* AF9044 80081EA4 24010059 */   li    $at, 89
/* AF9048 80081EA8 8D0302B0 */  lw    $v1, 0x2b0($t0)
.L80081EAC:
/* AF904C 80081EAC 3C190200 */  lui   $t9, %hi(D_02002500) # $t9, 0x200
/* AF9050 80081EB0 27392500 */  addiu $t9, %lo(D_02002500) # addiu $t9, $t9, 0x2500
/* AF9054 80081EB4 24780008 */  addiu $t8, $v1, 8
/* AF9058 80081EB8 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AF905C 80081EBC 3C0FFD10 */  lui   $t7, 0xfd10
/* AF9060 80081EC0 AC6F0000 */  sw    $t7, ($v1)
/* AF9064 80081EC4 AC790004 */  sw    $t9, 4($v1)
/* AF9068 80081EC8 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF906C 80081ECC 3C18F510 */  lui   $t8, 0xf510
/* AF9070 80081ED0 3C19E600 */  lui   $t9, 0xe600
/* AF9074 80081ED4 246E0008 */  addiu $t6, $v1, 8
/* AF9078 80081ED8 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF907C 80081EDC AC6A0004 */  sw    $t2, 4($v1)
/* AF9080 80081EE0 AC780000 */  sw    $t8, ($v1)
/* AF9084 80081EE4 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9088 80081EE8 3C18F300 */  lui   $t8, 0xf300
/* AF908C 80081EEC 3C01E400 */  lui   $at, 0xe400
/* AF9090 80081EF0 246F0008 */  addiu $t7, $v1, 8
/* AF9094 80081EF4 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9098 80081EF8 AC600004 */  sw    $zero, 4($v1)
/* AF909C 80081EFC AC790000 */  sw    $t9, ($v1)
/* AF90A0 80081F00 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90A4 80081F04 3C0F0703 */  lui   $t7, (0x0703F400 >> 16) # lui $t7, 0x703
/* AF90A8 80081F08 35EFF400 */  ori   $t7, (0x0703F400 & 0xFFFF) # ori $t7, $t7, 0xf400
/* AF90AC 80081F0C 246E0008 */  addiu $t6, $v1, 8
/* AF90B0 80081F10 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF90B4 80081F14 AC6F0004 */  sw    $t7, 4($v1)
/* AF90B8 80081F18 AC780000 */  sw    $t8, ($v1)
/* AF90BC 80081F1C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90C0 80081F20 3C18F510 */  lui   $t8, (0xF5100400 >> 16) # lui $t8, 0xf510
/* AF90C4 80081F24 37180400 */  ori   $t8, (0xF5100400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF90C8 80081F28 24790008 */  addiu $t9, $v1, 8
/* AF90CC 80081F2C AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF90D0 80081F30 AC600004 */  sw    $zero, 4($v1)
/* AF90D4 80081F34 AC6B0000 */  sw    $t3, ($v1)
/* AF90D8 80081F38 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90DC 80081F3C 3C190001 */  lui   $t9, (0x0001C01C >> 16) # lui $t9, 1
/* AF90E0 80081F40 3739C01C */  ori   $t9, (0x0001C01C & 0xFFFF) # ori $t9, $t9, 0xc01c
/* AF90E4 80081F44 246E0008 */  addiu $t6, $v1, 8
/* AF90E8 80081F48 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF90EC 80081F4C AC600004 */  sw    $zero, 4($v1)
/* AF90F0 80081F50 AC780000 */  sw    $t8, ($v1)
/* AF90F4 80081F54 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF90F8 80081F58 246F0008 */  addiu $t7, $v1, 8
/* AF90FC 80081F5C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9100 80081F60 AC790004 */  sw    $t9, 4($v1)
/* AF9104 80081F64 AC6C0000 */  sw    $t4, ($v1)
/* AF9108 80081F68 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF910C 80081F6C 246E0008 */  addiu $t6, $v1, 8
/* AF9110 80081F70 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF9114 80081F74 8D240000 */  lw    $a0, ($t1)
/* AF9118 80081F78 84E20000 */  lh    $v0, ($a3)
/* AF911C 80081F7C 8C98004C */  lw    $t8, 0x4c($a0)
/* AF9120 80081F80 00021040 */  sll   $v0, $v0, 1
/* AF9124 80081F84 03027821 */  addu  $t7, $t8, $v0
/* AF9128 80081F88 85F90000 */  lh    $t9, ($t7)
/* AF912C 80081F8C 272E0008 */  addiu $t6, $t9, 8
/* AF9130 80081F90 000EC080 */  sll   $t8, $t6, 2
/* AF9134 80081F94 8C8E0048 */  lw    $t6, 0x48($a0)
/* AF9138 80081F98 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF913C 80081F9C 01E1C825 */  or    $t9, $t7, $at
/* AF9140 80081FA0 01C2C021 */  addu  $t8, $t6, $v0
/* AF9144 80081FA4 870F0000 */  lh    $t7, ($t8)
/* AF9148 80081FA8 25EE0008 */  addiu $t6, $t7, 8
/* AF914C 80081FAC 000EC080 */  sll   $t8, $t6, 2
/* AF9150 80081FB0 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF9154 80081FB4 000F7300 */  sll   $t6, $t7, 0xc
/* AF9158 80081FB8 032EC025 */  or    $t8, $t9, $t6
/* AF915C 80081FBC AC780000 */  sw    $t8, ($v1)
/* AF9160 80081FC0 8D240000 */  lw    $a0, ($t1)
/* AF9164 80081FC4 84E20000 */  lh    $v0, ($a3)
/* AF9168 80081FC8 8C8F004C */  lw    $t7, 0x4c($a0)
/* AF916C 80081FCC 00021040 */  sll   $v0, $v0, 1
/* AF9170 80081FD0 01E2C821 */  addu  $t9, $t7, $v0
/* AF9174 80081FD4 872E0000 */  lh    $t6, ($t9)
/* AF9178 80081FD8 8C990048 */  lw    $t9, 0x48($a0)
/* AF917C 80081FDC 000EC080 */  sll   $t8, $t6, 2
/* AF9180 80081FE0 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF9184 80081FE4 03227021 */  addu  $t6, $t9, $v0
/* AF9188 80081FE8 85D80000 */  lh    $t8, ($t6)
/* AF918C 80081FEC 0018C880 */  sll   $t9, $t8, 2
/* AF9190 80081FF0 332E0FFF */  andi  $t6, $t9, 0xfff
/* AF9194 80081FF4 000EC300 */  sll   $t8, $t6, 0xc
/* AF9198 80081FF8 01F8C825 */  or    $t9, $t7, $t8
/* AF919C 80081FFC AC790004 */  sw    $t9, 4($v1)
/* AF91A0 80082000 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF91A4 80082004 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AF91A8 80082008 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF91AC 8008200C 246E0008 */  addiu $t6, $v1, 8
/* AF91B0 80082010 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF91B4 80082014 AC600004 */  sw    $zero, 4($v1)
/* AF91B8 80082018 AC6D0000 */  sw    $t5, ($v1)
/* AF91BC 8008201C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF91C0 80082020 246F0008 */  addiu $t7, $v1, 8
/* AF91C4 80082024 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF91C8 80082028 AC780004 */  sw    $t8, 4($v1)
/* AF91CC 8008202C AC7F0000 */  sw    $ra, ($v1)
/* AF91D0 80082030 8FB90110 */  lw    $t9, 0x110($sp)
/* AF91D4 80082034 872400A4 */  lh    $a0, 0xa4($t9)
.L80082038:
/* AF91D8 80082038 24010059 */  li    $at, 89
.L8008203C:
/* AF91DC 8008203C 1481004B */  bne   $a0, $at, .L8008216C
/* AF91E0 80082040 3C0E8012 */   lui   $t6, %hi(gBitFlags+0x24) # $t6, 0x8012
/* AF91E4 80082044 3C0F8016 */  lui   $t7, %hi(gSaveContext+0xf2c) # $t7, 0x8016
/* AF91E8 80082048 95EFF58C */  lhu   $t7, %lo(gSaveContext+0xf2c)($t7)
/* AF91EC 8008204C 8DCE7144 */  lw    $t6, %lo(gBitFlags+0x24)($t6)
/* AF91F0 80082050 3C040200 */  lui   $a0, %hi(D_02002500) # $a0, 0x200
/* AF91F4 80082054 01CFC024 */  and   $t8, $t6, $t7
/* AF91F8 80082058 13000044 */  beqz  $t8, .L8008216C
/* AF91FC 8008205C 00000000 */   nop   
/* AF9200 80082060 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9204 80082064 24842500 */  addiu $a0, %lo(D_02002500) # addiu $a0, $a0, 0x2500
/* AF9208 80082068 3C0EFD10 */  lui   $t6, 0xfd10
/* AF920C 8008206C 24790008 */  addiu $t9, $v1, 8
/* AF9210 80082070 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF9214 80082074 AC640004 */  sw    $a0, 4($v1)
/* AF9218 80082078 AC6E0000 */  sw    $t6, ($v1)
/* AF921C 8008207C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9220 80082080 3C18F510 */  lui   $t8, 0xf510
/* AF9224 80082084 3C0EE600 */  lui   $t6, 0xe600
/* AF9228 80082088 246F0008 */  addiu $t7, $v1, 8
/* AF922C 8008208C AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9230 80082090 AC6A0004 */  sw    $t2, 4($v1)
/* AF9234 80082094 AC780000 */  sw    $t8, ($v1)
/* AF9238 80082098 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF923C 8008209C 3C18F300 */  lui   $t8, 0xf300
/* AF9240 800820A0 24790008 */  addiu $t9, $v1, 8
/* AF9244 800820A4 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF9248 800820A8 AC600004 */  sw    $zero, 4($v1)
/* AF924C 800820AC AC6E0000 */  sw    $t6, ($v1)
/* AF9250 800820B0 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9254 800820B4 3C190703 */  lui   $t9, (0x0703F400 >> 16) # lui $t9, 0x703
/* AF9258 800820B8 3739F400 */  ori   $t9, (0x0703F400 & 0xFFFF) # ori $t9, $t9, 0xf400
/* AF925C 800820BC 246F0008 */  addiu $t7, $v1, 8
/* AF9260 800820C0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9264 800820C4 AC790004 */  sw    $t9, 4($v1)
/* AF9268 800820C8 AC780000 */  sw    $t8, ($v1)
/* AF926C 800820CC 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF9270 800820D0 3C18F510 */  lui   $t8, (0xF5100400 >> 16) # lui $t8, 0xf510
/* AF9274 800820D4 37180400 */  ori   $t8, (0xF5100400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF9278 800820D8 246E0008 */  addiu $t6, $v1, 8
/* AF927C 800820DC AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF9280 800820E0 AC600004 */  sw    $zero, 4($v1)
/* AF9284 800820E4 AC6B0000 */  sw    $t3, ($v1)
/* AF9288 800820E8 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF928C 800820EC 3C0E0001 */  lui   $t6, (0x0001C01C >> 16) # lui $t6, 1
/* AF9290 800820F0 35CEC01C */  ori   $t6, (0x0001C01C & 0xFFFF) # ori $t6, $t6, 0xc01c
/* AF9294 800820F4 246F0008 */  addiu $t7, $v1, 8
/* AF9298 800820F8 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF929C 800820FC AC600004 */  sw    $zero, 4($v1)
/* AF92A0 80082100 AC780000 */  sw    $t8, ($v1)
/* AF92A4 80082104 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92A8 80082108 3C18E445 */  lui   $t8, (0xE4458288 >> 16) # lui $t8, 0xe445
/* AF92AC 8008210C 37188288 */  ori   $t8, (0xE4458288 & 0xFFFF) # ori $t8, $t8, 0x8288
/* AF92B0 80082110 24790008 */  addiu $t9, $v1, 8
/* AF92B4 80082114 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AF92B8 80082118 AC6E0004 */  sw    $t6, 4($v1)
/* AF92BC 8008211C AC6C0000 */  sw    $t4, ($v1)
/* AF92C0 80082120 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92C4 80082124 3C190043 */  lui   $t9, (0x00438268 >> 16) # lui $t9, 0x43
/* AF92C8 80082128 37398268 */  ori   $t9, (0x00438268 & 0xFFFF) # ori $t9, $t9, 0x8268
/* AF92CC 8008212C 246F0008 */  addiu $t7, $v1, 8
/* AF92D0 80082130 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF92D4 80082134 AC790004 */  sw    $t9, 4($v1)
/* AF92D8 80082138 AC780000 */  sw    $t8, ($v1)
/* AF92DC 8008213C 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92E0 80082140 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AF92E4 80082144 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF92E8 80082148 246E0008 */  addiu $t6, $v1, 8
/* AF92EC 8008214C AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AF92F0 80082150 AC600004 */  sw    $zero, 4($v1)
/* AF92F4 80082154 AC6D0000 */  sw    $t5, ($v1)
/* AF92F8 80082158 8D0302B0 */  lw    $v1, 0x2b0($t0)
/* AF92FC 8008215C 246F0008 */  addiu $t7, $v1, 8
/* AF9300 80082160 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AF9304 80082164 AC780004 */  sw    $t8, 4($v1)
/* AF9308 80082168 AC7F0000 */  sw    $ra, ($v1)
.L8008216C:
/* AF930C 8008216C 0C020490 */  jal   func_80081240
/* AF9310 80082170 8FA40110 */   lw    $a0, 0x110($sp)
/* AF9314 80082174 8FB90110 */  lw    $t9, 0x110($sp)
.L80082178:
/* AF9318 80082178 2401FFDF */  li    $at, -33
/* AF931C 8008217C 972E0020 */  lhu   $t6, 0x20($t9)
/* AF9320 80082180 01C17827 */  nor   $t7, $t6, $at
/* AF9324 80082184 55E00026 */  bnezl $t7, .L80082220
/* AF9328 80082188 8FAF0110 */   lw    $t7, 0x110($sp)
/* AF932C 8008218C 0C02FF21 */  jal   func_800BFC84
/* AF9330 80082190 03202025 */   move  $a0, $t9
/* AF9334 80082194 14400021 */  bnez  $v0, .L8008221C
/* AF9338 80082198 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AF933C 8008219C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AF9340 800821A0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF9344 800821A4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF9348 800821A8 870E0DD2 */  lh    $t6, 0xdd2($t8)
/* AF934C 800821AC 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF9350 800821B0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF9354 800821B4 15C0000E */  bnez  $t6, .L800821F0
/* AF9358 800821B8 24044814 */   li    $a0, 18452
/* AF935C 800821BC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AF9360 800821C0 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AF9364 800821C4 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AF9368 800821C8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AF936C 800821CC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AF9370 800821D0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AF9374 800821D4 AFA70010 */  sw    $a3, 0x10($sp)
/* AF9378 800821D8 AFAF0014 */  sw    $t7, 0x14($sp)
/* AF937C 800821DC 24044813 */  li    $a0, 18451
/* AF9380 800821E0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF9384 800821E4 24060004 */   li    $a2, 4
/* AF9388 800821E8 10000007 */  b     .L80082208
/* AF938C 800821EC 00000000 */   nop   
.L800821F0:
/* AF9390 800821F0 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* AF9394 800821F4 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* AF9398 800821F8 AFB90014 */  sw    $t9, 0x14($sp)
/* AF939C 800821FC 24060004 */  li    $a2, 4
/* AF93A0 80082200 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AF93A4 80082204 AFA70010 */   sw    $a3, 0x10($sp)
.L80082208:
/* AF93A8 80082208 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AF93AC 8008220C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AF93B0 80082210 84580DD2 */  lh    $t8, 0xdd2($v0)
/* AF93B4 80082214 3B0E0001 */  xori  $t6, $t8, 1
/* AF93B8 80082218 A44E0DD2 */  sh    $t6, 0xdd2($v0)
.L8008221C:
/* AF93BC 8008221C 8FAF0110 */  lw    $t7, 0x110($sp)
.L80082220:
/* AF93C0 80082220 3C068014 */  lui   $a2, %hi(D_8013D988) # $a2, 0x8014
/* AF93C4 80082224 24C6D988 */  addiu $a2, %lo(D_8013D988) # addiu $a2, $a2, -0x2678
/* AF93C8 80082228 27A400EC */  addiu $a0, $sp, 0xec
/* AF93CC 8008222C 2407030E */  li    $a3, 782
/* AF93D0 80082230 0C031AD5 */  jal   func_800C6B54
/* AF93D4 80082234 8DE50000 */   lw    $a1, ($t7)
/* AF93D8 80082238 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF93DC 8008223C 27BD0110 */  addiu $sp, $sp, 0x110
/* AF93E0 80082240 03E00008 */  jr    $ra
/* AF93E4 80082244 00000000 */   nop   

