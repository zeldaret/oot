glabel func_809B65A8
/* 00258 809B65A8 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0025C 809B65AC AFBF003C */  sw      $ra, 0x003C($sp)
/* 00260 809B65B0 AFB70038 */  sw      $s7, 0x0038($sp)
/* 00264 809B65B4 AFB60034 */  sw      $s6, 0x0034($sp)
/* 00268 809B65B8 AFB50030 */  sw      $s5, 0x0030($sp)
/* 0026C 809B65BC AFB4002C */  sw      $s4, 0x002C($sp)
/* 00270 809B65C0 AFB30028 */  sw      $s3, 0x0028($sp)
/* 00274 809B65C4 AFB20024 */  sw      $s2, 0x0024($sp)
/* 00278 809B65C8 AFB10020 */  sw      $s1, 0x0020($sp)
/* 0027C 809B65CC AFB0001C */  sw      $s0, 0x001C($sp)
/* 00280 809B65D0 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00284 809B65D4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00288 809B65D8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0028C 809B65DC AFAE006C */  sw      $t6, 0x006C($sp)
/* 00290 809B65E0 908F00AE */  lbu     $t7, 0x00AE($a0)           ## 000000AE
/* 00294 809B65E4 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00298 809B65E8 15E10015 */  bne     $t7, $at, .L809B6640
/* 0029C 809B65EC 3C01432F */  lui     $at, 0x432F                ## $at = 432F0000
/* 002A0 809B65F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 175.00
/* 002A4 809B65F4 C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 002A8 809B65F8 3C0143A5 */  lui     $at, 0x43A5                ## $at = 43A50000
/* 002AC 809B65FC 4606203C */  c.lt.s  $f4, $f6
/* 002B0 809B6600 00000000 */  nop
/* 002B4 809B6604 4502000F */  bc1fl   .L809B6644
/* 002B8 809B6608 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 002BC 809B660C C6C8000C */  lwc1    $f8, 0x000C($s6)           ## 0000000C
/* 002C0 809B6610 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 002C4 809B6614 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 002C8 809B6618 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 002CC 809B661C 460A4400 */  add.s   $f16, $f8, $f10
/* 002D0 809B6620 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 002D4 809B6624 3C0740E0 */  lui     $a3, 0x40E0                ## $a3 = 40E00000
/* 002D8 809B6628 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 002DC 809B662C 44058000 */  mfc1    $a1, $f16
/* 002E0 809B6630 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 002E4 809B6634 00000000 */  nop
/* 002E8 809B6638 10000010 */  beq     $zero, $zero, .L809B667C
/* 002EC 809B663C 8EC90024 */  lw      $t1, 0x0024($s6)           ## 00000024
.L809B6640:
/* 002F0 809B6640 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L809B6644:
/* 002F4 809B6644 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 002F8 809B6648 C6C4000C */  lwc1    $f4, 0x000C($s6)           ## 0000000C
/* 002FC 809B664C 8ED80004 */  lw      $t8, 0x0004($s6)           ## 00000004
/* 00300 809B6650 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00304 809B6654 46062200 */  add.s   $f8, $f4, $f6
/* 00308 809B6658 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0030C 809B665C AED90004 */  sw      $t9, 0x0004($s6)           ## 00000004
/* 00310 809B6660 26C40028 */  addiu   $a0, $s6, 0x0028           ## $a0 = 00000028
/* 00314 809B6664 44054000 */  mfc1    $a1, $f8
/* 00318 809B6668 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0031C 809B666C 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00320 809B6670 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00324 809B6674 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00328 809B6678 8EC90024 */  lw      $t1, 0x0024($s6)           ## 00000024
.L809B667C:
/* 0032C 809B667C 26D502FC */  addiu   $s5, $s6, 0x02FC           ## $s5 = 000002FC
/* 00330 809B6680 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 00334 809B6684 AEA90000 */  sw      $t1, 0x0000($s5)           ## 000002FC
/* 00338 809B6688 8EC80028 */  lw      $t0, 0x0028($s6)           ## 00000028
/* 0033C 809B668C 01505021 */  addu    $t2, $t2, $s0
/* 00340 809B6690 AEA80004 */  sw      $t0, 0x0004($s5)           ## 00000300
/* 00344 809B6694 8EC9002C */  lw      $t1, 0x002C($s6)           ## 0000002C
/* 00348 809B6698 AEA90008 */  sw      $t1, 0x0008($s5)           ## 00000304
/* 0034C 809B669C 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00011DE4
/* 00350 809B66A0 314B000F */  andi    $t3, $t2, 0x000F           ## $t3 = 00000000
/* 00354 809B66A4 1560001A */  bne     $t3, $zero, .L809B6710
/* 00358 809B66A8 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 0035C 809B66AC 44816000 */  mtc1    $at, $f12                  ## $f12 = 180.00
/* 00360 809B66B0 0C00CFC8 */  jal     Rand_CenteredFloat

/* 00364 809B66B4 00000000 */  nop
/* 00368 809B66B8 C6D00310 */  lwc1    $f16, 0x0310($s6)          ## 00000310
/* 0036C 809B66BC 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 00370 809B66C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 180.00
/* 00374 809B66C4 46008480 */  add.s   $f18, $f16, $f0
/* 00378 809B66C8 0C00CFC8 */  jal     Rand_CenteredFloat

/* 0037C 809B66CC E6D20310 */  swc1    $f18, 0x0310($s6)          ## 00000310
/* 00380 809B66D0 C6C40314 */  lwc1    $f4, 0x0314($s6)           ## 00000314
/* 00384 809B66D4 C6CC0310 */  lwc1    $f12, 0x0310($s6)          ## 00000310
/* 00388 809B66D8 46002180 */  add.s   $f6, $f4, $f0
/* 0038C 809B66DC 0C0329C8 */  jal     Math_SinF
/* 00390 809B66E0 E6C60314 */  swc1    $f6, 0x0314($s6)           ## 00000314
/* 00394 809B66E4 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00398 809B66E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 0039C 809B66EC C6CC0314 */  lwc1    $f12, 0x0314($s6)          ## 00000314
/* 003A0 809B66F0 46080282 */  mul.s   $f10, $f0, $f8
/* 003A4 809B66F4 0C0329DD */  jal     Math_CosF
/* 003A8 809B66F8 E6CA0308 */  swc1    $f10, 0x0308($s6)          ## 00000308
/* 003AC 809B66FC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 003B0 809B6700 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 003B4 809B6704 00000000 */  nop
/* 003B8 809B6708 46100482 */  mul.s   $f18, $f0, $f16
/* 003BC 809B670C E6D2030C */  swc1    $f18, 0x030C($s6)          ## 0000030C
.L809B6710:
/* 003C0 809B6710 3C0143E0 */  lui     $at, 0x43E0                ## $at = 43E00000
/* 003C4 809B6714 44813000 */  mtc1    $at, $f6                   ## $f6 = 448.00
/* 003C8 809B6718 C6C40300 */  lwc1    $f4, 0x0300($s6)           ## 00000300
/* 003CC 809B671C C6CA02FC */  lwc1    $f10, 0x02FC($s6)          ## 000002FC
/* 003D0 809B6720 C6D00308 */  lwc1    $f16, 0x0308($s6)          ## 00000308
/* 003D4 809B6724 46062201 */  sub.s   $f8, $f4, $f6
/* 003D8 809B6728 C6C6030C */  lwc1    $f6, 0x030C($s6)           ## 0000030C
/* 003DC 809B672C C6C40304 */  lwc1    $f4, 0x0304($s6)           ## 00000304
/* 003E0 809B6730 46105480 */  add.s   $f18, $f10, $f16
/* 003E4 809B6734 E6C80300 */  swc1    $f8, 0x0300($s6)           ## 00000300
/* 003E8 809B6738 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 003EC 809B673C 46062200 */  add.s   $f8, $f4, $f6
/* 003F0 809B6740 E6D202FC */  swc1    $f18, 0x02FC($s6)          ## 000002FC
/* 003F4 809B6744 8EC70068 */  lw      $a3, 0x0068($s6)           ## 00000068
/* 003F8 809B6748 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 000002FC
/* 003FC 809B674C E6C80304 */  swc1    $f8, 0x0304($s6)           ## 00000304
/* 00400 809B6750 26C501F4 */  addiu   $a1, $s6, 0x01F4           ## $a1 = 000001F4
/* 00404 809B6754 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00408 809B6758 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 0040C 809B675C 0C00CEBB */  jal     func_80033AEC
/* 00410 809B6760 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00414 809B6764 26D00090 */  addiu   $s0, $s6, 0x0090           ## $s0 = 00000090
/* 00418 809B6768 3C17809C */  lui     $s7, %hi(D_809B8080)       ## $s7 = 809C0000
/* 0041C 809B676C 26F78080 */  addiu   $s7, $s7, %lo(D_809B8080)  ## $s7 = 809B8080
/* 00420 809B6770 26120164 */  addiu   $s2, $s0, 0x0164           ## $s2 = 000001F4
/* 00424 809B6774 26110158 */  addiu   $s1, $s0, 0x0158           ## $s1 = 000001E8
/* 00428 809B6778 24130090 */  addiu   $s3, $zero, 0x0090         ## $s3 = 00000090
/* 0042C 809B677C 27B4005C */  addiu   $s4, $sp, 0x005C           ## $s4 = FFFFFFEC
.L809B6780:
/* 00430 809B6780 02402025 */  or      $a0, $s2, $zero            ## $a0 = 000001F4
/* 00434 809B6784 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001E8
/* 00438 809B6788 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFEC
/* 0043C 809B678C 0C00D611 */  jal     func_80035844
/* 00440 809B6790 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00444 809B6794 C60C0164 */  lwc1    $f12, 0x0164($s0)          ## 000001F4
/* 00448 809B6798 C60E0168 */  lwc1    $f14, 0x0168($s0)          ## 000001F8
/* 0044C 809B679C 8E06016C */  lw      $a2, 0x016C($s0)           ## 000001FC
/* 00450 809B67A0 0C034261 */  jal     Matrix_Translate
/* 00454 809B67A4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00458 809B67A8 87A4005C */  lh      $a0, 0x005C($sp)
/* 0045C 809B67AC 87A5005E */  lh      $a1, 0x005E($sp)
/* 00460 809B67B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00464 809B67B4 0C034421 */  jal     Matrix_RotateRPY
/* 00468 809B67B8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0046C 809B67BC 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 809B8080
/* 00470 809B67C0 0C0346BD */  jal     Matrix_MultVec3f
/* 00474 809B67C4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001E8
/* 00478 809B67C8 2673FFF4 */  addiu   $s3, $s3, 0xFFF4           ## $s3 = 00000084
/* 0047C 809B67CC 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 00000084
/* 00480 809B67D0 2652FFF4 */  addiu   $s2, $s2, 0xFFF4           ## $s2 = 000001E8
/* 00484 809B67D4 0661FFEA */  bgez    $s3, .L809B6780
/* 00488 809B67D8 2631FFF4 */  addiu   $s1, $s1, 0xFFF4           ## $s1 = 000001DC
/* 0048C 809B67DC 26D00158 */  addiu   $s0, $s6, 0x0158           ## $s0 = 00000158
/* 00490 809B67E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000158
/* 00494 809B67E4 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 000002FC
/* 00498 809B67E8 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFEC
/* 0049C 809B67EC 0C00D611 */  jal     func_80035844
/* 004A0 809B67F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004A4 809B67F4 C6CC0024 */  lwc1    $f12, 0x0024($s6)          ## 00000024
/* 004A8 809B67F8 C6CE0028 */  lwc1    $f14, 0x0028($s6)          ## 00000028
/* 004AC 809B67FC 8EC6002C */  lw      $a2, 0x002C($s6)           ## 0000002C
/* 004B0 809B6800 0C034261 */  jal     Matrix_Translate
/* 004B4 809B6804 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004B8 809B6808 86C502AA */  lh      $a1, 0x02AA($s6)           ## 000002AA
/* 004BC 809B680C 86C7031C */  lh      $a3, 0x031C($s6)           ## 0000031C
/* 004C0 809B6810 240C00B6 */  addiu   $t4, $zero, 0x00B6         ## $t4 = 000000B6
/* 004C4 809B6814 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 004C8 809B6818 26C400B6 */  addiu   $a0, $s6, 0x00B6           ## $a0 = 000000B6
/* 004CC 809B681C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 004D0 809B6820 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 004D4 809B6824 86C502A8 */  lh      $a1, 0x02A8($s6)           ## 000002A8
/* 004D8 809B6828 86C7031C */  lh      $a3, 0x031C($s6)           ## 0000031C
/* 004DC 809B682C 240D00B6 */  addiu   $t5, $zero, 0x00B6         ## $t5 = 000000B6
/* 004E0 809B6830 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 004E4 809B6834 26C400B4 */  addiu   $a0, $s6, 0x00B4           ## $a0 = 000000B4
/* 004E8 809B6838 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 004EC 809B683C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 004F0 809B6840 86C400B4 */  lh      $a0, 0x00B4($s6)           ## 000000B4
/* 004F4 809B6844 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 004F8 809B6848 86C500B6 */  lh      $a1, 0x00B6($s6)           ## 000000B6
/* 004FC 809B684C 00812021 */  addu    $a0, $a0, $at
/* 00500 809B6850 00042400 */  sll     $a0, $a0, 16
/* 00504 809B6854 00042403 */  sra     $a0, $a0, 16
/* 00508 809B6858 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0050C 809B685C 0C034421 */  jal     Matrix_RotateRPY
/* 00510 809B6860 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00514 809B6864 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 809B8080
/* 00518 809B6868 0C0346BD */  jal     Matrix_MultVec3f
/* 0051C 809B686C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000158
/* 00520 809B6870 87AE005E */  lh      $t6, 0x005E($sp)
/* 00524 809B6874 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00528 809B6878 02C08025 */  or      $s0, $s6, $zero            ## $s0 = 00000000
/* 0052C 809B687C A6CE02F8 */  sh      $t6, 0x02F8($s6)           ## 000002F8
/* 00530 809B6880 87AF005C */  lh      $t7, 0x005C($sp)
/* 00534 809B6884 26D20164 */  addiu   $s2, $s6, 0x0164           ## $s2 = 00000164
/* 00538 809B6888 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 0053C 809B688C 01E1C021 */  addu    $t8, $t7, $at
/* 00540 809B6890 A6D802F6 */  sh      $t8, 0x02F6($s6)           ## 000002F6
/* 00544 809B6894 02C08825 */  or      $s1, $s6, $zero            ## $s1 = 00000000
/* 00548 809B6898 26D402AA */  addiu   $s4, $s6, 0x02AA           ## $s4 = 000002AA
/* 0054C 809B689C 26D502A8 */  addiu   $s5, $s6, 0x02A8           ## $s5 = 000002A8
.L809B68A0:
/* 00550 809B68A0 C60C0158 */  lwc1    $f12, 0x0158($s0)          ## 00000158
/* 00554 809B68A4 C60E015C */  lwc1    $f14, 0x015C($s0)          ## 0000015C
/* 00558 809B68A8 8E060160 */  lw      $a2, 0x0160($s0)           ## 00000160
/* 0055C 809B68AC 0C034261 */  jal     Matrix_Translate
/* 00560 809B68B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00564 809B68B4 862502B0 */  lh      $a1, 0x02B0($s1)           ## 000002B0
/* 00568 809B68B8 86C7031C */  lh      $a3, 0x031C($s6)           ## 0000031C
/* 0056C 809B68BC 241900B6 */  addiu   $t9, $zero, 0x00B6         ## $t9 = 000000B6
/* 00570 809B68C0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00574 809B68C4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 000002AA
/* 00578 809B68C8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 0057C 809B68CC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00580 809B68D0 862502AE */  lh      $a1, 0x02AE($s1)           ## 000002AE
/* 00584 809B68D4 86C7031C */  lh      $a3, 0x031C($s6)           ## 0000031C
/* 00588 809B68D8 240800B6 */  addiu   $t0, $zero, 0x00B6         ## $t0 = 000000B6
/* 0058C 809B68DC AFA80010 */  sw      $t0, 0x0010($sp)
/* 00590 809B68E0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 000002A8
/* 00594 809B68E4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 00598 809B68E8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0059C 809B68EC 862402A8 */  lh      $a0, 0x02A8($s1)           ## 000002A8
/* 005A0 809B68F0 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 005A4 809B68F4 862502AA */  lh      $a1, 0x02AA($s1)           ## 000002AA
/* 005A8 809B68F8 00812021 */  addu    $a0, $a0, $at
/* 005AC 809B68FC 00042400 */  sll     $a0, $a0, 16
/* 005B0 809B6900 00042403 */  sra     $a0, $a0, 16
/* 005B4 809B6904 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005B8 809B6908 0C034421 */  jal     Matrix_RotateRPY
/* 005BC 809B690C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 005C0 809B6910 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 809B8080
/* 005C4 809B6914 0C0346BD */  jal     Matrix_MultVec3f
/* 005C8 809B6918 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000164
/* 005CC 809B691C 26730006 */  addiu   $s3, $s3, 0x0006           ## $s3 = 00000006
/* 005D0 809B6920 2401004E */  addiu   $at, $zero, 0x004E         ## $at = 0000004E
/* 005D4 809B6924 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 0000000C
/* 005D8 809B6928 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000170
/* 005DC 809B692C 26310006 */  addiu   $s1, $s1, 0x0006           ## $s1 = 00000006
/* 005E0 809B6930 26940006 */  addiu   $s4, $s4, 0x0006           ## $s4 = 000002B0
/* 005E4 809B6934 1661FFDA */  bne     $s3, $at, .L809B68A0
/* 005E8 809B6938 26B50006 */  addiu   $s5, $s5, 0x0006           ## $s5 = 000002AE
/* 005EC 809B693C 86C902F0 */  lh      $t1, 0x02F0($s6)           ## 000002F0
/* 005F0 809B6940 86CA02F2 */  lh      $t2, 0x02F2($s6)           ## 000002F2
/* 005F4 809B6944 3C01432F */  lui     $at, 0x432F                ## $at = 432F0000
/* 005F8 809B6948 A6C902F6 */  sh      $t1, 0x02F6($s6)           ## 000002F6
/* 005FC 809B694C A6CA02F8 */  sh      $t2, 0x02F8($s6)           ## 000002F8
/* 00600 809B6950 8FAB006C */  lw      $t3, 0x006C($sp)
/* 00604 809B6954 8D6C067C */  lw      $t4, 0x067C($t3)           ## 0000067C
/* 00608 809B6958 000C6940 */  sll     $t5, $t4,  5
/* 0060C 809B695C 05A20013 */  bltzl   $t5, .L809B69AC
/* 00610 809B6960 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00614 809B6964 44815000 */  mtc1    $at, $f10                  ## $f10 = 175.00
/* 00618 809B6968 C6D00090 */  lwc1    $f16, 0x0090($s6)          ## 00000090
/* 0061C 809B696C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00620 809B6970 460A803E */  c.le.s  $f16, $f10
/* 00624 809B6974 00000000 */  nop
/* 00628 809B6978 4502000C */  bc1fl   .L809B69AC
/* 0062C 809B697C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00630 809B6980 C6D2000C */  lwc1    $f18, 0x000C($s6)          ## 0000000C
/* 00634 809B6984 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00638 809B6988 C6C80028 */  lwc1    $f8, 0x0028($s6)           ## 00000028
/* 0063C 809B698C 46049180 */  add.s   $f6, $f18, $f4
/* 00640 809B6990 46083032 */  c.eq.s  $f6, $f8
/* 00644 809B6994 00000000 */  nop
/* 00648 809B6998 45020004 */  bc1fl   .L809B69AC
/* 0064C 809B699C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00650 809B69A0 0C26DAC1 */  jal     func_809B6B04
/* 00654 809B69A4 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00658 809B69A8 8FBF003C */  lw      $ra, 0x003C($sp)
.L809B69AC:
/* 0065C 809B69AC 8FB0001C */  lw      $s0, 0x001C($sp)
/* 00660 809B69B0 8FB10020 */  lw      $s1, 0x0020($sp)
/* 00664 809B69B4 8FB20024 */  lw      $s2, 0x0024($sp)
/* 00668 809B69B8 8FB30028 */  lw      $s3, 0x0028($sp)
/* 0066C 809B69BC 8FB4002C */  lw      $s4, 0x002C($sp)
/* 00670 809B69C0 8FB50030 */  lw      $s5, 0x0030($sp)
/* 00674 809B69C4 8FB60034 */  lw      $s6, 0x0034($sp)
/* 00678 809B69C8 8FB70038 */  lw      $s7, 0x0038($sp)
/* 0067C 809B69CC 03E00008 */  jr      $ra
/* 00680 809B69D0 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
