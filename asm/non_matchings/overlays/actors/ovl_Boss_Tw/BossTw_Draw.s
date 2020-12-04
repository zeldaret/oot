.rdata
glabel D_8094AC28
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AC38
    .asciz "../z_boss_tw.c"
    .balign 4

.late_rodata
glabel D_8094B06C
 .word 0x458FC000

.text
glabel BossTw_Draw
/* 0A5A4 80943274 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 0A5A8 80943278 AFBF0044 */  sw      $ra, 0x0044($sp)
/* 0A5AC 8094327C AFB20040 */  sw      $s2, 0x0040($sp)
/* 0A5B0 80943280 AFB1003C */  sw      $s1, 0x003C($sp)
/* 0A5B4 80943284 AFB00038 */  sw      $s0, 0x0038($sp)
/* 0A5B8 80943288 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0A5BC 8094328C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0A5C0 80943290 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0A5C4 80943294 AFAE0084 */  sw      $t6, 0x0084($sp)
/* 0A5C8 80943298 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0A5CC 8094329C 3C068095 */  lui     $a2, %hi(D_8094AC28)       ## $a2 = 80950000
/* 0A5D0 809432A0 24C6AC28 */  addiu   $a2, $a2, %lo(D_8094AC28)  ## $a2 = 8094AC28
/* 0A5D4 809432A4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 0A5D8 809432A8 24071B23 */  addiu   $a3, $zero, 0x1B23         ## $a3 = 00001B23
/* 0A5DC 809432AC 0C031AB1 */  jal     Graph_OpenDisps
/* 0A5E0 809432B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0A5E4 809432B4 920F0564 */  lbu     $t7, 0x0564($s0)           ## 00000564
/* 0A5E8 809432B8 3C05DB06 */  lui     $a1, 0xDB06                ## $a1 = DB060000
/* 0A5EC 809432BC 34A50028 */  ori     $a1, $a1, 0x0028           ## $a1 = DB060028
/* 0A5F0 809432C0 51E0013B */  beql    $t7, $zero, .L809437B0
/* 0A5F4 809432C4 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 0A5F8 809432C8 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 0A5FC 809432CC 3C068095 */  lui     $a2, %hi(D_8094A998)       ## $a2 = 80950000
/* 0A600 809432D0 24C6A998 */  addiu   $a2, $a2, %lo(D_8094A998)  ## $a2 = 8094A998
/* 0A604 809432D4 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0A608 809432D8 AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 0A60C 809432DC AC650000 */  sw      $a1, 0x0000($v1)           ## 00000000
/* 0A610 809432E0 861904CC */  lh      $t9, 0x04CC($s0)           ## 000004CC
/* 0A614 809432E4 3C088016 */  lui     $t0, %hi(gSegments)
/* 0A618 809432E8 25086FA8 */  addiu   $t0, %lo(gSegments)
/* 0A61C 809432EC 00195080 */  sll     $t2, $t9,  2
/* 0A620 809432F0 00CA5821 */  addu    $t3, $a2, $t2
/* 0A624 809432F4 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0A628 809432F8 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 0A62C 809432FC 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 0A630 80943300 00046900 */  sll     $t5, $a0,  4
/* 0A634 80943304 000D7702 */  srl     $t6, $t5, 28
/* 0A638 80943308 000E7880 */  sll     $t7, $t6,  2
/* 0A63C 8094330C 010FC021 */  addu    $t8, $t0, $t7
/* 0A640 80943310 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000008
/* 0A644 80943314 00876024 */  and     $t4, $a0, $a3
/* 0A648 80943318 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 0A64C 8094331C 01995021 */  addu    $t2, $t4, $t9
/* 0A650 80943320 01495821 */  addu    $t3, $t2, $t1
/* 0A654 80943324 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 0A658 80943328 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0A65C 8094332C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0A660 80943330 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 0A664 80943334 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 0A668 80943338 860E04CC */  lh      $t6, 0x04CC($s0)           ## 000004CC
/* 0A66C 8094333C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0A670 80943340 000E7880 */  sll     $t7, $t6,  2
/* 0A674 80943344 00CFC021 */  addu    $t8, $a2, $t7
/* 0A678 80943348 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000008
/* 0A67C 8094334C 0004C900 */  sll     $t9, $a0,  4
/* 0A680 80943350 00195702 */  srl     $t2, $t9, 28
/* 0A684 80943354 000A5880 */  sll     $t3, $t2,  2
/* 0A688 80943358 010B6821 */  addu    $t5, $t0, $t3
/* 0A68C 8094335C 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000008
/* 0A690 80943360 00876024 */  and     $t4, $a0, $a3
/* 0A694 80943364 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0A698 80943368 018E7821 */  addu    $t7, $t4, $t6
/* 0A69C 8094336C 01E9C021 */  addu    $t8, $t7, $t1
/* 0A6A0 80943370 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0A6A4 80943374 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0A6A8 80943378 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 0A6AC 8094337C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0A6B0 80943380 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0A6B4 80943384 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 0A6B8 80943388 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0A6BC 8094338C C6080194 */  lwc1    $f8, 0x0194($s0)           ## 00000194
/* 0A6C0 80943390 C6040184 */  lwc1    $f4, 0x0184($s0)           ## 00000184
/* 0A6C4 80943394 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0A6C8 80943398 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 0A6CC 8094339C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 0A6D0 809433A0 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 0A6D4 809433A4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 0A6D8 809433A8 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 0A6DC 809433AC C6120188 */  lwc1    $f18, 0x0188($s0)          ## 00000188
/* 0A6E0 809433B0 4600218D */  trunc.w.s $f6, $f4
/* 0A6E4 809433B4 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 0A6E8 809433B8 4600910D */  trunc.w.s $f4, $f18
/* 0A6EC 809433BC 44063000 */  mfc1    $a2, $f6
/* 0A6F0 809433C0 4600428D */  trunc.w.s $f10, $f8
/* 0A6F4 809433C4 440B2000 */  mfc1    $t3, $f4
/* 0A6F8 809433C8 00063400 */  sll     $a2, $a2, 16
/* 0A6FC 809433CC 00063403 */  sra     $a2, $a2, 16
/* 0A700 809433D0 316D007F */  andi    $t5, $t3, 0x007F           ## $t5 = 00000000
/* 0A704 809433D4 AFAD001C */  sw      $t5, 0x001C($sp)
/* 0A708 809433D8 C6060198 */  lwc1    $f6, 0x0198($s0)           ## 00000198
/* 0A70C 809433DC 44075000 */  mfc1    $a3, $f10
/* 0A710 809433E0 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 0A714 809433E4 4600320D */  trunc.w.s $f8, $f6
/* 0A718 809433E8 00073C00 */  sll     $a3, $a3, 16
/* 0A71C 809433EC 00073C03 */  sra     $a3, $a3, 16
/* 0A720 809433F0 30E7007F */  andi    $a3, $a3, 0x007F           ## $a3 = 0000007F
/* 0A724 809433F4 44184000 */  mfc1    $t8, $f8
/* 0A728 809433F8 AFAB0028 */  sw      $t3, 0x0028($sp)
/* 0A72C 809433FC AFAA0024 */  sw      $t2, 0x0024($sp)
/* 0A730 80943400 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000008
/* 0A734 80943404 AFB90020 */  sw      $t9, 0x0020($sp)
/* 0A738 80943408 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000018
/* 0A73C 8094340C 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 0A740 80943410 AFA20064 */  sw      $v0, 0x0064($sp)
/* 0A744 80943414 8FA30064 */  lw      $v1, 0x0064($sp)
/* 0A748 80943418 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 0A74C 8094341C 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 0A750 80943420 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0A754 80943424 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 0A758 80943428 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 0A75C 8094342C 55A0001D */  bnel    $t5, $zero, .L809434A4
/* 0A760 80943430 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0A764 80943434 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0A768 80943438 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 0A76C 8094343C 35CE0024 */  ori     $t6, $t6, 0x0024           ## $t6 = DB060024
/* 0A770 80943440 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0A774 80943444 AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 0A778 80943448 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0A77C 8094344C C604019C */  lwc1    $f4, 0x019C($s0)           ## 0000019C
/* 0A780 80943450 C60A018C */  lwc1    $f10, 0x018C($s0)          ## 0000018C
/* 0A784 80943454 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0A788 80943458 4600218D */  trunc.w.s $f6, $f4
/* 0A78C 8094345C 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 0A790 80943460 AFB90010 */  sw      $t9, 0x0010($sp)
/* 0A794 80943464 4600548D */  trunc.w.s $f18, $f10
/* 0A798 80943468 44063000 */  mfc1    $a2, $f6
/* 0A79C 8094346C 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
/* 0A7A0 80943470 AFA20060 */  sw      $v0, 0x0060($sp)
/* 0A7A4 80943474 44059000 */  mfc1    $a1, $f18
/* 0A7A8 80943478 00063400 */  sll     $a2, $a2, 16
/* 0A7AC 8094347C 00063403 */  sra     $a2, $a2, 16
/* 0A7B0 80943480 00052C00 */  sll     $a1, $a1, 16
/* 0A7B4 80943484 00052C03 */  sra     $a1, $a1, 16
/* 0A7B8 80943488 30A5007F */  andi    $a1, $a1, 0x007F           ## $a1 = 00000000
/* 0A7BC 8094348C 0C0253A7 */  jal     Gfx_TexScroll
/* 0A7C0 80943490 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 0A7C4 80943494 8FA30060 */  lw      $v1, 0x0060($sp)
/* 0A7C8 80943498 1000002A */  beq     $zero, $zero, .L80943544
/* 0A7CC 8094349C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0A7D0 809434A0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
.L809434A4:
/* 0A7D4 809434A4 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 0A7D8 809434A8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0A7DC 809434AC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0A7E0 809434B0 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 0A7E4 809434B4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0A7E8 809434B8 C612019C */  lwc1    $f18, 0x019C($s0)          ## 0000019C
/* 0A7EC 809434BC C608018C */  lwc1    $f8, 0x018C($s0)           ## 0000018C
/* 0A7F0 809434C0 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0A7F4 809434C4 AFB80018 */  sw      $t8, 0x0018($sp)
/* 0A7F8 809434C8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0A7FC 809434CC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0A800 809434D0 C6060190 */  lwc1    $f6, 0x0190($s0)           ## 00000190
/* 0A804 809434D4 4600428D */  trunc.w.s $f10, $f8
/* 0A808 809434D8 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 0A80C 809434DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0A810 809434E0 4600320D */  trunc.w.s $f8, $f6
/* 0A814 809434E4 44065000 */  mfc1    $a2, $f10
/* 0A818 809434E8 4600910D */  trunc.w.s $f4, $f18
/* 0A81C 809434EC 440D4000 */  mfc1    $t5, $f8
/* 0A820 809434F0 00063400 */  sll     $a2, $a2, 16
/* 0A824 809434F4 00063403 */  sra     $a2, $a2, 16
/* 0A828 809434F8 31AC007F */  andi    $t4, $t5, 0x007F           ## $t4 = 00000000
/* 0A82C 809434FC AFAC001C */  sw      $t4, 0x001C($sp)
/* 0A830 80943500 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 0A834 80943504 44072000 */  mfc1    $a3, $f4
/* 0A838 80943508 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 0A83C 8094350C 4600548D */  trunc.w.s $f18, $f10
/* 0A840 80943510 00073C00 */  sll     $a3, $a3, 16
/* 0A844 80943514 00073C03 */  sra     $a3, $a3, 16
/* 0A848 80943518 30E7007F */  andi    $a3, $a3, 0x007F           ## $a3 = 00000000
/* 0A84C 8094351C 44199000 */  mfc1    $t9, $f18
/* 0A850 80943520 AFAD0028 */  sw      $t5, 0x0028($sp)
/* 0A854 80943524 AFAB0024 */  sw      $t3, 0x0024($sp)
/* 0A858 80943528 332A00FF */  andi    $t2, $t9, 0x00FF           ## $t2 = 00000000
/* 0A85C 8094352C AFAA0020 */  sw      $t2, 0x0020($sp)
/* 0A860 80943530 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 0A864 80943534 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 0A868 80943538 AFA2005C */  sw      $v0, 0x005C($sp)
/* 0A86C 8094353C 8FA3005C */  lw      $v1, 0x005C($sp)
/* 0A870 80943540 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
.L80943544:
/* 0A874 80943544 0C024F46 */  jal     func_80093D18
/* 0A878 80943548 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0A87C 8094354C 0C024F61 */  jal     func_80093D84
/* 0A880 80943550 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0A884 80943554 860C015C */  lh      $t4, 0x015C($s0)           ## 0000015C
/* 0A888 80943558 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 0A88C 8094355C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0A890 80943560 318E0002 */  andi    $t6, $t4, 0x0002           ## $t6 = 00000000
/* 0A894 80943564 11C0000B */  beq     $t6, $zero, .L80943594
/* 0A898 80943568 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0A89C 8094356C 8E2402C0 */  lw      $a0, 0x02C0($s1)           ## 000002C0
/* 0A8A0 80943570 240F0384 */  addiu   $t7, $zero, 0x0384         ## $t7 = 00000384
/* 0A8A4 80943574 2418044B */  addiu   $t8, $zero, 0x044B         ## $t8 = 0000044B
/* 0A8A8 80943578 AFB80018 */  sw      $t8, 0x0018($sp)
/* 0A8AC 8094357C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0A8B0 80943580 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0A8B4 80943584 0C024CDC */  jal     Gfx_SetFog
/* 0A8B8 80943588 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 0A8BC 8094358C 10000073 */  beq     $zero, $zero, .L8094375C
/* 0A8C0 80943590 AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
.L80943594:
/* 0A8C4 80943594 4459F800 */  cfc1    $t9, $31
/* 0A8C8 80943598 44C5F800 */  ctc1    $a1, $31
/* 0A8CC 8094359C C60401D4 */  lwc1    $f4, 0x01D4($s0)           ## 000001D4
/* 0A8D0 809435A0 8E2402C0 */  lw      $a0, 0x02C0($s1)           ## 000002C0
/* 0A8D4 809435A4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0A8D8 809435A8 460021A4 */  cvt.w.s $f6, $f4
/* 0A8DC 809435AC 4445F800 */  cfc1    $a1, $31
/* 0A8E0 809435B0 00000000 */  nop
/* 0A8E4 809435B4 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 0A8E8 809435B8 50A00013 */  beql    $a1, $zero, .L80943608
/* 0A8EC 809435BC 44053000 */  mfc1    $a1, $f6
/* 0A8F0 809435C0 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 0A8F4 809435C4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0A8F8 809435C8 46062181 */  sub.s   $f6, $f4, $f6
/* 0A8FC 809435CC 44C5F800 */  ctc1    $a1, $31
/* 0A900 809435D0 00000000 */  nop
/* 0A904 809435D4 460031A4 */  cvt.w.s $f6, $f6
/* 0A908 809435D8 4445F800 */  cfc1    $a1, $31
/* 0A90C 809435DC 00000000 */  nop
/* 0A910 809435E0 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 0A914 809435E4 14A00005 */  bne     $a1, $zero, .L809435FC
/* 0A918 809435E8 00000000 */  nop
/* 0A91C 809435EC 44053000 */  mfc1    $a1, $f6
/* 0A920 809435F0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0A924 809435F4 10000007 */  beq     $zero, $zero, .L80943614
/* 0A928 809435F8 00A12825 */  or      $a1, $a1, $at              ## $a1 = 80000000
.L809435FC:
/* 0A92C 809435FC 10000005 */  beq     $zero, $zero, .L80943614
/* 0A930 80943600 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 0A934 80943604 44053000 */  mfc1    $a1, $f6
.L80943608:
/* 0A938 80943608 00000000 */  nop
/* 0A93C 8094360C 04A0FFFB */  bltz    $a1, .L809435FC
/* 0A940 80943610 00000000 */  nop
.L80943614:
/* 0A944 80943614 44D9F800 */  ctc1    $t9, $31
/* 0A948 80943618 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0A94C 8094361C C60801D8 */  lwc1    $f8, 0x01D8($s0)           ## 000001D8
/* 0A950 80943620 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0A954 80943624 444AF800 */  cfc1    $t2, $31
/* 0A958 80943628 44C6F800 */  ctc1    $a2, $31
/* 0A95C 8094362C 00000000 */  nop
/* 0A960 80943630 460042A4 */  cvt.w.s $f10, $f8
/* 0A964 80943634 4446F800 */  cfc1    $a2, $31
/* 0A968 80943638 00000000 */  nop
/* 0A96C 8094363C 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 0A970 80943640 50C00013 */  beql    $a2, $zero, .L80943690
/* 0A974 80943644 44065000 */  mfc1    $a2, $f10
/* 0A978 80943648 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 0A97C 8094364C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0A980 80943650 460A4281 */  sub.s   $f10, $f8, $f10
/* 0A984 80943654 44C6F800 */  ctc1    $a2, $31
/* 0A988 80943658 00000000 */  nop
/* 0A98C 8094365C 460052A4 */  cvt.w.s $f10, $f10
/* 0A990 80943660 4446F800 */  cfc1    $a2, $31
/* 0A994 80943664 00000000 */  nop
/* 0A998 80943668 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 0A99C 8094366C 14C00005 */  bne     $a2, $zero, .L80943684
/* 0A9A0 80943670 00000000 */  nop
/* 0A9A4 80943674 44065000 */  mfc1    $a2, $f10
/* 0A9A8 80943678 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0A9AC 8094367C 10000007 */  beq     $zero, $zero, .L8094369C
/* 0A9B0 80943680 00C13025 */  or      $a2, $a2, $at              ## $a2 = 80000000
.L80943684:
/* 0A9B4 80943684 10000005 */  beq     $zero, $zero, .L8094369C
/* 0A9B8 80943688 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 0A9BC 8094368C 44065000 */  mfc1    $a2, $f10
.L80943690:
/* 0A9C0 80943690 00000000 */  nop
/* 0A9C4 80943694 04C0FFFB */  bltz    $a2, .L80943684
/* 0A9C8 80943698 00000000 */  nop
.L8094369C:
/* 0A9CC 8094369C 44CAF800 */  ctc1    $t2, $31
/* 0A9D0 809436A0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0A9D4 809436A4 C61201DC */  lwc1    $f18, 0x01DC($s0)          ## 000001DC
/* 0A9D8 809436A8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0A9DC 809436AC 444BF800 */  cfc1    $t3, $31
/* 0A9E0 809436B0 44C7F800 */  ctc1    $a3, $31
/* 0A9E4 809436B4 00000000 */  nop
/* 0A9E8 809436B8 46009124 */  cvt.w.s $f4, $f18
/* 0A9EC 809436BC 4447F800 */  cfc1    $a3, $31
/* 0A9F0 809436C0 00000000 */  nop
/* 0A9F4 809436C4 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 0A9F8 809436C8 50E00013 */  beql    $a3, $zero, .L80943718
/* 0A9FC 809436CC 44072000 */  mfc1    $a3, $f4
/* 0AA00 809436D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 0AA04 809436D4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0AA08 809436D8 46049101 */  sub.s   $f4, $f18, $f4
/* 0AA0C 809436DC 44C7F800 */  ctc1    $a3, $31
/* 0AA10 809436E0 00000000 */  nop
/* 0AA14 809436E4 46002124 */  cvt.w.s $f4, $f4
/* 0AA18 809436E8 4447F800 */  cfc1    $a3, $31
/* 0AA1C 809436EC 00000000 */  nop
/* 0AA20 809436F0 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 0AA24 809436F4 14E00005 */  bne     $a3, $zero, .L8094370C
/* 0AA28 809436F8 00000000 */  nop
/* 0AA2C 809436FC 44072000 */  mfc1    $a3, $f4
/* 0AA30 80943700 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0AA34 80943704 10000007 */  beq     $zero, $zero, .L80943724
/* 0AA38 80943708 00E13825 */  or      $a3, $a3, $at              ## $a3 = 80000000
.L8094370C:
/* 0AA3C 8094370C 10000005 */  beq     $zero, $zero, .L80943724
/* 0AA40 80943710 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 0AA44 80943714 44072000 */  mfc1    $a3, $f4
.L80943718:
/* 0AA48 80943718 00000000 */  nop
/* 0AA4C 8094371C 04E0FFFB */  bltz    $a3, .L8094370C
/* 0AA50 80943720 00000000 */  nop
.L80943724:
/* 0AA54 80943724 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0AA58 80943728 C60601E0 */  lwc1    $f6, 0x01E0($s0)           ## 000001E0
/* 0AA5C 8094372C 44CBF800 */  ctc1    $t3, $31
/* 0AA60 80943730 00000000 */  nop
/* 0AA64 80943734 4600320D */  trunc.w.s $f8, $f6
/* 0AA68 80943738 440C4000 */  mfc1    $t4, $f8
/* 0AA6C 8094373C 00000000 */  nop
/* 0AA70 80943740 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 0AA74 80943744 C60A01E4 */  lwc1    $f10, 0x01E4($s0)          ## 000001E4
/* 0AA78 80943748 4600548D */  trunc.w.s $f18, $f10
/* 0AA7C 8094374C 440F9000 */  mfc1    $t7, $f18
/* 0AA80 80943750 0C024CDC */  jal     Gfx_SetFog
/* 0AA84 80943754 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 0AA88 80943758 AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
.L8094375C:
/* 0AA8C 8094375C 0C034213 */  jal     Matrix_Push
/* 0AA90 80943760 00000000 */  nop
/* 0AA94 80943764 8E05056C */  lw      $a1, 0x056C($s0)           ## 0000056C
/* 0AA98 80943768 8E060588 */  lw      $a2, 0x0588($s0)           ## 00000588
/* 0AA9C 8094376C 9207056A */  lbu     $a3, 0x056A($s0)           ## 0000056A
/* 0AAA0 80943770 3C188094 */  lui     $t8, %hi(func_809416D0)    ## $t8 = 80940000
/* 0AAA4 80943774 3C198094 */  lui     $t9, %hi(func_80941788)    ## $t9 = 80940000
/* 0AAA8 80943778 27391788 */  addiu   $t9, $t9, %lo(func_80941788) ## $t9 = 80941788
/* 0AAAC 8094377C 271816D0 */  addiu   $t8, $t8, %lo(func_809416D0) ## $t8 = 809416D0
/* 0AAB0 80943780 AFB80010 */  sw      $t8, 0x0010($sp)
/* 0AAB4 80943784 AFB90014 */  sw      $t9, 0x0014($sp)
/* 0AAB8 80943788 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0AABC 8094378C 0C0286B2 */  jal     Skeleton_DrawFlexOpa
/* 0AAC0 80943790 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0AAC4 80943794 0C034221 */  jal     Matrix_Pull
/* 0AAC8 80943798 00000000 */  nop
/* 0AACC 8094379C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0AAD0 809437A0 0C02F228 */  jal     func_800BC8A0
/* 0AAD4 809437A4 8E2502C0 */  lw      $a1, 0x02C0($s1)           ## 000002C0
/* 0AAD8 809437A8 AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
/* 0AADC 809437AC 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
.L809437B0:
/* 0AAE0 809437B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AAE4 809437B4 15400042 */  bne     $t2, $zero, .L809438C0
/* 0AAE8 809437B8 00000000 */  nop
/* 0AAEC 809437BC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0AAF0 809437C0 C60401A8 */  lwc1    $f4, 0x01A8($s0)           ## 000001A8
/* 0AAF4 809437C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AAF8 809437C8 4604003C */  c.lt.s  $f0, $f4
/* 0AAFC 809437CC 00000000 */  nop
/* 0AB00 809437D0 45000039 */  bc1f    .L809438B8
/* 0AB04 809437D4 00000000 */  nop
/* 0AB08 809437D8 C61001B0 */  lwc1    $f16, 0x01B0($s0)          ## 000001B0
/* 0AB0C 809437DC 8FA20084 */  lw      $v0, 0x0084($sp)
/* 0AB10 809437E0 4610003C */  c.lt.s  $f0, $f16
/* 0AB14 809437E4 00000000 */  nop
/* 0AB18 809437E8 45000031 */  bc1f    .L809438B0
/* 0AB1C 809437EC 00000000 */  nop
/* 0AB20 809437F0 C60A04C0 */  lwc1    $f10, 0x04C0($s0)          ## 000004C0
/* 0AB24 809437F4 C4520028 */  lwc1    $f18, 0x0028($v0)          ## 00000028
/* 0AB28 809437F8 C60604BC */  lwc1    $f6, 0x04BC($s0)           ## 000004BC
/* 0AB2C 809437FC C4480024 */  lwc1    $f8, 0x0024($v0)           ## 00000024
/* 0AB30 80943800 46125081 */  sub.s   $f2, $f10, $f18
/* 0AB34 80943804 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0AB38 80943808 C60404C4 */  lwc1    $f4, 0x04C4($s0)           ## 000004C4
/* 0AB3C 8094380C 46083301 */  sub.s   $f12, $f6, $f8
/* 0AB40 80943810 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 0AB44 80943814 C446002C */  lwc1    $f6, 0x002C($v0)           ## 0000002C
/* 0AB48 80943818 46001005 */  abs.s   $f0, $f2
/* 0AB4C 8094381C 4608003C */  c.lt.s  $f0, $f8
/* 0AB50 80943820 46062381 */  sub.s   $f14, $f4, $f6
/* 0AB54 80943824 45000022 */  bc1f    .L809438B0
/* 0AB58 80943828 00000000 */  nop
/* 0AB5C 8094382C 944B0088 */  lhu     $t3, 0x0088($v0)           ## 00000088
/* 0AB60 80943830 316D0001 */  andi    $t5, $t3, 0x0001           ## $t5 = 00000000
/* 0AB64 80943834 11A0001E */  beq     $t5, $zero, .L809438B0
/* 0AB68 80943838 00000000 */  nop
/* 0AB6C 8094383C 460C6282 */  mul.s   $f10, $f12, $f12
/* 0AB70 80943840 3C018095 */  lui     $at, %hi(D_8094B06C)       ## $at = 80950000
/* 0AB74 80943844 C426B06C */  lwc1    $f6, %lo(D_8094B06C)($at)
/* 0AB78 80943848 460E7482 */  mul.s   $f18, $f14, $f14
/* 0AB7C 8094384C C60401B4 */  lwc1    $f4, 0x01B4($s0)           ## 000001B4
/* 0AB80 80943850 3C028095 */  lui     $v0, %hi(D_8094C85F)       ## $v0 = 80950000
/* 0AB84 80943854 2442C85F */  addiu   $v0, $v0, %lo(D_8094C85F)  ## $v0 = 8094C85F
/* 0AB88 80943858 46062202 */  mul.s   $f8, $f4, $f6
/* 0AB8C 8094385C 46125000 */  add.s   $f0, $f10, $f18
/* 0AB90 80943860 46000004 */  sqrt.s  $f0, $f0
/* 0AB94 80943864 4608003C */  c.lt.s  $f0, $f8
/* 0AB98 80943868 00000000 */  nop
/* 0AB9C 8094386C 45000010 */  bc1f    .L809438B0
/* 0ABA0 80943870 00000000 */  nop
/* 0ABA4 80943874 904C0000 */  lbu     $t4, 0x0000($v0)           ## 8094C85F
/* 0ABA8 80943878 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0ABAC 8094387C 1580000C */  bne     $t4, $zero, .L809438B0
/* 0ABB0 80943880 00000000 */  nop
/* 0ABB4 80943884 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 0ABB8 80943888 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0ABBC 8094388C 3C188095 */  lui     $t8, %hi(D_8094C84C)       ## $t8 = 80950000
/* 0ABC0 80943890 4610503C */  c.lt.s  $f10, $f16
/* 0ABC4 80943894 00000000 */  nop
/* 0ABC8 80943898 45000005 */  bc1f    .L809438B0
/* 0ABCC 8094389C 00000000 */  nop
/* 0ABD0 809438A0 A04E0000 */  sb      $t6, 0x0000($v0)           ## 8094C85F
/* 0ABD4 809438A4 8F18C84C */  lw      $t8, %lo(D_8094C84C)($t8)
/* 0ABD8 809438A8 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 0ABDC 809438AC A70F017C */  sh      $t7, 0x017C($t8)           ## 8095017C
.L809438B0:
/* 0ABE0 809438B0 0C2506F0 */  jal     func_80941BC0
/* 0ABE4 809438B4 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
.L809438B8:
/* 0ABE8 809438B8 10000004 */  beq     $zero, $zero, .L809438CC
/* 0ABEC 809438BC 92020564 */  lbu     $v0, 0x0564($s0)           ## 00000564
.L809438C0:
/* 0ABF0 809438C0 0C250860 */  jal     func_80942180
/* 0ABF4 809438C4 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0ABF8 809438C8 92020564 */  lbu     $v0, 0x0564($s0)           ## 00000564
.L809438CC:
/* 0ABFC 809438CC 10400014 */  beq     $v0, $zero, .L80943920
/* 0AC00 809438D0 00000000 */  nop
/* 0AC04 809438D4 8E0A014C */  lw      $t2, 0x014C($s0)           ## 0000014C
/* 0AC08 809438D8 3C198094 */  lui     $t9, %hi(func_8093D444)    ## $t9 = 80940000
/* 0AC0C 809438DC 2739D444 */  addiu   $t9, $t9, %lo(func_8093D444) ## $t9 = 8093D444
/* 0AC10 809438E0 172A0006 */  bne     $t9, $t2, .L809438FC
/* 0AC14 809438E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AC18 809438E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AC1C 809438EC 0C250C0A */  jal     func_80943028
/* 0AC20 809438F0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0AC24 809438F4 1000000A */  beq     $zero, $zero, .L80943920
/* 0AC28 809438F8 00000000 */  nop
.L809438FC:
/* 0AC2C 809438FC 0C2509BC */  jal     func_809426F0
/* 0AC30 80943900 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0AC34 80943904 3C048095 */  lui     $a0, %hi(D_8094A9A4)       ## $a0 = 80950000
/* 0AC38 80943908 2484A9A4 */  addiu   $a0, $a0, %lo(D_8094A9A4)  ## $a0 = 8094A9A4
/* 0AC3C 8094390C 0C0346BD */  jal     Matrix_MultVec3f
/* 0AC40 80943910 2605048C */  addiu   $a1, $s0, 0x048C           ## $a1 = 0000048C
/* 0AC44 80943914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AC48 80943918 0C250B1C */  jal     func_80942C70
/* 0AC4C 8094391C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
.L80943920:
/* 0AC50 80943920 3C068095 */  lui     $a2, %hi(D_8094AC38)       ## $a2 = 80950000
/* 0AC54 80943924 24C6AC38 */  addiu   $a2, $a2, %lo(D_8094AC38)  ## $a2 = 8094AC38
/* 0AC58 80943928 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 0AC5C 8094392C 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 0AC60 80943930 0C031AD5 */  jal     Graph_CloseDisps
/* 0AC64 80943934 24071BD3 */  addiu   $a3, $zero, 0x1BD3         ## $a3 = 00001BD3
/* 0AC68 80943938 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 0AC6C 8094393C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 0AC70 80943940 8FB1003C */  lw      $s1, 0x003C($sp)
/* 0AC74 80943944 8FB20040 */  lw      $s2, 0x0040($sp)
/* 0AC78 80943948 03E00008 */  jr      $ra
/* 0AC7C 8094394C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
