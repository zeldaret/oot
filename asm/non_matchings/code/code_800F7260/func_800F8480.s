glabel func_800F8480
/* B6F620 800F8480 3C0E8013 */  lui   $t6, %hi(D_801333CC) # $t6, 0x8013
/* B6F624 800F8484 91CE33CC */  lbu   $t6, %lo(D_801333CC)($t6)
/* B6F628 800F8488 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B6F62C 800F848C AFB20020 */  sw    $s2, 0x20($sp)
/* B6F630 800F8490 000E78C0 */  sll   $t7, $t6, 3
/* B6F634 800F8494 309200FF */  andi  $s2, $a0, 0xff
/* B6F638 800F8498 01EE7823 */  subu  $t7, $t7, $t6
/* B6F63C 800F849C 01F2C021 */  addu  $t8, $t7, $s2
/* B6F640 800F84A0 3C038013 */  lui   $v1, %hi(D_80130578)
/* B6F644 800F84A4 00781821 */  addu  $v1, $v1, $t8
/* B6F648 800F84A8 90630578 */  lbu   $v1, %lo(D_80130578)($v1)
/* B6F64C 800F84AC AFB40028 */  sw    $s4, 0x28($sp)
/* B6F650 800F84B0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B6F654 800F84B4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B6F658 800F84B8 AFB70034 */  sw    $s7, 0x34($sp)
/* B6F65C 800F84BC AFB60030 */  sw    $s6, 0x30($sp)
/* B6F660 800F84C0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B6F664 800F84C4 AFB30024 */  sw    $s3, 0x24($sp)
/* B6F668 800F84C8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B6F66C 800F84CC AFB00018 */  sw    $s0, 0x18($sp)
/* B6F670 800F84D0 AFA40060 */  sw    $a0, 0x60($sp)
/* B6F674 800F84D4 186000A6 */  blez  $v1, .L800F8770
/* B6F678 800F84D8 0000A025 */   move  $s4, $zero
/* B6F67C 800F84DC 0012C880 */  sll   $t9, $s2, 2
/* B6F680 800F84E0 0332C823 */  subu  $t9, $t9, $s2
/* B6F684 800F84E4 3C088017 */  lui   $t0, %hi(D_8016E1B8) # $t0, 0x8017
/* B6F688 800F84E8 2508E1B8 */  addiu $t0, %lo(D_8016E1B8) # addiu $t0, $t0, -0x1e48
/* B6F68C 800F84EC 0019C8C0 */  sll   $t9, $t9, 3
/* B6F690 800F84F0 03284821 */  addu  $t1, $t9, $t0
/* B6F694 800F84F4 3C138017 */  lui   $s3, %hi(D_8016E260) # $s3, 0x8017
/* B6F698 800F84F8 2673E260 */  addiu $s3, %lo(D_8016E260) # addiu $s3, $s3, -0x1da0
/* B6F69C 800F84FC AFA90044 */  sw    $t1, 0x44($sp)
/* B6F6A0 800F8500 241E0004 */  li    $fp, 4
/* B6F6A4 800F8504 241700FF */  li    $s7, 255
/* B6F6A8 800F8508 3C160602 */  lui   $s6, 0x602
.L800F850C:
/* B6F6AC 800F850C 8FAA0044 */  lw    $t2, 0x44($sp)
/* B6F6B0 800F8510 001458C0 */  sll   $t3, $s4, 3
/* B6F6B4 800F8514 00126880 */  sll   $t5, $s2, 2
/* B6F6B8 800F8518 014B6021 */  addu  $t4, $t2, $t3
/* B6F6BC 800F851C 91910004 */  lbu   $s1, 4($t4)
/* B6F6C0 800F8520 3C0E8013 */  lui   $t6, %hi(gSoundBanks)
/* B6F6C4 800F8524 01CD7021 */  addu  $t6, $t6, $t5
/* B6F6C8 800F8528 12F1008A */  beq   $s7, $s1, .L800F8754
/* B6F6CC 800F852C 00117880 */   sll   $t7, $s1, 2
/* B6F6D0 800F8530 8DCE33A8 */  lw    $t6, %lo(gSoundBanks)($t6)
/* B6F6D4 800F8534 01F17823 */  subu  $t7, $t7, $s1
/* B6F6D8 800F8538 92660000 */  lbu   $a2, ($s3)
/* B6F6DC 800F853C 000F7900 */  sll   $t7, $t7, 4
/* B6F6E0 800F8540 01CF8021 */  addu  $s0, $t6, $t7
/* B6F6E4 800F8544 9202002A */  lbu   $v0, 0x2a($s0)
/* B6F6E8 800F8548 3C048017 */  lui   $a0, %hi(gAudioContext+0x3828)
/* B6F6EC 800F854C 0006C080 */  sll   $t8, $a2, 2
/* B6F6F0 800F8550 00982021 */  addu  $a0, $a0, $t8
/* B6F6F4 800F8554 24010002 */  li    $at, 2
/* B6F6F8 800F8558 14410053 */  bne   $v0, $at, .L800F86A8
/* B6F6FC 800F855C 8C8429A8 */   lw    $a0, %lo(gAudioContext+0x3828)($a0)
/* B6F700 800F8560 96020026 */  lhu   $v0, 0x26($s0)
/* B6F704 800F8564 3C198013 */  lui   $t9, %hi(D_80130570) # $t9, 0x8013
/* B6F708 800F8568 27390570 */  addiu $t9, %lo(D_80130570) # addiu $t9, $t9, 0x570
/* B6F70C 800F856C 30480008 */  andi  $t0, $v0, 8
/* B6F710 800F8570 A206002E */  sb    $a2, 0x2e($s0)
/* B6F714 800F8574 11000004 */  beqz  $t0, .L800F8588
/* B6F718 800F8578 0259A821 */   addu  $s5, $s2, $t9
/* B6F71C 800F857C 0C03DCAE */  jal   func_800F72B8
/* B6F720 800F8580 92640000 */   lbu   $a0, ($s3)
/* B6F724 800F8584 96020026 */  lhu   $v0, 0x26($s0)
.L800F8588:
/* B6F728 800F8588 304300C0 */  andi  $v1, $v0, 0xc0
/* B6F72C 800F858C 10600017 */  beqz  $v1, .L800F85EC
/* B6F730 800F8590 24010040 */   li    $at, 64
/* B6F734 800F8594 10610007 */  beq   $v1, $at, .L800F85B4
/* B6F738 800F8598 24010080 */   li    $at, 128
/* B6F73C 800F859C 1061000A */  beq   $v1, $at, .L800F85C8
/* B6F740 800F85A0 240100C0 */   li    $at, 192
/* B6F744 800F85A4 1061000D */  beq   $v1, $at, .L800F85DC
/* B6F748 800F85A8 00000000 */   nop   
/* B6F74C 800F85AC 1000000F */  b     .L800F85EC
/* B6F750 800F85B0 A200002F */   sb    $zero, 0x2f($s0)
.L800F85B4:
/* B6F754 800F85B4 0C0399F0 */  jal   func_800E67C0
/* B6F758 800F85B8 00000000 */   nop   
/* B6F75C 800F85BC 3049000F */  andi  $t1, $v0, 0xf
/* B6F760 800F85C0 1000000A */  b     .L800F85EC
/* B6F764 800F85C4 A209002F */   sb    $t1, 0x2f($s0)
.L800F85C8:
/* B6F768 800F85C8 0C0399F0 */  jal   func_800E67C0
/* B6F76C 800F85CC 00000000 */   nop   
/* B6F770 800F85D0 304A001F */  andi  $t2, $v0, 0x1f
/* B6F774 800F85D4 10000005 */  b     .L800F85EC
/* B6F778 800F85D8 A20A002F */   sb    $t2, 0x2f($s0)
.L800F85DC:
/* B6F77C 800F85DC 0C0399F0 */  jal   func_800E67C0
/* B6F780 800F85E0 00000000 */   nop   
/* B6F784 800F85E4 304B003F */  andi  $t3, $v0, 0x3f
/* B6F788 800F85E8 A20B002F */  sb    $t3, 0x2f($s0)
.L800F85EC:
/* B6F78C 800F85EC 324400FF */  andi  $a0, $s2, 0xff
/* B6F790 800F85F0 322500FF */  andi  $a1, $s1, 0xff
/* B6F794 800F85F4 0C03CE82 */  jal   func_800F3A08
/* B6F798 800F85F8 92660000 */   lbu   $a2, ($s3)
/* B6F79C 800F85FC 926D0000 */  lbu   $t5, ($s3)
/* B6F7A0 800F8600 24050001 */  li    $a1, 1
/* B6F7A4 800F8604 000D7200 */  sll   $t6, $t5, 8
/* B6F7A8 800F8608 0C0396C8 */  jal   func_800E5B20
/* B6F7AC 800F860C 01D62025 */   or    $a0, $t6, $s6
/* B6F7B0 800F8610 92780000 */  lbu   $t8, ($s3)
/* B6F7B4 800F8614 96050028 */  lhu   $a1, 0x28($s0)
/* B6F7B8 800F8618 0018CA00 */  sll   $t9, $t8, 8
/* B6F7BC 800F861C 03362025 */  or    $a0, $t9, $s6
/* B6F7C0 800F8620 00052E00 */  sll   $a1, $a1, 0x18
/* B6F7C4 800F8624 00052E03 */  sra   $a1, $a1, 0x18
/* B6F7C8 800F8628 0C0396C8 */  jal   func_800E5B20
/* B6F7CC 800F862C 34840004 */   ori   $a0, $a0, 4
/* B6F7D0 800F8630 92A80000 */  lbu   $t0, ($s5)
/* B6F7D4 800F8634 5100000C */  beql  $t0, $zero, .L800F8668
/* B6F7D8 800F8638 960C0028 */   lhu   $t4, 0x28($s0)
/* B6F7DC 800F863C 96050028 */  lhu   $a1, 0x28($s0)
/* B6F7E0 800F8640 926A0000 */  lbu   $t2, ($s3)
/* B6F7E4 800F8644 30A50100 */  andi  $a1, $a1, 0x100
/* B6F7E8 800F8648 00052A03 */  sra   $a1, $a1, 8
/* B6F7EC 800F864C 000A5A00 */  sll   $t3, $t2, 8
/* B6F7F0 800F8650 01762025 */  or    $a0, $t3, $s6
/* B6F7F4 800F8654 00052E00 */  sll   $a1, $a1, 0x18
/* B6F7F8 800F8658 00052E03 */  sra   $a1, $a1, 0x18
/* B6F7FC 800F865C 0C0396C8 */  jal   func_800E5B20
/* B6F800 800F8660 34840005 */   ori   $a0, $a0, 5
/* B6F804 800F8664 960C0028 */  lhu   $t4, 0x28($s0)
.L800F8668:
/* B6F808 800F8668 3C0F8013 */  lui   $t7, %hi(D_801333CC) # $t7, 0x8013
/* B6F80C 800F866C 240E0005 */  li    $t6, 5
/* B6F810 800F8670 318D0C00 */  andi  $t5, $t4, 0xc00
/* B6F814 800F8674 51A00004 */  beql  $t5, $zero, .L800F8688
/* B6F818 800F8678 A20E002A */   sb    $t6, 0x2a($s0)
/* B6F81C 800F867C 10000002 */  b     .L800F8688
/* B6F820 800F8680 A21E002A */   sb    $fp, 0x2a($s0)
/* B6F824 800F8684 A20E002A */  sb    $t6, 0x2a($s0)
.L800F8688:
/* B6F828 800F8688 91EF33CC */  lbu   $t7, %lo(D_801333CC)($t7)
/* B6F82C 800F868C 3C038013 */  lui   $v1, %hi(D_80130578)
/* B6F830 800F8690 000FC0C0 */  sll   $t8, $t7, 3
/* B6F834 800F8694 030FC023 */  subu  $t8, $t8, $t7
/* B6F838 800F8698 0312C821 */  addu  $t9, $t8, $s2
/* B6F83C 800F869C 00791821 */  addu  $v1, $v1, $t9
/* B6F840 800F86A0 1000002C */  b     .L800F8754
/* B6F844 800F86A4 90630578 */   lbu   $v1, %lo(D_80130578)($v1)
.L800F86A8:
/* B6F848 800F86A8 908800C5 */  lbu   $t0, 0xc5($a0)
/* B6F84C 800F86AC 324400FF */  andi  $a0, $s2, 0xff
/* B6F850 800F86B0 24010003 */  li    $at, 3
/* B6F854 800F86B4 16E8000C */  bne   $s7, $t0, .L800F86E8
/* B6F858 800F86B8 00000000 */   nop   
/* B6F85C 800F86BC 0C03DED5 */  jal   func_800F7B54
/* B6F860 800F86C0 322500FF */   andi  $a1, $s1, 0xff
/* B6F864 800F86C4 3C098013 */  lui   $t1, %hi(D_801333CC) # $t1, 0x8013
/* B6F868 800F86C8 912933CC */  lbu   $t1, %lo(D_801333CC)($t1)
/* B6F86C 800F86CC 3C038013 */  lui   $v1, %hi(D_80130578)
/* B6F870 800F86D0 000950C0 */  sll   $t2, $t1, 3
/* B6F874 800F86D4 01495023 */  subu  $t2, $t2, $t1
/* B6F878 800F86D8 01525821 */  addu  $t3, $t2, $s2
/* B6F87C 800F86DC 006B1821 */  addu  $v1, $v1, $t3
/* B6F880 800F86E0 1000001C */  b     .L800F8754
/* B6F884 800F86E4 90630578 */   lbu   $v1, %lo(D_80130578)($v1)
.L800F86E8:
/* B6F888 800F86E8 1441001A */  bne   $v0, $at, .L800F8754
/* B6F88C 800F86EC 324400FF */   andi  $a0, $s2, 0xff
/* B6F890 800F86F0 0C03CE82 */  jal   func_800F3A08
/* B6F894 800F86F4 322500FF */   andi  $a1, $s1, 0xff
/* B6F898 800F86F8 960C0028 */  lhu   $t4, 0x28($s0)
/* B6F89C 800F86FC 3C0E8013 */  lui   $t6, %hi(D_801333CC) # $t6, 0x8013
/* B6F8A0 800F8700 24190005 */  li    $t9, 5
/* B6F8A4 800F8704 318D0C00 */  andi  $t5, $t4, 0xc00
/* B6F8A8 800F8708 11A0000A */  beqz  $t5, .L800F8734
/* B6F8AC 800F870C 3C088013 */   lui   $t0, %hi(D_801333CC) # $t0, 0x8013
/* B6F8B0 800F8710 A21E002A */  sb    $fp, 0x2a($s0)
/* B6F8B4 800F8714 91CE33CC */  lbu   $t6, %lo(D_801333CC)($t6)
/* B6F8B8 800F8718 3C038013 */  lui   $v1, %hi(D_80130578)
/* B6F8BC 800F871C 000E78C0 */  sll   $t7, $t6, 3
/* B6F8C0 800F8720 01EE7823 */  subu  $t7, $t7, $t6
/* B6F8C4 800F8724 01F2C021 */  addu  $t8, $t7, $s2
/* B6F8C8 800F8728 00781821 */  addu  $v1, $v1, $t8
/* B6F8CC 800F872C 10000009 */  b     .L800F8754
/* B6F8D0 800F8730 90630578 */   lbu   $v1, %lo(D_80130578)($v1)
.L800F8734:
/* B6F8D4 800F8734 A219002A */  sb    $t9, 0x2a($s0)
/* B6F8D8 800F8738 910833CC */  lbu   $t0, %lo(D_801333CC)($t0)
/* B6F8DC 800F873C 3C038013 */  lui   $v1, %hi(D_80130578)
/* B6F8E0 800F8740 000848C0 */  sll   $t1, $t0, 3
/* B6F8E4 800F8744 01284823 */  subu  $t1, $t1, $t0
/* B6F8E8 800F8748 01325021 */  addu  $t2, $t1, $s2
/* B6F8EC 800F874C 006A1821 */  addu  $v1, $v1, $t2
/* B6F8F0 800F8750 90630578 */  lbu   $v1, %lo(D_80130578)($v1)
.L800F8754:
/* B6F8F4 800F8754 926B0000 */  lbu   $t3, ($s3)
/* B6F8F8 800F8758 26940001 */  addiu $s4, $s4, 1
/* B6F8FC 800F875C 329400FF */  andi  $s4, $s4, 0xff
/* B6F900 800F8760 0283082A */  slt   $at, $s4, $v1
/* B6F904 800F8764 256C0001 */  addiu $t4, $t3, 1
/* B6F908 800F8768 1420FF68 */  bnez  $at, .L800F850C
/* B6F90C 800F876C A26C0000 */   sb    $t4, ($s3)
.L800F8770:
/* B6F910 800F8770 8FBF003C */  lw    $ra, 0x3c($sp)
/* B6F914 800F8774 8FB00018 */  lw    $s0, 0x18($sp)
/* B6F918 800F8778 8FB1001C */  lw    $s1, 0x1c($sp)
/* B6F91C 800F877C 8FB20020 */  lw    $s2, 0x20($sp)
/* B6F920 800F8780 8FB30024 */  lw    $s3, 0x24($sp)
/* B6F924 800F8784 8FB40028 */  lw    $s4, 0x28($sp)
/* B6F928 800F8788 8FB5002C */  lw    $s5, 0x2c($sp)
/* B6F92C 800F878C 8FB60030 */  lw    $s6, 0x30($sp)
/* B6F930 800F8790 8FB70034 */  lw    $s7, 0x34($sp)
/* B6F934 800F8794 8FBE0038 */  lw    $fp, 0x38($sp)
/* B6F938 800F8798 03E00008 */  jr    $ra
/* B6F93C 800F879C 27BD0060 */   addiu $sp, $sp, 0x60

