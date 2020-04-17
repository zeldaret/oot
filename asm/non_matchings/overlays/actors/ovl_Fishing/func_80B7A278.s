.rdata
glabel D_80B7B304
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B314
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B324
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B334
    .asciz "../z_fishing.c"
    .balign 4

.late_rodata
glabel D_80B7B8E4
    .float 1500.0

glabel D_80B7B8E8
    .float 0.08

glabel D_80B7B8EC
    .float 0.12

.text
glabel func_80B7A278
/* 108D8 80B7A278 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 108DC 80B7A27C AFB00028 */  sw      $s0, 0x0028($sp)
/* 108E0 80B7A280 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 108E4 80B7A284 AFBF002C */  sw      $ra, 0x002C($sp)
/* 108E8 80B7A288 AFA40068 */  sw      $a0, 0x0068($sp)
/* 108EC 80B7A28C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 108F0 80B7A290 3C0680B8 */  lui     $a2, %hi(D_80B7B304)       ## $a2 = 80B80000
/* 108F4 80B7A294 24C6B304 */  addiu   $a2, $a2, %lo(D_80B7B304)  ## $a2 = 80B7B304
/* 108F8 80B7A298 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 108FC 80B7A29C 240723C4 */  addiu   $a3, $zero, 0x23C4         ## $a3 = 000023C4
/* 10900 80B7A2A0 0C031AB1 */  jal     Graph_OpenDisps
/* 10904 80B7A2A4 AFA50058 */  sw      $a1, 0x0058($sp)
/* 10908 80B7A2A8 0C024F46 */  jal     func_80093D18
/* 1090C 80B7A2AC 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 10910 80B7A2B0 0C024F61 */  jal     func_80093D84
/* 10914 80B7A2B4 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 10918 80B7A2B8 8FA80068 */  lw      $t0, 0x0068($sp)
/* 1091C 80B7A2BC 3C0180B8 */  lui     $at, %hi(D_80B7B8E4)       ## $at = 80B80000
/* 10920 80B7A2C0 C424B8E4 */  lwc1    $f4, %lo(D_80B7B8E4)($at)
/* 10924 80B7A2C4 C50200EC */  lwc1    $f2, 0x00EC($t0)           ## 000000EC
/* 10928 80B7A2C8 4604103C */  c.lt.s  $f2, $f4
/* 1092C 80B7A2CC 00000000 */  nop
/* 10930 80B7A2D0 4500002E */  bc1f    .L80B7A38C
/* 10934 80B7A2D4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 10938 80B7A2D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 1093C 80B7A2DC C50000E4 */  lwc1    $f0, 0x00E4($t0)           ## 000000E4
/* 10940 80B7A2E0 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 10944 80B7A2E4 46023200 */  add.s   $f8, $f6, $f2
/* 10948 80B7A2E8 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 1094C 80B7A2EC 8FA90058 */  lw      $t1, 0x0058($sp)
/* 10950 80B7A2F0 46000005 */  abs.s   $f0, $f0
/* 10954 80B7A2F4 4608003C */  c.lt.s  $f0, $f8
/* 10958 80B7A2F8 00000000 */  nop
/* 1095C 80B7A2FC 45000023 */  bc1f    .L80B7A38C
/* 10960 80B7A300 00000000 */  nop
/* 10964 80B7A304 8D2202C0 */  lw      $v0, 0x02C0($t1)           ## 000002C0
/* 10968 80B7A308 3C0480B8 */  lui     $a0, %hi(D_80B7AFF4)       ## $a0 = 80B80000
/* 1096C 80B7A30C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 10970 80B7A310 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 10974 80B7A314 AD2E02C0 */  sw      $t6, 0x02C0($t1)           ## 000002C0
/* 10978 80B7A318 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 1097C 80B7A31C 85180160 */  lh      $t8, 0x0160($t0)           ## 00000160
/* 10980 80B7A320 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 10984 80B7A324 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 10988 80B7A328 0018C880 */  sll     $t9, $t8,  2
/* 1098C 80B7A32C 00992021 */  addu    $a0, $a0, $t9
/* 10990 80B7A330 8C84AFF4 */  lw      $a0, %lo(D_80B7AFF4)($a0)
/* 10994 80B7A334 3C1980B8 */  lui     $t9, %hi(func_80B7A10C)    ## $t9 = 80B80000
/* 10998 80B7A338 2739A10C */  addiu   $t9, $t9, %lo(func_80B7A10C) ## $t9 = 80B7A10C
/* 1099C 80B7A33C 00045900 */  sll     $t3, $a0,  4
/* 109A0 80B7A340 000B6702 */  srl     $t4, $t3, 28
/* 109A4 80B7A344 000C6880 */  sll     $t5, $t4,  2
/* 109A8 80B7A348 01CD7021 */  addu    $t6, $t6, $t5
/* 109AC 80B7A34C 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 109B0 80B7A350 00815024 */  and     $t2, $a0, $at
/* 109B4 80B7A354 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 109B8 80B7A358 014E7821 */  addu    $t7, $t2, $t6
/* 109BC 80B7A35C 01E1C021 */  addu    $t8, $t7, $at
/* 109C0 80B7A360 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 109C4 80B7A364 910701DA */  lbu     $a3, 0x01DA($t0)           ## 000001DA
/* 109C8 80B7A368 8D0601F8 */  lw      $a2, 0x01F8($t0)           ## 000001F8
/* 109CC 80B7A36C 8D0501DC */  lw      $a1, 0x01DC($t0)           ## 000001DC
/* 109D0 80B7A370 3C0B80B8 */  lui     $t3, %hi(func_80B7A140)    ## $t3 = 80B80000
/* 109D4 80B7A374 256BA140 */  addiu   $t3, $t3, %lo(func_80B7A140) ## $t3 = 80B7A140
/* 109D8 80B7A378 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 109DC 80B7A37C AFA80018 */  sw      $t0, 0x0018($sp)
/* 109E0 80B7A380 AFB90010 */  sw      $t9, 0x0010($sp)
/* 109E4 80B7A384 0C0286B2 */  jal     SkelAnime_DrawSV
/* 109E8 80B7A388 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B7A38C:
/* 109EC 80B7A38C 0C2DD91D */  jal     func_80B76474
/* 109F0 80B7A390 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 109F4 80B7A394 3C040001 */  lui     $a0, 0x0001                ## $a0 = 00010000
/* 109F8 80B7A398 00902021 */  addu    $a0, $a0, $s0
/* 109FC 80B7A39C 8C841E10 */  lw      $a0, 0x1E10($a0)           ## 00011E10
/* 10A00 80B7A3A0 0C2DAD9D */  jal     func_80B6B674
/* 10A04 80B7A3A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 10A08 80B7A3A8 0C2DDC73 */  jal     func_80B771CC
/* 10A0C 80B7A3AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10A10 80B7A3B0 0C2DB04D */  jal     func_80B6C134
/* 10A14 80B7A3B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10A18 80B7A3B8 3C0380B8 */  lui     $v1, %hi(D_80B7E0A6)       ## $v1 = 80B80000
/* 10A1C 80B7A3BC 2463E0A6 */  addiu   $v1, $v1, %lo(D_80B7E0A6)  ## $v1 = 80B7E0A6
/* 10A20 80B7A3C0 84620000 */  lh      $v0, 0x0000($v1)           ## 80B7E0A6
/* 10A24 80B7A3C4 1040001B */  beq     $v0, $zero, .L80B7A434
/* 10A28 80B7A3C8 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 10A2C 80B7A3CC A46C0000 */  sh      $t4, 0x0000($v1)           ## 80B7E0A6
/* 10A30 80B7A3D0 846D0000 */  lh      $t5, 0x0000($v1)           ## 80B7E0A6
/* 10A34 80B7A3D4 3C0A80B8 */  lui     $t2, %hi(D_80B7E075)       ## $t2 = 80B80000
/* 10A38 80B7A3D8 15A00016 */  bne     $t5, $zero, .L80B7A434
/* 10A3C 80B7A3DC 00000000 */  nop
/* 10A40 80B7A3E0 914AE075 */  lbu     $t2, %lo(D_80B7E075)($t2)
/* 10A44 80B7A3E4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 10A48 80B7A3E8 11410005 */  beq     $t2, $at, .L80B7A400
/* 10A4C 80B7A3EC 00000000 */  nop
/* 10A50 80B7A3F0 0C03E803 */  jal     Audio_SetBGM

/* 10A54 80B7A3F4 24040019 */  addiu   $a0, $zero, 0x0019         ## $a0 = 00000019
/* 10A58 80B7A3F8 10000003 */  beq     $zero, $zero, .L80B7A408
/* 10A5C 80B7A3FC 00000000 */  nop
.L80B7A400:
/* 10A60 80B7A400 0C03E803 */  jal     Audio_SetBGM

/* 10A64 80B7A404 24040027 */  addiu   $a0, $zero, 0x0027         ## $a0 = 00000027
.L80B7A408:
/* 10A68 80B7A408 3C0E80B8 */  lui     $t6, %hi(D_80B7E075)       ## $t6 = 80B80000
/* 10A6C 80B7A40C 91CEE075 */  lbu     $t6, %lo(D_80B7E075)($t6)
/* 10A70 80B7A410 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 10A74 80B7A414 11C10005 */  beq     $t6, $at, .L80B7A42C
/* 10A78 80B7A418 00000000 */  nop
/* 10A7C 80B7A41C 0C03E803 */  jal     Audio_SetBGM

/* 10A80 80B7A420 24040019 */  addiu   $a0, $zero, 0x0019         ## $a0 = 00000019
/* 10A84 80B7A424 10000003 */  beq     $zero, $zero, .L80B7A434
/* 10A88 80B7A428 00000000 */  nop
.L80B7A42C:
/* 10A8C 80B7A42C 0C03E803 */  jal     Audio_SetBGM

/* 10A90 80B7A430 24040027 */  addiu   $a0, $zero, 0x0027         ## $a0 = 00000027
.L80B7A434:
/* 10A94 80B7A434 3C0F80B8 */  lui     $t7, %hi(D_80B7E0AC)       ## $t7 = 80B80000
/* 10A98 80B7A438 85EFE0AC */  lh      $t7, %lo(D_80B7E0AC)($t7)
/* 10A9C 80B7A43C 3C1880B8 */  lui     $t8, %hi(D_80B7A674)       ## $t8 = 80B80000
/* 10AA0 80B7A440 51E00022 */  beql    $t7, $zero, .L80B7A4CC
/* 10AA4 80B7A444 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 10AA8 80B7A448 9318A674 */  lbu     $t8, %lo(D_80B7A674)($t8)
/* 10AAC 80B7A44C 5300001F */  beql    $t8, $zero, .L80B7A4CC
/* 10AB0 80B7A450 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 10AB4 80B7A454 0C2DB7CC */  jal     func_80B6DF30
/* 10AB8 80B7A458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10ABC 80B7A45C 3C0480B8 */  lui     $a0, %hi(D_80B7E168)       ## $a0 = 80B80000
/* 10AC0 80B7A460 0C2DB258 */  jal     func_80B6C960
/* 10AC4 80B7A464 2484E168 */  addiu   $a0, $a0, %lo(D_80B7E168)  ## $a0 = 80B7E168
/* 10AC8 80B7A468 3C1980B8 */  lui     $t9, %hi(D_80B7F428)       ## $t9 = 80B80000
/* 10ACC 80B7A46C 2739F428 */  addiu   $t9, $t9, %lo(D_80B7F428)  ## $t9 = 80B7F428
/* 10AD0 80B7A470 3C0580B8 */  lui     $a1, %hi(D_80B7E158)       ## $a1 = 80B80000
/* 10AD4 80B7A474 3C0680B8 */  lui     $a2, %hi(D_80B7E168)       ## $a2 = 80B80000
/* 10AD8 80B7A478 3C0780B8 */  lui     $a3, %hi(D_80B7EAC8)       ## $a3 = 80B80000
/* 10ADC 80B7A47C 24E7EAC8 */  addiu   $a3, $a3, %lo(D_80B7EAC8)  ## $a3 = 80B7EAC8
/* 10AE0 80B7A480 24C6E168 */  addiu   $a2, $a2, %lo(D_80B7E168)  ## $a2 = 80B7E168
/* 10AE4 80B7A484 24A5E158 */  addiu   $a1, $a1, %lo(D_80B7E158)  ## $a1 = 80B7E158
/* 10AE8 80B7A488 AFB90010 */  sw      $t9, 0x0010($sp)
/* 10AEC 80B7A48C 0C2DB0F8 */  jal     func_80B6C3E0
/* 10AF0 80B7A490 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10AF4 80B7A494 3C0580B8 */  lui     $a1, %hi(D_80B7E168)       ## $a1 = 80B80000
/* 10AF8 80B7A498 3C0680B8 */  lui     $a2, %hi(D_80B7EAC8)       ## $a2 = 80B80000
/* 10AFC 80B7A49C 24C6EAC8 */  addiu   $a2, $a2, %lo(D_80B7EAC8)  ## $a2 = 80B7EAC8
/* 10B00 80B7A4A0 24A5E168 */  addiu   $a1, $a1, %lo(D_80B7E168)  ## $a1 = 80B7E168
/* 10B04 80B7A4A4 0C2DB5A2 */  jal     func_80B6D688
/* 10B08 80B7A4A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10B0C 80B7A4AC 26020014 */  addiu   $v0, $s0, 0x0014           ## $v0 = 00000014
/* 10B10 80B7A4B0 804B0014 */  lb      $t3, 0x0014($v0)           ## 00000028
/* 10B14 80B7A4B4 3C0180B8 */  lui     $at, %hi(D_80B7A6C4)       ## $at = 80B80000
/* 10B18 80B7A4B8 A42BA6C4 */  sh      $t3, %lo(D_80B7A6C4)($at)
/* 10B1C 80B7A4BC 804C0015 */  lb      $t4, 0x0015($v0)           ## 00000029
/* 10B20 80B7A4C0 3C0180B8 */  lui     $at, %hi(D_80B7A6C8)       ## $at = 80B80000
/* 10B24 80B7A4C4 A42CA6C8 */  sh      $t4, %lo(D_80B7A6C8)($at)
/* 10B28 80B7A4C8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
.L80B7A4CC:
/* 10B2C 80B7A4CC 3C0180B8 */  lui     $at, %hi(D_80B7A674)       ## $at = 80B80000
/* 10B30 80B7A4D0 A02DA674 */  sb      $t5, %lo(D_80B7A674)($at)
/* 10B34 80B7A4D4 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 10B38 80B7A4D8 44816000 */  mtc1    $at, $f12                  ## $f12 = 130.00
/* 10B3C 80B7A4DC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 10B40 80B7A4E0 44817000 */  mtc1    $at, $f14                  ## $f14 = 40.00
/* 10B44 80B7A4E4 3C0644A2 */  lui     $a2, 0x44A2                ## $a2 = 44A20000
/* 10B48 80B7A4E8 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 44A28000
/* 10B4C 80B7A4EC 0C034261 */  jal     Matrix_Translate
/* 10B50 80B7A4F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 10B54 80B7A4F4 3C0180B8 */  lui     $at, %hi(D_80B7B8E8)       ## $at = 80B80000
/* 10B58 80B7A4F8 C42CB8E8 */  lwc1    $f12, %lo(D_80B7B8E8)($at)
/* 10B5C 80B7A4FC 3C0180B8 */  lui     $at, %hi(D_80B7B8EC)       ## $at = 80B80000
/* 10B60 80B7A500 3C063E0F */  lui     $a2, 0x3E0F                ## $a2 = 3E0F0000
/* 10B64 80B7A504 34C65C29 */  ori     $a2, $a2, 0x5C29           ## $a2 = 3E0F5C29
/* 10B68 80B7A508 C42EB8EC */  lwc1    $f14, %lo(D_80B7B8EC)($at)
/* 10B6C 80B7A50C 0C0342A3 */  jal     Matrix_Scale
/* 10B70 80B7A510 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 10B74 80B7A514 8FA70058 */  lw      $a3, 0x0058($sp)
/* 10B78 80B7A518 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 10B7C 80B7A51C 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 10B80 80B7A520 8CE202C0 */  lw      $v0, 0x02C0($a3)           ## 000002C0
/* 10B84 80B7A524 3C0580B8 */  lui     $a1, %hi(D_80B7B314)       ## $a1 = 80B80000
/* 10B88 80B7A528 24A5B314 */  addiu   $a1, $a1, %lo(D_80B7B314)  ## $a1 = 80B7B314
/* 10B8C 80B7A52C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 10B90 80B7A530 ACEA02C0 */  sw      $t2, 0x02C0($a3)           ## 000002C0
/* 10B94 80B7A534 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 10B98 80B7A538 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 10B9C 80B7A53C 24062451 */  addiu   $a2, $zero, 0x2451         ## $a2 = 00002451
/* 10BA0 80B7A540 0C0346A2 */  jal     Matrix_NewMtx
/* 10BA4 80B7A544 AFA20040 */  sw      $v0, 0x0040($sp)
/* 10BA8 80B7A548 8FA30040 */  lw      $v1, 0x0040($sp)
/* 10BAC 80B7A54C 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 10BB0 80B7A550 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 10BB4 80B7A554 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 10BB8 80B7A558 8FA70058 */  lw      $a3, 0x0058($sp)
/* 10BBC 80B7A55C 3C0580B8 */  lui     $a1, %hi(D_80B7B324)       ## $a1 = 80B80000
/* 10BC0 80B7A560 24A5B324 */  addiu   $a1, $a1, %lo(D_80B7B324)  ## $a1 = 80B7B324
/* 10BC4 80B7A564 8CE202D0 */  lw      $v0, 0x02D0($a3)           ## 000002D0
/* 10BC8 80B7A568 24062452 */  addiu   $a2, $zero, 0x2452         ## $a2 = 00002452
/* 10BCC 80B7A56C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 10BD0 80B7A570 ACEF02D0 */  sw      $t7, 0x02D0($a3)           ## 000002D0
/* 10BD4 80B7A574 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 10BD8 80B7A578 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 10BDC 80B7A57C 0C0346A2 */  jal     Matrix_NewMtx
/* 10BE0 80B7A580 AFA2003C */  sw      $v0, 0x003C($sp)
/* 10BE4 80B7A584 8FA3003C */  lw      $v1, 0x003C($sp)
/* 10BE8 80B7A588 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 10BEC 80B7A58C 258C53D0 */  addiu   $t4, $t4, 0x53D0           ## $t4 = 060153D0
/* 10BF0 80B7A590 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 10BF4 80B7A594 8FB90058 */  lw      $t9, 0x0058($sp)
/* 10BF8 80B7A598 3C04DE00 */  lui     $a0, 0xDE00                ## $a0 = DE000000
/* 10BFC 80B7A59C 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 10C00 80B7A5A0 8F2202C0 */  lw      $v0, 0x02C0($t9)           ## 000002C0
/* 10C04 80B7A5A4 25CE5470 */  addiu   $t6, $t6, 0x5470           ## $t6 = 06015470
/* 10C08 80B7A5A8 3C0F80B8 */  lui     $t7, %hi(D_80B7E0AC)       ## $t7 = 80B80000
/* 10C0C 80B7A5AC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 10C10 80B7A5B0 AF2B02C0 */  sw      $t3, 0x02C0($t9)           ## 000002C0
/* 10C14 80B7A5B4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 10C18 80B7A5B8 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 10C1C 80B7A5BC 8FAD0058 */  lw      $t5, 0x0058($sp)
/* 10C20 80B7A5C0 3C1880B8 */  lui     $t8, %hi(D_80B7E0B6)       ## $t8 = 80B80000
/* 10C24 80B7A5C4 8DA202D0 */  lw      $v0, 0x02D0($t5)           ## 000002D0
/* 10C28 80B7A5C8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 10C2C 80B7A5CC ADAA02D0 */  sw      $t2, 0x02D0($t5)           ## 000002D0
/* 10C30 80B7A5D0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 10C34 80B7A5D4 AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 10C38 80B7A5D8 85EFE0AC */  lh      $t7, %lo(D_80B7E0AC)($t7)
/* 10C3C 80B7A5DC 11E00007 */  beq     $t7, $zero, .L80B7A5FC
/* 10C40 80B7A5E0 00000000 */  nop
/* 10C44 80B7A5E4 9318E0B6 */  lbu     $t8, %lo(D_80B7E0B6)($t8)
/* 10C48 80B7A5E8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 10C4C 80B7A5EC 17010003 */  bne     $t8, $at, .L80B7A5FC
/* 10C50 80B7A5F0 00000000 */  nop
/* 10C54 80B7A5F4 0C2DB4D5 */  jal     func_80B6D354
/* 10C58 80B7A5F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B7A5FC:
/* 10C5C 80B7A5FC 3C0680B8 */  lui     $a2, %hi(D_80B7B334)       ## $a2 = 80B80000
/* 10C60 80B7A600 24C6B334 */  addiu   $a2, $a2, %lo(D_80B7B334)  ## $a2 = 80B7B334
/* 10C64 80B7A604 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 10C68 80B7A608 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 10C6C 80B7A60C 0C031AD5 */  jal     Graph_CloseDisps
/* 10C70 80B7A610 24072459 */  addiu   $a3, $zero, 0x2459         ## $a3 = 00002459
/* 10C74 80B7A614 8FBF002C */  lw      $ra, 0x002C($sp)
/* 10C78 80B7A618 8FB00028 */  lw      $s0, 0x0028($sp)
/* 10C7C 80B7A61C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 10C80 80B7A620 03E00008 */  jr      $ra
/* 10C84 80B7A624 00000000 */  nop
/* 10C88 80B7A628 00000000 */  nop
/* 10C8C 80B7A62C 00000000 */  nop
