glabel func_800A6460
/* B1D600 800A6460 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1D604 800A6464 AFB30014 */  sw    $s3, 0x14($sp)
/* B1D608 800A6468 AFB20010 */  sw    $s2, 0x10($sp)
/* B1D60C 800A646C AFB1000C */  sw    $s1, 0xc($sp)
/* B1D610 800A6470 AFB00008 */  sw    $s0, 8($sp)
/* B1D614 800A6474 AFA40048 */  sw    $a0, 0x48($sp)
/* B1D618 800A6478 8CAE0000 */  lw    $t6, ($a1)
/* B1D61C 800A647C 3C048016 */  lui   $a0, %hi(gSegments) # $a0, 0x8016
/* B1D620 800A6480 24846FA8 */  addiu $a0, %lo(gSegments) # addiu $a0, $a0, 0x6fa8
/* B1D624 800A6484 8DCB0000 */  lw    $t3, ($t6)
/* B1D628 800A6488 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1D62C 800A648C 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1D630 800A6490 000B7900 */  sll   $t7, $t3, 4
/* B1D634 800A6494 000FC702 */  srl   $t8, $t7, 0x1c
/* B1D638 800A6498 0018C880 */  sll   $t9, $t8, 2
/* B1D63C 800A649C 00997021 */  addu  $t6, $a0, $t9
/* B1D640 800A64A0 8DCF0000 */  lw    $t7, ($t6)
/* B1D644 800A64A4 0167C024 */  and   $t8, $t3, $a3
/* B1D648 800A64A8 3C088000 */  lui   $t0, 0x8000
/* B1D64C 800A64AC 01F8C821 */  addu  $t9, $t7, $t8
/* B1D650 800A64B0 03285021 */  addu  $t2, $t9, $t0
/* B1D654 800A64B4 00067080 */  sll   $t6, $a2, 2
/* B1D658 800A64B8 014E7821 */  addu  $t7, $t2, $t6
/* B1D65C 800A64BC 8DEC0000 */  lw    $t4, ($t7)
/* B1D660 800A64C0 2412000A */  li    $s2, 10
/* B1D664 800A64C4 24130008 */  li    $s3, 8
/* B1D668 800A64C8 000CC900 */  sll   $t9, $t4, 4
/* B1D66C 800A64CC 00197702 */  srl   $t6, $t9, 0x1c
/* B1D670 800A64D0 000E7880 */  sll   $t7, $t6, 2
/* B1D674 800A64D4 008FC821 */  addu  $t9, $a0, $t7
/* B1D678 800A64D8 8F2E0000 */  lw    $t6, ($t9)
/* B1D67C 800A64DC 0187C024 */  and   $t8, $t4, $a3
/* B1D680 800A64E0 00004825 */  move  $t1, $zero
/* B1D684 800A64E4 030E7821 */  addu  $t7, $t8, $t6
/* B1D688 800A64E8 01E8C821 */  addu  $t9, $t7, $t0
/* B1D68C 800A64EC 8F2D000C */  lw    $t5, 0xc($t9)
/* B1D690 800A64F0 000D7100 */  sll   $t6, $t5, 4
/* B1D694 800A64F4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D698 800A64F8 000FC880 */  sll   $t9, $t7, 2
/* B1D69C 800A64FC 00997021 */  addu  $t6, $a0, $t9
/* B1D6A0 800A6500 8DCF0000 */  lw    $t7, ($t6)
/* B1D6A4 800A6504 01A7C024 */  and   $t8, $t5, $a3
/* B1D6A8 800A6508 030FC821 */  addu  $t9, $t8, $t7
/* B1D6AC 800A650C 03281821 */  addu  $v1, $t9, $t0
/* B1D6B0 800A6510 8C780004 */  lw    $t8, 4($v1)
/* B1D6B4 800A6514 00187900 */  sll   $t7, $t8, 4
/* B1D6B8 800A6518 000FCF02 */  srl   $t9, $t7, 0x1c
/* B1D6BC 800A651C 00197080 */  sll   $t6, $t9, 2
/* B1D6C0 800A6520 008E7821 */  addu  $t7, $a0, $t6
/* B1D6C4 800A6524 8DF90000 */  lw    $t9, ($t7)
/* B1D6C8 800A6528 AFA00044 */  sw    $zero, 0x44($sp)
/* B1D6CC 800A652C 03077024 */  and   $t6, $t8, $a3
/* B1D6D0 800A6530 AFB80018 */  sw    $t8, 0x18($sp)
/* B1D6D4 800A6534 94780002 */  lhu   $t8, 2($v1)
/* B1D6D8 800A6538 032E7821 */  addu  $t7, $t9, $t6
/* B1D6DC 800A653C 01E81021 */  addu  $v0, $t7, $t0
/* B1D6E0 800A6540 0018C900 */  sll   $t9, $t8, 4
/* B1D6E4 800A6544 03228021 */  addu  $s0, $t9, $v0
/* B1D6E8 800A6548 8CAE0048 */  lw    $t6, 0x48($a1)
.L800A654C:
/* B1D6EC 800A654C 00067880 */  sll   $t7, $a2, 2
/* B1D6F0 800A6550 01E67823 */  subu  $t7, $t7, $a2
/* B1D6F4 800A6554 000F7880 */  sll   $t7, $t7, 2
/* B1D6F8 800A6558 01CFC021 */  addu  $t8, $t6, $t7
/* B1D6FC 800A655C 0309C821 */  addu  $t9, $t8, $t1
/* B1D700 800A6560 0050082B */  sltu  $at, $v0, $s0
/* B1D704 800A6564 8F2A0004 */  lw    $t2, 4($t9)
/* B1D708 800A6568 1020002B */  beqz  $at, .L800A6618
/* B1D70C 800A656C 00405825 */   move  $t3, $v0
/* B1D710 800A6570 8D6D0008 */  lw    $t5, 8($t3)
.L800A6574:
/* B1D714 800A6574 000D7100 */  sll   $t6, $t5, 4
/* B1D718 800A6578 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D71C 800A657C 000FC080 */  sll   $t8, $t7, 2
/* B1D720 800A6580 0098C821 */  addu  $t9, $a0, $t8
/* B1D724 800A6584 8F2E0000 */  lw    $t6, ($t9)
/* B1D728 800A6588 95790000 */  lhu   $t9, ($t3)
/* B1D72C 800A658C 01A77824 */  and   $t7, $t5, $a3
/* B1D730 800A6590 01CFC021 */  addu  $t8, $t6, $t7
/* B1D734 800A6594 03320019 */  multu $t9, $s2
/* B1D738 800A6598 03086021 */  addu  $t4, $t8, $t0
/* B1D73C 800A659C 01808825 */  move  $s1, $t4
/* B1D740 800A65A0 00007012 */  mflo  $t6
/* B1D744 800A65A4 01CC7821 */  addu  $t7, $t6, $t4
/* B1D748 800A65A8 018F082B */  sltu  $at, $t4, $t7
/* B1D74C 800A65AC 50200017 */  beql  $at, $zero, .L800A660C
/* B1D750 800A65B0 256B0010 */   addiu $t3, $t3, 0x10
/* B1D754 800A65B4 96380000 */  lhu   $t8, ($s1)
.L800A65B8:
/* B1D758 800A65B8 2631000A */  addiu $s1, $s1, 0xa
/* B1D75C 800A65BC 0018C900 */  sll   $t9, $t8, 4
/* B1D760 800A65C0 032A6821 */  addu  $t5, $t9, $t2
/* B1D764 800A65C4 A5A00006 */  sh    $zero, 6($t5)
/* B1D768 800A65C8 862EFFF8 */  lh    $t6, -8($s1)
/* B1D76C 800A65CC A5AE0008 */  sh    $t6, 8($t5)
/* B1D770 800A65D0 862FFFFA */  lh    $t7, -6($s1)
/* B1D774 800A65D4 A5AF000A */  sh    $t7, 0xa($t5)
/* B1D778 800A65D8 9238FFFF */  lbu   $t8, -1($s1)
/* B1D77C 800A65DC A1B8000F */  sb    $t8, 0xf($t5)
/* B1D780 800A65E0 95790000 */  lhu   $t9, ($t3)
/* B1D784 800A65E4 03320019 */  multu $t9, $s2
/* B1D788 800A65E8 00007012 */  mflo  $t6
/* B1D78C 800A65EC 01CC7821 */  addu  $t7, $t6, $t4
/* B1D790 800A65F0 022F082B */  sltu  $at, $s1, $t7
/* B1D794 800A65F4 5420FFF0 */  bnezl $at, .L800A65B8
/* B1D798 800A65F8 96380000 */   lhu   $t8, ($s1)
/* B1D79C 800A65FC 94780002 */  lhu   $t8, 2($v1)
/* B1D7A0 800A6600 0018C900 */  sll   $t9, $t8, 4
/* B1D7A4 800A6604 03228021 */  addu  $s0, $t9, $v0
/* B1D7A8 800A6608 256B0010 */  addiu $t3, $t3, 0x10
.L800A660C:
/* B1D7AC 800A660C 0170082B */  sltu  $at, $t3, $s0
/* B1D7B0 800A6610 5420FFD8 */  bnezl $at, .L800A6574
/* B1D7B4 800A6614 8D6D0008 */   lw    $t5, 8($t3)
.L800A6618:
/* B1D7B8 800A6618 25290004 */  addiu $t1, $t1, 4
/* B1D7BC 800A661C 5533FFCB */  bnel  $t1, $s3, .L800A654C
/* B1D7C0 800A6620 8CAE0048 */   lw    $t6, 0x48($a1)
/* B1D7C4 800A6624 8FB00008 */  lw    $s0, 8($sp)
/* B1D7C8 800A6628 8FB1000C */  lw    $s1, 0xc($sp)
/* B1D7CC 800A662C 8FB20010 */  lw    $s2, 0x10($sp)
/* B1D7D0 800A6630 8FB30014 */  lw    $s3, 0x14($sp)
/* B1D7D4 800A6634 03E00008 */  jr    $ra
/* B1D7D8 800A6638 27BD0048 */   addiu $sp, $sp, 0x48

