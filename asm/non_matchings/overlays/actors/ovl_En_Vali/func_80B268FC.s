glabel func_80B268FC
/* 0024C 80B268FC 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00250 80B26900 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00254 80B26904 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00258 80B26908 3C050600 */  lui     $a1, %hi(D_06000710)                ## $a1 = 06000000
/* 0025C 80B2690C 24A50710 */  addiu   $a1, $a1, %lo(D_06000710)           ## $a1 = 06000710
/* 00260 80B26910 AFA70090 */  sw      $a3, 0x0090($sp)
/* 00264 80B26914 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00268 80B26918 0C0294D3 */  jal     Animation_MorphToLoop
/* 0026C 80B2691C 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00270 80B26920 8FA70090 */  lw      $a3, 0x0090($sp)
/* 00274 80B26924 27A2003C */  addiu   $v0, $sp, 0x003C           ## $v0 = FFFFFFAC
/* 00278 80B26928 27A30048 */  addiu   $v1, $sp, 0x0048           ## $v1 = FFFFFFB8
/* 0027C 80B2692C 8CEF0024 */  lw      $t7, 0x0024($a3)           ## 00000024
/* 00280 80B26930 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFC4
/* 00284 80B26934 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFD0
/* 00288 80B26938 AC4F0000 */  sw      $t7, 0x0000($v0)           ## FFFFFFAC
/* 0028C 80B2693C 8CEE0028 */  lw      $t6, 0x0028($a3)           ## 00000028
/* 00290 80B26940 8C590000 */  lw      $t9, 0x0000($v0)           ## FFFFFFAC
/* 00294 80B26944 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFDC
/* 00298 80B26948 AC4E0004 */  sw      $t6, 0x0004($v0)           ## FFFFFFB0
/* 0029C 80B2694C 8CEF002C */  lw      $t7, 0x002C($a3)           ## 0000002C
/* 002A0 80B26950 27A80078 */  addiu   $t0, $sp, 0x0078           ## $t0 = FFFFFFE8
/* 002A4 80B26954 27A90084 */  addiu   $t1, $sp, 0x0084           ## $t1 = FFFFFFF4
/* 002A8 80B26958 AC4F0008 */  sw      $t7, 0x0008($v0)           ## FFFFFFB4
/* 002AC 80B2695C ACF903C8 */  sw      $t9, 0x03C8($a3)           ## 000003C8
/* 002B0 80B26960 8C580004 */  lw      $t8, 0x0004($v0)           ## FFFFFFB0
/* 002B4 80B26964 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002B8 80B26968 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 002BC 80B2696C ACF803CC */  sw      $t8, 0x03CC($a3)           ## 000003CC
/* 002C0 80B26970 8C590008 */  lw      $t9, 0x0008($v0)           ## FFFFFFB4
/* 002C4 80B26974 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 002C8 80B26978 ACF903D0 */  sw      $t9, 0x03D0($a3)           ## 000003D0
/* 002CC 80B2697C 8C4B0000 */  lw      $t3, 0x0000($v0)           ## FFFFFFAC
/* 002D0 80B26980 8C4A0004 */  lw      $t2, 0x0004($v0)           ## FFFFFFB0
/* 002D4 80B26984 AC6B0000 */  sw      $t3, 0x0000($v1)           ## FFFFFFB8
/* 002D8 80B26988 8C4B0008 */  lw      $t3, 0x0008($v0)           ## FFFFFFB4
/* 002DC 80B2698C 8C6D0000 */  lw      $t5, 0x0000($v1)           ## FFFFFFB8
/* 002E0 80B26990 AC6A0004 */  sw      $t2, 0x0004($v1)           ## FFFFFFBC
/* 002E4 80B26994 AC6B0008 */  sw      $t3, 0x0008($v1)           ## FFFFFFC0
/* 002E8 80B26998 ACED03BC */  sw      $t5, 0x03BC($a3)           ## 000003BC
/* 002EC 80B2699C 8C6C0004 */  lw      $t4, 0x0004($v1)           ## FFFFFFBC
/* 002F0 80B269A0 ACEC03C0 */  sw      $t4, 0x03C0($a3)           ## 000003C0
/* 002F4 80B269A4 8C6D0008 */  lw      $t5, 0x0008($v1)           ## FFFFFFC0
/* 002F8 80B269A8 ACED03C4 */  sw      $t5, 0x03C4($a3)           ## 000003C4
/* 002FC 80B269AC 8C6F0000 */  lw      $t7, 0x0000($v1)           ## FFFFFFB8
/* 00300 80B269B0 8C6E0004 */  lw      $t6, 0x0004($v1)           ## FFFFFFBC
/* 00304 80B269B4 AC8F0000 */  sw      $t7, 0x0000($a0)           ## FFFFFFC4
/* 00308 80B269B8 8C6F0008 */  lw      $t7, 0x0008($v1)           ## FFFFFFC0
/* 0030C 80B269BC 8C990000 */  lw      $t9, 0x0000($a0)           ## FFFFFFC4
/* 00310 80B269C0 AC8E0004 */  sw      $t6, 0x0004($a0)           ## FFFFFFC8
/* 00314 80B269C4 AC8F0008 */  sw      $t7, 0x0008($a0)           ## FFFFFFCC
/* 00318 80B269C8 ACF90348 */  sw      $t9, 0x0348($a3)           ## 00000348
/* 0031C 80B269CC 8C980004 */  lw      $t8, 0x0004($a0)           ## FFFFFFC8
/* 00320 80B269D0 ACF8034C */  sw      $t8, 0x034C($a3)           ## 0000034C
/* 00324 80B269D4 8C990008 */  lw      $t9, 0x0008($a0)           ## FFFFFFCC
/* 00328 80B269D8 ACF90350 */  sw      $t9, 0x0350($a3)           ## 00000350
/* 0032C 80B269DC 8C8B0000 */  lw      $t3, 0x0000($a0)           ## FFFFFFC4
/* 00330 80B269E0 8C8A0004 */  lw      $t2, 0x0004($a0)           ## FFFFFFC8
/* 00334 80B269E4 ACAB0000 */  sw      $t3, 0x0000($a1)           ## FFFFFFD0
/* 00338 80B269E8 8C8B0008 */  lw      $t3, 0x0008($a0)           ## FFFFFFCC
/* 0033C 80B269EC 8CAD0000 */  lw      $t5, 0x0000($a1)           ## FFFFFFD0
/* 00340 80B269F0 ACAA0004 */  sw      $t2, 0x0004($a1)           ## FFFFFFD4
/* 00344 80B269F4 ACAB0008 */  sw      $t3, 0x0008($a1)           ## FFFFFFD8
/* 00348 80B269F8 ACED033C */  sw      $t5, 0x033C($a3)           ## 0000033C
/* 0034C 80B269FC 8CAC0004 */  lw      $t4, 0x0004($a1)           ## FFFFFFD4
/* 00350 80B26A00 ACEC0340 */  sw      $t4, 0x0340($a3)           ## 00000340
/* 00354 80B26A04 8CAD0008 */  lw      $t5, 0x0008($a1)           ## FFFFFFD8
/* 00358 80B26A08 ACED0344 */  sw      $t5, 0x0344($a3)           ## 00000344
/* 0035C 80B26A0C 8CAF0000 */  lw      $t7, 0x0000($a1)           ## FFFFFFD0
/* 00360 80B26A10 8CAE0004 */  lw      $t6, 0x0004($a1)           ## FFFFFFD4
/* 00364 80B26A14 ACCF0000 */  sw      $t7, 0x0000($a2)           ## FFFFFFDC
/* 00368 80B26A18 8CAF0008 */  lw      $t7, 0x0008($a1)           ## FFFFFFD8
/* 0036C 80B26A1C 8CD90000 */  lw      $t9, 0x0000($a2)           ## FFFFFFDC
/* 00370 80B26A20 ACCE0004 */  sw      $t6, 0x0004($a2)           ## FFFFFFE0
/* 00374 80B26A24 ACCF0008 */  sw      $t7, 0x0008($a2)           ## FFFFFFE4
/* 00378 80B26A28 ACF903E0 */  sw      $t9, 0x03E0($a3)           ## 000003E0
/* 0037C 80B26A2C 8CD80004 */  lw      $t8, 0x0004($a2)           ## FFFFFFE0
/* 00380 80B26A30 ACF803E4 */  sw      $t8, 0x03E4($a3)           ## 000003E4
/* 00384 80B26A34 8CD90008 */  lw      $t9, 0x0008($a2)           ## FFFFFFE4
/* 00388 80B26A38 ACF903E8 */  sw      $t9, 0x03E8($a3)           ## 000003E8
/* 0038C 80B26A3C 8CCB0000 */  lw      $t3, 0x0000($a2)           ## FFFFFFDC
/* 00390 80B26A40 8CCA0004 */  lw      $t2, 0x0004($a2)           ## FFFFFFE0
/* 00394 80B26A44 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 00398 80B26A48 8CCB0008 */  lw      $t3, 0x0008($a2)           ## FFFFFFE4
/* 0039C 80B26A4C 8D0D0000 */  lw      $t5, 0x0000($t0)           ## FFFFFFE8
/* 003A0 80B26A50 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 003A4 80B26A54 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 003A8 80B26A58 ACED03D4 */  sw      $t5, 0x03D4($a3)           ## 000003D4
/* 003AC 80B26A5C 8D0C0004 */  lw      $t4, 0x0004($t0)           ## FFFFFFEC
/* 003B0 80B26A60 ACEC03D8 */  sw      $t4, 0x03D8($a3)           ## 000003D8
/* 003B4 80B26A64 8D0D0008 */  lw      $t5, 0x0008($t0)           ## FFFFFFF0
/* 003B8 80B26A68 ACED03DC */  sw      $t5, 0x03DC($a3)           ## 000003DC
/* 003BC 80B26A6C 8D0F0000 */  lw      $t7, 0x0000($t0)           ## FFFFFFE8
/* 003C0 80B26A70 8D0E0004 */  lw      $t6, 0x0004($t0)           ## FFFFFFEC
/* 003C4 80B26A74 AD2F0000 */  sw      $t7, 0x0000($t1)           ## FFFFFFF4
/* 003C8 80B26A78 8D0F0008 */  lw      $t7, 0x0008($t0)           ## FFFFFFF0
/* 003CC 80B26A7C 8D390000 */  lw      $t9, 0x0000($t1)           ## FFFFFFF4
/* 003D0 80B26A80 AD2E0004 */  sw      $t6, 0x0004($t1)           ## FFFFFFF8
/* 003D4 80B26A84 AD2F0008 */  sw      $t7, 0x0008($t1)           ## FFFFFFFC
/* 003D8 80B26A88 ACF90360 */  sw      $t9, 0x0360($a3)           ## 00000360
/* 003DC 80B26A8C 8D380004 */  lw      $t8, 0x0004($t1)           ## FFFFFFF8
/* 003E0 80B26A90 C4E20028 */  lwc1    $f2, 0x0028($a3)           ## 00000028
/* 003E4 80B26A94 8CEC0004 */  lw      $t4, 0x0004($a3)           ## 00000004
/* 003E8 80B26A98 ACF80364 */  sw      $t8, 0x0364($a3)           ## 00000364
/* 003EC 80B26A9C 8D390008 */  lw      $t9, 0x0008($t1)           ## FFFFFFFC
/* 003F0 80B26AA0 46041001 */  sub.s   $f0, $f2, $f4
/* 003F4 80B26AA4 90EE040D */  lbu     $t6, 0x040D($a3)           ## 0000040D
/* 003F8 80B26AA8 ACF90368 */  sw      $t9, 0x0368($a3)           ## 00000368
/* 003FC 80B26AAC 8D2B0000 */  lw      $t3, 0x0000($t1)           ## FFFFFFF4
/* 00400 80B26AB0 3C1880B2 */  lui     $t8, %hi(func_80B2716C)    ## $t8 = 80B20000
/* 00404 80B26AB4 2718716C */  addiu   $t8, $t8, %lo(func_80B2716C) ## $t8 = 80B2716C
/* 00408 80B26AB8 ACEB0354 */  sw      $t3, 0x0354($a3)           ## 00000354
/* 0040C 80B26ABC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## FFFFFFF8
/* 00410 80B26AC0 01816824 */  and     $t5, $t4, $at
/* 00414 80B26AC4 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00418 80B26AC8 ACEA0358 */  sw      $t2, 0x0358($a3)           ## 00000358
/* 0041C 80B26ACC 8D2B0008 */  lw      $t3, 0x0008($t1)           ## FFFFFFFC
/* 00420 80B26AD0 E4E00358 */  swc1    $f0, 0x0358($a3)           ## 00000358
/* 00424 80B26AD4 E4E00364 */  swc1    $f0, 0x0364($a3)           ## 00000364
/* 00428 80B26AD8 E4E003D8 */  swc1    $f0, 0x03D8($a3)           ## 000003D8
/* 0042C 80B26ADC E4E003E4 */  swc1    $f0, 0x03E4($a3)           ## 000003E4
/* 00430 80B26AE0 E4E00340 */  swc1    $f0, 0x0340($a3)           ## 00000340
/* 00434 80B26AE4 E4E0034C */  swc1    $f0, 0x034C($a3)           ## 0000034C
/* 00438 80B26AE8 E4E003C0 */  swc1    $f0, 0x03C0($a3)           ## 000003C0
/* 0043C 80B26AEC E4E003CC */  swc1    $f0, 0x03CC($a3)           ## 000003CC
/* 00440 80B26AF0 ACED0004 */  sw      $t5, 0x0004($a3)           ## 00000004
/* 00444 80B26AF4 A0EF040D */  sb      $t7, 0x040D($a3)           ## 0000040D
/* 00448 80B26AF8 A0E00195 */  sb      $zero, 0x0195($a3)         ## 00000195
/* 0044C 80B26AFC ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 00450 80B26B00 E4E202F8 */  swc1    $f2, 0x02F8($a3)           ## 000002F8
/* 00454 80B26B04 ACEB035C */  sw      $t3, 0x035C($a3)           ## 0000035C
/* 00458 80B26B08 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0045C 80B26B0C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 00460 80B26B10 03E00008 */  jr      $ra
/* 00464 80B26B14 00000000 */  nop
