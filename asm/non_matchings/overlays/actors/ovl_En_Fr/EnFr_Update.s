.late_rodata
glabel D_80A1D28C
 .word 0x38D1B717
glabel D_80A1D290
 .word 0xC61C3C00

.text
glabel EnFr_Update
/* 002A4 80A1AC44 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 002A8 80A1AC48 AFB00024 */  sw      $s0, 0x0024($sp)
/* 002AC 80A1AC4C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002B0 80A1AC50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B4 80A1AC54 AFB10028 */  sw      $s1, 0x0028($sp)
/* 002B8 80A1AC58 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 002BC 80A1AC5C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 002C0 80A1AC60 AFBF002C */  sw      $ra, 0x002C($sp)
/* 002C4 80A1AC64 00A12021 */  addu    $a0, $a1, $at
/* 002C8 80A1AC68 0C026062 */  jal     Object_IsLoaded

/* 002CC 80A1AC6C 8205036A */  lb      $a1, 0x036A($s0)           ## 0000036A
/* 002D0 80A1AC70 104000AD */  beq     $v0, $zero, .L80A1AF28
/* 002D4 80A1AC74 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 002D8 80A1AC78 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 002DC 80A1AC7C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 002E0 80A1AC80 3C0580A2 */  lui     $a1, %hi(D_80A1D0BC)       ## $a1 = 80A20000
/* 002E4 80A1AC84 01C17824 */  and     $t7, $t6, $at
/* 002E8 80A1AC88 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 002EC 80A1AC8C 0002C080 */  sll     $t8, $v0,  2
/* 002F0 80A1AC90 3C0180A2 */  lui     $at, %hi(D_80A1CFF4)       ## $at = 80A20000
/* 002F4 80A1AC94 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 002F8 80A1AC98 00380821 */  addu    $at, $at, $t8
/* 002FC 80A1AC9C AC30CFF4 */  sw      $s0, %lo(D_80A1CFF4)($at)
/* 00300 80A1ACA0 AFA2003C */  sw      $v0, 0x003C($sp)
/* 00304 80A1ACA4 24A5D0BC */  addiu   $a1, $a1, %lo(D_80A1D0BC)  ## $a1 = 80A1D0BC
/* 00308 80A1ACA8 0C01E037 */  jal     Actor_ProcessInitChain

/* 0030C 80A1ACAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00310 80A1ACB0 3C060601 */  lui     $a2, %hi(D_0600B498)                ## $a2 = 06010000
/* 00314 80A1ACB4 3C070600 */  lui     $a3, %hi(D_06001534)                ## $a3 = 06000000
/* 00318 80A1ACB8 26190190 */  addiu   $t9, $s0, 0x0190           ## $t9 = 00000190
/* 0031C 80A1ACBC 26080220 */  addiu   $t0, $s0, 0x0220           ## $t0 = 00000220
/* 00320 80A1ACC0 24090018 */  addiu   $t1, $zero, 0x0018         ## $t1 = 00000018
/* 00324 80A1ACC4 AFA90018 */  sw      $t1, 0x0018($sp)
/* 00328 80A1ACC8 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0032C 80A1ACCC AFB90010 */  sw      $t9, 0x0010($sp)
/* 00330 80A1ACD0 24E71534 */  addiu   $a3, $a3, %lo(D_06001534)           ## $a3 = 06001534
/* 00334 80A1ACD4 24C6B498 */  addiu   $a2, $a2, %lo(D_0600B498)           ## $a2 = 0600B498
/* 00338 80A1ACD8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0033C 80A1ACDC 0C0291BE */  jal     SkelAnime_InitFlex
/* 00340 80A1ACE0 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00344 80A1ACE4 3C060500 */  lui     $a2, %hi(D_050036F0)                ## $a2 = 05000000
/* 00348 80A1ACE8 3C070500 */  lui     $a3, %hi(D_05002470)                ## $a3 = 05000000
/* 0034C 80A1ACEC 260A02F4 */  addiu   $t2, $s0, 0x02F4           ## $t2 = 000002F4
/* 00350 80A1ACF0 260B0324 */  addiu   $t3, $s0, 0x0324           ## $t3 = 00000324
/* 00354 80A1ACF4 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 00358 80A1ACF8 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 0035C 80A1ACFC AFAB0014 */  sw      $t3, 0x0014($sp)
/* 00360 80A1AD00 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 00364 80A1AD04 24E72470 */  addiu   $a3, $a3, %lo(D_05002470)           ## $a3 = 05002470
/* 00368 80A1AD08 24C636F0 */  addiu   $a2, $a2, %lo(D_050036F0)           ## $a2 = 050036F0
/* 0036C 80A1AD0C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00370 80A1AD10 0C02915F */  jal     SkelAnime_Init

/* 00374 80A1AD14 260502B0 */  addiu   $a1, $s0, 0x02B0           ## $a1 = 000002B0
/* 00378 80A1AD18 2606035C */  addiu   $a2, $s0, 0x035C           ## $a2 = 0000035C
/* 0037C 80A1AD1C AFA60030 */  sw      $a2, 0x0030($sp)
/* 00380 80A1AD20 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00384 80A1AD24 0C01E9D9 */  jal     LightContext_InsertLight

/* 00388 80A1AD28 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 0038C 80A1AD2C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 00390 80A1AD30 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00394 80A1AD34 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 00398 80A1AD38 4600218D */  trunc.w.s $f6, $f4
/* 0039C 80A1AD3C AE020358 */  sw      $v0, 0x0358($s0)           ## 00000358
/* 003A0 80A1AD40 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 003A4 80A1AD44 4600428D */  trunc.w.s $f10, $f8
/* 003A8 80A1AD48 44053000 */  mfc1    $a1, $f6
/* 003AC 80A1AD4C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 003B0 80A1AD50 4600848D */  trunc.w.s $f18, $f16
/* 003B4 80A1AD54 44065000 */  mfc1    $a2, $f10
/* 003B8 80A1AD58 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 003BC 80A1AD5C 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 003C0 80A1AD60 44079000 */  mfc1    $a3, $f18
/* 003C4 80A1AD64 00052C00 */  sll     $a1, $a1, 16
/* 003C8 80A1AD68 00063400 */  sll     $a2, $a2, 16
/* 003CC 80A1AD6C 00073C00 */  sll     $a3, $a3, 16
/* 003D0 80A1AD70 00073C03 */  sra     $a3, $a3, 16
/* 003D4 80A1AD74 00063403 */  sra     $a2, $a2, 16
/* 003D8 80A1AD78 00052C03 */  sra     $a1, $a1, 16
/* 003DC 80A1AD7C AFA9001C */  sw      $t1, 0x001C($sp)
/* 003E0 80A1AD80 AFA80018 */  sw      $t0, 0x0018($sp)
/* 003E4 80A1AD84 AFB90014 */  sw      $t9, 0x0014($sp)
/* 003E8 80A1AD88 AFB80010 */  sw      $t8, 0x0010($sp)
/* 003EC 80A1AD8C 0C01E763 */  jal     Lights_PointNoGlowSetInfo

/* 003F0 80A1AD90 8FA40030 */  lw      $a0, 0x0030($sp)
/* 003F4 80A1AD94 8FAA003C */  lw      $t2, 0x003C($sp)
/* 003F8 80A1AD98 3C0B80A2 */  lui     $t3, %hi(D_80A1D018)       ## $t3 = 80A20000
/* 003FC 80A1AD9C 3C0D80A2 */  lui     $t5, %hi(D_80A1D008)       ## $t5 = 80A20000
/* 00400 80A1ADA0 016A5821 */  addu    $t3, $t3, $t2
/* 00404 80A1ADA4 916BD018 */  lbu     $t3, %lo(D_80A1D018)($t3)
/* 00408 80A1ADA8 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xeee)
/* 0040C 80A1ADAC 95CEF54E */  lhu     $t6, %lo(gSaveContext+0xeee)($t6)
/* 00410 80A1ADB0 000B6040 */  sll     $t4, $t3,  1
/* 00414 80A1ADB4 01AC6821 */  addu    $t5, $t5, $t4
/* 00418 80A1ADB8 95ADD008 */  lhu     $t5, %lo(D_80A1D008)($t5)
/* 0041C 80A1ADBC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00420 80A1ADC0 01AE7824 */  and     $t7, $t5, $t6
/* 00424 80A1ADC4 51E00006 */  beql    $t7, $zero, .L80A1ADE0
/* 00428 80A1ADC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 0042C 80A1ADCC 3C014387 */  lui     $at, 0x4387                ## $at = 43870000
/* 00430 80A1ADD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 270.00
/* 00434 80A1ADD4 10000004 */  beq     $zero, $zero, .L80A1ADE8
/* 00438 80A1ADD8 E60403A0 */  swc1    $f4, 0x03A0($s0)           ## 000003A0
/* 0043C 80A1ADDC 44813000 */  mtc1    $at, $f6                   ## $f6 = 270.00
.L80A1ADE0:
/* 00440 80A1ADE0 00000000 */  nop
/* 00444 80A1ADE4 E60603A0 */  swc1    $f6, 0x03A0($s0)           ## 000003A0
.L80A1ADE8:
/* 00448 80A1ADE8 3C0180A2 */  lui     $at, %hi(D_80A1D28C)       ## $at = 80A20000
/* 0044C 80A1ADEC C42AD28C */  lwc1    $f10, %lo(D_80A1D28C)($at)
/* 00450 80A1ADF0 C60803A0 */  lwc1    $f8, 0x03A0($s0)           ## 000003A0
/* 00454 80A1ADF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00458 80A1ADF8 460A4402 */  mul.s   $f16, $f8, $f10
/* 0045C 80A1ADFC 44058000 */  mfc1    $a1, $f16
/* 00460 80A1AE00 0C00B58B */  jal     Actor_SetScale

/* 00464 80A1AE04 00000000 */  nop
/* 00468 80A1AE08 3C0180A2 */  lui     $at, %hi(D_80A1D290)       ## $at = 80A20000
/* 0046C 80A1AE0C C432D290 */  lwc1    $f18, %lo(D_80A1D290)($at)
/* 00470 80A1AE10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00474 80A1AE14 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 00478 80A1AE18 0C00B56E */  jal     Actor_SetFocus

/* 0047C 80A1AE1C E6120070 */  swc1    $f18, 0x0070($s0)          ## 00000070
/* 00480 80A1AE20 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00484 80A1AE24 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00488 80A1AE28 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 0048C 80A1AE2C 0C00CFBE */  jal     Rand_ZeroFloat

/* 00490 80A1AE30 A2180378 */  sb      $t8, 0x0378($s0)           ## 00000378
/* 00494 80A1AE34 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00498 80A1AE38 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 0049C 80A1AE3C 8E0E0024 */  lw      $t6, 0x0024($s0)           ## 00000024
/* 004A0 80A1AE40 8E0D0028 */  lw      $t5, 0x0028($s0)           ## 00000028
/* 004A4 80A1AE44 46040180 */  add.s   $f6, $f0, $f4
/* 004A8 80A1AE48 AE0E038C */  sw      $t6, 0x038C($s0)           ## 0000038C
/* 004AC 80A1AE4C 8E0E002C */  lw      $t6, 0x002C($s0)           ## 0000002C
/* 004B0 80A1AE50 3C0B80A2 */  lui     $t3, %hi(func_80A1B19C)    ## $t3 = 80A20000
/* 004B4 80A1AE54 4600320D */  trunc.w.s $f8, $f6
/* 004B8 80A1AE58 3C0F80A2 */  lui     $t7, %hi(func_80A1B22C)    ## $t7 = 80A20000
/* 004BC 80A1AE5C 256BB19C */  addiu   $t3, $t3, %lo(func_80A1B19C) ## $t3 = 80A1B19C
/* 004C0 80A1AE60 25EFB22C */  addiu   $t7, $t7, %lo(func_80A1B22C) ## $t7 = 80A1B22C
/* 004C4 80A1AE64 44084000 */  mfc1    $t0, $f8
/* 004C8 80A1AE68 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 004CC 80A1AE6C AE0B0374 */  sw      $t3, 0x0374($s0)           ## 00000374
/* 004D0 80A1AE70 00084C00 */  sll     $t1, $t0, 16
/* 004D4 80A1AE74 00095403 */  sra     $t2, $t1, 16
/* 004D8 80A1AE78 AE0A0370 */  sw      $t2, 0x0370($s0)           ## 00000370
/* 004DC 80A1AE7C A200037A */  sb      $zero, 0x037A($s0)         ## 0000037A
/* 004E0 80A1AE80 A200037B */  sb      $zero, 0x037B($s0)         ## 0000037B
/* 004E4 80A1AE84 A2000379 */  sb      $zero, 0x0379($s0)         ## 00000379
/* 004E8 80A1AE88 AE0F0354 */  sw      $t7, 0x0354($s0)           ## 00000354
/* 004EC 80A1AE8C A200037C */  sb      $zero, 0x037C($s0)         ## 0000037C
/* 004F0 80A1AE90 A200037E */  sb      $zero, 0x037E($s0)         ## 0000037E
/* 004F4 80A1AE94 A200037D */  sb      $zero, 0x037D($s0)         ## 0000037D
/* 004F8 80A1AE98 A2000383 */  sb      $zero, 0x0383($s0)         ## 00000383
/* 004FC 80A1AE9C A2180382 */  sb      $t8, 0x0382($s0)           ## 00000382
/* 00500 80A1AEA0 AE0003A4 */  sw      $zero, 0x03A4($s0)         ## 000003A4
/* 00504 80A1AEA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00508 80A1AEA8 AE0D0390 */  sw      $t5, 0x0390($s0)           ## 00000390
/* 0050C 80A1AEAC 0C286A68 */  jal     func_80A1A9A0
/* 00510 80A1AEB0 AE0E0394 */  sw      $t6, 0x0394($s0)           ## 00000394
/* 00514 80A1AEB4 0C286B03 */  jal     func_80A1AC0C
/* 00518 80A1AEB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0051C 80A1AEBC 3C1980A2 */  lui     $t9, %hi(func_80A1BB34)    ## $t9 = 80A20000
/* 00520 80A1AEC0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00524 80A1AEC4 2739BB34 */  addiu   $t9, $t9, %lo(func_80A1BB34) ## $t9 = 80A1BB34
/* 00528 80A1AEC8 44816000 */  mtc1    $at, $f12                  ## $f12 = 255.00
/* 0052C 80A1AECC AE190130 */  sw      $t9, 0x0130($s0)           ## 00000130
/* 00530 80A1AED0 0C00CFBE */  jal     Rand_ZeroFloat

/* 00534 80A1AED4 A20003A8 */  sb      $zero, 0x03A8($s0)         ## 000003A8
/* 00538 80A1AED8 C602038C */  lwc1    $f2, 0x038C($s0)           ## 0000038C
/* 0053C 80A1AEDC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00540 80A1AEE0 44819000 */  mtc1    $at, $f18                  ## $f18 = 50.00
/* 00544 80A1AEE4 C6100390 */  lwc1    $f16, 0x0390($s0)          ## 00000390
/* 00548 80A1AEE8 E60203AC */  swc1    $f2, 0x03AC($s0)           ## 000003AC
/* 0054C 80A1AEEC E60203B8 */  swc1    $f2, 0x03B8($s0)           ## 000003B8
/* 00550 80A1AEF0 46128080 */  add.s   $f2, $f16, $f18
/* 00554 80A1AEF4 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 00558 80A1AEF8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0055C 80A1AEFC 4600028D */  trunc.w.s $f10, $f0
/* 00560 80A1AF00 E60203B0 */  swc1    $f2, 0x03B0($s0)           ## 000003B0
/* 00564 80A1AF04 E60203BC */  swc1    $f2, 0x03BC($s0)           ## 000003BC
/* 00568 80A1AF08 C6020394 */  lwc1    $f2, 0x0394($s0)           ## 00000394
/* 0056C 80A1AF0C 440B5000 */  mfc1    $t3, $f10
/* 00570 80A1AF10 01A17024 */  and     $t6, $t5, $at
/* 00574 80A1AF14 AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
/* 00578 80A1AF18 000B6300 */  sll     $t4, $t3, 12
/* 0057C 80A1AF1C A60C03AA */  sh      $t4, 0x03AA($s0)           ## 000003AA
/* 00580 80A1AF20 E60203B4 */  swc1    $f2, 0x03B4($s0)           ## 000003B4
/* 00584 80A1AF24 E60203C0 */  swc1    $f2, 0x03C0($s0)           ## 000003C0
.L80A1AF28:
/* 00588 80A1AF28 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0058C 80A1AF2C 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00590 80A1AF30 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00594 80A1AF34 03E00008 */  jr      $ra
/* 00598 80A1AF38 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
