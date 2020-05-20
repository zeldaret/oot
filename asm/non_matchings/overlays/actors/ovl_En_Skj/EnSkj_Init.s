glabel EnSkj_Init
/* 001FC 80AFE4AC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00200 80AFE4B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00204 80AFE4B4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00208 80AFE4B8 AFA50054 */  sw      $a1, 0x0054($sp)
/* 0020C 80AFE4BC 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00210 80AFE4C0 3C0580B0 */  lui     $a1, %hi(D_80B017C0)       ## $a1 = 80B00000
/* 00214 80AFE4C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00218 80AFE4C8 00031A83 */  sra     $v1, $v1, 10
/* 0021C 80AFE4CC 3063003F */  andi    $v1, $v1, 0x003F           ## $v1 = 00000000
/* 00220 80AFE4D0 00031C00 */  sll     $v1, $v1, 16
/* 00224 80AFE4D4 00031C03 */  sra     $v1, $v1, 16
/* 00228 80AFE4D8 A7A3004E */  sh      $v1, 0x004E($sp)
/* 0022C 80AFE4DC 0C01E037 */  jal     Actor_ProcessInitChain

/* 00230 80AFE4E0 24A517C0 */  addiu   $a1, $a1, %lo(D_80B017C0)  ## $a1 = 80B017C0
/* 00234 80AFE4E4 87A3004E */  lh      $v1, 0x004E($sp)
/* 00238 80AFE4E8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0023C 80AFE4EC 3C0280B0 */  lui     $v0, %hi(D_80B01640)       ## $v0 = 80B00000
/* 00240 80AFE4F0 10610006 */  beq     $v1, $at, .L80AFE50C
/* 00244 80AFE4F4 24421640 */  addiu   $v0, $v0, %lo(D_80B01640)  ## $v0 = 80B01640
/* 00248 80AFE4F8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0024C 80AFE4FC 10610017 */  beq     $v1, $at, .L80AFE55C
/* 00250 80AFE500 3C0280B0 */  lui     $v0, %hi(D_80B01640)       ## $v0 = 80B00000
/* 00254 80AFE504 10000035 */  beq     $zero, $zero, .L80AFE5DC
/* 00258 80AFE508 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80AFE50C:
/* 0025C 80AFE50C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00260 80AFE510 A04E0000 */  sb      $t6, 0x0000($v0)           ## 80B00000
/* 00264 80AFE514 AC500004 */  sw      $s0, 0x0004($v0)           ## 80B00004
/* 00268 80AFE518 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 0026C 80AFE51C 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 00270 80AFE520 3C0F80B0 */  lui     $t7, %hi(func_80B00964)    ## $t7 = 80B00000
/* 00274 80AFE524 0301C824 */  and     $t9, $t8, $at
/* 00278 80AFE528 25EF0964 */  addiu   $t7, $t7, %lo(func_80B00964) ## $t7 = 80B00964
/* 0027C 80AFE52C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00280 80AFE530 AE00012C */  sw      $zero, 0x012C($s0)         ## 0000012C
/* 00284 80AFE534 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00288 80AFE538 AE0F0130 */  sw      $t7, 0x0130($s0)           ## 00000130
/* 0028C 80AFE53C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00290 80AFE540 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00294 80AFE544 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00298 80AFE548 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 0029C 80AFE54C 0C00CDD2 */  jal     Actor_ChangeType

/* 002A0 80AFE550 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 002A4 80AFE554 100000D7 */  beq     $zero, $zero, .L80AFE8B4
/* 002A8 80AFE558 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AFE55C:
/* 002AC 80AFE55C 24421640 */  addiu   $v0, $v0, %lo(D_80B01640)  ## $v0 = 00001640
/* 002B0 80AFE560 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 002B4 80AFE564 A04A0000 */  sb      $t2, 0x0000($v0)           ## 00001640
/* 002B8 80AFE568 AC500004 */  sw      $s0, 0x0004($v0)           ## 00001644
/* 002BC 80AFE56C 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 002C0 80AFE570 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 002C4 80AFE574 3C0B80B0 */  lui     $t3, %hi(func_80B01244)    ## $t3 = 80B00000
/* 002C8 80AFE578 01816824 */  and     $t5, $t4, $at
/* 002CC 80AFE57C 256B1244 */  addiu   $t3, $t3, %lo(func_80B01244) ## $t3 = 80B01244
/* 002D0 80AFE580 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 002D4 80AFE584 AE00012C */  sw      $zero, 0x012C($s0)         ## 0000012C
/* 002D8 80AFE588 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 002DC 80AFE58C AE0B0130 */  sw      $t3, 0x0130($s0)           ## 00000130
/* 002E0 80AFE590 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 002E4 80AFE594 8FA40054 */  lw      $a0, 0x0054($sp)
/* 002E8 80AFE598 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002EC 80AFE59C 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 002F0 80AFE5A0 0C00CDD2 */  jal     Actor_ChangeType

/* 002F4 80AFE5A4 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 002F8 80AFE5A8 3C0180B0 */  lui     $at, %hi(D_80B018F8)       ## $at = 80B00000
/* 002FC 80AFE5AC C42418F8 */  lwc1    $f4, %lo(D_80B018F8)($at)
/* 00300 80AFE5B0 3C01C2B4 */  lui     $at, 0xC2B4                ## $at = C2B40000
/* 00304 80AFE5B4 44813000 */  mtc1    $at, $f6                   ## $f6 = -90.00
/* 00308 80AFE5B8 3C0143E1 */  lui     $at, 0x43E1                ## $at = 43E10000
/* 0030C 80AFE5BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 450.00
/* 00310 80AFE5C0 3C1880B0 */  lui     $t8, %hi(func_80B00A54)    ## $t8 = 80B00000
/* 00314 80AFE5C4 27180A54 */  addiu   $t8, $t8, %lo(func_80B00A54) ## $t8 = 80B00A54
/* 00318 80AFE5C8 AE180274 */  sw      $t8, 0x0274($s0)           ## 00000274
/* 0031C 80AFE5CC E6040038 */  swc1    $f4, 0x0038($s0)           ## 00000038
/* 00320 80AFE5D0 E606003C */  swc1    $f6, 0x003C($s0)           ## 0000003C
/* 00324 80AFE5D4 100000B6 */  beq     $zero, $zero, .L80AFE8B0
/* 00328 80AFE5D8 E6080040 */  swc1    $f8, 0x0040($s0)           ## 00000040
.L80AFE5DC:
/* 0032C 80AFE5DC A603001C */  sh      $v1, 0x001C($s0)           ## 0000001C
/* 00330 80AFE5E0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00334 80AFE5E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00338 80AFE5E8 10400010 */  beq     $v0, $zero, .L80AFE62C
/* 0033C 80AFE5EC 00000000 */  nop
/* 00340 80AFE5F0 1041000E */  beq     $v0, $at, .L80AFE62C
/* 00344 80AFE5F4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00348 80AFE5F8 1041000C */  beq     $v0, $at, .L80AFE62C
/* 0034C 80AFE5FC 3C198012 */  lui     $t9, %hi(gItemSlots+0x2d)
/* 00350 80AFE600 93397491 */  lbu     $t9, %lo(gItemSlots+0x2d)($t9)
/* 00354 80AFE604 3C088016 */  lui     $t0, %hi(gSaveContext+0x74)
/* 00358 80AFE608 01194021 */  addu    $t0, $t0, $t9
/* 0035C 80AFE60C 9108E6D4 */  lbu     $t0, %lo(gSaveContext+0x74)($t0)
/* 00360 80AFE610 29010032 */  slti    $at, $t0, 0x0032
/* 00364 80AFE614 10200005 */  beq     $at, $zero, .L80AFE62C
/* 00368 80AFE618 00000000 */  nop
/* 0036C 80AFE61C 0C00B55C */  jal     Actor_Kill

/* 00370 80AFE620 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00374 80AFE624 100000A3 */  beq     $zero, $zero, .L80AFE8B4
/* 00378 80AFE628 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AFE62C:
/* 0037C 80AFE62C 0C2BF90A */  jal     func_80AFE428
/* 00380 80AFE630 A7A3004E */  sh      $v1, 0x004E($sp)
/* 00384 80AFE634 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00388 80AFE638 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0038C 80AFE63C 26090190 */  addiu   $t1, $s0, 0x0190           ## $t1 = 00000190
/* 00390 80AFE640 260A0202 */  addiu   $t2, $s0, 0x0202           ## $t2 = 00000202
/* 00394 80AFE644 240B0013 */  addiu   $t3, $zero, 0x0013         ## $t3 = 00000013
/* 00398 80AFE648 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 0039C 80AFE64C AFAA0014 */  sw      $t2, 0x0014($sp)
/* 003A0 80AFE650 AFA90010 */  sw      $t1, 0x0010($sp)
/* 003A4 80AFE654 24E70E10 */  addiu   $a3, $a3, 0x0E10           ## $a3 = 06000E10
/* 003A8 80AFE658 24C65F40 */  addiu   $a2, $a2, 0x5F40           ## $a2 = 06005F40
/* 003AC 80AFE65C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 003B0 80AFE660 0C0291BE */  jal     SkelAnime_InitSV
/* 003B4 80AFE664 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 003B8 80AFE668 87A3004E */  lh      $v1, 0x004E($sp)
/* 003BC 80AFE66C 0460000F */  bltz    $v1, .L80AFE6AC
/* 003C0 80AFE670 28610003 */  slti    $at, $v1, 0x0003
/* 003C4 80AFE674 1020000D */  beq     $at, $zero, .L80AFE6AC
/* 003C8 80AFE678 8FA40054 */  lw      $a0, 0x0054($sp)
/* 003CC 80AFE67C 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 003D0 80AFE680 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 003D4 80AFE684 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 003D8 80AFE688 01816824 */  and     $t5, $t4, $at
/* 003DC 80AFE68C AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 003E0 80AFE690 35AF0009 */  ori     $t7, $t5, 0x0009           ## $t7 = 00000009
/* 003E4 80AFE694 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 003E8 80AFE698 A7A3004E */  sh      $v1, 0x004E($sp)
/* 003EC 80AFE69C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003F0 80AFE6A0 0C00CDD2 */  jal     Actor_ChangeType

/* 003F4 80AFE6A4 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 003F8 80AFE6A8 87A3004E */  lh      $v1, 0x004E($sp)
.L80AFE6AC:
/* 003FC 80AFE6AC 04600003 */  bltz    $v1, .L80AFE6BC
/* 00400 80AFE6B0 28610007 */  slti    $at, $v1, 0x0007
/* 00404 80AFE6B4 14200006 */  bne     $at, $zero, .L80AFE6D0
/* 00408 80AFE6B8 00000000 */  nop
.L80AFE6BC:
/* 0040C 80AFE6BC 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00410 80AFE6C0 3C01FDFF */  lui     $at, 0xFDFF                ## $at = FDFF0000
/* 00414 80AFE6C4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FDFFFFFF
/* 00418 80AFE6C8 0301C824 */  and     $t9, $t8, $at
/* 0041C 80AFE6CC AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
.L80AFE6D0:
/* 00420 80AFE6D0 18600017 */  blez    $v1, .L80AFE730
/* 00424 80AFE6D4 28610003 */  slti    $at, $v1, 0x0003
/* 00428 80AFE6D8 10200015 */  beq     $at, $zero, .L80AFE730
/* 0042C 80AFE6DC 24080007 */  addiu   $t0, $zero, 0x0007         ## $t0 = 00000007
/* 00430 80AFE6E0 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 00434 80AFE6E4 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 00438 80AFE6E8 3C0C80B0 */  lui     $t4, %hi(D_80B01648)       ## $t4 = 80B00000
/* 0043C 80AFE6EC AE0A02F4 */  sw      $t2, 0x02F4($s0)           ## 000002F4
/* 00440 80AFE6F0 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 00444 80AFE6F4 258C1648 */  addiu   $t4, $t4, %lo(D_80B01648)  ## $t4 = 80B01648
/* 00448 80AFE6F8 000358C0 */  sll     $t3, $v1,  3
/* 0044C 80AFE6FC A208001F */  sb      $t0, 0x001F($s0)           ## 0000001F
/* 00450 80AFE700 016C1021 */  addu    $v0, $t3, $t4
/* 00454 80AFE704 AE0902F8 */  sw      $t1, 0x02F8($s0)           ## 000002F8
/* 00458 80AFE708 AE0A02FC */  sw      $t2, 0x02FC($s0)           ## 000002FC
/* 0045C 80AFE70C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00460 80AFE710 A04DFFF8 */  sb      $t5, -0x0008($v0)          ## FFFFFFF8
/* 00464 80AFE714 AC50FFFC */  sw      $s0, -0x0004($v0)          ## FFFFFFFC
/* 00468 80AFE718 A20002D8 */  sb      $zero, 0x02D8($s0)         ## 000002D8
/* 0046C 80AFE71C AE0002DC */  sw      $zero, 0x02DC($s0)         ## 000002DC
/* 00470 80AFE720 0C2C0145 */  jal     func_80B00514
/* 00474 80AFE724 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00478 80AFE728 10000005 */  beq     $zero, $zero, .L80AFE740
/* 0047C 80AFE72C 00000000 */  nop
.L80AFE730:
/* 00480 80AFE730 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00484 80AFE734 AE0E02DC */  sw      $t6, 0x02DC($s0)           ## 000002DC
/* 00488 80AFE738 0C2BFC0E */  jal     func_80AFF038
/* 0048C 80AFE73C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AFE740:
/* 00490 80AFE740 3C0F80B0 */  lui     $t7, %hi(D_80B016A4)       ## $t7 = 80B00000
/* 00494 80AFE744 25EF16A4 */  addiu   $t7, $t7, %lo(D_80B016A4)  ## $t7 = 80B016A4
/* 00498 80AFE748 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 0049C 80AFE74C AE0F0098 */  sw      $t7, 0x0098($s0)           ## 00000098
/* 004A0 80AFE750 A21800AF */  sb      $t8, 0x00AF($s0)           ## 000000AF
/* 004A4 80AFE754 26050278 */  addiu   $a1, $s0, 0x0278           ## $a1 = 00000278
/* 004A8 80AFE758 AFA50034 */  sw      $a1, 0x0034($sp)
/* 004AC 80AFE75C 0C0170D9 */  jal     Collider_InitCylinder

/* 004B0 80AFE760 8FA40054 */  lw      $a0, 0x0054($sp)
/* 004B4 80AFE764 3C0780B0 */  lui     $a3, %hi(D_80B01678)       ## $a3 = 80B00000
/* 004B8 80AFE768 8FA50034 */  lw      $a1, 0x0034($sp)
/* 004BC 80AFE76C 24E71678 */  addiu   $a3, $a3, %lo(D_80B01678)  ## $a3 = 80B01678
/* 004C0 80AFE770 8FA40054 */  lw      $a0, 0x0054($sp)
/* 004C4 80AFE774 0C017114 */  jal     Collider_SetCylinder_Set3
/* 004C8 80AFE778 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 004CC 80AFE77C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 004D0 80AFE780 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 004D4 80AFE784 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 004D8 80AFE788 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 004DC 80AFE78C 0C00AC78 */  jal     ActorShape_Init

/* 004E0 80AFE790 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 004E4 80AFE794 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 004E8 80AFE798 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 004EC 80AFE79C 0C00B58B */  jal     Actor_SetScale

/* 004F0 80AFE7A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004F4 80AFE7A4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 004F8 80AFE7A8 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 004FC 80AFE7AC 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00500 80AFE7B0 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
/* 00504 80AFE7B4 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
/* 00508 80AFE7B8 A600010E */  sh      $zero, 0x010E($s0)         ## 0000010E
/* 0050C 80AFE7BC A60002CA */  sh      $zero, 0x02CA($s0)         ## 000002CA
/* 00510 80AFE7C0 A20002D2 */  sb      $zero, 0x02D2($s0)         ## 000002D2
/* 00514 80AFE7C4 A20202D4 */  sb      $v0, 0x02D4($s0)           ## 000002D4
/* 00518 80AFE7C8 A20202D5 */  sb      $v0, 0x02D5($s0)           ## 000002D5
/* 0051C 80AFE7CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00520 80AFE7D0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00524 80AFE7D4 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00528 80AFE7D8 0C2BF8E4 */  jal     func_80AFE390
/* 0052C 80AFE7DC E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00530 80AFE7E0 8FA80054 */  lw      $t0, 0x0054($sp)
/* 00534 80AFE7E4 3C0480B0 */  lui     $a0, %hi(D_80B017D0)       ## $a0 = 80B00000
/* 00538 80AFE7E8 248417D0 */  addiu   $a0, $a0, %lo(D_80B017D0)  ## $a0 = 80B017D0
/* 0053C 80AFE7EC 8D021C44 */  lw      $v0, 0x1C44($t0)           ## 00001C44
/* 00540 80AFE7F0 C4500024 */  lwc1    $f16, 0x0024($v0)          ## 00000024
/* 00544 80AFE7F4 AFA2003C */  sw      $v0, 0x003C($sp)
/* 00548 80AFE7F8 460084A1 */  cvt.d.s $f18, $f16
/* 0054C 80AFE7FC 44079000 */  mfc1    $a3, $f18
/* 00550 80AFE800 44069800 */  mfc1    $a2, $f19
/* 00554 80AFE804 0C00084C */  jal     osSyncPrintf

/* 00558 80AFE808 00000000 */  nop
/* 0055C 80AFE80C 8FA2003C */  lw      $v0, 0x003C($sp)
/* 00560 80AFE810 3C0480B0 */  lui     $a0, %hi(D_80B017E0)       ## $a0 = 80B00000
/* 00564 80AFE814 248417E0 */  addiu   $a0, $a0, %lo(D_80B017E0)  ## $a0 = 80B017E0
/* 00568 80AFE818 C444002C */  lwc1    $f4, 0x002C($v0)           ## 0000002C
/* 0056C 80AFE81C 460021A1 */  cvt.d.s $f6, $f4
/* 00570 80AFE820 44073000 */  mfc1    $a3, $f6
/* 00574 80AFE824 44063800 */  mfc1    $a2, $f7
/* 00578 80AFE828 0C00084C */  jal     osSyncPrintf

/* 0057C 80AFE82C 00000000 */  nop
/* 00580 80AFE830 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00584 80AFE834 3C0480B0 */  lui     $a0, %hi(D_80B017F0)       ## $a0 = 80B00000
/* 00588 80AFE838 248417F0 */  addiu   $a0, $a0, %lo(D_80B017F0)  ## $a0 = 80B017F0
/* 0058C 80AFE83C 460042A1 */  cvt.d.s $f10, $f8
/* 00590 80AFE840 44075000 */  mfc1    $a3, $f10
/* 00594 80AFE844 44065800 */  mfc1    $a2, $f11
/* 00598 80AFE848 0C00084C */  jal     osSyncPrintf

/* 0059C 80AFE84C 00000000 */  nop
/* 005A0 80AFE850 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 005A4 80AFE854 3C0480B0 */  lui     $a0, %hi(D_80B01800)       ## $a0 = 80B00000
/* 005A8 80AFE858 24841800 */  addiu   $a0, $a0, %lo(D_80B01800)  ## $a0 = 80B01800
/* 005AC 80AFE85C 460084A1 */  cvt.d.s $f18, $f16
/* 005B0 80AFE860 44079000 */  mfc1    $a3, $f18
/* 005B4 80AFE864 44069800 */  mfc1    $a2, $f19
/* 005B8 80AFE868 0C00084C */  jal     osSyncPrintf

/* 005BC 80AFE86C 00000000 */  nop
/* 005C0 80AFE870 C60402E0 */  lwc1    $f4, 0x02E0($s0)           ## 000002E0
/* 005C4 80AFE874 3C0480B0 */  lui     $a0, %hi(D_80B01810)       ## $a0 = 80B00000
/* 005C8 80AFE878 24841810 */  addiu   $a0, $a0, %lo(D_80B01810)  ## $a0 = 80B01810
/* 005CC 80AFE87C 460021A1 */  cvt.d.s $f6, $f4
/* 005D0 80AFE880 44073000 */  mfc1    $a3, $f6
/* 005D4 80AFE884 44063800 */  mfc1    $a2, $f7
/* 005D8 80AFE888 0C00084C */  jal     osSyncPrintf

/* 005DC 80AFE88C 00000000 */  nop
/* 005E0 80AFE890 C60802E8 */  lwc1    $f8, 0x02E8($s0)           ## 000002E8
/* 005E4 80AFE894 3C0480B0 */  lui     $a0, %hi(D_80B01820)       ## $a0 = 80B00000
/* 005E8 80AFE898 24841820 */  addiu   $a0, $a0, %lo(D_80B01820)  ## $a0 = 80B01820
/* 005EC 80AFE89C 460042A1 */  cvt.d.s $f10, $f8
/* 005F0 80AFE8A0 44075000 */  mfc1    $a3, $f10
/* 005F4 80AFE8A4 44065800 */  mfc1    $a2, $f11
/* 005F8 80AFE8A8 0C00084C */  jal     osSyncPrintf

/* 005FC 80AFE8AC 00000000 */  nop
.L80AFE8B0:
/* 00600 80AFE8B0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AFE8B4:
/* 00604 80AFE8B4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00608 80AFE8B8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0060C 80AFE8BC 03E00008 */  jr      $ra
/* 00610 80AFE8C0 00000000 */  nop
