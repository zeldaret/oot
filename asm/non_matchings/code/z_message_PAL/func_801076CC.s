glabel func_801076CC
/* B7E86C 801076CC AFA50004 */  sw    $a1, 4($sp)
/* B7E870 801076D0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7E874 801076D4 2CA10008 */  sltiu $at, $a1, 8
/* B7E878 801076D8 10200096 */  beqz  $at, .L80107934
/* B7E87C 801076DC 00057080 */   sll   $t6, $a1, 2
/* B7E880 801076E0 3C018015 */  lui   $at, %hi(jtbl_80154B28)
/* B7E884 801076E4 002E0821 */  addu  $at, $at, $t6
/* B7E888 801076E8 8C2E4B28 */  lw    $t6, %lo(jtbl_80154B28)($at)
/* B7E88C 801076EC 01C00008 */  jr    $t6
/* B7E890 801076F0 00000000 */   nop   

glabel L801076F4
/* B7E894 801076F4 248F7FFF */  addiu $t7, $a0, 0x7fff
/* B7E898 801076F8 91EF62FE */  lbu   $t7, 0x62fe($t7)
/* B7E89C 801076FC 24010001 */  li    $at, 1
/* B7E8A0 80107700 2402003C */  li    $v0, 60
/* B7E8A4 80107704 15E10008 */  bne   $t7, $at, .L80107728
/* B7E8A8 80107708 240500FF */   li    $a1, 255
/* B7E8AC 8010770C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E8B0 80107710 240500FF */  li    $a1, 255
/* B7E8B4 80107714 24180078 */  li    $t8, 120
/* B7E8B8 80107718 A42563DD */  sh    $a1, 0x63dd($at)
/* B7E8BC 8010771C A43863DF */  sh    $t8, 0x63df($at)
/* B7E8C0 80107720 03E00008 */  jr    $ra
/* B7E8C4 80107724 A42063E1 */   sh    $zero, 0x63e1($at)
.L80107728:
/* B7E8C8 80107728 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E8CC 8010772C A42563DD */  sh    $a1, 0x63dd($at)
/* B7E8D0 80107730 A42263DF */  sh    $v0, 0x63df($at)
/* B7E8D4 80107734 03E00008 */  jr    $ra
/* B7E8D8 80107738 A42263E1 */   sh    $v0, 0x63e1($at)


