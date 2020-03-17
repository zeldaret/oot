.rdata
glabel D_8013AE68
    .asciz "\nデモ開始要求 発令！"
    .balign 4

.text
glabel func_800645A0
/* ADB740 800645A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ADB744 800645A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* ADB748 800645A8 948E0020 */  lhu   $t6, 0x20($a0)
/* ADB74C 800645AC 2401FDFF */  li    $at, -513
/* ADB750 800645B0 00803025 */  move  $a2, $a0
/* ADB754 800645B4 01C17827 */  nor   $t7, $t6, $at
/* ADB758 800645B8 55E00010 */  bnezl $t7, .L800645FC
/* ADB75C 800645BC 94C90020 */   lhu   $t1, 0x20($a2)
/* ADB760 800645C0 90B80008 */  lbu   $t8, 8($a1)
/* ADB764 800645C4 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* ADB768 800645C8 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* ADB76C 800645CC 5700000B */  bnezl $t8, .L800645FC
/* ADB770 800645D0 94C90020 */   lhu   $t1, 0x20($a2)
/* ADB774 800645D4 8C791360 */  lw    $t9, 0x1360($v1)
/* ADB778 800645D8 24070001 */  li    $a3, 1
/* ADB77C 800645DC 3408FFFD */  li    $t0, 65533
/* ADB780 800645E0 2B210004 */  slti  $at, $t9, 4
/* ADB784 800645E4 14200004 */  bnez  $at, .L800645F8
/* ADB788 800645E8 3C018016 */   lui   $at, %hi(D_8015FCC8) # $at, 0x8016
/* ADB78C 800645EC A020FCC8 */  sb    $zero, %lo(D_8015FCC8)($at)
/* ADB790 800645F0 AC680008 */  sw    $t0, 8($v1)
/* ADB794 800645F4 A0671414 */  sb    $a3, 0x1414($v1)
.L800645F8:
/* ADB798 800645F8 94C90020 */  lhu   $t1, 0x20($a2)
.L800645FC:
/* ADB79C 800645FC 2401F7FF */  li    $at, -2049
/* ADB7A0 80064600 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* ADB7A4 80064604 01215027 */  nor   $t2, $t1, $at
/* ADB7A8 80064608 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* ADB7AC 8006460C 15400011 */  bnez  $t2, .L80064654
/* ADB7B0 80064610 24070001 */   li    $a3, 1
/* ADB7B4 80064614 90AB0008 */  lbu   $t3, 8($a1)
/* ADB7B8 80064618 5560000F */  bnezl $t3, .L80064658
/* ADB7BC 8006461C 90621414 */   lbu   $v0, 0x1414($v1)
/* ADB7C0 80064620 8C6C1360 */  lw    $t4, 0x1360($v1)
/* ADB7C4 80064624 3C0D8012 */  lui   $t5, %hi(D_8011D394) # $t5, 0x8012
/* ADB7C8 80064628 29810004 */  slti  $at, $t4, 4
/* ADB7CC 8006462C 5420000A */  bnezl $at, .L80064658
/* ADB7D0 80064630 90621414 */   lbu   $v0, 0x1414($v1)
/* ADB7D4 80064634 8DADD394 */  lw    $t5, %lo(D_8011D394)($t5)
/* ADB7D8 80064638 3C018016 */  lui   $at, %hi(D_8015FCC8) # $at, 0x8016
/* ADB7DC 8006463C 340EFFFD */  li    $t6, 65533
/* ADB7E0 80064640 55A00005 */  bnezl $t5, .L80064658
/* ADB7E4 80064644 90621414 */   lbu   $v0, 0x1414($v1)
/* ADB7E8 80064648 A027FCC8 */  sb    $a3, %lo(D_8015FCC8)($at)
/* ADB7EC 8006464C AC6E0008 */  sw    $t6, 8($v1)
/* ADB7F0 80064650 A0671414 */  sb    $a3, 0x1414($v1)
.L80064654:
/* ADB7F4 80064654 90621414 */  lbu   $v0, 0x1414($v1)
.L80064658:
/* ADB7F8 80064658 3C0F0001 */  lui   $t7, 1
/* ADB7FC 8006465C 01E67821 */  addu  $t7, $t7, $a2
/* ADB800 80064660 10400007 */  beqz  $v0, .L80064680
/* ADB804 80064664 00000000 */   nop   
/* ADB808 80064668 81EF1E15 */  lb    $t7, 0x1e15($t7)
/* ADB80C 8006466C 24010014 */  li    $at, 20
/* ADB810 80064670 15E10003 */  bne   $t7, $at, .L80064680
/* ADB814 80064674 00000000 */   nop   
/* ADB818 80064678 A0601414 */  sb    $zero, 0x1414($v1)
/* ADB81C 8006467C 300200FF */  andi  $v0, $zero, 0xff
.L80064680:
/* ADB820 80064680 50400012 */  beql  $v0, $zero, .L800646CC
/* ADB824 80064684 8C680008 */   lw    $t0, 8($v1)
/* ADB828 80064688 90B80008 */  lbu   $t8, 8($a1)
/* ADB82C 8006468C 3C048014 */  lui   $a0, %hi(D_8013AE68) # $a0, 0x8014
/* ADB830 80064690 2484AE68 */  addiu $a0, %lo(D_8013AE68) # addiu $a0, $a0, -0x5198
/* ADB834 80064694 5700000D */  bnezl $t8, .L800646CC
/* ADB838 80064698 8C680008 */   lw    $t0, 8($v1)
/* ADB83C 8006469C AFA5001C */  sw    $a1, 0x1c($sp)
/* ADB840 800646A0 0C00084C */  jal   osSyncPrintf
/* ADB844 800646A4 AFA60018 */   sw    $a2, 0x18($sp)
/* ADB848 800646A8 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* ADB84C 800646AC 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* ADB850 800646B0 24070001 */  li    $a3, 1
/* ADB854 800646B4 3419FFFD */  li    $t9, 65533
/* ADB858 800646B8 8FA5001C */  lw    $a1, 0x1c($sp)
/* ADB85C 800646BC 8FA60018 */  lw    $a2, 0x18($sp)
/* ADB860 800646C0 AC790008 */  sw    $t9, 8($v1)
/* ADB864 800646C4 A0671414 */  sb    $a3, 0x1414($v1)
/* ADB868 800646C8 8C680008 */  lw    $t0, 8($v1)
.L800646CC:
/* ADB86C 800646CC 3401FFF0 */  li    $at, 65520
/* ADB870 800646D0 00C02025 */  move  $a0, $a2
/* ADB874 800646D4 0101082A */  slt   $at, $t0, $at
/* ADB878 800646D8 5420000E */  bnezl $at, .L80064714
/* ADB87C 800646DC 8FBF0014 */   lw    $ra, 0x14($sp)
/* ADB880 800646E0 AFA5001C */  sw    $a1, 0x1c($sp)
/* ADB884 800646E4 0C01A3B3 */  jal   func_80068ECC
/* ADB888 800646E8 AFA60018 */   sw    $a2, 0x18($sp)
/* ADB88C 800646EC 8FA5001C */  lw    $a1, 0x1c($sp)
/* ADB890 800646F0 3C198012 */  lui   $t9, %hi(sCsStateHandlers2)
/* ADB894 800646F4 8FA40018 */  lw    $a0, 0x18($sp)
/* ADB898 800646F8 90A90008 */  lbu   $t1, 8($a1)
/* ADB89C 800646FC 00095080 */  sll   $t2, $t1, 2
/* ADB8A0 80064700 032AC821 */  addu  $t9, $t9, $t2
/* ADB8A4 80064704 8F39E1DC */  lw    $t9, %lo(sCsStateHandlers2)($t9)
/* ADB8A8 80064708 0320F809 */  jalr  $t9
/* ADB8AC 8006470C 00000000 */  nop   
/* ADB8B0 80064710 8FBF0014 */  lw    $ra, 0x14($sp)
.L80064714:
/* ADB8B4 80064714 27BD0018 */  addiu $sp, $sp, 0x18
/* ADB8B8 80064718 03E00008 */  jr    $ra
/* ADB8BC 8006471C 00000000 */   nop   

