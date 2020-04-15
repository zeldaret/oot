.late_rodata
glabel jtbl_80B4E740
.word L80B4B308
.word L80B4B3B8
.word L80B4B44C
.word L80B4B4C4
.word L80B4B524
.word L80B4B59C
.word L80B4B5E0
.word L80B4B640
.word L80B4B684
.word L80B4B6FC

.text
glabel func_80B4B240
/* 00700 80B4B240 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00704 80B4B244 3C0F80B5 */  lui     $t7, %hi(D_80B4E654)       ## $t7 = 80B50000
/* 00708 80B4B248 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0070C 80B4B24C AFB10028 */  sw      $s1, 0x0028($sp)
/* 00710 80B4B250 AFB00024 */  sw      $s0, 0x0024($sp)
/* 00714 80B4B254 25EFE654 */  addiu   $t7, $t7, %lo(D_80B4E654)  ## $t7 = 80B4E654
/* 00718 80B4B258 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B4E654
/* 0071C 80B4B25C 27AE0074 */  addiu   $t6, $sp, 0x0074           ## $t6 = FFFFFFF4
/* 00720 80B4B260 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B4E658
/* 00724 80B4B264 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00728 80B4B268 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B4E65C
/* 0072C 80B4B26C 3C0980B5 */  lui     $t1, %hi(D_80B4E660)       ## $t1 = 80B50000
/* 00730 80B4B270 2529E660 */  addiu   $t1, $t1, %lo(D_80B4E660)  ## $t1 = 80B4E660
/* 00734 80B4B274 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00738 80B4B278 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 0073C 80B4B27C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B4E660
/* 00740 80B4B280 27A80068 */  addiu   $t0, $sp, 0x0068           ## $t0 = FFFFFFE8
/* 00744 80B4B284 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B4E664
/* 00748 80B4B288 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 0074C 80B4B28C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B4E668
/* 00750 80B4B290 3C0D80B5 */  lui     $t5, %hi(D_80B4E66C)       ## $t5 = 80B50000
/* 00754 80B4B294 25ADE66C */  addiu   $t5, $t5, %lo(D_80B4E66C)  ## $t5 = 80B4E66C
/* 00758 80B4B298 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 0075C 80B4B29C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00760 80B4B2A0 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B4E66C
/* 00764 80B4B2A4 27AC0058 */  addiu   $t4, $sp, 0x0058           ## $t4 = FFFFFFD8
/* 00768 80B4B2A8 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80B4E670
/* 0076C 80B4B2AC AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFD8
/* 00770 80B4B2B0 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80B4E674
/* 00774 80B4B2B4 3C1980B5 */  lui     $t9, %hi(D_80B4E678)       ## $t9 = 80B50000
/* 00778 80B4B2B8 2739E678 */  addiu   $t9, $t9, %lo(D_80B4E678)  ## $t9 = 80B4E678
/* 0077C 80B4B2BC AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFDC
/* 00780 80B4B2C0 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE0
/* 00784 80B4B2C4 9B290002 */  lwr     $t1, 0x0002($t9)           ## 80B4E67A
/* 00788 80B4B2C8 27B80054 */  addiu   $t8, $sp, 0x0054           ## $t8 = FFFFFFD4
/* 0078C 80B4B2CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00790 80B4B2D0 BB090002 */  swr     $t1, 0x0002($t8)           ## FFFFFFD6
/* 00794 80B4B2D4 8CAA1C44 */  lw      $t2, 0x1C44($a1)           ## 00001C44
/* 00798 80B4B2D8 AFA0003C */  sw      $zero, 0x003C($sp)
/* 0079C 80B4B2DC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 007A0 80B4B2E0 AFAA004C */  sw      $t2, 0x004C($sp)
/* 007A4 80B4B2E4 948B01E2 */  lhu     $t3, 0x01E2($a0)           ## 000001E2
/* 007A8 80B4B2E8 2D61000A */  sltiu   $at, $t3, 0x000A
/* 007AC 80B4B2EC 1020011D */  beq     $at, $zero, .L80B4B764
/* 007B0 80B4B2F0 000B5880 */  sll     $t3, $t3,  2
/* 007B4 80B4B2F4 3C0180B5 */  lui     $at, %hi(jtbl_80B4E740)       ## $at = 80B50000
/* 007B8 80B4B2F8 002B0821 */  addu    $at, $at, $t3
/* 007BC 80B4B2FC 8C2BE740 */  lw      $t3, %lo(jtbl_80B4E740)($at)
/* 007C0 80B4B300 01600008 */  jr      $t3
/* 007C4 80B4B304 00000000 */  nop
glabel L80B4B308
/* 007C8 80B4B308 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 007CC 80B4B30C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 007D0 80B4B310 4600218D */  trunc.w.s $f6, $f4
/* 007D4 80B4B314 44023000 */  mfc1    $v0, $f6
/* 007D8 80B4B318 00000000 */  nop
/* 007DC 80B4B31C 00021400 */  sll     $v0, $v0, 16
/* 007E0 80B4B320 00021403 */  sra     $v0, $v0, 16
/* 007E4 80B4B324 10410007 */  beq     $v0, $at, .L80B4B344
/* 007E8 80B4B328 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 007EC 80B4B32C 10410007 */  beq     $v0, $at, .L80B4B34C
/* 007F0 80B4B330 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 007F4 80B4B334 10410012 */  beq     $v0, $at, .L80B4B380
/* 007F8 80B4B338 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 007FC 80B4B33C 1000010A */  beq     $zero, $zero, .L80B4B768
/* 00800 80B4B340 8FAE003C */  lw      $t6, 0x003C($sp)
.L80B4B344:
/* 00804 80B4B344 10000107 */  beq     $zero, $zero, .L80B4B764
/* 00808 80B4B348 A60001E4 */  sh      $zero, 0x01E4($s0)         ## 000001E4
.L80B4B34C:
/* 0080C 80B4B34C 860301E4 */  lh      $v1, 0x01E4($s0)           ## 000001E4
/* 00810 80B4B350 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00814 80B4B354 14600003 */  bne     $v1, $zero, .L80B4B364
/* 00818 80B4B358 246DFFFF */  addiu   $t5, $v1, 0xFFFF           ## $t5 = FFFFFFFF
/* 0081C 80B4B35C 10000003 */  beq     $zero, $zero, .L80B4B36C
/* 00820 80B4B360 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B4B364:
/* 00824 80B4B364 A60D01E4 */  sh      $t5, 0x01E4($s0)           ## 000001E4
/* 00828 80B4B368 860201E4 */  lh      $v0, 0x01E4($s0)           ## 000001E4
.L80B4B36C:
/* 0082C 80B4B36C 504000FE */  beql    $v0, $zero, .L80B4B768
/* 00830 80B4B370 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00834 80B4B374 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 00838 80B4B378 100000FA */  beq     $zero, $zero, .L80B4B764
/* 0083C 80B4B37C E6080164 */  swc1    $f8, 0x0164($s0)           ## 00000164
.L80B4B380:
/* 00840 80B4B380 25CE1348 */  addiu   $t6, $t6, 0x1348           ## $t6 = 06011348
/* 00844 80B4B384 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00848 80B4B388 AFAE0048 */  sw      $t6, 0x0048($sp)
/* 0084C 80B4B38C AFAF003C */  sw      $t7, 0x003C($sp)
/* 00850 80B4B390 2418702E */  addiu   $t8, $zero, 0x702E         ## $t8 = 0000702E
/* 00854 80B4B394 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 00858 80B4B398 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 0000702E
/* 0085C 80B4B39C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00860 80B4B3A0 0C042DA0 */  jal     func_8010B680
/* 00864 80B4B3A4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00868 80B4B3A8 861901E2 */  lh      $t9, 0x01E2($s0)           ## 000001E2
/* 0086C 80B4B3AC 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00870 80B4B3B0 100000EC */  beq     $zero, $zero, .L80B4B764
/* 00874 80B4B3B4 A60801E2 */  sh      $t0, 0x01E2($s0)           ## 000001E2
glabel L80B4B3B8
/* 00878 80B4B3B8 0C042F6F */  jal     func_8010BDBC
/* 0087C 80B4B3BC 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00880 80B4B3C0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00884 80B4B3C4 544100E8 */  bnel    $v0, $at, .L80B4B768
/* 00888 80B4B3C8 8FAE003C */  lw      $t6, 0x003C($sp)
/* 0088C 80B4B3CC 0C041AF2 */  jal     func_80106BC8
/* 00890 80B4B3D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00894 80B4B3D4 104000E3 */  beq     $v0, $zero, .L80B4B764
/* 00898 80B4B3D8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0089C 80B4B3DC 00310821 */  addu    $at, $at, $s1
/* 008A0 80B4B3E0 A0200B05 */  sb      $zero, 0x0B05($at)         ## 00010B05
/* 008A4 80B4B3E4 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 008A8 80B4B3E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 008AC 80B4B3EC 27A60074 */  addiu   $a2, $sp, 0x0074           ## $a2 = FFFFFFF4
/* 008B0 80B4B3F0 0C030136 */  jal     func_800C04D8
/* 008B4 80B4B3F4 27A70068 */  addiu   $a3, $sp, 0x0068           ## $a3 = FFFFFFE8
/* 008B8 80B4B3F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 008BC 80B4B3FC 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 008C0 80B4B400 0C0301C1 */  jal     func_800C0704
/* 008C4 80B4B404 3C0641C8 */  lui     $a2, 0x41C8                ## $a2 = 41C80000
/* 008C8 80B4B408 27AA0058 */  addiu   $t2, $sp, 0x0058           ## $t2 = FFFFFFD8
/* 008CC 80B4B40C 8D4C0000 */  lw      $t4, 0x0000($t2)           ## FFFFFFD8
/* 008D0 80B4B410 8FA9004C */  lw      $t1, 0x004C($sp)
/* 008D4 80B4B414 240D702F */  addiu   $t5, $zero, 0x702F         ## $t5 = 0000702F
/* 008D8 80B4B418 31A5FFFF */  andi    $a1, $t5, 0xFFFF           ## $a1 = 0000702F
/* 008DC 80B4B41C AD2C0024 */  sw      $t4, 0x0024($t1)           ## 00000024
/* 008E0 80B4B420 8D4B0004 */  lw      $t3, 0x0004($t2)           ## FFFFFFDC
/* 008E4 80B4B424 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 008E8 80B4B428 AD2B0028 */  sw      $t3, 0x0028($t1)           ## 00000028
/* 008EC 80B4B42C 8D4C0008 */  lw      $t4, 0x0008($t2)           ## FFFFFFE0
/* 008F0 80B4B430 AD2C002C */  sw      $t4, 0x002C($t1)           ## 0000002C
/* 008F4 80B4B434 0C042DC8 */  jal     func_8010B720
/* 008F8 80B4B438 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 008FC 80B4B43C 860E01E2 */  lh      $t6, 0x01E2($s0)           ## 000001E2
/* 00900 80B4B440 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00904 80B4B444 100000C7 */  beq     $zero, $zero, .L80B4B764
/* 00908 80B4B448 A60F01E2 */  sh      $t7, 0x01E2($s0)           ## 000001E2
glabel L80B4B44C
/* 0090C 80B4B44C 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00910 80B4B450 0C042F6F */  jal     func_8010BDBC
/* 00914 80B4B454 AFA40034 */  sw      $a0, 0x0034($sp)
/* 00918 80B4B458 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0091C 80B4B45C 544100C2 */  bnel    $v0, $at, .L80B4B768
/* 00920 80B4B460 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00924 80B4B464 0C041AF2 */  jal     func_80106BC8
/* 00928 80B4B468 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0092C 80B4B46C 104000BD */  beq     $v0, $zero, .L80B4B764
/* 00930 80B4B470 8FB80034 */  lw      $t8, 0x0034($sp)
/* 00934 80B4B474 27197FFF */  addiu   $t9, $t8, 0x7FFF           ## $t9 = 00007FFF
/* 00938 80B4B478 933963E6 */  lbu     $t9, 0x63E6($t9)           ## 0000E3E5
/* 0093C 80B4B47C 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 00940 80B4B480 258C16E4 */  addiu   $t4, $t4, 0x16E4           ## $t4 = 060116E4
/* 00944 80B4B484 1720000A */  bne     $t9, $zero, .L80B4B4B0
/* 00948 80B4B488 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 0094C 80B4B48C 3C080601 */  lui     $t0, 0x0601                ## $t0 = 06010000
/* 00950 80B4B490 25083F10 */  addiu   $t0, $t0, 0x3F10           ## $t0 = 06013F10
/* 00954 80B4B494 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00958 80B4B498 AFA80048 */  sw      $t0, 0x0048($sp)
/* 0095C 80B4B49C AFA9003C */  sw      $t1, 0x003C($sp)
/* 00960 80B4B4A0 860A01E2 */  lh      $t2, 0x01E2($s0)           ## 000001E2
/* 00964 80B4B4A4 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00968 80B4B4A8 100000AE */  beq     $zero, $zero, .L80B4B764
/* 0096C 80B4B4AC A60B01E2 */  sh      $t3, 0x01E2($s0)           ## 000001E2
.L80B4B4B0:
/* 00970 80B4B4B0 AFAC0048 */  sw      $t4, 0x0048($sp)
/* 00974 80B4B4B4 AFAD003C */  sw      $t5, 0x003C($sp)
/* 00978 80B4B4B8 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 0097C 80B4B4BC 100000A9 */  beq     $zero, $zero, .L80B4B764
/* 00980 80B4B4C0 A60E01E2 */  sh      $t6, 0x01E2($s0)           ## 000001E2
glabel L80B4B4C4
/* 00984 80B4B4C4 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00988 80B4B4C8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0098C 80B4B4CC 24843F10 */  addiu   $a0, $a0, 0x3F10           ## $a0 = 06013F10
/* 00990 80B4B4D0 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00994 80B4B4D4 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 00998 80B4B4D8 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 0099C 80B4B4DC 46805420 */  cvt.s.w $f16, $f10
/* 009A0 80B4B4E0 24197032 */  addiu   $t9, $zero, 0x7032         ## $t9 = 00007032
/* 009A4 80B4B4E4 25EF43A8 */  addiu   $t7, $t7, 0x43A8           ## $t7 = 060143A8
/* 009A8 80B4B4E8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 009AC 80B4B4EC 3325FFFF */  andi    $a1, $t9, 0xFFFF           ## $a1 = 00007032
/* 009B0 80B4B4F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009B4 80B4B4F4 46128032 */  c.eq.s  $f16, $f18
/* 009B8 80B4B4F8 00000000 */  nop
/* 009BC 80B4B4FC 4502009A */  bc1fl   .L80B4B768
/* 009C0 80B4B500 8FAE003C */  lw      $t6, 0x003C($sp)
/* 009C4 80B4B504 AFAF0048 */  sw      $t7, 0x0048($sp)
/* 009C8 80B4B508 AFB8003C */  sw      $t8, 0x003C($sp)
/* 009CC 80B4B50C 0C042DC8 */  jal     func_8010B720
/* 009D0 80B4B510 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 009D4 80B4B514 860801E2 */  lh      $t0, 0x01E2($s0)           ## 000001E2
/* 009D8 80B4B518 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 009DC 80B4B51C 10000091 */  beq     $zero, $zero, .L80B4B764
/* 009E0 80B4B520 A60901E2 */  sh      $t1, 0x01E2($s0)           ## 000001E2
glabel L80B4B524
/* 009E4 80B4B524 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 009E8 80B4B528 0C042F6F */  jal     func_8010BDBC
/* 009EC 80B4B52C AFA40034 */  sw      $a0, 0x0034($sp)
/* 009F0 80B4B530 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 009F4 80B4B534 5441008C */  bnel    $v0, $at, .L80B4B768
/* 009F8 80B4B538 8FAE003C */  lw      $t6, 0x003C($sp)
/* 009FC 80B4B53C 0C041AF2 */  jal     func_80106BC8
/* 00A00 80B4B540 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A04 80B4B544 10400087 */  beq     $v0, $zero, .L80B4B764
/* 00A08 80B4B548 8FAA0034 */  lw      $t2, 0x0034($sp)
/* 00A0C 80B4B54C 254B7FFF */  addiu   $t3, $t2, 0x7FFF           ## $t3 = 00007FFF
/* 00A10 80B4B550 916B63E6 */  lbu     $t3, 0x63E6($t3)           ## 0000E3E5
/* 00A14 80B4B554 240F7034 */  addiu   $t7, $zero, 0x7034         ## $t7 = 00007034
/* 00A18 80B4B558 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 00007034
/* 00A1C 80B4B55C 15600009 */  bne     $t3, $zero, .L80B4B584
/* 00A20 80B4B560 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A24 80B4B564 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 00A28 80B4B568 258C32D8 */  addiu   $t4, $t4, 0x32D8           ## $t4 = 060132D8
/* 00A2C 80B4B56C 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00A30 80B4B570 AFAC0048 */  sw      $t4, 0x0048($sp)
/* 00A34 80B4B574 AFAD003C */  sw      $t5, 0x003C($sp)
/* 00A38 80B4B578 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 00A3C 80B4B57C 10000079 */  beq     $zero, $zero, .L80B4B764
/* 00A40 80B4B580 A60E01E2 */  sh      $t6, 0x01E2($s0)           ## 000001E2
.L80B4B584:
/* 00A44 80B4B584 0C042DC8 */  jal     func_8010B720
/* 00A48 80B4B588 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 00A4C 80B4B58C 861801E2 */  lh      $t8, 0x01E2($s0)           ## 000001E2
/* 00A50 80B4B590 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00A54 80B4B594 10000073 */  beq     $zero, $zero, .L80B4B764
/* 00A58 80B4B598 A61901E2 */  sh      $t9, 0x01E2($s0)           ## 000001E2
glabel L80B4B59C
/* 00A5C 80B4B59C 0C042F6F */  jal     func_8010BDBC
/* 00A60 80B4B5A0 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00A64 80B4B5A4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A68 80B4B5A8 5441006F */  bnel    $v0, $at, .L80B4B768
/* 00A6C 80B4B5AC 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00A70 80B4B5B0 0C041AF2 */  jal     func_80106BC8
/* 00A74 80B4B5B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A78 80B4B5B8 1040006A */  beq     $v0, $zero, .L80B4B764
/* 00A7C 80B4B5BC 24087033 */  addiu   $t0, $zero, 0x7033         ## $t0 = 00007033
/* 00A80 80B4B5C0 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 00A84 80B4B5C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A88 80B4B5C8 0C042DC8 */  jal     func_8010B720
/* 00A8C 80B4B5CC 3105FFFF */  andi    $a1, $t0, 0xFFFF           ## $a1 = 00007033
/* 00A90 80B4B5D0 860901E2 */  lh      $t1, 0x01E2($s0)           ## 000001E2
/* 00A94 80B4B5D4 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 00A98 80B4B5D8 10000062 */  beq     $zero, $zero, .L80B4B764
/* 00A9C 80B4B5DC A60A01E2 */  sh      $t2, 0x01E2($s0)           ## 000001E2
glabel L80B4B5E0
/* 00AA0 80B4B5E0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00AA4 80B4B5E4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00AA8 80B4B5E8 248416E4 */  addiu   $a0, $a0, 0x16E4           ## $a0 = 060116E4
/* 00AAC 80B4B5EC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00AB0 80B4B5F0 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 00AB4 80B4B5F4 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 00AB8 80B4B5F8 468021A0 */  cvt.s.w $f6, $f4
/* 00ABC 80B4B5FC 240D7031 */  addiu   $t5, $zero, 0x7031         ## $t5 = 00007031
/* 00AC0 80B4B600 256B1B88 */  addiu   $t3, $t3, 0x1B88           ## $t3 = 06011B88
/* 00AC4 80B4B604 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00AC8 80B4B608 31A5FFFF */  andi    $a1, $t5, 0xFFFF           ## $a1 = 00007031
/* 00ACC 80B4B60C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AD0 80B4B610 46083032 */  c.eq.s  $f6, $f8
/* 00AD4 80B4B614 00000000 */  nop
/* 00AD8 80B4B618 45020053 */  bc1fl   .L80B4B768
/* 00ADC 80B4B61C 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00AE0 80B4B620 AFAB0048 */  sw      $t3, 0x0048($sp)
/* 00AE4 80B4B624 AFAC003C */  sw      $t4, 0x003C($sp)
/* 00AE8 80B4B628 0C042DC8 */  jal     func_8010B720
/* 00AEC 80B4B62C A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 00AF0 80B4B630 860E01E2 */  lh      $t6, 0x01E2($s0)           ## 000001E2
/* 00AF4 80B4B634 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00AF8 80B4B638 1000004A */  beq     $zero, $zero, .L80B4B764
/* 00AFC 80B4B63C A60F01E2 */  sh      $t7, 0x01E2($s0)           ## 000001E2
glabel L80B4B640
/* 00B00 80B4B640 0C042F6F */  jal     func_8010BDBC
/* 00B04 80B4B644 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00B08 80B4B648 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B0C 80B4B64C 54410046 */  bnel    $v0, $at, .L80B4B768
/* 00B10 80B4B650 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00B14 80B4B654 0C041AF2 */  jal     func_80106BC8
/* 00B18 80B4B658 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B1C 80B4B65C 10400041 */  beq     $v0, $zero, .L80B4B764
/* 00B20 80B4B660 24187030 */  addiu   $t8, $zero, 0x7030         ## $t8 = 00007030
/* 00B24 80B4B664 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 00B28 80B4B668 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B2C 80B4B66C 0C042DC8 */  jal     func_8010B720
/* 00B30 80B4B670 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 00007030
/* 00B34 80B4B674 861901E2 */  lh      $t9, 0x01E2($s0)           ## 000001E2
/* 00B38 80B4B678 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00B3C 80B4B67C 10000039 */  beq     $zero, $zero, .L80B4B764
/* 00B40 80B4B680 A60801E2 */  sh      $t0, 0x01E2($s0)           ## 000001E2
glabel L80B4B684
/* 00B44 80B4B684 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00B48 80B4B688 0C042F6F */  jal     func_8010BDBC
/* 00B4C 80B4B68C AFA40034 */  sw      $a0, 0x0034($sp)
/* 00B50 80B4B690 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B54 80B4B694 54410034 */  bnel    $v0, $at, .L80B4B768
/* 00B58 80B4B698 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00B5C 80B4B69C 0C041AF2 */  jal     func_80106BC8
/* 00B60 80B4B6A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B64 80B4B6A4 1040002F */  beq     $v0, $zero, .L80B4B764
/* 00B68 80B4B6A8 8FA90034 */  lw      $t1, 0x0034($sp)
/* 00B6C 80B4B6AC 252A7FFF */  addiu   $t2, $t1, 0x7FFF           ## $t2 = 00007FFF
/* 00B70 80B4B6B0 914A63E6 */  lbu     $t2, 0x63E6($t2)           ## 0000E3E5
/* 00B74 80B4B6B4 240E7031 */  addiu   $t6, $zero, 0x7031         ## $t6 = 00007031
/* 00B78 80B4B6B8 31C5FFFF */  andi    $a1, $t6, 0xFFFF           ## $a1 = 00007031
/* 00B7C 80B4B6BC 15400009 */  bne     $t2, $zero, .L80B4B6E4
/* 00B80 80B4B6C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B84 80B4B6C4 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 00B88 80B4B6C8 256B38E0 */  addiu   $t3, $t3, 0x38E0           ## $t3 = 060138E0
/* 00B8C 80B4B6CC 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 00B90 80B4B6D0 AFAB0048 */  sw      $t3, 0x0048($sp)
/* 00B94 80B4B6D4 AFAC003C */  sw      $t4, 0x003C($sp)
/* 00B98 80B4B6D8 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 00B9C 80B4B6DC 10000021 */  beq     $zero, $zero, .L80B4B764
/* 00BA0 80B4B6E0 A60D01E2 */  sh      $t5, 0x01E2($s0)           ## 000001E2
.L80B4B6E4:
/* 00BA4 80B4B6E4 0C042DC8 */  jal     func_8010B720
/* 00BA8 80B4B6E8 A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
/* 00BAC 80B4B6EC 860F01E2 */  lh      $t7, 0x01E2($s0)           ## 000001E2
/* 00BB0 80B4B6F0 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00BB4 80B4B6F4 1000001B */  beq     $zero, $zero, .L80B4B764
/* 00BB8 80B4B6F8 A61801E2 */  sh      $t8, 0x01E2($s0)           ## 000001E2
glabel L80B4B6FC
/* 00BBC 80B4B6FC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00BC0 80B4B700 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00BC4 80B4B704 248432D8 */  addiu   $a0, $a0, 0x32D8           ## $a0 = 060132D8
/* 00BC8 80B4B708 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00BCC 80B4B70C C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 00BD0 80B4B710 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 00BD4 80B4B714 46805420 */  cvt.s.w $f16, $f10
/* 00BD8 80B4B718 3C0980B5 */  lui     $t1, %hi(D_80B4C5D0)       ## $t1 = 80B50000
/* 00BDC 80B4B71C 27390438 */  addiu   $t9, $t9, 0x0438           ## $t9 = 06000438
/* 00BE0 80B4B720 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00BE4 80B4B724 2529C5D0 */  addiu   $t1, $t1, %lo(D_80B4C5D0)  ## $t1 = 80B4C5D0
/* 00BE8 80B4B728 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00BEC 80B4B72C 46128032 */  c.eq.s  $f16, $f18
/* 00BF0 80B4B730 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00BF4 80B4B734 3C0B80B5 */  lui     $t3, %hi(func_80B4B8B4)    ## $t3 = 80B50000
/* 00BF8 80B4B738 4502000B */  bc1fl   .L80B4B768
/* 00BFC 80B4B73C 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00C00 80B4B740 AFB90048 */  sw      $t9, 0x0048($sp)
/* 00C04 80B4B744 AFA8003C */  sw      $t0, 0x003C($sp)
/* 00C08 80B4B748 AE291D68 */  sw      $t1, 0x1D68($s1)           ## 00001D68
/* 00C0C 80B4B74C A02AFA74 */  sb      $t2, -0x058C($at)          ## 8015FA74
/* 00C10 80B4B750 860C01E2 */  lh      $t4, 0x01E2($s0)           ## 000001E2
/* 00C14 80B4B754 256BB8B4 */  addiu   $t3, $t3, %lo(func_80B4B8B4) ## $t3 = 80B4B8B4
/* 00C18 80B4B758 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 00C1C 80B4B75C 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00C20 80B4B760 A60D01E2 */  sh      $t5, 0x01E2($s0)           ## 000001E2
.L80B4B764:
/* 00C24 80B4B764 8FAE003C */  lw      $t6, 0x003C($sp)
.L80B4B768:
/* 00C28 80B4B768 51C00013 */  beql    $t6, $zero, .L80B4B7B8
/* 00C2C 80B4B76C 8E080038 */  lw      $t0, 0x0038($s0)           ## 00000038
/* 00C30 80B4B770 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00C34 80B4B774 8FA40048 */  lw      $a0, 0x0048($sp)
/* 00C38 80B4B778 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C3C 80B4B77C 8FAF003C */  lw      $t7, 0x003C($sp)
/* 00C40 80B4B780 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00C44 80B4B784 468021A0 */  cvt.s.w $f6, $f4
/* 00C48 80B4B788 03AFC021 */  addu    $t8, $sp, $t7
/* 00C4C 80B4B78C 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00C50 80B4B790 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00C54 80B4B794 8FA50048 */  lw      $a1, 0x0048($sp)
/* 00C58 80B4B798 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C5C 80B4B79C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00C60 80B4B7A0 93180054 */  lbu     $t8, 0x0054($t8)           ## 00000054
/* 00C64 80B4B7A4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00C68 80B4B7A8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00C6C 80B4B7AC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00C70 80B4B7B0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00C74 80B4B7B4 8E080038 */  lw      $t0, 0x0038($s0)           ## 00000038
.L80B4B7B8:
/* 00C78 80B4B7B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C7C 80B4B7BC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C80 80B4B7C0 AFA80010 */  sw      $t0, 0x0010($sp)
/* 00C84 80B4B7C4 8E19003C */  lw      $t9, 0x003C($s0)           ## 0000003C
/* 00C88 80B4B7C8 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 00C8C 80B4B7CC 26070206 */  addiu   $a3, $s0, 0x0206           ## $a3 = 00000206
/* 00C90 80B4B7D0 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00C94 80B4B7D4 8E080040 */  lw      $t0, 0x0040($s0)           ## 00000040
/* 00C98 80B4B7D8 0C00E0A4 */  jal     func_80038290
/* 00C9C 80B4B7DC AFA80018 */  sw      $t0, 0x0018($sp)
/* 00CA0 80B4B7E0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00CA4 80B4B7E4 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00CA8 80B4B7E8 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00CAC 80B4B7EC 03E00008 */  jr      $ra
/* 00CB0 80B4B7F0 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
