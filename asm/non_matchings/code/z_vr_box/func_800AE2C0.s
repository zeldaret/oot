.late_rodata
glabel jtbl_80142DA8
    .word L800AE320
    .word L800AE320
    .word L800AE420
    .word L800AE420
    .word L800AE520
    .word L800AE520

.text
glabel func_800AE2C0
/* B25460 800AE2C0 27BDFCC8 */  addiu $sp, $sp, -0x338
/* B25464 800AE2C4 AFB70024 */  sw    $s7, 0x24($sp)
/* B25468 800AE2C8 8FB70358 */  lw    $s7, 0x358($sp)
/* B2546C 800AE2CC AFBE0028 */  sw    $fp, 0x28($sp)
/* B25470 800AE2D0 AFB20010 */  sw    $s2, 0x10($sp)
/* B25474 800AE2D4 AFB00008 */  sw    $s0, 8($sp)
/* B25478 800AE2D8 2EE10006 */  sltiu $at, $s7, 6
/* B2547C 800AE2DC 00808025 */  move  $s0, $a0
/* B25480 800AE2E0 00E09025 */  move  $s2, $a3
/* B25484 800AE2E4 00A0F025 */  move  $fp, $a1
/* B25488 800AE2E8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B2548C 800AE2EC AFB60020 */  sw    $s6, 0x20($sp)
/* B25490 800AE2F0 AFB5001C */  sw    $s5, 0x1c($sp)
/* B25494 800AE2F4 AFB40018 */  sw    $s4, 0x18($sp)
/* B25498 800AE2F8 AFB30014 */  sw    $s3, 0x14($sp)
/* B2549C 800AE2FC AFB1000C */  sw    $s1, 0xc($sp)
/* B254A0 800AE300 102000C5 */  beqz  $at, .L800AE618
/* B254A4 800AE304 AFA60340 */   sw    $a2, 0x340($sp)
/* B254A8 800AE308 00177080 */  sll   $t6, $s7, 2
/* B254AC 800AE30C 3C018014 */  lui   $at, %hi(jtbl_80142DA8)
/* B254B0 800AE310 002E0821 */  addu  $at, $at, $t6
/* B254B4 800AE314 8C2E2DA8 */  lw    $t6, %lo(jtbl_80142DA8)($at)
/* B254B8 800AE318 01C00008 */  jr    $t6
/* B254BC 800AE31C 00000000 */   nop   

glabel L800AE320
/* B254C0 800AE320 8FAB0350 */  lw    $t3, 0x350($sp)
/* B254C4 800AE324 3C148013 */  lui   $s4, %hi(D_8012AE30) # $s4, 0x8013
/* B254C8 800AE328 3C138013 */  lui   $s3, %hi(D_8012AE18) # $s3, 0x8013
/* B254CC 800AE32C 8FAA0348 */  lw    $t2, 0x348($sp)
/* B254D0 800AE330 2673AE18 */  addiu $s3, %lo(D_8012AE18) # addiu $s3, $s3, -0x51e8
/* B254D4 800AE334 2694AE30 */  addiu $s4, %lo(D_8012AE30) # addiu $s4, $s4, -0x51d0
/* B254D8 800AE338 27A501EC */  addiu $a1, $sp, 0x1ec
/* B254DC 800AE33C 27A602B4 */  addiu $a2, $sp, 0x2b4
/* B254E0 800AE340 27A70250 */  addiu $a3, $sp, 0x250
/* B254E4 800AE344 27A80188 */  addiu $t0, $sp, 0x188
/* B254E8 800AE348 27A40124 */  addiu $a0, $sp, 0x124
/* B254EC 800AE34C 8FB50354 */  lw    $s5, 0x354($sp)
/* B254F0 800AE350 8FB1034C */  lw    $s1, 0x34c($sp)
/* B254F4 800AE354 27AC0188 */  addiu $t4, $sp, 0x188
/* B254F8 800AE358 024BB021 */  addu  $s6, $s2, $t3
.L800AE35C:
/* B254FC 800AE35C ACB10000 */  sw    $s1, ($a1)
/* B25500 800AE360 ACD20000 */  sw    $s2, ($a2)
/* B25504 800AE364 ACEA0000 */  sw    $t2, ($a3)
/* B25508 800AE368 3C0F8013 */  lui   $t7, %hi(D_8012AE18) # $t7, 0x8013
/* B2550C 800AE36C 85EFAE18 */  lh    $t7, %lo(D_8012AE18)($t7)
/* B25510 800AE370 240D0001 */  li    $t5, 1
/* B25514 800AE374 000DC040 */  sll   $t8, $t5, 1
/* B25518 800AE378 86890000 */  lh    $t1, ($s4)
/* B2551C 800AE37C 02781821 */  addu  $v1, $s3, $t8
/* B25520 800AE380 02CB1021 */  addu  $v0, $s6, $t3
/* B25524 800AE384 ACC20008 */  sw    $v0, 8($a2)
/* B25528 800AE388 004B1021 */  addu  $v0, $v0, $t3
/* B2552C 800AE38C AD0F0000 */  sw    $t7, ($t0)
/* B25530 800AE390 846F0004 */  lh    $t7, 4($v1)
/* B25534 800AE394 846E0002 */  lh    $t6, 2($v1)
/* B25538 800AE398 84780006 */  lh    $t8, 6($v1)
/* B2553C 800AE39C 84790000 */  lh    $t9, ($v1)
/* B25540 800AE3A0 ACC2000C */  sw    $v0, 0xc($a2)
/* B25544 800AE3A4 24840014 */  addiu $a0, $a0, 0x14
/* B25548 800AE3A8 008C082B */  sltu  $at, $a0, $t4
/* B2554C 800AE3AC 004B1021 */  addu  $v0, $v0, $t3
/* B25550 800AE3B0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B25554 800AE3B4 ACEA000C */  sw    $t2, 0xc($a3)
/* B25558 800AE3B8 ACEA0008 */  sw    $t2, 8($a3)
/* B2555C 800AE3BC ACEA0004 */  sw    $t2, 4($a3)
/* B25560 800AE3C0 26940002 */  addiu $s4, $s4, 2
/* B25564 800AE3C4 ACC20010 */  sw    $v0, 0x10($a2)
/* B25568 800AE3C8 ACB10010 */  sw    $s1, 0x10($a1)
/* B2556C 800AE3CC ACB1000C */  sw    $s1, 0xc($a1)
/* B25570 800AE3D0 ACB10008 */  sw    $s1, 8($a1)
/* B25574 800AE3D4 24A50014 */  addiu $a1, $a1, 0x14
/* B25578 800AE3D8 24C60014 */  addiu $a2, $a2, 0x14
/* B2557C 800AE3DC 24E70014 */  addiu $a3, $a3, 0x14
/* B25580 800AE3E0 25080014 */  addiu $t0, $t0, 0x14
/* B25584 800AE3E4 ACB1FFF0 */  sw    $s1, -0x10($a1)
/* B25588 800AE3E8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B2558C 800AE3EC 01555021 */  addu  $t2, $t2, $s5
/* B25590 800AE3F0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25594 800AE3F4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25598 800AE3F8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2559C 800AE3FC AC89FFFC */  sw    $t1, -4($a0)
/* B255A0 800AE400 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B255A4 800AE404 AD0FFFF8 */  sw    $t7, -8($t0)
/* B255A8 800AE408 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B255AC 800AE40C AD18FFFC */  sw    $t8, -4($t0)
/* B255B0 800AE410 1420FFD2 */  bnez  $at, .L800AE35C
/* B255B4 800AE414 AD19FFF0 */   sw    $t9, -0x10($t0)
/* B255B8 800AE418 10000080 */  b     .L800AE61C
/* B255BC 800AE41C 00177080 */   sll   $t6, $s7, 2

glabel L800AE420
/* B255C0 800AE420 8FAB0350 */  lw    $t3, 0x350($sp)
/* B255C4 800AE424 8FB1034C */  lw    $s1, 0x34c($sp)
/* B255C8 800AE428 3C148013 */  lui   $s4, %hi(D_8012AE30) # $s4, 0x8013
/* B255CC 800AE42C 3C138013 */  lui   $s3, %hi(D_8012AE18) # $s3, 0x8013
/* B255D0 800AE430 8FAA0348 */  lw    $t2, 0x348($sp)
/* B255D4 800AE434 2673AE18 */  addiu $s3, %lo(D_8012AE18) # addiu $s3, $s3, -0x51e8
/* B255D8 800AE438 2694AE30 */  addiu $s4, %lo(D_8012AE30) # addiu $s4, $s4, -0x51d0
/* B255DC 800AE43C 27A501EC */  addiu $a1, $sp, 0x1ec
/* B255E0 800AE440 27A602B4 */  addiu $a2, $sp, 0x2b4
/* B255E4 800AE444 27A70250 */  addiu $a3, $sp, 0x250
/* B255E8 800AE448 27A80188 */  addiu $t0, $sp, 0x188
/* B255EC 800AE44C 27A40124 */  addiu $a0, $sp, 0x124
/* B255F0 800AE450 8FB50354 */  lw    $s5, 0x354($sp)
/* B255F4 800AE454 27AC0188 */  addiu $t4, $sp, 0x188
/* B255F8 800AE458 022BB021 */  addu  $s6, $s1, $t3
.L800AE45C:
/* B255FC 800AE45C ACD20000 */  sw    $s2, ($a2)
/* B25600 800AE460 ACEA0000 */  sw    $t2, ($a3)
/* B25604 800AE464 ACB10000 */  sw    $s1, ($a1)
/* B25608 800AE468 3C198013 */  lui   $t9, %hi(D_8012AE18) # $t9, 0x8013
/* B2560C 800AE46C 8739AE18 */  lh    $t9, %lo(D_8012AE18)($t9)
/* B25610 800AE470 240D0001 */  li    $t5, 1
/* B25614 800AE474 000D7040 */  sll   $t6, $t5, 1
/* B25618 800AE478 86890000 */  lh    $t1, ($s4)
/* B2561C 800AE47C 026E1821 */  addu  $v1, $s3, $t6
/* B25620 800AE480 02CB1021 */  addu  $v0, $s6, $t3
/* B25624 800AE484 ACA20008 */  sw    $v0, 8($a1)
/* B25628 800AE488 004B1021 */  addu  $v0, $v0, $t3
/* B2562C 800AE48C AD190000 */  sw    $t9, ($t0)
/* B25630 800AE490 84790004 */  lh    $t9, 4($v1)
/* B25634 800AE494 84780002 */  lh    $t8, 2($v1)
/* B25638 800AE498 846E0006 */  lh    $t6, 6($v1)
/* B2563C 800AE49C 846F0000 */  lh    $t7, ($v1)
/* B25640 800AE4A0 ACA2000C */  sw    $v0, 0xc($a1)
/* B25644 800AE4A4 24840014 */  addiu $a0, $a0, 0x14
/* B25648 800AE4A8 008C082B */  sltu  $at, $a0, $t4
/* B2564C 800AE4AC 004B1021 */  addu  $v0, $v0, $t3
/* B25650 800AE4B0 ACEA0010 */  sw    $t2, 0x10($a3)
/* B25654 800AE4B4 ACEA000C */  sw    $t2, 0xc($a3)
/* B25658 800AE4B8 ACEA0008 */  sw    $t2, 8($a3)
/* B2565C 800AE4BC ACEA0004 */  sw    $t2, 4($a3)
/* B25660 800AE4C0 26940002 */  addiu $s4, $s4, 2
/* B25664 800AE4C4 ACA20010 */  sw    $v0, 0x10($a1)
/* B25668 800AE4C8 ACD20010 */  sw    $s2, 0x10($a2)
/* B2566C 800AE4CC ACD2000C */  sw    $s2, 0xc($a2)
/* B25670 800AE4D0 ACD20008 */  sw    $s2, 8($a2)
/* B25674 800AE4D4 24A50014 */  addiu $a1, $a1, 0x14
/* B25678 800AE4D8 24C60014 */  addiu $a2, $a2, 0x14
/* B2567C 800AE4DC 24E70014 */  addiu $a3, $a3, 0x14
/* B25680 800AE4E0 25080014 */  addiu $t0, $t0, 0x14
/* B25684 800AE4E4 ACD2FFF0 */  sw    $s2, -0x10($a2)
/* B25688 800AE4E8 ACB6FFF0 */  sw    $s6, -0x10($a1)
/* B2568C 800AE4EC 01555021 */  addu  $t2, $t2, $s5
/* B25690 800AE4F0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25694 800AE4F4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25698 800AE4F8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2569C 800AE4FC AC89FFFC */  sw    $t1, -4($a0)
/* B256A0 800AE500 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B256A4 800AE504 AD19FFF8 */  sw    $t9, -8($t0)
/* B256A8 800AE508 AD18FFF4 */  sw    $t8, -0xc($t0)
/* B256AC 800AE50C AD0EFFFC */  sw    $t6, -4($t0)
/* B256B0 800AE510 1420FFD2 */  bnez  $at, .L800AE45C
/* B256B4 800AE514 AD0FFFF0 */   sw    $t7, -0x10($t0)
/* B256B8 800AE518 10000040 */  b     .L800AE61C
/* B256BC 800AE51C 00177080 */   sll   $t6, $s7, 2

glabel L800AE520
/* B256C0 800AE520 8FAB0350 */  lw    $t3, 0x350($sp)
/* B256C4 800AE524 3C148013 */  lui   $s4, %hi(D_8012AE24) # $s4, 0x8013
/* B256C8 800AE528 3C138013 */  lui   $s3, %hi(D_8012AE18) # $s3, 0x8013
/* B256CC 800AE52C 8FAA034C */  lw    $t2, 0x34c($sp)
/* B256D0 800AE530 2673AE18 */  addiu $s3, %lo(D_8012AE18) # addiu $s3, $s3, -0x51e8
/* B256D4 800AE534 2694AE24 */  addiu $s4, %lo(D_8012AE24) # addiu $s4, $s4, -0x51dc
/* B256D8 800AE538 27A501EC */  addiu $a1, $sp, 0x1ec
/* B256DC 800AE53C 27A602B4 */  addiu $a2, $sp, 0x2b4
/* B256E0 800AE540 27A70250 */  addiu $a3, $sp, 0x250
/* B256E4 800AE544 27A80188 */  addiu $t0, $sp, 0x188
/* B256E8 800AE548 27A40124 */  addiu $a0, $sp, 0x124
/* B256EC 800AE54C 8FB50354 */  lw    $s5, 0x354($sp)
/* B256F0 800AE550 27B10188 */  addiu $s1, $sp, 0x188
/* B256F4 800AE554 8FAC0348 */  lw    $t4, 0x348($sp)
/* B256F8 800AE558 024BB021 */  addu  $s6, $s2, $t3
.L800AE55C:
/* B256FC 800AE55C ACEC0000 */  sw    $t4, ($a3)
/* B25700 800AE560 ACD20000 */  sw    $s2, ($a2)
/* B25704 800AE564 ACAA0000 */  sw    $t2, ($a1)
/* B25708 800AE568 3C0F8013 */  lui   $t7, %hi(D_8012AE18) # $t7, 0x8013
/* B2570C 800AE56C 85EFAE18 */  lh    $t7, %lo(D_8012AE18)($t7)
/* B25710 800AE570 240D0001 */  li    $t5, 1
/* B25714 800AE574 000DC040 */  sll   $t8, $t5, 1
/* B25718 800AE578 86890000 */  lh    $t1, ($s4)
/* B2571C 800AE57C 02781821 */  addu  $v1, $s3, $t8
/* B25720 800AE580 02CB1021 */  addu  $v0, $s6, $t3
/* B25724 800AE584 ACC20008 */  sw    $v0, 8($a2)
/* B25728 800AE588 004B1021 */  addu  $v0, $v0, $t3
/* B2572C 800AE58C AD0F0000 */  sw    $t7, ($t0)
/* B25730 800AE590 846F0004 */  lh    $t7, 4($v1)
/* B25734 800AE594 846E0002 */  lh    $t6, 2($v1)
/* B25738 800AE598 84780006 */  lh    $t8, 6($v1)
/* B2573C 800AE59C 84790000 */  lh    $t9, ($v1)
/* B25740 800AE5A0 ACC2000C */  sw    $v0, 0xc($a2)
/* B25744 800AE5A4 24840014 */  addiu $a0, $a0, 0x14
/* B25748 800AE5A8 0091082B */  sltu  $at, $a0, $s1
/* B2574C 800AE5AC 004B1021 */  addu  $v0, $v0, $t3
/* B25750 800AE5B0 ACAA0010 */  sw    $t2, 0x10($a1)
/* B25754 800AE5B4 ACAA000C */  sw    $t2, 0xc($a1)
/* B25758 800AE5B8 ACAA0008 */  sw    $t2, 8($a1)
/* B2575C 800AE5BC ACAA0004 */  sw    $t2, 4($a1)
/* B25760 800AE5C0 26940002 */  addiu $s4, $s4, 2
/* B25764 800AE5C4 ACC20010 */  sw    $v0, 0x10($a2)
/* B25768 800AE5C8 ACEC0010 */  sw    $t4, 0x10($a3)
/* B2576C 800AE5CC ACEC000C */  sw    $t4, 0xc($a3)
/* B25770 800AE5D0 ACEC0008 */  sw    $t4, 8($a3)
/* B25774 800AE5D4 24A50014 */  addiu $a1, $a1, 0x14
/* B25778 800AE5D8 24C60014 */  addiu $a2, $a2, 0x14
/* B2577C 800AE5DC 24E70014 */  addiu $a3, $a3, 0x14
/* B25780 800AE5E0 25080014 */  addiu $t0, $t0, 0x14
/* B25784 800AE5E4 ACECFFF0 */  sw    $t4, -0x10($a3)
/* B25788 800AE5E8 ACD6FFF0 */  sw    $s6, -0x10($a2)
/* B2578C 800AE5EC 01555021 */  addu  $t2, $t2, $s5
/* B25790 800AE5F0 AC89FFEC */  sw    $t1, -0x14($a0)
/* B25794 800AE5F4 AC89FFF4 */  sw    $t1, -0xc($a0)
/* B25798 800AE5F8 AC89FFF8 */  sw    $t1, -8($a0)
/* B2579C 800AE5FC AC89FFFC */  sw    $t1, -4($a0)
/* B257A0 800AE600 AC89FFF0 */  sw    $t1, -0x10($a0)
/* B257A4 800AE604 AD0FFFF8 */  sw    $t7, -8($t0)
/* B257A8 800AE608 AD0EFFF4 */  sw    $t6, -0xc($t0)
/* B257AC 800AE60C AD18FFFC */  sw    $t8, -4($t0)
/* B257B0 800AE610 1420FFD2 */  bnez  $at, .L800AE55C
/* B257B4 800AE614 AD19FFF0 */   sw    $t9, -0x10($t0)
.L800AE618:
/* B257B8 800AE618 00177080 */  sll   $t6, $s7, 2
.L800AE61C:
/* B257BC 800AE61C 01D77021 */  addu  $t6, $t6, $s7
/* B257C0 800AE620 000E7080 */  sll   $t6, $t6, 2
/* B257C4 800AE624 01D77023 */  subu  $t6, $t6, $s7
/* B257C8 800AE628 8E190134 */  lw    $t9, 0x134($s0)
/* B257CC 800AE62C 000E7080 */  sll   $t6, $t6, 2
/* B257D0 800AE630 01D77023 */  subu  $t6, $t6, $s7
/* B257D4 800AE634 000E7140 */  sll   $t6, $t6, 5
/* B257D8 800AE638 032E7821 */  addu  $t7, $t9, $t6
/* B257DC 800AE63C AE0F0138 */  sw    $t7, 0x138($s0)
/* B257E0 800AE640 8FB80340 */  lw    $t8, 0x340($sp)
/* B257E4 800AE644 3C048013 */  lui   $a0, %hi(D_8012ADD8) # $a0, 0x8013
/* B257E8 800AE648 2484ADD8 */  addiu $a0, %lo(D_8012ADD8) # addiu $a0, $a0, -0x5228
/* B257EC 800AE64C 0018C900 */  sll   $t9, $t8, 4
/* B257F0 800AE650 03D92821 */  addu  $a1, $fp, $t9
/* B257F4 800AE654 00001025 */  move  $v0, $zero
/* B257F8 800AE658 240D0020 */  li    $t5, 32
/* B257FC 800AE65C 240C00FF */  li    $t4, 255
/* B25800 800AE660 27AB0124 */  addiu $t3, $sp, 0x124
/* B25804 800AE664 27AA0188 */  addiu $t2, $sp, 0x188
/* B25808 800AE668 27A901EC */  addiu $t1, $sp, 0x1ec
/* B2580C 800AE66C 27A80250 */  addiu $t0, $sp, 0x250
/* B25810 800AE670 27A702B4 */  addiu $a3, $sp, 0x2b4
.L800AE674:
/* B25814 800AE674 94830000 */  lhu   $v1, ($a0)
/* B25818 800AE678 24420001 */  addiu $v0, $v0, 1
/* B2581C 800AE67C 24840002 */  addiu $a0, $a0, 2
/* B25820 800AE680 00033080 */  sll   $a2, $v1, 2
/* B25824 800AE684 00E67021 */  addu  $t6, $a3, $a2
/* B25828 800AE688 8DCF0000 */  lw    $t7, ($t6)
/* B2582C 800AE68C 0106C021 */  addu  $t8, $t0, $a2
/* B25830 800AE690 01267021 */  addu  $t6, $t1, $a2
/* B25834 800AE694 A4AF0000 */  sh    $t7, ($a1)
/* B25838 800AE698 8F190000 */  lw    $t9, ($t8)
/* B2583C 800AE69C 0146C021 */  addu  $t8, $t2, $a2
/* B25840 800AE6A0 24A50010 */  addiu $a1, $a1, 0x10
/* B25844 800AE6A4 A4B9FFF2 */  sh    $t9, -0xe($a1)
/* B25848 800AE6A8 8DCF0000 */  lw    $t7, ($t6)
/* B2584C 800AE6AC A4A0FFF6 */  sh    $zero, -0xa($a1)
/* B25850 800AE6B0 01667021 */  addu  $t6, $t3, $a2
/* B25854 800AE6B4 A4AFFFF4 */  sh    $t7, -0xc($a1)
/* B25858 800AE6B8 8F190000 */  lw    $t9, ($t8)
/* B2585C 800AE6BC A4B9FFF8 */  sh    $t9, -8($a1)
/* B25860 800AE6C0 8DCF0000 */  lw    $t7, ($t6)
/* B25864 800AE6C4 A0A0FFFD */  sb    $zero, -3($a1)
/* B25868 800AE6C8 A0A0FFFE */  sb    $zero, -2($a1)
/* B2586C 800AE6CC A0ACFFFC */  sb    $t4, -4($a1)
/* B25870 800AE6D0 144DFFE8 */  bne   $v0, $t5, .L800AE674
/* B25874 800AE6D4 A4AFFFFA */   sh    $t7, -6($a1)
/* B25878 800AE6D8 8E030138 */  lw    $v1, 0x138($s0)
/* B2587C 800AE6DC 3C190102 */  lui   $t9, (0x01020040 >> 16) # lui $t9, 0x102
/* B25880 800AE6E0 37390040 */  ori   $t9, (0x01020040 & 0xFFFF) # ori $t9, $t9, 0x40
/* B25884 800AE6E4 24780008 */  addiu $t8, $v1, 8
/* B25888 800AE6E8 AE180138 */  sw    $t8, 0x138($s0)
/* B2588C 800AE6EC AC790000 */  sw    $t9, ($v1)
/* B25890 800AE6F0 8FAE0340 */  lw    $t6, 0x340($sp)
/* B25894 800AE6F4 24010004 */  li    $at, 4
/* B25898 800AE6F8 00009025 */  move  $s2, $zero
/* B2589C 800AE6FC 000E7900 */  sll   $t7, $t6, 4
/* B258A0 800AE700 01FEC021 */  addu  $t8, $t7, $fp
/* B258A4 800AE704 AC780004 */  sw    $t8, 4($v1)
/* B258A8 800AE708 8FB90340 */  lw    $t9, 0x340($sp)
/* B258AC 800AE70C 3C180300 */  lui   $t8, 0x300
/* B258B0 800AE710 3C1FF548 */  lui   $ra, 0xf548
/* B258B4 800AE714 03227021 */  addu  $t6, $t9, $v0
/* B258B8 800AE718 AFAE0340 */  sw    $t6, 0x340($sp)
/* B258BC 800AE71C 8E030138 */  lw    $v1, 0x138($s0)
/* B258C0 800AE720 2419001E */  li    $t9, 30
/* B258C4 800AE724 00177080 */  sll   $t6, $s7, 2
/* B258C8 800AE728 246F0008 */  addiu $t7, $v1, 8
/* B258CC 800AE72C AE0F0138 */  sw    $t7, 0x138($s0)
/* B258D0 800AE730 AC790004 */  sw    $t9, 4($v1)
/* B258D4 800AE734 12E10004 */  beq   $s7, $at, .L800AE748
/* B258D8 800AE738 AC780000 */   sw    $t8, ($v1)
/* B258DC 800AE73C 24010005 */  li    $at, 5
/* B258E0 800AE740 16E100B3 */  bne   $s7, $at, .L800AEA10
/* B258E4 800AE744 00177880 */   sll   $t7, $s7, 2
.L800AE748:
/* B258E8 800AE748 3C0F8013 */  lui   $t7, %hi(D_8012ADC0) # $t7, 0x8013
/* B258EC 800AE74C 25EFADC0 */  addiu $t7, %lo(D_8012ADC0) # addiu $t7, $t7, -0x5240
/* B258F0 800AE750 3C14FD48 */  lui   $s4, (0xFD48007F >> 16) # lui $s4, 0xfd48
/* B258F4 800AE754 3694007F */  ori   $s4, (0xFD48007F & 0xFFFF) # ori $s4, $s4, 0x7f
/* B258F8 800AE758 01CFF021 */  addu  $fp, $t6, $t7
/* B258FC 800AE75C A7A0031E */  sh    $zero, 0x31e($sp)
/* B25900 800AE760 A7A00320 */  sh    $zero, 0x320($sp)
/* B25904 800AE764 3C170100 */  lui   $s7, 0x100
/* B25908 800AE768 3C16E700 */  lui   $s6, 0xe700
/* B2590C 800AE76C 3C15E600 */  lui   $s5, 0xe600
/* B25910 800AE770 3C0C0700 */  lui   $t4, 0x700
.L800AE774:
/* B25914 800AE774 87A20320 */  lh    $v0, 0x320($sp)
/* B25918 800AE778 00002025 */  move  $a0, $zero
/* B2591C 800AE77C 00006825 */  move  $t5, $zero
/* B25920 800AE780 2458001F */  addiu $t8, $v0, 0x1f
/* B25924 800AE784 00188880 */  sll   $s1, $t8, 2
/* B25928 800AE788 00029880 */  sll   $s3, $v0, 2
/* B2592C 800AE78C 32730FFF */  andi  $s3, $s3, 0xfff
/* B25930 800AE790 32310FFF */  andi  $s1, $s1, 0xfff
/* B25934 800AE794 AFB80040 */  sw    $t8, 0x40($sp)
.L800AE798:
/* B25938 800AE798 8E030138 */  lw    $v1, 0x138($s0)
/* B2593C 800AE79C 248B001F */  addiu $t3, $a0, 0x1f
/* B25940 800AE7A0 000B3880 */  sll   $a3, $t3, 2
/* B25944 800AE7A4 24790008 */  addiu $t9, $v1, 8
/* B25948 800AE7A8 AE190138 */  sw    $t9, 0x138($s0)
/* B2594C 800AE7AC AC740000 */  sw    $s4, ($v1)
/* B25950 800AE7B0 8FCE0000 */  lw    $t6, ($fp)
/* B25954 800AE7B4 8E0F0128 */  lw    $t7, 0x128($s0)
/* B25958 800AE7B8 00042880 */  sll   $a1, $a0, 2
/* B2595C 800AE7BC 30A50FFF */  andi  $a1, $a1, 0xfff
/* B25960 800AE7C0 01CFC021 */  addu  $t8, $t6, $t7
/* B25964 800AE7C4 AC780004 */  sw    $t8, 4($v1)
/* B25968 800AE7C8 8E030138 */  lw    $v1, 0x138($s0)
/* B2596C 800AE7CC 00847023 */  subu  $t6, $a0, $a0
/* B25970 800AE7D0 25CF0027 */  addiu $t7, $t6, 0x27
/* B25974 800AE7D4 24790008 */  addiu $t9, $v1, 8
/* B25978 800AE7D8 AE190138 */  sw    $t9, 0x138($s0)
/* B2597C 800AE7DC 000FC0C3 */  sra   $t8, $t7, 3
/* B25980 800AE7E0 331901FF */  andi  $t9, $t8, 0x1ff
/* B25984 800AE7E4 00197240 */  sll   $t6, $t9, 9
/* B25988 800AE7E8 01DF3025 */  or    $a2, $t6, $ra
/* B2598C 800AE7EC AC660000 */  sw    $a2, ($v1)
/* B25990 800AE7F0 AC6C0004 */  sw    $t4, 4($v1)
/* B25994 800AE7F4 8E030138 */  lw    $v1, 0x138($s0)
/* B25998 800AE7F8 30E70FFF */  andi  $a3, $a3, 0xfff
/* B2599C 800AE7FC 00073B00 */  sll   $a3, $a3, 0xc
/* B259A0 800AE800 246F0008 */  addiu $t7, $v1, 8
/* B259A4 800AE804 AE0F0138 */  sw    $t7, 0x138($s0)
/* B259A8 800AE808 AC600004 */  sw    $zero, 4($v1)
/* B259AC 800AE80C AC750000 */  sw    $s5, ($v1)
/* B259B0 800AE810 8E030138 */  lw    $v1, 0x138($s0)
/* B259B4 800AE814 00052B00 */  sll   $a1, $a1, 0xc
/* B259B8 800AE818 3C01F400 */  lui   $at, 0xf400
/* B259BC 800AE81C 24780008 */  addiu $t8, $v1, 8
/* B259C0 800AE820 AE180138 */  sw    $t8, 0x138($s0)
/* B259C4 800AE824 00A1C825 */  or    $t9, $a1, $at
/* B259C8 800AE828 00EC7025 */  or    $t6, $a3, $t4
/* B259CC 800AE82C 01D14825 */  or    $t1, $t6, $s1
/* B259D0 800AE830 03334025 */  or    $t0, $t9, $s3
/* B259D4 800AE834 AC680000 */  sw    $t0, ($v1)
/* B259D8 800AE838 AC690004 */  sw    $t1, 4($v1)
/* B259DC 800AE83C 8E030138 */  lw    $v1, 0x138($s0)
/* B259E0 800AE840 3C01F200 */  lui   $at, 0xf200
/* B259E4 800AE844 00A17025 */  or    $t6, $a1, $at
/* B259E8 800AE848 246F0008 */  addiu $t7, $v1, 8
/* B259EC 800AE84C AE0F0138 */  sw    $t7, 0x138($s0)
/* B259F0 800AE850 AC600004 */  sw    $zero, 4($v1)
/* B259F4 800AE854 AC760000 */  sw    $s6, ($v1)
/* B259F8 800AE858 8E030138 */  lw    $v1, 0x138($s0)
/* B259FC 800AE85C 00F17825 */  or    $t7, $a3, $s1
/* B25A00 800AE860 01D35025 */  or    $t2, $t6, $s3
/* B25A04 800AE864 24780008 */  addiu $t8, $v1, 8
/* B25A08 800AE868 AE180138 */  sw    $t8, 0x138($s0)
/* B25A0C 800AE86C AC600004 */  sw    $zero, 4($v1)
/* B25A10 800AE870 AC660000 */  sw    $a2, ($v1)
/* B25A14 800AE874 8E030138 */  lw    $v1, 0x138($s0)
/* B25A18 800AE878 34C40080 */  ori   $a0, $a2, 0x80
/* B25A1C 800AE87C 25AD0001 */  addiu $t5, $t5, 1
/* B25A20 800AE880 24790008 */  addiu $t9, $v1, 8
/* B25A24 800AE884 AE190138 */  sw    $t9, 0x138($s0)
/* B25A28 800AE888 AC6F0004 */  sw    $t7, 4($v1)
/* B25A2C 800AE88C AC6A0000 */  sw    $t2, ($v1)
/* B25A30 800AE890 8E030138 */  lw    $v1, 0x138($s0)
/* B25A34 800AE894 000D6C00 */  sll   $t5, $t5, 0x10
/* B25A38 800AE898 000D6C03 */  sra   $t5, $t5, 0x10
/* B25A3C 800AE89C 24780008 */  addiu $t8, $v1, 8
/* B25A40 800AE8A0 AE180138 */  sw    $t8, 0x138($s0)
/* B25A44 800AE8A4 AC740000 */  sw    $s4, ($v1)
/* B25A48 800AE8A8 8E0E012C */  lw    $t6, 0x12c($s0)
/* B25A4C 800AE8AC 8FD90000 */  lw    $t9, ($fp)
/* B25A50 800AE8B0 29A10004 */  slti  $at, $t5, 4
/* B25A54 800AE8B4 032E7821 */  addu  $t7, $t9, $t6
/* B25A58 800AE8B8 AC6F0004 */  sw    $t7, 4($v1)
/* B25A5C 800AE8BC 8E030138 */  lw    $v1, 0x138($s0)
/* B25A60 800AE8C0 24780008 */  addiu $t8, $v1, 8
/* B25A64 800AE8C4 AE180138 */  sw    $t8, 0x138($s0)
/* B25A68 800AE8C8 AC6C0004 */  sw    $t4, 4($v1)
/* B25A6C 800AE8CC AC640000 */  sw    $a0, ($v1)
/* B25A70 800AE8D0 8E030138 */  lw    $v1, 0x138($s0)
/* B25A74 800AE8D4 24790008 */  addiu $t9, $v1, 8
/* B25A78 800AE8D8 AE190138 */  sw    $t9, 0x138($s0)
/* B25A7C 800AE8DC AC600004 */  sw    $zero, 4($v1)
/* B25A80 800AE8E0 AC750000 */  sw    $s5, ($v1)
/* B25A84 800AE8E4 8E030138 */  lw    $v1, 0x138($s0)
/* B25A88 800AE8E8 246E0008 */  addiu $t6, $v1, 8
/* B25A8C 800AE8EC AE0E0138 */  sw    $t6, 0x138($s0)
/* B25A90 800AE8F0 AC690004 */  sw    $t1, 4($v1)
/* B25A94 800AE8F4 AC680000 */  sw    $t0, ($v1)
/* B25A98 800AE8F8 8E030138 */  lw    $v1, 0x138($s0)
/* B25A9C 800AE8FC 00F77025 */  or    $t6, $a3, $s7
/* B25AA0 800AE900 246F0008 */  addiu $t7, $v1, 8
/* B25AA4 800AE904 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25AA8 800AE908 AC600004 */  sw    $zero, 4($v1)
/* B25AAC 800AE90C AC760000 */  sw    $s6, ($v1)
/* B25AB0 800AE910 8E030138 */  lw    $v1, 0x138($s0)
/* B25AB4 800AE914 01D17825 */  or    $t7, $t6, $s1
/* B25AB8 800AE918 3C0E8013 */  lui   $t6, %hi(D_8012AE3C) # $t6, 0x8013
/* B25ABC 800AE91C 24780008 */  addiu $t8, $v1, 8
/* B25AC0 800AE920 AE180138 */  sw    $t8, 0x138($s0)
/* B25AC4 800AE924 AC770004 */  sw    $s7, 4($v1)
/* B25AC8 800AE928 AC640000 */  sw    $a0, ($v1)
/* B25ACC 800AE92C 8E030138 */  lw    $v1, 0x138($s0)
/* B25AD0 800AE930 25CEAE3C */  addiu $t6, %lo(D_8012AE3C) # addiu $t6, $t6, -0x51c4
/* B25AD4 800AE934 000B2400 */  sll   $a0, $t3, 0x10
/* B25AD8 800AE938 24790008 */  addiu $t9, $v1, 8
/* B25ADC 800AE93C AE190138 */  sw    $t9, 0x138($s0)
/* B25AE0 800AE940 AC6F0004 */  sw    $t7, 4($v1)
/* B25AE4 800AE944 AC6A0000 */  sw    $t2, ($v1)
/* B25AE8 800AE948 8E030138 */  lw    $v1, 0x138($s0)
/* B25AEC 800AE94C 0012C840 */  sll   $t9, $s2, 1
/* B25AF0 800AE950 032E1021 */  addu  $v0, $t9, $t6
/* B25AF4 800AE954 24780008 */  addiu $t8, $v1, 8
/* B25AF8 800AE958 AE180138 */  sw    $t8, 0x138($s0)
/* B25AFC 800AE95C 844F0004 */  lh    $t7, 4($v0)
/* B25B00 800AE960 844E0000 */  lh    $t6, ($v0)
/* B25B04 800AE964 26520004 */  addiu $s2, $s2, 4
/* B25B08 800AE968 000FC040 */  sll   $t8, $t7, 1
/* B25B0C 800AE96C 331900FF */  andi  $t9, $t8, 0xff
/* B25B10 800AE970 000E7840 */  sll   $t7, $t6, 1
/* B25B14 800AE974 31F800FF */  andi  $t8, $t7, 0xff
/* B25B18 800AE978 00187400 */  sll   $t6, $t8, 0x10
/* B25B1C 800AE97C 84580002 */  lh    $t8, 2($v0)
/* B25B20 800AE980 032E7825 */  or    $t7, $t9, $t6
/* B25B24 800AE984 00129400 */  sll   $s2, $s2, 0x10
/* B25B28 800AE988 0018C840 */  sll   $t9, $t8, 1
/* B25B2C 800AE98C 332E00FF */  andi  $t6, $t9, 0xff
/* B25B30 800AE990 000EC200 */  sll   $t8, $t6, 8
/* B25B34 800AE994 01F8C825 */  or    $t9, $t7, $t8
/* B25B38 800AE998 032C7025 */  or    $t6, $t9, $t4
/* B25B3C 800AE99C AC6E0000 */  sw    $t6, ($v1)
/* B25B40 800AE9A0 844F0006 */  lh    $t7, 6($v0)
/* B25B44 800AE9A4 844E0000 */  lh    $t6, ($v0)
/* B25B48 800AE9A8 00129403 */  sra   $s2, $s2, 0x10
/* B25B4C 800AE9AC 000FC040 */  sll   $t8, $t7, 1
/* B25B50 800AE9B0 331900FF */  andi  $t9, $t8, 0xff
/* B25B54 800AE9B4 000E7840 */  sll   $t7, $t6, 1
/* B25B58 800AE9B8 31F800FF */  andi  $t8, $t7, 0xff
/* B25B5C 800AE9BC 00187400 */  sll   $t6, $t8, 0x10
/* B25B60 800AE9C0 84580004 */  lh    $t8, 4($v0)
/* B25B64 800AE9C4 032E7825 */  or    $t7, $t9, $t6
/* B25B68 800AE9C8 00042403 */  sra   $a0, $a0, 0x10
/* B25B6C 800AE9CC 0018C840 */  sll   $t9, $t8, 1
/* B25B70 800AE9D0 332E00FF */  andi  $t6, $t9, 0xff
/* B25B74 800AE9D4 000EC200 */  sll   $t8, $t6, 8
/* B25B78 800AE9D8 01F8C825 */  or    $t9, $t7, $t8
/* B25B7C 800AE9DC 1420FF6E */  bnez  $at, .L800AE798
/* B25B80 800AE9E0 AC790004 */   sw    $t9, 4($v1)
/* B25B84 800AE9E4 87A2031E */  lh    $v0, 0x31e($sp)
/* B25B88 800AE9E8 8FAE0040 */  lw    $t6, 0x40($sp)
/* B25B8C 800AE9EC 24420001 */  addiu $v0, $v0, 1
/* B25B90 800AE9F0 00021400 */  sll   $v0, $v0, 0x10
/* B25B94 800AE9F4 00021403 */  sra   $v0, $v0, 0x10
/* B25B98 800AE9F8 28410004 */  slti  $at, $v0, 4
/* B25B9C 800AE9FC A7A2031E */  sh    $v0, 0x31e($sp)
/* B25BA0 800AEA00 1420FF5C */  bnez  $at, .L800AE774
/* B25BA4 800AEA04 A7AE0320 */   sh    $t6, 0x320($sp)
/* B25BA8 800AEA08 1000015D */  b     .L800AEF80
/* B25BAC 800AEA0C 8E030138 */   lw    $v1, 0x138($s0)
.L800AEA10:
/* B25BB0 800AEA10 3C188013 */  lui   $t8, %hi(D_8012ADC0) # $t8, 0x8013
/* B25BB4 800AEA14 2718ADC0 */  addiu $t8, %lo(D_8012ADC0) # addiu $t8, $t8, -0x5240
/* B25BB8 800AEA18 3C14FD48 */  lui   $s4, (0xFD48007F >> 16) # lui $s4, 0xfd48
/* B25BBC 800AEA1C 3694007F */  ori   $s4, (0xFD48007F & 0xFFFF) # ori $s4, $s4, 0x7f
/* B25BC0 800AEA20 01F8F021 */  addu  $fp, $t7, $t8
/* B25BC4 800AEA24 00009025 */  move  $s2, $zero
/* B25BC8 800AEA28 A7A0031E */  sh    $zero, 0x31e($sp)
/* B25BCC 800AEA2C A7A00320 */  sh    $zero, 0x320($sp)
/* B25BD0 800AEA30 3C1FF548 */  lui   $ra, 0xf548
/* B25BD4 800AEA34 3C170100 */  lui   $s7, 0x100
/* B25BD8 800AEA38 3C16E700 */  lui   $s6, 0xe700
/* B25BDC 800AEA3C 3C15E600 */  lui   $s5, 0xe600
/* B25BE0 800AEA40 3C0C0700 */  lui   $t4, 0x700
.L800AEA44:
/* B25BE4 800AEA44 87A20320 */  lh    $v0, 0x320($sp)
/* B25BE8 800AEA48 00002025 */  move  $a0, $zero
/* B25BEC 800AEA4C 00006825 */  move  $t5, $zero
/* B25BF0 800AEA50 2459001F */  addiu $t9, $v0, 0x1f
/* B25BF4 800AEA54 00198880 */  sll   $s1, $t9, 2
/* B25BF8 800AEA58 00029880 */  sll   $s3, $v0, 2
/* B25BFC 800AEA5C 32730FFF */  andi  $s3, $s3, 0xfff
/* B25C00 800AEA60 32310FFF */  andi  $s1, $s1, 0xfff
/* B25C04 800AEA64 AFB90040 */  sw    $t9, 0x40($sp)
.L800AEA68:
/* B25C08 800AEA68 8E030138 */  lw    $v1, 0x138($s0)
/* B25C0C 800AEA6C 248B001F */  addiu $t3, $a0, 0x1f
/* B25C10 800AEA70 000B3880 */  sll   $a3, $t3, 2
/* B25C14 800AEA74 246E0008 */  addiu $t6, $v1, 8
/* B25C18 800AEA78 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25C1C 800AEA7C AC740000 */  sw    $s4, ($v1)
/* B25C20 800AEA80 8FCF0000 */  lw    $t7, ($fp)
/* B25C24 800AEA84 8E180128 */  lw    $t8, 0x128($s0)
/* B25C28 800AEA88 00042880 */  sll   $a1, $a0, 2
/* B25C2C 800AEA8C 30A50FFF */  andi  $a1, $a1, 0xfff
/* B25C30 800AEA90 01F8C821 */  addu  $t9, $t7, $t8
/* B25C34 800AEA94 AC790004 */  sw    $t9, 4($v1)
/* B25C38 800AEA98 8E030138 */  lw    $v1, 0x138($s0)
/* B25C3C 800AEA9C 00847823 */  subu  $t7, $a0, $a0
/* B25C40 800AEAA0 25F80027 */  addiu $t8, $t7, 0x27
/* B25C44 800AEAA4 246E0008 */  addiu $t6, $v1, 8
/* B25C48 800AEAA8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25C4C 800AEAAC 0018C8C3 */  sra   $t9, $t8, 3
/* B25C50 800AEAB0 332E01FF */  andi  $t6, $t9, 0x1ff
/* B25C54 800AEAB4 000E7A40 */  sll   $t7, $t6, 9
/* B25C58 800AEAB8 01FF3025 */  or    $a2, $t7, $ra
/* B25C5C 800AEABC AC660000 */  sw    $a2, ($v1)
/* B25C60 800AEAC0 AC6C0004 */  sw    $t4, 4($v1)
/* B25C64 800AEAC4 8E030138 */  lw    $v1, 0x138($s0)
/* B25C68 800AEAC8 30E70FFF */  andi  $a3, $a3, 0xfff
/* B25C6C 800AEACC 00073B00 */  sll   $a3, $a3, 0xc
/* B25C70 800AEAD0 24780008 */  addiu $t8, $v1, 8
/* B25C74 800AEAD4 AE180138 */  sw    $t8, 0x138($s0)
/* B25C78 800AEAD8 AC600004 */  sw    $zero, 4($v1)
/* B25C7C 800AEADC AC750000 */  sw    $s5, ($v1)
/* B25C80 800AEAE0 8E030138 */  lw    $v1, 0x138($s0)
/* B25C84 800AEAE4 00052B00 */  sll   $a1, $a1, 0xc
/* B25C88 800AEAE8 3C01F400 */  lui   $at, 0xf400
/* B25C8C 800AEAEC 24790008 */  addiu $t9, $v1, 8
/* B25C90 800AEAF0 AE190138 */  sw    $t9, 0x138($s0)
/* B25C94 800AEAF4 00A17025 */  or    $t6, $a1, $at
/* B25C98 800AEAF8 00EC7825 */  or    $t7, $a3, $t4
/* B25C9C 800AEAFC 01F14825 */  or    $t1, $t7, $s1
/* B25CA0 800AEB00 01D34025 */  or    $t0, $t6, $s3
/* B25CA4 800AEB04 AC680000 */  sw    $t0, ($v1)
/* B25CA8 800AEB08 AC690004 */  sw    $t1, 4($v1)
/* B25CAC 800AEB0C 8E030138 */  lw    $v1, 0x138($s0)
/* B25CB0 800AEB10 3C01F200 */  lui   $at, 0xf200
/* B25CB4 800AEB14 00A17825 */  or    $t7, $a1, $at
/* B25CB8 800AEB18 24780008 */  addiu $t8, $v1, 8
/* B25CBC 800AEB1C AE180138 */  sw    $t8, 0x138($s0)
/* B25CC0 800AEB20 AC600004 */  sw    $zero, 4($v1)
/* B25CC4 800AEB24 AC760000 */  sw    $s6, ($v1)
/* B25CC8 800AEB28 8E030138 */  lw    $v1, 0x138($s0)
/* B25CCC 800AEB2C 00F1C025 */  or    $t8, $a3, $s1
/* B25CD0 800AEB30 01F35025 */  or    $t2, $t7, $s3
/* B25CD4 800AEB34 24790008 */  addiu $t9, $v1, 8
/* B25CD8 800AEB38 AE190138 */  sw    $t9, 0x138($s0)
/* B25CDC 800AEB3C AC600004 */  sw    $zero, 4($v1)
/* B25CE0 800AEB40 AC660000 */  sw    $a2, ($v1)
/* B25CE4 800AEB44 8E030138 */  lw    $v1, 0x138($s0)
/* B25CE8 800AEB48 34C40080 */  ori   $a0, $a2, 0x80
/* B25CEC 800AEB4C 25AD0001 */  addiu $t5, $t5, 1
/* B25CF0 800AEB50 246E0008 */  addiu $t6, $v1, 8
/* B25CF4 800AEB54 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25CF8 800AEB58 AC780004 */  sw    $t8, 4($v1)
/* B25CFC 800AEB5C AC6A0000 */  sw    $t2, ($v1)
/* B25D00 800AEB60 8E030138 */  lw    $v1, 0x138($s0)
/* B25D04 800AEB64 000D6C00 */  sll   $t5, $t5, 0x10
/* B25D08 800AEB68 000D6C03 */  sra   $t5, $t5, 0x10
/* B25D0C 800AEB6C 24790008 */  addiu $t9, $v1, 8
/* B25D10 800AEB70 AE190138 */  sw    $t9, 0x138($s0)
/* B25D14 800AEB74 AC740000 */  sw    $s4, ($v1)
/* B25D18 800AEB78 8E0F012C */  lw    $t7, 0x12c($s0)
/* B25D1C 800AEB7C 8FCE0000 */  lw    $t6, ($fp)
/* B25D20 800AEB80 29A10004 */  slti  $at, $t5, 4
/* B25D24 800AEB84 01CFC021 */  addu  $t8, $t6, $t7
/* B25D28 800AEB88 AC780004 */  sw    $t8, 4($v1)
/* B25D2C 800AEB8C 8E030138 */  lw    $v1, 0x138($s0)
/* B25D30 800AEB90 24790008 */  addiu $t9, $v1, 8
/* B25D34 800AEB94 AE190138 */  sw    $t9, 0x138($s0)
/* B25D38 800AEB98 AC6C0004 */  sw    $t4, 4($v1)
/* B25D3C 800AEB9C AC640000 */  sw    $a0, ($v1)
/* B25D40 800AEBA0 8E030138 */  lw    $v1, 0x138($s0)
/* B25D44 800AEBA4 246E0008 */  addiu $t6, $v1, 8
/* B25D48 800AEBA8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25D4C 800AEBAC AC600004 */  sw    $zero, 4($v1)
/* B25D50 800AEBB0 AC750000 */  sw    $s5, ($v1)
/* B25D54 800AEBB4 8E030138 */  lw    $v1, 0x138($s0)
/* B25D58 800AEBB8 246F0008 */  addiu $t7, $v1, 8
/* B25D5C 800AEBBC AE0F0138 */  sw    $t7, 0x138($s0)
/* B25D60 800AEBC0 AC690004 */  sw    $t1, 4($v1)
/* B25D64 800AEBC4 AC680000 */  sw    $t0, ($v1)
/* B25D68 800AEBC8 8E030138 */  lw    $v1, 0x138($s0)
/* B25D6C 800AEBCC 00F77825 */  or    $t7, $a3, $s7
/* B25D70 800AEBD0 24780008 */  addiu $t8, $v1, 8
/* B25D74 800AEBD4 AE180138 */  sw    $t8, 0x138($s0)
/* B25D78 800AEBD8 AC600004 */  sw    $zero, 4($v1)
/* B25D7C 800AEBDC AC760000 */  sw    $s6, ($v1)
/* B25D80 800AEBE0 8E030138 */  lw    $v1, 0x138($s0)
/* B25D84 800AEBE4 01F1C025 */  or    $t8, $t7, $s1
/* B25D88 800AEBE8 3C0F8013 */  lui   $t7, %hi(D_8012AE3C) # $t7, 0x8013
/* B25D8C 800AEBEC 24790008 */  addiu $t9, $v1, 8
/* B25D90 800AEBF0 AE190138 */  sw    $t9, 0x138($s0)
/* B25D94 800AEBF4 AC770004 */  sw    $s7, 4($v1)
/* B25D98 800AEBF8 AC640000 */  sw    $a0, ($v1)
/* B25D9C 800AEBFC 8E030138 */  lw    $v1, 0x138($s0)
/* B25DA0 800AEC00 25EFAE3C */  addiu $t7, %lo(D_8012AE3C) # addiu $t7, $t7, -0x51c4
/* B25DA4 800AEC04 000B2400 */  sll   $a0, $t3, 0x10
/* B25DA8 800AEC08 246E0008 */  addiu $t6, $v1, 8
/* B25DAC 800AEC0C AE0E0138 */  sw    $t6, 0x138($s0)
/* B25DB0 800AEC10 AC780004 */  sw    $t8, 4($v1)
/* B25DB4 800AEC14 AC6A0000 */  sw    $t2, ($v1)
/* B25DB8 800AEC18 8E030138 */  lw    $v1, 0x138($s0)
/* B25DBC 800AEC1C 00127040 */  sll   $t6, $s2, 1
/* B25DC0 800AEC20 01CF1021 */  addu  $v0, $t6, $t7
/* B25DC4 800AEC24 24790008 */  addiu $t9, $v1, 8
/* B25DC8 800AEC28 AE190138 */  sw    $t9, 0x138($s0)
/* B25DCC 800AEC2C 84580004 */  lh    $t8, 4($v0)
/* B25DD0 800AEC30 844F0000 */  lh    $t7, ($v0)
/* B25DD4 800AEC34 26520004 */  addiu $s2, $s2, 4
/* B25DD8 800AEC38 0018C840 */  sll   $t9, $t8, 1
/* B25DDC 800AEC3C 332E00FF */  andi  $t6, $t9, 0xff
/* B25DE0 800AEC40 000FC040 */  sll   $t8, $t7, 1
/* B25DE4 800AEC44 331900FF */  andi  $t9, $t8, 0xff
/* B25DE8 800AEC48 00197C00 */  sll   $t7, $t9, 0x10
/* B25DEC 800AEC4C 84590002 */  lh    $t9, 2($v0)
/* B25DF0 800AEC50 01CFC025 */  or    $t8, $t6, $t7
/* B25DF4 800AEC54 00129400 */  sll   $s2, $s2, 0x10
/* B25DF8 800AEC58 00197040 */  sll   $t6, $t9, 1
/* B25DFC 800AEC5C 31CF00FF */  andi  $t7, $t6, 0xff
/* B25E00 800AEC60 000FCA00 */  sll   $t9, $t7, 8
/* B25E04 800AEC64 03197025 */  or    $t6, $t8, $t9
/* B25E08 800AEC68 01CC7825 */  or    $t7, $t6, $t4
/* B25E0C 800AEC6C AC6F0000 */  sw    $t7, ($v1)
/* B25E10 800AEC70 84580006 */  lh    $t8, 6($v0)
/* B25E14 800AEC74 844F0000 */  lh    $t7, ($v0)
/* B25E18 800AEC78 00129403 */  sra   $s2, $s2, 0x10
/* B25E1C 800AEC7C 0018C840 */  sll   $t9, $t8, 1
/* B25E20 800AEC80 332E00FF */  andi  $t6, $t9, 0xff
/* B25E24 800AEC84 000FC040 */  sll   $t8, $t7, 1
/* B25E28 800AEC88 331900FF */  andi  $t9, $t8, 0xff
/* B25E2C 800AEC8C 00197C00 */  sll   $t7, $t9, 0x10
/* B25E30 800AEC90 84590004 */  lh    $t9, 4($v0)
/* B25E34 800AEC94 01CFC025 */  or    $t8, $t6, $t7
/* B25E38 800AEC98 00042403 */  sra   $a0, $a0, 0x10
/* B25E3C 800AEC9C 00197040 */  sll   $t6, $t9, 1
/* B25E40 800AECA0 31CF00FF */  andi  $t7, $t6, 0xff
/* B25E44 800AECA4 000FCA00 */  sll   $t9, $t7, 8
/* B25E48 800AECA8 03197025 */  or    $t6, $t8, $t9
/* B25E4C 800AECAC 1420FF6E */  bnez  $at, .L800AEA68
/* B25E50 800AECB0 AC6E0004 */   sw    $t6, 4($v1)
/* B25E54 800AECB4 87A2031E */  lh    $v0, 0x31e($sp)
/* B25E58 800AECB8 8FAF0040 */  lw    $t7, 0x40($sp)
/* B25E5C 800AECBC 24420001 */  addiu $v0, $v0, 1
/* B25E60 800AECC0 00021400 */  sll   $v0, $v0, 0x10
/* B25E64 800AECC4 00021403 */  sra   $v0, $v0, 0x10
/* B25E68 800AECC8 28410002 */  slti  $at, $v0, 2
/* B25E6C 800AECCC A7A2031E */  sh    $v0, 0x31e($sp)
/* B25E70 800AECD0 1420FF5C */  bnez  $at, .L800AEA44
/* B25E74 800AECD4 A7AF0320 */   sh    $t7, 0x320($sp)
/* B25E78 800AECD8 87B80320 */  lh    $t8, 0x320($sp)
/* B25E7C 800AECDC A7A0031E */  sh    $zero, 0x31e($sp)
/* B25E80 800AECE0 2719FFE1 */  addiu $t9, $t8, -0x1f
/* B25E84 800AECE4 A7B90320 */  sh    $t9, 0x320($sp)
.L800AECE8:
/* B25E88 800AECE8 87AE0320 */  lh    $t6, 0x320($sp)
/* B25E8C 800AECEC 00002025 */  move  $a0, $zero
/* B25E90 800AECF0 00006825 */  move  $t5, $zero
/* B25E94 800AECF4 25D1001F */  addiu $s1, $t6, 0x1f
/* B25E98 800AECF8 00118880 */  sll   $s1, $s1, 2
/* B25E9C 800AECFC 000E9880 */  sll   $s3, $t6, 2
/* B25EA0 800AED00 32730FFF */  andi  $s3, $s3, 0xfff
/* B25EA4 800AED04 32310FFF */  andi  $s1, $s1, 0xfff
.L800AED08:
/* B25EA8 800AED08 8E030138 */  lw    $v1, 0x138($s0)
/* B25EAC 800AED0C 248B001F */  addiu $t3, $a0, 0x1f
/* B25EB0 800AED10 000B3880 */  sll   $a3, $t3, 2
/* B25EB4 800AED14 246F0008 */  addiu $t7, $v1, 8
/* B25EB8 800AED18 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25EBC 800AED1C AC740000 */  sw    $s4, ($v1)
/* B25EC0 800AED20 8FD80000 */  lw    $t8, ($fp)
/* B25EC4 800AED24 8E190128 */  lw    $t9, 0x128($s0)
/* B25EC8 800AED28 00042880 */  sll   $a1, $a0, 2
/* B25ECC 800AED2C 30A50FFF */  andi  $a1, $a1, 0xfff
/* B25ED0 800AED30 03197021 */  addu  $t6, $t8, $t9
/* B25ED4 800AED34 AC6E0004 */  sw    $t6, 4($v1)
/* B25ED8 800AED38 8E030138 */  lw    $v1, 0x138($s0)
/* B25EDC 800AED3C 0084C023 */  subu  $t8, $a0, $a0
/* B25EE0 800AED40 27190027 */  addiu $t9, $t8, 0x27
/* B25EE4 800AED44 246F0008 */  addiu $t7, $v1, 8
/* B25EE8 800AED48 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25EEC 800AED4C 001970C3 */  sra   $t6, $t9, 3
/* B25EF0 800AED50 31CF01FF */  andi  $t7, $t6, 0x1ff
/* B25EF4 800AED54 000FC240 */  sll   $t8, $t7, 9
/* B25EF8 800AED58 031F3025 */  or    $a2, $t8, $ra
/* B25EFC 800AED5C AC660000 */  sw    $a2, ($v1)
/* B25F00 800AED60 AC6C0004 */  sw    $t4, 4($v1)
/* B25F04 800AED64 8E030138 */  lw    $v1, 0x138($s0)
/* B25F08 800AED68 30E70FFF */  andi  $a3, $a3, 0xfff
/* B25F0C 800AED6C 00073B00 */  sll   $a3, $a3, 0xc
/* B25F10 800AED70 24790008 */  addiu $t9, $v1, 8
/* B25F14 800AED74 AE190138 */  sw    $t9, 0x138($s0)
/* B25F18 800AED78 AC600004 */  sw    $zero, 4($v1)
/* B25F1C 800AED7C AC750000 */  sw    $s5, ($v1)
/* B25F20 800AED80 8E030138 */  lw    $v1, 0x138($s0)
/* B25F24 800AED84 00052B00 */  sll   $a1, $a1, 0xc
/* B25F28 800AED88 3C01F400 */  lui   $at, 0xf400
/* B25F2C 800AED8C 246E0008 */  addiu $t6, $v1, 8
/* B25F30 800AED90 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25F34 800AED94 00A17825 */  or    $t7, $a1, $at
/* B25F38 800AED98 00ECC025 */  or    $t8, $a3, $t4
/* B25F3C 800AED9C 03114825 */  or    $t1, $t8, $s1
/* B25F40 800AEDA0 01F34025 */  or    $t0, $t7, $s3
/* B25F44 800AEDA4 AC680000 */  sw    $t0, ($v1)
/* B25F48 800AEDA8 AC690004 */  sw    $t1, 4($v1)
/* B25F4C 800AEDAC 8E030138 */  lw    $v1, 0x138($s0)
/* B25F50 800AEDB0 3C01F200 */  lui   $at, 0xf200
/* B25F54 800AEDB4 00A1C025 */  or    $t8, $a1, $at
/* B25F58 800AEDB8 24790008 */  addiu $t9, $v1, 8
/* B25F5C 800AEDBC AE190138 */  sw    $t9, 0x138($s0)
/* B25F60 800AEDC0 AC600004 */  sw    $zero, 4($v1)
/* B25F64 800AEDC4 AC760000 */  sw    $s6, ($v1)
/* B25F68 800AEDC8 8E030138 */  lw    $v1, 0x138($s0)
/* B25F6C 800AEDCC 00F1C825 */  or    $t9, $a3, $s1
/* B25F70 800AEDD0 03135025 */  or    $t2, $t8, $s3
/* B25F74 800AEDD4 246E0008 */  addiu $t6, $v1, 8
/* B25F78 800AEDD8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25F7C 800AEDDC AC600004 */  sw    $zero, 4($v1)
/* B25F80 800AEDE0 AC660000 */  sw    $a2, ($v1)
/* B25F84 800AEDE4 8E030138 */  lw    $v1, 0x138($s0)
/* B25F88 800AEDE8 34C40080 */  ori   $a0, $a2, 0x80
/* B25F8C 800AEDEC 25AD0001 */  addiu $t5, $t5, 1
/* B25F90 800AEDF0 246F0008 */  addiu $t7, $v1, 8
/* B25F94 800AEDF4 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25F98 800AEDF8 AC790004 */  sw    $t9, 4($v1)
/* B25F9C 800AEDFC AC6A0000 */  sw    $t2, ($v1)
/* B25FA0 800AEE00 8E030138 */  lw    $v1, 0x138($s0)
/* B25FA4 800AEE04 000D6C00 */  sll   $t5, $t5, 0x10
/* B25FA8 800AEE08 000D6C03 */  sra   $t5, $t5, 0x10
/* B25FAC 800AEE0C 246E0008 */  addiu $t6, $v1, 8
/* B25FB0 800AEE10 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25FB4 800AEE14 AC740000 */  sw    $s4, ($v1)
/* B25FB8 800AEE18 8E18012C */  lw    $t8, 0x12c($s0)
/* B25FBC 800AEE1C 8FCF0000 */  lw    $t7, ($fp)
/* B25FC0 800AEE20 29A10004 */  slti  $at, $t5, 4
/* B25FC4 800AEE24 01F8C821 */  addu  $t9, $t7, $t8
/* B25FC8 800AEE28 AC790004 */  sw    $t9, 4($v1)
/* B25FCC 800AEE2C 8E030138 */  lw    $v1, 0x138($s0)
/* B25FD0 800AEE30 246E0008 */  addiu $t6, $v1, 8
/* B25FD4 800AEE34 AE0E0138 */  sw    $t6, 0x138($s0)
/* B25FD8 800AEE38 AC6C0004 */  sw    $t4, 4($v1)
/* B25FDC 800AEE3C AC640000 */  sw    $a0, ($v1)
/* B25FE0 800AEE40 8E030138 */  lw    $v1, 0x138($s0)
/* B25FE4 800AEE44 246F0008 */  addiu $t7, $v1, 8
/* B25FE8 800AEE48 AE0F0138 */  sw    $t7, 0x138($s0)
/* B25FEC 800AEE4C AC600004 */  sw    $zero, 4($v1)
/* B25FF0 800AEE50 AC750000 */  sw    $s5, ($v1)
/* B25FF4 800AEE54 8E030138 */  lw    $v1, 0x138($s0)
/* B25FF8 800AEE58 24780008 */  addiu $t8, $v1, 8
/* B25FFC 800AEE5C AE180138 */  sw    $t8, 0x138($s0)
/* B26000 800AEE60 AC690004 */  sw    $t1, 4($v1)
/* B26004 800AEE64 AC680000 */  sw    $t0, ($v1)
/* B26008 800AEE68 8E030138 */  lw    $v1, 0x138($s0)
/* B2600C 800AEE6C 00F7C025 */  or    $t8, $a3, $s7
/* B26010 800AEE70 24790008 */  addiu $t9, $v1, 8
/* B26014 800AEE74 AE190138 */  sw    $t9, 0x138($s0)
/* B26018 800AEE78 AC600004 */  sw    $zero, 4($v1)
/* B2601C 800AEE7C AC760000 */  sw    $s6, ($v1)
/* B26020 800AEE80 8E030138 */  lw    $v1, 0x138($s0)
/* B26024 800AEE84 0311C825 */  or    $t9, $t8, $s1
/* B26028 800AEE88 3C188013 */  lui   $t8, %hi(D_8012AE3C) # $t8, 0x8013
/* B2602C 800AEE8C 246E0008 */  addiu $t6, $v1, 8
/* B26030 800AEE90 AE0E0138 */  sw    $t6, 0x138($s0)
/* B26034 800AEE94 AC770004 */  sw    $s7, 4($v1)
/* B26038 800AEE98 AC640000 */  sw    $a0, ($v1)
/* B2603C 800AEE9C 8E030138 */  lw    $v1, 0x138($s0)
/* B26040 800AEEA0 2718AE3C */  addiu $t8, %lo(D_8012AE3C) # addiu $t8, $t8, -0x51c4
/* B26044 800AEEA4 000B2400 */  sll   $a0, $t3, 0x10
/* B26048 800AEEA8 246F0008 */  addiu $t7, $v1, 8
/* B2604C 800AEEAC AE0F0138 */  sw    $t7, 0x138($s0)
/* B26050 800AEEB0 AC790004 */  sw    $t9, 4($v1)
/* B26054 800AEEB4 AC6A0000 */  sw    $t2, ($v1)
/* B26058 800AEEB8 8E030138 */  lw    $v1, 0x138($s0)
/* B2605C 800AEEBC 00127840 */  sll   $t7, $s2, 1
/* B26060 800AEEC0 01F81021 */  addu  $v0, $t7, $t8
/* B26064 800AEEC4 246E0008 */  addiu $t6, $v1, 8
/* B26068 800AEEC8 AE0E0138 */  sw    $t6, 0x138($s0)
/* B2606C 800AEECC 84590004 */  lh    $t9, 4($v0)
/* B26070 800AEED0 84580000 */  lh    $t8, ($v0)
/* B26074 800AEED4 26520004 */  addiu $s2, $s2, 4
/* B26078 800AEED8 00197040 */  sll   $t6, $t9, 1
/* B2607C 800AEEDC 31CF00FF */  andi  $t7, $t6, 0xff
/* B26080 800AEEE0 0018C840 */  sll   $t9, $t8, 1
/* B26084 800AEEE4 332E00FF */  andi  $t6, $t9, 0xff
/* B26088 800AEEE8 000EC400 */  sll   $t8, $t6, 0x10
/* B2608C 800AEEEC 844E0002 */  lh    $t6, 2($v0)
/* B26090 800AEEF0 01F8C825 */  or    $t9, $t7, $t8
/* B26094 800AEEF4 00129400 */  sll   $s2, $s2, 0x10
/* B26098 800AEEF8 000E7840 */  sll   $t7, $t6, 1
/* B2609C 800AEEFC 31F800FF */  andi  $t8, $t7, 0xff
/* B260A0 800AEF00 00187200 */  sll   $t6, $t8, 8
/* B260A4 800AEF04 032E7825 */  or    $t7, $t9, $t6
/* B260A8 800AEF08 01ECC025 */  or    $t8, $t7, $t4
/* B260AC 800AEF0C AC780000 */  sw    $t8, ($v1)
/* B260B0 800AEF10 84590006 */  lh    $t9, 6($v0)
/* B260B4 800AEF14 84580000 */  lh    $t8, ($v0)
/* B260B8 800AEF18 00129403 */  sra   $s2, $s2, 0x10
/* B260BC 800AEF1C 00197040 */  sll   $t6, $t9, 1
/* B260C0 800AEF20 31CF00FF */  andi  $t7, $t6, 0xff
/* B260C4 800AEF24 0018C840 */  sll   $t9, $t8, 1
/* B260C8 800AEF28 332E00FF */  andi  $t6, $t9, 0xff
/* B260CC 800AEF2C 000EC400 */  sll   $t8, $t6, 0x10
/* B260D0 800AEF30 844E0004 */  lh    $t6, 4($v0)
/* B260D4 800AEF34 01F8C825 */  or    $t9, $t7, $t8
/* B260D8 800AEF38 00042403 */  sra   $a0, $a0, 0x10
/* B260DC 800AEF3C 000E7840 */  sll   $t7, $t6, 1
/* B260E0 800AEF40 31F800FF */  andi  $t8, $t7, 0xff
/* B260E4 800AEF44 00187200 */  sll   $t6, $t8, 8
/* B260E8 800AEF48 032E7825 */  or    $t7, $t9, $t6
/* B260EC 800AEF4C 1420FF6E */  bnez  $at, .L800AED08
/* B260F0 800AEF50 AC6F0004 */   sw    $t7, 4($v1)
/* B260F4 800AEF54 87A2031E */  lh    $v0, 0x31e($sp)
/* B260F8 800AEF58 87B80320 */  lh    $t8, 0x320($sp)
/* B260FC 800AEF5C 24420001 */  addiu $v0, $v0, 1
/* B26100 800AEF60 00021400 */  sll   $v0, $v0, 0x10
/* B26104 800AEF64 00021403 */  sra   $v0, $v0, 0x10
/* B26108 800AEF68 28410002 */  slti  $at, $v0, 2
/* B2610C 800AEF6C 2719FFE1 */  addiu $t9, $t8, -0x1f
/* B26110 800AEF70 A7B90320 */  sh    $t9, 0x320($sp)
/* B26114 800AEF74 1420FF5C */  bnez  $at, .L800AECE8
/* B26118 800AEF78 A7A2031E */   sh    $v0, 0x31e($sp)
/* B2611C 800AEF7C 8E030138 */  lw    $v1, 0x138($s0)
.L800AEF80:
/* B26120 800AEF80 3C0FDF00 */  lui   $t7, 0xdf00
/* B26124 800AEF84 246E0008 */  addiu $t6, $v1, 8
/* B26128 800AEF88 AE0E0138 */  sw    $t6, 0x138($s0)
/* B2612C 800AEF8C AC600004 */  sw    $zero, 4($v1)
/* B26130 800AEF90 AC6F0000 */  sw    $t7, ($v1)
/* B26134 800AEF94 8FBF002C */  lw    $ra, 0x2c($sp)
/* B26138 800AEF98 8FBE0028 */  lw    $fp, 0x28($sp)
/* B2613C 800AEF9C 8FB70024 */  lw    $s7, 0x24($sp)
/* B26140 800AEFA0 8FB60020 */  lw    $s6, 0x20($sp)
/* B26144 800AEFA4 8FB5001C */  lw    $s5, 0x1c($sp)
/* B26148 800AEFA8 8FB40018 */  lw    $s4, 0x18($sp)
/* B2614C 800AEFAC 8FB30014 */  lw    $s3, 0x14($sp)
/* B26150 800AEFB0 8FB20010 */  lw    $s2, 0x10($sp)
/* B26154 800AEFB4 8FB1000C */  lw    $s1, 0xc($sp)
/* B26158 800AEFB8 8FB00008 */  lw    $s0, 8($sp)
/* B2615C 800AEFBC 8FA20340 */  lw    $v0, 0x340($sp)
/* B26160 800AEFC0 03E00008 */  jr    $ra
/* B26164 800AEFC4 27BD0338 */   addiu $sp, $sp, 0x338


