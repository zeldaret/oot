.rdata
glabel D_809D1570
    .asciz "../z_en_bw.c"
    .balign 4

glabel D_809D1580
    .asciz "../z_en_bw.c"
    .balign 4

glabel D_809D1590
    .asciz "../z_en_bw.c"
    .balign 4

.late_rodata
glabel D_809D16CC
 .word 0x48B71B00
glabel D_809D16D0
 .word 0x48127C00
glabel D_809D16D4
 .word 0x49064700
glabel D_809D16D8
 .word 0x3C54FDF4
glabel D_809D16DC
    .float 0.01

glabel D_809D16E0
    .float 1.3

.text
glabel EnBw_Draw
/* 02858 809D0F38 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 0285C 809D0F3C 3C0F809D */  lui     $t7, %hi(D_809D1554)       ## $t7 = 809D0000
/* 02860 809D0F40 AFBF0044 */  sw      $ra, 0x0044($sp)
/* 02864 809D0F44 AFB20040 */  sw      $s2, 0x0040($sp)
/* 02868 809D0F48 AFB1003C */  sw      $s1, 0x003C($sp)
/* 0286C 809D0F4C AFB00038 */  sw      $s0, 0x0038($sp)
/* 02870 809D0F50 25EF1554 */  addiu   $t7, $t7, %lo(D_809D1554)  ## $t7 = 809D1554
/* 02874 809D0F54 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809D1554
/* 02878 809D0F58 27AE00AC */  addiu   $t6, $sp, 0x00AC           ## $t6 = FFFFFFF4
/* 0287C 809D0F5C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809D1558
/* 02880 809D0F60 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 02884 809D0F64 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809D155C
/* 02888 809D0F68 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0288C 809D0F6C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 02890 809D0F70 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 02894 809D0F74 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02898 809D0F78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0289C 809D0F7C 3C06809D */  lui     $a2, %hi(D_809D1570)       ## $a2 = 809D0000
/* 028A0 809D0F80 24C61570 */  addiu   $a2, $a2, %lo(D_809D1570)  ## $a2 = 809D1570
/* 028A4 809D0F84 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC8
/* 028A8 809D0F88 2407058F */  addiu   $a3, $zero, 0x058F         ## $a3 = 0000058F
/* 028AC 809D0F8C 0C031AB1 */  jal     Graph_OpenDisps
/* 028B0 809D0F90 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 028B4 809D0F94 9209022F */  lbu     $t1, 0x022F($s0)           ## 0000022F
/* 028B8 809D0F98 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 028BC 809D0F9C 15210028 */  bne     $t1, $at, .L809D1040
/* 028C0 809D0FA0 00000000 */  nop
/* 028C4 809D0FA4 0C024F46 */  jal     func_80093D18
/* 028C8 809D0FA8 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 028CC 809D0FAC 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 028D0 809D0FB0 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 028D4 809D0FB4 3C07809D */  lui     $a3, %hi(func_809D0D18)    ## $a3 = 809D0000
/* 028D8 809D0FB8 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 028DC 809D0FBC AE2A02C0 */  sw      $t2, 0x02C0($s1)           ## 000002C0
/* 028E0 809D0FC0 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 028E4 809D0FC4 9218022D */  lbu     $t8, 0x022D($s0)           ## 0000022D
/* 028E8 809D0FC8 920D022C */  lbu     $t5, 0x022C($s0)           ## 0000022C
/* 028EC 809D0FCC 920B022E */  lbu     $t3, 0x022E($s0)           ## 0000022E
/* 028F0 809D0FD0 0018CC00 */  sll     $t9, $t8, 16
/* 028F4 809D0FD4 9218022F */  lbu     $t8, 0x022F($s0)           ## 0000022F
/* 028F8 809D0FD8 000D7600 */  sll     $t6, $t5, 24
/* 028FC 809D0FDC 01D94825 */  or      $t1, $t6, $t9              ## $t1 = 00000000
/* 02900 809D0FE0 000B6200 */  sll     $t4, $t3,  8
/* 02904 809D0FE4 012C6825 */  or      $t5, $t1, $t4              ## $t5 = 00000000
/* 02908 809D0FE8 01B87025 */  or      $t6, $t5, $t8              ## $t6 = 00000000
/* 0290C 809D0FEC AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 02910 809D0FF0 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 02914 809D0FF4 3C0B8011 */  lui     $t3, %hi(D_80116280+0x10)
/* 02918 809D0FF8 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0291C 809D0FFC 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 02920 809D1000 AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 02924 809D1004 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 02928 809D1008 256B6290 */  addiu   $t3, %lo(D_80116280+0x10)
/* 0292C 809D100C AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 02930 809D1010 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 02934 809D1014 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02938 809D1018 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0293C 809D101C AFB00014 */  sw      $s0, 0x0014($sp)
/* 02940 809D1020 AFA00010 */  sw      $zero, 0x0010($sp)
/* 02944 809D1024 8E2902C0 */  lw      $t1, 0x02C0($s1)           ## 000002C0
/* 02948 809D1028 24E70D18 */  addiu   $a3, $a3, %lo(func_809D0D18) ## $a3 = 809D0D18
/* 0294C 809D102C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02950 809D1030 0C0288A2 */  jal     SkelAnime_Draw
/* 02954 809D1034 AFA90018 */  sw      $t1, 0x0018($sp)
/* 02958 809D1038 10000035 */  beq     $zero, $zero, .L809D1110
/* 0295C 809D103C AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
.L809D1040:
/* 02960 809D1040 0C024F61 */  jal     func_80093D84
/* 02964 809D1044 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02968 809D1048 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0296C 809D104C 3C0FE700 */  lui     $t7, 0xE700                ## $t7 = E7000000
/* 02970 809D1050 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 02974 809D1054 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 02978 809D1058 AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 0297C 809D105C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02980 809D1060 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02984 809D1064 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02988 809D1068 37188080 */  ori     $t8, $t8, 0x8080           ## $t8 = FA008080
/* 0298C 809D106C 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 02990 809D1070 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02994 809D1074 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 02998 809D1078 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0299C 809D107C 9219022F */  lbu     $t9, 0x022F($s0)           ## 0000022F
/* 029A0 809D1080 3C07809D */  lui     $a3, %hi(func_809D0D18)    ## $a3 = 809D0000
/* 029A4 809D1084 24E70D18 */  addiu   $a3, $a3, %lo(func_809D0D18) ## $a3 = 809D0D18
/* 029A8 809D1088 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 029AC 809D108C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 029B0 809D1090 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 029B4 809D1094 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 029B8 809D1098 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 029BC 809D109C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 029C0 809D10A0 9218022D */  lbu     $t8, 0x022D($s0)           ## 0000022D
/* 029C4 809D10A4 920C022C */  lbu     $t4, 0x022C($s0)           ## 0000022C
/* 029C8 809D10A8 920B022E */  lbu     $t3, 0x022E($s0)           ## 0000022E
/* 029CC 809D10AC 00187400 */  sll     $t6, $t8, 16
/* 029D0 809D10B0 9218022F */  lbu     $t8, 0x022F($s0)           ## 0000022F
/* 029D4 809D10B4 000C7E00 */  sll     $t7, $t4, 24
/* 029D8 809D10B8 01EEC825 */  or      $t9, $t7, $t6              ## $t9 = E7000000
/* 029DC 809D10BC 000B4A00 */  sll     $t1, $t3,  8
/* 029E0 809D10C0 03296025 */  or      $t4, $t9, $t1              ## $t4 = E7000000
/* 029E4 809D10C4 01987825 */  or      $t7, $t4, $t8              ## $t7 = FF008080
/* 029E8 809D10C8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 029EC 809D10CC 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 029F0 809D10D0 3C0B8011 */  lui     $t3, %hi(D_80116280)
/* 029F4 809D10D4 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 029F8 809D10D8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 029FC 809D10DC AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 02A00 809D10E0 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 02A04 809D10E4 256B6280 */  addiu   $t3, %lo(D_80116280)
/* 02A08 809D10E8 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 02A0C 809D10EC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 02A10 809D10F0 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02A14 809D10F4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02A18 809D10F8 AFB00014 */  sw      $s0, 0x0014($sp)
/* 02A1C 809D10FC AFA00010 */  sw      $zero, 0x0010($sp)
/* 02A20 809D1100 8E3902D0 */  lw      $t9, 0x02D0($s1)           ## 000002D0
/* 02A24 809D1104 0C0288A2 */  jal     SkelAnime_Draw
/* 02A28 809D1108 AFB90018 */  sw      $t9, 0x0018($sp)
/* 02A2C 809D110C AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
.L809D1110:
/* 02A30 809D1110 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02A34 809D1114 02414821 */  addu    $t1, $s2, $at
/* 02A38 809D1118 AFA90050 */  sw      $t1, 0x0050($sp)
/* 02A3C 809D111C 8D381DE4 */  lw      $t8, 0x1DE4($t1)           ## 00001DE4
/* 02A40 809D1120 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 02A44 809D1124 3C01809D */  lui     $at, %hi(D_809D16CC)       ## $at = 809D0000
/* 02A48 809D1128 270F0001 */  addiu   $t7, $t8, 0x0001           ## $t7 = 00000001
/* 02A4C 809D112C 31EE0003 */  andi    $t6, $t7, 0x0003           ## $t6 = 00000001
/* 02A50 809D1130 15AE001E */  bne     $t5, $t6, .L809D11AC
/* 02A54 809D1134 00000000 */  nop
/* 02A58 809D1138 C6040058 */  lwc1    $f4, 0x0058($s0)           ## 00000058
/* 02A5C 809D113C C42616CC */  lwc1    $f6, %lo(D_809D16CC)($at)
/* 02A60 809D1140 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFFF4
/* 02A64 809D1144 26050264 */  addiu   $a1, $s0, 0x0264           ## $a1 = 00000264
/* 02A68 809D1148 46062202 */  mul.s   $f8, $f4, $f6
/* 02A6C 809D114C 0C0346BD */  jal     Matrix_MultVec3f
/* 02A70 809D1150 E7A800B4 */  swc1    $f8, 0x00B4($sp)
/* 02A74 809D1154 3C01809D */  lui     $at, %hi(D_809D16D0)       ## $at = 809D0000
/* 02A78 809D1158 C43016D0 */  lwc1    $f16, %lo(D_809D16D0)($at)
/* 02A7C 809D115C C60A0058 */  lwc1    $f10, 0x0058($s0)          ## 00000058
/* 02A80 809D1160 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFFF4
/* 02A84 809D1164 26050270 */  addiu   $a1, $s0, 0x0270           ## $a1 = 00000270
/* 02A88 809D1168 46105482 */  mul.s   $f18, $f10, $f16
/* 02A8C 809D116C 0C0346BD */  jal     Matrix_MultVec3f
/* 02A90 809D1170 E7B200B4 */  swc1    $f18, 0x00B4($sp)
/* 02A94 809D1174 3C01809D */  lui     $at, %hi(D_809D16D4)       ## $at = 809D0000
/* 02A98 809D1178 C42616D4 */  lwc1    $f6, %lo(D_809D16D4)($at)
/* 02A9C 809D117C C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 02AA0 809D1180 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFFF4
/* 02AA4 809D1184 26050288 */  addiu   $a1, $s0, 0x0288           ## $a1 = 00000288
/* 02AA8 809D1188 46062202 */  mul.s   $f8, $f4, $f6
/* 02AAC 809D118C 0C0346BD */  jal     Matrix_MultVec3f
/* 02AB0 809D1190 E7A800AC */  swc1    $f8, 0x00AC($sp)
/* 02AB4 809D1194 C7AA00AC */  lwc1    $f10, 0x00AC($sp)
/* 02AB8 809D1198 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFFF4
/* 02ABC 809D119C 2605027C */  addiu   $a1, $s0, 0x027C           ## $a1 = 0000027C
/* 02AC0 809D11A0 46005407 */  neg.s   $f16, $f10
/* 02AC4 809D11A4 0C0346BD */  jal     Matrix_MultVec3f
/* 02AC8 809D11A8 E7B000AC */  swc1    $f16, 0x00AC($sp)
.L809D11AC:
/* 02ACC 809D11AC 3C01809D */  lui     $at, %hi(D_809D16D8)       ## $at = 809D0000
/* 02AD0 809D11B0 C42416D8 */  lwc1    $f4, %lo(D_809D16D8)($at)
/* 02AD4 809D11B4 C6120054 */  lwc1    $f18, 0x0054($s0)          ## 00000054
/* 02AD8 809D11B8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 02ADC 809D11BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 1000.00
/* 02AE0 809D11C0 46049181 */  sub.s   $f6, $f18, $f4
/* 02AE4 809D11C4 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 02AE8 809D11C8 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 02AEC 809D11CC 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 02AF0 809D11D0 46083282 */  mul.s   $f10, $f6, $f8
/* 02AF4 809D11D4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02AF8 809D11D8 0C034261 */  jal     Matrix_Translate
/* 02AFC 809D11DC 460A8380 */  add.s   $f14, $f16, $f10
/* 02B00 809D11E0 0C024F61 */  jal     func_80093D84
/* 02B04 809D11E4 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02B08 809D11E8 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02B0C 809D11EC 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 02B10 809D11F0 3C19FF00 */  lui     $t9, 0xFF00                ## $t9 = FF000000
/* 02B14 809D11F4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02B18 809D11F8 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 02B1C 809D11FC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 02B20 809D1200 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 02B24 809D1204 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02B28 809D1208 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 02B2C 809D120C 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 02B30 809D1210 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 02B34 809D1214 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 02B38 809D1218 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 02B3C 809D121C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02B40 809D1220 8FAE0050 */  lw      $t6, 0x0050($sp)
/* 02B44 809D1224 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 02B48 809D1228 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 02B4C 809D122C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 02B50 809D1230 AFAD0018 */  sw      $t5, 0x0018($sp)
/* 02B54 809D1234 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 02B58 809D1238 AFB80010 */  sw      $t8, 0x0010($sp)
/* 02B5C 809D123C AFA0001C */  sw      $zero, 0x001C($sp)
/* 02B60 809D1240 8DCA1DE4 */  lw      $t2, 0x1DE4($t6)           ## 00001DE4
/* 02B64 809D1244 240C0080 */  addiu   $t4, $zero, 0x0080         ## $t4 = 00000080
/* 02B68 809D1248 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 02B6C 809D124C 000A0823 */  subu    $at, $zero, $t2
/* 02B70 809D1250 00015880 */  sll     $t3, $at,  2
/* 02B74 809D1254 01615821 */  addu    $t3, $t3, $at
/* 02B78 809D1258 000B5880 */  sll     $t3, $t3,  2
/* 02B7C 809D125C 317901FF */  andi    $t9, $t3, 0x01FF           ## $t9 = 00000000
/* 02B80 809D1260 AFB90020 */  sw      $t9, 0x0020($sp)
/* 02B84 809D1264 AFA90024 */  sw      $t1, 0x0024($sp)
/* 02B88 809D1268 AFAC0028 */  sw      $t4, 0x0028($sp)
/* 02B8C 809D126C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02B90 809D1270 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02B94 809D1274 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02B98 809D1278 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 02B9C 809D127C AFA20060 */  sw      $v0, 0x0060($sp)
/* 02BA0 809D1280 8FA30060 */  lw      $v1, 0x0060($sp)
/* 02BA4 809D1284 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 02BA8 809D1288 3C0DFFFF */  lui     $t5, 0xFFFF                ## $t5 = FFFF0000
/* 02BAC 809D128C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02BB0 809D1290 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02BB4 809D1294 35AD00FF */  ori     $t5, $t5, 0x00FF           ## $t5 = FFFF00FF
/* 02BB8 809D1298 35EF8080 */  ori     $t7, $t7, 0x8080           ## $t7 = FA008080
/* 02BBC 809D129C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 02BC0 809D12A0 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 02BC4 809D12A4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 02BC8 809D12A8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02BCC 809D12AC 3C01809D */  lui     $at, %hi(D_809D16DC)       ## $at = 809D0000
/* 02BD0 809D12B0 C42416DC */  lwc1    $f4, %lo(D_809D16DC)($at)
/* 02BD4 809D12B4 C6120248 */  lwc1    $f18, 0x0248($s0)          ## 00000248
/* 02BD8 809D12B8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02BDC 809D12BC 46049302 */  mul.s   $f12, $f18, $f4
/* 02BE0 809D12C0 44066000 */  mfc1    $a2, $f12
/* 02BE4 809D12C4 0C0342A3 */  jal     Matrix_Scale
/* 02BE8 809D12C8 46006386 */  mov.s   $f14, $f12
/* 02BEC 809D12CC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02BF0 809D12D0 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 02BF4 809D12D4 0C0347F5 */  jal     func_800D1FD4
/* 02BF8 809D12D8 02412021 */  addu    $a0, $s2, $at
/* 02BFC 809D12DC 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02C00 809D12E0 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 02C04 809D12E4 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 02C08 809D12E8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02C0C 809D12EC AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 02C10 809D12F0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 02C14 809D12F4 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02C18 809D12F8 3C05809D */  lui     $a1, %hi(D_809D1580)       ## $a1 = 809D0000
/* 02C1C 809D12FC 24A51580 */  addiu   $a1, $a1, %lo(D_809D1580)  ## $a1 = 809D1580
/* 02C20 809D1300 240605DC */  addiu   $a2, $zero, 0x05DC         ## $a2 = 000005DC
/* 02C24 809D1304 0C0346A2 */  jal     Matrix_NewMtx
/* 02C28 809D1308 AFA20058 */  sw      $v0, 0x0058($sp)
/* 02C2C 809D130C 8FA30058 */  lw      $v1, 0x0058($sp)
/* 02C30 809D1310 3C090405 */  lui     $t1, %hi(D_0404D4E0)                ## $t1 = 04050000
/* 02C34 809D1314 2529D4E0 */  addiu   $t1, $t1, %lo(D_0404D4E0)           ## $t1 = 0404D4E0
/* 02C38 809D1318 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02C3C 809D131C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02C40 809D1320 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 02C44 809D1324 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02C48 809D1328 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 02C4C 809D132C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 02C50 809D1330 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 02C54 809D1334 920C023B */  lbu     $t4, 0x023B($s0)           ## 0000023B
/* 02C58 809D1338 11800031 */  beq     $t4, $zero, .L809D1400
/* 02C5C 809D133C 00000000 */  nop
/* 02C60 809D1340 920D023B */  lbu     $t5, 0x023B($s0)           ## 0000023B
/* 02C64 809D1344 92180114 */  lbu     $t8, 0x0114($s0)           ## 00000114
/* 02C68 809D1348 3C19809D */  lui     $t9, %hi(D_809D14F4)       ## $t9 = 809D0000
/* 02C6C 809D134C 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFFF
/* 02C70 809D1350 31C800FF */  andi    $t0, $t6, 0x00FF           ## $t0 = 000000FF
/* 02C74 809D1354 310A0003 */  andi    $t2, $t0, 0x0003           ## $t2 = 00000003
/* 02C78 809D1358 270F0001 */  addiu   $t7, $t8, 0x0001           ## $t7 = 00000001
/* 02C7C 809D135C A20F0114 */  sb      $t7, 0x0114($s0)           ## 00000114
/* 02C80 809D1360 15400027 */  bne     $t2, $zero, .L809D1400
/* 02C84 809D1364 A20E023B */  sb      $t6, 0x023B($s0)           ## 0000023B
/* 02C88 809D1368 00081883 */  sra     $v1, $t0,  2
/* 02C8C 809D136C 00035880 */  sll     $t3, $v1,  2
/* 02C90 809D1370 01635823 */  subu    $t3, $t3, $v1
/* 02C94 809D1374 000B5880 */  sll     $t3, $t3,  2
/* 02C98 809D1378 273914F4 */  addiu   $t9, $t9, %lo(D_809D14F4)  ## $t9 = 809D14F4
/* 02C9C 809D137C 01791021 */  addu    $v0, $t3, $t9
/* 02CA0 809D1380 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 02CA4 809D1384 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 02CA8 809D1388 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00000004
/* 02CAC 809D138C 3C01809D */  lui     $at, %hi(D_809D16E0)       ## $at = 809D0000
/* 02CB0 809D1390 46083400 */  add.s   $f16, $f6, $f8
/* 02CB4 809D1394 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 02CB8 809D1398 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 02CBC 809D139C 240C0096 */  addiu   $t4, $zero, 0x0096         ## $t4 = 00000096
/* 02CC0 809D13A0 E7B00098 */  swc1    $f16, 0x0098($sp)
/* 02CC4 809D13A4 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 02CC8 809D13A8 241800FA */  addiu   $t8, $zero, 0x00FA         ## $t8 = 000000FA
/* 02CCC 809D13AC 240F00EB */  addiu   $t7, $zero, 0x00EB         ## $t7 = 000000EB
/* 02CD0 809D13B0 46125100 */  add.s   $f4, $f10, $f18
/* 02CD4 809D13B4 C42A16E0 */  lwc1    $f10, %lo(D_809D16E0)($at)
/* 02CD8 809D13B8 240D00F5 */  addiu   $t5, $zero, 0x00F5         ## $t5 = 000000F5
/* 02CDC 809D13BC 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 02CE0 809D13C0 E7A4009C */  swc1    $f4, 0x009C($sp)
/* 02CE4 809D13C4 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 02CE8 809D13C8 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 02CEC 809D13CC AFAD0020 */  sw      $t5, 0x0020($sp)
/* 02CF0 809D13D0 46083400 */  add.s   $f16, $f6, $f8
/* 02CF4 809D13D4 AFAF001C */  sw      $t7, 0x001C($sp)
/* 02CF8 809D13D8 AFB80018 */  sw      $t8, 0x0018($sp)
/* 02CFC 809D13DC AFAC0014 */  sw      $t4, 0x0014($sp)
/* 02D00 809D13E0 E7B000A0 */  swc1    $f16, 0x00A0($sp)
/* 02D04 809D13E4 AFA90010 */  sw      $t1, 0x0010($sp)
/* 02D08 809D13E8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02D0C 809D13EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02D10 809D13F0 27A60098 */  addiu   $a2, $sp, 0x0098           ## $a2 = FFFFFFE0
/* 02D14 809D13F4 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 02D18 809D13F8 0C00A850 */  jal     EffectSsEnIce_SpawnFlyingVec3f
/* 02D1C 809D13FC E7AA0028 */  swc1    $f10, 0x0028($sp)
.L809D1400:
/* 02D20 809D1400 3C06809D */  lui     $a2, %hi(D_809D1590)       ## $a2 = 809D0000
/* 02D24 809D1404 24C61590 */  addiu   $a2, $a2, %lo(D_809D1590)  ## $a2 = 809D1590
/* 02D28 809D1408 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC8
/* 02D2C 809D140C 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 02D30 809D1410 0C031AD5 */  jal     Graph_CloseDisps
/* 02D34 809D1414 240705F1 */  addiu   $a3, $zero, 0x05F1         ## $a3 = 000005F1
/* 02D38 809D1418 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 02D3C 809D141C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 02D40 809D1420 8FB1003C */  lw      $s1, 0x003C($sp)
/* 02D44 809D1424 8FB20040 */  lw      $s2, 0x0040($sp)
/* 02D48 809D1428 03E00008 */  jr      $ra
/* 02D4C 809D142C 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
