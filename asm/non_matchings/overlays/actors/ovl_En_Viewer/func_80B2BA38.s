glabel func_80B2BA38
/* 01838 80B2BA38 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 0183C 80B2BA3C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01840 80B2BA40 AFA400A0 */  sw      $a0, 0x00A0($sp)
/* 01844 80B2BA44 AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 01848 80B2BA48 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0184C 80B2BA4C 3C0680B3 */  lui     $a2, %hi(D_80B2D0D0)       ## $a2 = 80B30000
/* 01850 80B2BA50 24C6D0D0 */  addiu   $a2, $a2, %lo(D_80B2D0D0)  ## $a2 = 80B2D0D0
/* 01854 80B2BA54 27A4008C */  addiu   $a0, $sp, 0x008C           ## $a0 = FFFFFFEC
/* 01858 80B2BA58 2407062F */  addiu   $a3, $zero, 0x062F         ## $a3 = 0000062F
/* 0185C 80B2BA5C 0C031AB1 */  jal     Graph_OpenDisp
/* 01860 80B2BA60 AFA5009C */  sw      $a1, 0x009C($sp)
/* 01864 80B2BA64 8FAC00A4 */  lw      $t4, 0x00A4($sp)
/* 01868 80B2BA68 24010051 */  addiu   $at, $zero, 0x0051         ## $at = 00000051
/* 0186C 80B2BA6C 8FA8009C */  lw      $t0, 0x009C($sp)
/* 01870 80B2BA70 858F00A4 */  lh      $t7, 0x00A4($t4)           ## 000000A4
/* 01874 80B2BA74 8FAB00A0 */  lw      $t3, 0x00A0($sp)
/* 01878 80B2BA78 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 0187C 80B2BA7C 15E1015D */  bne     $t7, $at, .L80B2BFF4
/* 01880 80B2BA80 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01884 80B2BA84 95821D74 */  lhu     $v0, 0x1D74($t4)           ## 00001D74
/* 01888 80B2BA88 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 0188C 80B2BA8C 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 01890 80B2BA90 28410303 */  slti    $at, $v0, 0x0303
/* 01894 80B2BA94 10200026 */  beq     $at, $zero, .L80B2BB30
/* 01898 80B2BA98 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 0189C 80B2BA9C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 018A0 80B2BAA0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 018A4 80B2BAA4 248442F0 */  addiu   $a0, $a0, 0x42F0           ## $a0 = 060042F0
/* 018A8 80B2BAA8 00046900 */  sll     $t5, $a0,  4
/* 018AC 80B2BAAC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 018B0 80B2BAB0 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 018B4 80B2BAB4 000D7702 */  srl     $t6, $t5, 28
/* 018B8 80B2BAB8 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 018BC 80B2BABC 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 018C0 80B2BAC0 000E7880 */  sll     $t7, $t6,  2
/* 018C4 80B2BAC4 012FC021 */  addu    $t8, $t1, $t7
/* 018C8 80B2BAC8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 018CC 80B2BACC 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000008
/* 018D0 80B2BAD0 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 018D4 80B2BAD4 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 018D8 80B2BAD8 008A6824 */  and     $t5, $a0, $t2
/* 018DC 80B2BADC 032D7021 */  addu    $t6, $t9, $t5
/* 018E0 80B2BAE0 01C77821 */  addu    $t7, $t6, $a3
/* 018E4 80B2BAE4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 018E8 80B2BAE8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 018EC 80B2BAEC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 018F0 80B2BAF0 24843EF0 */  addiu   $a0, $a0, 0x3EF0           ## $a0 = 06003EF0
/* 018F4 80B2BAF4 00046900 */  sll     $t5, $a0,  4
/* 018F8 80B2BAF8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 018FC 80B2BAFC AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01900 80B2BB00 000D7702 */  srl     $t6, $t5, 28
/* 01904 80B2BB04 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01908 80B2BB08 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 0190C 80B2BB0C 000E7880 */  sll     $t7, $t6,  2
/* 01910 80B2BB10 012FC021 */  addu    $t8, $t1, $t7
/* 01914 80B2BB14 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01918 80B2BB18 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000008
/* 0191C 80B2BB1C 008A6824 */  and     $t5, $a0, $t2
/* 01920 80B2BB20 032D7021 */  addu    $t6, $t9, $t5
/* 01924 80B2BB24 01C77821 */  addu    $t7, $t6, $a3
/* 01928 80B2BB28 100000E0 */  beq     $zero, $zero, .L80B2BEAC
/* 0192C 80B2BB2C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L80B2BB30:
/* 01930 80B2BB30 28410304 */  slti    $at, $v0, 0x0304
/* 01934 80B2BB34 50200023 */  beql    $at, $zero, .L80B2BBC4
/* 01938 80B2BB38 28410305 */  slti    $at, $v0, 0x0305
/* 0193C 80B2BB3C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01940 80B2BB40 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01944 80B2BB44 24842EF0 */  addiu   $a0, $a0, 0x2EF0           ## $a0 = 06002EF0
/* 01948 80B2BB48 00046900 */  sll     $t5, $a0,  4
/* 0194C 80B2BB4C 000D7702 */  srl     $t6, $t5, 28
/* 01950 80B2BB50 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01954 80B2BB54 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01958 80B2BB58 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0195C 80B2BB5C AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01960 80B2BB60 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 01964 80B2BB64 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 01968 80B2BB68 000E7880 */  sll     $t7, $t6,  2
/* 0196C 80B2BB6C 012F2821 */  addu    $a1, $t1, $t7
/* 01970 80B2BB70 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01974 80B2BB74 8CB80000 */  lw      $t8, 0x0000($a1)           ## 00000000
/* 01978 80B2BB78 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 0197C 80B2BB7C 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01980 80B2BB80 008A3024 */  and     $a2, $a0, $t2
/* 01984 80B2BB84 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01988 80B2BB88 0306C821 */  addu    $t9, $t8, $a2
/* 0198C 80B2BB8C 03276821 */  addu    $t5, $t9, $a3
/* 01990 80B2BB90 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 01994 80B2BB94 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01998 80B2BB98 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 0199C 80B2BB9C 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 019A0 80B2BBA0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 019A4 80B2BBA4 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 019A8 80B2BBA8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 019AC 80B2BBAC 8CB80000 */  lw      $t8, 0x0000($a1)           ## 00000000
/* 019B0 80B2BBB0 0306C821 */  addu    $t9, $t8, $a2
/* 019B4 80B2BBB4 03276821 */  addu    $t5, $t9, $a3
/* 019B8 80B2BBB8 100000BC */  beq     $zero, $zero, .L80B2BEAC
/* 019BC 80B2BBBC AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 019C0 80B2BBC0 28410305 */  slti    $at, $v0, 0x0305
.L80B2BBC4:
/* 019C4 80B2BBC4 50200023 */  beql    $at, $zero, .L80B2BC54
/* 019C8 80B2BBC8 28410317 */  slti    $at, $v0, 0x0317
/* 019CC 80B2BBCC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 019D0 80B2BBD0 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 019D4 80B2BBD4 246332F0 */  addiu   $v1, $v1, 0x32F0           ## $v1 = 060032F0
/* 019D8 80B2BBD8 0003C100 */  sll     $t8, $v1,  4
/* 019DC 80B2BBDC 0018CF02 */  srl     $t9, $t8, 28
/* 019E0 80B2BBE0 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 019E4 80B2BBE4 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 019E8 80B2BBE8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 019EC 80B2BBEC AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 019F0 80B2BBF0 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 019F4 80B2BBF4 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 019F8 80B2BBF8 00196880 */  sll     $t5, $t9,  2
/* 019FC 80B2BBFC 012D2821 */  addu    $a1, $t1, $t5
/* 01A00 80B2BC00 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01A04 80B2BC04 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 01A08 80B2BC08 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 01A0C 80B2BC0C 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01A10 80B2BC10 006A3024 */  and     $a2, $v1, $t2
/* 01A14 80B2BC14 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01A18 80B2BC18 01C67821 */  addu    $t7, $t6, $a2
/* 01A1C 80B2BC1C 01E7C021 */  addu    $t8, $t7, $a3
/* 01A20 80B2BC20 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01A24 80B2BC24 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01A28 80B2BC28 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01A2C 80B2BC2C 35AD0024 */  ori     $t5, $t5, 0x0024           ## $t5 = DB060024
/* 01A30 80B2BC30 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01A34 80B2BC34 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01A38 80B2BC38 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01A3C 80B2BC3C 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 01A40 80B2BC40 01C67821 */  addu    $t7, $t6, $a2
/* 01A44 80B2BC44 01E7C021 */  addu    $t8, $t7, $a3
/* 01A48 80B2BC48 10000098 */  beq     $zero, $zero, .L80B2BEAC
/* 01A4C 80B2BC4C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01A50 80B2BC50 28410317 */  slti    $at, $v0, 0x0317
.L80B2BC54:
/* 01A54 80B2BC54 50200024 */  beql    $at, $zero, .L80B2BCE8
/* 01A58 80B2BC58 28410318 */  slti    $at, $v0, 0x0318
/* 01A5C 80B2BC5C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01A60 80B2BC60 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01A64 80B2BC64 248436F0 */  addiu   $a0, $a0, 0x36F0           ## $a0 = 060036F0
/* 01A68 80B2BC68 00047100 */  sll     $t6, $a0,  4
/* 01A6C 80B2BC6C 000E7F02 */  srl     $t7, $t6, 28
/* 01A70 80B2BC70 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01A74 80B2BC74 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01A78 80B2BC78 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01A7C 80B2BC7C AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01A80 80B2BC80 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 01A84 80B2BC84 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 01A88 80B2BC88 000FC080 */  sll     $t8, $t7,  2
/* 01A8C 80B2BC8C 01382821 */  addu    $a1, $t1, $t8
/* 01A90 80B2BC90 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01A94 80B2BC94 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 01A98 80B2BC98 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 01A9C 80B2BC9C 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01AA0 80B2BCA0 008A3024 */  and     $a2, $a0, $t2
/* 01AA4 80B2BCA4 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01AA8 80B2BCA8 03266821 */  addu    $t5, $t9, $a2
/* 01AAC 80B2BCAC 01A77021 */  addu    $t6, $t5, $a3
/* 01AB0 80B2BCB0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01AB4 80B2BCB4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01AB8 80B2BCB8 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01ABC 80B2BCBC 37180024 */  ori     $t8, $t8, 0x0024           ## $t8 = DB060024
/* 01AC0 80B2BCC0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01AC4 80B2BCC4 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01AC8 80B2BCC8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01ACC 80B2BCCC 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 01AD0 80B2BCD0 03266821 */  addu    $t5, $t9, $a2
/* 01AD4 80B2BCD4 01A77021 */  addu    $t6, $t5, $a3
/* 01AD8 80B2BCD8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01ADC 80B2BCDC 10000073 */  beq     $zero, $zero, .L80B2BEAC
/* 01AE0 80B2BCE0 8FAC00A4 */  lw      $t4, 0x00A4($sp)
/* 01AE4 80B2BCE4 28410318 */  slti    $at, $v0, 0x0318
.L80B2BCE8:
/* 01AE8 80B2BCE8 50200024 */  beql    $at, $zero, .L80B2BD7C
/* 01AEC 80B2BCEC 28410319 */  slti    $at, $v0, 0x0319
/* 01AF0 80B2BCF0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01AF4 80B2BCF4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01AF8 80B2BCF8 24842EF0 */  addiu   $a0, $a0, 0x2EF0           ## $a0 = 06002EF0
/* 01AFC 80B2BCFC 0004C900 */  sll     $t9, $a0,  4
/* 01B00 80B2BD00 00196F02 */  srl     $t5, $t9, 28
/* 01B04 80B2BD04 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01B08 80B2BD08 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01B0C 80B2BD0C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01B10 80B2BD10 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01B14 80B2BD14 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 01B18 80B2BD18 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 01B1C 80B2BD1C 000D7080 */  sll     $t6, $t5,  2
/* 01B20 80B2BD20 012E2821 */  addu    $a1, $t1, $t6
/* 01B24 80B2BD24 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01B28 80B2BD28 8CAF0000 */  lw      $t7, 0x0000($a1)           ## 00000000
/* 01B2C 80B2BD2C 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 01B30 80B2BD30 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01B34 80B2BD34 008A3024 */  and     $a2, $a0, $t2
/* 01B38 80B2BD38 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01B3C 80B2BD3C 01E6C021 */  addu    $t8, $t7, $a2
/* 01B40 80B2BD40 0307C821 */  addu    $t9, $t8, $a3
/* 01B44 80B2BD44 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01B48 80B2BD48 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01B4C 80B2BD4C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 01B50 80B2BD50 35CE0024 */  ori     $t6, $t6, 0x0024           ## $t6 = DB060024
/* 01B54 80B2BD54 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01B58 80B2BD58 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 01B5C 80B2BD5C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01B60 80B2BD60 8CAF0000 */  lw      $t7, 0x0000($a1)           ## 00000000
/* 01B64 80B2BD64 01E6C021 */  addu    $t8, $t7, $a2
/* 01B68 80B2BD68 0307C821 */  addu    $t9, $t8, $a3
/* 01B6C 80B2BD6C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01B70 80B2BD70 1000004E */  beq     $zero, $zero, .L80B2BEAC
/* 01B74 80B2BD74 8FAC00A4 */  lw      $t4, 0x00A4($sp)
/* 01B78 80B2BD78 28410319 */  slti    $at, $v0, 0x0319
.L80B2BD7C:
/* 01B7C 80B2BD7C 50200024 */  beql    $at, $zero, .L80B2BE10
/* 01B80 80B2BD80 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01B84 80B2BD84 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01B88 80B2BD88 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 01B8C 80B2BD8C 246332F0 */  addiu   $v1, $v1, 0x32F0           ## $v1 = 060032F0
/* 01B90 80B2BD90 00037900 */  sll     $t7, $v1,  4
/* 01B94 80B2BD94 000FC702 */  srl     $t8, $t7, 28
/* 01B98 80B2BD98 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01B9C 80B2BD9C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 01BA0 80B2BDA0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01BA4 80B2BDA4 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 01BA8 80B2BDA8 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 01BAC 80B2BDAC 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 01BB0 80B2BDB0 0018C880 */  sll     $t9, $t8,  2
/* 01BB4 80B2BDB4 01392821 */  addu    $a1, $t1, $t9
/* 01BB8 80B2BDB8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01BBC 80B2BDBC 8CAD0000 */  lw      $t5, 0x0000($a1)           ## 00000000
/* 01BC0 80B2BDC0 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 01BC4 80B2BDC4 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01BC8 80B2BDC8 006A3024 */  and     $a2, $v1, $t2
/* 01BCC 80B2BDCC 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01BD0 80B2BDD0 01A67021 */  addu    $t6, $t5, $a2
/* 01BD4 80B2BDD4 01C77821 */  addu    $t7, $t6, $a3
/* 01BD8 80B2BDD8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01BDC 80B2BDDC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01BE0 80B2BDE0 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01BE4 80B2BDE4 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 01BE8 80B2BDE8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01BEC 80B2BDEC AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01BF0 80B2BDF0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01BF4 80B2BDF4 8CAD0000 */  lw      $t5, 0x0000($a1)           ## 00000000
/* 01BF8 80B2BDF8 01A67021 */  addu    $t6, $t5, $a2
/* 01BFC 80B2BDFC 01C77821 */  addu    $t7, $t6, $a3
/* 01C00 80B2BE00 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01C04 80B2BE04 10000029 */  beq     $zero, $zero, .L80B2BEAC
/* 01C08 80B2BE08 8FAC00A4 */  lw      $t4, 0x00A4($sp)
/* 01C0C 80B2BE0C 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
.L80B2BE10:
/* 01C10 80B2BE10 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01C14 80B2BE14 248442F0 */  addiu   $a0, $a0, 0x42F0           ## $a0 = 060042F0
/* 01C18 80B2BE18 00046900 */  sll     $t5, $a0,  4
/* 01C1C 80B2BE1C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01C20 80B2BE20 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01C24 80B2BE24 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01C28 80B2BE28 000D7702 */  srl     $t6, $t5, 28
/* 01C2C 80B2BE2C 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01C30 80B2BE30 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 80166FA8
/* 01C34 80B2BE34 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 01C38 80B2BE38 000E7880 */  sll     $t7, $t6,  2
/* 01C3C 80B2BE3C 012FC021 */  addu    $t8, $t1, $t7
/* 01C40 80B2BE40 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01C44 80B2BE44 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000008
/* 01C48 80B2BE48 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 01C4C 80B2BE4C 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01C50 80B2BE50 008A6824 */  and     $t5, $a0, $t2
/* 01C54 80B2BE54 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01C58 80B2BE58 032D7021 */  addu    $t6, $t9, $t5
/* 01C5C 80B2BE5C 01C77821 */  addu    $t7, $t6, $a3
/* 01C60 80B2BE60 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01C64 80B2BE64 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01C68 80B2BE68 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01C6C 80B2BE6C 24843EF0 */  addiu   $a0, $a0, 0x3EF0           ## $a0 = 06003EF0
/* 01C70 80B2BE70 00046900 */  sll     $t5, $a0,  4
/* 01C74 80B2BE74 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01C78 80B2BE78 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01C7C 80B2BE7C 000D7702 */  srl     $t6, $t5, 28
/* 01C80 80B2BE80 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01C84 80B2BE84 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 01C88 80B2BE88 000E7880 */  sll     $t7, $t6,  2
/* 01C8C 80B2BE8C 012FC021 */  addu    $t8, $t1, $t7
/* 01C90 80B2BE90 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01C94 80B2BE94 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000008
/* 01C98 80B2BE98 008A6824 */  and     $t5, $a0, $t2
/* 01C9C 80B2BE9C 032D7021 */  addu    $t6, $t9, $t5
/* 01CA0 80B2BEA0 01C77821 */  addu    $t7, $t6, $a3
/* 01CA4 80B2BEA4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01CA8 80B2BEA8 8FAC00A4 */  lw      $t4, 0x00A4($sp)
.L80B2BEAC:
/* 01CAC 80B2BEAC 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 01CB0 80B2BEB0 8F18F9C0 */  lw      $t8, -0x0640($t8)          ## 8015F9C0
/* 01CB4 80B2BEB4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01CB8 80B2BEB8 57010014 */  bnel    $t8, $at, .L80B2BF0C
/* 01CBC 80B2BEBC 95821D74 */  lhu     $v0, 0x1D74($t4)           ## 00001D74
/* 01CC0 80B2BEC0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01CC4 80B2BEC4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01CC8 80B2BEC8 248452F0 */  addiu   $a0, $a0, 0x52F0           ## $a0 = 060052F0
/* 01CCC 80B2BECC 00047100 */  sll     $t6, $a0,  4
/* 01CD0 80B2BED0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01CD4 80B2BED4 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01CD8 80B2BED8 000E7F02 */  srl     $t7, $t6, 28
/* 01CDC 80B2BEDC 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01CE0 80B2BEE0 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 01CE4 80B2BEE4 000FC080 */  sll     $t8, $t7,  2
/* 01CE8 80B2BEE8 0138C821 */  addu    $t9, $t1, $t8
/* 01CEC 80B2BEEC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01CF0 80B2BEF0 8F2D0000 */  lw      $t5, 0x0000($t9)           ## 00000008
/* 01CF4 80B2BEF4 008A7024 */  and     $t6, $a0, $t2
/* 01CF8 80B2BEF8 01AE7821 */  addu    $t7, $t5, $t6
/* 01CFC 80B2BEFC 01E7C021 */  addu    $t8, $t7, $a3
/* 01D00 80B2BF00 1000006B */  beq     $zero, $zero, .L80B2C0B0
/* 01D04 80B2BF04 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01D08 80B2BF08 95821D74 */  lhu     $v0, 0x1D74($t4)           ## 00001D74
.L80B2BF0C:
/* 01D0C 80B2BF0C 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01D10 80B2BF10 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 01D14 80B2BF14 284102F6 */  slti    $at, $v0, 0x02F6
/* 01D18 80B2BF18 10200010 */  beq     $at, $zero, .L80B2BF5C
/* 01D1C 80B2BF1C 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 01D20 80B2BF20 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01D24 80B2BF24 24634EF0 */  addiu   $v1, $v1, 0x4EF0           ## $v1 = 06004EF0
/* 01D28 80B2BF28 00037100 */  sll     $t6, $v1,  4
/* 01D2C 80B2BF2C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01D30 80B2BF30 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01D34 80B2BF34 000E7F02 */  srl     $t7, $t6, 28
/* 01D38 80B2BF38 000FC080 */  sll     $t8, $t7,  2
/* 01D3C 80B2BF3C 0138C821 */  addu    $t9, $t1, $t8
/* 01D40 80B2BF40 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01D44 80B2BF44 8F2D0000 */  lw      $t5, 0x0000($t9)           ## 00000008
/* 01D48 80B2BF48 006A7024 */  and     $t6, $v1, $t2
/* 01D4C 80B2BF4C 01AE7821 */  addu    $t7, $t5, $t6
/* 01D50 80B2BF50 01E7C021 */  addu    $t8, $t7, $a3
/* 01D54 80B2BF54 10000056 */  beq     $zero, $zero, .L80B2C0B0
/* 01D58 80B2BF58 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
.L80B2BF5C:
/* 01D5C 80B2BF5C 28410350 */  slti    $at, $v0, 0x0350
/* 01D60 80B2BF60 10200013 */  beq     $at, $zero, .L80B2BFB0
/* 01D64 80B2BF64 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01D68 80B2BF68 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01D6C 80B2BF6C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01D70 80B2BF70 248452F0 */  addiu   $a0, $a0, 0x52F0           ## $a0 = 060052F0
/* 01D74 80B2BF74 00047100 */  sll     $t6, $a0,  4
/* 01D78 80B2BF78 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01D7C 80B2BF7C AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01D80 80B2BF80 000E7F02 */  srl     $t7, $t6, 28
/* 01D84 80B2BF84 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01D88 80B2BF88 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 01D8C 80B2BF8C 000FC080 */  sll     $t8, $t7,  2
/* 01D90 80B2BF90 0138C821 */  addu    $t9, $t1, $t8
/* 01D94 80B2BF94 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01D98 80B2BF98 8F2D0000 */  lw      $t5, 0x0000($t9)           ## 00000008
/* 01D9C 80B2BF9C 008A7024 */  and     $t6, $a0, $t2
/* 01DA0 80B2BFA0 01AE7821 */  addu    $t7, $t5, $t6
/* 01DA4 80B2BFA4 01E7C021 */  addu    $t8, $t7, $a3
/* 01DA8 80B2BFA8 10000041 */  beq     $zero, $zero, .L80B2C0B0
/* 01DAC 80B2BFAC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
.L80B2BFB0:
/* 01DB0 80B2BFB0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01DB4 80B2BFB4 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 01DB8 80B2BFB8 24634EF0 */  addiu   $v1, $v1, 0x4EF0           ## $v1 = 06004EF0
/* 01DBC 80B2BFBC 00037100 */  sll     $t6, $v1,  4
/* 01DC0 80B2BFC0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01DC4 80B2BFC4 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01DC8 80B2BFC8 000E7F02 */  srl     $t7, $t6, 28
/* 01DCC 80B2BFCC 000FC080 */  sll     $t8, $t7,  2
/* 01DD0 80B2BFD0 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 01DD4 80B2BFD4 0138C821 */  addu    $t9, $t1, $t8
/* 01DD8 80B2BFD8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01DDC 80B2BFDC 8F2D0000 */  lw      $t5, 0x0000($t9)           ## 00000008
/* 01DE0 80B2BFE0 006A7024 */  and     $t6, $v1, $t2
/* 01DE4 80B2BFE4 01AE7821 */  addu    $t7, $t5, $t6
/* 01DE8 80B2BFE8 01E7C021 */  addu    $t8, $t7, $a3
/* 01DEC 80B2BFEC 10000030 */  beq     $zero, $zero, .L80B2C0B0
/* 01DF0 80B2BFF0 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
.L80B2BFF4:
/* 01DF4 80B2BFF4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01DF8 80B2BFF8 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 01DFC 80B2BFFC 246332F0 */  addiu   $v1, $v1, 0x32F0           ## $v1 = 060032F0
/* 01E00 80B2C000 00037100 */  sll     $t6, $v1,  4
/* 01E04 80B2C004 000E7F02 */  srl     $t7, $t6, 28
/* 01E08 80B2C008 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01E0C 80B2C00C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01E10 80B2C010 25296FA8 */  addiu   $t1, $t1, 0x6FA8           ## $t1 = 8016DF50
/* 01E14 80B2C014 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 01E18 80B2C018 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 01E1C 80B2C01C 000FC080 */  sll     $t8, $t7,  2
/* 01E20 80B2C020 01382821 */  addu    $a1, $t1, $t8
/* 01E24 80B2C024 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01E28 80B2C028 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 01E2C 80B2C02C 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 01E30 80B2C030 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 01E34 80B2C034 006A3024 */  and     $a2, $v1, $t2
/* 01E38 80B2C038 03266821 */  addu    $t5, $t9, $a2
/* 01E3C 80B2C03C 01A77021 */  addu    $t6, $t5, $a3
/* 01E40 80B2C040 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01E44 80B2C044 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01E48 80B2C048 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01E4C 80B2C04C 37180024 */  ori     $t8, $t8, 0x0024           ## $t8 = DB060024
/* 01E50 80B2C050 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01E54 80B2C054 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01E58 80B2C058 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01E5C 80B2C05C 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 01E60 80B2C060 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 01E64 80B2C064 24634EF0 */  addiu   $v1, $v1, 0x4EF0           ## $v1 = 06004EF0
/* 01E68 80B2C068 03266821 */  addu    $t5, $t9, $a2
/* 01E6C 80B2C06C 01A77021 */  addu    $t6, $t5, $a3
/* 01E70 80B2C070 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01E74 80B2C074 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01E78 80B2C078 0003C900 */  sll     $t9, $v1,  4
/* 01E7C 80B2C07C 00196F02 */  srl     $t5, $t9, 28
/* 01E80 80B2C080 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01E84 80B2C084 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01E88 80B2C088 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01E8C 80B2C08C 37180028 */  ori     $t8, $t8, 0x0028           ## $t8 = DB060028
/* 01E90 80B2C090 000D7080 */  sll     $t6, $t5,  2
/* 01E94 80B2C094 012E7821 */  addu    $t7, $t1, $t6
/* 01E98 80B2C098 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01E9C 80B2C09C 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000008
/* 01EA0 80B2C0A0 006AC824 */  and     $t9, $v1, $t2
/* 01EA4 80B2C0A4 03196821 */  addu    $t5, $t8, $t9
/* 01EA8 80B2C0A8 01A77021 */  addu    $t6, $t5, $a3
/* 01EAC 80B2C0AC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
.L80B2C0B0:
/* 01EB0 80B2C0B0 8D65019C */  lw      $a1, 0x019C($t3)           ## 0000019C
/* 01EB4 80B2C0B4 8D6601B8 */  lw      $a2, 0x01B8($t3)           ## 000001B8
/* 01EB8 80B2C0B8 9167019A */  lbu     $a3, 0x019A($t3)           ## 0000019A
/* 01EBC 80B2C0BC 3C0F80B3 */  lui     $t7, %hi(func_80B2B928)    ## $t7 = 80B30000
/* 01EC0 80B2C0C0 3C1880B3 */  lui     $t8, %hi(func_80B2B9A4)    ## $t8 = 80B30000
/* 01EC4 80B2C0C4 2718B9A4 */  addiu   $t8, $t8, %lo(func_80B2B9A4) ## $t8 = 80B2B9A4
/* 01EC8 80B2C0C8 25EFB928 */  addiu   $t7, $t7, %lo(func_80B2B928) ## $t7 = 80B2B928
/* 01ECC 80B2C0CC AFAF0010 */  sw      $t7, 0x0010($sp)
/* 01ED0 80B2C0D0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 01ED4 80B2C0D4 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 01ED8 80B2C0D8 0C0286B2 */  jal     SkelAnime_DrawSV
/* 01EDC 80B2C0DC 8FA400A4 */  lw      $a0, 0x00A4($sp)
/* 01EE0 80B2C0E0 8FB900A4 */  lw      $t9, 0x00A4($sp)
/* 01EE4 80B2C0E4 3C0680B3 */  lui     $a2, %hi(D_80B2D0E4)       ## $a2 = 80B30000
/* 01EE8 80B2C0E8 24C6D0E4 */  addiu   $a2, $a2, %lo(D_80B2D0E4)  ## $a2 = 80B2D0E4
/* 01EEC 80B2C0EC 27A4008C */  addiu   $a0, $sp, 0x008C           ## $a0 = FFFFFFEC
/* 01EF0 80B2C0F0 2407069A */  addiu   $a3, $zero, 0x069A         ## $a3 = 0000069A
/* 01EF4 80B2C0F4 0C031AD5 */  jal     Graph_CloseDisp
/* 01EF8 80B2C0F8 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 01EFC 80B2C0FC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01F00 80B2C100 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 01F04 80B2C104 03E00008 */  jr      $ra
/* 01F08 80B2C108 00000000 */  nop


