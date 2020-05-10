glabel func_80AB9F24
/* 002E4 80AB9F24 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 002E8 80AB9F28 AFB00028 */  sw      $s0, 0x0028($sp)
/* 002EC 80AB9F2C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002F0 80AB9F30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002F4 80AB9F34 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 002F8 80AB9F38 AFBF002C */  sw      $ra, 0x002C($sp)
/* 002FC 80AB9F3C AFA5004C */  sw      $a1, 0x004C($sp)
/* 00300 80AB9F40 00A12021 */  addu    $a0, $a1, $at
/* 00304 80AB9F44 82050280 */  lb      $a1, 0x0280($s0)           ## 00000280
/* 00308 80AB9F48 0C026062 */  jal     Object_IsLoaded

/* 0030C 80AB9F4C AFA40038 */  sw      $a0, 0x0038($sp)
/* 00310 80AB9F50 104000AD */  beq     $v0, $zero, .L80ABA208
/* 00314 80AB9F54 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00318 80AB9F58 0C026062 */  jal     Object_IsLoaded

/* 0031C 80AB9F5C 82050281 */  lb      $a1, 0x0281($s0)           ## 00000281
/* 00320 80AB9F60 104000A9 */  beq     $v0, $zero, .L80ABA208
/* 00324 80AB9F64 8FA4004C */  lw      $a0, 0x004C($sp)
/* 00328 80AB9F68 820E0280 */  lb      $t6, 0x0280($s0)           ## 00000280
/* 0032C 80AB9F6C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00330 80AB9F70 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00334 80AB9F74 000E7900 */  sll     $t7, $t6,  4
/* 00338 80AB9F78 01EE7821 */  addu    $t7, $t7, $t6
/* 0033C 80AB9F7C 000F7880 */  sll     $t7, $t7,  2
/* 00340 80AB9F80 008FC021 */  addu    $t8, $a0, $t7
/* 00344 80AB9F84 0338C821 */  addu    $t9, $t9, $t8
/* 00348 80AB9F88 8F3917B4 */  lw      $t9, 0x17B4($t9)           ## 000117B4
/* 0034C 80AB9F8C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00350 80AB9F90 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00354 80AB9F94 03214021 */  addu    $t0, $t9, $at
/* 00358 80AB9F98 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 0035C 80AB9F9C 26090190 */  addiu   $t1, $s0, 0x0190           ## $t1 = 00000190
/* 00360 80AB9FA0 260A01F0 */  addiu   $t2, $s0, 0x01F0           ## $t2 = 000001F0
/* 00364 80AB9FA4 240B0010 */  addiu   $t3, $zero, 0x0010         ## $t3 = 00000010
/* 00368 80AB9FA8 AC286FC0 */  sw      $t0, %lo(gSegments+0x18)($at)
/* 0036C 80AB9FAC AFAB0018 */  sw      $t3, 0x0018($sp)
/* 00370 80AB9FB0 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00374 80AB9FB4 AFA90010 */  sw      $t1, 0x0010($sp)
/* 00378 80AB9FB8 24C600F0 */  addiu   $a2, $a2, 0x00F0           ## $a2 = 060000F0
/* 0037C 80AB9FBC AFA50038 */  sw      $a1, 0x0038($sp)
/* 00380 80AB9FC0 0C0291BE */  jal     SkelAnime_InitSV
/* 00384 80AB9FC4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00388 80AB9FC8 820D0281 */  lb      $t5, 0x0281($s0)           ## 00000281
/* 0038C 80AB9FCC 8FAC004C */  lw      $t4, 0x004C($sp)
/* 00390 80AB9FD0 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00394 80AB9FD4 000D7100 */  sll     $t6, $t5,  4
/* 00398 80AB9FD8 01CD7021 */  addu    $t6, $t6, $t5
/* 0039C 80AB9FDC 000E7080 */  sll     $t6, $t6,  2
/* 003A0 80AB9FE0 018E7821 */  addu    $t7, $t4, $t6
/* 003A4 80AB9FE4 030FC021 */  addu    $t8, $t8, $t7
/* 003A8 80AB9FE8 8F1817B4 */  lw      $t8, 0x17B4($t8)           ## 000117B4
/* 003AC 80AB9FEC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 003B0 80AB9FF0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 003B4 80AB9FF4 0301C821 */  addu    $t9, $t8, $at
/* 003B8 80AB9FF8 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 003BC 80AB9FFC AC396FC0 */  sw      $t9, %lo(gSegments+0x18)($at)
/* 003C0 80ABA000 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 003C4 80ABA004 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 003C8 80ABA008 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 003CC 80ABA00C A608027E */  sh      $t0, 0x027E($s0)           ## 0000027E
/* 003D0 80ABA010 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 003D4 80ABA014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D8 80ABA018 0C00B58B */  jal     Actor_SetScale

/* 003DC 80ABA01C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 003E0 80ABA020 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 003E4 80ABA024 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 003E8 80ABA028 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 003EC 80ABA02C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 003F0 80ABA030 0C00AC78 */  jal     ActorShape_Init

/* 003F4 80ABA034 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 003F8 80ABA038 260502B0 */  addiu   $a1, $s0, 0x02B0           ## $a1 = 000002B0
/* 003FC 80ABA03C AFA50034 */  sw      $a1, 0x0034($sp)
/* 00400 80ABA040 0C0170D9 */  jal     Collider_InitCylinder

/* 00404 80ABA044 8FA4004C */  lw      $a0, 0x004C($sp)
/* 00408 80ABA048 3C0780AC */  lui     $a3, %hi(D_80ABB3C4)       ## $a3 = 80AC0000
/* 0040C 80ABA04C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00410 80ABA050 24E7B3C4 */  addiu   $a3, $a3, %lo(D_80ABB3C4)  ## $a3 = 80ABB3C4
/* 00414 80ABA054 8FA4004C */  lw      $a0, 0x004C($sp)
/* 00418 80ABA058 0C01712B */  jal     Collider_SetCylinder

/* 0041C 80ABA05C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00420 80ABA060 86030278 */  lh      $v1, 0x0278($s0)           ## 00000278
/* 00424 80ABA064 3C0A80AC */  lui     $t2, %hi(func_80ABB228)    ## $t2 = 80AC0000
/* 00428 80ABA068 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 0042C 80ABA06C 254AB228 */  addiu   $t2, $t2, %lo(func_80ABB228) ## $t2 = 80ABB228
/* 00430 80ABA070 A2000272 */  sb      $zero, 0x0272($s0)         ## 00000272
/* 00434 80ABA074 A209001F */  sb      $t1, 0x001F($s0)           ## 0000001F
/* 00438 80ABA078 10600006 */  beq     $v1, $zero, .L80ABA094
/* 0043C 80ABA07C AE0A0134 */  sw      $t2, 0x0134($s0)           ## 00000134
/* 00440 80ABA080 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00444 80ABA084 10610047 */  beq     $v1, $at, .L80ABA1A4
/* 00448 80ABA088 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0044C 80ABA08C 1000005F */  beq     $zero, $zero, .L80ABA20C
/* 00450 80ABA090 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ABA094:
/* 00454 80ABA094 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00458 80ABA098 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0045C 80ABA09C 944B0EF0 */  lhu     $t3, 0x0EF0($v0)           ## 8015F550
/* 00460 80ABA0A0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00464 80ABA0A4 316D1000 */  andi    $t5, $t3, 0x1000           ## $t5 = 00000000
/* 00468 80ABA0A8 15A0001D */  bne     $t5, $zero, .L80ABA120
/* 0046C 80ABA0AC 00000000 */  nop
/* 00470 80ABA0B0 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 8015E664
/* 00474 80ABA0B4 1180001A */  beq     $t4, $zero, .L80ABA120
/* 00478 80ABA0B8 00000000 */  nop
/* 0047C 80ABA0BC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00480 80ABA0C0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00484 80ABA0C4 2484A630 */  addiu   $a0, $a0, 0xA630           ## $a0 = 0600A630
/* 00488 80ABA0C8 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 0048C 80ABA0CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00490 80ABA0D0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00494 80ABA0D4 46803220 */  cvt.s.w $f8, $f6
/* 00498 80ABA0D8 44070000 */  mfc1    $a3, $f0
/* 0049C 80ABA0DC 24A5A630 */  addiu   $a1, $a1, 0xA630           ## $a1 = 0600A630
/* 004A0 80ABA0E0 8FA40038 */  lw      $a0, 0x0038($sp)
/* 004A4 80ABA0E4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004A8 80ABA0E8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 004AC 80ABA0EC 4600428D */  trunc.w.s $f10, $f8
/* 004B0 80ABA0F0 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 004B4 80ABA0F4 440F5000 */  mfc1    $t7, $f10
/* 004B8 80ABA0F8 00000000 */  nop
/* 004BC 80ABA0FC 000FC400 */  sll     $t8, $t7, 16
/* 004C0 80ABA100 0018CC03 */  sra     $t9, $t8, 16
/* 004C4 80ABA104 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 004C8 80ABA108 00000000 */  nop
/* 004CC 80ABA10C 468084A0 */  cvt.s.w $f18, $f16
/* 004D0 80ABA110 0C029468 */  jal     SkelAnime_ChangeAnim

/* 004D4 80ABA114 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 004D8 80ABA118 10000017 */  beq     $zero, $zero, .L80ABA178
/* 004DC 80ABA11C 00000000 */  nop
.L80ABA120:
/* 004E0 80ABA120 0C028800 */  jal     SkelAnime_GetFrameCount

/* 004E4 80ABA124 248407D0 */  addiu   $a0, $a0, 0x07D0           ## $a0 = 000007D0
/* 004E8 80ABA128 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 004EC 80ABA12C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 004F0 80ABA130 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004F4 80ABA134 468021A0 */  cvt.s.w $f6, $f4
/* 004F8 80ABA138 44070000 */  mfc1    $a3, $f0
/* 004FC 80ABA13C 24A507D0 */  addiu   $a1, $a1, 0x07D0           ## $a1 = 060007D0
/* 00500 80ABA140 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00504 80ABA144 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00508 80ABA148 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0050C 80ABA14C 4600320D */  trunc.w.s $f8, $f6
/* 00510 80ABA150 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00514 80ABA154 44094000 */  mfc1    $t1, $f8
/* 00518 80ABA158 00000000 */  nop
/* 0051C 80ABA15C 00095400 */  sll     $t2, $t1, 16
/* 00520 80ABA160 000A5C03 */  sra     $t3, $t2, 16
/* 00524 80ABA164 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 00528 80ABA168 00000000 */  nop
/* 0052C 80ABA16C 46805420 */  cvt.s.w $f16, $f10
/* 00530 80ABA170 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00534 80ABA174 E7B00010 */  swc1    $f16, 0x0010($sp)
.L80ABA178:
/* 00538 80ABA178 3C0D8016 */  lui     $t5, %hi(gSaveContext+4)
/* 0053C 80ABA17C 8DADE664 */  lw      $t5, %lo(gSaveContext+4)($t5)
/* 00540 80ABA180 3C0E80AC */  lui     $t6, %hi(func_80ABA21C)    ## $t6 = 80AC0000
/* 00544 80ABA184 3C0C80AC */  lui     $t4, %hi(func_80ABA778)    ## $t4 = 80AC0000
/* 00548 80ABA188 15A00004 */  bne     $t5, $zero, .L80ABA19C
/* 0054C 80ABA18C 25CEA21C */  addiu   $t6, $t6, %lo(func_80ABA21C) ## $t6 = 80ABA21C
/* 00550 80ABA190 258CA778 */  addiu   $t4, $t4, %lo(func_80ABA778) ## $t4 = 80ABA778
/* 00554 80ABA194 1000001C */  beq     $zero, $zero, .L80ABA208
/* 00558 80ABA198 AE0C0250 */  sw      $t4, 0x0250($s0)           ## 00000250
.L80ABA19C:
/* 0055C 80ABA19C 1000001A */  beq     $zero, $zero, .L80ABA208
/* 00560 80ABA1A0 AE0E0250 */  sw      $t6, 0x0250($s0)           ## 00000250
.L80ABA1A4:
/* 00564 80ABA1A4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00568 80ABA1A8 248407D0 */  addiu   $a0, $a0, 0x07D0           ## $a0 = 000007D0
/* 0056C 80ABA1AC 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00570 80ABA1B0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00574 80ABA1B4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00578 80ABA1B8 46809120 */  cvt.s.w $f4, $f18
/* 0057C 80ABA1BC 44070000 */  mfc1    $a3, $f0
/* 00580 80ABA1C0 24A507D0 */  addiu   $a1, $a1, 0x07D0           ## $a1 = 060007D0
/* 00584 80ABA1C4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00588 80ABA1C8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0058C 80ABA1CC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00590 80ABA1D0 4600218D */  trunc.w.s $f6, $f4
/* 00594 80ABA1D4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00598 80ABA1D8 44183000 */  mfc1    $t8, $f6
/* 0059C 80ABA1DC 00000000 */  nop
/* 005A0 80ABA1E0 0018CC00 */  sll     $t9, $t8, 16
/* 005A4 80ABA1E4 00194403 */  sra     $t0, $t9, 16
/* 005A8 80ABA1E8 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 005AC 80ABA1EC 00000000 */  nop
/* 005B0 80ABA1F0 468042A0 */  cvt.s.w $f10, $f8
/* 005B4 80ABA1F4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 005B8 80ABA1F8 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 005BC 80ABA1FC 3C0980AC */  lui     $t1, %hi(func_80ABAD38)    ## $t1 = 80AC0000
/* 005C0 80ABA200 2529AD38 */  addiu   $t1, $t1, %lo(func_80ABAD38) ## $t1 = 80ABAD38
/* 005C4 80ABA204 AE090250 */  sw      $t1, 0x0250($s0)           ## 00000250
.L80ABA208:
/* 005C8 80ABA208 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ABA20C:
/* 005CC 80ABA20C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 005D0 80ABA210 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 005D4 80ABA214 03E00008 */  jr      $ra
/* 005D8 80ABA218 00000000 */  nop
